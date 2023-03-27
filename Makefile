UNAME := $(shell uname -m)
GCCVER ?= 12.2.0
COMPROOT ?= /home/sw/thirdparty/gcc/gcc-$(GCCVER)/Linux_$(UNAME)
AS := $(COMPROOT)/bin/gcc
# ASFLAGS := -nostdlib
CCNAME := gcc
CC := $(COMPROOT)/bin/$(CCNAME)
SRC := main.s
BIN := main

.PHONY: all ref clean

all: ref main.s
	$(AS) $(SRC) $(ASFLAGS) -o $(BIN)
	./$(BIN)

ref:
	$(MAKE) -C ./ref CC=$(CC) AS=$(AS)

clean:
	$(MAKE) -C ./ref clean
