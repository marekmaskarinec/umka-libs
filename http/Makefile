
CROSS_CC=x86_64-w64-mingw32-gcc
NAME=http
UMKA=./umbox/umka/umka
CFLAGS= \
	-Wall \
	-Wno-unused-label \
	-Wno-pointer-to-int-cast \
	-Wno-unused-result \
	-Iumbox/umka/ \
	-I. \
	-fPIC \
	-g
LDFLAGS=-lcurl

.PHONY: all
all: build

%_linux.umi: %.c Makefile
	@echo CC $@
	@$(CC) $(CFLAGS) -shared -o $@ $< $(LDFLAGS)
	
libcurl-x64.dll:
	@echo Downloading libcurl-x64.dll
	@curl -fsSL "https://curl.se/windows/latest.cgi?p=win64-mingw.zip" -o curl-win64.zip
	@rm -rf curl-win64 && unzip -q curl-win64.zip -d curl-win64
	@cp curl-win64/*/bin/libcurl-x64.dll curl-win64/*/bin/libcurl-x64.def .
	@cp -r curl-win64/*/include/curl/ .
	@rm -r curl-win64 curl-win64.zip

curl-ca-bundle.crt:
	@echo Downloading curl-ca-bundle.crt
	@curl -fsSL https://curl.se/ca/cacert.pem -o curl-ca-bundle.crt
	
curl-ca-bundle.crt.h: curl-ca-bundle.crt
	@echo EM curl-ca-bundle.crt.h
	@./umbox/umka/umka embed.um curl-ca-bundle.crt ca_bundle

%_windows.umi: %.c libcurl-x64.dll curl-ca-bundle.crt.h Makefile
	@echo CC $@
	@$(CROSS_CC) -shared $(CFLAGS) -o $@ $< -L. -lcurl-x64

.PHONY: build
build: $(NAME)_windows.umi $(NAME)_linux.umi

.PHONY: run
run: build
	@$(UMKA) $(NAME).um

