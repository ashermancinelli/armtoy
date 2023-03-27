	.arch armv8-a
	.file	"rodata.c"
	.text
	.global	str
	.section	.rodata
	.align	3
.LC0:
	.string	"abcd\n"
	.section	.data.rel.local,"aw"
	.align	3
	.type	str, %object
	.size	str, 8
str:
	.xword	.LC0
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldr	x0, [x0]
	mov	x2, 5
	mov	x1, x0
	mov	w0, 1
	bl	write
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldr	x0, [x0]
	ldrb	w0, [x0]
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
