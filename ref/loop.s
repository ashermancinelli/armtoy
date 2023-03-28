// vim:ft=armv5
.include "util.h"
.section .rodata

array: 
  .word 2
  .word 7
  .word 11
  .word 15
.equ array_len, 4

fmt: .asciz "array[%d] = %d\n"
.equ fmt_len, .-fmt

fmti: .asciz "%d\n"
.equ fmti_len, .-fmti

.text
.global main
main:
  sub sp, sp, #16
  mov x1, #0
  str x1, [sp]

body:

  ldr x1, [sp]
  ldr x2, =array
  ldr x2, [x2, x1]

  // print current element
  adrp x0, fmt
  add x0, x0, :lo12:fmt
  bl printf

check:

  // increment
  ldr x1, [sp]
  add x1, x1, #1
  str x1, [sp]

  adrp x0, fmti
  add x0, x0, :lo12:fmti
  bl printf

  ldr x1, [sp]
  ldr x0, =array_len
  sbc x0, x0, x1
  cbnz x0, body

  EXIT 0
