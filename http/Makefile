
CROSS_CC=x86_64-w64-mingw32-gcc
NAME=http
UMKA=./umbox/umka/linux/umka
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
	
libcurl-x64.dll curl-ca-bundle.crt:
	@echo Downloading libcurl-x64.dll
	@curl https://curl.se/windows/dl-8.4.0_6/curl-8.4.0_6-win64-mingw.zip -O
	@unzip curl-8.4.0_6-win64-mingw.zip
	@cp curl-8.4.0_6-win64-mingw/bin/libcurl-x64.dll libcurl-x64.dll
	@cp curl-8.4.0_6-win64-mingw/bin/libcurl-x64.def libcurl-x64.def
	@cp curl-8.4.0_6-win64-mingw/bin/curl-ca-bundle.crt curl-ca-bundle.crt
	@cp -r curl-8.4.0_6-win64-mingw/include/curl/ .
	@rm -r curl-8.4.0_6-win64-mingw curl-8.4.0_6-win64-mingw.zip
	
curl-ca-bundle.crt.h: curl-ca-bundle.crt
	@echo EM curl-ca-bundle.crt.h
	@./umbox/umka/linux/umka embed.um curl-ca-bundle.crt ca_bundle

%_windows.umi: %.c libcurl-x64.dll curl-ca-bundle.crt.h Makefile
	@echo CC $@
	@$(CROSS_CC) -shared $(CFLAGS) -o $@ $< -L. -lcurl-x64

.PHONY: build
build: $(NAME)_windows.umi $(NAME)_linux.umi

.PHONY: run
run: build
	@$(UMKA) $(NAME).um

