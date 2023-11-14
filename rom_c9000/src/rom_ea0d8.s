	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_ea0d8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1ef0
	ldr	r1, [r5]
	sub	sp, #0xb8
	str	r1, [sp, #0x68]
	sub	r3, r5, #4
	ldr	r3, [r3]
	str	r3, [sp, #0x64]
	ldr	r2, [r5, #0x10]
	str	r2, [sp, #0x60]
	ldr	r3, [r5, #4]
	str	r3, [sp, #0x50]
	mov	r3, r5
	ldr	r4, [sp, #0x64]
	ldr	r1, =0x7828
	sub	r3, #0x70
	ldr	r3, [r3]
	add	r6, r4, r1
	str	r3, [sp, #0x4c]
	str	r0, [r6]
	mov	r0, #0x80
	lsl	r0, #6
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lea150	@ 0x100
	mov	r8, r2
	mov	r4, r8
	strh	r3, [r4]
	bl	Func_c9048
	ldr	r2, .Lea154	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	ldr	r5, [r5, #0x18]
	mov	r0, #0xef
	str	r5, [sp, #0x58]
	ldr	r5, [sp, #0x64]
	lsl	r0, #7
	add	r3, r5, r0
	mov	r1, #0x90
	mov	r5, #0
	str	r5, [r3]
	b	.Lea164

	.align	2, 0
.Lea150:
	.word	0x100
.Lea154:
	.word	0
	.pool

.Lea164:
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r1, #0
	mov	r0, #0
	bl	Func_cd104
	ldr	r0, [r6]
	bl	Func_d6750
	mov	r1, #0xbf
	lsl	r1, #1
	mov	r0, #0x10
	mov	r2, #1
	bl	Func_dbb24
	ldr	r2, =iwram_1ce0
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0
	ldr	r1, =0x3b
	mov	r0, #1
	bl	_Func_c08ec
	ldr	r1, [sp, #0x60]
	mov	r3, #1
	str	r3, [r1, #0x10]
	ldr	r3, =iwram_1ad0
	mov	r0, #0
	strh	r5, [r3, #4]
	mov	r1, #1
	bl	Func_cd104
	ldr	r3, .Lea1e4	@ 0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Lea1e8	@ 0x80
	mov	r2, r8
	strh	r3, [r2]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lea1ec	@ 0x1010
	strh	r3, [r2]
	ldr	r3, .Lea1f0	@ 0x3f44
	sub	r2, #2
	strh	r3, [r2]
	ldr	r3, =0xffc00000
	ldr	r5, =0xffff
	mov	r4, #0x80
	str	r3, [sp, #0x48]
	ldr	r1, [sp, #0x64]
	lsl	r4, #12
	mov	r6, #0
	ldr	r0, =0xbb
	mov	r2, #1
	mov	r3, #1
	str	r4, [sp, #0x44]
	str	r5, [sp, #0x40]
	str	r6, [sp, #0x3c]
	b	.Lea214

	.align	2, 0
.Lea1e4:
	.word	0x7741
.Lea1e8:
	.word	0x80
.Lea1ec:
	.word	0x1010
.Lea1f0:
	.word	0x3f44
	.pool

.Lea214:
	bl	Func_e0524
	mov	r3, #0xc0
	ldr	r2, [sp, #0x64]
	lsl	r3, #3
	add	r1, r2, r3
	ldr	r0, =0x67
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r5, =0x95c
	ldr	r4, [sp, #0x64]
	ldr	r0, =0xce
	add	r1, r4, r5
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r6, =0x302
	ldr	r0, =0x73
	ldr	r1, [sp, #0x50]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	mov	r7, #0
	mov	r5, #0
	mov	r4, #0x40
.Lea24e:
	ldr	r2, [sp, #0x64]
	add	r3, r5, r2
	ldr	r2, =0x2710
	ldr	r1, [sp, #0x50]
	mov	r0, #0
	mov	r12, r4
	add	r3, r2
.Lea25c:
	ldrb	r2, [r1]
	add	r1, #1
	cmp	r2, r12
	ble	.Lea266
	mov	r2, r12
.Lea266:
	cmp	r2, #0
	bge	.Lea26c
	mov	r2, #0
.Lea26c:
	add	r0, #1
	strb	r2, [r3]
	add	r3, #1
	cmp	r0, r6
	bne	.Lea25c
	add	r7, #1
	add	r5, r6
	sub	r4, #7
	cmp	r7, #8
	bne	.Lea24e
	ldr	r0, =0x64
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	ldr	r6, =0xffff
	ldr	r5, =ewram_10000
	mov	r7, #0
.Lea29a:
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x48
	str	r3, [r5]
	bl	Func_4458
	and	r0, r6
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	str	r0, [r5, #0x10]
	bl	Func_4458
	add	r7, #1
	and	r0, r6
	str	r0, [r5, #0x10]
	add	r5, #0x1c
	cmp	r7, #0x80
	bne	.Lea29a
	mov	r3, #0xff
	mov	r4, #0
	ldr	r6, =ewram_10e00
	mov	r7, #0
	mov	r10, r3
	mov	r8, r4
.Lea2d2:
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r10
	mul	r3, r0
	asr	r3, #2
	str	r3, [r6]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r10
	mul	r3, r0
	asr	r3, #2
	str	r3, [r6, #8]
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	mov	r0, r8
	lsl	r3, #16
	add	r7, #1
	str	r3, [r6, #4]
	str	r0, [r6, #0xc]
	str	r0, [r6, #0x10]
	str	r5, [r6, #0x18]
	add	r6, #0x1c
	cmp	r7, #0x80
	bne	.Lea2d2
	ldr	r1, [sp, #0x64]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r4, =0x7784
	add	r2, r1, r3
	mov	r3, #2
	str	r3, [r2]
	add	r2, r1, r4
	mov	r3, #0x32
	str	r3, [r2]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lea368	@ 0x784
	mov	r6, sp
	strh	r3, [r2]
	mov	r0, sp
	mov	r1, sp
	ldr	r2, =iwram_1e50
	ldr	r3, =0xfffffa70
	mov	r5, #0
	add	r6, #0xac
	add	r0, #0x90
	add	r1, #0x74
	str	r5, [sp, #0x54]
	str	r6, [sp, #0x10]
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x38]
	str	r3, [sp, #0xc]
.Lea34e:
	ldr	r4, [sp, #0x54]
	cmp	r4, #0x8f
	bne	.Lea3b4
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x68]
	lsl	r1, #7
	ldr	r2, =0x2a2a2a2a
	bl	_call_via_r3
	mov	r0, #0x91
	b	.Lea3b0

	.align	2, 0
.Lea368:
	.word	0x784
	.pool

.Lea3b0:
	bl	_Func_f9080
.Lea3b4:
	ldr	r5, [sp, #0x54]
	cmp	r5, #0x50
	bne	.Lea3c0
	mov	r0, #0x8e
	bl	_Func_f9080
.Lea3c0:
	ldr	r6, [sp, #0x54]
	cmp	r6, #0
	bge	.Lea496
	bl	Func_49ac
	ldr	r0, [sp, #0x4c]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	add	r0, sp, #0xa0
	mov	r8, r0
	ldr	r6, =ewram_10e00
	mov	r7, #0
	mov	r10, r8
.Lea3de:
	mov	r0, r6
	mov	r1, #0x3c
	ldr	r2, =0xfffffc00
	bl	Func_e38b8
	mov	r1, r10
	mov	r0, r6
	bl	Func_e3944
	mov	r1, r10
	ldr	r3, [r1]
	asr	r3, #1
	str	r3, [r1]
	ldr	r3, [r1, #4]
	ldr	r0, [r1, #8]
	sub	r3, #0x78
	str	r3, [r1, #4]
	cmp	r0, #0x63
	bgt	.Lea40c
	mov	r3, #0x64
	mov	r2, r8
	str	r3, [r2, #8]
	mov	r0, #0x64
.Lea40c:
	mov	r3, #0xe1
	lsl	r3, #2
	cmp	r0, r3
	ble	.Lea41a
	mov	r4, r8
	str	r3, [r4, #8]
	mov	r0, r3
.Lea41a:
	mov	r5, r0
	sub	r5, #0x64
	mov	r0, r8
	str	r5, [r0, #8]
	mov	r1, #0x64
	mov	r0, r5
	bl	Func_af0_from_thumb
	ldr	r1, [sp, #0x40]
	add	r4, r0, #1
	cmp	r1, r5
	ble	.Lea434
	str	r5, [sp, #0x40]
.Lea434:
	ldr	r2, [sp, #0x3c]
	cmp	r2, r5
	bge	.Lea43c
	str	r5, [sp, #0x3c]
.Lea43c:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x50]
	mov	r5, r8
	add	r1, r3, r1
	lsr	r3, r4, #31
	ldr	r2, [r5]
	add	r3, r4, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r4, [sp]
	sub	r3, r4
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x58]
	ldr	r0, [sp, #0x68]
	bl	_call_via_r4
	ldr	r5, [sp, #0x54]
	cmp	r5, #0x40
	bne	.Lea48e
	ldr	r0, [r6, #0x18]
	bl	Func_2322
	lsl	r2, r0, #8
	ldr	r3, [r6, #0xc]
	sub	r2, r0
	asr	r2, #3
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r0, [r6, #0x18]
	bl	Func_231c
	lsl	r2, r0, #8
	ldr	r3, [r6, #0x10]
	sub	r2, r0
	asr	r2, #3
	add	r3, r2
	str	r3, [r6, #0x10]
.Lea48e:
	add	r7, #1
	add	r6, #0x1c
	cmp	r7, #0x80
	bne	.Lea3de
.Lea496:
	ldr	r6, [sp, #0x54]
	cmp	r6, #0x48
	bne	.Lea4ae
	ldr	r0, [sp, #0x64]
	ldr	r1, =0x77b4
	mov	r2, #0x18
	add	r3, r0, r1
	str	r2, [r3]
	ldr	r3, =0x77b8
	add	r2, r0, r3
	mov	r3, #0
	str	r3, [r2]
.Lea4ae:
	ldr	r4, [sp, #0x10]
	mov	r3, #0
	str	r3, [r4, #8]
	str	r3, [r4, #4]
	ldr	r6, =ewram_10000
	mov	r7, #0
.Lea4ba:
	mov	r3, r7
	cmp	r7, #0
	bge	.Lea4c2
	add	r3, r7, #3
.Lea4c2:
	asr	r3, #2
	ldr	r5, [sp, #0x54]
	add	r3, #0x50
	cmp	r5, r3
	ble	.Lea55c
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.Lea55c
	bl	Func_49ac
	ldr	r0, [r6, #0x10]
	bl	Func_4c6c
	ldr	r0, [r6, #0xc]
	bl	Func_4bd4
	ldr	r0, [r6, #0x10]
	lsl	r3, r5, #9
	add	r0, r3
	bl	Func_4c1c
	ldr	r3, [r6]
	ldr	r0, [sp, #0x10]
	str	r3, [r0]
	ldr	r3, [r6]
	sub	r3, #2
	str	r3, [r6]
	cmp	r3, #0
	bge	.Lea500
	mov	r3, #0
	str	r3, [r6]
.Lea500:
	add	r5, sp, #0xa0
	ldr	r0, [sp, #0x10]
	mov	r1, r5
	bl	Func_e3944
	mov	r3, #0x3c
	ldr	r0, [r5, #8]
	neg	r3, r3
	cmp	r0, r3
	bge	.Lea518
	str	r3, [r5, #8]
	mov	r0, r3
.Lea518:
	cmp	r0, #0x3c
	ble	.Lea522
	mov	r3, #0x3c
	str	r3, [r5, #8]
	mov	r0, #0x3c
.Lea522:
	add	r0, #0x3c
	str	r0, [r5, #8]
	mov	r1, #0x14
	bl	Func_af0_from_thumb
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	add	r0, #2
	add	r2, #0x3c
	add	r3, #0x50
	str	r2, [r5]
	str	r3, [r5, #4]
	ldr	r4, =Data_ede48
	lsl	r5, r0, #1
	sub	r1, r5, #2
	ldrh	r1, [r4, r1]
	ldr	r4, [sp, #0x50]
	add	r1, r4, r1
	lsr	r4, r0, #31
	add	r4, r0, r4
	asr	r4, #1
	sub	r3, r0
	str	r0, [sp]
	str	r5, [sp, #4]
	sub	r2, r4
	ldr	r0, [sp, #0x68]
	ldr	r5, [sp, #0x58]
	bl	_call_via_r5
.Lea55c:
	add	r7, #1
	add	r6, #0x1c
	cmp	r7, #0x40
	bne	.Lea4ba
	ldr	r3, =Data_edad0
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	ldr	r6, [sp, #0x14]
	str	r3, [sp, #0x74]
	str	r4, [sp, #0x78]
	mov	r3, #0
	str	r3, [r6, #0xc]
	str	r3, [r6, #4]
	ldr	r0, [sp, #0x64]
	ldr	r1, =0x77d8
	mov	r7, #0
	add	r5, r0, r1
.Lea57e:
	mov	r3, r7
	cmp	r7, #0
	bge	.Lea586
	add	r3, r7, #3
.Lea586:
	asr	r3, #2
	lsl	r2, r3, #2
	sub	r2, r7, r2
	mov	r4, #0x98
	ldr	r6, [sp, #0x14]
	lsl	r4, #15
	lsl	r2, #21
	add	r2, r4
	str	r2, [r6]
	ldr	r0, [sp, #0x48]
	lsl	r3, #21
	add	r3, r0
	str	r3, [r6, #8]
	ldmia	r5!, {r0}
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #0x18]
	mov	r3, #0
	add	r7, #1
	bl	_Func_b168
	cmp	r7, #0x10
	bne	.Lea57e
	ldr	r1, [sp, #0x48]
	ldr	r2, [sp, #0x44]
	ldr	r3, [sp, #0x54]
	add	r1, r2
	str	r1, [sp, #0x48]
	cmp	r3, #0x2f
	bgt	.Lea5c6
	ldr	r4, =0xffffc000
	add	r2, r4
	str	r2, [sp, #0x44]
.Lea5c6:
	ldr	r5, [sp, #0x54]
	cmp	r5, #0x20
	ble	.Lea5de
	ldr	r6, [sp, #0x44]
	lsl	r3, r6, #4
	sub	r3, r6
	lsl	r3, #2
	cmp	r3, #0
	bge	.Lea5da
	add	r3, #0x3f
.Lea5da:
	asr	r3, #6
	str	r3, [sp, #0x44]
.Lea5de:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0x90
	bne	.Lea5e8
	ldr	r1, =0xfff80000
	str	r1, [sp, #0x44]
.Lea5e8:
	ldr	r2, [sp, #0x54]
	cmp	r2, #0x92
	bne	.Lea5f4
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [sp, #0x44]
.Lea5f4:
	ldr	r4, [sp, #0x54]
	cmp	r4, #0x48
	bne	.Lea612
	ldr	r6, [sp, #0x64]
	ldr	r0, =0x77d8
	mov	r7, #0
	add	r5, r6, r0
.Lea602:
	mov	r1, r7
	ldmia	r5!, {r0}
	add	r1, #0x10
	add	r7, #1
	bl	_Func_ba30
	cmp	r7, #0x10
	bne	.Lea602
.Lea612:
	ldr	r1, [sp, #0x54]
	cmp	r1, #0x4c
	bne	.Lea630
	ldr	r2, [sp, #0x64]
	ldr	r3, =0x77d8
	mov	r7, #0
	add	r5, r2, r3
.Lea620:
	mov	r1, r7
	ldmia	r5!, {r0}
	add	r1, #0x20
	add	r7, #1
	bl	_Func_ba30
	cmp	r7, #0x10
	bne	.Lea620
.Lea630:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x74
	cmp	r3, #0x1b
	bls	.Lea63a
	b	.Lea7ce
.Lea63a:
	cmp	r3, #0
	bge	.Lea642
	ldr	r3, [sp, #0x54]
	sub	r3, #0x71
.Lea642:
	asr	r1, r3, #2
	cmp	r1, #6
	ble	.Lea64a
	mov	r1, #6
.Lea64a:
	ldr	r3, =.Leef28
	ldrb	r3, [r3, r1]
	ldr	r2, =.Leef30
	mov	r10, r3
	lsl	r3, r1, #1
	ldrh	r6, [r2, r3]
	mov	r4, #0xc0
	lsl	r4, #3
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r5, [sp]
	add	r6, r4
	bl	Func_ed408
	mov	r1, #0x3c
	mov	r9, r1
	ldr	r0, [sp, #0x64]
	mov	r2, r9
	mov	r3, r10
	sub	r2, r3
	mov	r4, r10
	lsl	r3, #1
	str	r3, [sp, #4]
	str	r4, [sp]
	add	r6, r0, r6
	mov	r5, #0x50
	ldr	r0, =iwram_1f0c
	sub	r5, r3
	mov	r8, r3
	ldr	r4, [r0]
	mov	r3, r5
	ldr	r0, [sp, #0x68]
	mov	r1, r6
	mov	r9, r2
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r1, #2
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	Func_ed408
	mov	r3, r8
	mov	r2, r10
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r0, =iwram_1f0c
	mov	r3, r5
	ldr	r4, [r0]
	mov	r1, r6
	ldr	r0, [sp, #0x68]
	mov	r2, #0x3c
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r1, #2
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #0xb
	mov	r0, #0x2f
	bl	Func_ed408
	mov	r3, r8
	mov	r2, r10
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r5, =iwram_1f0c
	ldr	r0, [sp, #0x68]
	ldr	r4, [r5]
	mov	r1, r6
	mov	r2, r9
	mov	r3, #0x50
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #2
	str	r0, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	mov	r0, #0x2f
	bl	Func_ed408
	mov	r2, r8
	mov	r1, r10
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x50
	ldr	r4, [r5]
	ldr	r0, [sp, #0x68]
	mov	r1, r6
	mov	r2, #0x3c
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	ldr	r3, =.Leef4a
	mov	r7, #0
	mov	r8, r3
.Lea72c:
	mov	r4, r7
	mov	r5, #3
	and	r4, r5
	str	r4, [sp, #8]
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	mov	r0, r6
	bl	Func_2322
	ldr	r4, [sp, #8]
	mov	r5, r0
	mov	r0, r8
	ldrb	r3, [r0, r4]
	lsl	r5, #4
	lsr	r3, #1
	mov	r0, r6
	asr	r5, #16
	sub	r5, r3
	b	.Lea794

	.pool_aligned

.Lea794:
	bl	Func_231c
	ldr	r2, =.Leef50
	ldr	r4, [sp, #8]
	mov	r3, r0
	ldrb	r0, [r2, r4]
	lsl	r3, #4
	lsr	r2, r0, #1
	ldr	r1, =.Leef3e
	asr	r3, #16
	sub	r3, r2
	lsl	r2, r4, #1
	ldrh	r1, [r1, r2]
	ldr	r2, [sp, #0x64]
	mov	r6, r8
	add	r1, r2, r1
	ldrb	r2, [r6, r4]
	add	r5, #0x3c
	str	r2, [sp]
	str	r0, [sp, #4]
	add	r3, #0x50
	ldr	r0, [sp, #0x68]
	mov	r2, r5
	ldr	r4, [sp, #0x58]
	add	r7, #1
	bl	_call_via_r4
	cmp	r7, #6
	bne	.Lea72c
.Lea7ce:
	ldr	r5, [sp, #0x54]
	cmp	r5, #0x8f
	ble	.Lea8c2
	ldr	r0, =0xfffff720
	lsl	r6, r5, #4
	mov	r1, #3
	str	r1, [sp]
	add	r6, r0
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r7, [sp, #0x38]
	mov	r5, #0x40
	mov	r2, #0x18
	str	r2, [sp]
	str	r5, [sp, #4]
	add	r7, #0xbc
	ldr	r1, [sp, #0x64]
	ldr	r0, [sp, #0x68]
	ldr	r4, [r7]
	mov	r3, r6
	mov	r2, #0x24
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	Func_ed408
	mov	r4, #0x18
	str	r5, [sp, #4]
	str	r4, [sp]
	mov	r3, r6
	ldr	r1, [sp, #0x64]
	mov	r2, #0x3c
	ldr	r4, [r7]
	ldr	r0, [sp, #0x68]
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	ldr	r3, [sp, #0x54]
	sub	r3, #0x90
	lsr	r2, r3, #31
	ldr	r6, [sp, #0x64]
	ldr	r0, =0x7784
	add	r3, r2
	ldr	r5, [sp, #0xc]
	asr	r1, r3, #1
	add	r2, r6, r0
	mov	r3, #0x4b
	mov	r8, r5
	str	r3, [r2]
	cmp	r1, #6
	bgt	.Lea8c2
	lsl	r5, r1, #1
	add	r5, r1
	ldr	r3, =Data_ede48
	lsl	r5, #7
	ldrh	r3, [r3, #0xe]
	add	r5, r1
	lsl	r5, #1
	ldr	r1, =0x2710
	add	r5, r3
	mov	r2, #2
	add	r5, r1
	str	r2, [sp]
	mov	r3, #3
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	bl	Func_ed408
	ldr	r7, [r7]
	add	r6, r5
	mov	r3, #4
	mov	r9, r7
	mov	r10, r6
	mov	r7, #0
	mov	r11, r3
.Lea882:
	lsl	r6, r7, #9
	mov	r0, r6
	bl	Func_2322
	mov	r5, r8
	mul	r5, r0
	mov	r4, r11
	mov	r0, r6
	asr	r5, #16
	sub	r5, r4
	bl	Func_231c
	mov	r3, r8
	mul	r3, r0
	add	r5, #0x3c
	mov	r0, #0x10
	asr	r3, #17
	mov	r6, #8
	str	r0, [sp, #4]
	add	r3, #0x48
	str	r6, [sp]
	ldr	r0, [sp, #0x68]
	mov	r1, r10
	mov	r2, r5
	add	r7, #1
	bl	_call_via_r9
	cmp	r7, #0x80
	bne	.Lea882
	mov	r0, #0x2f
	bl	Func_2dd8
.Lea8c2:
	ldr	r1, [sp, #0x64]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r4, [sp, #0xc]
	ldr	r5, [sp, #0x54]
	add	r4, #0xa
	add	r5, #1
	str	r4, [sp, #0xc]
	str	r5, [sp, #0x54]
	cmp	r5, #0xa0
	beq	.Lea8f6
	cmp	r5, #4
	bgt	.Lea8e8
	b	.Lea34e
.Lea8e8:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r6, #3
	and	r3, r6
	cmp	r3, #0
	bne	.Lea8f6
	b	.Lea34e
.Lea8f6:
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x68]
	mov	r2, #0
	bl	_call_via_r3
	ldr	r1, =0x77d8
	ldr	r0, [sp, #0x64]
	mov	r7, #0
	add	r5, r0, r1
.Lea90c:
	ldmia	r5!, {r0}
	add	r7, #1
	bl	_Func_bdd4
	cmp	r7, #0x10
	bne	.Lea90c
	mov	r2, #0xd
	neg	r2, r2
	ldr	r6, =0x77d8
	mov	r7, #0
	mov	r8, r2
.Lea922:
	mov	r0, #0xc3
	lsl	r0, #1
	bl	_Func_bc70
	ldr	r3, [sp, #0x64]
	mov	r5, r0
	str	r5, [r6, r3]
	cmp	r5, #0
	beq	.Lea958
	mov	r2, r5
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #3
	mov	r0, r7
	bl	Func_b1c_from_thumb
	mov	r1, r0
	mov	r0, r5
	bl	_Func_ba30
	ldr	r4, [sp, #0x64]
	ldr	r2, [r6, r4]
	ldrb	r3, [r2, #9]
	mov	r5, r8
	and	r3, r5
	strb	r3, [r2, #9]
.Lea958:
	add	r7, #1
	add	r6, #4
	cmp	r7, #0x10
	bne	.Lea922
	mov	r0, #0x2e
	bl	Func_2dd8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r6, [sp, #0x64]
	mov	r2, #0x80
	lsl	r2, #7
	add	r1, r6, r2
	str	r3, [sp, #0x58]
	ldr	r0, =0x64
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r0, =0x302
	ldr	r1, [sp, #0x50]
	mov	r7, #0
	mov	r4, #1
.Lea998:
	ldrb	r3, [r1]
	mov	r2, r3
	cmp	r2, #0x20
	bls	.Lea9dc
	add	r3, #0xe0
	strb	r3, [r1]
	b	.Lea9e2

	.pool_aligned

.Lea9dc:
	cmp	r2, #0
	beq	.Lea9e2
	strb	r4, [r1]
.Lea9e2:
	add	r7, #1
	add	r1, #1
	cmp	r7, r0
	bne	.Lea998
	ldr	r4, [sp, #0x64]
	ldr	r5, =0x77b4
	ldr	r6, =0x77b8
	add	r3, r4, r5
	mov	r5, #0
	str	r5, [r3]
	add	r3, r4, r6
	str	r5, [r3]
	ldr	r1, =0x3e
	mov	r0, #1
	mov	r2, #0
	bl	_Func_c08ec
	ldr	r2, =REG_BG2PA
	ldr	r3, .Leaa40	@ 0x100
	strh	r3, [r2]
	ldr	r3, =0xffffc400
	add	r2, #8
	str	r3, [r2]
	ldr	r3, .Leaa44	@ 0x784
	add	r4, sp, #0x8c
	sub	r2, #0x1c
	strh	r3, [r2]
	str	r5, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r1, [sp, #0x68]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x3c
	ldr	r6, [sp, #0x64]
	str	r0, [sp, #0x34]
	mov	r1, #0x2c
	mov	r0, #0xef
	str	r1, [sp, #0x30]
	mov	r3, #0
	lsl	r0, #7
	ldr	r1, =0x7784
	str	r3, [sp, #0x20]
	str	r3, [sp, #0x28]
	b	.Leaa68

	.align	2, 0
.Leaa40:
	.word	0x100
.Leaa44:
	.word	0x784
	.pool

.Leaa68:
	mov	r5, #2
	add	r3, r6, r0
	mov	r2, #6
	str	r2, [sp, #0x2c]
	str	r5, [sp, #0x24]
	add	r2, r6, r1
	str	r5, [r3]
	mov	r3, #0x4b
	str	r3, [r2]
	ldr	r2, [sp, #0x20]
	str	r2, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r1, [sp, #0x64]
	ldr	r2, =0x85000e10
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0
	str	r3, [sp, #0x54]
.Leaa8e:
	ldr	r4, [sp, #0x54]
	cmp	r4, #0x42
	bne	.Leaaa0
	mov	r0, #0x91
	bl	_Func_f9080
	mov	r0, #0x8d
	bl	_Func_f9080
.Leaaa0:
	ldr	r5, [sp, #0x54]
	cmp	r5, #0x9b
	bne	.Leaaac
	mov	r0, #0xa2
	bl	_Func_f9080
.Leaaac:
	ldr	r6, [sp, #0x54]
	cmp	r6, #0xd9
	bne	.Leaab8
	mov	r0, #0x9c
	bl	_Func_f9080
.Leaab8:
	mov	r1, #0x8c
	ldr	r0, [sp, #0x54]
	lsl	r1, #1
	cmp	r0, r1
	bne	.Leaac8
	mov	r0, #0x9d
	bl	_Func_f9080
.Leaac8:
	mov	r3, #0x96
	ldr	r2, [sp, #0x54]
	lsl	r3, #1
	cmp	r2, r3
	bne	.Leaad8
	mov	r0, #0x91
	bl	_Func_bd7dc
.Leaad8:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Leabaa
	ldr	r3, [sp, #0x54]
	sub	r3, #5
	cmp	r3, #0x90
	bhi	.Leab6c
	ldr	r1, =ewram_2090
	mov	r4, #0x96
	str	r4, [sp, #0x54]
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r0, r3
	mov	r6, #0x82
	ldr	r2, =REG_IME
	lsl	r6, #2
	strh	r6, [r2]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Leab22
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	add	r3, #4
	strh	r2, [r1]
	mov	r2, #0x80
	stmia	r3!, {r2}
	ldr	r2, =REG_BG2PA
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Leab22:
	ldr	r3, =REG_IME
	strh	r0, [r3]
	ldrh	r3, [r3]
	mov	r0, r3
	mov	r4, #0x82
	ldr	r5, =REG_IME
	lsl	r4, #2
	strh	r4, [r5]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Leab54
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r1
	add	r3, #4
	add	r2, #1
	mov	r6, #0
	stmia	r3!, {r6}
	strh	r2, [r1]
	ldr	r2, =REG_BG2X
	stmia	r3!, {r2}
	mov	r2, #0xc0
	lsl	r2, #10
	str	r2, [r3]
.Leab54:
	ldr	r1, =REG_IME
	strh	r0, [r1]
	ldr	r0, =0x70
	mov	r3, #0x80
	ldr	r2, [sp, #0x64]
	lsl	r3, #7
	add	r1, r2, r3
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	b	.Leabaa
.Leab6c:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x9b
	cmp	r3, #0x3a
	bhi	.Leab9c
	mov	r4, #0xd6
	str	r4, [sp, #0x54]
	b	.Leabaa

	.pool_aligned

.Leab9c:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xdb
	cmp	r3, #0x3c
	bhi	.Leabaa
	mov	r5, #0x8c
	lsl	r5, #1
	str	r5, [sp, #0x54]
.Leabaa:
	ldr	r6, [sp, #0x54]
	cmp	r6, #0x40
	bne	.Leac4c
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r0, r3
	mov	r2, #0x82
	ldr	r3, =REG_IME
	lsl	r2, #2
	strh	r2, [r3]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Leabe2
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	add	r3, #4
	strh	r2, [r1]
	mov	r2, #0x80
	stmia	r3!, {r2}
	ldr	r2, =REG_BG2PA
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Leabe2:
	ldr	r4, =REG_IME
	strh	r0, [r4]
	ldrh	r3, [r4]
	mov	r0, r3
	mov	r5, #0x82
	ldr	r6, =REG_IME
	lsl	r5, #2
	strh	r5, [r6]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Leac14
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r1
	add	r2, #1
	add	r3, #4
	strh	r2, [r1]
	mov	r1, #0
	stmia	r3!, {r1}
	ldr	r2, =REG_BG2X
	stmia	r3!, {r2}
	mov	r2, #0xc0
	lsl	r2, #10
	str	r2, [r3]
.Leac14:
	ldr	r2, =REG_IME
	strh	r0, [r2]
	mov	r3, #0
	add	r4, sp, #0x8c
	str	r3, [sp, #0x8c]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x68]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, [sp, #0x64]
	mov	r6, #0x80
	lsl	r6, #7
	ldr	r0, =0x70
	add	r1, r5, r6
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r2, #0xc0
	lsl	r2, #7
	add	r1, r5, r2
	ldr	r0, =0x65
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
.Leac4c:
	ldr	r3, [sp, #0x54]
	cmp	r3, #0x42
	bne	.Leac66
	ldr	r2, =0x50000c0
	ldr	r1, .Leac80	@ 0x7fff
	mov	r7, #0
.Leac58:
	ldrh	r3, [r2]
	add	r7, #1
	eor	r3, r1
	strh	r3, [r2]
	add	r2, #2
	cmp	r7, #0x80
	bne	.Leac58
.Leac66:
	ldr	r4, [sp, #0x54]
	cmp	r4, #0x45
	bne	.Leacac
	ldr	r3, =0x3f3f3f3f
	add	r5, sp, #0x8c
	str	r3, [sp, #0x8c]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x68]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.Leacac

	.align	2, 0
.Leac80:
	.word	0x7fff
	.pool

.Leacac:
	ldr	r6, [sp, #0x54]
	cmp	r6, #0x46
	bne	.Leacbc
	mov	r0, #1
	ldr	r1, =0x3e
	mov	r2, #7
	bl	_Func_c0774
.Leacbc:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0x96
	bne	.Lead02
	mov	r3, #0
	mov	r1, #0x70
	mov	r2, #0x20
	mov	r4, #4
	mov	r5, #8
	add	r6, sp, #0x8c
	str	r1, [sp, #0x34]
	str	r2, [sp, #0x30]
	str	r3, [sp, #0x28]
	str	r3, [sp, #0x8c]
	str	r4, [sp, #0x24]
	str	r5, [sp, #0x2c]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r6
	ldr	r1, [sp, #0x64]
	ldr	r2, =0x85000e10
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x3f3f3f3f
	mov	r1, r6
	str	r3, [sp, #0x8c]
	mov	r0, r1
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x68]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	ldr	r1, =0x36
	mov	r2, #0
	bl	_Func_c08ec
.Lead02:
	ldr	r2, [sp, #0x54]
	cmp	r2, #0xd6
	bne	.Lead82
	mov	r3, #0
	add	r4, sp, #0x8c
	str	r3, [sp, #0x8c]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x64]
	ldr	r2, =0x85000e10
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x3f3f3f3f
	mov	r5, r4
	str	r3, [sp, #0x8c]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x68]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	ldr	r1, =0x3a
	mov	r2, #0
	bl	_Func_c08ec
	mov	r0, #0xe1
	ldr	r6, [sp, #0x64]
	lsl	r0, #7
	mov	r7, #0
	add	r5, r6, r0
.Lead40:
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	lsl	r3, #16
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x60
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x10
	lsl	r3, #15
	ldr	r2, [r5]
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	asr	r2, #7
	lsl	r3, #8
	sub	r3, r2
	str	r3, [r5, #8]
	add	r7, #1
	mov	r3, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x10
	bne	.Lead40
.Lead82:
	mov	r2, #0x8c
	ldr	r1, [sp, #0x54]
	lsl	r2, #1
	cmp	r1, r2
	bne	.Leae44
	bl	Func_d67dc
	mov	r3, #0
	add	r4, sp, #0x8c
	str	r3, [sp, #0x8c]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x64]
	ldr	r2, =0x85000e10
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x1010101
	mov	r5, r4
	str	r3, [sp, #0x8c]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x68]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, [sp, #0x60]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Leadcc	@ 0x1010
	mov	r6, #0
	strh	r3, [r2]
	str	r6, [r0, #0x10]
	ldr	r1, [sp, #0x64]
	mov	r2, #0xe1
	lsl	r2, #7
	mov	r7, #0
	add	r5, r1, r2
	b	.Leadf4

	.align	2, 0
.Leadcc:
	.word	0x1010
	.pool

.Leadf4:
	bl	Func_4458
	mov	r3, #0x3f
	mov	r4, #0x80
	lsl	r4, #1
	and	r3, r0
	add	r3, r4
	lsl	r3, #16
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x60
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x10
	lsl	r3, #15
	mov	r6, #0
	add	r7, #1
	str	r3, [r5, #0x10]
	str	r6, [r5, #8]
	add	r5, #0x1c
	cmp	r7, #0x10
	bne	.Leadf4
	ldr	r1, [sp, #0x64]
	mov	r2, #0xef
	mov	r0, #0x88
	lsl	r2, #7
	ldr	r4, =0x7784
	add	r3, r1, r2
	lsl	r0, #1
	str	r0, [sp, #0x20]
	str	r6, [r3]
	add	r3, r1, r4
	str	r6, [r3]
.Leae44:
	ldr	r5, [sp, #0x54]
	ldr	r6, =0x117
	cmp	r5, r6
	ble	.Leae9e
	ldr	r5, =0x5000002
	ldr	r6, .Leae7c	@ 0x1f
	mov	r7, #0
.Leae52:
	ldrh	r2, [r5]
	lsl	r3, r2, #16
	lsr	r0, r3, #26
	and	r0, r6
	lsr	r1, r3, #21
	mov	r4, #0x1f
	and	r1, r6
	and	r4, r2
	add	r0, #1
	add	r1, #1
	add	r4, #1
	cmp	r0, #0x1f
	ble	.Leae6e
	mov	r0, #0x1f
.Leae6e:
	cmp	r1, #0x1f
	ble	.Leae74
	mov	r1, #0x1f
.Leae74:
	cmp	r4, #0x1f
	ble	.Leae8c
	mov	r4, #0x1f
	b	.Leae8c

	.align	2, 0
.Leae7c:
	.word	0x1f
	.pool

.Leae8c:
	lsl	r3, r0, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r4
	add	r7, #1
	strh	r3, [r5]
	add	r5, #2
	cmp	r7, #0x3f
	bne	.Leae52
.Leae9e:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0xb6
	bne	.Leaeb6
	ldr	r3, =0x3f3f3f3f
	add	r1, sp, #0x8c
	str	r3, [sp, #0x8c]
	mov	r0, r1
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x68]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Leaeb6:
	ldr	r2, [sp, #0x54]
	cmp	r2, #0x3f
	bgt	.Leaf88
	ldr	r4, [sp, #0x54]
	mov	r3, #7
	ldr	r5, [sp, #0x64]
	mov	r6, #0x80
	sub	r2, #4
	lsl	r6, #7
	and	r3, r4
	mov	r8, r2
	add	r7, r5, r6
	cmp	r3, #3
	ble	.Leaed8
	ldr	r0, [sp, #0x64]
	ldr	r1, =0x4240
	add	r7, r0, r1
.Leaed8:
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	mov	r2, #0x18
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_1f0c
	mov	r6, r8
	sub	r6, #0x18
	ldr	r0, [sp, #0x68]
	ldr	r4, [r3]
	mov	r1, r7
	mov	r3, r6
	mov	r2, #0x24
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	mov	r4, #0x18
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, =iwram_1f0c
	mov	r3, r6
	ldr	r4, [r0]
	mov	r1, r7
	ldr	r0, [sp, #0x68]
	mov	r2, #0x3b
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	mov	r1, #0x18
	str	r1, [sp]
	str	r1, [sp, #4]
	ldr	r2, =iwram_1f0c
	add	r6, #0x17
	ldr	r4, [r2]
	ldr	r0, [sp, #0x68]
	mov	r1, r7
	mov	r2, #0x24
	mov	r3, r6
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	mov	r3, #0x18
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r5, =iwram_1f0c
	ldr	r0, [sp, #0x68]
	ldr	r4, [r5]
	mov	r1, r7
	mov	r2, #0x3b
	mov	r3, r6
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
.Leaf88:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x40
	cmp	r3, #1
	bhi	.Leafac
	mov	r3, #0x10
	ldr	r6, [sp, #0x64]
	mov	r2, #0xc0
	lsl	r2, #7
	str	r3, [sp]
	mov	r3, #0x11
	str	r3, [sp, #4]
	add	r1, r6, r2
	ldr	r0, [sp, #0x68]
	mov	r2, #0x34
	mov	r3, #0x33
	ldr	r4, [sp, #0x58]
	bl	_call_via_r4
.Leafac:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x42
	cmp	r3, #1
	bhi	.Leafce
	ldr	r2, =0x6110
	ldr	r6, [sp, #0x64]
	mov	r3, #0x29
	mov	r5, #0x18
	str	r3, [sp, #4]
	add	r1, r6, r2
	str	r5, [sp]
	ldr	r0, [sp, #0x68]
	mov	r2, #0x30
	mov	r3, #0x28
	ldr	r4, [sp, #0x58]
	bl	_call_via_r4
.Leafce:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x44
	cmp	r3, #7
	bhi	.Leb054
	ldr	r5, [sp, #0x54]
	mov	r6, #0x4c
	sub	r6, r5
	ldr	r0, [sp, #0x64]
	ldr	r1, =0x64e8
	lsr	r5, r6, #31
	add	r5, r6, r5
	mov	r2, #0x26
	add	r0, r1
	mov	r8, r2
	asr	r5, #1
	ldr	r2, [sp, #0x58]
	mov	r4, #0x31
	mov	r11, r0
	sub	r4, r5
	mov	r1, #0x2c
	mov	r3, r8
	mov	r0, #0x16
	sub	r3, r6
	str	r0, [sp]
	mov	r10, r1
	str	r1, [sp, #4]
	mov	r9, r2
	str	r4, [sp, #8]
	ldr	r0, [sp, #0x68]
	mov	r2, r4
	mov	r1, r11
	mov	r8, r3
	bl	_call_via_r9
	ldr	r4, [sp, #8]
	add	r6, #0x26
	mov	r3, #0x16
	mov	r0, r10
	mov	r2, r4
	str	r3, [sp]
	str	r0, [sp, #4]
	mov	r1, r11
	ldr	r0, [sp, #0x68]
	mov	r3, r6
	bl	_call_via_r9
	add	r5, #0x31
	mov	r1, #0x16
	mov	r2, r10
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r1, r11
	mov	r2, r5
	mov	r3, r8
	ldr	r0, [sp, #0x68]
	bl	_call_via_r9
	mov	r3, #0x16
	mov	r4, r10
	str	r3, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x68]
	mov	r1, r11
	mov	r2, r5
	mov	r3, r6
	bl	_call_via_r9
.Leb054:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x4e
	cmp	r3, #1
	bhi	.Leb078
	mov	r3, #0x10
	ldr	r5, [sp, #0x64]
	mov	r6, #0xc0
	str	r3, [sp]
	lsl	r6, #7
	mov	r3, #0x11
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x68]
	add	r1, r5, r6
	mov	r2, #0x34
	mov	r3, #0x33
	ldr	r4, [sp, #0x58]
	bl	_call_via_r4
.Leb078:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x50
	cmp	r3, #1
	bhi	.Leb09a
	ldr	r2, =0x6110
	ldr	r6, [sp, #0x64]
	mov	r3, #0x29
	mov	r5, #0x18
	str	r3, [sp, #4]
	add	r1, r6, r2
	str	r5, [sp]
	ldr	r0, [sp, #0x68]
	mov	r2, #0x30
	mov	r3, #0x28
	ldr	r4, [sp, #0x58]
	bl	_call_via_r4
.Leb09a:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x52
	cmp	r3, #3
	bhi	.Leb126
	ldr	r5, [sp, #0x54]
	ldr	r0, =0x64e8
	lsl	r7, r5, #1
	ldr	r6, [sp, #0x64]
	mov	r2, r7
	sub	r2, #0xa4
	add	r0, r6, r0
	str	r0, [sp, #0x1c]
	mov	r3, r2
	cmp	r2, #0
	bge	.Leb0bc
	mov	r3, r7
	sub	r3, #0xa1
.Leb0bc:
	asr	r3, #2
	mov	r5, #0x31
	sub	r5, r3
	mov	r9, r3
	mov	r6, #0x26
	ldr	r3, [sp, #0x58]
	sub	r6, r2
	mov	r1, #0x16
	mov	r2, #0x2c
	str	r1, [sp]
	mov	r8, r2
	str	r2, [sp, #4]
	mov	r10, r3
	ldr	r1, [sp, #0x1c]
	ldr	r0, [sp, #0x68]
	mov	r2, r5
	mov	r3, r6
	bl	_call_via_r10
	sub	r7, #0x7e
	mov	r4, #0x16
	mov	r11, r7
	mov	r0, r8
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r1, [sp, #0x1c]
	mov	r2, r5
	ldr	r0, [sp, #0x68]
	mov	r3, r11
	bl	_call_via_r10
	mov	r1, #0x31
	add	r9, r1
	mov	r2, #0x16
	mov	r3, r8
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r1, [sp, #0x1c]
	mov	r2, r9
	mov	r3, r6
	ldr	r0, [sp, #0x68]
	bl	_call_via_r10
	mov	r5, r8
	mov	r4, #0x16
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x68]
	ldr	r1, [sp, #0x1c]
	mov	r2, r9
	mov	r3, r11
	bl	_call_via_r10
.Leb126:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x48
	cmp	r3, #3
	bhi	.Leb190
	ldr	r6, [sp, #0x54]
	ldr	r0, =0xfffffb90
	lsl	r3, r6, #4
	ldr	r2, =Data_ede48
	add	r0, r3
	mov	r1, #5
	mov	r3, #0x14
	mov	r8, r0
	mov	r7, #0
	mov	r11, r1
	mov	r9, r2
	mov	r10, r3
.Leb146:
	lsl	r6, r7, #8
	mov	r0, r6
	bl	Func_2322
	mov	r5, r8
	mul	r5, r0
	mov	r4, r11
	mov	r0, r6
	asr	r5, #16
	sub	r5, r4
	bl	Func_231c
	mov	r3, r8
	mul	r3, r0
	mov	r2, r10
	sub	r2, #2
	mov	r6, r9
	ldrh	r1, [r6, r2]
	ldr	r0, [sp, #0x50]
	add	r5, #0x3c
	mov	r2, #0xa
	mov	r4, r10
	asr	r3, #17
	mov	r6, #0x80
	add	r1, r0, r1
	str	r2, [sp]
	add	r3, #0x32
	mov	r2, r5
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x68]
	ldr	r5, [sp, #0x58]
	add	r7, #1
	lsl	r6, #1
	bl	_call_via_r5
	cmp	r7, r6
	bne	.Leb146
.Leb190:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0x55
	bgt	.Leb198
	b	.Leb364
.Leb198:
	cmp	r0, #0xd5
	ble	.Leb19e
	b	.Leb364
.Leb19e:
	ldr	r1, [sp, #0x24]
	mov	r7, #0
	cmp	r1, #0
	bne	.Leb1a8
	b	.Leb364
.Leb1a8:
	ldr	r2, [sp, #0x28]
	mov	r3, #0
	mov	r14, r2
	mov	r10, r3
	mov	r8, r2
	cmp	r2, #0
	bge	.Leb1b8
	b	.Leb354
.Leb1b8:
	b	.Leb1e0

	.pool_aligned

.Leb1e0:
	mov	r4, r14
	lsr	r3, r4, #31
	add	r3, r14
	asr	r3, #1
	mov	r9, r3
	lsl	r3, #3
	cmp	r3, #0
	bge	.Leb1f2
	add	r3, #7
.Leb1f2:
	ldr	r5, [sp, #0x34]
	ldr	r6, [sp, #0x34]
	ldr	r1, [sp, #0x2c]
	asr	r3, #3
	add	r0, r5, r3
	sub	r4, r6, r3
	mov	r3, r10
	mul	r3, r1
	cmp	r3, #0
	bge	.Leb208
	add	r3, #7
.Leb208:
	ldr	r5, [sp, #0x30]
	asr	r3, #3
	mov	r6, r10
	add	r2, r5, r3
	lsl	r3, r6, #3
	cmp	r3, #0
	bge	.Leb218
	add	r3, #7
.Leb218:
	ldr	r5, [sp, #0x30]
	asr	r3, #3
	sub	r1, r5, r3
	cmp	r1, #0
	bge	.Leb224
	mov	r1, #0
.Leb224:
	cmp	r2, #0x77
	ble	.Leb22a
	mov	r2, #0x77
.Leb22a:
	cmp	r4, #0
	bge	.Leb230
	mov	r4, #0
.Leb230:
	cmp	r0, #0x77
	ble	.Leb236
	mov	r0, #0x77
.Leb236:
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r5, r3, #3
	ldr	r3, [sp, #0x64]
	mov	r2, #0x14
	add	r6, r5, r0
	strb	r2, [r3, r6]
	lsl	r3, r1, #4
	sub	r3, r1
	ldr	r6, [sp, #0x64]
	lsl	r1, r3, #3
	add	r3, r1, r0
	strb	r2, [r6, r3]
	add	r3, r5, r4
	strb	r2, [r6, r3]
	add	r3, r1, r4
	strb	r2, [r6, r3]
	ldr	r3, [sp, #0x34]
	ldr	r2, [sp, #0x34]
	add	r3, r9
	mov	r4, r9
	add	r0, r3, #1
	sub	r3, r2, r4
	add	r4, r3, #1
	cmp	r4, #0
	bge	.Leb26c
	mov	r4, #0
.Leb26c:
	cmp	r0, #0x77
	ble	.Leb272
	mov	r0, #0x77
.Leb272:
	ldr	r6, [sp, #0x64]
	mov	r2, #0x14
	add	r3, r5, r0
	strb	r2, [r6, r3]
	add	r3, r1, r0
	strb	r2, [r6, r3]
	add	r3, r5, r4
	strb	r2, [r6, r3]
	mov	r0, r10
	add	r3, r1, r4
	strb	r2, [r6, r3]
	lsr	r3, r0, #31
	add	r3, r10
	asr	r3, #1
	mov	r12, r3
	lsl	r3, #3
	cmp	r3, #0
	bge	.Leb298
	add	r3, #7
.Leb298:
	ldr	r1, [sp, #0x34]
	ldr	r2, [sp, #0x34]
	ldr	r5, [sp, #0x2c]
	asr	r3, #3
	add	r0, r1, r3
	sub	r4, r2, r3
	mov	r3, r14
	mul	r3, r5
	cmp	r3, #0
	bge	.Leb2ae
	add	r3, #7
.Leb2ae:
	ldr	r6, [sp, #0x30]
	asr	r3, #3
	mov	r1, r14
	add	r2, r6, r3
	lsl	r3, r1, #3
	cmp	r3, #0
	bge	.Leb2be
	add	r3, #7
.Leb2be:
	ldr	r5, [sp, #0x30]
	asr	r3, #3
	sub	r1, r5, r3
	cmp	r4, #0
	bge	.Leb2ca
	mov	r4, #0
.Leb2ca:
	cmp	r0, #0x77
	ble	.Leb2d0
	mov	r0, #0x77
.Leb2d0:
	cmp	r1, #0
	bge	.Leb2d6
	mov	r1, #0
.Leb2d6:
	cmp	r2, #0x77
	ble	.Leb2dc
	mov	r2, #0x77
.Leb2dc:
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r6, r3, #3
	ldr	r2, [sp, #0x64]
	mov	r5, #0x14
	add	r3, r6, r0
	strb	r5, [r2, r3]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r2, r3, #3
	add	r3, r2, r0
	ldr	r0, [sp, #0x64]
	strb	r5, [r0, r3]
	add	r3, r6, r4
	strb	r5, [r0, r3]
	add	r3, r2, r4
	strb	r5, [r0, r3]
	ldr	r3, [sp, #0x34]
	ldr	r1, [sp, #0x34]
	add	r3, r12
	mov	r4, r12
	add	r0, r3, #1
	sub	r3, r1, r4
	add	r4, r3, #1
	cmp	r4, #0
	bge	.Leb312
	mov	r4, #0
.Leb312:
	cmp	r0, #0x77
	ble	.Leb318
	mov	r0, #0x77
.Leb318:
	ldr	r1, [sp, #0x64]
	add	r3, r6, r0
	strb	r5, [r1, r3]
	add	r3, r2, r0
	strb	r5, [r1, r3]
	add	r3, r6, r4
	strb	r5, [r1, r3]
	add	r3, r2, r4
	mov	r2, r10
	mov	r4, r8
	strb	r5, [r1, r3]
	lsl	r3, r2, #1
	sub	r3, r4, r3
	sub	r3, #1
	mov	r8, r3
	cmp	r3, #0
	bge	.Leb34a
	mov	r5, r14
	lsl	r3, r5, #1
	add	r3, r8
	mov	r6, #1
	sub	r3, #2
	neg	r6, r6
	mov	r8, r3
	add	r14, r6
.Leb34a:
	mov	r0, #1
	add	r10, r0
	cmp	r14, r10
	blt	.Leb354
	b	.Leb1e0
.Leb354:
	ldr	r1, [sp, #0x28]
	ldr	r2, [sp, #0x24]
	add	r1, #1
	add	r7, #1
	str	r1, [sp, #0x28]
	cmp	r7, r2
	beq	.Leb364
	b	.Leb1a8
.Leb364:
	ldr	r3, [sp, #0x54]
	sub	r3, #0x56
	mov	r8, r3
	cmp	r3, #0x3f
	bhi	.Leb3e4
	ldr	r5, [sp, #0x54]
	ldr	r4, [sp, #0x54]
	lsr	r3, r5, #31
	add	r3, r5, r3
	sub	r4, #0x46
	asr	r3, #1
	ldr	r6, =0xffffc000
	mov	r7, #0
	mov	r9, r4
	mov	r10, r3
.Leb382:
	mov	r0, r6
	bl	Func_2322
	mov	r3, r8
	mul	r3, r0
	mov	r0, r6
	asr	r5, r3, #16
	bl	Func_231c
	mov	r3, r9
	mul	r3, r0
	mov	r1, r10
	add	r2, r1, r7
	asr	r0, r3, #16
	mov	r3, r2
	cmp	r2, #0
	bge	.Leb3a6
	add	r3, r2, #3
.Leb3a6:
	asr	r3, #2
	lsl	r3, #2
	sub	r3, r2, r3
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	ldr	r2, [sp, #0x64]
	sub	r1, r3
	lsl	r1, #6
	mov	r3, #0x80
	add	r1, r2, r1
	lsl	r3, #7
	add	r1, r3
	mov	r3, r0
	mov	r0, #0x20
	mov	r2, r5
	str	r0, [sp]
	mov	r5, #0x80
	mov	r0, #0x36
	str	r0, [sp, #4]
	add	r2, #0x2c
	add	r3, #0x11
	ldr	r0, [sp, #0x68]
	ldr	r4, [sp, #0x58]
	lsl	r5, #5
	add	r7, #1
	bl	_call_via_r4
	add	r6, r5
	cmp	r7, #9
	bne	.Leb382
.Leb3e4:
	mov	r3, #3
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	str	r3, [sp]
	bl	Func_ed408
	ldr	r6, =iwram_1f0c
	ldr	r0, [sp, #0x54]
	ldr	r4, [r6]
	str	r4, [sp, #0x5c]
	cmp	r0, #0x55
	ble	.Leb410
	mov	r3, #0x78
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x68]
	ldr	r1, [sp, #0x64]
	mov	r2, #0
	mov	r3, #0
	bl	_call_via_r4
.Leb410:
	ldr	r1, [sp, #0x54]
	ldr	r2, =0x117
	cmp	r1, r2
	ble	.Leb41e
	ldr	r3, [sp, #0x20]
	sub	r3, #8
	str	r3, [sp, #0x20]
.Leb41e:
	ldr	r4, [sp, #0x54]
	ldr	r5, =0x13f
	cmp	r4, r5
	ble	.Leb45a
	ldr	r3, =0x7828
	ldr	r6, [sp, #0x64]
	ldr	r3, [r6, r3]
	ldr	r3, [r3, #0x14]
	mov	r7, #0
	cmp	r3, #0
	beq	.Leb45a
	ldr	r0, =0x7828
	add	r5, r6, r0
	mov	r6, #0x24
.Leb43a:
	ldr	r3, [r5]
	mov	r2, #0
	ldrsh	r0, [r3, r6]
	mov	r3, #1
	str	r2, [sp]
	neg	r3, r3
	mov	r1, #0xe
	mov	r2, #5
	bl	Func_d6888
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	bne	.Leb43a
.Leb45a:
	ldr	r3, [sp, #0x54]
	cmp	r3, #0xee
	bne	.Leb472
	ldr	r3, =0x3f3f3f3f
	add	r4, sp, #0x8c
	str	r3, [sp, #0x8c]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x68]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Leb472:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xd6
	cmp	r3, #0x41
	bhi	.Leb482
	ldr	r2, =iwram_1ad0
	ldrh	r3, [r2, #4]
	add	r3, #8
	strh	r3, [r2, #4]
.Leb482:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xf6
	cmp	r3, #0x21
	bhi	.Leb4a4
	ldr	r5, [sp, #0x20]
	ldr	r6, [sp, #0x64]
	mov	r0, #0xef
	lsl	r0, #7
	add	r3, r6, r0
	add	r5, #8
	mov	r1, #0
	str	r5, [sp, #0x20]
	str	r1, [r3]
	ldr	r3, =0x7784
	add	r2, r6, r3
	mov	r3, #0x4b
	str	r3, [r2]
.Leb4a4:
	ldr	r4, [sp, #0x54]
	cmp	r4, #0xd5
	bgt	.Leb4ac
	b	.Leb6d2
.Leb4ac:
	add	r3, sp, #0x7c
	mov	r5, #0
	str	r5, [r3, #0xc]
	str	r5, [r3, #4]
	ldr	r0, [sp, #0x64]
	mov	r6, #0x6c
	ldr	r1, =0x77d8
	mov	r2, #0xe1
	add	r6, sp
	lsl	r2, #7
	mov	r8, r6
	mov	r7, #0
	mov	r4, r3
	add	r6, r0, r1
	add	r5, r0, r2
.Leb4ca:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	beq	.Leb56a
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	asr	r2, #7
	ldr	r0, =0x7ff
	add	r3, r2
	str	r3, [sp, #0x6c]
	cmp	r3, r0
	bgt	.Leb4e6
	mov	r3, #0x80
	lsl	r3, #4
	str	r3, [sp, #0x6c]
.Leb4e6:
	mov	r1, r8
	str	r3, [r1, #4]
	mov	r2, #0xff
	ldr	r3, [r5]
	lsl	r2, #16
	str	r2, [r4, #4]
	str	r3, [r4]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r4, #8]
	mov	r1, r4
	mov	r2, r8
	mov	r3, #0
	ldr	r0, [r6]
	str	r4, [sp, #8]
	bl	_Func_b168
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #0x10]
	sub	r2, r3
	ldr	r3, =0xfffff
	str	r2, [r5, #4]
	ldr	r4, [sp, #8]
	cmp	r2, r3
	bgt	.Leb56a
	ldr	r0, [sp, #0x54]
	ldr	r1, =0x117
	cmp	r0, r1
	bgt	.Leb530
	bl	Func_4458
	mov	r3, #0x3f
	ldr	r2, [sp, #0x20]
	and	r3, r0
	add	r3, r2
	add	r3, #0x20
	b	.Leb540
.Leb530:
	str	r4, [sp, #8]
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	ldr	r0, [sp, #0x20]
	add	r3, r0
	sub	r3, #0x20
.Leb540:
	lsl	r3, #16
	str	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r1, [sp, #0x54]
	ldr	r2, =0x12d
	cmp	r1, r2
	ble	.Leb554
	mov	r3, #0
	str	r3, [r5, #0x18]
	b	.Leb56a
.Leb554:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0xf5
	ble	.Leb560
	mov	r3, #0xc0
	lsl	r3, #15
	b	.Leb568
.Leb560:
	ldr	r2, [r5]
	mov	r3, #0xc0
	lsl	r3, #16
	sub	r3, r2
.Leb568:
	str	r3, [r5, #4]
.Leb56a:
	add	r7, #1
	add	r6, #4
	add	r5, #0x1c
	cmp	r7, #0x10
	bne	.Leb4ca
	ldr	r1, [sp, #0x54]
	ldr	r2, =0x117
	cmp	r1, r2
	bgt	.Leb644
	ldr	r4, [sp, #0x20]
	mov	r3, #0xf
	mov	r10, r3
	lsr	r3, r4, #31
	add	r3, r4, r3
	asr	r1, #31
	asr	r3, #1
	mov	r7, #0
	mov	r8, r1
	mov	r9, r3
.Leb590:
	bl	Func_4458
	mov	r2, #1
	and	r2, r7
	mov	r5, r10
	and	r0, r5
	lsl	r3, r2, #2
	lsr	r5, r7, #31
	add	r3, r2
	add	r5, r7, r5
	asr	r5, #1
	lsl	r3, #2
	lsl	r2, r5, #2
	sub	r3, r0
	add	r3, r2
	add	r3, r9
	mov	r6, r3
	bl	Func_4458
	mov	r2, r8
	ldr	r4, [sp, #0x54]
	lsr	r3, r2, #31
	add	r3, r4, r3
	asr	r3, #1
	mov	r1, r10
	lsl	r5, #5
	and	r0, r1
	add	r2, r3, r7
	sub	r6, #0x10
	sub	r5, r0
	mov	r3, r2
	cmp	r2, #0
	bge	.Leb5d4
	add	r3, r2, #3
.Leb5d4:
	asr	r3, #2
	lsl	r3, #2
	sub	r3, r2, r3
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	ldr	r0, [sp, #0x64]
	sub	r1, r3
	lsl	r1, #6
	mov	r3, #0x20
	mov	r2, #0x80
	add	r1, r0, r1
	lsl	r2, #7
	str	r3, [sp]
	mov	r3, #0x36
	add	r1, r2
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x68]
	mov	r2, r6
	mov	r3, r5
	ldr	r4, [sp, #0x5c]
	add	r7, #1
	bl	_call_via_r4
	cmp	r7, #8
	bne	.Leb590
	b	.Leb6d2

	.pool_aligned

.Leb644:
	ldr	r0, [sp, #0x20]
	ldr	r5, [sp, #0x54]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r5, #31
	mov	r6, #0xf
	asr	r3, #1
	mov	r7, #0
	mov	r8, r5
	mov	r10, r6
	mov	r9, r3
.Leb65a:
	bl	Func_4458
	mov	r2, #1
	and	r2, r7
	lsl	r3, r2, #2
	lsr	r5, r7, #31
	add	r3, r2
	mov	r1, r10
	add	r5, r7, r5
	and	r0, r1
	asr	r5, #1
	lsl	r3, #2
	lsl	r2, r5, #2
	add	r3, r0
	sub	r3, r2
	add	r3, r9
	mov	r6, r3
	bl	Func_4458
	mov	r2, r10
	and	r0, r2
	lsl	r5, #5
	sub	r5, r0
	mov	r4, r8
	ldr	r0, [sp, #0x54]
	lsr	r3, r4, #31
	add	r3, r0, r3
	asr	r3, #1
	add	r2, r3, r7
	sub	r6, #0x10
	mov	r3, r2
	cmp	r2, #0
	bge	.Leb69e
	add	r3, r2, #3
.Leb69e:
	asr	r3, #2
	lsl	r3, #2
	sub	r3, r2, r3
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	ldr	r2, [sp, #0x64]
	sub	r1, r3
	lsl	r1, #6
	mov	r3, #0x80
	add	r1, r2, r1
	lsl	r3, #7
	add	r1, r3
	mov	r3, #0x20
	str	r3, [sp]
	mov	r3, #0x36
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x68]
	mov	r2, r6
	mov	r3, r5
	ldr	r4, [sp, #0x5c]
	add	r7, #1
	bl	_call_via_r4
	cmp	r7, #8
	bne	.Leb65a
.Leb6d2:
	mov	r0, #0x2f
	bl	Func_2dd8
	ldr	r5, [sp, #0x54]
	cmp	r5, #0x3f
	ble	.Leb6ec
	bl	Func_4458
	mov	r3, #3
	and	r3, r0
	ldr	r2, =iwram_1ad0
	add	r3, #0x1e
	strh	r3, [r2, #6]
.Leb6ec:
	ldr	r6, [sp, #0x64]
	ldr	r0, =0x7824
	mov	r3, #1
	add	r2, r6, r0
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x54]
	mov	r2, #0xa0
	add	r1, #1
	lsl	r2, #1
	str	r1, [sp, #0x54]
	cmp	r1, r2
	beq	.Leb70e
	bl	.Leaa8e
.Leb70e:
	ldr	r3, [sp, #0x64]
	ldr	r4, =0x77d8
	mov	r7, #0
	add	r6, r3, r4
.Leb716:
	ldmia	r6!, {r0}
	add	r7, #1
	bl	_Func_bdd4
	cmp	r7, #0x10
	bne	.Leb716
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0xb8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ea0d8

	.section .rodata

.Leef28:
	.incrom 0xeef28, 0xeef30
.Leef30:
	.incrom 0xeef30, 0xeef3e
.Leef3e:
	.incrom 0xeef3e, 0xeef4a
.Leef4a:
	.incrom 0xeef4a, 0xeef50
.Leef50:
	.incrom 0xeef50, 0xeef56
