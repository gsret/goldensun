	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_9bb64
	push	{r5, r6, r7, lr}
	mov	r0, #0x20
	sub	sp, #0xc
	bl	Func_4970
	ldr	r7, =ewram_10000
	mov	r1, r7
	add	r1, #0x20
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	Func_92054
	mov	r6, r0
	bl	Func_4080
	mov	r3, #0
	strh	r0, [r7]
	add	r0, sp, #8
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xff
	str	r3, [r5]
	ldr	r3, =0x1ff
	str	r3, [r5, #4]
	mov	r3, #0x44
	str	r3, [r5, #0x20]
	mov	r3, #0xa2
	lsl	r3, #1
	str	r3, [r5, #0x24]
	mov	r3, #0x77
	str	r3, [r5, #0x40]
	ldr	r3, =0x177
	str	r3, [r5, #0x44]
	mov	r3, #0xff
	lsl	r3, #4
	str	r3, [r5, #0x60]
	ldr	r3, =0xffff
	str	r3, [r5, #0x64]
	ldr	r3, =0x1ffff
	str	r3, [r5, #0x68]
	ldr	r3, =0x11ff0
	mov	r2, #0x88
	str	r3, [r5, #0x6c]
	mov	r3, #0x88
	lsl	r2, #1
	lsl	r3, #5
	str	r2, [r5, #8]
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x48]
	str	r3, [r5, #0x70]
	mov	r1, #0x80
	mov	r2, r5
	ldrh	r0, [r7]
	bl	Func_3fa4
	mov	r3, #0x80
	lsl	r3, #3
	orr	r0, r3
	ldr	r3, [sp, #4]
	mov	r2, #0
	mov	r1, #0
.L9bbf0:
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #8]
	ldr	r4, [sp, #4]
	add	r2, #1
	add	r4, #0xc
	add	r3, #0xc
	str	r4, [sp, #4]
	cmp	r2, #0x41
	bls	.L9bbf0
	mov	r0, r5
	bl	Func_2df0
	mov	r0, #0x8e
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L9bc22
	mov	r3, #0xf0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r3, #0xa0
	lsl	r3, #15
	b	.L9bc56
.L9bc22:
	ldr	r2, [r6, #8]
	mov	r1, #0xf0
	lsl	r1, #24
	add	r2, r1
	asr	r2, #16
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #4
	cmp	r3, #0
	bge	.L9bc3a
	ldr	r2, =0xfff
	add	r3, r2
.L9bc3a:
	asr	r3, #12
	lsl	r3, #16
	str	r3, [r7, #4]
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r0, r3, #5
	cmp	r0, #0
	bge	.L9bc52
	ldr	r4, =0xfff
	add	r0, r4
.L9bc52:
	asr	r3, r0, #12
	lsl	r3, #16
.L9bc56:
	str	r3, [r7, #8]
	bl	_Func_209b0
	strh	r0, [r7, #2]
	ldrh	r3, [r7, #2]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r5, [r3, #2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	mov	r0, #0
	bl	_Func_162d4
	ldr	r3, =0xffff
	strh	r3, [r7, #0x12]
	add	r3, #1
	str	r3, [r7, #0x18]
	str	r0, [r7, #0x1c]
	ldr	r2, [sp, #4]
	mov	r6, #0
	stmia	r2!, {r6}
	mov	r3, #0x80
	mov	r1, r2
	lsl	r3, #23
	str	r1, [sp, #4]
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsr	r5, #5
	lsl	r3, #3
	mov	r4, r2
	orr	r3, r5
	str	r4, [sp, #4]
	str	r3, [r2]
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9bb64

.thumb_func_start Func_9bcd4
	push	{r5, lr}
	ldr	r5, =ewram_10000
	ldrh	r0, [r5]
	bl	Func_3f3c
	ldrh	r0, [r5, #2]
	bl	Func_3f3c
	ldr	r0, [r5, #0x1c]
	mov	r1, #2
	bl	_Func_16418
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_9bcd4

.thumb_func_start Func_9bcf8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r5, r3, r0
	ldr	r1, [r5]
	ldr	r2, =Data_a0138
	sub	sp, #0x3c
	str	r1, [sp, #0x24]
	str	r2, [sp, #0x20]
	ldr	r0, =ewram_10000
	ldrh	r3, [r0]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	mov	r1, #1
	lsr	r3, #5
	neg	r1, r1
	mov	r2, #0x64
	str	r3, [sp, #0x1c]
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x10]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	ldr	r1, =.L9f168
	lsr	r3, #1
	mov	r2, #0x1f
	and	r3, r2
	ldr	r7, =ewram_10000
	ldrb	r3, [r1, r3]
	mov	r0, #0x8e
	lsl	r0, #1
	add	r7, #0x20
	str	r3, [sp, #0x18]
	bl	_Func_79338
	cmp	r0, #0
	bne	.L9bd9c
	ldr	r1, =iwram_1ae8
	mov	r2, #0xc0
	ldr	r3, [r1]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L9bd9e
	ldr	r0, [r5]
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L9be2c
	ldr	r2, [r0, #8]
	mov	r3, #0xf0
	lsl	r3, #24
	add	r2, r3
	asr	r2, #16
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r2, r3, #4
	cmp	r2, #0
	bge	.L9bd82
	ldr	r1, =0xfff
	add	r2, r1
.L9bd82:
	asr	r2, #12
	mov	r11, r2
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r0, r3, #5
	cmp	r0, #0
	bge	.L9bd98
	ldr	r1, =0xfff
	add	r0, r1
.L9bd98:
	asr	r0, #12
	b	.L9be2a
.L9bd9c:
	ldr	r1, =iwram_1ae8
.L9bd9e:
	ldr	r2, [r1]
	mov	r1, #0xf
	lsr	r2, #4
	and	r2, r1
	ldr	r3, =.L9f188
	lsl	r2, #1
	ldrh	r1, [r3, r2]
	ldr	r2, =0xffff
	cmp	r1, r2
	beq	.L9be14
	ldr	r0, =ewram_10000
	ldr	r3, [r0, #4]
	add	r5, sp, #0x30
	mov	r6, #0
	str	r3, [r5]
	str	r6, [r5, #4]
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	mov	r2, r5
	ldr	r0, [r0, #0x18]
	bl	Func_447c
	mov	r1, #0x80
	ldr	r3, [r5]
	lsl	r1, #13
	cmp	r3, r1
	bge	.L9bdda
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5]
.L9bdda:
	mov	r2, #0xef
	lsl	r2, #16
	cmp	r3, r2
	ble	.L9bde4
	str	r2, [r5]
.L9bde4:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L9bdee
	str	r6, [r5, #8]
	mov	r3, #0
.L9bdee:
	mov	r2, #0x8d
	lsl	r2, #16
	cmp	r3, r2
	ble	.L9bdf8
	str	r2, [r5, #8]
.L9bdf8:
	ldr	r3, [r5]
	ldr	r2, =ewram_10000
	str	r3, [r2, #4]
	ldr	r3, [r5, #8]
	mov	r0, #0xc0
	str	r3, [r2, #8]
	ldr	r3, [r2, #0x18]
	lsl	r0, #11
	cmp	r3, r0
	bge	.L9be1c
	mov	r1, #0x80
	lsl	r1, #6
	add	r3, r1
	b	.L9be1a
.L9be14:
	mov	r3, #0x80
	ldr	r2, =ewram_10000
	lsl	r3, #9
.L9be1a:
	str	r3, [r2, #0x18]
.L9be1c:
	ldr	r3, =ewram_10000
	mov	r0, #6
	ldrsh	r3, [r3, r0]
	ldr	r0, =ewram_10000
	mov	r1, #0xa
	ldrsh	r0, [r0, r1]
	mov	r11, r3
.L9be2a:
	mov	r9, r0
.L9be2c:
	mov	r6, #0
	b	.L9bf30

	.pool_aligned

.L9be58:
	bl	_Func_79338
	cmp	r0, #0
	beq	.L9bf2e
	mov	r0, r6
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L9bf2e
	ldr	r2, [r0, #8]
	mov	r1, #0xf0
	lsl	r1, #24
	add	r2, r1
	asr	r2, #16
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r1, r3, #4
	cmp	r1, #0
	bge	.L9be82
	ldr	r2, =0xfff
	add	r1, r2
.L9be82:
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r0, r3, #5
	asr	r5, r1, #12
	cmp	r0, #0
	bge	.L9be96
	ldr	r1, =0xfff
	add	r0, r1
.L9be96:
	asr	r4, r0, #12
	mov	r0, #0xd
	mov	r2, r8
	ldrb	r3, [r7, #5]
	neg	r0, r0
	lsl	r1, r2, #2
	mov	r2, r0
	and	r3, r2
	orr	r3, r1
	strb	r3, [r7, #5]
	ldr	r1, [sp, #0x1c]
	ldr	r3, .L9bee0	@ 0x3ff
	add	r1, r10
	and	r1, r3
	ldr	r2, .L9bee4	@ 0xfffffc00
	ldrh	r3, [r7, #8]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #8]
	ldr	r3, .L9bee8	@ 0x1ff
	sub	r1, r5, #1
	and	r1, r3
	ldr	r2, .L9beec	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #6]
	mov	r1, r11
	sub	r3, r4, #1
	mov	r0, r9
	sub	r2, r5, r1
	strb	r3, [r7, #4]
	sub	r3, r4, r0
	mov	r1, r2
	mul	r1, r2
	b	.L9bef4

	.align	2, 0
.L9bee0:
	.word	0x3ff
.L9bee4:
	.word	0xfffffc00
.L9bee8:
	.word	0x1ff
.L9beec:
	.word	0xfffffe00
	.pool

.L9bef4:
	mov	r0, r3
	mul	r0, r3
	str	r2, [sp, #0x2c]
	str	r3, [sp, #0x28]
	mov	r2, r1
	mov	r3, r0
	ldr	r1, [sp, #0x10]
	add	r2, r3
	cmp	r2, r1
	bge	.L9bf14
	ldr	r3, [sp, #4]
	str	r6, [sp, #0x14]
	str	r3, [sp]
	str	r2, [sp, #0x10]
	str	r5, [sp, #0xc]
	str	r4, [sp, #8]
.L9bf14:
	cmp	r6, #0
	bne	.L9bf24
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #7
	bhi	.L9bf2e
.L9bf24:
	mov	r0, r7
	mov	r1, r4
	add	r7, #0xc
	bl	Func_3dec
.L9bf2e:
	add	r6, #1
.L9bf30:
	cmp	r6, #0x41
	bgt	.L9bf82
	ldr	r0, [sp, #0x24]
	cmp	r6, r0
	beq	.L9bf3e
	cmp	r6, #0xa
	ble	.L9bf2e
.L9bf3e:
	cmp	r6, #0
	bne	.L9bf5c
	mov	r0, #0x8e
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.L9bf2e
	mov	r1, #0
	mov	r10, r1
	ldr	r0, [sp, #0x24]
	mov	r8, r1
	b	.L9be58

	.pool_aligned

.L9bf5c:
	ldr	r3, [sp, #0x20]
	ldmia	r3!, {r0}
	mov	r2, r3
	str	r2, [sp, #0x20]
	ldmia	r3!, {r1}
	str	r1, [sp, #4]
	mov	r1, r3
	str	r1, [sp, #0x20]
	cmp	r0, #0
	beq	.L9bf2e
	mov	r1, #1
	asr	r2, r0, #16
	mov	r3, #1
	neg	r1, r1
	mov	r10, r2
	mov	r8, r3
	cmp	r0, r1
	beq	.L9bf82
	b	.L9be58
.L9bf82:
	mov	r3, #1
	ldr	r2, [sp, #0x14]
	neg	r3, r3
	cmp	r2, r3
	beq	.L9bfd4
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #7
	bhi	.L9bfd4
	ldrb	r2, [r7, #5]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r2, [sp, #0x1c]
	ldr	r3, .L9bfdc	@ 0x3ff
	add	r2, #3
	and	r2, r3
	ldrh	r1, [r7, #8]
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #8]
	ldr	r2, [sp, #0xc]
	ldr	r3, .L9bfe0	@ 0x1ff
	sub	r2, #2
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldr	r3, [sp, #8]
	sub	r3, #2
	strb	r3, [r7, #4]
	mov	r0, r7
	ldr	r1, [sp, #8]
	bl	Func_3dec
.L9bfd4:
	ldr	r7, =ewram_10338
	mov	r3, #0x3f
	ldrb	r2, [r7, #7]
	b	.L9bff4

	.align	2, 0
.L9bfdc:
	.word	0x3ff
.L9bfe0:
	.word	0x1ff
	.pool

.L9bff4:
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #7]
	mov	r2, r11
	ldr	r3, =0x1ff
	sub	r2, #0x11
	and	r2, r3
	ldrh	r1, [r7, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	mov	r3, r9
	add	r3, #1
	strb	r3, [r7, #4]
	mov	r0, r7
	mov	r1, #0xf6
	bl	Func_3dec
	ldr	r1, =ewram_10000
	ldr	r2, [sp, #0x14]
	mov	r0, #0x12
	ldrsh	r3, [r1, r0]
	cmp	r3, r2
	beq	.L9c0a8
	add	r3, sp, #0x14
	ldrh	r3, [r3]
	ldr	r0, =ewram_10000
	strh	r3, [r0, #0x12]
	ldr	r0, [r0, #0x1c]
	b	.L9c040

	.pool_aligned

.L9c040:
	bl	_Func_16478
	mov	r1, #1
	ldr	r0, [sp, #0x14]
	neg	r1, r1
	cmp	r0, r1
	beq	.L9c0a8
	cmp	r0, #0
	bne	.L9c058
	ldr	r2, =0x984
	str	r2, [sp]
	b	.L9c066
.L9c058:
	ldr	r0, [sp]
	mov	r1, #1
	bl	Func_8b158
	ldr	r3, =0x99b
	add	r0, r3
	str	r0, [sp]
.L9c066:
	add	r1, sp, #0x2c
	ldr	r0, [sp]
	add	r2, sp, #0x28
	bl	_Func_18790
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0x2c]
	sub	r3, #1
	mov	r11, r3
	sub	r0, #0xb
	add	r3, r1
	mov	r9, r0
	cmp	r3, #0xf0
	ble	.L9c090
	mov	r3, #0xe8
	sub	r3, r1
	ldr	r1, [sp, #8]
	sub	r1, #0x14
	mov	r11, r3
	mov	r9, r1
.L9c090:
	mov	r2, r9
	cmp	r2, #0
	bge	.L9c09a
	mov	r3, #0
	mov	r9, r3
.L9c09a:
	ldr	r0, =ewram_10000
	mov	r2, r11
	ldr	r1, [r0, #0x1c]
	mov	r3, r9
	ldr	r0, [sp]
	bl	_Func_1e74c
.L9c0a8:
	ldr	r0, =ewram_2090
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r2, [r0]
	cmp	r2, #0x1f
	bgt	.L9c0d6
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r0
	strh	r2, [r0]
	mov	r2, #0xfc
	add	r3, #4
	lsl	r2, #6
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L9c0d6:
	strh	r4, [r1]
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r3, [r0]
	cmp	r3, #0x1f
	bgt	.L9c108
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r0]
	lsl	r2, #2
	add	r2, r0
	ldr	r0, [sp, #0x18]
	mov	r3, #0x10
	sub	r3, r0
	lsl	r3, #8
	add	r2, #4
	orr	r3, r0
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L9c108:
	strh	r4, [r1]
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9bcf8

.thumb_func_start Func_9c138
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1e70
	ldr	r1, =0xccc
	mov	r0, #0x1b
	ldr	r6, [r5]
	sub	sp, #0x18
	bl	Func_48f4
	mov	r2, #0xcf
	ldr	r1, =0x1b
	mov	r7, r0
	lsl	r2, #1
	sub	r5, #8
	add	r3, r7, r2
	ldr	r5, [r5]
	mov	r9, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r11, r5
	cmp	r3, #3
	beq	.L9c170
	b	.L9c2c0
.L9c170:
	add	r2, #0x42
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r2, #1
	add	r3, #0x5b
	strb	r2, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r1, [r2]
	mov	r3, #6
	str	r1, [sp, #4]
	str	r3, [r2]
	bl	Func_91df4
	bl	Func_91e20
	mov	r1, r6
	add	r1, #0x18
	add	r2, sp, #8
	mov	r0, sp
	str	r1, [sp]
	mov	r8, r2
	mov	r4, #1
	add	r0, #0x17
.L9c1a2:
	ldrh	r3, [r1, #0xa]
	strb	r3, [r2]
	add	r2, #1
	strh	r4, [r1, #0xa]
	add	r1, #0xc
	cmp	r2, r0
	ble	.L9c1a2
	mov	r1, r11
	mov	r3, #1
	strh	r3, [r1, #4]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =REG_BLDALPHA
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r3, #16
	mov	r0, r9
	mov	r10, r3
	bl	Func_2f40
	mov	r1, #0xa0
	mov	r5, #0
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xa0
	lsl	r3, #19
	mov	r2, #0xe0
	strh	r5, [r3]
	lsl	r2, #1
	ldr	r5, =ewram_10000
	add	r4, r2
	mov	r1, r5
	mov	r0, r4
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x6006a00
	ldr	r2, =0x84002580
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0x682
	sub	r3, #0xca
	strh	r2, [r3]
	mov	r2, #0x9a
	lsl	r2, #5
	sub	r3, #0xa
	strh	r2, [r3]
	bl	Func_9bb64
	mov	r1, #0xc8
	ldr	r0, =Func_9bcf8
	lsl	r1, #4
	bl	Func_41d8
	mov	r0, #0x8e
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L9c22e
	ldr	r0, =0x985
	mov	r1, #1
	bl	_Func_1776c
.L9c22e:
	ldr	r6, =iwram_1b04
	mov	r5, #3
.L9c232:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.L9c232
	ldr	r0, =Func_9bcf8
	bl	Func_4278
	bl	Func_9bcd4
	mov	r2, #0x40
	mov	r3, #0x80
	lsl	r3, #19
	strh	r2, [r3]
	bl	_Func_11644
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L9c286
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #2
	add	r3, #1
	add	r2, r1
	strh	r3, [r1]
	mov	r1, r10
	lsl	r3, r1, #16
	add	r2, #4
	lsr	r3, #16
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L9c286:
	strh	r4, [r0]
	ldr	r1, [sp]
	mov	r2, r8
	mov	r0, r2
	add	r0, #0xf
.L9c290:
	ldrb	r3, [r2]
	add	r2, #1
	strh	r3, [r1, #0xa]
	add	r1, #0xc
	cmp	r2, r0
	ble	.L9c290
	mov	r3, #0
	mov	r2, r11
	strh	r3, [r2, #4]
	bl	Func_91dc8
	bl	Func_91e20
	mov	r1, #0xe4
	lsl	r1, #1
	ldr	r2, [sp, #4]
	add	r3, r7, r1
	add	r1, #0x18
	str	r2, [r3]
	add	r3, r7, r1
	ldr	r3, [r3]
	ldr	r5, .L9c2d4	@ 0
	add	r3, #0x5b
	strb	r5, [r3]
.L9c2c0:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.L9c2d4:
	.word	0
.func_end Func_9c138

.thumb_func_start Func_9c314
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_92054
	ldr	r3, =iwram_1ebc
	mov	r2, #0xf0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	ldr	r2, =0xfec00000
	ldr	r3, [r0, #8]
	add	r2, r3
	mov	r10, r2
	mov	r2, #0xa0
	lsl	r2, #17
	add	r2, r3
	mov	r8, r2
	ldr	r3, [r0, #0x10]
	ldr	r2, =0xfda80000
	add	r7, r3, r2
	mov	r2, #0xc8
	lsl	r2, #17
	add	r6, r3, r2
	mov	r5, #8
.L9c354:
	mov	r0, r5
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L9c382
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x10]
	cmp	r3, r10
	blt	.L9c372
	cmp	r3, r8
	bgt	.L9c372
	cmp	r2, r7
	blt	.L9c372
	cmp	r2, r6
	ble	.L9c37a
.L9c372:
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #0
	b	.L9c380
.L9c37a:
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #1
.L9c380:
	strb	r3, [r2]
.L9c382:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L9c354
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9c314

.thumb_func_start Func_9c3a4
	push	{r5, r6, lr}
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	Func_48f4
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r0, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L9c3fe
	bl	Func_430c
	bl	Func_9c314
	bl	Func_91660
	mov	r1, #6
	ldr	r0, =0x9d89
	bl	Func_936a0
	ldr	r1, =iwram_1ae8
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L9c3f0
	mov	r6, r1
	mov	r5, r2
.L9c3e2:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	bne	.L9c3e2
.L9c3f0:
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #6
	bl	Func_936a0
	bl	Func_43e0
.L9c3fe:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_9c3a4

	.section .rodata

.L9f168:
	.incrom 0x9f168, 0x9f188
.L9f188:
	.incrom 0x9f188, 0x9f1a8
