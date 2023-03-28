	.arch armv8-a
	.file	"rodata.c"
	.text
.Ltext0:
	.file 1 "rodata.c"
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
	.loc 1 3 12
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	.loc 1 5 3
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldr	x0, [x0]
	mov	x2, 5
	mov	x1, x0
	mov	w0, 1
	bl	write
	.loc 1 6 13
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldr	x0, [x0]
	ldrb	w0, [x0]
	.loc 1 7 1
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/include/unistd.h"
	.file 4 "/home/sw/thirdparty/gcc/gcc-12.2.0/Linux_aarch64/lib/gcc/aarch64-unknown-linux-gnu/12.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf3
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x1d
	.4byte	.LASF12
	.4byte	.LASF13
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xbf
	.byte	0x1b
	.4byte	0x5f
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	0x72
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0xdc
	.byte	0x13
	.4byte	0x66
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.4byte	0x43
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2
	.byte	0xe
	.4byte	0xac
	.uleb128 0x9
	.byte	0x3
	.8byte	str
	.uleb128 0x4
	.4byte	0x79
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x16e
	.byte	0x10
	.4byte	0x7e
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x58
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x8a
	.byte	0
	.uleb128 0x4
	.4byte	0xd7
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.4byte	0x58
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"GNU C17 12.2.0 -mlittle-endian -mabi=lp64 -g"
.LASF12:
	.string	"rodata.c"
.LASF10:
	.string	"size_t"
.LASF13:
	.string	"/home/amancinelli/workspace/armtoy/ref"
.LASF3:
	.string	"long unsigned int"
.LASF8:
	.string	"__ssize_t"
.LASF14:
	.string	"write"
.LASF0:
	.string	"unsigned char"
.LASF7:
	.string	"char"
.LASF9:
	.string	"ssize_t"
.LASF6:
	.string	"long int"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"main"
.LASF5:
	.string	"short int"
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
