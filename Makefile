UNAME := $(shell uname -m)
GCCVER ?= 12.2.0
COMPROOT ?= /home/sw/thirdparty/gcc/gcc-$(GCCVER)/Linux_$(UNAME)
AS := $(COMPROOT)/bin/gcc
ASFLAGS := -Iinc
CCNAME := gcc
CC := $(COMPROOT)/bin/$(CCNAME)
CFLAGS := -I$(shell pwd)/inc -g
SRC := main.s
BIN := main.exe

.PHONY: all ref clean

all: ref main.s
	$(AS) $(SRC) $(ASFLAGS) -o $(BIN)

run:
	./$(BIN) || true
	$(MAKE) -C ./ref run

ref:
	$(MAKE) -C ./ref CC="$(CC)" AS="$(AS)" CFLAGS="$(CFLAGS)"

clean:
	test -n "$(ls *.exe)" && rm *.exe || true
	$(MAKE) -C ./ref clean
