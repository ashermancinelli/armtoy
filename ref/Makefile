TARGETS := syscall.exe rodata.exe write.exe
.PHONY: all syscall.exe rodata.exe write.exe

all: $(TARGETS)

write.exe: write.s
	$(AS) $^ -o $@

syscall.exe: syscall.c
	$(CC) -S $^
	$(CC) $^ -o $@

rodata.exe: rodata.c
	$(CC) -S $^
	$(CC) $^ -o $@

clean:
	test -f *.exe && rm *.exe || true
	test -f *.o && rm *.o || true
