TARGETS := syscall.exe rodata.exe write.exe loop.exe
.PHONY: all syscall.exe rodata.exe write.exe loop.exe

all: $(TARGETS)

run:
	./write.exe || true
	./syscall.exe || true
	./rodata.exe || true

loop.exe: loop.s
	$(AS) $^ -o $@ $(CFLAGS)

write.exe: write.s
	$(AS) $^ -o $@ $(CFLAGS)

syscall.exe: syscall.c
	$(CC) -S $^ $(CFLAGS)
	$(CC) $^ -o $@ $(CFLAGS)

rodata.exe: rodata.c
	$(CC) -S $^ $(CFLAGS)
	$(CC) $^ -o $@ $(CFLAGS)

clean:
	test -n "$(ls *.exe)" && rm *.exe || true
	test -n "$(ls *.o)" && rm *.o || true
