	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_e6638
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldmia	r3!, {r2}
	ldr	r5, =0x7828
	mov	r11, r2
	ldr	r3, [r3]
	sub	sp, #0x28
	add	r5, r11
	mov	r6, r0
	mov	r0, #0x80
	str	r3, [sp, #0x14]
	lsl	r0, #6
	str	r6, [r5]
	bl	Func_cd594
	ldr	r3, [r5]
	ldr	r2, [r3, #4]
	add	r3, sp, #0x24
	str	r3, [sp]
	add	r3, sp, #0x20
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #6
	mov	r3, #2
	bl	Func_de2f8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Le66b4	@ 0x2784
	strh	r3, [r2]
	ldr	r3, .Le66b8	@ 0x1000
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r3, .Le66bc	@ 0xaa
	sub	r2, #0x32
	strh	r3, [r2]
	ldr	r3, [r5]
	add	r1, sp, #0x18
	ldr	r0, [r3, #4]
	bl	Func_cef64
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r3, #0xfe
	b	.Le66d4

	.align	2, 0
.Le66b4:
	.word	0x2784
.Le66b8:
	.word	0x1000
.Le66bc:
	.word	0xaa
	.pool

.Le66d4:
	lsl	r3, #6
	mov	r1, #0
	mov	r9, r3
	mov	r5, r11
	add	r5, r9
	str	r1, [sp, #0x10]
	mov	r10, r5
.Le66e2:
	ldr	r3, [sp, #0x10]
	mov	r2, #0x7f
	add	r3, r11
	add	r2, r10
	mov	r7, r9
	mov	r6, r3
	mov	r4, #0
	mov	r8, r2
	add	r7, r11
	add	r6, #0x7f
	mov	r5, r3
.Le66f8:
	mov	r2, r1
	cmp	r1, #0
	bge	.Le6700
	add	r2, r1, #7
.Le6700:
	asr	r2, #3
	mov	r3, r4
	add	r2, #0x40
	sub	r2, r1, r2
	sub	r3, #0x40
	mov	r0, r3
	mul	r0, r3
	mov	r3, r2
	mul	r3, r2
	str	r1, [sp, #0xc]
	add	r0, r3
	str	r4, [sp, #8]
	ldr	r3, =Func_948
	bl	_call_via_r3
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r0, r3, #1
	ldr	r1, [sp, #0xc]
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.Le672e
	mov	r0, #1
.Le672e:
	cmp	r0, #0x3f
	ble	.Le6734
	mov	r0, #0x3f
.Le6734:
	mov	r2, #1
	mov	r3, r8
	neg	r2, r2
	add	r4, #1
	strb	r0, [r5]
	add	r8, r2
	strb	r0, [r6]
	add	r5, #1
	strb	r0, [r7]
	sub	r6, #1
	add	r7, #1
	strb	r0, [r3]
	cmp	r4, #0x40
	bne	.Le66f8
	ldr	r3, [sp, #0x10]
	mov	r5, #0x80
	neg	r5, r5
	add	r3, #0x80
	add	r1, #1
	str	r3, [sp, #0x10]
	add	r9, r5
	add	r10, r5
	cmp	r1, #0x40
	bne	.Le66e2
	ldr	r4, =ewram_10002
	mov	r7, #1
.Le6768:
	cmp	r7, #0x1f
	ble	.Le6772
	mov	r3, #0x40
	sub	r2, r3, r7
	b	.Le6774
.Le6772:
	mov	r2, r7
.Le6774:
	lsl	r3, r2, #3
	add	r0, r3, r2
	sub	r3, r2
	mov	r1, r3
	mov	r2, r3
	sub	r1, #0x2a
	sub	r2, #0x38
	cmp	r0, #0
	bge	.Le6788
	mov	r0, #0
.Le6788:
	cmp	r1, #0
	bge	.Le678e
	mov	r1, #0
.Le678e:
	cmp	r2, #0
	bge	.Le6794
	mov	r2, #0
.Le6794:
	cmp	r0, #0xff
	ble	.Le679a
	mov	r0, #0xff
.Le679a:
	cmp	r1, #0xff
	ble	.Le67a0
	mov	r1, #0xff
.Le67a0:
	cmp	r2, #0xfa
	ble	.Le67a6
	mov	r2, #0xfa
.Le67a6:
	asr	r1, #3
	asr	r2, #3
	mov	r5, #0xa0
	lsl	r2, #10
	lsl	r1, #5
	lsl	r3, r7, #1
	asr	r0, #3
	lsl	r5, #19
	orr	r2, r1
	orr	r2, r0
	add	r3, r5
	add	r7, #1
	strh	r2, [r3]
	strh	r2, [r4]
	add	r4, #2
	cmp	r7, #0x40
	bne	.Le6768
	mov	r3, #0x80
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x14]
	mov	r1, r11
	mov	r2, #0
	mov	r3, #0
	bl	_call_via_r4
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_dbb9c
	lsl	r1, #3
	bl	Func_41d8
	ldr	r2, =ewram_1007e
	ldr	r3, =REG_IME
	mov	r4, #0
	mov	r9, r2
	mov	r10, r3
	mov	r8, r4
.Le67fa:
	cmp	r4, #8
	bgt	.Le682c
	ldr	r2, .Le680c	@ 0x1000
	mov	r3, r8
	ldr	r5, =REG_BLDALPHA
	orr	r3, r2
	mov	r1, r8
	strh	r3, [r5]
	b	.Le682e

	.align	2, 0
.Le680c:
	.word	0x1000
	.pool

.Le682c:
	lsl	r1, r4, #1
.Le682e:
	cmp	r4, #0x58
	ble	.Le6840
	ldr	r3, =0xc0
	mov	r2, r8
	sub	r3, r2
	ldr	r2, =0x1000
	ldr	r5, =REG_BLDALPHA
	orr	r3, r2
	strh	r3, [r5]
.Le6840:
	mov	r6, #0xd3
	lsl	r6, #7
	lsl	r3, r1, #9
	add	r6, r11
	mov	r7, #0
	neg	r5, r3
	b	.Le685c

	.pool_aligned

.Le685c:
	mov	r0, r5
	str	r4, [sp, #8]
	bl	Func_2322
	lsl	r3, r7, #18
	lsl	r0, #7
	mov	r2, #0x80
	sub	r3, r0
	lsl	r2, #11
	add	r3, r2
	asr	r3, #10
	stmia	r6!, {r3}
	mov	r3, #0x80
	lsl	r3, #2
	add	r7, #1
	add	r5, r3
	ldr	r4, [sp, #8]
	cmp	r7, #0xa0
	bne	.Le685c
	cmp	r4, #0x7f
	ble	.Le6890
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	b	.Le68d6
.Le6890:
	mov	r5, r9
	ldrh	r3, [r5]
	ldr	r2, =ewram_10000
	ldr	r0, =ewram_1007c
	strh	r3, [r2, #2]
	mov	r1, r9
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80a0003e
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =ewram_2090
	mov	r5, r10
	ldrh	r3, [r5]
	mov	r0, r3
	mov	r2, r10
	mov	r3, r10
	strh	r2, [r3]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Le68d2
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =ewram_10002
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =0x5000002
	stmia	r3!, {r2}
	ldr	r2, =0x8000003f
	str	r2, [r3]
.Le68d2:
	mov	r5, r10
	strh	r0, [r5]
.Le68d6:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	Func_30f8
	ldr	r4, [sp, #8]
	mov	r2, #2
	add	r4, #1
	add	r8, r2
	cmp	r4, #0x60
	beq	.Le68ec
	b	.Le67fa
.Le68ec:
	ldr	r0, =Func_dbb9c
	bl	Func_4278
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e6638

.thumb_func_start Func_e6948
	push	{r5, r6, lr}
	ldr	r3, =iwram_1eec
	ldr	r5, [r3]
	ldr	r3, =0x7828
	mov	r6, r0
	add	r5, r3
	str	r6, [r5]
	mov	r0, #0
	sub	sp, #0x10
	bl	Func_cd594
	ldr	r3, [r5]
	ldr	r2, [r3, #4]
	mov	r3, #1
	eor	r2, r3
	add	r3, sp, #0xc
	str	r3, [sp]
	add	r3, sp, #8
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #7
	mov	r3, #0
	bl	Func_de2f8
	bl	Func_cdbc0
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_e6948

.thumb_func_start Func_e698c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1eec
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r6, =0x7828
	ldr	r3, [r3]
	sub	sp, #0x24
	mov	r9, r1
	str	r3, [sp, #0xc]
	add	r6, r9
	str	r0, [r6]
	mov	r0, #0
	ldr	r5, [r2, #8]
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le69f8	@ 0x100
	ldr	r0, =0x73
	strh	r3, [r2]
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x61
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r1, #0xfa
	lsl	r1, #6
	mov	r2, #1
	ldr	r0, =0x6d
	add	r1, r9
	mov	r3, #0
	bl	Func_e0524
	ldr	r3, [r6]
	add	r1, sp, #0x10
	ldr	r0, [r3, #4]
	bl	Func_cef64
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	b	.Le6a14

	.align	2, 0
.Le69f8:
	.word	0x100
	.pool

.Le6a14:
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r2, #0
	mov	r8, r2
	ldr	r3, =ewram_10018
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #3
.Le6a36:
	mov	r4, #1
	add	r8, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Le6a36
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r6, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r3, r2
	mov	r8, r0
	lsl	r0, r3, #2
	add	r0, r3
	mov	r1, #0x64
	lsl	r0, #4
	mov	r10, r2
	bl	Func_af0_from_thumb
	mov	r4, r8
	ldr	r3, [r4, #0x10]
	mov	r5, r0
	ldr	r0, [r6, #0x10]
	sub	r3, r0
	mov	r8, r0
	lsl	r0, r3, #2
	add	r0, r3
	mov	r1, #0x64
	lsl	r0, #4
	bl	Func_af0_from_thumb
	add	r10, r5
	add	r8, r0
	asr	r5, #8
	asr	r0, #8
	mov	r2, r0
	mul	r2, r0
	mov	r3, r5
	mul	r3, r5
	add	r3, r2
	mov	r0, r3
	ldr	r2, =Func_948
	bl	_call_via_r2
	mov	r1, #0x14
	lsl	r0, #8
	bl	Func_af0_from_thumb
	mov	r3, r6
	mov	r2, #1
	add	r3, #0x58
	str	r0, [r6, #0x34]
	str	r0, [r6, #0x30]
	strb	r2, [r3]
	mov	r3, #0xe0
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldr	r3, =0xdeb8
	str	r3, [r6, #0x48]
	mov	r3, r6
	mov	r1, #0
	add	r3, #0x5a
	str	r1, [r6, #0x44]
	mov	r0, r6
	strb	r2, [r3]
	bl	_Func_c4ac
	mov	r1, r10
	mov	r2, #0
	mov	r3, r8
	mov	r0, r6
	bl	_Func_d14c
	mov	r1, #2
	mov	r0, r6
	bl	_Func_c300
	ldr	r3, =0x7828
	mov	r1, #0
	add	r2, sp, #0x18
	add	r3, r9
	str	r1, [sp, #8]
	mov	r11, r2
	mov	r10, r3
.Le6af4:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, r11
	ldr	r0, [r3, #8]
	bl	Func_e3980
	mov	r6, r11
	ldr	r2, [r6]
	mov	r3, #0x50
	sub	r3, r2
	ldr	r1, =REG_BG2X
	lsl	r3, #8
	str	r3, [r1]
	ldr	r2, [sp, #8]
	sub	r2, #8
	cmp	r2, #0xf
	bhi	.Le6b8e
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r5, r3, #1
	cmp	r5, #6
	ble	.Le6b22
	mov	r5, #6
.Le6b22:
	mov	r0, r10
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le6b5c
	ldr	r2, =.Leee02
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leee10
	ldrsb	r2, [r3, r5]
	ldr	r3, =.Leee17
	mov	r4, r11
	ldr	r0, [r4, #4]
	ldrsb	r3, [r3, r5]
	add	r3, r0
	ldr	r0, =.Leedf4
	ldrb	r0, [r0, r5]
	str	r0, [sp]
	ldr	r0, =.Leedfb
	ldrb	r0, [r0, r5]
	add	r1, r9
	str	r0, [sp, #4]
	add	r2, #0x1e
	sub	r3, #0x3c
	ldr	r4, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
	b	.Le6b8e
.Le6b5c:
	ldr	r2, =.Leee02
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leee10
	ldrsb	r2, [r3, r5]
	ldr	r3, =.Leedf4
	ldrb	r4, [r3, r5]
	ldr	r3, =.Leee17
	mov	r6, r11
	ldr	r0, [r6, #4]
	ldrsb	r3, [r3, r5]
	str	r4, [sp]
	add	r3, r0
	ldr	r0, =.Leedfb
	neg	r2, r2
	ldrb	r0, [r0, r5]
	sub	r2, r4
	str	r0, [sp, #4]
	add	r1, r9
	add	r2, #0x6c
	sub	r3, #0x3c
	ldr	r4, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
.Le6b8e:
	ldr	r0, [sp, #8]
	cmp	r0, #0x12
	bne	.Le6c26
	mov	r0, #0x86
	bl	_Func_bd7dc
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #7
	mov	r3, #0
	bl	Func_d6888
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #6
	mov	r6, #0x24
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r9
	mov	r0, #0
	str	r3, [r2]
	ldr	r7, =ewram_10000
	mov	r8, r0
.Le6bcc:
	bl	Func_4458
	mov	r5, #0x3f
	mov	r1, #0x80
	lsl	r1, #1
	and	r5, r0
	add	r5, r1
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	mov	r3, #0x80
	lsl	r3, #15
	str	r3, [r7]
	mov	r3, #0xa0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r6
	bl	Func_2322
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	mov	r2, #1
	add	r3, #0x10
	add	r8, r2
	str	r3, [r7, #0x18]
	mov	r3, r8
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Le6bcc
.Le6c26:
	mov	r4, #0
	ldr	r5, =ewram_10000
	mov	r8, r4
.Le6c2c:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	ble	.Le6c9c
	sub	r3, #1
	str	r3, [r5, #0x18]
	mov	r0, r5
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e3908
	mov	r6, #0xd0
	ldr	r3, [r5, #4]
	lsl	r6, #15
	cmp	r3, r6
	ble	.Le6c58
	ldr	r3, [r5, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5, #0x10]
	b	.Le6c9c
.Le6c58:
	ldr	r2, [r5]
	ldr	r0, =0x7effff
	cmp	r2, r0
	bhi	.Le6c9c
	cmp	r3, #0
	blt	.Le6c9c
	ldr	r0, [sp, #8]
	add	r0, r8
	asr	r6, r2, #16
	asr	r7, r3, #16
	cmp	r0, #0
	bge	.Le6c72
	add	r0, #3
.Le6c72:
	mov	r1, #6
	asr	r0, #2
	bl	Func_b1c_from_thumb
	mov	r1, r0
	lsl	r1, #8
	mov	r2, #0xfa
	lsl	r2, #6
	add	r1, r9
	mov	r0, #0x10
	add	r1, r2
	mov	r3, r7
	mov	r2, r6
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r2, #8
	sub	r3, #8
	ldr	r4, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
.Le6c9c:
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	add	r5, #0x1c
	cmp	r4, #0x80
	bne	.Le6c2c
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r6, [sp, #8]
	add	r6, #1
	str	r6, [sp, #8]
	cmp	r6, #0x46
	beq	.Le6cce
	b	.Le6af4
.Le6cce:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e698c

.thumb_func_start Func_e6d3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1eec
	mov	r10, r2
	ldr	r2, [r3]
	ldr	r3, =Data_edab8
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	sub	sp, #0x20
	str	r3, [sp, #8]
	str	r4, [sp, #0xc]
	ldr	r3, =Data_edac0
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	mov	r9, r1
	str	r3, [sp]
	str	r4, [sp, #4]
	add	r1, sp, #0x10
	mov	r3, #0
	str	r3, [r1, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r1, #4]
	cmp	r0, #1
	beq	.Le6dc4
	cmp	r0, #1
	bgt	.Le6d7e
	cmp	r0, #0
	beq	.Le6d88
	b	.Le6e6a
.Le6d7e:
	cmp	r0, #2
	beq	.Le6e00
	cmp	r0, #3
	beq	.Le6e3a
	b	.Le6e6a
.Le6d88:
	add	r3, sp, #8
	mov	r8, r3
	ldr	r3, =0x77d8
	mov	r5, #0
	mov	r7, r1
	add	r6, r2, r3
.Le6d94:
	mov	r0, r5
	mov	r1, #3
	bl	Func_b1c_from_thumb
	lsl	r0, #21
	add	r0, r9
	str	r0, [r7]
	mov	r1, #3
	mov	r0, r5
	bl	Func_af0_from_thumb
	lsl	r0, #21
	add	r0, r10
	str	r0, [r7, #8]
	mov	r1, r7
	ldmia	r6!, {r0}
	mov	r2, r8
	mov	r3, #0
	add	r5, #1
	bl	_Func_b168
	cmp	r5, #9
	bne	.Le6d94
	b	.Le6e6a
.Le6dc4:
	add	r3, sp, #8
	mov	r8, r3
	ldr	r3, =0x77d8
	mov	r5, #0
	mov	r6, r1
	add	r7, r2, r3
.Le6dd0:
	ldr	r3, =.Leee1e
	ldrb	r3, [r3, r5]
	ldr	r2, =0xfff00000
	lsl	r3, #16
	add	r3, r9
	add	r3, r2
	str	r3, [r6]
	ldr	r3, =.Leee2a
	ldrb	r3, [r3, r5]
	ldr	r2, =0xffe00000
	lsl	r3, #16
	add	r3, r10
	add	r3, r2
	str	r3, [r6, #8]
	ldmia	r7!, {r0}
	mov	r1, r6
	mov	r2, r8
	mov	r3, #0
	add	r5, #1
	bl	_Func_b168
	cmp	r5, #0xc
	bne	.Le6dd0
	b	.Le6e6a
.Le6e00:
	add	r3, sp, #8
	mov	r8, r3
	ldr	r3, =0x77d8
	mov	r5, #0
	mov	r6, r1
	add	r7, r2, r3
.Le6e0c:
	ldr	r3, =.Leee36
	ldrb	r3, [r3, r5]
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #13
	add	r3, r9
	add	r3, r2
	str	r3, [r6]
	ldr	r3, =.Leee3e
	ldrb	r3, [r3, r5]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r6, #8]
	ldmia	r7!, {r0}
	mov	r1, r6
	mov	r2, r8
	mov	r3, #0
	add	r5, #1
	bl	_Func_b168
	cmp	r5, #8
	bne	.Le6e0c
	b	.Le6e6a
.Le6e3a:
	ldr	r3, =0x77d8
	mov	r5, #0
	mov	r8, sp
	mov	r6, r1
	add	r7, r2, r3
.Le6e44:
	ldr	r3, =.Leee46
	ldrb	r3, [r3, r5]
	lsl	r3, #16
	add	r3, r9
	str	r3, [r6]
	ldr	r3, =.Leee4e
	ldrb	r3, [r3, r5]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r6, #8]
	ldmia	r7!, {r0}
	mov	r1, r6
	mov	r2, r8
	mov	r3, #0
	add	r5, #1
	bl	_Func_b168
	cmp	r5, #8
	bne	.Le6e44
.Le6e6a:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e6d3c

.thumb_func_start Func_e6eac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	ldr	r5, =iwram_1eec
	str	r2, [sp, #0x1c]
	str	r0, [sp, #0x20]
	mov	r3, r5
	ldmia	r3!, {r0}
	mov	r11, r1
	ldr	r3, [r3]
	mov	r2, r11
	mov	r4, #0xa0
	str	r3, [sp, #0x18]
	lsl	r4, #14
	mov	r3, r2
	add	r3, r4
	mov	r11, r3
	lsr	r3, #31
	add	r3, r11
	asr	r3, #1
	ldr	r1, [r5, #8]
	mov	r11, r3
	str	r2, [sp, #8]
	ldr	r3, .Le6f20	@ 0x80
	ldr	r2, =REG_BG2PA
	str	r1, [sp, #0xc]
	strh	r3, [r2]
	add	r2, #8
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, .Le6f24	@ 0x3f46
	add	r2, #0x28
	mov	r10, r0
	strh	r3, [r2]
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	ldr	r0, [r5, #0x1c]
	mov	r3, #3
	str	r0, [sp, #0x10]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r3, [sp]
	bl	Func_ed408
	ldr	r5, [r5, #0x20]
	b	.Le6f30

	.align	2, 0
.Le6f20:
	.word	0x80
.Le6f24:
	.word	0x3f46
	.pool

.Le6f30:
	ldr	r1, [sp, #0xc]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	str	r5, [sp, #0x14]
	bl	Func_e0524
	ldr	r0, =0x5e
	mov	r1, r10
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r1, =0x59d8
	ldr	r0, =0x5f
	add	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r10
	str	r6, [r3]
	add	r2, r10
	mov	r3, #0x32
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Func_cd260
	mov	r7, #0xe1
	bl	Func_41d8
	lsl	r7, #7
	mov	r1, #0
	mov	r8, r1
	add	r7, r10
.Le6f7c:
	bl	Func_4458
	mov	r6, #0xff
	mov	r2, #0x80
	lsl	r2, #1
	and	r6, r0
	add	r6, r2
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r3, r11
	str	r3, [r7]
	ldr	r4, [sp, #0x1c]
	mov	r0, r5
	str	r4, [r7, #4]
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	asr	r3, #6
	neg	r3, r3
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	mov	r0, #1
	add	r8, r0
	add	r3, #0x10
	mov	r1, r8
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r1, #0x40
	bne	.Le6f7c
	ldr	r5, =0x772c
	mov	r2, #0
	mov	r8, r2
	mov	r6, #0
	add	r5, r10
.Le6fdc:
	mov	r3, r11
	str	r3, [r5]
	ldr	r4, [sp, #0x1c]
	mov	r0, r6
	str	r4, [r5, #4]
	bl	Func_2322
	lsl	r0, #5
	asr	r0, #6
	str	r0, [r5, #0xc]
	mov	r0, r6
	bl	Func_231c
	lsl	r0, #5
	asr	r0, #5
	neg	r0, r0
	mov	r1, #1
	str	r0, [r5, #0x10]
	add	r8, r1
	ldr	r0, =0x5555
	mov	r2, r8
	add	r6, r0
	add	r5, #0x1c
	cmp	r2, #3
	bne	.Le6fdc
	mov	r3, #0
	ldr	r7, =ewram_10000
	mov	r8, r3
.Le7014:
	bl	Func_4458
	mov	r6, #0xff
	and	r6, r0
	bl	Func_4458
	mov	r4, r11
	str	r4, [r7]
	ldr	r3, =0xffff
	mov	r5, r0
	ldr	r0, [sp, #0x1c]
	and	r5, r3
	str	r0, [r7, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	asr	r3, #5
	neg	r3, r3
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	mov	r1, #1
	and	r3, r0
	add	r8, r1
	add	r3, #0x14
	mov	r2, r8
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r2, #0x40
	bne	.Le7014
	mov	r7, #0
.Le7068:
	cmp	r7, #4
	bne	.Le7072
	mov	r0, #0x9a
	bl	_Func_f9080
.Le7072:
	cmp	r7, #0x20
	bne	.Le707c
	mov	r0, #0xd4
	bl	_Func_f9080
.Le707c:
	cmp	r7, #0x2f
	bgt	.Le70be
	mov	r0, r7
	sub	r0, #8
	mov	r1, #5
	bl	Func_af0_from_thumb
	mov	r4, r0
	cmp	r4, #0
	bge	.Le7092
	mov	r4, #0
.Le7092:
	ldr	r2, =.Leee66
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	mov	r3, r11
	asr	r2, r3, #16
	ldr	r3, =.Leee56
	ldrb	r5, [r3, r4]
	ldr	r0, [sp, #0x1c]
	lsr	r3, r5, #1
	sub	r2, r3
	asr	r3, r0, #16
	ldr	r0, =.Leee5e
	ldrb	r4, [r0, r4]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r4, [sp, #4]
	add	r1, r10
	str	r5, [sp]
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
.Le70be:
	mov	r6, #0xe1
	mov	r0, #0
	lsl	r6, #7
	mov	r8, r0
	add	r6, r10
.Le70c8:
	mov	r1, r8
	lsr	r3, r1, #31
	add	r3, r8
	asr	r3, #1
	cmp	r7, r3
	ble	.Le711e
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Le711e
	sub	r3, #1
	str	r3, [r6, #0x18]
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e3908
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	bge	.Le70f0
	add	r4, #0xf
.Le70f0:
	asr	r4, #4
	add	r4, #3
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	lsl	r5, r4, #1
	mov	r0, #6
	ldrsh	r3, [r6, r0]
	ldr	r0, =Data_ede48
	sub	r1, r5, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0xc]
	add	r1, r0, r1
	lsr	r0, r4, #31
	add	r0, r4, r0
	asr	r0, #1
	sub	r2, r0
	sub	r3, r4
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
.Le711e:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x1c
	cmp	r1, #0x1e
	bne	.Le70c8
	ldr	r3, =Data_ede48
	mov	r2, #0
	ldr	r6, =ewram_10000
	mov	r8, r2
	mov	r9, r3
.Le7134:
	cmp	r7, #0x23
	ble	.Le7182
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Le7182
	sub	r3, #1
	str	r3, [r6, #0x18]
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e3908
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	bge	.Le7154
	add	r4, #0xf
.Le7154:
	asr	r4, #4
	add	r4, #1
	lsl	r5, r4, #1
	mov	r0, #2
	ldrsh	r2, [r6, r0]
	mov	r1, #6
	ldrsh	r3, [r6, r1]
	mov	r0, r9
	sub	r1, r5, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0xc]
	add	r1, r0, r1
	lsr	r0, r4, #31
	add	r0, r4, r0
	asr	r0, #1
	sub	r2, r0
	sub	r3, r4
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
.Le7182:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x1c
	cmp	r1, #0x3c
	bne	.Le7134
	ldr	r5, =0x772c
	mov	r2, #0
	mov	r6, r7
	mov	r8, r2
	sub	r6, #0x24
	add	r5, r10
.Le719a:
	cmp	r6, #0x1b
	bhi	.Le71d8
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0x40
	bl	Func_e3908
	mov	r1, #7
	mov	r0, r6
	bl	Func_af0_from_thumb
	lsl	r1, r0, #3
	add	r1, r0
	lsl	r1, #5
	ldr	r0, =0x59d8
	add	r1, r10
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	add	r1, r0
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	mov	r0, #0xc
	str	r0, [sp]
	mov	r0, #0x18
	str	r0, [sp, #4]
	sub	r2, #6
	sub	r3, #0xc
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
.Le71d8:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #3
	bne	.Le719a
	cmp	r7, #0x23
	bgt	.Le71f2
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x1c]
	bl	Func_e6d3c
.Le71f2:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	add	r7, #1
	bl	Func_30f8
	cmp	r7, #0x48
	beq	.Le7208
	b	.Le7068
.Le7208:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r1, #0x80
	ldr	r3, =Func_8d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e6eac

.thumb_func_start Func_e727c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r5, =0x5000002
	ldr	r7, .Le72b4	@ 0x1f
	mov	r8, r0
	mov	r14, r1
	mov	r12, r2
	mov	r6, #0
.Le728e:
	ldrh	r2, [r5]
	lsl	r3, r2, #16
	lsr	r1, r3, #26
	and	r1, r7
	lsr	r4, r3, #21
	mov	r0, #0x1f
	and	r4, r7
	and	r0, r2
	add	r1, r8
	add	r4, r14
	add	r0, r12
	cmp	r1, #0x1f
	ble	.Le72aa
	mov	r1, #0x1f
.Le72aa:
	cmp	r4, #0x1f
	ble	.Le72bc
	mov	r4, #0x1f
	b	.Le72bc

	.align	2, 0
.Le72b4:
	.word	0x1f
	.pool

.Le72bc:
	cmp	r0, #0x1f
	ble	.Le72c2
	mov	r0, #0x1f
.Le72c2:
	lsl	r3, r1, #10
	lsl	r2, r4, #5
	orr	r3, r2
	orr	r3, r0
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	cmp	r6, #0x3f
	bne	.Le728e
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e727c

.thumb_func_start Func_e72e0
	ldr	r3, =iwram_1eec
	ldr	r0, [r3]
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldrh	r2, [r3, #0xa]
	mov	r2, #0xfc
	lsl	r2, #5
	mov	r1, #0xa0
	add	r0, r2
	lsl	r1, #19
	ldr	r2, =0xa2600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_e72e0

	.section .rodata

.Leedf4:
	.incrom 0xeedf4, 0xeedfb
.Leedfb:
	.incrom 0xeedfb, 0xeee02
.Leee02:
	.incrom 0xeee02, 0xeee10
.Leee10:
	.incrom 0xeee10, 0xeee17
.Leee17:
	.incrom 0xeee17, 0xeee1e
.Leee1e:
	.incrom 0xeee1e, 0xeee2a
.Leee2a:
	.incrom 0xeee2a, 0xeee36
.Leee36:
	.incrom 0xeee36, 0xeee3e
.Leee3e:
	.incrom 0xeee3e, 0xeee46
.Leee46:
	.incrom 0xeee46, 0xeee4e
.Leee4e:
	.incrom 0xeee4e, 0xeee56
.Leee56:
	.incrom 0xeee56, 0xeee5e
.Leee5e:
	.incrom 0xeee5e, 0xeee66
.Leee66:
	.incrom 0xeee66, 0xeee76
