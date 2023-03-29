UNAME := $(shell uname -m)
GCCVER ?= 12.2.0

COMPROOT ?= /usr

ASNAME := aarch64-linux-gnu-as
LDNAME := aarch64-linux-gnu-ld
CCNAME := aarch64-linux-gnu-gcc

AS := $(COMPROOT)/bin/$(ASNAME)
ASFLAGS := -Iinc
CC := $(COMPROOT)/bin/$(CCNAME)
CFLAGS := -I$(shell pwd)/inc -g -static
LD := $(COMPROOT)/bin/$(LDNAME)

SRC := main.s
BIN := main.exe
RUNNER := qemu-aarch64 -strace

.PHONY: all ref clean

all: ref main.s
	$(AS) $(SRC) $(ASFLAGS) -o $(BIN)

run:
	$(RUNNER) ./$(BIN) || true
	$(MAKE) -C ./ref run

ref:
	$(MAKE) -C ./ref CC="$(CC)" AS="$(AS)" CFLAGS="$(CFLAGS)" RUNNER="$(RUNNER)" LD="$(LD)"

clean:
	test -n "$(ls *.exe)" && rm *.exe || true
	$(MAKE) -C ./ref clean

% :
	$(MAKE) -C ./ref CC="$(CC)" AS="$(AS)" CFLAGS="$(CFLAGS)" RUNNER="$(RUNNER)" LD="$(LD)" $@
