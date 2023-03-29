ifeq ($(AS),)
	$(error "Required variable $AS was not set")
endif
ifeq ($(CC),)
	$(error "Required variable $CC was not set")
endif
TARGETS := syscall.exe rodata.exe write.exe loop.exe lctwosum.exe
.PHONY: all

all : $(TARGETS)

run:
	$(RUNNER) ./write.exe || true
	$(RUNNER) ./syscall.exe || true
	$(RUNNER) ./rodata.exe || true
	$(RUNNER) ./loop.exe || true

%.run : %.exe
	$(RUNNER) ./$<

%.exe : %.s
	$(CC) $< -o $@ $(CFLAGS)
	#$(AS) $< -o $(subst .s,.o,$<)
	#$(LD) $(subst .s,.o,$<) -o $@ $(CFLAGS)

%.exe : %.c
	$(CC) -S $^ $(CFLAGS)
	$(CC) $^ -o $@ $(CFLAGS)

#syscall.exe: syscall.c
#	$(CC) -S $^ $(CFLAGS)
#	$(CC) $^ -o $@ $(CFLAGS)
#
#rodata.exe: rodata.c
#	$(CC) -S $^ $(CFLAGS)
#	$(CC) $^ -o $@ $(CFLAGS)

clean:
	test -n "$(ls *.exe)" && rm *.exe || true
	test -n "$(ls *.o)" && rm *.o || true
