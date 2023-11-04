
CROSS_CC=x86_64-w64-mingw32-gcc
NAME=http
UMKA=./pak/umka/linux/umka
CFLAGS= \
	-Wall \
	-Wno-unused-label \
	-Wno-pointer-to-int-cast \
	-Wno-unused-result \
	-Ipak/umka/ \
	-I. \
	-fPIC \
	-g
LDFLAGS=pak/umka/linux/libumka_static.a -lcurl

.PHONY: all
all: build

%_linux.umi: %.c Makefile
	@echo CC $@
	@$(CC) $(CFLAGS) -shared -o $@ $< $(LDFLAGS)
	
curl:
	@echo Downloading libcurl-x64.dll
	@curl https://curl.se/windows/dl-8.4.0_6/curl-8.4.0_6-win64-mingw.zip -o curl.zip
	@unzip curl.zip
	@mv curl-8.4.0_6-win64-mingw curl
	@cp -r curl/include/curl/* curl
	@rm -r curl.zip

%_windows.umi: %.c curl Makefile
	@echo CC $@
	@$(CROSS_CC) -shared $(CFLAGS) -o $@ $< -Lpak/umka/windows -lumka \
		-static -static-libgcc -static-libstdc++ -DCURL_STATICLIB -Lcurl/lib \
		-pipe -lnghttp2 -lidn2 -lssl -lcrypto -lgdi32 -lcrypt32 -lwldap32 -lbrotlidec-static -lz -lws2_32

.PHONY: build
build: $(NAME)_windows.umi $(NAME)_linux.umi

.PHONY: run
run: build
	@$(UMKA) $(NAME).um

