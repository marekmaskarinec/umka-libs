
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
all: run

%_linux.umi: %.c Makefile
	@echo CC $@
	@$(CC) $(CFLAGS) -shared -o $@ $< $(LDFLAGS)
	
libcurl-x64.dll:
	@echo Downloading libcurl-x64.dll
	@curl https://curl.se/windows/dl-8.4.0_6/curl-8.4.0_6-win64-mingw.zip -O
	@unzip curl-8.4.0_6-win64-mingw.zip
	@cp curl-8.4.0_6-win64-mingw/bin/libcurl-x64.dll libcurl-x64.dll
	@cp curl-8.4.0_6-win64-mingw/bin/libcurl-x64.def libcurl-x64.def
	@cp -r curl-8.4.0_6-win64-mingw/include/curl/ .
	@rm -r curl-8.4.0_6-win64-mingw curl-8.4.0_6-win64-mingw.zip

%_windows.umi: %.c libcurl-x64.dll Makefile
	@echo CC $@
	@$(CROSS_CC) -shared $(CFLAGS) -o $@ $< -L. -lcurl-x64 -Lpak/umka/windows -lumka

.PHONY: run
run: $(NAME)_windows.umi $(NAME)_linux.umi
	@$(UMKA) $(NAME).um

