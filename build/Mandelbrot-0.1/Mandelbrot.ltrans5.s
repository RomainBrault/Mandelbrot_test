	.file	"Mandelbrot.ltrans5.o"
	.text
.Ltext0:
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I_Mandelbrot.cpp.4716.2358, @function
_GLOBAL__sub_I_Mandelbrot.cpp.4716.2358:
.LFB1:
	.file 1 "/home/romain/Dropbox/Perso/Mandelbrot_test/Mandelbrot-0.1/src/Mandelbrot.cpp"
	.loc 1 213 0
	.cfi_startproc
.LVL0:
.LBB4:
.LBB5:
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.7.2/../../../../include/c++/4.7.2/iostream"
	.loc 2 75 0
	leaq	_ZStL8__ioinit.4892.2607(%rip), %rdi
.LBE5:
.LBE4:
	.loc 1 213 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LBB8:
.LBB6:
	.loc 2 75 0
	call	_ZNSt8ios_base4InitC1Ev@PLT
.LVL1:
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit.4892.2607(%rip), %rsi
.LBE6:
.LBE8:
	.loc 1 213 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB9:
.LBB7:
	.loc 2 75 0
	jmp	__cxa_atexit@PLT
.LVL2:
.LBE7:
.LBE9:
	.cfi_endproc
.LFE1:
	.size	_GLOBAL__sub_I_Mandelbrot.cpp.4716.2358, .-_GLOBAL__sub_I_Mandelbrot.cpp.4716.2358
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_Mandelbrot.cpp.4716.2358
	.local	_ZStL8__ioinit.4892.2607
	.comm	_ZStL8__ioinit.4892.2607,1,1
	.text
.Letext0:
	.file 3 "<built-in>"
	.file 4 "/usr/lib/gcc/x86_64-redhat-linux/4.7.2/../../../../include/c++/4.7.2/bits/ios_base.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x168
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF7
	.byte	0x4
	.long	.LASF8
	.long	.LASF9
	.long	.Ldebug_ranges0+0x40
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.long	0x66
	.uleb128 0x5
	.long	.LASF3
	.byte	0x1
	.byte	0xd5
	.long	0x29
	.uleb128 0x5
	.long	.LASF4
	.byte	0x1
	.byte	0xd5
	.long	0x29
	.byte	0
	.uleb128 0x6
	.long	.LASF11
	.quad	.LFB1
	.quad	.LFE1
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0
	.uleb128 0x7
	.long	0x45
	.quad	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd5
	.uleb128 0x8
	.long	0x4f
	.byte	0x1
	.uleb128 0x9
	.long	0x5a
	.value	0xffff
	.uleb128 0xa
	.quad	.LVL1
	.long	0xfd
	.long	0xc0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit.4892.2607
	.byte	0
	.uleb128 0xc
	.quad	.LVL2
	.long	0x141
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit.4892.2607
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"std"
	.byte	0x3
	.byte	0
	.long	0x121
	.uleb128 0xf
	.long	.LASF12
	.long	0x115
	.uleb128 0x10
	.long	.LASF13
	.byte	0x1
	.byte	0x4
	.value	0x217
	.uleb128 0x11
	.long	.LASF14
	.byte	0x4
	.value	0x21b
	.long	.LASF15
	.long	0x10d
	.uleb128 0x12
	.long	0x13b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF5
	.byte	0x2
	.byte	0x4b
	.long	0xf4
	.byte	0
	.uleb128 0x14
	.long	0x115
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit.4892.2607
	.uleb128 0x15
	.long	.LASF6
	.long	0x139
	.uleb128 0x16
	.byte	0x8
	.uleb128 0x17
	.byte	0x8
	.long	0xf4
	.uleb128 0x18
	.long	.LASF16
	.long	0x29
	.long	0x15e
	.uleb128 0x19
	.long	0x15e
	.uleb128 0x19
	.long	0x139
	.uleb128 0x19
	.long	0x139
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.long	0x164
	.uleb128 0x1a
	.uleb128 0x19
	.long	0x139
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB4
	.quad	.LBE4
	.quad	.LBB8
	.quad	.LBE8
	.quad	.LBB9
	.quad	.LBE9
	.quad	0
	.quad	0
	.quad	.LFB1
	.quad	.LFE1
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__static_initialization_and_destruction_0"
.LASF0:
	.string	"unsigned int"
.LASF5:
	.string	"__ioinit"
.LASF16:
	.string	"__cxa_atexit"
.LASF12:
	.string	"ios_base"
.LASF11:
	.string	"_GLOBAL__sub_I_Mandelbrot.cpp"
.LASF6:
	.string	"__dso_handle"
.LASF2:
	.string	"char"
.LASF3:
	.string	"__initialize_p"
.LASF9:
	.string	"/home/romain/Dropbox/Perso/Mandelbrot_test/build/Mandelbrot-0.1"
.LASF15:
	.string	"_ZNSt8ios_base4InitC1Ev"
.LASF4:
	.string	"__priority"
.LASF13:
	.string	"Init"
.LASF14:
	.string	"__comp_ctor "
.LASF8:
	.string	"Mandelbrot.ltrans5.o"
.LASF7:
	.string	"GNU GIMPLE 4.7.2 20121109 (Red Hat 4.7.2-8) -mtune=generic -march=x86-64 -mtune=generic -march=x86-64 -g -Ofast -pedantic -fexceptions -fpic -fno-common -fltrans"
.LASF1:
	.string	"sizetype"
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.7.2 20121109 (Red Hat 4.7.2-8)"
	.section	.note.GNU-stack,"",@progbits
