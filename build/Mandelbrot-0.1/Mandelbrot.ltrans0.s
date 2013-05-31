	.file	"Mandelbrot.ltrans0.o"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"SFML Window"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "/home/romain/Dropbox/Perso/Mandelbrot_test/Mandelbrot-0.1/src/Mandelbrot.cpp"
	.loc 1 5 0
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB2:
	.loc 1 7 0
	leaq	.LC0(%rip), %rsi
.LBE2:
	.loc 1 5 0
	subq	$800, %rsp
	.cfi_def_cfa_offset 816
.LVL0:
.LBB6:
	.loc 1 7 0
	leaq	15(%rsp), %rdx
	leaq	16(%rsp), %rdi
.LBB3:
.LBB4:
	.file 2 "/usr/include/SFML/Window/WindowSettings.hpp"
	.loc 2 47 0
	movl	$24, 32(%rsp)
	movl	$8, 36(%rsp)
	movl	$0, 40(%rsp)
.LVL1:
.LEHB0:
.LBE4:
.LBE3:
	.loc 1 7 0
	call	_ZNSsC1EPKcRKSaIcE@PLT
.LEHE0:
.LVL2:
	leaq	48(%rsp), %rdi
	movl	$32, %ecx
	movl	$600, %edx
	movl	$800, %esi
.LEHB1:
	call	_ZN2sf9VideoModeC1Ejjj@PLT
.LVL3:
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	leaq	32(%rsp), %r9
.LVL4:
	leaq	16(%rsp), %rcx
	leaq	80(%rsp), %rdi
	movl	$6, %r8d
	call	_ZN2sf6WindowC1ENS_9VideoModeERKSsmRKNS_14WindowSettingsE@PLT
.LEHE1:
.LVL5:
	leaq	16(%rsp), %rdi
	call	_ZNSsD1Ev@PLT
.LVL6:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 9 0
	leaq	80(%rsp), %rdi
.LEHB2:
	call	_ZNK2sf6Window8IsOpenedEv@PLT
.LVL7:
	testb	%al, %al
	je	.L20
	.p2align 4,,10
	.p2align 3
.L15:
.LBB5:
	.loc 1 11 0
	leaq	64(%rsp), %rsi
	leaq	80(%rsp), %rdi
	call	_ZN2sf6Window8GetEventERNS_5EventE@PLT
.LVL8:
	testb	%al, %al
	je	.L21
	.loc 1 13 0
	movl	64(%rsp), %eax
	testl	%eax, %eax
	je	.L22
.L3:
	.loc 1 17 0
	cmpl	$5, %eax
	jne	.L15
	cmpl	$256, 68(%rsp)
	jne	.L15
	.loc 1 21 0
	leaq	80(%rsp), %rdi
	call	_ZN2sf6Window5CloseEv@PLT
.LVL9:
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L22:
	.loc 1 14 0
	leaq	80(%rsp), %rdi
	call	_ZN2sf6Window5CloseEv@PLT
.LVL10:
	movl	64(%rsp), %eax
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L21:
	.loc 1 25 0
	leaq	80(%rsp), %rdi
	call	_ZN2sf6Window7DisplayEv@PLT
.LEHE2:
.LVL11:
	jmp	.L2
.L20:
.LBE5:
	.loc 1 28 0
	leaq	80(%rsp), %rdi
.LEHB3:
	call	_ZN2sf6WindowD1Ev@PLT
.LVL12:
.LBE6:
	.loc 1 29 0
	addq	$800, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.LVL13:
.L10:
	.cfi_restore_state
.LBB7:
	.loc 1 7 0
	leaq	16(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZNSsD1Ev@PLT
.LVL14:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE3:
.LVL15:
.L11:
	.loc 1 28 0
	leaq	80(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZN2sf6WindowD1Ev@PLT
.LVL16:
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.LVL17:
.LBE7:
	.cfi_endproc
.LFE0:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA0:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE0-.LLSDACSB0
.LLSDACSB0:
	.uleb128 .LEHB0-.LFB0
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB0
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB0
	.uleb128 0
	.uleb128 .LEHB2-.LFB0
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L11-.LFB0
	.uleb128 0
	.uleb128 .LEHB3-.LFB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB0
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE0:
	.section	.text.startup
	.size	main, .-main
	.weak	_ZTIN2sf14WindowListenerE
	.section	.data.rel.ro._ZTIN2sf14WindowListenerE,"awG",@progbits,_ZTIN2sf14WindowListenerE,comdat
	.align 16
	.type	_ZTIN2sf14WindowListenerE, @object
	.size	_ZTIN2sf14WindowListenerE, 16
_ZTIN2sf14WindowListenerE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN2sf14WindowListenerE
	.weak	_ZTSN2sf14WindowListenerE
	.section	.rodata._ZTSN2sf14WindowListenerE,"aG",@progbits,_ZTSN2sf14WindowListenerE,comdat
	.align 16
	.type	_ZTSN2sf14WindowListenerE, @object
	.size	_ZTSN2sf14WindowListenerE, 22
_ZTSN2sf14WindowListenerE:
	.string	"N2sf14WindowListenerE"
	.text
.Letext0:
	.file 3 "/usr/include/SFML/Window/Window.hpp"
	.file 4 "/usr/include/SFML/Window/Event.hpp"
	.file 5 "/usr/include/SFML/Config.hpp"
	.file 6 "/usr/include/SFML/Window/VideoMode.hpp"
	.file 7 "<built-in>"
	.file 8 "/usr/lib/gcc/x86_64-redhat-linux/4.7.2/../../../../include/c++/4.7.2/bits/basic_string.h"
	.file 9 "/usr/lib/gcc/x86_64-redhat-linux/4.7.2/../../../../include/c++/4.7.2/bits/stringfwd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa1b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF147
	.byte	0x4
	.long	.LASF148
	.long	.LASF149
	.long	.Ldebug_ranges0+0x40
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF18
	.byte	0x1
	.byte	0x5
	.long	0x37
	.quad	.LFB0
	.quad	.LFE0
	.uleb128 0x1
	.byte	0x9c
	.long	0x285
	.uleb128 0x5
	.long	.Ldebug_ranges0+0
	.long	0x258
	.uleb128 0x6
	.string	"App"
	.byte	0x1
	.byte	0x7
	.long	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x7
	.quad	.LBB3
	.quad	.LBE3
	.long	0xcc
	.uleb128 0x8
	.long	.LASF4
	.byte	0x1
	.byte	0x5
	.long	0x30
	.byte	0
	.uleb128 0x8
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.long	0x30
	.byte	0x8
	.uleb128 0x8
	.long	.LASF6
	.byte	0x1
	.byte	0x5
	.long	0x30
	.byte	0x18
	.uleb128 0x9
	.long	.LASF150
	.long	0x949
	.long	.LLST0
	.byte	0
	.uleb128 0x7
	.quad	.LBB5
	.quad	.LBE5
	.long	0x158
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1
	.byte	0xa
	.long	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0xb
	.quad	.LVL8
	.long	0x298
	.long	0x110
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.byte	0
	.uleb128 0xb
	.quad	.LVL9
	.long	0x2ba
	.long	0x129
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0xb
	.quad	.LVL10
	.long	0x2ba
	.long	0x142
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0xd
	.quad	.LVL11
	.long	0x2d3
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.byte	0
	.uleb128 0xb
	.quad	.LVL2
	.long	0x976
	.long	0x185
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -801
	.byte	0
	.uleb128 0xb
	.quad	.LVL3
	.long	0x8f1
	.long	0x1b2
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x320
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x258
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.quad	.LVL5
	.long	0x2ec
	.long	0x1de
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x36
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.byte	0
	.uleb128 0xb
	.quad	.LVL6
	.long	0x99a
	.long	0x1f7
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.byte	0
	.uleb128 0xb
	.quad	.LVL7
	.long	0x319
	.long	0x210
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0xb
	.quad	.LVL12
	.long	0x336
	.long	0x229
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0xb
	.quad	.LVL14
	.long	0x99a
	.long	0x242
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.byte	0
	.uleb128 0xd
	.quad	.LVL16
	.long	0x336
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.byte	0
	.uleb128 0xb
	.quad	.LVL15
	.long	0xa07
	.long	0x270
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.quad	.LVL17
	.long	0xa07
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"sf"
	.byte	0x5
	.byte	0x7d
	.long	0x949
	.uleb128 0xf
	.long	.LASF142
	.long	0x354
	.uleb128 0x10
	.long	.LASF14
	.byte	0x3
	.byte	0xa1
	.long	.LASF16
	.long	0x29
	.long	0x2af
	.long	0x2ba
	.uleb128 0x11
	.long	0x9cc
	.uleb128 0x12
	.long	0x9d2
	.byte	0
	.uleb128 0x13
	.long	.LASF8
	.byte	0x3
	.byte	0x75
	.long	.LASF10
	.long	0x2cd
	.long	0x2d3
	.uleb128 0x11
	.long	0x9cc
	.byte	0
	.uleb128 0x13
	.long	.LASF9
	.byte	0x3
	.byte	0xf9
	.long	.LASF11
	.long	0x2e6
	.long	0x2ec
	.uleb128 0x11
	.long	0x9cc
	.byte	0
	.uleb128 0x13
	.long	.LASF12
	.byte	0x3
	.byte	0x4a
	.long	.LASF13
	.long	0x2ff
	.long	0x319
	.uleb128 0x11
	.long	0x9cc
	.uleb128 0x12
	.long	0x8e5
	.uleb128 0x12
	.long	0x9f5
	.uleb128 0x12
	.long	0x95b
	.uleb128 0x12
	.long	0x9fb
	.byte	0
	.uleb128 0x10
	.long	.LASF15
	.byte	0x3
	.byte	0x7f
	.long	.LASF17
	.long	0x29
	.long	0x330
	.long	0x336
	.uleb128 0x11
	.long	0xa01
	.byte	0
	.uleb128 0x14
	.long	.LASF19
	.byte	0x3
	.byte	0x59
	.long	.LASF151
	.byte	0x1
	.uleb128 0x2
	.byte	0x10
	.uleb128 0x1
	.long	0x28f
	.long	0x34d
	.uleb128 0x11
	.long	0x9cc
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF23
	.byte	0xc
	.byte	0x2
	.byte	0x22
	.long	0x385
	.uleb128 0x16
	.long	.LASF20
	.byte	0x2
	.byte	0x36
	.long	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF21
	.byte	0x2
	.byte	0x37
	.long	0x30
	.byte	0x4
	.uleb128 0x16
	.long	.LASF22
	.byte	0x2
	.byte	0x38
	.long	0x30
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF7
	.byte	0x10
	.byte	0x4
	.byte	0xc5
	.long	0x5c5
	.uleb128 0x17
	.long	.LASF152
	.byte	0x4
	.byte	0x4
	.value	0x116
	.long	0x405
	.uleb128 0x18
	.long	.LASF24
	.sleb128 0
	.uleb128 0x18
	.long	.LASF25
	.sleb128 1
	.uleb128 0x18
	.long	.LASF26
	.sleb128 2
	.uleb128 0x18
	.long	.LASF27
	.sleb128 3
	.uleb128 0x18
	.long	.LASF28
	.sleb128 4
	.uleb128 0x18
	.long	.LASF29
	.sleb128 5
	.uleb128 0x18
	.long	.LASF30
	.sleb128 6
	.uleb128 0x18
	.long	.LASF31
	.sleb128 7
	.uleb128 0x18
	.long	.LASF32
	.sleb128 8
	.uleb128 0x18
	.long	.LASF33
	.sleb128 9
	.uleb128 0x18
	.long	.LASF34
	.sleb128 10
	.uleb128 0x18
	.long	.LASF35
	.sleb128 11
	.uleb128 0x18
	.long	.LASF36
	.sleb128 12
	.uleb128 0x18
	.long	.LASF37
	.sleb128 13
	.uleb128 0x18
	.long	.LASF38
	.sleb128 14
	.uleb128 0x18
	.long	.LASF39
	.sleb128 15
	.uleb128 0x18
	.long	.LASF40
	.sleb128 16
	.byte	0
	.uleb128 0x19
	.long	.LASF41
	.byte	0x4
	.value	0x12f
	.long	0x391
	.byte	0
	.uleb128 0x1a
	.long	.LASF153
	.byte	0xc
	.byte	0x4
	.value	0x132
	.long	0x480
	.uleb128 0x1b
	.string	"Key"
	.byte	0x4
	.value	0x133
	.long	0x480
	.uleb128 0x1c
	.long	.LASF42
	.byte	0x4
	.value	0x134
	.long	0x4bd
	.uleb128 0x1c
	.long	.LASF43
	.byte	0x4
	.value	0x135
	.long	0x4d6
	.uleb128 0x1c
	.long	.LASF44
	.byte	0x4
	.value	0x136
	.long	0x4f7
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x4
	.value	0x137
	.long	0x524
	.uleb128 0x1c
	.long	.LASF46
	.byte	0x4
	.value	0x138
	.long	0x53d
	.uleb128 0x1c
	.long	.LASF47
	.byte	0x4
	.value	0x139
	.long	0x56e
	.uleb128 0x1c
	.long	.LASF48
	.byte	0x4
	.value	0x13a
	.long	0x596
	.byte	0
	.uleb128 0x15
	.long	.LASF49
	.byte	0x8
	.byte	0x4
	.byte	0xcc
	.long	0x4bd
	.uleb128 0x16
	.long	.LASF50
	.byte	0x4
	.byte	0xce
	.long	0x5d0
	.byte	0
	.uleb128 0x1d
	.string	"Alt"
	.byte	0x4
	.byte	0xcf
	.long	0x29
	.byte	0x4
	.uleb128 0x16
	.long	.LASF51
	.byte	0x4
	.byte	0xd0
	.long	0x29
	.byte	0x5
	.uleb128 0x16
	.long	.LASF52
	.byte	0x4
	.byte	0xd1
	.long	0x29
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.long	.LASF53
	.byte	0x4
	.byte	0x4
	.byte	0xd7
	.long	0x4d6
	.uleb128 0x16
	.long	.LASF54
	.byte	0x4
	.byte	0xd9
	.long	0x85c
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF55
	.byte	0x8
	.byte	0x4
	.byte	0xdf
	.long	0x4f7
	.uleb128 0x1d
	.string	"X"
	.byte	0x4
	.byte	0xe1
	.long	0x37
	.byte	0
	.uleb128 0x1d
	.string	"Y"
	.byte	0x4
	.byte	0xe2
	.long	0x37
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	.LASF56
	.byte	0xc
	.byte	0x4
	.byte	0xe8
	.long	0x524
	.uleb128 0x16
	.long	.LASF57
	.byte	0x4
	.byte	0xea
	.long	0x872
	.byte	0
	.uleb128 0x1d
	.string	"X"
	.byte	0x4
	.byte	0xeb
	.long	0x37
	.byte	0x4
	.uleb128 0x1d
	.string	"Y"
	.byte	0x4
	.byte	0xec
	.long	0x37
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF58
	.byte	0x4
	.byte	0x4
	.byte	0xf2
	.long	0x53d
	.uleb128 0x16
	.long	.LASF59
	.byte	0x4
	.byte	0xf4
	.long	0x37
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF60
	.byte	0xc
	.byte	0x4
	.byte	0xfa
	.long	0x56e
	.uleb128 0x16
	.long	.LASF61
	.byte	0x4
	.byte	0xfc
	.long	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF62
	.byte	0x4
	.byte	0xfd
	.long	0x8ab
	.byte	0x4
	.uleb128 0x16
	.long	.LASF63
	.byte	0x4
	.byte	0xfe
	.long	0x954
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.long	.LASF64
	.byte	0x8
	.byte	0x4
	.value	0x104
	.long	0x596
	.uleb128 0x19
	.long	.LASF61
	.byte	0x4
	.value	0x106
	.long	0x30
	.byte	0
	.uleb128 0x19
	.long	.LASF57
	.byte	0x4
	.value	0x107
	.long	0x30
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.long	.LASF65
	.byte	0x8
	.byte	0x4
	.value	0x10d
	.long	0x5be
	.uleb128 0x19
	.long	.LASF66
	.byte	0x4
	.value	0x10f
	.long	0x30
	.byte	0
	.uleb128 0x19
	.long	.LASF67
	.byte	0x4
	.value	0x110
	.long	0x30
	.byte	0x4
	.byte	0
	.uleb128 0x1f
	.long	0x412
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"Key"
	.byte	0x4
	.byte	0x28
	.long	0x85c
	.uleb128 0x20
	.long	.LASF50
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x21
	.string	"A"
	.sleb128 97
	.uleb128 0x21
	.string	"B"
	.sleb128 98
	.uleb128 0x21
	.string	"C"
	.sleb128 99
	.uleb128 0x21
	.string	"D"
	.sleb128 100
	.uleb128 0x21
	.string	"E"
	.sleb128 101
	.uleb128 0x21
	.string	"F"
	.sleb128 102
	.uleb128 0x21
	.string	"G"
	.sleb128 103
	.uleb128 0x21
	.string	"H"
	.sleb128 104
	.uleb128 0x21
	.string	"I"
	.sleb128 105
	.uleb128 0x21
	.string	"J"
	.sleb128 106
	.uleb128 0x21
	.string	"K"
	.sleb128 107
	.uleb128 0x21
	.string	"L"
	.sleb128 108
	.uleb128 0x21
	.string	"M"
	.sleb128 109
	.uleb128 0x21
	.string	"N"
	.sleb128 110
	.uleb128 0x21
	.string	"O"
	.sleb128 111
	.uleb128 0x21
	.string	"P"
	.sleb128 112
	.uleb128 0x21
	.string	"Q"
	.sleb128 113
	.uleb128 0x21
	.string	"R"
	.sleb128 114
	.uleb128 0x21
	.string	"S"
	.sleb128 115
	.uleb128 0x21
	.string	"T"
	.sleb128 116
	.uleb128 0x21
	.string	"U"
	.sleb128 117
	.uleb128 0x21
	.string	"V"
	.sleb128 118
	.uleb128 0x21
	.string	"W"
	.sleb128 119
	.uleb128 0x21
	.string	"X"
	.sleb128 120
	.uleb128 0x21
	.string	"Y"
	.sleb128 121
	.uleb128 0x21
	.string	"Z"
	.sleb128 122
	.uleb128 0x18
	.long	.LASF68
	.sleb128 48
	.uleb128 0x18
	.long	.LASF69
	.sleb128 49
	.uleb128 0x18
	.long	.LASF70
	.sleb128 50
	.uleb128 0x18
	.long	.LASF71
	.sleb128 51
	.uleb128 0x18
	.long	.LASF72
	.sleb128 52
	.uleb128 0x18
	.long	.LASF73
	.sleb128 53
	.uleb128 0x18
	.long	.LASF74
	.sleb128 54
	.uleb128 0x18
	.long	.LASF75
	.sleb128 55
	.uleb128 0x18
	.long	.LASF76
	.sleb128 56
	.uleb128 0x18
	.long	.LASF77
	.sleb128 57
	.uleb128 0x18
	.long	.LASF78
	.sleb128 256
	.uleb128 0x18
	.long	.LASF79
	.sleb128 257
	.uleb128 0x18
	.long	.LASF80
	.sleb128 258
	.uleb128 0x18
	.long	.LASF81
	.sleb128 259
	.uleb128 0x18
	.long	.LASF82
	.sleb128 260
	.uleb128 0x18
	.long	.LASF83
	.sleb128 261
	.uleb128 0x18
	.long	.LASF84
	.sleb128 262
	.uleb128 0x18
	.long	.LASF85
	.sleb128 263
	.uleb128 0x18
	.long	.LASF86
	.sleb128 264
	.uleb128 0x18
	.long	.LASF87
	.sleb128 265
	.uleb128 0x18
	.long	.LASF88
	.sleb128 266
	.uleb128 0x18
	.long	.LASF89
	.sleb128 267
	.uleb128 0x18
	.long	.LASF90
	.sleb128 268
	.uleb128 0x18
	.long	.LASF91
	.sleb128 269
	.uleb128 0x18
	.long	.LASF92
	.sleb128 270
	.uleb128 0x18
	.long	.LASF93
	.sleb128 271
	.uleb128 0x18
	.long	.LASF94
	.sleb128 272
	.uleb128 0x18
	.long	.LASF95
	.sleb128 273
	.uleb128 0x18
	.long	.LASF96
	.sleb128 274
	.uleb128 0x18
	.long	.LASF97
	.sleb128 275
	.uleb128 0x18
	.long	.LASF98
	.sleb128 276
	.uleb128 0x18
	.long	.LASF99
	.sleb128 277
	.uleb128 0x18
	.long	.LASF100
	.sleb128 278
	.uleb128 0x18
	.long	.LASF101
	.sleb128 279
	.uleb128 0x21
	.string	"Tab"
	.sleb128 280
	.uleb128 0x18
	.long	.LASF102
	.sleb128 281
	.uleb128 0x18
	.long	.LASF103
	.sleb128 282
	.uleb128 0x21
	.string	"End"
	.sleb128 283
	.uleb128 0x18
	.long	.LASF104
	.sleb128 284
	.uleb128 0x18
	.long	.LASF105
	.sleb128 285
	.uleb128 0x18
	.long	.LASF106
	.sleb128 286
	.uleb128 0x21
	.string	"Add"
	.sleb128 287
	.uleb128 0x18
	.long	.LASF107
	.sleb128 288
	.uleb128 0x18
	.long	.LASF108
	.sleb128 289
	.uleb128 0x18
	.long	.LASF109
	.sleb128 290
	.uleb128 0x18
	.long	.LASF110
	.sleb128 291
	.uleb128 0x18
	.long	.LASF111
	.sleb128 292
	.uleb128 0x21
	.string	"Up"
	.sleb128 293
	.uleb128 0x18
	.long	.LASF112
	.sleb128 294
	.uleb128 0x18
	.long	.LASF113
	.sleb128 295
	.uleb128 0x18
	.long	.LASF114
	.sleb128 296
	.uleb128 0x18
	.long	.LASF115
	.sleb128 297
	.uleb128 0x18
	.long	.LASF116
	.sleb128 298
	.uleb128 0x18
	.long	.LASF117
	.sleb128 299
	.uleb128 0x18
	.long	.LASF118
	.sleb128 300
	.uleb128 0x18
	.long	.LASF119
	.sleb128 301
	.uleb128 0x18
	.long	.LASF120
	.sleb128 302
	.uleb128 0x18
	.long	.LASF121
	.sleb128 303
	.uleb128 0x18
	.long	.LASF122
	.sleb128 304
	.uleb128 0x21
	.string	"F1"
	.sleb128 305
	.uleb128 0x21
	.string	"F2"
	.sleb128 306
	.uleb128 0x21
	.string	"F3"
	.sleb128 307
	.uleb128 0x21
	.string	"F4"
	.sleb128 308
	.uleb128 0x21
	.string	"F5"
	.sleb128 309
	.uleb128 0x21
	.string	"F6"
	.sleb128 310
	.uleb128 0x21
	.string	"F7"
	.sleb128 311
	.uleb128 0x21
	.string	"F8"
	.sleb128 312
	.uleb128 0x21
	.string	"F9"
	.sleb128 313
	.uleb128 0x21
	.string	"F10"
	.sleb128 314
	.uleb128 0x21
	.string	"F11"
	.sleb128 315
	.uleb128 0x21
	.string	"F12"
	.sleb128 316
	.uleb128 0x21
	.string	"F13"
	.sleb128 317
	.uleb128 0x21
	.string	"F14"
	.sleb128 318
	.uleb128 0x21
	.string	"F15"
	.sleb128 319
	.uleb128 0x18
	.long	.LASF123
	.sleb128 320
	.uleb128 0x18
	.long	.LASF40
	.sleb128 321
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF144
	.byte	0x5
	.byte	0x9a
	.long	0x30
	.uleb128 0x23
	.long	.LASF124
	.byte	0x4
	.byte	0x9a
	.long	0x8a0
	.uleb128 0x20
	.long	.LASF57
	.byte	0x4
	.byte	0x4
	.byte	0x9b
	.uleb128 0x18
	.long	.LASF110
	.sleb128 0
	.uleb128 0x18
	.long	.LASF111
	.sleb128 1
	.uleb128 0x18
	.long	.LASF125
	.sleb128 2
	.uleb128 0x18
	.long	.LASF126
	.sleb128 3
	.uleb128 0x18
	.long	.LASF127
	.sleb128 4
	.uleb128 0x18
	.long	.LASF128
	.sleb128 5
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"Joy"
	.byte	0x4
	.byte	0xac
	.long	0x8e5
	.uleb128 0x20
	.long	.LASF62
	.byte	0x4
	.byte	0x4
	.byte	0xad
	.uleb128 0x18
	.long	.LASF129
	.sleb128 0
	.uleb128 0x18
	.long	.LASF130
	.sleb128 1
	.uleb128 0x18
	.long	.LASF131
	.sleb128 2
	.uleb128 0x18
	.long	.LASF132
	.sleb128 3
	.uleb128 0x18
	.long	.LASF133
	.sleb128 4
	.uleb128 0x18
	.long	.LASF134
	.sleb128 5
	.uleb128 0x18
	.long	.LASF135
	.sleb128 6
	.uleb128 0x18
	.long	.LASF136
	.sleb128 7
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF137
	.byte	0xc
	.byte	0x6
	.byte	0x2a
	.long	0x93e
	.uleb128 0x13
	.long	.LASF12
	.byte	0x6
	.byte	0x3c
	.long	.LASF138
	.long	0x904
	.long	0x919
	.uleb128 0x11
	.long	0x9ef
	.uleb128 0x12
	.long	0x30
	.uleb128 0x12
	.long	0x30
	.uleb128 0x12
	.long	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF66
	.byte	0x6
	.byte	0x79
	.long	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF67
	.byte	0x6
	.byte	0x7a
	.long	0x30
	.byte	0x4
	.uleb128 0x16
	.long	.LASF139
	.byte	0x6
	.byte	0x7b
	.long	0x30
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.long	0x354
	.uleb128 0x24
	.long	0x28f
	.byte	0
	.uleb128 0x24
	.long	0x94e
	.uleb128 0x25
	.byte	0x8
	.long	0x354
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF140
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF141
	.uleb128 0xe
	.string	"std"
	.byte	0x7
	.byte	0
	.long	0x9cc
	.uleb128 0xf
	.long	.LASF143
	.long	0x9b1
	.uleb128 0x26
	.long	.LASF12
	.byte	0x8
	.value	0x1e7
	.long	.LASF154
	.long	0x98a
	.long	0x99a
	.uleb128 0x11
	.long	0x9d8
	.uleb128 0x12
	.long	0x9de
	.uleb128 0x12
	.long	0x9e9
	.byte	0
	.uleb128 0x27
	.long	.LASF19
	.byte	0x8
	.value	0x217
	.long	.LASF155
	.long	0x9aa
	.uleb128 0x11
	.long	0x9d8
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x9b6
	.uleb128 0x28
	.long	.LASF156
	.uleb128 0x24
	.long	0x9c0
	.uleb128 0x22
	.long	.LASF145
	.byte	0x9
	.byte	0x41
	.long	0x96d
	.byte	0
	.uleb128 0x25
	.byte	0x8
	.long	0x28f
	.uleb128 0x29
	.byte	0x8
	.long	0x385
	.uleb128 0x25
	.byte	0x8
	.long	0x96d
	.uleb128 0x25
	.byte	0x8
	.long	0x9e4
	.uleb128 0x24
	.long	0x45
	.uleb128 0x29
	.byte	0x8
	.long	0x9b1
	.uleb128 0x25
	.byte	0x8
	.long	0x8e5
	.uleb128 0x29
	.byte	0x8
	.long	0x9bb
	.uleb128 0x29
	.byte	0x8
	.long	0x93e
	.uleb128 0x25
	.byte	0x8
	.long	0x943
	.uleb128 0x2a
	.long	.LASF146
	.byte	0x7
	.byte	0
	.long	.LASF157
	.long	0xa1c
	.uleb128 0x12
	.long	0xa1c
	.byte	0
	.uleb128 0x2b
	.byte	0x8
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
	.uleb128 0xe
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x4c
	.uleb128 0xb
	.uleb128 0x4d
	.uleb128 0x18
	.uleb128 0x1d
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x16
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
	.uleb128 0x23
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL4
	.value	0x4
	.byte	0x91
	.sleb128 -784
	.byte	0x9f
	.quad	.LVL4
	.quad	.LVL5-1
	.value	0x1
	.byte	0x59
	.quad	.LVL5-1
	.quad	.LFE0
	.value	0x4
	.byte	0x91
	.sleb128 -784
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2
	.quad	.LBE2
	.quad	.LBB6
	.quad	.LBE6
	.quad	.LBB7
	.quad	.LBE7
	.quad	0
	.quad	0
	.quad	.LFB0
	.quad	.LFE0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"JoyButton"
.LASF104:
	.string	"Home"
.LASF135:
	.string	"AxisPOV"
.LASF67:
	.string	"Height"
.LASF145:
	.string	"string"
.LASF125:
	.string	"Middle"
.LASF155:
	.string	"_ZNSsD1Ev"
.LASF140:
	.string	"float"
.LASF79:
	.string	"LControl"
.LASF73:
	.string	"Num5"
.LASF57:
	.string	"Button"
.LASF11:
	.string	"_ZN2sf6Window7DisplayEv"
.LASF46:
	.string	"JoyMove"
.LASF85:
	.string	"RAlt"
.LASF144:
	.string	"Uint32"
.LASF21:
	.string	"StencilBits"
.LASF55:
	.string	"MouseMoveEvent"
.LASF92:
	.string	"Period"
.LASF44:
	.string	"MouseButton"
.LASF91:
	.string	"Comma"
.LASF65:
	.string	"SizeEvent"
.LASF68:
	.string	"Num0"
.LASF69:
	.string	"Num1"
.LASF70:
	.string	"Num2"
.LASF71:
	.string	"Num3"
.LASF72:
	.string	"Num4"
.LASF17:
	.string	"_ZNK2sf6Window8IsOpenedEv"
.LASF74:
	.string	"Num6"
.LASF75:
	.string	"Num7"
.LASF76:
	.string	"Num8"
.LASF77:
	.string	"Num9"
.LASF97:
	.string	"Equal"
.LASF51:
	.string	"Control"
.LASF95:
	.string	"BackSlash"
.LASF109:
	.string	"Divide"
.LASF19:
	.string	"__comp_dtor "
.LASF138:
	.string	"_ZN2sf9VideoModeC1Ejjj"
.LASF9:
	.string	"Display"
.LASF113:
	.string	"Numpad0"
.LASF152:
	.string	"EventType"
.LASF150:
	.string	"this"
.LASF115:
	.string	"Numpad2"
.LASF136:
	.string	"AxisCount"
.LASF117:
	.string	"Numpad4"
.LASF7:
	.string	"Event"
.LASF120:
	.string	"Numpad7"
.LASF146:
	.string	"__builtin_unwind_resume"
.LASF6:
	.string	"Depth"
.LASF41:
	.string	"Type"
.LASF98:
	.string	"Dash"
.LASF1:
	.string	"unsigned int"
.LASF61:
	.string	"JoystickId"
.LASF10:
	.string	"_ZN2sf6Window5CloseEv"
.LASF82:
	.string	"LSystem"
.LASF141:
	.string	"long unsigned int"
.LASF103:
	.string	"PageDown"
.LASF139:
	.string	"BitsPerPixel"
.LASF83:
	.string	"RControl"
.LASF50:
	.string	"Code"
.LASF105:
	.string	"Insert"
.LASF60:
	.string	"JoyMoveEvent"
.LASF133:
	.string	"AxisU"
.LASF134:
	.string	"AxisV"
.LASF129:
	.string	"AxisX"
.LASF130:
	.string	"AxisY"
.LASF131:
	.string	"AxisZ"
.LASF107:
	.string	"Subtract"
.LASF56:
	.string	"MouseButtonEvent"
.LASF0:
	.string	"bool"
.LASF86:
	.string	"RSystem"
.LASF87:
	.string	"Menu"
.LASF102:
	.string	"PageUp"
.LASF54:
	.string	"Unicode"
.LASF128:
	.string	"ButtonCount"
.LASF37:
	.string	"JoyButtonPressed"
.LASF31:
	.string	"MouseWheelMoved"
.LASF13:
	.string	"_ZN2sf6WindowC1ENS_9VideoModeERKSsmRKNS_14WindowSettingsE"
.LASF110:
	.string	"Left"
.LASF2:
	.string	"sizetype"
.LASF142:
	.string	"Window"
.LASF96:
	.string	"Tilde"
.LASF40:
	.string	"Count"
.LASF94:
	.string	"Slash"
.LASF106:
	.string	"Delete"
.LASF22:
	.string	"AntialiasingLevel"
.LASF53:
	.string	"TextEvent"
.LASF90:
	.string	"SemiColon"
.LASF32:
	.string	"MouseButtonPressed"
.LASF148:
	.string	"Mandelbrot.ltrans0.o"
.LASF89:
	.string	"RBracket"
.LASF12:
	.string	"__comp_ctor "
.LASF35:
	.string	"MouseEntered"
.LASF48:
	.string	"Size"
.LASF149:
	.string	"/home/romain/Dropbox/Perso/Mandelbrot_test/build/Mandelbrot-0.1"
.LASF14:
	.string	"GetEvent"
.LASF29:
	.string	"KeyPressed"
.LASF16:
	.string	"_ZN2sf6Window8GetEventERNS_5EventE"
.LASF62:
	.string	"Axis"
.LASF25:
	.string	"Resized"
.LASF143:
	.string	"basic_string"
.LASF147:
	.string	"GNU GIMPLE 4.7.2 20121109 (Red Hat 4.7.2-8) -mtune=generic -march=x86-64 -mtune=generic -march=x86-64 -g -Ofast -pedantic -fexceptions -fpic -fno-common -fltrans"
.LASF34:
	.string	"MouseMoved"
.LASF88:
	.string	"LBracket"
.LASF84:
	.string	"RShift"
.LASF153:
	.string	"._85"
.LASF111:
	.string	"Right"
.LASF23:
	.string	"WindowSettings"
.LASF26:
	.string	"LostFocus"
.LASF100:
	.string	"Return"
.LASF126:
	.string	"XButton1"
.LASF127:
	.string	"XButton2"
.LASF137:
	.string	"VideoMode"
.LASF64:
	.string	"JoyButtonEvent"
.LASF3:
	.string	"char"
.LASF132:
	.string	"AxisR"
.LASF15:
	.string	"IsOpened"
.LASF36:
	.string	"MouseLeft"
.LASF81:
	.string	"LAlt"
.LASF112:
	.string	"Down"
.LASF124:
	.string	"Mouse"
.LASF63:
	.string	"Position"
.LASF154:
	.string	"_ZNSsC1EPKcRKSaIcE"
.LASF33:
	.string	"MouseButtonReleased"
.LASF123:
	.string	"Pause"
.LASF20:
	.string	"DepthBits"
.LASF114:
	.string	"Numpad1"
.LASF151:
	.string	"_ZN2sf6WindowD1Ev"
.LASF116:
	.string	"Numpad3"
.LASF30:
	.string	"KeyReleased"
.LASF118:
	.string	"Numpad5"
.LASF119:
	.string	"Numpad6"
.LASF52:
	.string	"Shift"
.LASF121:
	.string	"Numpad8"
.LASF122:
	.string	"Numpad9"
.LASF45:
	.string	"MouseWheel"
.LASF156:
	.string	"allocator"
.LASF38:
	.string	"JoyButtonReleased"
.LASF93:
	.string	"Quote"
.LASF5:
	.string	"Stencil"
.LASF28:
	.string	"TextEntered"
.LASF27:
	.string	"GainedFocus"
.LASF4:
	.string	"Antialiasing"
.LASF108:
	.string	"Multiply"
.LASF101:
	.string	"Back"
.LASF39:
	.string	"JoyMoved"
.LASF8:
	.string	"Close"
.LASF78:
	.string	"Escape"
.LASF43:
	.string	"MouseMove"
.LASF157:
	.string	"_Unwind_Resume"
.LASF49:
	.string	"KeyEvent"
.LASF66:
	.string	"Width"
.LASF24:
	.string	"Closed"
.LASF18:
	.string	"main"
.LASF99:
	.string	"Space"
.LASF58:
	.string	"MouseWheelEvent"
.LASF42:
	.string	"Text"
.LASF59:
	.string	"Delta"
.LASF80:
	.string	"LShift"
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 4.7.2 20121109 (Red Hat 4.7.2-8)"
	.section	.note.GNU-stack,"",@progbits
