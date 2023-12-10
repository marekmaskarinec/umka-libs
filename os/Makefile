
CROSS_CC=x86_64-w64-mingw32-gcc
NAME=os
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
LDFLAGS=umbox/umka/linux/libumka_static.a

.PHONY: all
all: build

%_linux.umi: %.c Makefile
	@echo CC $@
	@$(CC) $(CFLAGS) -shared -o $@ $< $(LDFLAGS)

%_windows.umi: %.c Makefile
	@echo CC $@
	@$(CROSS_CC) -shared $(CFLAGS) -o $@ $< -Lumbox/umka/windows -lumka

.PHONY: build
build: $(NAME)_windows.umi $(NAME)_linux.umi

.PHONY: run
run: build
	@$(UMKA) $(NAME).um

