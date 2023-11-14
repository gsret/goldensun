	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_eb754
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1ef0
	ldr	r1, [r5]
	sub	sp, #0xb0
	str	r1, [sp, #0x50]
	sub	r3, r5, #4
	ldr	r3, [r3]
	str	r3, [sp, #0x4c]
	ldr	r4, =0x7828
	ldr	r2, [r5, #4]
	add	r6, r3, r4
	str	r2, [sp, #0x44]
	str	r0, [r6]
	mov	r0, #0
	bl	Func_cd594
	bl	Func_c9048
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Leb7bc	@ 0x784
	strh	r3, [r2]
	ldr	r2, .Leb7c0	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r7, [sp, #0x4c]
	mov	r0, #0xef
	lsl	r0, #7
	mov	r3, #0
	add	r7, r0
	mov	r1, #0x90
	str	r3, [r7]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #1
	mov	r1, #0
	bl	Func_cd104
	ldr	r1, =0x175
	mov	r0, #9
	mov	r2, #1
	b	.Leb7d8

	.align	2, 0
.Leb7bc:
	.word	0x784
.Leb7c0:
	.word	0
	.pool

.Leb7d8:
	bl	Func_dbb24
	ldr	r2, =iwram_1ce0
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	ldr	r0, [r6]
	bl	Func_d6750
	ldr	r2, =REG_WININ
	ldr	r3, .Leb824	@ 0x2737
	strh	r3, [r2]
	ldr	r3, .Leb828	@ 0xca
	sub	r2, #8
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0
	ldr	r1, =0x3a
	mov	r0, #1
	bl	_Func_c08ec
	mov	r0, #1
	mov	r1, #1
	bl	Func_cd104
	ldr	r0, =0x73
	ldr	r1, [sp, #0x44]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x95
	ldr	r1, [sp, #0x4c]
	mov	r2, #1
	mov	r3, #1
	b	.Leb840

	.align	2, 0
.Leb824:
	.word	0x2737
.Leb828:
	.word	0xca
	.pool

.Leb840:
	bl	Func_e0524
	ldr	r3, =0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, =0x80
	add	r2, #0x20
	strh	r3, [r2]
	ldr	r3, =0x100e
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r3, =0x3f44
	mov	r1, #0
	sub	r2, #2
	strh	r3, [r2]
	str	r1, [sp, #0x40]
	str	r1, [sp, #0x3c]
	ldr	r3, =iwram_1ad0
	ldrh	r3, [r3, #4]
	str	r3, [sp, #0x38]
	ldr	r5, [r5, #0x10]
	mov	r2, #1
	str	r5, [sp, #0x34]
	str	r1, [sp, #0x30]
	str	r2, [r7]
	b	.Leb88c

	.pool_aligned

.Leb88c:
	ldr	r4, [sp, #0x4c]
	ldr	r7, =0x7784
	ldr	r0, [sp, #0x40]
	add	r3, r4, r7
	str	r0, [r3]
	ldr	r1, [sp, #0x34]
	mov	r3, #0xe1
	str	r2, [r1, #0x10]
	lsl	r3, #7
	mov	r2, #0
	mov	r8, r2
	mov	r6, #0x1f
	add	r5, r4, r3
.Leb8a6:
	bl	Func_4458
	and	r0, r6
	add	r0, #0x10
	str	r0, [r5]
	bl	Func_4458
	and	r0, r6
	add	r0, #0x30
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x10
	lsl	r0, #16
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r1, #0x30
	bl	Func_b50_from_thumb
	mov	r4, #1
	add	r8, r4
	add	r0, #2
	mov	r7, r8
	str	r0, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x40
	bne	.Leb8a6
	mov	r3, #3
	mov	r2, #7
	mov	r0, #0x2e
	mov	r1, #7
	str	r3, [sp]
	bl	Func_ed408
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r2, =REG_BG2CNT
	str	r3, [sp, #0x48]
	mov	r0, #0
	ldr	r3, .Leb904	@ 0x786
	mov	r11, r0
	strh	r3, [r2]
	b	.Lebc56

	.align	2, 0
.Leb904:
	.word	0x786
	.pool

.Leb914:
	mov	r3, r11
	sub	r3, #0x18
	cmp	r3, #0x1f
	bhi	.Leb922
	ldr	r1, [sp, #0x30]
	add	r1, #1
	str	r1, [sp, #0x30]
.Leb922:
	ldr	r2, [sp, #0x30]
	cmp	r2, #0x18
	ble	.Leb92c
	mov	r3, #0x18
	str	r3, [sp, #0x30]
.Leb92c:
	mov	r4, r11
	cmp	r4, #0x87
	bgt	.Leb944
	ldr	r7, =iwram_1ad0
	ldr	r0, [sp, #0x30]
	ldrh	r3, [r7, #4]
	mov	r1, r7
	sub	r3, r0
	strh	r3, [r1, #4]
	ldr	r2, [sp, #0x3c]
	add	r2, r0
	str	r2, [sp, #0x3c]
.Leb944:
	mov	r3, r11
	cmp	r3, #0x95
	bgt	.Leba18
	ldr	r3, =Data_edad8
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	mov	r7, r11
	str	r3, [sp, #0x5c]
	str	r4, [sp, #0x60]
	mov	r4, #0
	mov	r10, r4
	cmp	r7, #0x67
	ble	.Leb966
	ldr	r0, =0xfffff980
	lsl	r3, r7, #4
	add	r0, r3
	mov	r10, r0
.Leb966:
	mov	r3, r11
	sub	r3, #8
	cmp	r3, #0x17
	bhi	.Leb978
	ldr	r1, [sp, #0x40]
	ldr	r2, [sp, #0x30]
	add	r3, r1, r2
	sub	r3, #8
	str	r3, [sp, #0x40]
.Leb978:
	mov	r3, r11
	cmp	r3, #7
	ble	.Leb9be
	mov	r5, #0x60
	cmp	r3, #0x68
	bgt	.Leb986
	mov	r5, #0x20
.Leb986:
	mov	r4, r11
	ldr	r7, =0xffffe000
	lsl	r3, r4, #10
	add	r0, r3, r7
	ldr	r3, =0xffff
	mov	r1, #0x80
	and	r0, r3
	lsl	r1, #8
	cmp	r0, r1
	ble	.Leb99e
	ldr	r2, =0xffff8000
	add	r0, r2
.Leb99e:
	bl	Func_2322
	mov	r3, r5
	mul	r3, r0
	asr	r3, #16
	str	r3, [sp, #0x2c]
	mov	r4, r11
	mov	r3, #0x1f
	and	r3, r4
	cmp	r3, #8
	bne	.Leb9be
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x77a8
	mov	r3, #4
	add	r2, r7, r0
	str	r3, [r2]
.Leb9be:
	add	r3, sp, #0xa0
	mov	r2, #0
	str	r2, [r3, #0xc]
	mov	r2, #0xff
	lsl	r2, #16
	str	r2, [r3, #4]
	mov	r6, r3
	ldr	r2, [sp, #0x4c]
	ldr	r3, =0x77d8
	mov	r1, #0
	mov	r8, r1
	add	r7, sp, #0x5c
	add	r5, r2, r3
.Leb9d8:
	ldr	r3, =.Leef56
	mov	r4, r8
	ldr	r0, [sp, #0x40]
	ldrb	r3, [r3, r4]
	mov	r1, r10
	add	r3, r0, r3
	sub	r3, r1
	mov	r2, #0xe0
	lsl	r2, #16
	lsl	r3, #16
	add	r3, r2
	str	r3, [r6]
	ldr	r3, =.Leef5f
	ldrb	r3, [r3, r4]
	ldr	r4, [sp, #0x2c]
	mov	r0, #0x90
	sub	r3, r4
	lsl	r0, #15
	lsl	r3, #16
	add	r3, r0
	str	r3, [r6, #8]
	mov	r1, r6
	mov	r2, r7
	ldmia	r5!, {r0}
	mov	r3, #0
	bl	_Func_b168
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #9
	bne	.Leb9d8
.Leba18:
	mov	r3, r11
	cmp	r3, #0x1a
	bgt	.Lebab0
	ldr	r7, [sp, #0x3c]
	lsl	r3, #3
	add	r7, #4
	mov	r10, r3
	cmp	r7, #0xa
	ble	.Leba2c
	mov	r7, #0xa
.Leba2c:
	mov	r4, r10
	cmp	r4, #0x40
	ble	.Leba36
	mov	r0, #0x40
	mov	r10, r0
.Leba36:
	mov	r1, #0
	mov	r2, r10
	mov	r8, r1
	cmp	r2, #0
	beq	.Lebab0
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x3c]
	lsl	r3, #1
	str	r3, [sp, #0x28]
	add	r3, r4
	lsl	r3, #2
	add	r3, #0x30
	str	r3, [sp, #0x24]
	lsr	r3, r7, #31
	add	r3, r7, r3
	asr	r3, #1
	lsl	r0, r7, #1
	str	r3, [sp, #0x20]
	mov	r9, r0
.Leba5c:
	mov	r1, r8
	lsl	r6, r1, #10
	mov	r0, r6
	bl	Func_2322
	ldr	r3, [sp, #0x28]
	add	r3, #8
	mov	r5, r3
	mul	r5, r0
	ldr	r2, [sp, #0x3c]
	asr	r5, #16
	mov	r0, r6
	add	r5, r2
	bl	Func_231c
	ldr	r4, [sp, #0x24]
	mov	r3, r4
	mul	r3, r0
	mov	r2, r9
	ldr	r0, =Data_ede48
	ldr	r4, [sp, #0x20]
	sub	r2, #2
	ldrh	r1, [r0, r2]
	add	r5, #0x60
	ldr	r2, [sp, #0x44]
	asr	r3, #16
	sub	r5, r4
	mov	r0, r9
	add	r3, #0x40
	add	r1, r2, r1
	str	r0, [sp, #4]
	sub	r3, r7
	str	r7, [sp]
	ldr	r0, [sp, #0x50]
	mov	r2, r5
	ldr	r4, [sp, #0x48]
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	cmp	r8, r10
	bne	.Leba5c
.Lebab0:
	mov	r1, r11
	cmp	r1, #0x18
	bne	.Lebacc
	ldr	r3, [sp, #0x4c]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #2
	str	r3, [r2]
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x7784
	mov	r3, #0x32
	add	r2, r7, r0
	str	r3, [r2]
.Lebacc:
	mov	r1, r11
	cmp	r1, #0x1c
	bne	.Lebad8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lebb08	@ 0x784
	strh	r3, [r2]
.Lebad8:
	mov	r2, r11
	cmp	r2, #0x11
	ble	.Lebbbe
	ldr	r4, [sp, #0x4c]
	mov	r7, #0xe1
	mov	r3, #0
	lsl	r7, #7
	mov	r8, r3
	mov	r6, #0x1f
	add	r5, r4, r7
.Lebaec:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bne	.Lebb78
	mov	r1, #3
	mov	r0, r8
	bl	Func_b1c_from_thumb
	add	r0, #1
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	b	.Lebb40

	.align	2, 0
.Lebb08:
	.word	0x784
	.pool

.Lebb40:
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	ldr	r2, [sp, #0x44]
	sub	r3, r0
	add	r1, r2, r1
	ldr	r2, [r5]
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x50]
	ldr	r4, [sp, #0x48]
	bl	_call_via_r4
	ldr	r3, [r5]
	add	r3, #2
	ldr	r2, [r5, #0x10]
	str	r3, [r5]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #4
	cmp	r3, #0
	bge	.Lebb72
	add	r3, #0x3f
.Lebb72:
	asr	r3, #6
	str	r3, [r5, #0x10]
	b	.Lebb7c
.Lebb78:
	sub	r3, #1
	str	r3, [r5, #0x18]
.Lebb7c:
	ldr	r3, [r5]
	cmp	r3, #0x80
	bgt	.Lebb88
	ldr	r3, [r5, #0x18]
	cmp	r3, #1
	bne	.Lebbb2
.Lebb88:
	bl	Func_4458
	ldr	r7, [sp, #0x40]
	and	r0, r6
	add	r0, r7
	add	r0, #0xac
	str	r0, [r5]
	bl	Func_4458
	ldr	r1, [sp, #0x2c]
	and	r0, r6
	sub	r0, r1
	add	r0, #0x38
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x10
	lsl	r0, #15
	str	r0, [r5, #0x10]
.Lebbb2:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x30
	bne	.Lebaec
.Lebbbe:
	mov	r4, r11
	cmp	r4, #0x1f
	ble	.Lebc0e
	mov	r3, r11
	sub	r3, #0x20
	lsr	r2, r3, #31
	add	r3, r2
	asr	r5, r3, #1
	cmp	r5, #0x28
	ble	.Lebbd4
	mov	r5, #0x28
.Lebbd4:
	mov	r7, #0
	mov	r8, r7
	mov	r6, #0
	mov	r7, #0x78
.Lebbdc:
	bl	Func_4458
	mov	r3, #3
	and	r0, r3
	lsl	r1, r0, #1
	add	r1, r0
	mov	r3, #0x30
	ldr	r0, [sp, #0x4c]
	str	r3, [sp]
	lsl	r1, #9
	mov	r3, #0x20
	add	r1, r0, r1
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x50]
	mov	r3, r6
	sub	r2, r7, r5
	ldr	r4, [sp, #0x48]
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x12
	cmp	r1, #6
	bne	.Lebbdc
.Lebc0e:
	ldr	r3, [sp, #0x4c]
	ldr	r4, =0x77a8
	add	r2, r3, r4
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.Lebc3c
	sub	r3, #1
	str	r3, [r2]
	bl	Func_4458
	ldr	r3, .Lebc30	@ 7
	ldr	r7, =iwram_1ad0
	and	r0, r3
	add	r0, #0x1c
	strh	r0, [r7, #6]
	b	.Lebc42

	.align	2, 0
.Lebc30:
	.word	7
	.pool

.Lebc3c:
	ldr	r0, =iwram_1ad0
	mov	r3, #0x20
	strh	r3, [r0, #6]
.Lebc42:
	ldr	r1, [sp, #0x4c]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r4, #1
	add	r11, r4
.Lebc56:
	mov	r7, r11
	cmp	r7, #0x78
	beq	.Lebcb0
	mov	r0, #0
	str	r0, [sp, #0x2c]
	cmp	r7, #0
	bne	.Lebc6a
	mov	r0, #0x88
	bl	_Func_f9080
.Lebc6a:
	mov	r1, r11
	cmp	r1, #0x1a
	bne	.Lebc76
	mov	r0, #0x8d
	bl	_Func_f9080
.Lebc76:
	mov	r2, r11
	cmp	r2, #0x28
	bne	.Lebc82
	mov	r0, #0x9a
	bl	_Func_f9080
.Lebc82:
	mov	r3, r11
	cmp	r3, #0x48
	bne	.Lebc8e
	mov	r0, #0x9a
	bl	_Func_f9080
.Lebc8e:
	mov	r4, r11
	cmp	r4, #0x68
	bne	.Lebc9a
	mov	r0, #0x9a
	bl	_Func_f9080
.Lebc9a:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lebca8
	b	.Leb914
.Lebca8:
	mov	r7, r11
	cmp	r7, #0x10
	bgt	.Lebcb0
	b	.Leb914
.Lebcb0:
	add	r0, sp, #0x38
	ldr	r3, =iwram_1ad0
	ldrh	r0, [r0]
	strh	r0, [r3, #4]
	ldr	r1, [sp, #0x34]
	mov	r2, #0
	str	r2, [r1, #0x10]
	bl	Func_d67dc
	ldr	r2, =REG_WIN0H
	ldr	r3, .Lebcfc	@ 0xf0
	strh	r3, [r2]
	ldr	r3, [sp, #0x4c]
	ldr	r4, =0x77d8
	mov	r2, #0
	mov	r8, r2
	mov	r0, #0xc
	add	r1, r3, r4
.Lebcd4:
	ldmia	r1!, {r2}
	ldrb	r3, [r2, #9]
	mov	r7, #1
	orr	r3, r0
	add	r8, r7
	strb	r3, [r2, #9]
	mov	r2, r8
	cmp	r2, #9
	bne	.Lebcd4
	mov	r4, sp
	add	r4, #0x74
	mov	r3, #0xe0
	mov	r2, sp
	str	r4, [sp, #0x18]
	str	r3, [sp, #0x1c]
	mov	r1, #0
	mov	r3, r4
	add	r2, #0x82
	b	.Lebd14

	.align	2, 0
.Lebcfc:
	.word	0xf0
	.pool

.Lebd14:
	strb	r1, [r3]
	add	r3, #1
	cmp	r3, r2
	bne	.Lebd14
	mov	r7, sp
	add	r7, #0x84
	str	r7, [sp, #0x14]
	ldr	r5, [sp, #0x14]
	mov	r7, #0x1f
	add	r6, sp, #0x94
.Lebd28:
	bl	Func_4458
	and	r0, r7
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Lebd28
	mov	r0, #0
	mov	r2, #0xa0
	ldr	r3, =ewram_10018
	mov	r8, r0
	mov	r1, #0
	lsl	r2, #1
.Lebd42:
	mov	r4, #1
	add	r8, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Lebd42
	ldr	r7, [sp, #0x4c]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r2, r7, r0
	mov	r3, #2
	str	r3, [r2]
	add	r2, r7, r1
	mov	r3, #0x4b
	str	r3, [r2]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lebd94	@ 0x784
	strh	r3, [r2]
	ldr	r3, .Lebd98	@ 0x1010
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r3, =0xfffffe20
	mov	r2, #0
	str	r3, [sp, #0x10]
	mov	r11, r2
.Lebd76:
	mov	r4, r11
	cmp	r4, #0x17
	bgt	.Lebe3c
	ldr	r3, =Data_edae0
	ldr	r7, [sp, #0x1c]
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	sub	r7, #0x10
	mov	r0, r11
	str	r3, [sp, #0x54]
	str	r4, [sp, #0x58]
	str	r7, [sp, #0x1c]
	cmp	r0, #8
	bgt	.Lebdcc
	b	.Lebdb0

	.align	2, 0
.Lebd94:
	.word	0x784
.Lebd98:
	.word	0x1010
	.pool

.Lebdb0:
	mov	r1, #0x80
	lsl	r3, r0, #11
	lsl	r1, #7
	mov	r2, #0x80
	add	r0, r3, r1
	lsl	r2, #8
	cmp	r0, r2
	ble	.Lebdc4
	ldr	r4, =0xffffc000
	add	r0, r3, r4
.Lebdc4:
	bl	Func_2322
	lsl	r0, #6
	b	.Lebde8
.Lebdcc:
	mov	r7, r11
	mov	r1, #0x80
	lsl	r3, r7, #11
	lsl	r1, #7
	mov	r2, #0x80
	add	r0, r3, r1
	lsl	r2, #8
	cmp	r0, r2
	ble	.Lebde2
	ldr	r4, =0xffffc000
	add	r0, r3, r4
.Lebde2:
	bl	Func_2322
	lsl	r0, #5
.Lebde8:
	asr	r4, r0, #16
	add	r3, sp, #0x64
	mov	r2, #0
	str	r2, [r3, #0xc]
	mov	r2, #0xff
	lsl	r2, #16
	str	r2, [r3, #4]
	ldr	r0, [sp, #0x4c]
	ldr	r1, =0x77d8
	mov	r7, #0
	mov	r8, r7
	mov	r6, r3
	add	r7, sp, #0x54
	add	r5, r0, r1
.Lebe04:
	ldr	r3, =.Leef56
	mov	r2, r8
	ldr	r0, [sp, #0x1c]
	ldrb	r3, [r3, r2]
	add	r3, r0, r3
	lsl	r3, #16
	str	r3, [r6]
	ldr	r3, =.Leef5f
	ldrb	r3, [r3, r2]
	mov	r1, #0x90
	sub	r3, r4
	lsl	r1, #15
	lsl	r3, #16
	add	r3, r1
	str	r3, [r6, #8]
	mov	r2, r7
	mov	r3, #0
	ldmia	r5!, {r0}
	mov	r1, r6
	str	r4, [sp, #8]
	bl	_Func_b168
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	ldr	r4, [sp, #8]
	cmp	r3, #9
	bne	.Lebe04
.Lebe3c:
	mov	r4, r11
	cmp	r4, #8
	bne	.Lebe50
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x77a8
	add	r3, r7, r0
	str	r4, [r3]
	mov	r0, #0x91
	bl	_Func_f9080
.Lebe50:
	mov	r1, r11
	cmp	r1, #0xb
	bne	.Lebe5c
	mov	r0, #0x91
	bl	_Func_f9080
.Lebe5c:
	mov	r2, r11
	cmp	r2, #0x2e
	bne	.Lebe68
	mov	r0, #0x89
	bl	_Func_f9080
.Lebe68:
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x4c]
	mov	r3, #0
	mov	r8, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lebf3a
	mov	r0, #0
	mov	r7, #0x24
	str	r0, [sp, #0xc]
	mov	r9, r7
.Lebe80:
	ldr	r1, [sp, #0x18]
	mov	r4, r8
	ldrb	r3, [r1, r4]
	cmp	r3, #0
	bne	.Lebf1c
	ldr	r7, [sp, #0x4c]
	ldr	r3, [r7, r2]
	add	r5, sp, #0x94
	mov	r1, r9
	ldrsh	r0, [r3, r1]
	mov	r1, r5
	bl	Func_e3980
	ldr	r3, [r5]
	ldr	r4, [sp, #0x1c]
	cmp	r3, r4
	ble	.Lebf1c
	ldr	r7, [sp, #0x18]
	mov	r3, #1
	mov	r0, r8
	strb	r3, [r7, r0]
	ldr	r1, [sp, #0xc]
	ldr	r2, =ewram_10000
	mov	r10, r5
	mov	r6, #0
	mov	r7, #0xff
	add	r5, r1, r2
.Lebeb6:
	mov	r4, r10
	ldr	r3, [r4]
	lsl	r3, #15
	str	r3, [r5]
	ldr	r3, [r4, #4]
	sub	r3, #0x10
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0xc0
	lsl	r3, r0, #11
	ldr	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r5, #4]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #8
	add	r6, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r6, #0x20
	bne	.Lebeb6
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x7828
	add	r3, r7, r0
	ldr	r3, [r3]
	mov	r1, r9
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_b8228
	mov	r0, #0x86
	bl	_Func_f9080
.Lebf1c:
	ldr	r4, [sp, #0xc]
	mov	r7, #0xe0
	lsl	r7, #2
	add	r4, r7
	str	r4, [sp, #0xc]
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x4c]
	mov	r3, #2
	add	r9, r3
	ldr	r3, [r1, r2]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r8, r0
	cmp	r8, r3
	bne	.Lebe80
.Lebf3a:
	mov	r2, #0
	ldr	r5, =ewram_10000
	mov	r8, r2
	mov	r7, #3
	mov	r6, #6
.Lebf44:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	ble	.Lebf80
	ldr	r3, =Data_ede48
	ldrh	r1, [r3, #4]
	ldr	r3, [sp, #0x44]
	mov	r4, #2
	ldrsh	r2, [r5, r4]
	add	r1, r3, r1
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	sub	r2, #1
	sub	r3, #3
	str	r7, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x50]
	ldr	r4, [sp, #0x48]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Lebf80:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0xc0
	bne	.Lebf44
	mov	r2, r11
	cmp	r2, #0x30
	bne	.Lebf98
	mov	r0, #0x88
	bl	_Func_f9080
.Lebf98:
	mov	r3, r11
	cmp	r3, #0x28
	ble	.Lebff6
	ldr	r4, [sp, #0x4c]
	mov	r7, #0xef
	lsl	r7, #7
	ldr	r0, =0x7784
	add	r2, r4, r7
	mov	r3, #0
	ldr	r6, [sp, #0x10]
	str	r3, [r2]
	add	r2, r4, r0
	mov	r3, #0x4b
	mov	r1, #0
	mov	r5, #8
	str	r3, [r2]
	mov	r8, r1
	neg	r5, r5
.Lebfbc:
	bl	Func_4458
	mov	r3, #3
	and	r0, r3
	lsl	r1, r0, #1
	ldr	r2, [sp, #0x4c]
	ldr	r3, [sp, #0x14]
	add	r1, r0
	mov	r4, r8
	lsl	r1, #9
	add	r1, r2, r1
	ldrb	r2, [r3, r4]
	mov	r3, #0x30
	str	r3, [sp]
	sub	r2, r6
	mov	r3, #0x20
	str	r3, [sp, #4]
	add	r2, #0x78
	mov	r3, r5
	ldr	r0, [sp, #0x50]
	ldr	r7, [sp, #0x48]
	bl	_call_via_r7
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #8
	cmp	r1, #0x10
	bne	.Lebfbc
.Lebff6:
	mov	r2, r11
	cmp	r2, #0x40
	ble	.Lec008
	ldr	r3, [sp, #0x4c]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #2
	str	r3, [r2]
.Lec008:
	mov	r7, r11
	cmp	r7, #0x3a
	bne	.Lec044
	ldr	r3, =0x7828
	ldr	r1, [sp, #0x4c]
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Lec044
	ldr	r2, =0x7828
	mov	r6, #0x24
	add	r5, r1, r2
.Lec024:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0xe
	sub	r3, #1
	mov	r2, #5
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r7, #1
	ldr	r3, [r3, #0x14]
	add	r8, r7
	add	r6, #2
	cmp	r8, r3
	bne	.Lec024
.Lec044:
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r1, =0x7824
	ldr	r0, [sp, #0x4c]
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	ldr	r2, [sp, #0x10]
	add	r11, r3
	add	r2, #0xc
	mov	r4, r11
	str	r2, [sp, #0x10]
	cmp	r4, #0x60
	beq	.Lec072
	b	.Lebd76
.Lec072:
	mov	r0, #0x86
	bl	_Func_bd7dc
	ldr	r1, =0x77d8
	ldr	r0, [sp, #0x4c]
	mov	r7, #0
	mov	r8, r7
	add	r6, r0, r1
.Lec082:
	ldmia	r6!, {r0}
	bl	_Func_bdd4
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #9
	bne	.Lec082
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0xb0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_eb754

.thumb_func_start Func_ec0e0
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lec0e8	@ 0x100
	strh	r3, [r2]
	bx	lr

	.align	2, 0
.Lec0e8:
	.word	0x100
.func_end Func_ec0e0

.thumb_func_start Func_ec0f0
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lec0f8	@ 0x80
	strh	r3, [r2]
	bx	lr

	.align	2, 0
.Lec0f8:
	.word	0x80
.func_end Func_ec0f0

.thumb_func_start Func_ec100
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1ef0
	ldr	r1, [r6]
	sub	sp, #0x74
	str	r1, [sp, #0x44]
	sub	r3, r6, #4
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, =0x7828
	ldr	r2, [r6, #4]
	add	r3, r11
	str	r2, [sp, #0x40]
	str	r0, [r3]
	mov	r0, #0
	mov	r8, r3
	bl	Func_cd594
	bl	Func_c9048
	ldr	r2, .Lec170	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	mov	r5, #0x90
	strh	r2, [r3]
	lsl	r5, #3
	add	r3, #2
	strh	r2, [r3]
	mov	r1, r5
	ldr	r0, =Func_ec0e0
	bl	Func_41d8
	ldr	r2, =Func_ec0f0
	mov	r0, #2
	mov	r1, #0
	bl	Func_307c
	mov	r4, #0xef
	lsl	r4, #7
	add	r4, r11
	mov	r3, #0
	str	r3, [r4]
	mov	r1, r5
	ldr	r0, =Func_cd260
	mov	r10, r4
	bl	Func_41d8
	ldr	r2, =REG_WININ
	ldr	r3, .Lec174	@ 0x2137
	b	.Lec190

	.align	2, 0
.Lec170:
	.word	0
.Lec174:
	.word	0x2137
	.pool

.Lec190:
	mov	r1, #0
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_cd104
	ldr	r3, =0xf0f0
	ldr	r2, =REG_WIN0H
	mov	r7, r8
	strh	r3, [r2]
	ldr	r0, [r7]
	bl	Func_d6750
	mov	r1, #0xbd
	lsl	r1, #1
	mov	r0, #8
	mov	r2, #1
	bl	Func_dbb24
	ldr	r2, =iwram_1ce0
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =0x3d
	mov	r0, #1
	mov	r2, #0
	bl	_Func_c08ec
	ldr	r0, =0x73
	ldr	r1, [sp, #0x40]
	mov	r2, #0
	mov	r3, #0
	b	.Lec1e8

	.pool_aligned

.Lec1e8:
	bl	Func_e0524
	ldr	r0, =0x6e
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r1, =0x4e20
	ldr	r0, =0x76
	add	r1, r11
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r3, .Lec23c	@ 0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Lec240	@ 0x80
	add	r2, #0x20
	strh	r3, [r2]
	ldr	r3, .Lec244	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r3, .Lec248	@ 0x3f44
	sub	r2, #2
	strh	r3, [r2]
	ldr	r4, =0xfff80000
	ldr	r3, =0xfffc0000
	mov	r1, #0x8c
	mov	r2, #0xc8
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #16
	str	r0, [sp, #0x3c]
	str	r1, [sp, #0x38]
	str	r2, [sp, #0x34]
	str	r3, [sp, #0x30]
	str	r4, [sp, #0x2c]
	ldr	r3, =iwram_1ad0
	b	.Lec264

	.align	2, 0
.Lec23c:
	.word	0x7741
.Lec240:
	.word	0x80
.Lec244:
	.word	0x1010
.Lec248:
	.word	0x3f44
	.pool

.Lec264:
	ldrh	r3, [r3, #4]
	str	r3, [sp, #0x28]
	ldr	r2, =0x7784
	ldr	r7, [r6, #0x10]
	mov	r5, #2
	mov	r0, r10
	add	r2, r11
	mov	r3, #0x4b
	str	r7, [sp, #0x24]
	str	r5, [r0]
	str	r3, [r2]
	ldr	r1, [sp, #0x3c]
	mov	r3, #3
	str	r1, [r7, #0x10]
	mov	r2, #7
	mov	r1, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x18]
	mov	r1, #7
	str	r3, [sp, #0x50]
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x1c]
	mov	r2, sp
	add	r2, #0x50
	str	r2, [sp, #0x18]
	str	r3, [r2, #4]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lec2e4	@ 0x784
	strh	r3, [r2]
	mov	r3, #0
	mov	r8, r3
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	neg	r1, r1
	lsl	r2, #3
.Lec2bc:
	mov	r4, #1
	add	r8, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Lec2bc
	mov	r7, #0xe1
	mov	r6, #0
	lsl	r7, #7
	mov	r8, r6
	add	r7, r11
.Lec2d2:
	bl	Func_4458
	ldr	r6, =0x3fff
	and	r6, r0
	mov	r0, #0x80
	lsl	r0, #8
	add	r6, r0
	b	.Lec2f8

	.align	2, 0
.Lec2e4:
	.word	0x784
	.pool

.Lec2f8:
	bl	Func_4458
	mov	r5, #0x7f
	and	r5, r0
	mov	r0, r6
	bl	Func_2322
	add	r5, #0xff
	mov	r3, r5
	mul	r3, r0
	asr	r3, #2
	str	r3, [r7]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	asr	r2, r3, #2
	ldr	r3, [r7]
	neg	r3, r3
	str	r2, [r7, #4]
	cmp	r3, #0
	bge	.Lec328
	add	r3, #0x1f
.Lec328:
	asr	r3, #5
	str	r3, [r7, #0xc]
	neg	r3, r2
	cmp	r3, #0
	bge	.Lec334
	add	r3, #0x1f
.Lec334:
	mov	r1, #1
	asr	r3, #5
	add	r8, r1
	str	r3, [r7, #0x10]
	mov	r2, r8
	mov	r3, #0
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r2, #0x20
	bne	.Lec2d2
	ldr	r7, =ewram_10000
	mov	r8, r3
.Lec34c:
	bl	Func_4458
	mov	r3, #0xff
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	mov	r4, #0x80
	lsl	r4, #16
	asr	r3, #3
	add	r3, r4
	str	r3, [r7]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r6, #0xc0
	asr	r3, #4
	lsl	r6, #15
	add	r3, r6
	str	r3, [r7, #4]
	bl	Func_4458
	ldr	r3, =0x1fff
	and	r3, r0
	ldr	r0, =0xfffff800
	neg	r3, r3
	add	r3, r0
	lsl	r3, #5
	str	r3, [r7, #0xc]
	bl	Func_4458
	ldr	r3, =0xfff
	ldr	r1, =0xffffe800
	and	r3, r0
	neg	r3, r3
	add	r3, r1
	lsl	r3, #5
	str	r3, [r7, #0x10]
	mov	r3, #0
	str	r3, [r7, #0x18]
	mov	r2, #1
	mov	r3, #0xb2
	add	r8, r2
	lsl	r3, #2
	add	r7, #0x1c
	cmp	r8, r3
	bne	.Lec34c
	mov	r4, #0
	mov	r10, r4
.Lec3c2:
	mov	r6, r10
	cmp	r6, #0x18
	bne	.Lec3ce
	mov	r0, #0xa2
	bl	_Func_f9080
.Lec3ce:
	mov	r7, r10
	cmp	r7, #0x4c
	bne	.Lec3da
	mov	r0, #0xa4
	bl	_Func_f9080
.Lec3da:
	mov	r0, r10
	cmp	r0, #0x9a
	bne	.Lec3e6
	mov	r0, #0x8e
	bl	_Func_f9080
.Lec3e6:
	mov	r1, r10
	cmp	r1, #0xde
	bne	.Lec3f2
	mov	r0, #0x91
	bl	_Func_f9080
.Lec3f2:
	mov	r2, r10
	cmp	r2, #0xf
	bhi	.Lec43e
	ldr	r7, =ewram_10000
	cmp	r2, #1
	bne	.Lec426
	ldr	r5, =ewram_10002
	mov	r6, r5
	mov	r3, #0x3f
	add	r6, #0x80
.Lec406:
	str	r3, [sp, #0xc]
	bl	Func_4458
	ldr	r3, [sp, #0xc]
	and	r0, r3
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Lec406
	ldr	r3, .Lec44c	@ 0
	mov	r1, #0x90
	strh	r3, [r7]
	ldr	r0, =Func_d66cc
	lsl	r1, #3
	bl	Func_41d8
.Lec426:
	ldr	r4, [sp, #0x3c]
	ldrh	r3, [r7]
	mov	r6, r10
	add	r3, r4
	add	r4, #3
	strh	r3, [r7]
	str	r4, [sp, #0x3c]
	cmp	r6, #0xf
	bne	.Lec43e
	ldr	r0, =Func_d66cc
	bl	Func_4278
.Lec43e:
	mov	r7, r10
	cmp	r7, #0x15
	bgt	.Lec446
	b	.Lec596
.Lec446:
	ldr	r3, =Data_edae8
	b	.Lec474

	.align	2, 0
.Lec44c:
	.word	0
	.pool

.Lec474:
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	str	r3, [sp, #0x48]
	str	r4, [sp, #0x4c]
	cmp	r7, #0x53
	bgt	.Lec4d8
	cmp	r7, #0x30
	ble	.Lec496
	ldr	r0, [sp, #0x30]
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	cmp	r3, #0
	bge	.Lec492
	add	r3, #0x3f
.Lec492:
	asr	r3, #6
	str	r3, [sp, #0x30]
.Lec496:
	ldr	r1, [sp, #0x2c]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r3, #2
	cmp	r3, #0
	bge	.Lec4a4
	add	r3, #0x3f
.Lec4a4:
	asr	r3, #6
	str	r3, [sp, #0x2c]
	ldr	r2, [sp, #0x34]
	mov	r3, #0x84
	lsl	r3, #16
	cmp	r2, r3
	ble	.Lec4bc
	ldr	r4, [sp, #0x2c]
	ldr	r6, =0xffffe000
	add	r4, r6
	str	r4, [sp, #0x2c]
	b	.Lec4c6
.Lec4bc:
	ldr	r7, [sp, #0x2c]
	mov	r0, #0x80
	lsl	r0, #6
	add	r7, r0
	str	r7, [sp, #0x2c]
.Lec4c6:
	ldr	r1, [sp, #0x38]
	ldr	r3, [sp, #0x34]
	ldr	r2, [sp, #0x30]
	ldr	r4, [sp, #0x2c]
	add	r1, r2
	add	r3, r4
	str	r1, [sp, #0x38]
	str	r3, [sp, #0x34]
	b	.Lec540
.Lec4d8:
	mov	r6, r10
	cmp	r6, #0xaa
	bgt	.Lec540
	cmp	r6, #0x6b
	bgt	.Lec4ec
	ldr	r7, [sp, #0x30]
	mov	r0, #0x80
	lsl	r0, #6
	add	r7, r0
	str	r7, [sp, #0x30]
.Lec4ec:
	ldr	r1, [sp, #0x30]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r3, #2
	cmp	r3, #0
	bge	.Lec4fa
	add	r3, #0x3f
.Lec4fa:
	ldr	r2, [sp, #0x38]
	asr	r3, #6
	add	r2, r3
	str	r3, [sp, #0x30]
	mov	r3, r10
	str	r2, [sp, #0x38]
	cmp	r3, #0x75
	bgt	.Lec540
	mov	r6, #0x8a
	ldr	r4, [sp, #0x34]
	lsl	r6, #16
	cmp	r4, r6
	ble	.Lec51e
	ldr	r7, [sp, #0x2c]
	ldr	r0, =0xffffe000
	add	r7, r0
	str	r7, [sp, #0x2c]
	b	.Lec528
.Lec51e:
	ldr	r1, [sp, #0x2c]
	mov	r2, #0x80
	lsl	r2, #6
	add	r1, r2
	str	r1, [sp, #0x2c]
.Lec528:
	ldr	r4, [sp, #0x2c]
	lsl	r3, r4, #3
	sub	r3, r4
	lsl	r3, #3
	cmp	r3, #0
	bge	.Lec536
	add	r3, #0x3f
.Lec536:
	ldr	r6, [sp, #0x34]
	asr	r3, #6
	add	r6, r3
	str	r3, [sp, #0x2c]
	str	r6, [sp, #0x34]
.Lec540:
	add	r2, sp, #0x64
	mov	r3, #0
	ldr	r5, =0x77d8
	str	r3, [r2, #0xc]
	str	r3, [r2, #4]
	mov	r8, r3
	add	r7, sp, #0x48
	mov	r6, r2
	add	r5, r11
.Lec552:
	ldr	r3, =.Leef68
	mov	r0, r8
	ldrb	r2, [r3, r0]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, [sp, #0x38]
	asr	r3, #1
	ldr	r2, =0xffe00000
	lsl	r3, #16
	add	r3, r1
	add	r3, r2
	str	r3, [r6]
	ldr	r3, =.Leef70
	ldrb	r2, [r3, r0]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r4, [sp, #0x34]
	asr	r3, #1
	ldr	r0, =0xffe80000
	lsl	r3, #16
	add	r3, r4
	add	r3, r0
	str	r3, [r6, #8]
	mov	r1, r6
	mov	r2, r7
	ldmia	r5!, {r0}
	mov	r3, #0
	bl	_Func_b168
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #8
	bne	.Lec552
.Lec596:
	mov	r3, r10
	cmp	r3, #0x4c
	bne	.Lec61a
	mov	r4, #0
	ldr	r7, =ewram_10000
	mov	r8, r4
.Lec5a2:
	mov	r6, #1
	ldr	r3, [r7, #0x18]
	neg	r6, r6
	cmp	r3, r6
	bne	.Lec60c
	bl	Func_4458
	mov	r3, #0xff
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	mov	r0, #0x80
	lsl	r0, #15
	asr	r3, #3
	add	r3, r0
	str	r3, [r7]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r1, #0xc0
	lsl	r1, #15
	asr	r3, #4
	add	r3, r1
	str	r3, [r7, #4]
	bl	Func_4458
	mov	r2, #0x3f
	and	r2, r0
	mov	r3, #0x20
	sub	r3, r2
	lsl	r3, #12
	str	r3, [r7, #0xc]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	neg	r3, r3
	sub	r3, #0x10
	lsl	r3, #13
	str	r3, [r7, #0x10]
	mov	r3, #0
	str	r3, [r7, #0x18]
.Lec60c:
	mov	r2, #1
	mov	r3, #0x80
	add	r8, r2
	lsl	r3, #3
	add	r7, #0x1c
	cmp	r8, r3
	bne	.Lec5a2
.Lec61a:
	mov	r4, r10
	cmp	r4, #0x98
	bne	.Lec63a
	ldr	r2, =Func_ec0f0
	mov	r0, #2
	mov	r1, #0x60
	bl	Func_307c
	ldr	r2, =0x77b4
	mov	r3, #0x18
	add	r2, r11
	str	r3, [r2]
	ldr	r2, =0x77b8
	mov	r3, #0
	add	r2, r11
	str	r3, [r2]
.Lec63a:
	mov	r6, #0x98
	neg	r6, r6
	add	r6, r10
	mov	r9, r6
	cmp	r6, #0x57
	bhi	.Lec6b6
	mov	r6, #0xe1
	mov	r7, #0
	lsl	r6, #7
	mov	r8, r7
	add	r6, r11
.Lec650:
	mov	r3, r8
	cmp	r3, #0
	bge	.Lec658
	add	r3, #3
.Lec658:
	asr	r2, r3, #2
	mov	r3, r2
	add	r3, #0x98
	cmp	r10, r3
	blt	.Lec6aa
	add	r3, #0x20
	cmp	r10, r3
	bge	.Lec6aa
	mov	r0, #2
	ldrsh	r2, [r6, r0]
	mov	r4, r8
	mov	r0, #3
	and	r0, r4
	add	r0, #5
	lsl	r5, r0, #1
	ldr	r4, =Data_ede5c
	mov	r1, #6
	ldrsh	r3, [r6, r1]
	sub	r1, r5, #2
	ldrh	r1, [r4, r1]
	ldr	r7, =0x4e20
	add	r2, #0x70
	add	r3, #0x3e
	add	r1, r11
	sub	r2, r0
	sub	r3, r0
	add	r1, r7
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x50]
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
	ldr	r2, [r6]
	ldr	r3, [r6, #0xc]
	add	r2, r3
	str	r2, [r6]
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #4]
	add	r2, r3
	str	r2, [r6, #4]
.Lec6aa:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x1c
	cmp	r1, #0x20
	bne	.Lec650
.Lec6b6:
	mov	r2, r10
	cmp	r2, #0xde
	bne	.Lec752
	mov	r5, #0xe1
	mov	r3, #0
	lsl	r5, #7
	mov	r8, r3
	mov	r6, #0xf
	add	r5, r11
.Lec6c8:
	bl	Func_4458
	and	r0, r6
	sub	r0, #8
	str	r0, [r5]
	bl	Func_4458
	ldr	r3, [r5]
	and	r0, r6
	sub	r0, #8
	str	r0, [r5, #4]
	cmp	r3, #0
	bge	.Lec6e6
	sub	r3, #4
	b	.Lec6e8
.Lec6e6:
	add	r3, #4
.Lec6e8:
	str	r3, [r5]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bge	.Lec728
	sub	r3, #4
	b	.Lec72a

	.pool_aligned

.Lec728:
	add	r3, #4
.Lec72a:
	str	r3, [r5, #4]
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	mov	r3, #6
	mov	r4, #1
	neg	r3, r3
	add	r8, r4
	add	r1, #0x64
	add	r2, #0x34
	str	r3, [r5, #0xc]
	mov	r7, r8
	mov	r3, #0
	str	r1, [r5]
	str	r2, [r5, #4]
	str	r1, [r5, #8]
	str	r2, [r5, #0x10]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x40
	bne	.Lec6c8
.Lec752:
	mov	r0, r10
	cmp	r0, #0xdd
	ble	.Lec7b6
	mov	r5, #0xe1
	mov	r1, #0
	lsl	r5, #7
	ldr	r7, .Lecabc	@ Data_ede5c
	mov	r8, r1
	mov	r6, #2
	add	r5, r11
.Lec766:
	mov	r2, r8
	lsr	r3, r2, #31
	add	r3, r8
	asr	r3, #1
	add	r3, #0xde
	cmp	r10, r3
	blt	.Lec7aa
	ldrh	r1, [r7]
	ldr	r3, .Lecac0	@ 0x4e20
	add	r1, r11
	ldr	r2, [r5]
	add	r1, r3
	ldr	r3, [r5, #4]
	sub	r2, #1
	sub	r3, #1
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r4, [sp, #0x50]
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
	ldr	r2, [r5]
	ldr	r3, [r5, #0xc]
	add	r2, r3
	str	r2, [r5]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #0x10]
	add	r3, r2
	str	r3, [r5, #4]
	cmp	r3, #0
	bge	.Lec7aa
	ldr	r3, [r5, #8]
	str	r2, [r5, #4]
	str	r3, [r5]
.Lec7aa:
	mov	r4, #1
	add	r8, r4
	mov	r0, r8
	add	r5, #0x1c
	cmp	r0, #0x40
	bne	.Lec766
.Lec7b6:
	mov	r1, r10
	cmp	r1, #0xaf
	ble	.Lec82a
	mov	r6, #5
	cmp	r1, #0xdd
	ble	.Lec7ce
	mov	r3, r10
	sub	r3, #0xdf
	mov	r6, #0x3c
	cmp	r3, #1
	bls	.Lec7ce
	mov	r6, #0x28
.Lec7ce:
	cmp	r6, #0x3c
	ble	.Lec7d4
	mov	r6, #0x3c
.Lec7d4:
	mov	r2, #0
	mov	r8, r2
	cmp	r6, #0
	beq	.Lec82a
	lsl	r7, r6, #1
.Lec7de:
	mov	r5, r8
	add	r5, #1
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r1, r3, #1
	lsl	r3, r1, #2
	sub	r4, r7, r3
	cmp	r4, #0xb
	bgt	.Lec7f2
	mov	r4, #0xc
.Lec7f2:
	cmp	r4, #0x3f
	ble	.Lec7f8
	mov	r4, #0x3f
.Lec7f8:
	mov	r3, #1
	mov	r0, r8
	and	r3, r0
	cmp	r3, #0
	beq	.Lec804
	neg	r1, r1
.Lec804:
	lsr	r2, r1, #31
	mov	r0, r1
	add	r2, r1, r2
	add	r1, #1
	lsr	r3, r1, #31
	add	r1, r3
	asr	r1, #1
	asr	r2, #1
	mov	r3, #0x3f
	sub	r3, r1
	add	r0, #0x30
	add	r2, #0x6f
	mov	r1, #0
	mov	r8, r5
	str	r4, [sp]
	bl	Func_cde90
	cmp	r8, r6
	bne	.Lec7de
.Lec82a:
	mov	r1, r9
	cmp	r1, #0x27
	bhi	.Lec862
	lsr	r3, r1, #31
	add	r3, r9
	asr	r3, #1
	add	r4, r3, #1
	cmp	r4, #4
	ble	.Lec83e
	mov	r4, #4
.Lec83e:
	lsl	r0, r4, #1
	ldr	r2, .Lecabc	@ Data_ede5c
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, .Lecac0	@ 0x4e20
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r11
	ldr	r6, [sp, #0x18]
	add	r1, r2
	mov	r3, #0x3c
	mov	r2, #0x6c
	sub	r2, r4
	sub	r3, r4
	ldr	r0, [sp, #0x44]
	ldr	r4, [r6, #4]
	bl	_call_via_r4
.Lec862:
	mov	r2, r10
	sub	r2, #0xc0
	cmp	r2, #7
	bhi	.Lec89c
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	add	r4, r3, #3
	cmp	r4, #6
	ble	.Lec878
	mov	r4, #6
.Lec878:
	lsl	r0, r4, #1
	ldr	r2, .Lecabc	@ Data_ede5c
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r7, .Lecac0	@ 0x4e20
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x18]
	add	r1, r11
	mov	r2, #0x6c
	mov	r3, #0x3c
	sub	r2, r4
	sub	r3, r4
	add	r1, r7
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
.Lec89c:
	mov	r1, r10
	cmp	r1, #0xc7
	ble	.Lec90e
	mov	r5, r10
	sub	r5, #0xc8
	mov	r3, r5
	cmp	r5, #0
	bge	.Lec8b0
	mov	r3, r10
	sub	r3, #0xc5
.Lec8b0:
	asr	r6, r3, #2
	add	r4, r6, #5
	cmp	r4, #8
	ble	.Lec8ba
	mov	r4, #8
.Lec8ba:
	lsl	r0, r4, #1
	ldr	r7, .Lecabc	@ Data_ede5c
	sub	r3, r0, #2
	ldrh	r1, [r7, r3]
	ldr	r2, .Lecac0	@ 0x4e20
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r11
	ldr	r0, [sp, #0x18]
	add	r1, r2
	mov	r3, #0x3c
	mov	r2, #0x6c
	sub	r2, r4
	sub	r3, r4
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
	mov	r1, r10
	cmp	r1, #0xd5
	bgt	.Lec90e
	add	r4, r6, #1
	cmp	r4, #4
	ble	.Lec8ec
	mov	r4, #4
.Lec8ec:
	lsl	r0, r4, #1
	sub	r3, r0, #2
	ldrh	r1, [r7, r3]
	ldr	r2, .Lecac0	@ 0x4e20
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r11
	ldr	r6, [sp, #0x18]
	add	r1, r2
	mov	r3, #0x34
	mov	r2, #0x64
	sub	r2, r4
	sub	r3, r4
	ldr	r0, [sp, #0x44]
	ldr	r4, [r6, #4]
	bl	_call_via_r4
.Lec90e:
	mov	r3, r10
	sub	r3, #0xd6
	cmp	r3, #7
	bhi	.Lec94a
	mov	r1, r3
	cmp	r1, #0
	bge	.Lec920
	mov	r1, r10
	sub	r1, #0xd3
.Lec920:
	asr	r3, r1, #2
	cmp	r3, #2
	ble	.Lec928
	mov	r3, #2
.Lec928:
	lsl	r1, r3, #3
	add	r1, r3
	mov	r3, #0x30
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x18]
	lsl	r1, #8
	mov	r7, #0x80
	add	r1, r11
	lsl	r7, #3
	ldr	r4, [r0, #4]
	add	r1, r7
	ldr	r0, [sp, #0x44]
	mov	r2, #0x3f
	mov	r3, #0x12
	bl	_call_via_r4
.Lec94a:
	mov	r1, r10
	cmp	r1, #0xdd
	ble	.Lec9a4
	mov	r3, r10
	sub	r3, #0xde
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r5, r3
	cmp	r3, #0
	bge	.Lec962
	add	r5, r3, #3
.Lec962:
	asr	r5, #2
	lsl	r5, #2
	sub	r5, r3, r5
	add	r5, #3
	lsl	r1, r5, #3
	add	r1, r5
	lsl	r1, #8
	mov	r2, #0x80
	lsl	r2, #3
	mov	r6, #0x30
	add	r1, r11
	add	r1, r2
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r4, [sp, #0x50]
	ldr	r0, [sp, #0x44]
	mov	r2, #0x48
	mov	r3, #0x1e
	bl	_call_via_r4
	cmp	r5, #5
	bne	.Lec9a4
	mov	r1, #0xb0
	lsl	r1, #5
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r4, [sp, #0x50]
	ldr	r0, [sp, #0x44]
	add	r1, r11
	mov	r2, #0x42
	mov	r3, #0x16
	bl	_call_via_r4
.Lec9a4:
	mov	r3, r10
	cmp	r3, #0x1b
	ble	.Leca2a
	ldr	r4, [sp, #0x18]
	ldr	r4, [r4, #4]
	mov	r6, #0
	ldr	r5, =ewram_10000
	mov	r9, r4
	mov	r8, r6
	mov	r7, #3
.Lec9b8:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Leca1c
	mov	r1, #3
	mov	r0, r8
	bl	Func_b1c_from_thumb
	add	r0, #2
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x40]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x44]
	bl	_call_via_r9
	mov	r3, r8
	ldr	r2, =.Leef78
	and	r3, r7
	lsl	r3, #2
	ldr	r2, [r2, r3]
	mov	r0, r5
	mov	r1, #0x3e
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	ble	.Leca1c
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	cmp	r3, #0x68
	ble	.Leca1c
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Leca1c:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r5, #0x1c
	cmp	r8, r2
	bne	.Lec9b8
.Leca2a:
	mov	r3, #0
	mov	r8, r3
	mov	r5, #0x20
.Leca30:
	mov	r4, r8
	mov	r2, r10
	lsl	r1, r4, #5
	cmp	r2, #0
	bge	.Leca3c
	add	r2, #3
.Leca3c:
	mov	r3, #0x1f
	asr	r2, #2
	and	r2, r3
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r6, [sp, #0x18]
	add	r2, r1, r2
	mov	r7, #1
	sub	r2, #0x20
	ldr	r4, [r6, #4]
	ldr	r0, [sp, #0x44]
	mov	r1, r11
	mov	r3, #0x58
	add	r8, r7
	bl	_call_via_r4
	mov	r0, r8
	cmp	r0, #5
	bne	.Leca30
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0xf4
	beq	.Leca8e
	cmp	r2, #0x10
	bgt	.Leca80
	b	.Lec3c2
.Leca80:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Leca8e
	b	.Lec3c2
.Leca8e:
	add	r4, sp, #0x28
	ldr	r3, =iwram_1ad0
	ldrh	r4, [r4]
	strh	r4, [r3, #4]
	ldr	r6, [sp, #0x24]
	mov	r2, #0
	str	r2, [r6, #0x10]
	mov	r1, #0
	mov	r0, #2
	bl	Func_307c
	bl	Func_d67dc
	ldr	r0, =Func_ec0e0
	bl	Func_4278
	ldr	r2, =REG_WIN0H
	ldr	r3, .Lecac4	@ 0xf0
	strh	r3, [r2]
	mov	r2, #0xef
	lsl	r2, #7
	b	.Lecae8

	.align	2, 0
.Lecabc:
	.word	Data_ede5c
.Lecac0:
	.word	0x4e20
.Lecac4:
	.word	0xf0
	.pool

.Lecae8:
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	str	r3, [r2]
	mov	r7, #0
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r8, r7
	mov	r1, #0
	lsl	r2, #3
.Lecb02:
	mov	r0, #1
	add	r8, r0
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Lecb02
	mov	r5, #0xe1
	mov	r1, #0
	lsl	r5, #7
	mov	r8, r1
	mov	r6, #0
	add	r5, r11
	mov	r7, #0x1f
.Lecb1c:
	bl	Func_4458
	mov	r2, #1
	and	r0, r7
	add	r8, r2
	add	r0, #0x20
	mov	r3, r8
	str	r0, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r3, #0x10
	bne	.Lecb1c
	ldr	r2, =0x7828
	add	r2, r11
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r8, r4
	cmp	r3, #0
	beq	.Lecb7a
	mov	r5, #0xe1
	lsl	r5, #7
	mov	r7, r2
	add	r6, sp, #0x58
	add	r5, r11
	mov	r4, #0x24
.Lecb52:
	ldr	r3, [r7]
	ldrsh	r0, [r3, r4]
	mov	r1, r6
	str	r4, [sp, #8]
	bl	Func_e396c
	ldr	r3, [r6]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r7]
	ldr	r4, [sp, #8]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r5, #0x1c
	add	r4, #2
	cmp	r8, r3
	bne	.Lecb52
.Lecb7a:
	mov	r2, #1
	mov	r3, #1
	ldr	r0, =0x6f
	mov	r1, r11
	bl	Func_e0524
	ldr	r0, =0x121
	bl	_Func_f9080
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lecbb8	@ 0x80
	strh	r3, [r2]
	ldr	r3, .Lecbbc	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	mov	r3, #0
	mov	r10, r3
.Lecb9c:
	mov	r4, r10
	cmp	r4, #0x60
	bne	.Lecba8
	mov	r0, #0x86
	bl	_Func_bd7dc
.Lecba8:
	ldr	r7, [sp, #0x18]
	str	r7, [sp, #0x14]
	mov	r7, #0xe1
	mov	r6, #0
	lsl	r7, #7
	mov	r8, r6
	add	r7, r11
	b	.Lecbd8

	.align	2, 0
.Lecbb8:
	.word	0x80
.Lecbbc:
	.word	0x1010
	.pool

.Lecbd8:
	mov	r0, r8
	lsl	r5, r0, #4
	add	r3, r5, #7
	cmp	r10, r3
	bne	.Lecbe8
	mov	r0, #0x9a
	bl	_Func_f9080
.Lecbe8:
	cmp	r10, r5
	bge	.Lecbee
	b	.Lecd06
.Lecbee:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0x1f
	ble	.Lecbf6
	b	.Lecd06
.Lecbf6:
	mov	r1, r10
	lsl	r0, r1, #4
	mov	r1, #0x68
	bl	Func_b1c_from_thumb
	mov	r6, #0x68
	ldr	r3, [r7, #4]
	mov	r4, #0x11
	mov	r5, r0
	ldr	r2, [r7]
	ldr	r0, [sp, #0x14]
	str	r6, [sp, #4]
	str	r4, [sp]
	add	r3, r5
	ldr	r4, [r0, #4]
	sub	r2, #8
	ldr	r0, [sp, #0x44]
	sub	r3, #0xd8
	mov	r1, r11
	bl	_call_via_r4
	ldr	r3, [r7, #4]
	mov	r1, #0x11
	add	r3, r5
	sub	r5, r6, r5
	ldr	r2, [r7]
	ldr	r6, [sp, #0x14]
	str	r1, [sp]
	str	r5, [sp, #4]
	sub	r2, #8
	sub	r3, #0x70
	ldr	r4, [r6, #4]
	ldr	r0, [sp, #0x44]
	mov	r1, r11
	bl	_call_via_r4
	mov	r1, #0x22
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x41
	str	r1, [sp, #4]
	mov	r1, #0xdd
	lsl	r1, #3
	sub	r3, #0x41
	sub	r2, #0x11
	ldr	r4, [r6, #4]
	ldr	r0, [sp, #0x44]
	add	r1, r11
	bl	_call_via_r4
	ldr	r3, [r7, #4]
	cmp	r3, #0x6f
	bgt	.Lecc68
	add	r3, #0x10
	str	r3, [r7, #4]
	b	.Lecc6e
.Lecc68:
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
.Lecc6e:
	ldr	r3, [r7, #4]
	cmp	r3, #0x6f
	ble	.Lecd06
	mov	r0, #0
	str	r0, [sp, #0x20]
	ldr	r1, [r7]
	str	r1, [sp, #0x1c]
	ldr	r3, [r7, #0x18]
	cmp	r3, #7
	bgt	.Lecc8a
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r11
	str	r3, [r2]
.Lecc8a:
	mov	r2, #0
	mov	r9, r2
	ldr	r2, =ewram_10000
.Lecc90:
	ldr	r3, [r2, #0x18]
	cmp	r3, #0
	bne	.Leccf8
	str	r2, [sp, #0x10]
	bl	Func_4458
	ldr	r6, =0x3ff
	and	r6, r0
	bl	Func_4458
	ldr	r5, =0x7fff
	ldr	r4, [sp, #0x1c]
	ldr	r3, =0xffffc000
	ldr	r2, [sp, #0x10]
	and	r5, r0
	add	r5, r3
	mov	r0, #0x70
	lsl	r3, r4, #16
	str	r3, [r2]
	lsl	r3, r0, #16
	str	r3, [r2, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	ldr	r2, [sp, #0x10]
	asr	r3, #7
	str	r3, [r2, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	lsl	r3, #1
	ldr	r2, [sp, #0x10]
	neg	r3, r3
	asr	r3, #7
	str	r3, [r2, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	ldr	r2, [sp, #0x10]
	add	r3, #0x20
	str	r3, [r2, #0x18]
	ldr	r1, [sp, #0x20]
	add	r1, #1
	str	r1, [sp, #0x20]
	cmp	r1, #4
	beq	.Lecd06
.Leccf8:
	mov	r3, #1
	mov	r4, #0x80
	add	r9, r3
	lsl	r4, #3
	add	r2, #0x1c
	cmp	r9, r4
	bne	.Lecc90
.Lecd06:
	mov	r6, #1
	add	r8, r6
	mov	r0, r8
	add	r7, #0x1c
	cmp	r0, #5
	beq	.Lecd14
	b	.Lecbd8
.Lecd14:
	ldr	r2, =0x7828
	mov	r4, r11
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	beq	.Lecd60
	mov	r6, #0x24
	mov	r7, #8
.Lecd28:
	cmp	r10, r7
	bne	.Lecd4c
	mov	r0, r11
	add	r5, r0, r2
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r8
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #2
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
.Lecd4c:
	ldr	r2, =0x7828
	mov	r3, #1
	mov	r4, r11
	add	r8, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	add	r7, #0x10
	cmp	r8, r3
	bne	.Lecd28
.Lecd60:
	mov	r6, #0
	mov	r8, r6
	ldr	r6, =ewram_10000
.Lecd66:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Lecdde
	sub	r3, #1
	mov	r2, #0x80
	str	r3, [r6, #0x18]
	mov	r0, r6
	mov	r1, #0x3c
	lsl	r2, #7
	bl	Func_e3908
	ldr	r3, [r6, #4]
	asr	r7, r3, #16
	mov	r12, r7
	cmp	r7, #0x78
	ble	.Lecd94
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Lecdde
.Lecd94:
	ldr	r2, [r6]
	cmp	r2, #0
	blt	.Lecdde
	asr	r7, r2, #16
	cmp	r7, #0x7e
	bgt	.Lecdde
	cmp	r3, #0
	blt	.Lecdde
	ldr	r0, [r6, #0x18]
	cmp	r0, #0
	bge	.Lecdac
	add	r0, #7
.Lecdac:
	asr	r0, #3
	add	r0, #3
	lsl	r5, r0, #1
	ldr	r2, =Data_ede48
	mov	r1, r8
	sub	r3, r5, #2
	mov	r4, #1
	and	r4, r1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x40]
	add	r1, r2, r1
	lsr	r2, r0, #31
	add	r2, r0, r2
	asr	r2, #1
	sub	r2, r7, r2
	mov	r7, r12
	str	r0, [sp]
	sub	r3, r7, r0
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x18]
	lsl	r4, #2
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
.Lecdde:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r6, #0x1c
	cmp	r8, r2
	bne	.Lecd66
	mov	r0, #4
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	cmp	r4, #0x90
	beq	.Lece12
	b	.Lecb9c
.Lece12:
	ldr	r5, =0x77d8
	mov	r6, #0
	mov	r8, r6
	add	r5, r11
.Lece1a:
	mov	r7, #1
	ldmia	r5!, {r0}
	add	r8, r7
	bl	_Func_bdd4
	mov	r0, r8
	cmp	r0, #8
	bne	.Lece1a
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x74
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ec100

	.section .rodata

.Leef56:
	.incrom 0xeef56, 0xeef5f
.Leef5f:
	.incrom 0xeef5f, 0xeef68
.Leef68:
	.incrom 0xeef68, 0xeef70
.Leef70:
	.incrom 0xeef70, 0xeef78
.Leef78:
	.incrom 0xeef78, 0xeef88
