// vim:ft=armv5
// https://leetcode.com/problems/two-sum/

ar: .word 2,7,11,15
.equ arlen, .-ar
.equ target, 9

fmt_i: .asciz "%d\n"
fmt_done: .asciz "Done: ar[%d] + ar[%d] == %d\n"

.global main
main:
  // int i = 0, j = 1, t = 9;
  mov x9, #0
  mov x10, #1
  ldr x11, =target
  
  // register int x0 = ar[i];
  ldr x0, =ar
  ldr x0, [x0, x9]

  // register int x1 = ar[j];
  ldr x1, =ar
  ldr x1, [x1, x10]

loop:
  // int t13 = (x0 + x1) - target
  add x12, x0, x1
  sub x13, x12, x11

  // if (t13 == 0) break;
  cbz x13, done

done:
  mov x3, x11
  mov x2, x10
  mov x1, x9
  adrp x0, fmt_done
  add x0, x0, :lo12:fmt_done
  bl printf

exit:
  mov x0, #0
  mov x8, #93
  svc #0

