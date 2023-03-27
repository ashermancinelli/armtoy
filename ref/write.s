# @ vim:ft=armv5

.section .rodata
string: .asciz "my string\n"
.equ string_length, .-string

.text
.global main
main:
  // write string
  mov x8, #0x40
  mov x2, #string_length
  ldr x1, =string
  mov x0, #1
  svc #0

  // exit 0
  mov x8, #0x5d
  mov x0, #1
  svc #0
