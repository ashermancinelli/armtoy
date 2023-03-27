# @ vim:ft=armv5

.macro EXIT CODE:req
  mov x8, #0x5d
  mov x0, #\CODE
  svc #0
.endm

.macro STDOUT BUF:req,CNT:req
  mov x8, #0x40
  mov x2, #\CNT
  mov x1, #\BUF
  mov x0, #1
  svc #0
.endm
