TARGETS := syscall.exe rodata.exe write.exe
.PHONY: all syscall.exe rodata.exe write.exe

all: $(TARGETS)

run:
	./write.exe || true
	./syscall.exe || true
	./rodata.exe || true

write.exe: write.s
	$(AS) $^ -o $@

syscall.exe: syscall.c
	$(CC) -S $^
	$(CC) $^ -o $@

rodata.exe: rodata.c
	$(CC) -S $^
	$(CC) $^ -o $@

clean:
	test -n "$(ls *.exe)" && rm *.exe || true
	test -n "$(ls *.o)" && rm *.o || true
