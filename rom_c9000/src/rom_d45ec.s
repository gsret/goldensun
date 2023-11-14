	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_d45ec
	push	{lr}
	mov	r1, #0
	bl	Func_d4604
	pop	{r0}
	bx	r0
.func_end Func_d45ec

.thumb_func_start Func_d45f8
	push	{lr}
	mov	r1, #1
	bl	Func_d4604
	pop	{r0}
	bx	r0
.func_end Func_d45f8

.thumb_func_start Func_d4604
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x50
	ldr	r2, =iwram_1eec
	str	r1, [sp, #0x38]
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	str	r3, [sp, #0x34]
	ldr	r5, =0x7828
	ldr	r2, [r2, #8]
	mov	r9, r1
	add	r5, r9
	str	r2, [sp, #0x28]
	str	r0, [r5]
	ldr	r2, [sp, #0x38]
	cmp	r2, #0
	bne	.Ld4642
	mov	r0, #1
	bl	Func_cd594
	mov	r3, #0x3c
	mov	r0, #0x30
	str	r3, [sp, #0x24]
	str	r0, [sp, #0x20]
	b	.Ld4682
.Ld4642:
	ldr	r1, [sp, #0x38]
	cmp	r1, #1
	bne	.Ld4660
	mov	r0, #0
	bl	Func_cd594
	mov	r2, #0x3c
	mov	r3, #0x40
	str	r2, [sp, #0x24]
	b	.Ld4680

	.pool_aligned

.Ld4660:
	mov	r0, #0
	bl	Func_cd594
	ldr	r3, [r5]
	add	r5, sp, #0x44
	ldr	r0, [r3, #8]
	mov	r1, r5
	bl	Func_e396c
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp, #0x24]
	ldr	r3, [r5, #4]
	add	r3, #0x30
.Ld4680:
	str	r3, [sp, #0x20]
.Ld4682:
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld46c0	@ 0x1010
	strh	r3, [r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #0x3c]
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r3, [sp]
	bl	Func_ed408
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r0, sp
	add	r0, #0x3c
	str	r0, [sp, #0x18]
	mov	r1, r9
	str	r3, [r0, #4]
	b	.Ld46cc

	.align	2, 0
.Ld46c0:
	.word	0x1010
	.pool

.Ld46cc:
	mov	r2, #1
	ldr	r0, =0x7d
	mov	r3, #1
	bl	Func_e0524
	ldr	r0, =0x73
	ldr	r1, [sp, #0x28]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r1, [sp, #0x38]
	cmp	r1, #1
	bne	.Ld46fe
	ldr	r0, =0x87
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	b	.Ld4718
.Ld46fe:
	ldr	r2, [sp, #0x38]
	cmp	r2, #2
	bne	.Ld4718
	ldr	r0, =0xc4
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ld4718:
	mov	r3, #0
	str	r3, [sp, #0x30]
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r1, =.Lee262
	lsl	r3, #1
	add	r3, #2
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	bne	.Ld4736
	b	.Ld4894
.Ld4736:
	mov	r0, r9
	str	r0, [sp, #0xc]
.Ld473a:
	ldr	r2, [sp, #0xc]
	mov	r3, #0xe1
	mov	r1, #0
	lsl	r3, #7
	mov	r10, r1
	add	r7, r2, r3
.Ld4746:
	mov	r0, r10
	lsl	r6, r0, #1
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	str	r3, [r7]
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r1, r10
	neg	r3, r3
	str	r3, [r7, #4]
	lsr	r3, r1, #31
	add	r3, r10
	asr	r3, #1
	mov	r2, #1
	add	r3, #0x19
	add	r10, r2
	str	r3, [r7, #0x18]
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Ld4746
	mov	r0, #0
	mov	r10, r0
	ldr	r0, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r0]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	ldr	r1, =.Lee262
	add	r3, r2
	lsl	r3, #1
	ldrh	r3, [r1, r3]
	mov	r4, r1
	cmp	r3, #0
	beq	.Ld486a
	ldr	r3, [sp, #0x20]
	lsl	r3, #16
	mov	r11, r3
.Ld47a8:
	mov	r1, r9
	add	r5, r1, r0
	ldr	r3, [r5]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	ldrh	r3, [r4, r3]
	ldr	r0, [sp, #0x30]
	mov	r2, r3
	mul	r2, r0
	add	r2, r10
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r1, =ewram_10000
	lsl	r3, #2
	add	r6, r3, r1
	str	r4, [sp, #8]
	bl	Func_4458
	ldr	r3, =0x3ff
	and	r3, r0
	add	r3, #0x20
	mov	r8, r3
	bl	Func_4458
	ldr	r3, =0xffff
	ldr	r5, [r5]
	mov	r7, r0
	and	r7, r3
	ldr	r3, [r5, #4]
	ldr	r4, [sp, #8]
	cmp	r3, #1
	bne	.Ld4804
	ldr	r3, [r5, #0x18]
	lsl	r2, r3, #2
	add	r2, r3
	ldr	r3, [sp, #0x30]
	add	r2, r3
	lsl	r2, #1
	add	r2, #4
	ldr	r0, [sp, #0x24]
	ldrh	r3, [r4, r2]
	sub	r3, r0, r3
	add	r3, #0x1c
	b	.Ld481a
.Ld4804:
	ldr	r3, [r5, #0x18]
	ldr	r1, [sp, #0x30]
	lsl	r2, r3, #2
	add	r2, r3
	add	r2, r1
	lsl	r2, #1
	add	r2, #4
	ldrh	r3, [r4, r2]
	ldr	r2, [sp, #0x24]
	add	r3, r2, r3
	sub	r3, #0x1c
.Ld481a:
	lsl	r3, #16
	str	r3, [r6]
	mov	r3, r11
	str	r3, [r6, #4]
	mov	r0, r7
	bl	Func_2322
	mov	r3, r8
	mul	r3, r0
	asr	r3, #6
	str	r3, [r6, #0xc]
	mov	r0, r7
	bl	Func_231c
	mov	r3, r8
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #6
	str	r3, [r6, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	mov	r0, #1
	add	r10, r0
	ldr	r0, =0x7828
	add	r3, #0x20
	mov	r2, r9
	str	r3, [r6, #0x18]
	ldr	r3, [r2, r0]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	ldr	r1, =.Lee262
	add	r3, r2
	lsl	r3, #1
	ldrh	r3, [r1, r3]
	mov	r4, r1
	cmp	r10, r3
	bne	.Ld47a8
.Ld486a:
	ldr	r3, [sp, #0xc]
	mov	r0, #0xe0
	lsl	r0, #1
	ldr	r2, [sp, #0x30]
	add	r3, r0
	str	r3, [sp, #0xc]
	add	r2, #1
	ldr	r3, =0x7828
	str	r2, [sp, #0x30]
	add	r3, r9
	ldr	r3, [r3]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	add	r3, #2
	ldrh	r3, [r1, r3]
	ldr	r0, [sp, #0x30]
	cmp	r0, r3
	beq	.Ld4894
	b	.Ld473a
.Ld4894:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r1, #0
	str	r1, [sp, #0x2c]
	ldr	r0, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r0]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r1, =.Lee262
	lsl	r3, #1
	add	r3, #2
	ldrh	r3, [r1, r3]
	ldr	r2, =0x1ffffff9
	cmp	r3, r2
	bne	.Ld48d0
	b	.Ld4c9c
.Ld48d0:
	ldr	r3, [sp, #0x38]
	ldr	r1, =0x7828
	sub	r3, #1
	add	r1, r9
	str	r3, [sp, #0x14]
	str	r1, [sp, #0x1c]
.Ld48dc:
	ldr	r3, =iwram_1e80
	ldr	r1, [r3]
	mov	r3, r9
	ldr	r2, [r3, r0]
	ldr	r3, [r2, #0x18]
	cmp	r3, #2
	bne	.Ld4908
	ldr	r0, [sp, #0x2c]
	cmp	r0, #0x33
	bgt	.Ld4908
	ldr	r3, [r2, #4]
	cmp	r3, #0
	bne	.Ld4900
	ldrh	r3, [r1, #0x36]
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r2
	b	.Ld4906
.Ld4900:
	ldrh	r3, [r1, #0x36]
	ldr	r0, =0xffffff00
	add	r3, r0
.Ld4906:
	strh	r3, [r1, #0x36]
.Ld4908:
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	cmp	r3, #3
	bne	.Ld4926
	ldr	r2, [sp, #0x2c]
	cmp	r2, #4
	bne	.Ld4926
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x34]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Ld4926:
	ldr	r3, [sp, #0x14]
	cmp	r3, #1
	bhi	.Ld493a
	ldr	r0, [sp, #0x2c]
	cmp	r0, #2
	bne	.Ld4952
	mov	r0, #0x91
	bl	_Func_bd7dc
	b	.Ld4952
.Ld493a:
	ldr	r1, [sp, #0x2c]
	cmp	r1, #2
	bne	.Ld4946
	mov	r0, #0x91
	bl	_Func_f9080
.Ld4946:
	ldr	r2, [sp, #0x2c]
	cmp	r2, #0x18
	bne	.Ld4952
	mov	r0, #0x86
	bl	_Func_bd7dc
.Ld4952:
	mov	r3, #0
	str	r3, [sp, #0x30]
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	ldr	r1, =.Lee262
	add	r3, #2
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	bne	.Ld496e
	b	.Ld4c5c
.Ld496e:
	mov	r2, r9
	str	r2, [sp, #0x10]
.Ld4972:
	ldr	r3, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	lsl	r3, #3
	mov	r11, r3
	cmp	r0, r11
	bne	.Ld4986
	ldr	r2, =0x77a8
	mov	r3, #0xc
	add	r2, r9
	str	r3, [r2]
.Ld4986:
	ldr	r1, [sp, #0x2c]
	cmp	r1, r11
	bge	.Ld498e
	b	.Ld4af8
.Ld498e:
	mov	r3, r11
	add	r3, #2
	cmp	r1, r3
	bge	.Ld4a46
	ldr	r3, [sp, #0x1c]
	ldr	r2, [r3]
	ldr	r3, [r2, #4]
	cmp	r3, #1
	bne	.Ld4a18
	ldr	r2, [r2, #0x18]
	ldr	r0, [sp, #0x30]
	lsl	r3, r2, #2
	add	r3, r2
	add	r3, r0
	ldr	r1, =.Lee262
	lsl	r3, #1
	add	r3, #4
	ldrh	r2, [r1, r3]
	ldr	r3, [sp, #0x24]
	sub	r2, r3, r2
	mov	r3, #0x20
	str	r3, [sp]
	mov	r3, #0x40
	str	r3, [sp, #4]
	ldr	r3, [sp, #0x20]
	add	r2, #0xc
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	mov	r1, r9
	sub	r3, #0x20
	bl	_call_via_r4
	b	.Ld4a46

	.pool_aligned

.Ld4a18:
	ldr	r2, [r2, #0x18]
	ldr	r0, [sp, #0x30]
	lsl	r3, r2, #2
	add	r3, r2
	add	r3, r0
	ldr	r1, =.Lee262
	lsl	r3, #1
	add	r3, #4
	ldrh	r2, [r1, r3]
	ldr	r3, [sp, #0x24]
	add	r2, r3, r2
	mov	r3, #0x20
	str	r3, [sp]
	mov	r3, #0x40
	str	r3, [sp, #4]
	ldr	r3, [sp, #0x20]
	sub	r2, #0x2c
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	mov	r1, r9
	sub	r3, #0x20
	bl	_call_via_r4
.Ld4a46:
	ldr	r0, [sp, #0x2c]
	cmp	r0, r11
	blt	.Ld4af8
	ldr	r2, =.Lee262
	ldr	r3, [sp, #0x10]
	mov	r0, #0xe1
	mov	r1, #0
	lsl	r0, #7
	mov	r10, r1
	mov	r8, r2
	add	r5, r3, r0
.Ld4a5c:
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	ldr	r2, [sp, #0x20]
	add	r7, r3, r2
	ldr	r3, [sp, #0x1c]
	ldr	r2, [r3]
	ldr	r3, [r2, #4]
	cmp	r3, #1
	bne	.Ld4a90
	ldr	r2, [r2, #0x18]
	mov	r0, #2
	ldrsh	r1, [r5, r0]
	ldr	r3, [sp, #0x24]
	ldr	r0, [sp, #0x30]
	add	r1, r3
	lsl	r3, r2, #2
	add	r3, r2
	add	r3, r0
	lsl	r3, #1
	add	r3, #4
	mov	r2, r8
	ldrh	r3, [r2, r3]
	sub	r1, r3
	mov	r6, r1
	add	r6, #0x1c
	b	.Ld4ab0
.Ld4a90:
	ldr	r2, [r2, #0x18]
	mov	r3, #2
	ldrsh	r1, [r5, r3]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, [sp, #0x30]
	ldr	r0, [sp, #0x24]
	add	r3, r2
	lsl	r3, #1
	add	r1, r0
	add	r3, #4
	mov	r0, r8
	ldrh	r3, [r0, r3]
	add	r1, r3
	mov	r6, r1
	sub	r6, #0x1c
.Ld4ab0:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0x11
	bhi	.Ld4ade
	mov	r1, #3
	bl	Func_af0_from_thumb
	ldr	r2, =.Lee294
	ldrb	r1, [r2, r0]
	mov	r0, #0x20
	str	r0, [sp]
	lsl	r1, #11
	mov	r0, #0x40
	mov	r2, r6
	mov	r3, r7
	str	r0, [sp, #4]
	add	r1, r9
	sub	r2, #0x10
	sub	r3, #0x20
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r0, [r5, #0x18]
.Ld4ade:
	cmp	r0, #0
	ble	.Ld4ae6
	sub	r3, r0, #1
	b	.Ld4aea
.Ld4ae6:
	mov	r3, #1
	neg	r3, r3
.Ld4aea:
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r0, r10
	add	r5, #0x1c
	cmp	r0, #0xc
	bne	.Ld4a5c
.Ld4af8:
	mov	r3, r11
	ldr	r1, [sp, #0x2c]
	add	r3, #5
	cmp	r1, r3
	ble	.Ld4be4
	ldr	r2, [sp, #0x38]
	ldr	r7, =0xfffff000
	cmp	r2, #2
	beq	.Ld4b0e
	mov	r7, #0x80
	lsl	r7, #5
.Ld4b0e:
	ldr	r4, =0x7828
	mov	r3, #0
	mov	r2, r9
	mov	r10, r3
	ldr	r3, [r2, r4]
	ldr	r2, [r3, #0x18]
	ldr	r1, =.Lee262
	lsl	r3, r2, #2
	add	r3, r2
	mov	r0, r1
	lsl	r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.Ld4be4
.Ld4b2a:
	mov	r2, r9
	ldr	r3, [r2, r4]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	ldrh	r3, [r0, r3]
	ldr	r0, [sp, #0x30]
	mov	r2, r3
	mul	r2, r0
	add	r2, r10
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =ewram_10000
	lsl	r3, #2
	add	r6, r3, r2
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Ld4bca
	mov	r0, r6
	mov	r2, r7
	mov	r1, #0x3c
	bl	Func_e3908
	ldr	r3, [r6, #0x18]
	mov	r0, #0xd8
	ldr	r2, [r6, #4]
	sub	r3, #1
	lsl	r0, #15
	str	r3, [r6, #0x18]
	cmp	r2, r0
	ble	.Ld4b78
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Ld4bc8
.Ld4b78:
	ldr	r0, [r6]
	ldr	r1, =0x7effff
	cmp	r0, r1
	bhi	.Ld4bc8
	cmp	r2, #0
	blt	.Ld4bc8
	asr	r2, #16
	asr	r6, r0, #16
	mov	r1, #5
	mov	r0, r3
	mov	r8, r2
	bl	Func_af0_from_thumb
	add	r0, #1
	mov	r2, r10
	mov	r4, #1
	lsl	r5, r0, #1
	and	r4, r2
	ldr	r2, =Data_ede48
	sub	r3, r5, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x28]
	add	r1, r3, r1
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	mov	r2, r8
	sub	r2, r0
	str	r0, [sp]
	sub	r6, r3
	str	r5, [sp, #4]
	ldr	r3, [sp, #0x18]
	mov	r8, r2
	lsl	r4, #2
	ldr	r4, [r4, r3]
	ldr	r0, [sp, #0x34]
	mov	r2, r6
	mov	r3, r8
	bl	_call_via_r4
.Ld4bc8:
	ldr	r1, =.Lee262
.Ld4bca:
	ldr	r4, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r4]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	mov	r0, #1
	add	r3, r2
	add	r10, r0
	lsl	r3, #1
	mov	r0, r1
	ldrh	r3, [r0, r3]
	cmp	r10, r3
	bne	.Ld4b2a
.Ld4be4:
	ldr	r2, =0x7828
	mov	r3, #0
	mov	r0, r9
	mov	r10, r3
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld4c32
	mov	r7, r11
	add	r7, #6
	mov	r6, #0x24
.Ld4bfa:
	ldr	r1, [sp, #0x2c]
	cmp	r1, r7
	bne	.Ld4c20
	mov	r3, r9
	add	r5, r3, r2
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r10
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #4
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
.Ld4c20:
	ldr	r2, =0x7828
	mov	r3, #1
	mov	r0, r9
	add	r10, r3
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	cmp	r10, r3
	bne	.Ld4bfa
.Ld4c32:
	ldr	r1, [sp, #0x10]
	ldr	r3, [sp, #0x30]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r1, r2
	add	r3, #1
	str	r1, [sp, #0x10]
	str	r3, [sp, #0x30]
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	ldr	r1, =.Lee262
	add	r3, #2
	ldrh	r3, [r1, r3]
	ldr	r2, [sp, #0x30]
	cmp	r2, r3
	beq	.Ld4c5c
	b	.Ld4972
.Ld4c5c:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	str	r3, [sp, #0x2c]
	ldr	r0, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r0]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	ldr	r2, =.Lee262
	add	r3, #2
	ldrh	r3, [r2, r3]
	ldr	r1, [sp, #0x2c]
	lsl	r3, #3
	add	r3, #0x38
	cmp	r1, r3
	beq	.Ld4c9c
	b	.Ld48dc
.Ld4c9c:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x50
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d4604

.thumb_func_start Func_d4ce8
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
	sub	sp, #0x40
	str	r3, [sp, #0x28]
	ldr	r5, =0x7828
	mov	r11, r1
	ldr	r2, [r2, #8]
	add	r5, r11
	str	r2, [sp, #0x1c]
	str	r0, [r5]
	mov	r0, #1
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld4d50	@ 0x1010
	ldr	r0, =0x85
	strh	r3, [r2]
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r3, #0
	ldr	r0, =0x73
	ldr	r1, [sp, #0x1c]
	mov	r2, #0
	bl	Func_e0524
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	cmp	r3, #0
	bne	.Ld4d72
	ldr	r0, =0x86
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	b	.Ld4d70

	.align	2, 0
.Ld4d50:
	.word	0x1010
	.pool

.Ld4d70:
	b	.Ld4d8a
.Ld4d72:
	cmp	r3, #2
	bne	.Ld4d8a
	ldr	r0, =0x87
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ld4d8a:
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #0x2c]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	Func_ed408
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x2c
	str	r2, [sp, #0x18]
	str	r3, [r2, #4]
	mov	r3, #0
	mov	r8, r3
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r1, #0
	lsl	r2, #3
.Ld4dca:
	mov	r5, #1
	add	r8, r5
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Ld4dca
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r7, #0x24
	ldrsh	r0, [r3, r7]
	bl	_Func_b7dd0
	mov	r5, #0xe1
	ldr	r6, [r0]
	lsl	r5, #7
	mov	r0, #0
	ldr	r7, =.Lee29d
	mov	r8, r0
	add	r5, r11
.Ld4df2:
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x48
	lsl	r2, r3, #16
	mov	r3, #0
	str	r3, [r5, #4]
	ldr	r3, =0x7828
	add	r3, r11
	str	r2, [r5]
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	add	r3, r8
	ldrsb	r3, [r7, r3]
	lsl	r3, #16
	str	r3, [r5, #8]
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bge	.Ld4e20
	neg	r3, r2
	str	r3, [r5]
.Ld4e20:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x1c
	cmp	r2, #4
	bne	.Ld4df2
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r3, #0
	str	r3, [sp, #0x24]
.Ld4e4c:
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r2, [r3]
	ldr	r3, [r2, #0x18]
	cmp	r3, #2
	bne	.Ld4e74
	ldr	r7, [sp, #0x24]
	cmp	r7, #0x3f
	bgt	.Ld4e74
	ldr	r3, [r2, #4]
	cmp	r3, #0
	bne	.Ld4e6e
	ldrh	r3, [r5, #0x36]
	add	r3, #0xc0
	b	.Ld4e72
.Ld4e6e:
	ldrh	r3, [r5, #0x36]
	sub	r3, #0xc0
.Ld4e72:
	strh	r3, [r5, #0x36]
.Ld4e74:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0x10
	bne	.Ld4e80
	mov	r0, #0x86
	bl	_Func_bd7dc
.Ld4e80:
	bl	Func_49ac
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
	ldr	r1, [sp, #0x24]
	cmp	r1, #0x3f
	ble	.Ld4e96
	b	.Ld512e
.Ld4e96:
	mov	r2, #0
	ldr	r3, =0x7828
	str	r2, [sp, #0x20]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, =.Lee29a
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	bne	.Ld4eac
	b	.Ld512e
.Ld4eac:
	mov	r5, r1
	mov	r2, #0xdd
	mov	r1, #0xe1
	mov	r7, #1
	ldr	r0, =.Lee2a9
	lsl	r1, #7
	lsl	r2, #4
	mov	r3, #0x34
	and	r5, r7
	add	r1, r11
	add	r2, r11
	add	r3, sp
	str	r5, [sp, #0x14]
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #0x10]
	mov	r9, r3
.Ld4ece:
	ldr	r0, [sp, #8]
	mov	r1, r9
	bl	Func_e3944
	mov	r5, r9
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r5, #4]
	sub	r3, #8
	str	r3, [r5, #4]
	ldr	r7, [sp, #0xc]
	ldr	r0, [sp, #0x24]
	ldrb	r3, [r7]
	cmp	r0, r3
	bne	.Ld4efa
	mov	r0, #0x91
	bl	_Func_f9080
	ldrb	r3, [r7]
.Ld4efa:
	ldr	r1, [sp, #0x24]
	add	r3, #4
	cmp	r1, r3
	blt	.Ld4fc6
	ldr	r2, [sp, #0x20]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #3
	add	r3, r2
	lsl	r0, r1, #4
	add	r0, r3
	mov	r1, #0x68
	bl	Func_b1c_from_thumb
	ldr	r5, [sp, #0x20]
	mov	r3, #1
	and	r5, r3
	ldr	r3, [sp, #0x38]
	ldr	r7, [sp, #0x18]
	mov	r8, r0
	sub	r3, r0
	mov	r6, #0x22
	mov	r0, #0x68
	str	r0, [sp, #4]
	ldr	r2, [sp, #0x34]
	str	r6, [sp]
	lsl	r5, #2
	add	r5, r7
	sub	r2, #0x11
	sub	r3, #0x68
	ldr	r4, [r5]
	ldr	r0, [sp, #0x28]
	mov	r1, r11
	bl	_call_via_r4
	mov	r1, r8
	str	r1, [sp, #4]
	ldr	r2, [sp, #0x34]
	ldr	r3, [sp, #0x38]
	str	r6, [sp]
	sub	r2, #0x11
	sub	r3, r1
	ldr	r4, [r5]
	ldr	r0, [sp, #0x28]
	mov	r1, r11
	bl	_call_via_r4
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	beq	.Ld4f90
	ldr	r2, [sp, #0x34]
	ldr	r3, [sp, #0x38]
	mov	r5, #0x14
	mov	r7, #0x25
	sub	r2, #0x14
	sub	r3, #0x18
	ldr	r4, [sp, #0x2c]
	ldr	r1, [sp, #0x10]
	str	r5, [sp]
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	ldr	r0, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	str	r5, [sp]
	str	r7, [sp, #4]
	ldr	r2, [sp, #0x34]
	ldr	r4, [r0, #4]
	sub	r3, #0x18
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x10]
	bl	_call_via_r4
	b	.Ld4fc6
.Ld4f90:
	ldr	r5, =0x10b4
	ldr	r2, [sp, #0x34]
	ldr	r3, [sp, #0x38]
	add	r5, r11
	mov	r1, #0x14
	mov	r7, #0x25
	sub	r2, #0x14
	sub	r3, #0x18
	str	r1, [sp]
	ldr	r4, [sp, #0x2c]
	mov	r1, r5
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	mov	r0, #0x14
	str	r0, [sp]
	ldr	r1, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	str	r7, [sp, #4]
	ldr	r2, [sp, #0x34]
	ldr	r4, [r1, #4]
	sub	r3, #0x18
	ldr	r0, [sp, #0x28]
	mov	r1, r5
	bl	_call_via_r4
.Ld4fc6:
	ldr	r5, [sp, #0xc]
	ldr	r7, [sp, #0x24]
	ldrb	r3, [r5]
	ldr	r2, =.Lee2a9
	cmp	r7, r3
	beq	.Ld4fd8
	add	r3, #0x10
	cmp	r7, r3
	blt	.Ld50b6
.Ld4fd8:
	mov	r0, #0
	ldr	r7, =ewram_10000
	mov	r10, r0
	mov	r8, r0
.Ld4fe0:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Ld50a6
	bl	Func_4458
	ldr	r6, =0x3ff
	and	r6, r0
	bl	Func_4458
	mov	r2, r9
	ldr	r3, [r2]
	lsl	r3, #8
	str	r3, [r7]
	ldr	r5, =0x7fff
	ldr	r3, [r2, #4]
	ldr	r1, =0xffffc000
	and	r5, r0
	mov	r0, #0x80
	lsl	r0, #5
	lsl	r3, #8
	add	r5, r1
	add	r3, r0
	str	r3, [r7, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #15
	str	r3, [r7, #8]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #15
	str	r3, [r7, #0x10]
	ldr	r2, [sp, #0xc]
	ldr	r5, [sp, #0x24]
	ldrb	r3, [r2]
	mov	r1, #1
	add	r10, r1
	cmp	r5, r3
	bne	.Ld5094
	bl	Func_4458
	mov	r1, #7
	and	r0, r1
	add	r0, #0x30
	mov	r2, r10
	str	r0, [r7, #0x18]
	cmp	r2, #0xc8
	bne	.Ld50a6
	b	.Ld50b4

	.pool_aligned

.Ld5094:
	bl	Func_4458
	mov	r3, #7
	and	r0, r3
	add	r0, #0x18
	mov	r5, r10
	str	r0, [r7, #0x18]
	cmp	r5, #4
	beq	.Ld50b4
.Ld50a6:
	mov	r0, #1
	mov	r1, #0x80
	add	r8, r0
	lsl	r1, #3
	add	r7, #0x1c
	cmp	r8, r1
	bne	.Ld4fe0
.Ld50b4:
	ldr	r2, =.Lee2a9
.Ld50b6:
	ldr	r5, [sp, #0x20]
	ldr	r7, [sp, #0x24]
	ldrb	r3, [r2, r5]
	cmp	r7, r3
	bne	.Ld5108
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r11
	str	r3, [r2]
	ldr	r3, =0x7828
	mov	r1, r11
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Ld5108
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r11
.Ld50de:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #0xa
	mov	r3, r8
	mov	r2, #5
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #1
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r3, [r5]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r8, r0
	add	r6, #2
	cmp	r8, r3
	bne	.Ld50de
.Ld5108:
	ldr	r3, [sp, #0x20]
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #8]
	add	r3, #1
	str	r3, [sp, #0x20]
	add	r2, #0x1c
	add	r1, #1
	ldr	r3, =0x7828
	str	r2, [sp, #8]
	str	r1, [sp, #0xc]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, =.Lee29a
	ldr	r3, [r3, #0x18]
	ldr	r5, [sp, #0x20]
	ldrb	r3, [r2, r3]
	cmp	r5, r3
	beq	.Ld512e
	b	.Ld4ece
.Ld512e:
	mov	r7, #0
	ldr	r6, =ewram_10000
	mov	r8, r7
.Ld5134:
	ldr	r5, [r6, #0x18]
	cmp	r5, #0
	ble	.Ld51dc
	sub	r3, r5, #1
	ldr	r2, [r6, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r6]
	ldr	r1, [r6, #0x10]
	add	r4, r3, r2
	ldr	r3, [r6, #4]
	add	r0, r3, r1
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	str	r4, [r6]
	str	r0, [r6, #4]
	cmp	r3, #0
	bge	.Ld515a
	add	r3, #0x3f
.Ld515a:
	asr	r3, #6
	str	r3, [r6, #8]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r3, #2
	cmp	r3, #0
	bge	.Ld516a
	add	r3, #0x3f
.Ld516a:
	asr	r3, #6
	mov	r2, r3
	sub	r2, #0x10
	str	r2, [r6, #0x10]
	mov	r3, r0
	cmp	r0, #0
	bge	.Ld517a
	add	r3, #0xff
.Ld517a:
	asr	r3, #8
	mov	r12, r3
	cmp	r3, #0x78
	ble	.Ld518e
	neg	r3, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Ld51dc
.Ld518e:
	cmp	r4, #0
	blt	.Ld51dc
	asr	r7, r4, #8
	cmp	r7, #0x7e
	bgt	.Ld51dc
	cmp	r0, #0
	blt	.Ld51dc
	mov	r2, r5
	sub	r2, #0x11
	cmp	r2, #0
	bge	.Ld51a6
	add	r2, #7
.Ld51a6:
	asr	r5, r2, #3
	cmp	r5, #0
	bgt	.Ld51ae
	mov	r5, #1
.Ld51ae:
	lsl	r4, r5, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	mov	r1, r8
	mov	r0, #1
	and	r0, r1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x1c]
	add	r1, r2, r1
	lsr	r2, r5, #31
	add	r2, r5, r2
	asr	r2, #1
	sub	r2, r7, r2
	mov	r7, r12
	str	r5, [sp]
	sub	r3, r7, r5
	str	r4, [sp, #4]
	ldr	r5, [sp, #0x18]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
.Ld51dc:
	mov	r7, #1
	mov	r0, #0x80
	add	r8, r7
	lsl	r0, #3
	add	r6, #0x1c
	cmp	r8, r0
	bne	.Ld5134
	mov	r1, #0x10
	mov	r0, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x24]
	add	r1, #1
	str	r1, [sp, #0x24]
	cmp	r1, #0x60
	beq	.Ld5210
	b	.Ld4e4c
.Ld5210:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d4ce8

	.section .rodata

.Lee262:
	.incrom 0xee262, 0xee294
.Lee294:
	.incrom 0xee294, 0xee29a
.Lee29a:
	.incrom 0xee29a, 0xee29d
.Lee29d:
	.incrom 0xee29d, 0xee2a9
.Lee2a9:
	.incrom 0xee2a9, 0xee2ae
