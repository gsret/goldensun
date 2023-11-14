	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_e0564
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1eec
	mov	r3, r5
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x28
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r5, #8]
	add	r3, r9
	str	r2, [sp, #0x14]
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le05d0	@ 0x1010
	mov	r6, #2
	strh	r3, [r2]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r3, [sp]
	bl	Func_ed408
	ldr	r3, [r5, #0x1c]
	ldr	r5, [r5, #0x20]
	str	r3, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	str	r5, [sp, #0x1c]
	bl	Func_e0524
	ldr	r0, =0x94
	mov	r1, r9
	mov	r2, #1
	b	.Le05e8

	.align	2, 0
.Le05d0:
	.word	0x1010
	.pool

.Le05e8:
	mov	r3, #1
	bl	Func_e0524
	mov	r1, #0xbe
	lsl	r1, #2
	ldr	r0, =0x6f
	add	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r9
	str	r6, [r3]
	add	r2, r9
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	mov	r5, #0xe1
	bl	Func_41d8
	lsl	r5, #7
	mov	r4, #0
	mov	r10, r4
	mov	r7, #0x3f
	add	r5, r9
	mov	r6, #0x68
.Le0626:
	bl	Func_4458
	and	r0, r7
	str	r0, [r5]
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	str	r6, [r5, #4]
	add	r5, #0x1c
	cmp	r1, #0x20
	bne	.Le0626
	mov	r2, #0
	mov	r10, r2
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	neg	r1, r1
	lsl	r2, #2
.Le064a:
	mov	r4, #1
	add	r10, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Le064a
	mov	r0, #0x8d
	bl	_Func_f9080
	mov	r0, #0x80
	mov	r7, #0
	lsl	r0, #8
	str	r7, [sp, #0x20]
	str	r0, [sp, #0x10]
.Le0666:
	ldr	r1, [sp, #0x20]
	cmp	r1, #0x4f
	bgt	.Le06a4
	ldr	r0, [sp, #0x10]
	bl	Func_2322
	lsl	r5, r0, #1
	add	r5, r0
	ldr	r0, [sp, #0x10]
	bl	Func_231c
	ldr	r3, [sp, #0x20]
	lsl	r2, r3, #1
	mov	r3, #0x40
	sub	r3, r2
	mul	r3, r0
	lsl	r5, #3
	mov	r2, #0x14
	asr	r5, #16
	asr	r3, #16
	add	r5, #0x16
	str	r2, [sp]
	mov	r2, #0x26
	str	r2, [sp, #4]
	add	r3, #0x1d
	ldr	r0, [sp, #0x24]
	mov	r1, r9
	mov	r2, r5
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Le06a4:
	ldr	r7, [sp, #0x20]
	cmp	r7, #0x38
	bne	.Le06b0
	mov	r0, #0x85
	bl	_Func_bd7dc
.Le06b0:
	mov	r2, #0xe1
	mov	r0, #0
	lsl	r2, #7
	mov	r1, #0x10
	add	r2, r9
	str	r0, [sp, #0xc]
	mov	r10, r0
	mov	r11, r1
	mov	r8, r2
.Le06c2:
	ldr	r3, [sp, #0x20]
	cmp	r3, r11
	blt	.Le07b6
	mov	r4, r8
	mov	r1, #0x22
	ldr	r2, [r4]
	ldr	r3, [r4, #4]
	str	r1, [sp]
	mov	r1, #0x41
	str	r1, [sp, #4]
	mov	r1, #0x9e
	lsl	r1, #4
	sub	r2, #0x11
	sub	r3, #0x20
	ldr	r0, [sp, #0x24]
	add	r1, r9
	ldr	r7, [sp, #0x18]
	bl	_call_via_r7
	ldr	r0, [sp, #0x20]
	cmp	r0, r11
	bne	.Le07ae
	ldr	r1, [sp, #0xc]
	ldr	r2, =ewram_10000
	mov	r4, #0
	add	r7, r1, r2
.Le06f6:
	str	r4, [sp, #8]
	bl	Func_4458
	ldr	r6, =0x7fff
	mov	r3, #0x80
	lsl	r3, #7
	and	r6, r0
	add	r6, r3
	bl	Func_4458
	mov	r1, r8
	ldr	r3, [r1]
	lsl	r3, #16
	str	r3, [r7]
	ldr	r5, =0x1ff
	ldr	r3, [r1, #4]
	and	r5, r0
	add	r3, #0x10
	mov	r0, #0x80
	lsl	r3, #16
	lsl	r0, #1
	add	r5, r0
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
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	ldr	r4, [sp, #8]
	and	r3, r0
	add	r3, #0x20
	add	r4, #1
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r4, #0x10
	bne	.Le06f6
	mov	r3, #1
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.Le0766
	mov	r0, #0x85
	bl	_Func_f9080
.Le0766:
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r9
	str	r3, [r2]
	ldr	r3, =0x7828
	mov	r7, r9
	ldr	r3, [r7, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Le07ae
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Le0782:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #6
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r4
	mov	r1, #7
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r4, #1
	add	r6, #2
	cmp	r4, r3
	bne	.Le0782
.Le07ae:
	mov	r4, r8
	ldr	r3, [r4, #4]
	sub	r3, #0xc
	str	r3, [r4, #4]
.Le07b6:
	ldr	r1, [sp, #0xc]
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #2
	add	r10, r3
	mov	r7, #4
	mov	r0, #0x1c
	add	r1, r2
	mov	r4, r10
	add	r11, r7
	add	r8, r0
	str	r1, [sp, #0xc]
	cmp	r4, #0xa
	beq	.Le07d4
	b	.Le06c2
.Le07d4:
	mov	r7, #0
	ldr	r5, =ewram_10000
	ldr	r6, =Data_ede48
	mov	r10, r7
.Le07dc:
	mov	r1, #1
	ldr	r0, [r5, #0x18]
	neg	r1, r1
	cmp	r0, r1
	beq	.Le082a
	cmp	r0, #0
	bge	.Le07ec
	add	r0, #0xf
.Le07ec:
	asr	r0, #4
	add	r0, #2
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r2, [sp, #0x14]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3e
	lsl	r2, #6
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Le082a:
	mov	r7, #1
	mov	r0, #0x80
	add	r10, r7
	lsl	r0, #2
	add	r5, #0x1c
	cmp	r10, r0
	bne	.Le07dc
	mov	r1, #4
	mov	r0, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =0xfffff800
	ldr	r1, [sp, #0x10]
	ldr	r3, [sp, #0x20]
	add	r1, r2
	add	r3, #1
	str	r1, [sp, #0x10]
	str	r3, [sp, #0x20]
	cmp	r3, #0x60
	beq	.Le0866
	b	.Le0666
.Le0866:
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
.func_end Func_e0564

.thumb_func_start Func_e08c0
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
	ldr	r3, [r3]
	sub	sp, #0x20
	str	r3, [sp, #0x14]
	ldr	r3, =0x7828
	mov	r10, r1
	ldr	r2, [r2, #8]
	add	r3, r10
	str	r2, [sp, #0x10]
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	mov	r2, sp
	add	r2, #0x18
	mov	r1, r2
	mov	r0, #0
	str	r2, [sp, #0xc]
	bl	Func_cef64
	ldr	r0, =0x73
	ldr	r1, [sp, #0x10]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x8e
	mov	r1, r10
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r1, #0xc8
	lsl	r1, #2
	ldr	r0, =0xb7
	add	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r10
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r6, #0xe1
	mov	r3, #0
	lsl	r6, #7
	str	r3, [sp, #8]
	mov	r7, #0
	add	r6, r10
.Le094a:
	lsl	r5, r7, #11
	mov	r0, r5
	bl	Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r6]
	mov	r0, r5
	bl	Func_231c
	lsl	r0, #2
	asr	r0, #16
	mov	r3, #1
	add	r0, #0x34
	and	r3, r7
	str	r0, [r6, #4]
	cmp	r3, #0
	beq	.Le097a
	ldr	r2, [r6]
	mov	r3, #0x20
	sub	r3, r2
	b	.Le097e
.Le097a:
	ldr	r3, [r6]
	add	r3, #0x20
.Le097e:
	str	r3, [r6]
	lsl	r3, r7, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	ldr	r1, =0xffff
	ldr	r2, [sp, #8]
	ldr	r3, =ewram_10000
	mov	r4, #0
	mov	r0, #0x7f
	mov	r8, r4
	mov	r11, r0
	mov	r9, r1
	add	r5, r2, r3
.Le0998:
	bl	Func_4458
	ldr	r2, [r6]
	mov	r3, #0xf
	and	r3, r0
	add	r3, r2
	sub	r3, #8
	lsl	r3, #16
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x60
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r4, r11
	and	r0, r4
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r1, r11
	and	r0, r1
	sub	r0, #0x40
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r2, r9
	and	r0, r2
	str	r0, [r5, #8]
	bl	Func_4458
	mov	r3, r9
	mov	r4, #1
	and	r0, r3
	add	r8, r4
	str	r0, [r5, #0x14]
	mov	r0, r8
	add	r5, #0x1c
	cmp	r0, #0x10
	bne	.Le0998
	ldr	r1, [sp, #8]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r1, r2
	add	r7, #1
	add	r6, #0x1c
	str	r1, [sp, #8]
	cmp	r7, #9
	bne	.Le094a
	mov	r0, #0x88
	bl	_Func_f9080
	mov	r4, #0xac
	mov	r3, #0
	neg	r4, r4
	mov	r8, r3
	mov	r9, r4
.Le0a16:
	mov	r0, r8
	cmp	r0, #0x38
	bne	.Le0a22
	mov	r0, #0x85
	bl	_Func_bd7dc
.Le0a22:
	mov	r1, r8
	cmp	r1, #0x17
	bgt	.Le0a56
	mov	r3, r8
	cmp	r1, #0
	bge	.Le0a30
	add	r3, #3
.Le0a30:
	asr	r3, #2
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #3
	add	r1, r3
	lsl	r1, #6
	mov	r2, #0xc8
	mov	r3, #0x28
	lsl	r2, #2
	add	r1, r10
	add	r1, r2
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x14]
	mov	r2, #0x28
	mov	r3, #0x14
	bl	_call_via_r4
.Le0a56:
	mov	r3, r8
	cmp	r3, #0x14
	bne	.Le0a70
	ldr	r0, =0x8e
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Le0a70:
	mov	r3, r8
	sub	r3, #0x14
	cmp	r3, #0xb
	bhi	.Le0ab2
	mov	r4, r8
	cmp	r4, #0x17
	ble	.Le0a9c
	lsl	r3, r4, #2
	mov	r2, #0x92
	sub	r2, r3
	mov	r3, #0x14
	str	r3, [sp]
	mov	r3, #0x28
	str	r3, [sp, #4]
	ldr	r0, [sp, #0xc]
	mov	r1, r10
	ldr	r4, [r0, #4]
	mov	r3, r9
	ldr	r0, [sp, #0x14]
	bl	_call_via_r4
	b	.Le0ab2
.Le0a9c:
	mov	r3, #0x14
	str	r3, [sp]
	mov	r3, #0x28
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x14]
	mov	r1, r10
	mov	r2, #0x32
	mov	r3, #0x14
	bl	_call_via_r4
.Le0ab2:
	mov	r1, r8
	cmp	r1, #0x20
	bne	.Le0ad2
	mov	r0, #0x91
	bl	_Func_f9080
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r10
	str	r3, [r2]
	ldr	r0, =0xb4
	mov	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
.Le0ad2:
	mov	r2, r8
	cmp	r2, #0x1f
	ble	.Le0b28
	mov	r6, #0xe1
	lsl	r6, #7
	mov	r7, #0
	add	r6, r10
.Le0ae0:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0x2f
	bhi	.Le0b1c
	mov	r5, r3
	cmp	r3, #0
	bge	.Le0aee
	add	r5, r3, #7
.Le0aee:
	asr	r5, #3
	ldr	r2, =Data_edeb2
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =Data_ede9f
	ldrb	r4, [r3, r5]
	ldr	r2, [r6]
	lsr	r3, r4, #1
	sub	r2, r3
	ldr	r3, =Data_edeab
	ldrb	r0, [r3, r5]
	ldr	r3, [r6, #4]
	str	r4, [sp]
	add	r3, r0
	ldr	r0, =Data_edea5
	ldrb	r0, [r0, r5]
	add	r1, r10
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x14]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
.Le0b1c:
	add	r3, #1
	add	r7, #1
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r7, #9
	bne	.Le0ae0
.Le0b28:
	ldr	r6, =ewram_10000
	mov	r7, #0
.Le0b2c:
	mov	r3, r7
	cmp	r7, #0
	bge	.Le0b34
	add	r3, #0xf
.Le0b34:
	asr	r3, #4
	lsl	r3, #1
	add	r3, #0x28
	cmp	r8, r3
	blt	.Le0b98
	ldr	r0, [r6, #8]
	bl	Func_2322
	mov	r5, #1
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	and	r5, r7
	lsl	r0, #2
	add	r5, #3
	asr	r0, #16
	add	r2, r0
	ldr	r1, =Data_ede48
	lsl	r0, r5, #1
	sub	r3, r0, #2
	ldrh	r1, [r1, r3]
	ldr	r4, [sp, #0x10]
	lsr	r3, r5, #1
	add	r1, r4, r1
	sub	r2, r3
	mov	r4, #6
	ldrsh	r3, [r6, r4]
	str	r0, [sp, #4]
	str	r5, [sp]
	ldr	r0, [sp, #0xc]
	sub	r3, r5
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x14]
	bl	_call_via_r4
	mov	r1, #0x40
	ldr	r2, =0xffffe000
	mov	r0, r6
	bl	Func_e3908
	ldr	r2, [r6, #8]
	mov	r1, #0x80
	lsl	r1, #4
	ldr	r4, =0xffff
	add	r3, r2, r1
	str	r3, [r6, #8]
	cmp	r3, r4
	ble	.Le0b98
	ldr	r0, =0xffff0801
	add	r3, r2, r0
	str	r3, [r6, #8]
.Le0b98:
	add	r7, #1
	add	r6, #0x1c
	cmp	r7, #0x90
	bne	.Le0b2c
	mov	r1, r8
	cmp	r1, #0x26
	bne	.Le0be2
	ldr	r3, =0x7828
	mov	r2, r10
	ldr	r3, [r2, r3]
	ldr	r3, [r3, #0x14]
	mov	r7, #0
	cmp	r3, #0
	beq	.Le0be2
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r10
.Le0bba:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r7
	mov	r2, #5
	bl	Func_d6888
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r1, #6
	bl	_Func_b8228
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	bne	.Le0bba
.Le0be2:
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	add	r8, r3
	mov	r2, #8
	mov	r4, r8
	add	r9, r2
	cmp	r4, #0x70
	beq	.Le0c0c
	b	.Le0a16
.Le0c0c:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e08c0

.thumb_func_start Func_e0c84
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	mov	r6, r0
	ldmia	r3!, {r0}
	ldr	r5, =0x7828
	mov	r11, r0
	ldr	r3, [r3]
	sub	sp, #0x30
	add	r5, r11
	str	r3, [sp, #0x10]
	mov	r0, #0
	str	r6, [r5]
	bl	Func_cd594
	ldr	r3, [r5]
	ldr	r2, [r3, #4]
	add	r3, sp, #0x20
	str	r3, [sp]
	add	r3, sp, #0x1c
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #1
	mov	r3, #2
	bl	Func_de2f8
	ldr	r3, [r5]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x14
	str	r1, [sp, #0xc]
	bl	Func_cef64
	ldr	r0, =0x6e
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
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
	ldr	r3, [r5]
	add	r5, sp, #0x24
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	Func_e3980
	ldr	r4, =ewram_10000
	mov	r3, #0xf
	mov	r0, #0x7f
	mov	r7, #0
	mov	r9, r3
	mov	r8, r4
	mov	r10, r0
.Le0d14:
	bl	Func_4458
	ldr	r6, =0x7fff
	mov	r1, #0x80
	lsl	r1, #7
	and	r6, r0
	add	r6, r1
	bl	Func_4458
	ldr	r5, =0x1ff
	and	r5, r0
	bl	Func_4458
	ldr	r3, [sp, #0x24]
	lsr	r2, r3, #31
	add	r3, r2
	mov	r2, r9
	and	r0, r2
	asr	r3, #1
	add	r3, r0
	sub	r3, #8
	mov	r4, r8
	lsl	r3, #16
	str	r3, [r4]
	ldr	r3, [sp, #0x28]
	add	r3, #8
	lsl	r3, #16
	str	r3, [r4, #4]
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x80
	mov	r3, r5
	mul	r3, r0
	mov	r0, r8
	asr	r3, #9
	str	r3, [r0, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	mov	r1, r8
	asr	r3, #6
	str	r3, [r1, #0x10]
	bl	Func_4458
	mov	r2, r10
	mov	r3, r8
	and	r0, r2
	str	r0, [r3, #8]
	bl	Func_4458
	mov	r4, r10
	and	r0, r4
	mov	r1, r8
	str	r0, [r1, #0x14]
	bl	Func_4458
	mov	r2, r9
	and	r0, r2
	mov	r3, r8
	add	r0, #0x20
	mov	r4, #0x1c
	add	r7, #1
	str	r0, [r3, #0x18]
	add	r8, r4
	cmp	r7, #0x40
	bne	.Le0d14
	ldr	r1, =0x7828
	add	r1, r11
	mov	r0, #0
	str	r1, [sp, #8]
	mov	r10, r0
.Le0da8:
	mov	r2, r10
	cmp	r2, #0x2f
	ble	.Le0dbc
	ldr	r2, .Le0de4	@ 0x40
	mov	r4, r10
	ldr	r1, .Le0de8	@ 0x1000
	ldr	r3, =REG_BLDALPHA
	sub	r2, r4
	orr	r2, r1
	strh	r2, [r3]
.Le0dbc:
	mov	r0, r10
	cmp	r0, #1
	bne	.Le0e1c
	mov	r1, #0x80
	lsl	r1, #3
	ldr	r0, =0xb8
	add	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r1, =0x65c0
	ldr	r0, =0x92
	add	r1, r11
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	b	.Le0e1c

	.align	2, 0
.Le0de4:
	.word	0x40
.Le0de8:
	.word	0x1000
	.pool

.Le0e1c:
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	bne	.Le0e9e
	mov	r2, r10
	lsl	r5, r2, #11
	mov	r0, r5
	bl	Func_2322
	ldr	r3, [sp, #0x20]
	neg	r0, r0
	lsr	r2, r3, #31
	add	r3, r2
	lsl	r0, #2
	asr	r3, #1
	asr	r0, #16
	add	r0, r3
	sub	r0, #0xa
	mov	r9, r0
	mov	r0, r5
	bl	Func_231c
	ldr	r3, [sp, #0x1c]
	lsl	r0, #1
	asr	r0, #16
	add	r0, r3
	mov	r5, r0
	mov	r3, r10
	sub	r5, #0x16
	cmp	r3, #0x45
	ble	.Le0e64
	lsl	r3, #1
	sub	r3, r5, r3
	mov	r5, r3
	add	r5, #0x8a
.Le0e64:
	mov	r4, #0x14
	ldr	r6, =0x65c0
	mov	r7, #0x28
	ldr	r0, [sp, #0xc]
	str	r4, [sp]
	str	r7, [sp, #4]
	add	r6, r11
	mov	r1, r6
	mov	r8, r4
	mov	r2, r9
	ldr	r4, [r0, #4]
	mov	r3, r5
	ldr	r0, [sp, #0x10]
	bl	_call_via_r4
	mov	r1, r10
	cmp	r1, #3
	bgt	.Le0e9e
	mov	r2, r8
	str	r2, [sp]
	ldr	r3, [sp, #0xc]
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x10]
	ldr	r4, [r3, #4]
	mov	r1, r6
	mov	r2, r9
	mov	r3, r5
	bl	_call_via_r4
.Le0e9e:
	ldr	r4, =ewram_10000
	mov	r7, #0
	mov	r8, r4
.Le0ea4:
	mov	r3, r7
	cmp	r7, #0
	bge	.Le0eac
	add	r3, r7, #3
.Le0eac:
	asr	r3, #2
	add	r3, #4
	cmp	r10, r3
	blt	.Le0f10
	mov	r0, r8
	ldr	r4, [r0, #8]
	cmp	r4, #0
	bge	.Le0ebe
	add	r4, #0x7f
.Le0ebe:
	mov	r3, #3
	asr	r4, #7
	and	r4, r3
	ldr	r2, =.Leec68
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	mov	r2, #0x80
	lsl	r2, #3
	mov	r0, r8
	add	r1, r11
	add	r1, r2
	mov	r3, #2
	ldrsh	r2, [r0, r3]
	ldr	r3, =.Leec5f
	ldrb	r6, [r3, r4]
	lsr	r3, r6, #1
	sub	r2, r3
	mov	r3, #6
	ldrsh	r0, [r0, r3]
	mov	r12, r0
	ldr	r0, =.Leec63
	ldrb	r4, [r0, r4]
	mov	r3, r12
	lsr	r0, r4, #1
	mov	r5, #1
	sub	r3, r0
	str	r6, [sp]
	ldr	r0, [sp, #0xc]
	str	r4, [sp, #4]
	and	r5, r7
	lsl	r5, #2
	ldr	r4, [r5, r0]
	ldr	r0, [sp, #0x10]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r8
	mov	r1, #0x3f
	lsl	r2, #5
	bl	Func_e38b8
.Le0f10:
	mov	r1, #0x1c
	add	r7, #1
	add	r8, r1
	cmp	r7, #0x40
	bne	.Le0ea4
	mov	r2, r10
	cmp	r2, #8
	bne	.Le0f50
	ldr	r3, =0x77a8
	add	r3, r11
	str	r2, [r3]
	mov	r0, #0x86
	bl	_Func_bd7dc
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	mov	r1, #3
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_Func_b8228
.Le0f50:
	mov	r0, r10
	lsl	r5, r0, #2
	cmp	r5, #0x20
	ble	.Le0f5a
	mov	r5, #0x20
.Le0f5a:
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le0f9a
	mov	r2, #0x78
	mov	r7, #0
	mov	r6, #0x20
	mov	r8, r2
.Le0f6c:
	mov	r2, r10
	lsl	r1, r7, #5
	cmp	r2, #0
	bge	.Le0f76
	add	r2, #3
.Le0f76:
	mov	r3, #0x1f
	asr	r2, #2
	and	r2, r3
	ldr	r3, [sp, #0x14]
	mov	r4, r8
	sub	r2, r1, r2
	mov	r12, r3
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x10]
	mov	r1, r11
	sub	r3, r4, r5
	add	r7, #1
	bl	_call_via_r12
	cmp	r7, #5
	bne	.Le0f6c
	b	.Le0fd0
.Le0f9a:
	mov	r0, #0x78
	mov	r7, #0
	mov	r6, #0x20
	mov	r8, r0
.Le0fa2:
	mov	r2, r10
	lsl	r1, r7, #5
	cmp	r2, #0
	bge	.Le0fac
	add	r2, #3
.Le0fac:
	mov	r3, #0x1f
	asr	r2, #2
	and	r2, r3
	add	r2, r1, r2
	ldr	r1, [sp, #0x14]
	mov	r4, r8
	mov	r12, r1
	sub	r2, #0x20
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x10]
	mov	r1, r11
	sub	r3, r4, r5
	add	r7, #1
	bl	_call_via_r12
	cmp	r7, #5
	bne	.Le0fa2
.Le0fd0:
	mov	r1, #8
	mov	r0, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	cmp	r1, #0x40
	beq	.Le0ff6
	b	.Le0da8
.Le0ff6:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e0c84

.thumb_func_start Func_e1040
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1eec
	mov	r3, r2
	mov	r6, r0
	ldmia	r3!, {r0}
	ldr	r3, [r3]
	sub	sp, #0x48
	str	r3, [sp, #0x30]
	sub	r2, #0x6c
	ldr	r5, =0x7828
	ldr	r2, [r2]
	mov	r9, r0
	add	r5, r9
	str	r2, [sp, #0x1c]
	mov	r0, #0
	str	r6, [r5]
	bl	Func_cd594
	ldr	r3, [r5]
	ldr	r2, [r3, #4]
	add	r3, sp, #0x38
	str	r3, [sp]
	add	r3, sp, #0x34
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r3, #2
	mov	r1, #0
	bl	Func_de2f8
	ldr	r3, .Le10a8	@ 0x1010
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le10b8
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
	b	.Le10c8

	.align	2, 0
.Le10a8:
	.word	0x1010
	.pool

.Le10b8:
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	Func_ed408
.Le10c8:
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r0, =0xa7
	str	r3, [sp, #0x20]
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r1, =0x65c0
	ldr	r0, =0x94
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r5, =0x7828
	add	r2, r9
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	add	r5, r9
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r6, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	mov	r2, #0
	mov	r5, #0xe1
	lsl	r5, #7
	str	r0, [sp, #0x18]
	str	r2, [sp, #0x2c]
	mov	r7, #0
	add	r5, r9
.Le112e:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	mov	r3, #0x84
	lsl	r3, #15
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	asr	r3, r7, #5
	str	r3, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x40
	lsl	r3, #16
	asr	r3, #6
	str	r3, [r5, #0x10]
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	sub	r3, #0x7f
	lsl	r3, #16
	asr	r3, #5
	str	r3, [r5, #0x14]
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.Le116c
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le116c:
	mov	r3, #1
	str	r3, [r5, #0x18]
	ldr	r4, [sp, #0x2c]
	mov	r3, #0xa0
	lsl	r3, #15
	add	r4, #1
	add	r7, r3
	add	r5, #0x1c
	str	r4, [sp, #0x2c]
	cmp	r4, #8
	bne	.Le112e
	ldr	r0, [sp, #0x1c]
	mov	r5, #0
	add	r0, #0xc
	str	r5, [sp, #0x28]
	str	r0, [sp, #0x10]
.Le118c:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x10
	ble	.Le1198
	ldr	r0, =0xa7
	bl	Func_e46f0
.Le1198:
	ldr	r6, =0x7828
	add	r6, r9
	ldr	r3, [r6]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	bne	.Le1248
	ldr	r2, [sp, #0x28]
	lsl	r5, r2, #11
	mov	r0, r5
	bl	Func_2322
	ldr	r3, [sp, #0x38]
	neg	r0, r0
	lsr	r2, r3, #31
	add	r3, r2
	lsl	r0, #2
	asr	r3, #1
	asr	r0, #16
	add	r0, r3
	mov	r7, r0
	mov	r0, r5
	bl	Func_231c
	ldr	r3, [sp, #0x34]
	lsl	r0, #1
	asr	r0, #16
	add	r0, r3
	ldr	r3, [sp, #0x28]
	mov	r5, r0
	sub	r7, #0xa
	sub	r5, #0x16
	cmp	r3, #0x10
	ble	.Le11e2
	lsl	r3, #1
	sub	r3, r5, r3
	mov	r5, r3
	add	r5, #0x20
.Le11e2:
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le11fc
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
	b	.Le120a
.Le11fc:
	mov	r3, #3
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	str	r3, [sp]
	bl	Func_ed408
.Le120a:
	ldr	r4, [sp, #0x28]
	cmp	r4, #3
	bgt	.Le122a
	mov	r3, #0x14
	str	r3, [sp]
	mov	r3, #0x28
	str	r3, [sp, #4]
	ldr	r0, =iwram_1f0c
	ldr	r1, =0x65c0
	ldr	r4, [r0]
	add	r1, r9
	ldr	r0, [sp, #0x30]
	mov	r2, r7
	mov	r3, r5
	bl	_call_via_r4
.Le122a:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r3, #0x14
	ldr	r1, =0x65c0
	str	r3, [sp]
	mov	r3, #0x28
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x30]
	add	r1, r9
	mov	r2, r7
	mov	r3, r5
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
.Le1248:
	ldr	r5, [sp, #0x28]
	mov	r3, #1
	and	r3, r5
	cmp	r3, #0
	bne	.Le1284
	mov	r0, #0
	mov	r5, #0xe8
	lsl	r5, #7
	str	r0, [sp, #0x2c]
	ldr	r6, =.Leec70
	add	r5, r9
.Le125e:
	bl	Func_4458
	mov	r1, #6
	bl	Func_b50_from_thumb
	add	r0, #3
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, #3
	and	r3, r0
	ldrb	r3, [r6, r3]
	str	r3, [r5, #0x10]
	ldr	r1, [sp, #0x2c]
	add	r1, #1
	add	r5, #0x1c
	str	r1, [sp, #0x2c]
	cmp	r1, #0x20
	bne	.Le125e
.Le1284:
	bl	Func_49ac
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x10]
	bl	Func_51d8
	mov	r6, #0xe1
	mov	r2, #0
	mov	r3, r9
	lsl	r6, #7
	str	r2, [sp, #0x2c]
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	add	r6, r9
.Le12a0:
	ldr	r3, [r6, #0x18]
	cmp	r3, #1
	beq	.Le12a8
	b	.Le14da
.Le12a8:
	ldr	r4, [sp, #0xc]
	ldr	r5, [sp, #0x28]
	str	r4, [sp, #0x14]
	cmp	r5, r4
	bgt	.Le12b4
	b	.Le142a
.Le12b4:
	add	r5, sp, #0x3c
	mov	r1, r5
	mov	r0, r6
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	sub	r3, #0xc
	mov	r10, r3
	ldr	r3, [r5, #4]
	sub	r3, #0x18
	mov	r8, r3
	mov	r3, #0x18
	str	r3, [sp]
	mov	r3, #0x30
	str	r3, [sp, #4]
	ldr	r5, [sp, #0x20]
	mov	r3, r8
	ldr	r0, [sp, #0x30]
	mov	r1, r9
	mov	r2, r10
	bl	_call_via_r5
	ldr	r0, [sp, #0x28]
	mov	r3, #3
	and	r3, r0
	cmp	r3, #1
	bgt	.Le1314
	ldr	r3, =.Leec86
	ldr	r4, =.Leeca1
	ldrh	r1, [r3, #2]
	ldr	r3, =.Leec98
	ldrb	r2, [r3, #1]
	ldrb	r3, [r4, #1]
	ldr	r4, =.Leec74
	ldrb	r0, [r4, #1]
	str	r0, [sp]
	ldr	r0, =.Leec7d
	ldrb	r0, [r0, #1]
	add	r1, r9
	str	r0, [sp, #4]
	add	r2, r10
	add	r3, r8
	ldr	r0, [sp, #0x30]
	bl	_call_via_r5
	b	.Le1338
.Le1314:
	ldr	r3, =.Leec86
	ldr	r0, =.Leeca1
	ldrh	r1, [r3, #4]
	ldr	r4, =.Leec74
	ldr	r3, =.Leec98
	ldrb	r2, [r3, #2]
	ldrb	r3, [r0, #2]
	ldrb	r0, [r4, #2]
	str	r0, [sp]
	ldr	r0, =.Leec7d
	ldrb	r0, [r0, #2]
	add	r1, r9
	str	r0, [sp, #4]
	add	r2, r10
	add	r3, r8
	ldr	r0, [sp, #0x30]
	bl	_call_via_r5
.Le1338:
	ldr	r0, [sp, #8]
	mov	r1, #0xe8
	mov	r5, #0
	lsl	r1, #7
	mov	r11, r5
	add	r7, r0, r1
.Le1344:
	mov	r2, #2
	ldr	r3, [r7, #0x10]
	mov	r1, #7
	str	r2, [sp]
	mov	r0, #0x2f
	mov	r2, #7
	bl	Func_ed408
	ldr	r2, =iwram_1f0c
	ldr	r1, [r7, #0x10]
	ldr	r2, [r2]
	mov	r3, #4
	and	r3, r1
	str	r2, [sp, #0x24]
	cmp	r3, #0
	beq	.Le1378
	ldr	r0, [r7, #0xc]
	ldr	r4, =.Leec74
	ldrb	r3, [r4, r0]
	mov	r5, r10
	sub	r3, r5, r3
	ldr	r5, =.Leec98
	ldrb	r2, [r5, r0]
	sub	r3, r2
	add	r3, #0x18
	b	.Le1382
.Le1378:
	ldr	r0, [r7, #0xc]
	ldr	r2, =.Leec98
	ldrb	r3, [r2, r0]
	ldr	r4, =.Leec74
	add	r3, r10
.Le1382:
	mov	r12, r3
	mov	r3, #8
	and	r3, r1
	cmp	r3, #0
	beq	.Le13d8
	ldr	r5, =.Leec7d
	ldrb	r3, [r5, r0]
	ldr	r5, =.Leeca1
	mov	r1, r8
	ldrb	r2, [r5, r0]
	sub	r3, r1, r3
	sub	r3, r2
	mov	r5, r3
	add	r5, #0x30
	b	.Le13e0

	.pool_aligned

.Le13d8:
	ldr	r1, =.Leeca1
	ldrb	r3, [r1, r0]
	mov	r2, r8
	add	r5, r2, r3
.Le13e0:
	ldr	r2, =.Leec86
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldrb	r3, [r4, r0]
	str	r3, [sp]
	ldr	r3, [r7, #0xc]
	ldr	r4, =.Leec7d
	ldrb	r3, [r4, r3]
	add	r1, r9
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x30]
	mov	r3, r5
	mov	r2, r12
	ldr	r5, [sp, #0x24]
	bl	_call_via_r5
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #1
	add	r11, r0
	mov	r1, r11
	add	r7, #0x1c
	cmp	r1, #4
	bne	.Le1344
	ldr	r3, [r6]
	ldr	r2, [r6, #0xc]
	add	r3, r2
	str	r3, [r6]
	ldr	r2, [r6, #0x10]
	ldr	r3, [r6, #4]
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r2, [r6, #0x14]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
.Le142a:
	ldr	r3, [sp, #0xc]
	ldr	r2, [sp, #0x28]
	add	r3, #0x10
	cmp	r2, r3
	ble	.Le14da
	ldr	r4, [sp, #0x18]
	ldr	r2, [r6]
	ldr	r3, [r4, #8]
	sub	r3, r2
	ldr	r2, [r6, #0xc]
	asr	r3, #8
	add	r1, r2, r3
	ldr	r2, [r6, #4]
	mov	r3, #0xa0
	lsl	r3, #13
	sub	r3, r2
	ldr	r2, [r6, #0x10]
	asr	r3, #8
	add	r0, r2, r3
	str	r1, [r6, #0xc]
	str	r0, [r6, #0x10]
	ldr	r2, [r6, #8]
	ldr	r3, [r4, #0x10]
	sub	r3, r2
	ldr	r2, [r6, #0x14]
	asr	r3, #8
	add	r4, r2, r3
	str	r4, [r6, #0x14]
	ldr	r3, [sp, #0x14]
	ldr	r5, [sp, #0x28]
	add	r3, #0x55
	cmp	r5, r3
	bge	.Le149c
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Le1478
	add	r2, #0x3f
.Le1478:
	asr	r3, r2, #6
	str	r3, [r6, #0xc]
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Le1488
	add	r2, #0x3f
.Le1488:
	asr	r3, r2, #6
	str	r3, [r6, #0x10]
	lsl	r3, r4, #4
	sub	r3, r4
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Le1498
	add	r2, #0x3f
.Le1498:
	asr	r3, r2, #6
	str	r3, [r6, #0x14]
.Le149c:
	ldr	r3, [r6, #4]
	ldr	r0, =0x13ffff
	cmp	r3, r0
	bgt	.Le14da
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	mov	r3, #0
	str	r3, [r6, #0x18]
	mov	r0, #0x86
	bl	_Func_f9080
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r3, [r5]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #4
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_b8228
.Le14da:
	ldr	r3, [sp, #0xc]
	ldr	r4, [sp, #8]
	ldr	r5, [sp, #0x2c]
	add	r3, #2
	add	r4, #0x70
	add	r5, #1
	str	r3, [sp, #0xc]
	add	r6, #0x1c
	str	r4, [sp, #8]
	str	r5, [sp, #0x2c]
	cmp	r5, #6
	beq	.Le14f4
	b	.Le12a0
.Le14f4:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	ldr	r0, [sp, #0x28]
	add	r0, #1
	str	r0, [sp, #0x28]
	cmp	r0, #0x60
	beq	.Le151a
	b	.Le118c
.Le151a:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e1040

.thumb_func_start Func_e155c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	mov	r6, r0
	mov	r7, r1
	ldr	r0, =0x77a8
	ldr	r1, [r3]
	add	r0, r1
	ldr	r3, [r0]
	mov	r8, r0
	cmp	r3, #0
	ble	.Le15b0
	bl	Func_4458
	sub	r6, #1
	and	r6, r0
	bl	Func_4458
	lsr	r5, r7, #31
	add	r5, r7, r5
	sub	r2, r7, #1
	asr	r5, #1
	and	r2, r0
	sub	r2, r5
	ldr	r1, =iwram_1ad0
	mov	r3, r2
	sub	r6, r5
	add	r3, #0x20
	strh	r6, [r1, #4]
	strh	r3, [r1, #6]
	ldr	r1, =iwram_1ce0
	mov	r3, #0x78
	sub	r6, r3, r6
	sub	r3, r2
	str	r6, [r1, #0xc]
	str	r3, [r1, #0x10]
	mov	r2, r8
	ldr	r3, [r2]
	sub	r3, #1
	str	r3, [r2]
	b	.Le15ca
.Le15b0:
	ldr	r0, =0x77a0
	add	r3, r1, r0
	ldr	r3, [r3]
	ldr	r2, =iwram_1ad0
	add	r0, #4
	strh	r3, [r2, #4]
	add	r3, r1, r0
	ldr	r3, [r3]
	strh	r3, [r2, #6]
	ldr	r2, =iwram_1ce0
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	str	r3, [r2, #0x10]
.Le15ca:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e155c

.thumb_func_start Func_e15e8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f00
	ldr	r1, [r3]
	sub	sp, #0x150
	str	r1, [sp, #0x84]
	mov	r2, r3
	sub	r2, #0x14
	ldr	r2, [r2]
	str	r2, [sp, #0x80]
	mov	r2, r3
	sub	r2, #0x10
	ldr	r2, [r2]
	str	r2, [sp, #0x7c]
	sub	r3, #0xc
	ldr	r2, [sp, #0x80]
	ldr	r4, =0x7828
	ldr	r3, [r3]
	str	r3, [sp, #0x78]
	add	r3, r2, r4
	str	r0, [r3]
	mov	r0, #0x80
	lsl	r0, #6
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le1660	@ 0x100
	ldr	r5, =0xbc
	strh	r3, [r2]
	ldr	r1, [sp, #0x80]
	mov	r0, r5
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r0, r5
	ldr	r1, [sp, #0x80]
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #0xc0
	ldr	r5, [sp, #0x80]
	lsl	r2, #5
	add	r1, r5, r2
	ldr	r0, =0x75
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x73
	mov	r3, #0
	ldr	r1, [sp, #0x78]
	mov	r2, #0
	b	.Le167c

	.align	2, 0
.Le1660:
	.word	0x100
	.pool

.Le167c:
	bl	Func_e0524
	ldr	r5, =0x302
	mov	r3, #0
	mov	r9, r3
	mov	r4, #0
	mov	r0, #0x40
.Le168a:
	ldr	r2, [sp, #0x80]
	mov	r1, #0
	add	r3, r4, r2
	ldr	r2, =0x2710
	mov	r8, r1
	ldr	r1, [sp, #0x78]
	mov	r12, r0
	add	r3, r2
.Le169a:
	ldrb	r2, [r1]
	add	r1, #1
	cmp	r2, r12
	ble	.Le16a4
	mov	r2, r12
.Le16a4:
	cmp	r2, #0
	bge	.Le16aa
	mov	r2, #0
.Le16aa:
	strb	r2, [r3]
	mov	r2, #1
	add	r8, r2
	add	r3, #1
	cmp	r8, r5
	bne	.Le169a
	add	r9, r2
	mov	r3, r9
	add	r4, r8
	sub	r0, #7
	cmp	r3, #8
	bne	.Le168a
	bl	Func_c9048
	ldr	r2, .Le1704	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Le1708	@ 0x2784
	strh	r3, [r2]
	ldr	r4, [sp, #0x80]
	ldr	r5, =0x7790
	ldr	r0, =0x7794
	add	r3, r4, r5
	mov	r6, #0
	ldr	r2, =0x7798
	str	r6, [r3]
	mov	r1, #2
	add	r3, r4, r0
	str	r1, [r3]
	add	r5, #0xc
	add	r3, r4, r2
	mov	r2, #1
	str	r2, [r3]
	add	r3, r4, r5
	str	r6, [r3]
	ldr	r0, [sp, #0x84]
	mov	r5, #0x90
	lsl	r5, #3
	str	r2, [r0, #0x10]
	b	.Le1724

	.align	2, 0
.Le1704:
	.word	0
.Le1708:
	.word	0x2784
	.pool

.Le1724:
	mov	r10, r1
	ldr	r0, =Func_c90e4
	mov	r1, r5
	bl	Func_41d8
	mov	r1, r5
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r2, #0xef
	ldr	r1, [sp, #0x80]
	lsl	r2, #7
	add	r1, r2
	str	r6, [r1]
	mov	r8, r1
	mov	r0, #0
	mov	r1, #0
	bl	Func_cd104
	ldr	r1, =0x3d
	mov	r0, #1
	mov	r2, #0
	bl	_Func_c08ec
	ldr	r2, =iwram_1ce0
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	mov	r0, #0
	mov	r1, #1
	bl	Func_cd104
	ldr	r6, =REG_BG2PA
	ldr	r5, .Le179c	@ 0x80
	mov	r3, #3
	strh	r5, [r6]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r2, #0x80
	str	r3, [sp, #0x6c]
	ldr	r3, .Le17a0	@ 0x7741
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Le17a4	@ 0x100f
	add	r2, #0x52
	strh	r5, [r6]
	strh	r3, [r2]
	ldr	r3, .Le17a8	@ 0x3f44
	sub	r2, #2
	strh	r3, [r2]
	mov	r4, r8
	mov	r3, r10
	str	r3, [r4]
	b	.Le17c4

	.align	2, 0
.Le179c:
	.word	0x80
.Le17a0:
	.word	0x7741
.Le17a4:
	.word	0x100f
.Le17a8:
	.word	0x3f44
	.pool

.Le17c4:
	ldr	r5, [sp, #0x80]
	ldr	r0, =0x7784
	mov	r3, #0x4b
	add	r2, r5, r0
	str	r3, [r2]
	mov	r2, #0x98
	lsl	r2, #1
	add	r2, sp
	mov	r5, r2
	str	r2, [sp, #0x30]
	ldr	r2, =0x14f
	mov	r1, #0
	add	r2, sp
	mov	r9, r1
	mov	r6, #0x3f
	mov	r0, r5
	mov	r1, #3
	mov	r4, r2
.Le17e8:
	strb	r1, [r0]
	strb	r1, [r4]
	ldrb	r3, [r0]
	sub	r4, #1
	cmp	r3, #0x3f
	bls	.Le17f6
	strb	r6, [r5]
.Le17f6:
	ldrb	r3, [r2]
	cmp	r3, #0x3f
	bls	.Le17fe
	strb	r6, [r2]
.Le17fe:
	mov	r3, #1
	add	r9, r3
	mov	r3, r9
	add	r5, #1
	add	r0, #1
	sub	r2, #1
	add	r1, #8
	cmp	r3, #0x10
	bne	.Le17e8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Le1830	@ 0x784
	mov	r5, sp
	ldr	r0, =0xfffff460
	ldr	r1, =0xfff26c00
	mov	r4, #0
	add	r5, #0x88
	strh	r3, [r2]
	str	r4, [sp, #0x74]
	str	r5, [sp, #0x60]
	str	r0, [sp, #0x1c]
	str	r4, [sp, #0x18]
	str	r4, [sp, #0x14]
	str	r1, [sp, #0x10]
	b	.Le1cc2

	.align	2, 0
.Le1830:
	.word	0x784
	.pool

.Le1848:
	ldr	r2, =0x5555
	ldr	r0, [sp, #0x14]
	ldr	r1, =0xaaab
	mov	r3, #0
	bl	Func_d40ec
	ldr	r2, [sp, #0x74]
	cmp	r2, #0x96
	bne	.Le1870
	ldr	r3, [sp, #0x80]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	ldr	r5, [sp, #0x80]
	ldr	r0, =0x7784
	ldr	r3, =0x1a1a1a1a
	add	r2, r5, r0
	b	.Le1882
.Le1870:
	ldr	r1, [sp, #0x80]
	mov	r2, #0xef
	lsl	r2, #7
	ldr	r4, [sp, #0x68]
	ldr	r5, =0x7784
	add	r3, r1, r2
	str	r4, [r3]
	add	r2, r1, r5
	mov	r3, #0x4b
.Le1882:
	str	r3, [r2]
	mov	r0, #0xff
	mov	r1, #0xc0
	ldr	r3, =Func_8ac
	lsl	r1, #8
	lsl	r0, #17
	bl	_call_via_r3
	mov	r1, r0
	mov	r0, #0xff
	lsl	r0, #17
	ldr	r2, =0x7fff0000
	bl	Func_5258
	bl	Func_49ac
	ldr	r0, [sp, #0x74]
	cmp	r0, #0x80
	ble	.Le1922
	mov	r6, r0
	sub	r6, #0x80
	cmp	r6, #0x16
	ble	.Le18b2
	mov	r6, #0x14
.Le18b2:
	add	r0, sp, #0x94
	mov	r3, #0
	str	r3, [r0]
	neg	r3, r6
	lsl	r3, #17
	str	r3, [r0, #4]
	mov	r3, #0x80
	lsl	r3, #18
	str	r3, [r0, #8]
	asr	r3, r6, #2
	add	r3, #2
	str	r3, [sp, #0x68]
	cmp	r3, #8
	ble	.Le18d2
	mov	r1, #8
	str	r1, [sp, #0x68]
.Le18d2:
	mov	r5, #0x80
	bl	Func_4cb4
	lsl	r5, #8
	ldr	r0, =0xfffff000
	bl	Func_4bd4
	mov	r0, r5
	bl	Func_4c6c
	mov	r0, r5
	bl	Func_4bd4
	lsl	r0, r6, #12
	bl	Func_4c1c
	ldr	r2, [sp, #0x74]
	cmp	r2, #0x96
	ble	.Le1908
	ldr	r0, [sp, #0x60]
	ldr	r3, [sp, #0x10]
	mov	r4, #5
	str	r3, [r0]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	str	r4, [sp, #0x68]
	b	.Le191c
.Le1908:
	lsl	r3, r6, #1
	add	r3, r6
	mov	r2, #0x80
	ldr	r0, [sp, #0x60]
	lsl	r3, #10
	lsl	r2, #9
	sub	r2, r3
	str	r2, [r0]
	str	r2, [r0, #4]
	str	r2, [r0, #8]
.Le191c:
	bl	Func_4cf0
	b	.Le194a
.Le1922:
	add	r0, sp, #0x94
	mov	r3, #0
	str	r3, [r0]
	str	r3, [r0, #4]
	mov	r3, #0x80
	lsl	r3, #17
	str	r3, [r0, #8]
	bl	Func_4cb4
	ldr	r0, =0xfffff000
	bl	Func_4bd4
	ldr	r0, [sp, #0x74]
	lsl	r5, r0, #8
	mov	r0, r5
	bl	Func_4c6c
	mov	r0, r5
	bl	Func_4bd4
.Le194a:
	ldr	r1, [sp, #0x74]
	cmp	r1, #0x95
	ble	.Le1952
	b	.Le1a64
.Le1952:
	mov	r3, sp
	mov	r2, #0
	add	r3, #0xa0
	mov	r9, r2
	str	r3, [sp, #0x34]
	ldr	r2, =Data_eda98
	add	r6, sp, #0x124
	mov	r5, r3
	mov	r7, #0
.Le1964:
	ldrsh	r3, [r7, r2]
	sub	r3, #0x60
	lsl	r3, #16
	str	r3, [r6]
	mov	r3, #0
	str	r3, [r6, #4]
	add	r3, r7, #2
	ldrsh	r3, [r3, r2]
	sub	r3, #0x60
	lsl	r3, #16
	mov	r1, r5
	str	r3, [r6, #8]
	mov	r0, r6
	str	r2, [sp, #0xc]
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #17
	add	r3, #0x40
	str	r3, [r5]
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	add	r3, #0x3c
	str	r3, [r5, #4]
	mov	r3, #1
	add	r9, r3
	mov	r4, r9
	add	r5, #0xc
	add	r7, #4
	ldr	r2, [sp, #0xc]
	cmp	r4, #6
	bne	.Le1964
	ldr	r1, [sp, #0x18]
	mov	r5, #0
	mov	r0, #4
	str	r0, [sp, #0x28]
	str	r5, [sp, #0x24]
	str	r1, [sp, #0x20]
	mov	r9, r5
.Le19b2:
	ldr	r2, [sp, #0x20]
	ldr	r3, =0xffffff00
	add	r2, r3
	mov	r10, r2
	cmp	r2, #0x30
	ble	.Le19c2
	mov	r4, #0x30
	mov	r10, r4
.Le19c2:
	mov	r5, r10
	cmp	r5, #0
	blt	.Le1a48
	mov	r0, #0
	mov	r8, r0
	cmp	r5, #0
	beq	.Le1a48
	ldr	r1, [sp, #0x68]
	ldr	r2, [sp, #0x28]
	ldr	r3, [sp, #0x68]
	asr	r1, #31
	lsl	r3, #1
	str	r1, [sp, #0x2c]
	ldr	r5, [sp, #0x34]
	ldr	r6, [sp, #0x24]
	ldr	r7, =Func_888
	str	r2, [sp, #0x5c]
	mov	r11, r3
.Le19e6:
	mov	r3, r6
	add	r3, #0xc
	ldr	r3, [r5, r3]
	ldr	r4, [r5, r6]
	sub	r3, r4
	mov	r0, r8
	mul	r0, r3
	ldr	r1, =0x555
	.align	2, 0
	mov	r12, pc
	bx	r7
	add	r4, r0
	mov	r3, r6
	ldr	r0, [sp, #0x5c]
	add	r3, #0x10
	ldr	r2, [r5, r3]
	ldr	r3, [r5, r0]
	sub	r2, r3
	mov	r0, r8
	mul	r0, r2
	ldr	r1, =0x555
	.align	2, 0
	mov	r12, pc
	bx	r7
	add	r3, r0
	mov	r2, r11
	ldr	r0, =Data_ede48
	sub	r2, #2
	ldrh	r1, [r0, r2]
	ldr	r2, [sp, #0x78]
	ldr	r0, [sp, #0x2c]
	add	r1, r2, r1
	lsr	r2, r0, #31
	ldr	r0, [sp, #0x68]
	add	r2, r0, r2
	asr	r2, #1
	sub	r4, r2
	mov	r2, r11
	sub	r3, r0
	str	r0, [sp]
	str	r2, [sp, #4]
	ldr	r0, [sp, #0x7c]
	mov	r2, r4
	ldr	r4, [sp, #0x6c]
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	cmp	r8, r10
	bne	.Le19e6
.Le1a48:
	ldr	r1, [sp, #0x28]
	ldr	r2, [sp, #0x24]
	ldr	r3, [sp, #0x20]
	mov	r4, #1
	add	r9, r4
	add	r1, #0x18
	add	r2, #0x18
	sub	r3, #0x30
	mov	r5, r9
	str	r1, [sp, #0x28]
	str	r2, [sp, #0x24]
	str	r3, [sp, #0x20]
	cmp	r5, #3
	bne	.Le19b2
.Le1a64:
	ldr	r0, [sp, #0x74]
	cmp	r0, #0xb3
	ble	.Le1a6c
	b	.Le1b8e
.Le1a6c:
	mov	r5, #0
	cmp	r0, #0x9b
	ble	.Le1a76
	mov	r5, r0
	sub	r5, #0x9c
.Le1a76:
	cmp	r5, #7
	ble	.Le1a7c
	mov	r5, #7
.Le1a7c:
	ldr	r1, [sp, #0x74]
	cmp	r1, #0x8b
	bgt	.Le1acc
	mov	r3, #3
	mov	r2, #7
	mov	r0, #0x2f
	mov	r1, #7
	str	r3, [sp]
	bl	Func_ed408
	ldr	r2, =iwram_1f0c
	ldr	r2, [r2]
	str	r2, [sp, #0x58]
	b	.Le1ae2

	.pool_aligned

.Le1acc:
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	Func_ed408
	ldr	r4, =iwram_1f0c
	ldr	r4, [r4]
	str	r4, [sp, #0x58]
.Le1ae2:
	ldr	r0, [sp, #0x64]
	mov	r10, r0
	cmp	r0, #0x80
	ble	.Le1aee
	mov	r1, #0x80
	mov	r10, r1
.Le1aee:
	mov	r2, #0
	mov	r3, r10
	mov	r9, r2
	cmp	r3, #0
	beq	.Le1b88
	lsl	r3, r5, #1
	add	r3, r5
	ldr	r7, [sp, #0x68]
	lsl	r3, #7
	mov	r4, #0x92
	add	r3, r5
	add	r7, #1
	lsl	r4, #1
	lsl	r3, #1
	add	r4, sp
	lsl	r0, r7, #1
	str	r3, [sp, #0x54]
	mov	r8, r4
	add	r6, sp, #0xa0
	mov	r11, r0
.Le1b16:
	mov	r1, r9
	lsl	r5, r1, #9
	mov	r0, r5
	bl	Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r8
	lsl	r3, #5
	str	r3, [r2]
	mov	r0, r5
	bl	Func_231c
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #5
	neg	r3, r3
	mov	r4, r8
	str	r3, [r4, #8]
	mov	r1, r6
	mov	r0, r8
	bl	Func_e3944
	ldr	r2, [r6]
	mov	r5, #6
	ldrsh	r3, [r6, r5]
	asr	r2, #17
	ldr	r0, =Data_ede48
	add	r2, #0x40
	add	r3, #0x3c
	mov	r1, r11
	str	r2, [r6]
	str	r3, [r6, #4]
	sub	r1, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0x54]
	ldr	r4, [sp, #0x80]
	add	r1, r0, r1
	lsr	r0, r7, #31
	ldr	r5, =0x2710
	add	r0, r7, r0
	add	r1, r4, r1
	asr	r0, #1
	add	r1, r5
	sub	r2, r0
	mov	r5, #1
	mov	r0, r11
	str	r0, [sp, #4]
	sub	r3, r7
	str	r7, [sp]
	ldr	r0, [sp, #0x7c]
	ldr	r4, [sp, #0x58]
	add	r9, r5
	bl	_call_via_r4
	cmp	r9, r10
	bne	.Le1b16
.Le1b88:
	mov	r0, #0x2f
	bl	Func_2dd8
.Le1b8e:
	ldr	r3, [sp, #0x74]
	sub	r3, #0x97
	cmp	r3, #0x10
	bhi	.Le1c90
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x74]
	mov	r4, #0
	mov	r8, r0
	cmp	r1, #0x97
	ble	.Le1ba6
	mov	r4, r1
	sub	r4, #0x98
.Le1ba6:
	cmp	r4, #0xf
	ble	.Le1bac
	mov	r4, #0xf
.Le1bac:
	lsl	r3, r4, #1
	ldr	r5, [sp, #0x30]
	neg	r3, r3
	mov	r7, r3
	add	r3, r4, r5
	mov	r2, #1
	mov	r6, r4
	add	r3, #1
	mov	r9, r2
	add	r7, #0x1e
	add	r6, #0x31
	mov	r10, r3
.Le1bc4:
	mov	r0, r9
	add	r3, r4, r0
	cmp	r3, #0xf
	bgt	.Le1be6
	mov	r2, #1
	mov	r3, #0x10
	sub	r3, r0
	str	r2, [sp, #4]
	str	r4, [sp, #8]
	str	r7, [sp]
	ldr	r0, [sp, #0x7c]
	mov	r1, r10
	mov	r2, r6
	ldr	r5, [sp, #0x6c]
	bl	_call_via_r5
	ldr	r4, [sp, #8]
.Le1be6:
	mov	r0, #1
	add	r9, r0
	mov	r1, r9
	sub	r7, #2
	add	r6, #1
	add	r10, r0
	cmp	r1, #0xa
	bne	.Le1bc4
	mov	r2, #0
	mov	r3, r8
	mov	r9, r2
	cmp	r3, #0
	beq	.Le1c32
	lsl	r2, r4, #1
	mov	r3, #0x20
	mov	r6, r4
	sub	r3, r2
	add	r6, #0x30
	mov	r10, r3
	mov	r7, #1
.Le1c0e:
	ldr	r2, [sp, #0x30]
	mov	r3, r9
	mov	r5, r10
	add	r1, r2, r4
	str	r5, [sp]
	str	r4, [sp, #8]
	add	r3, #0x10
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x7c]
	mov	r2, r6
	ldr	r5, [sp, #0x6c]
	bl	_call_via_r5
	mov	r0, #1
	add	r9, r0
	ldr	r4, [sp, #8]
	cmp	r9, r8
	bne	.Le1c0e
.Le1c32:
	mov	r1, #2
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r2, [sp, #0x1c]
	mov	r5, #0x60
	mov	r6, #0x20
	str	r5, [sp, #4]
	str	r6, [sp]
	ldr	r3, =iwram_1f0c
	sub	r2, #0x38
	mov	r8, r2
	ldr	r1, [sp, #0x80]
	ldr	r4, [r3]
	ldr	r0, [sp, #0x7c]
	mov	r2, #0x20
	mov	r3, r8
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r4, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r4, [sp]
	bl	Func_ed408
	str	r5, [sp, #4]
	str	r6, [sp]
	ldr	r5, =iwram_1f0c
	ldr	r0, [sp, #0x7c]
	ldr	r4, [r5]
	ldr	r1, [sp, #0x80]
	mov	r2, #0x40
	mov	r3, r8
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
.Le1c90:
	ldr	r0, [sp, #0x80]
	ldr	r1, =0x7824
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0xc0
	ldr	r2, [sp, #0x1c]
	ldr	r3, [sp, #0x18]
	ldr	r4, [sp, #0x14]
	ldr	r5, [sp, #0x10]
	ldr	r1, [sp, #0x74]
	lsl	r0, #5
	add	r2, #0x14
	add	r3, #4
	add	r4, #2
	add	r5, r0
	add	r1, #1
	str	r2, [sp, #0x1c]
	str	r3, [sp, #0x18]
	str	r4, [sp, #0x14]
	str	r5, [sp, #0x10]
	str	r1, [sp, #0x74]
.Le1cc2:
	ldr	r2, [sp, #0x74]
	cmp	r2, #0xaa
	beq	.Le1d00
	ldr	r4, [sp, #0x14]
	mov	r3, #2
	str	r3, [sp, #0x68]
	str	r4, [sp, #0x64]
	cmp	r2, #0x10
	bne	.Le1cda
	mov	r0, #0x8c
	bl	_Func_f9080
.Le1cda:
	ldr	r5, [sp, #0x74]
	cmp	r5, #0x84
	bne	.Le1ce6
	mov	r0, #0x83
	bl	_Func_f9080
.Le1ce6:
	ldr	r0, [sp, #0x74]
	cmp	r0, #0x97
	bne	.Le1cf2
	mov	r0, #0x91
	bl	_Func_f9080
.Le1cf2:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Le1d00
	b	.Le1848
.Le1d00:
	ldr	r1, [sp, #0x84]
	mov	r3, #0
	str	r3, [r1, #0x10]
	ldr	r0, =Func_c90e4
	bl	Func_4278
	bl	Func_d67dc
	ldr	r4, =0x7828
	ldr	r2, [sp, #0x80]
	add	r3, r2, r4
	ldr	r0, [r3]
	bl	Func_d6750
	ldr	r1, =0x173
	mov	r0, #9
	mov	r2, #1
	bl	Func_dbb24
	ldr	r0, =0xce
	ldr	r1, =ewram_10000
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0xd1
	ldr	r1, [sp, #0x80]
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #0xc0
	ldr	r5, [sp, #0x80]
	lsl	r2, #7
	add	r1, r5, r2
	mov	r3, #0
	mov	r2, #1
	ldr	r0, =0x66
	bl	Func_e0524
	ldr	r0, =0xcf
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r2, #0
	ldr	r1, [sp, #0x78]
	mov	r3, #0
	ldr	r0, =0x74
	bl	Func_e0524
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le1dac	@ 0x1010
	mov	r4, #0x80
	strh	r3, [r2]
	mov	r3, #0xa0
	mov	r5, #0
	lsl	r3, #15
	lsl	r4, #15
	str	r3, [sp, #0x50]
	str	r4, [sp, #0x4c]
	str	r5, [sp, #0x48]
	str	r5, [sp, #0x44]
	ldr	r2, =0x38e
	ldr	r3, =ewram_10c70
	mov	r9, r5
	mov	r1, #0
.Le1d90:
	mov	r0, #1
	add	r9, r0
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r9, r2
	bne	.Le1d90
	ldr	r2, [sp, #0x80]
	mov	r3, #0xe1
	mov	r1, #0
	lsl	r3, #7
	mov	r9, r1
	add	r5, r2, r3
	b	.Le1df8

	.align	2, 0
.Le1dac:
	.word	0x1010
	.pool

.Le1df8:
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	sub	r3, #0x10
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0xf
	mov	r4, #1
	and	r3, r0
	add	r9, r4
	neg	r3, r3
	mov	r0, r9
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r0, #0x10
	bne	.Le1df8
	ldr	r1, [sp, #0x80]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r4, =0x7784
	add	r2, r1, r3
	mov	r3, #2
	str	r3, [r2]
	add	r2, r1, r4
	mov	r3, #0x32
	mov	r0, #0x91
	str	r3, [r2]
	bl	_Func_f9080
	mov	r1, #0xc0
	ldr	r0, [sp, #0x80]
	lsl	r1, #7
	mov	r5, #0
	add	r1, r0, r1
	str	r5, [sp, #0x74]
	str	r1, [sp, #0x38]
.Le1e4e:
	ldr	r2, [sp, #0x74]
	cmp	r2, #0x14
	bne	.Le1e60
	ldr	r0, =0x62
	ldr	r1, [sp, #0x80]
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
.Le1e60:
	ldr	r3, [sp, #0x74]
	sub	r3, #0x50
	str	r3, [sp, #0x40]
	cmp	r3, #0x3b
	bhi	.Le1e7a
	ldr	r4, [sp, #0x74]
	mov	r3, #7
	and	r3, r4
	cmp	r3, #0
	bne	.Le1e7a
	mov	r0, #0x86
	bl	_Func_f9080
.Le1e7a:
	ldr	r5, [sp, #0x74]
	cmp	r5, #0x8c
	bne	.Le1e86
	mov	r0, #0x86
	bl	_Func_bd7dc
.Le1e86:
	mov	r0, #0
	mov	r1, #8
	mov	r8, r0
	mov	r11, r1
.Le1e8e:
	ldr	r4, [sp, #0x74]
	mov	r3, r8
	lsl	r2, r3, #7
	cmp	r4, r11
	blt	.Le1f78
	mov	r3, r2
	add	r3, #0x11
	cmp	r4, r3
	bge	.Le1f78
	mov	r5, r2
	sub	r3, #8
	add	r5, #0xc
	cmp	r4, r3
	blt	.Le1ec4
	cmp	r4, r5
	bge	.Le1eca
	mov	r3, #0x30
	mov	r0, #0x70
	str	r3, [sp]
	str	r0, [sp, #4]
	ldr	r1, [sp, #0x80]
	ldr	r0, [sp, #0x7c]
	mov	r2, #0x24
	mov	r3, #0
	ldr	r4, [sp, #0x6c]
	bl	_call_via_r4
.Le1ec4:
	ldr	r0, [sp, #0x74]
	cmp	r0, r5
	blt	.Le1ef0
.Le1eca:
	mov	r3, r11
	ldr	r1, [sp, #0x74]
	add	r3, #8
	cmp	r1, r3
	bge	.Le1ef0
	mov	r3, #0x30
	str	r3, [sp]
	mov	r3, #0x70
	ldr	r2, [sp, #0x80]
	str	r3, [sp, #4]
	mov	r3, #0xa8
	lsl	r3, #5
	add	r1, r2, r3
	ldr	r0, [sp, #0x7c]
	mov	r2, #0x24
	mov	r3, #0
	ldr	r4, [sp, #0x6c]
	bl	_call_via_r4
.Le1ef0:
	mov	r3, r11
	ldr	r5, [sp, #0x74]
	add	r3, #2
	cmp	r5, r3
	bne	.Le1f78
	mov	r0, #0
	ldr	r7, =ewram_10c58
	mov	r10, r0
	mov	r9, r0
.Le1f02:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Le1f62
	bl	Func_4458
	ldr	r6, =0x3ff
	and	r6, r0
	bl	Func_4458
	ldr	r5, =0x7fff
	ldr	r1, =0xffffc000
	mov	r2, #0x3c
	lsl	r3, r2, #16
	mov	r4, #0x70
	and	r5, r0
	add	r5, r1
	str	r3, [r7]
	lsl	r3, r4, #16
	str	r3, [r7, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	mov	r5, #1
	mov	r0, #0x80
	add	r3, #0x20
	add	r10, r5
	lsl	r0, #2
	str	r3, [r7, #0x18]
	cmp	r10, r0
	beq	.Le1f6e
.Le1f62:
	mov	r1, #1
	ldr	r2, =0x38e
	add	r9, r1
	add	r7, #0x1c
	cmp	r9, r2
	bne	.Le1f02
.Le1f6e:
	ldr	r3, [sp, #0x80]
	ldr	r4, =0x77a8
	add	r2, r3, r4
	mov	r3, #8
	str	r3, [r2]
.Le1f78:
	mov	r0, #1
	add	r8, r0
	mov	r5, #0x80
	mov	r1, r8
	add	r11, r5
	cmp	r1, #1
	bne	.Le1e8e
	ldr	r2, [sp, #0x74]
	cmp	r2, #0xa
	bne	.Le1fcc
	mov	r3, #0
	mov	r9, r3
	ldr	r4, [sp, #0x80]
	ldr	r3, =0x7828
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Le1fcc
	ldr	r0, =0x7828
	mov	r6, #0x24
	add	r5, r4, r0
.Le1fa2:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r9
	mov	r1, #7
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #4
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	mov	r3, #1
	add	r9, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	cmp	r9, r3
	bne	.Le1fa2
.Le1fcc:
	ldr	r4, [sp, #0x40]
	cmp	r4, #0x3f
	bls	.Le1fd4
	b	.Le22e0
.Le1fd4:
	mov	r5, #0
	ldr	r6, =Func_8d8
	mov	r9, r5
	mov	r5, #0x50
.Le1fdc:
	ldr	r0, [sp, #0x74]
	cmp	r0, r5
	bne	.Le1fee
	mov	r1, #0x80
	ldr	r0, [sp, #0x7c]
	lsl	r1, #7
	ldr	r2, =0x10101010
	bl	_call_via_r6
.Le1fee:
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	add	r5, #8
	cmp	r2, #6
	bne	.Le1fdc
	mov	r3, #0
	mov	r4, #0x50
	mov	r9, r3
	mov	r11, r4
.Le2002:
	ldr	r0, [sp, #0x74]
	mov	r5, r9
	lsl	r3, r5, #1
	cmp	r0, r11
	bge	.Le200e
	b	.Le2134
.Le200e:
	add	r3, #0x52
	cmp	r0, r3
	bge	.Le206c
	bl	Func_4458
	mov	r1, #3
	mov	r6, r0
	and	r6, r1
	bl	Func_4458
	mov	r2, #3
	mov	r5, r0
	mov	r3, #2
	str	r3, [sp]
	and	r5, r2
	mov	r3, #3
	mov	r2, #7
	mov	r1, #7
	mov	r0, #0x2f
	bl	Func_ed408
	mov	r1, #3
	mov	r0, r9
	bl	Func_b1c_from_thumb
	lsl	r1, r0, #2
	add	r1, r0
	mov	r3, #0x48
	lsl	r1, #4
	ldr	r4, [sp, #0x80]
	str	r3, [sp]
	str	r3, [sp, #4]
	add	r1, r0
	ldr	r0, =iwram_1f0c
	sub	r6, #3
	add	r5, #0x20
	lsl	r1, #6
	add	r1, r4, r1
	mov	r2, r6
	ldr	r4, [r0]
	mov	r3, r5
	ldr	r0, [sp, #0x7c]
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
.Le206c:
	ldr	r1, [sp, #0x74]
	cmp	r1, r11
	bne	.Le2134
	mov	r2, #0
	ldr	r7, =ewram_10c58
	mov	r10, r2
	mov	r8, r2
.Le207a:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Le20d6
	bl	Func_4458
	ldr	r6, =0x3ff
	and	r6, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r7]
	mov	r3, #0xa0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	cmp	r4, #0x10
	beq	.Le20e2
.Le20d6:
	mov	r5, #1
	ldr	r0, =0x38e
	add	r8, r5
	add	r7, #0x1c
	cmp	r8, r0
	bne	.Le207a
.Le20e2:
	ldr	r1, [sp, #0x80]
	ldr	r3, =0x77a8
	ldr	r5, =0x7828
	add	r2, r1, r3
	mov	r3, #8
	str	r3, [r2]
	add	r2, r1, r5
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r8, r4
	cmp	r3, #0
	beq	.Le2134
	ldr	r7, =.Leecaa
	mov	r5, r2
	mov	r6, #0x24
.Le2102:
	bl	Func_4458
	ldr	r3, [r5]
	mov	r1, #3
	and	r0, r1
	ldrb	r1, [r7, r0]
	ldrsh	r0, [r3, r6]
	mov	r3, #4
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r8
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #4
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r3, [r5]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r8, r0
	add	r6, #2
	cmp	r8, r3
	bne	.Le2102
.Le2134:
	mov	r2, #1
	add	r9, r2
	mov	r1, #2
	mov	r3, r9
	add	r11, r1
	cmp	r3, #0x1e
	beq	.Le2144
	b	.Le2002
.Le2144:
	bl	Func_4458
	mov	r6, #7
	and	r6, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	add	r6, #8
	mov	r4, r6
	mul	r4, r0
	asr	r4, #16
	mov	r8, r4
	mov	r0, r5
	add	r4, #0x48
	str	r4, [sp, #0x3c]
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r2, #0x20
	asr	r3, #16
	sub	r2, r3
	mov	r11, r2
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	mov	r1, #0x18
	mov	r5, #0x18
	mov	r6, #0xc
	neg	r1, r1
	str	r5, [sp, #4]
	str	r6, [sp]
	ldr	r2, =iwram_1f0c
	mov	r0, #0x3c
	add	r1, r11
	add	r8, r0
	mov	r10, r1
	ldr	r0, [sp, #0x7c]
	ldr	r1, [sp, #0x38]
	ldr	r4, [r2]
	mov	r3, r10
	mov	r2, r8
	b	.Le21e8

	.pool_aligned

.Le21e8:
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r0, =iwram_1f0c
	str	r5, [sp, #4]
	str	r6, [sp]
	ldr	r1, [sp, #0x38]
	ldr	r2, [sp, #0x3c]
	ldr	r4, [r0]
	mov	r3, r10
	ldr	r0, [sp, #0x7c]
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
	ldr	r2, =iwram_1f0c
	str	r5, [sp, #4]
	str	r6, [sp]
	ldr	r1, [sp, #0x38]
	ldr	r4, [r2]
	ldr	r0, [sp, #0x7c]
	mov	r2, r8
	mov	r3, r11
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	mov	r0, #0x2f
	bl	Func_ed408
	str	r5, [sp, #4]
	str	r6, [sp]
	ldr	r5, =iwram_1f0c
	ldr	r0, [sp, #0x7c]
	ldr	r4, [r5]
	ldr	r1, [sp, #0x38]
	ldr	r2, [sp, #0x3c]
	mov	r3, r11
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	ldr	r7, =ewram_10c58
	mov	r0, #0
	mov	r8, r0
	mov	r9, r0
.Le2278:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Le22d4
	bl	Func_4458
	mov	r5, #0x3f
	and	r5, r0
	bl	Func_4458
	ldr	r3, =0xffff
	ldr	r1, [sp, #0x3c]
	mov	r6, r0
	mov	r2, r11
	and	r6, r3
	lsl	r3, r1, #16
	str	r3, [r7]
	lsl	r3, r2, #16
	str	r3, [r7, #4]
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x40
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x10
	str	r3, [r7, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	cmp	r4, #4
	beq	.Le22e0
.Le22d4:
	mov	r5, #1
	ldr	r0, =0x38e
	add	r9, r5
	add	r7, #0x1c
	cmp	r9, r0
	bne	.Le2278
.Le22e0:
	mov	r1, #2
	str	r1, [sp]
	mov	r2, #7
	mov	r3, #0xf
	mov	r0, #0x2f
	mov	r1, #7
	bl	Func_ed408
	ldr	r2, =iwram_1f0c
	ldr	r2, [r2]
	mov	r3, #0
	ldr	r5, =ewram_10c58
	mov	r8, r2
	mov	r9, r3
.Le22fc:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	ble	.Le2364
	sub	r3, #1
	str	r3, [r5, #0x18]
	mov	r0, r5
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e3908
	mov	r4, #0xf0
	ldr	r3, [r5, #4]
	lsl	r4, #15
	cmp	r3, r4
	ble	.Le2328
	ldr	r3, [r5, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5, #0x10]
	b	.Le2364
.Le2328:
	ldr	r2, [r5]
	ldr	r0, =0x7effff
	cmp	r2, r0
	bhi	.Le2364
	cmp	r3, #0
	blt	.Le2364
	ldr	r0, [r5, #0x18]
	asr	r6, r2, #16
	asr	r7, r3, #16
	cmp	r0, #0
	bge	.Le2340
	add	r0, #0xf
.Le2340:
	asr	r0, #4
	add	r0, #1
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x78]
	add	r1, r2, r1
	lsr	r2, r0, #31
	add	r2, r0, r2
	asr	r2, #1
	sub	r3, r7, r0
	str	r0, [sp]
	sub	r2, r6, r2
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x7c]
	bl	_call_via_r8
.Le2364:
	mov	r3, #1
	ldr	r4, =0x38e
	add	r9, r3
	add	r5, #0x1c
	cmp	r9, r4
	bne	.Le22fc
	mov	r0, #0x2f
	bl	Func_2dd8
	ldr	r5, [sp, #0x74]
	cmp	r5, #0xf
	ble	.Le23cc
	cmp	r5, #0x20
	bne	.Le238a
	mov	r0, #0x80
	ldr	r1, =0xffffc000
	lsl	r0, #11
	str	r0, [sp, #0x48]
	str	r1, [sp, #0x44]
.Le238a:
	ldr	r2, [sp, #0x74]
	cmp	r2, #0x1f
	ble	.Le23c2
	ldr	r4, [sp, #0x48]
	ldr	r3, [sp, #0x50]
	add	r3, r4
	ldr	r5, [sp, #0x4c]
	str	r3, [sp, #0x50]
	ldr	r0, [sp, #0x44]
	lsl	r3, r4, #4
	sub	r3, r4
	add	r5, r0
	lsl	r3, #2
	str	r5, [sp, #0x4c]
	cmp	r3, #0
	bge	.Le23ac
	add	r3, #0x3f
.Le23ac:
	ldr	r1, [sp, #0x44]
	asr	r3, #6
	str	r3, [sp, #0x48]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r3, #2
	cmp	r3, #0
	bge	.Le23be
	add	r3, #0x3f
.Le23be:
	asr	r3, #6
	str	r3, [sp, #0x44]
.Le23c2:
	mov	r0, #0
	ldr	r1, [sp, #0x50]
	ldr	r2, [sp, #0x4c]
	bl	Func_e6d3c
.Le23cc:
	ldr	r3, [sp, #0x74]
	sub	r3, #0x10
	cmp	r3, #0x7f
	bhi	.Le247c
	ldr	r3, [sp, #0x50]
	ldr	r4, =Data_edeca
	ldr	r5, =Data_eded0
	mov	r2, #0
	asr	r3, #17
	mov	r9, r2
	mov	r11, r3
	mov	r7, #3
	mov	r10, r4
	mov	r8, r5
.Le23e8:
	mov	r4, r9
	and	r4, r7
	str	r4, [sp, #8]
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	ldr	r4, [sp, #8]
	mov	r6, r0
	mov	r0, r10
	ldrb	r3, [r0, r4]
	lsl	r6, #3
	asr	r6, #16
	lsr	r3, #1
	mov	r0, r5
	add	r6, r11
	sub	r6, r3
	bl	Func_231c
	ldr	r4, [sp, #8]
	mov	r1, r8
	lsl	r5, r0, #2
	ldrb	r3, [r1, r4]
	add	r5, r0
	lsl	r5, #3
	lsr	r3, #1
	asr	r5, #16
	sub	r5, r3
	bl	Func_4458
	ldr	r3, =.Leecae
	and	r0, r7
	ldrb	r2, [r3, r0]
	mov	r3, r7
	orr	r3, r2
	mov	r2, #2
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r4, [sp, #8]
	ldr	r2, =Data_edebe
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =ewram_10000
	mov	r0, r10
	add	r1, r3
	ldrb	r3, [r0, r4]
	str	r3, [sp]
	mov	r2, r8
	ldrb	r3, [r2, r4]
	str	r3, [sp, #4]
	ldr	r3, =iwram_1f0c
	add	r5, #0x38
	ldr	r4, [r3]
	ldr	r0, [sp, #0x7c]
	mov	r3, r5
	mov	r2, r6
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r4, #1
	add	r9, r4
	mov	r5, r9
	cmp	r5, #3
	bne	.Le23e8
.Le247c:
	ldr	r0, [sp, #0x74]
	cmp	r0, #0x1f
	bgt	.Le248c
	mov	r0, #8
	mov	r1, #0x10
	bl	Func_e155c
	b	.Le2494
.Le248c:
	mov	r0, #4
	mov	r1, #4
	bl	Func_e155c
.Le2494:
	bl	Func_cd52c
	ldr	r3, =0x7824
	ldr	r1, [sp, #0x80]
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r4, [sp, #0x74]
	add	r4, #1
	str	r4, [sp, #0x74]
	cmp	r4, #0xc0
	beq	.Le24b4
	b	.Le1e4e
.Le24b4:
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0
	ldr	r1, [sp, #0x50]
	ldr	r2, [sp, #0x4c]
	bl	Func_e6eac
	ldr	r1, =0x77d8
	ldr	r0, [sp, #0x80]
	mov	r5, #0
	mov	r9, r5
	add	r5, r0, r1
.Le24d4:
	ldmia	r5!, {r0}
	bl	_Func_bdd4
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #9
	bne	.Le24d4
	bl	Func_cdbc0
	add	sp, #0x150
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e15e8

.thumb_func_start Func_e2538
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1eec
	mov	r3, r5
	ldmia	r3!, {r1}
	sub	sp, #0x38
	str	r1, [sp, #0x1c]
	ldr	r2, =0x7828
	ldr	r3, [r3]
	add	r1, r2
	str	r3, [sp, #0x18]
	str	r0, [r1]
	mov	r0, #1
	mov	r8, r1
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le25a0	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Le25a4	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r1, [sp, #0x1c]
	ldr	r0, =0x8a
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r3, #1
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r10, r3
	mov	r0, #0x2e
	mov	r3, #3
	bl	Func_ed408
	ldr	r5, [r5, #0x1c]
	str	r5, [sp, #0x14]
	mov	r4, r8
	ldr	r3, [r4]
	add	r6, sp, #0x2c
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r6
	b	.Le25b8

	.align	2, 0
.Le25a0:
	.word	0x100
.Le25a4:
	.word	0
	.pool

.Le25b8:
	bl	Func_e396c
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, [r2, #0x14]
	lsl	r3, #1
	add	r5, sp, #0x20
	add	r3, #0x22
	ldrsh	r0, [r2, r3]
	mov	r1, r5
	bl	Func_e396c
	ldr	r1, [r6]
	ldr	r3, [r5]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	mov	r3, #0x40
	ldr	r2, =REG_BG2X
	sub	r3, r1
	lsl	r3, #8
	str	r1, [r6]
	str	r3, [r2]
	ldr	r0, [sp, #0x1c]
	mov	r1, #0xef
	lsl	r1, #7
	add	r3, r0, r1
	mov	r2, r10
	str	r2, [r3]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r0, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r4, r8
	ldr	r3, [r4]
	ldr	r2, =.Leecfc
	ldr	r3, [r3, #0x18]
	ldrb	r2, [r2, r3]
	mov	r0, #0
	str	r2, [sp, #0x10]
	mov	r9, r0
	cmp	r2, #0
	beq	.Le26b2
	ldr	r4, [sp, #0x1c]
	mov	r0, #0xe1
	lsl	r0, #7
	ldr	r1, =0xffc00000
	mov	r2, #0
	add	r3, r4, r0
.Le2628:
	str	r1, [r3, #4]
	str	r2, [r3, #0x10]
	mov	r4, #1
	ldr	r0, [sp, #0x10]
	add	r9, r4
	add	r3, #0x1c
	cmp	r9, r0
	bne	.Le2628
	mov	r1, #0
	mov	r9, r1
	cmp	r0, #0
	beq	.Le26b2
	ldr	r2, =.Leecb2
	mov	r7, #0
	mov	r10, r2
.Le2646:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x8c
	mov	r4, r9
	mul	r4, r3
	ldr	r0, =ewram_10000
	mov	r3, r4
	add	r3, r7, r3
	mov	r6, r10
	add	r5, r3, r0
.Le265a:
	ldr	r2, =.Leecf2
	mov	r1, r9
	ldrsb	r2, [r2, r1]
	ldrb	r3, [r6]
	add	r3, r2
	lsl	r3, #16
	str	r3, [r5]
	ldrb	r3, [r6, #1]
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r1, #0x60
	bl	Func_b50_from_thumb
	sub	r0, #0x30
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	add	r3, #0x20
	neg	r3, r3
	lsl	r3, #11
	str	r3, [r5, #0x10]
	mov	r2, #1
	mov	r3, #0x20
	str	r3, [r5, #8]
	add	r8, r2
	mov	r3, #0
	str	r3, [r5, #0x18]
	mov	r3, r8
	add	r6, #2
	add	r5, #0x1c
	cmp	r3, #0x15
	bne	.Le265a
	mov	r4, #0xe0
	ldr	r0, [sp, #0x10]
	lsl	r4, #1
	add	r9, r2
	add	r7, r4
	cmp	r9, r0
	bne	.Le2646
.Le26b2:
	ldr	r2, [sp, #0x10]
	mov	r1, #0
	sub	r2, #1
	mov	r11, r1
	str	r2, [sp, #0xc]
	ldr	r1, =.Leecf7
	mov	r4, #0x50
	ldrb	r3, [r1, r2]
	neg	r4, r4
	cmp	r3, r4
	bne	.Le26ca
	b	.Le2890
.Le26ca:
	ldrb	r3, [r1, r2]
	add	r3, #0x30
	cmp	r11, r3
	bne	.Le26d8
	mov	r0, #0x84
	bl	_Func_bd7dc
.Le26d8:
	ldr	r1, [sp, #0x10]
	mov	r0, #0
	mov	r9, r0
	cmp	r1, #0
	bne	.Le26e4
	b	.Le2862
.Le26e4:
	ldr	r2, [sp, #0x1c]
	mov	r3, #0xe1
	lsl	r3, #7
	add	r2, r3
	mov	r10, r2
.Le26ee:
	ldr	r5, =.Leecf7
	mov	r4, r9
	ldrb	r3, [r5, r4]
	mov	r2, r3
	add	r2, #0x12
	cmp	r11, r2
	bne	.Le2710
	mov	r0, #0x86
	bl	_Func_f9080
	ldr	r1, =0x77a8
	ldr	r0, [sp, #0x1c]
	mov	r3, #4
	add	r2, r0, r1
	str	r3, [r2]
	mov	r2, r9
	ldrb	r3, [r5, r2]
.Le2710:
	add	r3, #0x12
	cmp	r11, r3
	blt	.Le27c0
	mov	r4, r9
	lsl	r4, #2
	mov	r3, #0
	str	r4, [sp, #8]
	mov	r8, r3
.Le2720:
	ldr	r3, [sp, #8]
	add	r3, r9
	lsl	r3, #2
	add	r3, r9
	add	r3, r8
	lsl	r2, r3, #3
	sub	r2, r3
	ldr	r0, =ewram_10000
	lsl	r2, #2
	add	r7, r2, r0
	mov	r1, #5
	mov	r0, r8
	bl	Func_b1c_from_thumb
	lsl	r5, r0, #1
	add	r5, r0
	mov	r1, #0x60
	ldr	r0, [r7, #0x18]
	bl	Func_af0_from_thumb
	mov	r1, #3
	bl	Func_b1c_from_thumb
	ldr	r2, =.Leed1e
	add	r5, r0
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x1c]
	ldr	r3, =0x83c
	add	r1, r2, r1
	add	r1, r3
	ldr	r3, =.Leecff
	ldrb	r6, [r3, r5]
	mov	r4, #2
	ldrsh	r2, [r7, r4]
	lsr	r3, r6, #1
	sub	r2, r3
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldr	r0, =.Leed0e
	ldrb	r4, [r0, r5]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r4, [sp, #4]
	str	r6, [sp]
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, r7
	mov	r1, #0x40
	bl	Func_e3908
	ldr	r3, [r7, #0x18]
	ldr	r2, [r7, #8]
	add	r3, r2
	str	r3, [r7, #0x18]
	cmp	r2, #1
	ble	.Le27a8
	mov	r3, #1
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	beq	.Le27a8
	sub	r3, r2, #1
	str	r3, [r7, #8]
.Le27a8:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x15
	bne	.Le2720
	ldr	r5, =.Leecf7
	mov	r4, r9
	ldrb	r3, [r5, r4]
	add	r3, #0x12
	cmp	r11, r3
	bge	.Le2812
	b	.Le27c2
.Le27c0:
	ldr	r5, =.Leecf7
.Le27c2:
	mov	r0, r9
	ldrb	r3, [r5, r0]
	cmp	r11, r3
	blt	.Le27e8
	ldr	r3, =.Leecf2
	mov	r4, r10
	ldrsb	r2, [r3, r0]
	mov	r1, #6
	ldrsh	r3, [r4, r1]
	mov	r1, #0x22
	str	r1, [sp]
	mov	r1, #0x3e
	str	r1, [sp, #4]
	add	r2, #0x2f
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x1c]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
.Le27e8:
	mov	r0, r10
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #0x10]
	mov	r1, r9
	add	r3, r2
	str	r3, [r0, #4]
	ldrb	r3, [r5, r1]
	cmp	r11, r3
	ble	.Le2802
	mov	r4, #0x80
	lsl	r4, #9
	add	r3, r2, r4
	str	r3, [r0, #0x10]
.Le2802:
	mov	r0, r10
	mov	r2, #0xc8
	ldr	r3, [r0, #4]
	lsl	r2, #14
	cmp	r3, r2
	ble	.Le2810
	str	r2, [r0, #4]
.Le2810:
	ldr	r5, =.Leecf7
.Le2812:
	mov	r1, r9
	ldrb	r3, [r5, r1]
	add	r3, #0x12
	cmp	r11, r3
	bne	.Le2852
	ldr	r3, =0x7828
	ldr	r4, [sp, #0x1c]
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0x14]
	mov	r2, #0
	mov	r8, r2
	cmp	r3, #0
	beq	.Le2852
	ldr	r0, =0x7828
	mov	r6, #0x24
	add	r5, r4, r0
.Le2832:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r8
	mov	r1, #7
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r6, #2
	cmp	r8, r3
	bne	.Le2832
.Le2852:
	mov	r4, #1
	ldr	r0, [sp, #0x10]
	mov	r3, #0x1c
	add	r9, r4
	add	r10, r3
	cmp	r9, r0
	beq	.Le2862
	b	.Le26ee
.Le2862:
	mov	r0, #2
	mov	r1, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r3, =0x7824
	ldr	r1, [sp, #0x1c]
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =.Leecf7
	ldr	r2, [sp, #0xc]
	ldrb	r3, [r1, r2]
	mov	r4, #1
	add	r11, r4
	add	r3, #0x50
	cmp	r11, r3
	beq	.Le2890
	b	.Le26ca
.Le2890:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e2538

	.section .rodata

.Leec5f:
	.incrom 0xeec5f, 0xeec63
.Leec63:
	.incrom 0xeec63, 0xeec68
.Leec68:
	.incrom 0xeec68, 0xeec70
.Leec70:
	.incrom 0xeec70, 0xeec74
.Leec74:
	.incrom 0xeec74, 0xeec7d
.Leec7d:
	.incrom 0xeec7d, 0xeec86
.Leec86:
	.incrom 0xeec86, 0xeec98
.Leec98:
	.incrom 0xeec98, 0xeeca1
.Leeca1:
	.incrom 0xeeca1, 0xeecaa
.Leecaa:
	.incrom 0xeecaa, 0xeecae
.Leecae:
	.incrom 0xeecae, 0xeecb2
.Leecb2:
	.incrom 0xeecb2, 0xeecf2
.Leecf2:
	.incrom 0xeecf2, 0xeecf7
.Leecf7:
	.incrom 0xeecf7, 0xeecfc
.Leecfc:
	.incrom 0xeecfc, 0xeecff
.Leecff:
	.incrom 0xeecff, 0xeed0e
.Leed0e:
	.incrom 0xeed0e, 0xeed1e
.Leed1e:
	.incrom 0xeed1e, 0xeed3e
