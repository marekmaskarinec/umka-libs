
CROSS_CC=x86_64-w64-mingw32-gcc
NAME=tar
UMKA=umka
CFLAGS= \
	-Wall \
	-Wno-unused-label \
	-Wno-pointer-to-int-cast \
	-Wno-unused-result \
	-Iumbox/umka_api/ \
	-I. \
	-Imicrotar/src/ \
	-fPIC \
	-O3
LDFLAGS=

.PHONY: all
all: build

%_linux.umi: %.c Makefile
	@echo CC $@
	@$(CC) $(CFLAGS) -shared -o $@ $< microtar/src/microtar.c $(LDFLAGS)

%_windows.umi: %.c Makefile
	@echo CC $@
	@$(CROSS_CC) -shared $(CFLAGS) -o $@ $< microtar/src/microtar.c

.PHONY: build
build: $(NAME)_windows.umi $(NAME)_linux.umi

.PHONY: run
run: build
	@$(UMKA) $(NAME).um

