	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_5cf8
	push	{lr}
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	mov	r0, #0x33
	bl	Func_2dd8
	pop	{r1}
	bx	r1
.func_end Func_5cf8

.thumb_func_start Func_5d10
	push	{r5, r6, r7, lr}
	ldr	r6, =REG_IME
	ldrh	r3, [r6]
	sub	sp, #4
	mov	r7, r3
	strh	r6, [r6]
	ldr	r5, =Func_6240
	mov	r0, #7
	mov	r1, #0
	mov	r2, r5
	bl	Func_307c
	mov	r0, #6
	mov	r1, #0
	mov	r2, r5
	bl	Func_307c
	ldr	r4, .L5d54	@ 0
	mov	r3, r6
	strh	r4, [r3]
	ldr	r1, =REG_IE
	ldr	r3, =0xff3f
	ldrh	r2, [r1]
	and	r3, r2
	strh	r3, [r1]
	add	r1, #2
	ldrh	r2, [r1]
	mov	r0, #0x80
	mov	r3, r0
	and	r3, r2
	cmp	r3, #0
	beq	.L5d68
	strh	r0, [r1]
	b	.L5d68

	.align	2, 0
.L5d54:
	.word	0
	.pool

.L5d68:
	ldrh	r2, [r1]
	mov	r0, #0x40
	mov	r3, r0
	and	r3, r2
	cmp	r3, #0
	beq	.L5d76
	strh	r0, [r1]
.L5d76:
	ldr	r2, =REG_RCNT
	ldr	r3, .L5dac	@ 0x8000
	ldr	r1, =REG_SIOCNT
	strh	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r4, [r2]
	str	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #6
	strh	r4, [r2]
	str	r3, [r1]
	ldr	r2, .L5db0	@ 0x4003
	ldrh	r3, [r1]
	orr	r3, r2
	strh	r3, [r1]
	ldr	r2, =ewram_2240
	ldr	r3, .L5db4	@ 1
	mov	r12, r2
	strh	r3, [r6]
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r12
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000058
	b	.L5dcc

	.align	2, 0
.L5dac:
	.word	0x8000
.L5db0:
	.word	0x4003
.L5db4:
	.word	1
	.pool

.L5dcc:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #1
	mov	r2, r12
	neg	r3, r3
	str	r3, [r2, #0x14]
	mov	r3, r12
	add	r3, #0x60
	str	r3, [r2, #0x28]
	mov	r4, r12
	add	r3, #0x20
	str	r3, [r2, #0x2c]
	add	r4, #0xe0
	add	r3, #0x40
	add	r2, #0x30
	add	r1, #0xa0
	mov	r0, #1
.L5dee:
	sub	r0, #1
	str	r1, [r2]
	str	r3, [r2, #0x10]
	str	r4, [r2, #0x20]
	add	r3, #0x60
	add	r4, #0x60
	add	r2, #4
	add	r1, #0x60
	cmp	r0, #0
	bge	.L5dee
	ldr	r5, =REG_IME
	mov	r0, #0
	strh	r0, [r5]
	ldr	r1, =REG_IE
	ldr	r2, .L5e3c	@ 0x80
	ldrh	r3, [r1]
	orr	r3, r2
	strh	r3, [r1]
	ldr	r2, .L5e40	@ 1
	ldr	r3, =iwram_1cb0
	strh	r2, [r5]
	ldr	r4, .L5e44	@ 0
	strh	r2, [r3]
	ldr	r3, =ewram_23a0
	strb	r4, [r3]
	ldr	r3, =ewram_2080
	str	r0, [r3]
	ldr	r3, =ewram_2008
	strh	r0, [r3]
	ldr	r3, =ewram_23ac
	str	r0, [r3]
	ldr	r3, =ewram_2238
	strh	r0, [r3]
	bl	Func_651c
	strh	r7, [r5]
	add	sp, #4
	b	.L5e68

	.align	2, 0
.L5e3c:
	.word	0x80
.L5e40:
	.word	1
.L5e44:
	.word	0
	.pool

.L5e68:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_5d10

.thumb_func_start Func_5e70
	push	{lr}
	ldr	r2, =ewram_2240
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L5e7e
	mov	r3, #1
	strb	r3, [r2, #8]
.L5e7e:
	pop	{r0}
	bx	r0
.func_end Func_5e70

.thumb_func_start Func_5e88
	ldr	r0, =REG_IME
	ldr	r4, .L5eb4	@ 0
	ldr	r1, =REG_IE
	strh	r4, [r0]
	ldr	r3, =0xff3f
	ldrh	r2, [r1]
	and	r3, r2
	strh	r3, [r1]
	ldr	r3, .L5eb8	@ 1
	ldr	r2, =REG_SIOCNT
	strh	r3, [r0]
	ldr	r3, .L5ebc	@ 0x2003
	strh	r3, [r2]
	ldr	r3, =0xc963
	sub	r2, #0x1c
	str	r3, [r2]
	ldr	r3, .L5ec0	@ 0xc0
	add	r2, #0xf6
	strh	r3, [r2]
	ldr	r3, =ewram_2240
	strb	r4, [r3, #8]
	b	.L5edc

	.align	2, 0
.L5eb4:
	.word	0
.L5eb8:
	.word	1
.L5ebc:
	.word	0x2003
.L5ec0:
	.word	0xc0
	.pool

.L5edc:
	bx	lr
.func_end Func_5e88

.thumb_func_start Func_5ee0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, =ewram_2240
	ldr	r6, =REG_SIOCNT
	ldrb	r3, [r7, #1]
	mov	r8, r0
	mov	r12, r1
	ldr	r5, [r6]
	cmp	r3, #0
	beq	.L5f04
	cmp	r3, #1
	beq	.L5f62
	b	.L5f70

	.pool_aligned

.L5f04:
	mov	r2, #0x30
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.L5f5e
	mov	r3, #0x88
	mov	r4, r5
	and	r4, r3
	cmp	r4, #8
	bne	.L5f70
	mov	r2, #4
	mov	r3, r5
	and	r3, r2
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	bne	.L5f5e
	mov	r1, #1
	ldr	r3, [r7, #0x14]
	neg	r1, r1
	cmp	r3, r1
	bne	.L5f5e
	ldr	r0, =REG_IME
	strh	r2, [r0]
	ldr	r1, =REG_IE
	ldrh	r2, [r1]
	mov	r3, #0x81
	neg	r3, r3
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	strh	r3, [r1]
	mov	r3, #1
	strh	r3, [r0]
	ldrb	r2, [r6, #1]
	sub	r3, #0x42
	and	r3, r2
	strb	r3, [r6, #1]
	ldr	r2, =REG_IF
	ldr	r3, .L5f8c	@ 0xc0
	strh	r3, [r2]
	ldr	r3, =0xc963
	sub	r2, #0xf6
	str	r3, [r2]
	strb	r4, [r7]
.L5f5e:
	mov	r3, #1
	strb	r3, [r7, #1]
.L5f62:
	mov	r0, r12
	bl	Func_615c
	mov	r0, r8
	bl	Func_60e8
	ldr	r7, =ewram_2240
.L5f70:
	ldrb	r3, [r7, #0xb]
	add	r3, #1
	strb	r3, [r7, #0xb]
	ldrb	r3, [r7, #2]
	ldrb	r2, [r7, #3]
	lsl	r3, #8
	orr	r2, r3
	ldrb	r3, [r7]
	cmp	r3, #8
	bne	.L5fa4
	mov	r3, #0x80
	orr	r2, r3
	b	.L5fa4

	.align	2, 0
.L5f8c:
	.word	0xc0
	.pool

.L5fa4:
	ldrb	r3, [r7, #9]
	mov	r0, r2
	cmp	r3, #0
	beq	.L5fb2
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
.L5fb2:
	lsl	r3, r5, #26
	lsr	r3, #30
	cmp	r3, #1
	bls	.L5fc0
	mov	r3, #0x80
	lsl	r3, #6
	orr	r0, r3
.L5fc0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_5ee0

.thumb_func_start Func_5fcc
	push	{r5, r6, r7, lr}
	ldr	r7, =ewram_2240
	ldr	r6, =REG_SIOCNT
	ldrb	r3, [r7, #1]
	ldr	r5, [r6]
	cmp	r3, #0
	bne	.L6034
	mov	r3, #0x88
	mov	r4, r5
	and	r4, r3
	cmp	r4, #8
	bne	.L602e
	mov	r2, #4
	mov	r3, r5
	and	r3, r2
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	bne	.L602a
	mov	r1, #1
	ldr	r3, [r7, #0x14]
	neg	r1, r1
	cmp	r3, r1
	bne	.L602a
	ldr	r0, =REG_IME
	strh	r2, [r0]
	ldr	r1, =REG_IE
	ldrh	r2, [r1]
	mov	r3, #0x81
	neg	r3, r3
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	strh	r3, [r1]
	mov	r3, #1
	strh	r3, [r0]
	ldrb	r2, [r6, #1]
	sub	r3, #0x42
	and	r3, r2
	strb	r3, [r6, #1]
	ldr	r2, =REG_IF
	ldr	r3, .L6048	@ 0xc0
	strh	r3, [r2]
	ldr	r3, =0xc963
	sub	r2, #0xf6
	str	r3, [r2]
	strb	r4, [r7]
.L602a:
	mov	r3, #1
	strb	r3, [r7, #1]
.L602e:
	ldrb	r3, [r7, #0xb]
	add	r3, #1
	strb	r3, [r7, #0xb]
.L6034:
	ldrb	r3, [r7, #2]
	ldrb	r2, [r7, #3]
	lsl	r3, #8
	orr	r2, r3
	ldrb	r3, [r7]
	cmp	r3, #8
	bne	.L6064
	mov	r3, #0x80
	orr	r2, r3
	b	.L6064

	.align	2, 0
.L6048:
	.word	0xc0
	.pool

.L6064:
	ldrb	r3, [r7, #9]
	mov	r0, r2
	cmp	r3, #0
	beq	.L6072
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
.L6072:
	lsl	r3, r5, #26
	lsr	r3, #30
	cmp	r3, #1
	bls	.L6080
	mov	r3, #0x80
	lsl	r3, #6
	orr	r0, r3
.L6080:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_5fcc

.thumb_func_start Func_6088
	push	{r5, r6, r7, lr}
	ldr	r3, =REG_SIOCNT
	ldr	r5, =ewram_2240
	ldr	r7, [r3]
	ldrb	r3, [r5, #1]
	mov	r6, r0
	mov	r0, r1
	cmp	r3, #1
	bne	.L60aa
	bl	Func_615c
	mov	r0, r6
	bl	Func_60e8
	ldrb	r3, [r5, #0xb]
	add	r3, #1
	strb	r3, [r5, #0xb]
.L60aa:
	ldrb	r3, [r5, #2]
	ldrb	r2, [r5, #3]
	lsl	r3, #8
	orr	r2, r3
	ldrb	r3, [r5]
	cmp	r3, #8
	bne	.L60bc
	mov	r3, #0x80
	orr	r2, r3
.L60bc:
	ldrb	r3, [r5, #9]
	mov	r0, r2
	cmp	r3, #0
	beq	.L60ca
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
.L60ca:
	lsl	r3, r7, #26
	lsr	r3, #30
	cmp	r3, #1
	bls	.L60d8
	mov	r3, #0x80
	lsl	r3, #6
	orr	r0, r3
.L60d8:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_6088

.thumb_func_start Func_60e8
	push	{r5, lr}
	ldr	r4, =ewram_2240
	ldr	r1, [r4, #0x28]
	ldrb	r3, [r4, #0xb]
	strb	r3, [r1]
	ldrb	r2, [r4, #3]
	ldrb	r3, [r4, #2]
	mov	r5, #0
	eor	r3, r2
	strb	r3, [r1, #1]
	strh	r5, [r1, #2]
	ldr	r3, =REG_DMA3SAD
	add	r1, #4
	ldr	r2, =0x84000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, [r4, #0x28]
	mov	r1, #0
.L610c:
	ldrh	r3, [r2]
	add	r1, #1
	add	r2, #2
	add	r5, r3
	cmp	r1, #0xd
	bls	.L610c
	ldr	r3, [r4, #0x28]
	mvn	r2, r5
	strh	r2, [r3, #2]
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L612a
	ldr	r2, =REG_TM3CNT_H
	mov	r3, #0
	strh	r3, [r2]
.L612a:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r4, #0x14]
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L6142
	ldrb	r3, [r4, #8]
	cmp	r3, #0
	beq	.L6142
	ldr	r2, =REG_TM3CNT_H
	ldr	r3, .L6148	@ 0xc0
	strh	r3, [r2]
.L6142:
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L6148:
	.word	0xc0
.func_end Func_60e8

.thumb_func_start Func_615c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	mov	r3, #0
	mov	r4, r0
	str	r3, [sp, #4]
	ldr	r2, =REG_IME
	strh	r3, [r2]
	ldr	r3, =ewram_2240
	mov	r1, r3
	add	r1, #0x40
	mov	r7, #3
.L617a:
	ldr	r2, [r1, #0x10]
	ldr	r3, [r1]
	sub	r7, #1
	str	r3, [r1, #0x10]
	stmia	r1!, {r2}
	cmp	r7, #0
	bge	.L617a
	ldr	r1, =ewram_2244
	ldr	r3, [r1]
	mov	r0, #0
	mov	r14, sp
	str	r3, [sp]
	str	r0, [r1]
	mov	r2, #1
	ldr	r3, =REG_IME
	strh	r2, [r3]
	sub	r3, r1, #4
	mov	r9, r3
	sub	r2, #2
	mov	r6, r1
	strb	r0, [r3, #3]
	mov	r7, #0
	mov	r10, r9
	mov	r8, r2
	add	r6, #0x4c
	mov	r12, r4
.L61ae:
	ldr	r2, [r6]
	mov	r0, #0
	mov	r1, #0
.L61b4:
	ldrh	r3, [r2]
	add	r1, #1
	add	r2, #2
	add	r0, r3
	cmp	r1, #0xd
	bls	.L61b4
	mov	r3, r14
	ldrb	r4, [r3, r7]
	cmp	r4, #1
	bne	.L61ee
	lsl	r5, r0, #16
	asr	r3, r5, #16
	cmp	r3, r8
	bne	.L6202
	ldr	r0, [r6]
	ldr	r3, =REG_DMA3SAD
	add	r0, #4
	mov	r1, r12
	ldr	r2, =0x84000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r10
	ldrb	r3, [r1, #3]
	lsl	r4, r7
	ldr	r2, =ewram_2240
	orr	r4, r3
	strb	r4, [r1, #3]
	mov	r9, r2
	b	.L61f0
.L61ee:
	lsl	r5, r0, #16
.L61f0:
	asr	r3, r5, #16
	cmp	r3, r8
	bne	.L6202
	ldr	r2, [r6]
	ldrh	r3, [r2, #2]
	mvn	r3, r3
	strh	r3, [r2, #2]
	ldr	r3, =ewram_2240
	mov	r9, r3
.L6202:
	mov	r1, #0x18
	add	r7, #1
	add	r6, #4
	add	r12, r1
	cmp	r7, #1
	ble	.L61ae
	mov	r2, r9
	ldrb	r3, [r2, #2]
	ldrb	r2, [r2, #3]
	mov	r1, r9
	ldrb	r0, [r1, #3]
	orr	r3, r2
	strb	r3, [r1, #2]
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_615c

.thumb_func_start Func_6240
	push	{r5, r6, r7, lr}
	ldr	r3, =REG_SIODATA32
	sub	sp, #8
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	mov	r14, sp
	ldr	r0, =REG_SIOCNT
	mov	r2, r14
	str	r3, [r2]
	str	r4, [r2, #4]
	ldr	r3, [r0]
	ldr	r1, =ewram_2240
	lsl	r3, #25
	lsr	r3, #31
	strb	r3, [r1, #9]
	ldr	r2, [r1, #0x14]
	mov	r3, #1
	neg	r3, r3
	cmp	r2, r3
	bne	.L6276
	ldr	r3, =0xfefe
	ldr	r2, [r1, #0x2c]
	strh	r3, [r0, #2]
	ldr	r3, [r1, #0x28]
	str	r2, [r1, #0x28]
	str	r3, [r1, #0x2c]
	b	.L6282
.L6276:
	cmp	r2, #0
	blt	.L6282
	ldr	r3, [r1, #0x2c]
	lsl	r2, #1
	ldrh	r3, [r2, r3]
	strh	r3, [r0, #2]
.L6282:
	ldr	r7, =ewram_2240
	ldr	r3, [r7, #0x14]
	cmp	r3, #0xe
	bgt	.L628e
	add	r3, #1
	str	r3, [r7, #0x14]
.L628e:
	mov	r6, #0
.L6290:
	mov	r2, r14
	lsl	r5, r6, #1
	ldrh	r3, [r2, r5]
	ldr	r2, =0xfefe
	cmp	r3, r2
	bne	.L62c4
	lsl	r3, r6, #2
	mov	r12, r3
	mov	r2, r12
	add	r2, #0x18
	ldr	r3, [r7, r2]
	cmp	r3, #0xd
	ble	.L62c8
	mov	r3, #1
	neg	r3, r3
	str	r3, [r7, r2]
	b	.L62f4

	.pool_aligned

.L62c4:
	lsl	r2, r6, #2
	mov	r12, r2
.L62c8:
	mov	r3, r12
	add	r3, #0x18
	mov	r4, r12
	ldr	r1, [r7, r3]
	add	r4, #0x30
	mov	r3, r14
	ldr	r0, [r7, r4]
	ldrh	r5, [r3, r5]
	lsl	r2, r1, #1
	strh	r5, [r2, r0]
	cmp	r1, #0xd
	bne	.L62f4
	mov	r3, r12
	add	r3, #0x40
	ldr	r2, [r7, r3]
	add	r1, r6, #4
	str	r0, [r7, r3]
	str	r2, [r7, r4]
	ldrb	r3, [r7, r1]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r7, r1]
.L62f4:
	ldr	r0, =ewram_2240
	ldrb	r3, [r0, #9]
	cmp	r3, #0
	beq	.L6306
	add	r3, r6, #4
	ldrb	r2, [r0, r3]
	mov	r1, #2
	orr	r2, r1
	strb	r2, [r0, r3]
.L6306:
	mov	r2, r12
	add	r2, #0x18
	ldr	r3, [r0, r2]
	cmp	r3, #0xe
	bgt	.L6314
	add	r3, #1
	str	r3, [r0, r2]
.L6314:
	add	r6, #1
	mov	r7, r0
	cmp	r6, #1
	ble	.L6290
	ldrb	r3, [r0]
	cmp	r3, #8
	bne	.L6350
	ldr	r0, =REG_TM3CNT_H
	ldr	r3, .L6338	@ 0
	ldr	r1, =REG_SIOCNT
	strh	r3, [r0]
	ldr	r2, .L633c	@ 0x80
	ldrh	r3, [r1]
	orr	r3, r2
	strh	r3, [r1]
	ldr	r3, .L6340	@ 0xc0
	strh	r3, [r0]
	b	.L6350

	.align	2, 0
.L6338:
	.word	0
.L633c:
	.word	0x80
.L6340:
	.word	0xc0
	.pool

.L6350:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_6240

.thumb_func_start Func_6358
	push	{lr}
	ldr	r2, =iwram_1cb0
	ldr	r3, .L6378	@ 0
	mov	r0, #7
	strh	r3, [r2]
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	b	.L6380

	.align	2, 0
.L6378:
	.word	0
	.pool

.L6380:
	pop	{r0}
	bx	r0
.func_end Func_6358

.thumb_func_start Func_6384
	push	{r5, r6, lr}
	ldr	r1, =iwram_1f64
	mov	r5, r0
	ldrh	r2, [r1]
	mov	r3, r5
	and	r3, r2
	cmp	r3, r5
	beq	.L63a6
	mov	r6, r1
.L6396:
	mov	r0, #1
	bl	Func_30f8
	ldrh	r2, [r6]
	mov	r3, r5
	and	r3, r2
	cmp	r3, r5
	bne	.L6396
.L63a6:
	ldr	r3, =REG_SIOCNT
	ldr	r0, [r3]
	lsl	r0, #26
	lsr	r0, #30
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_6384

.thumb_func_start Func_63bc
	push	{r5, r6, r7, lr}
	ldr	r5, =ewram_2080
	ldr	r4, [r5]
	mov	r6, r1
	ldr	r7, =ewram_2220
	cmp	r4, #0
	beq	.L63d0
	mov	r0, #1
	neg	r0, r0
	b	.L63ec
.L63d0:
	ldr	r2, =REG_IME
	ldrh	r1, [r2]
	strh	r2, [r2]
	mov	r3, #0x80
	strb	r3, [r7, #1]
	ldr	r3, =ewram_2008
	strh	r6, [r3]
	ldr	r3, =ewram_23a4
	strb	r4, [r3]
	mov	r3, #1
	str	r0, [r5]
	strb	r3, [r7]
	strh	r1, [r2]
	mov	r0, #0
.L63ec:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_63bc

.thumb_func_start Func_6408
	push	{r5, r6, lr}
	ldr	r5, =ewram_23ac
	ldr	r4, [r5]
	ldr	r6, =ewram_2220
	cmp	r4, #0
	beq	.L641a
	mov	r0, #1
	neg	r0, r0
	b	.L6438
.L641a:
	ldr	r2, =REG_IME
	ldrh	r1, [r2]
	strh	r2, [r2]
	mov	r3, #0x81
	strb	r3, [r6, #1]
	ldr	r3, =ewram_2238
	strh	r4, [r3]
	mov	r3, #1
	strb	r3, [r6]
	str	r0, [r5]
	ldr	r3, =ewram_23a4
	ldr	r0, .L6440	@ 0
	strb	r0, [r3]
	strh	r1, [r2]
	mov	r0, #0
.L6438:
	pop	{r5, r6}
	pop	{r1}
	bx	r1

	.align	2, 0
.L6440:
	.word	0
.func_end Func_6408

.thumb_func_start Func_6458
	push	{r5, r6, lr}
	ldr	r2, =ewram_2080
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0
	beq	.L647a
	mov	r6, r2
.L6466:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =0x927bf
	add	r5, #1
	cmp	r5, r3
	bhi	.L647a
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L6466
.L647a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_6458

.thumb_func_start Func_6488
	push	{r5, r6, lr}
	ldr	r2, =ewram_23ac
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0
	beq	.L64aa
	mov	r6, r2
.L6496:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =0x927bf
	add	r5, #1
	cmp	r5, r3
	bhi	.L64aa
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L6496
.L64aa:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_6488

.thumb_func_start Func_64b8
	push	{r5, lr}
	ldr	r3, =ewram_2080
	ldr	r3, [r3]
	mov	r5, #0
	b	.L64d4
.L64c2:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =0x927bf
	add	r5, #1
	cmp	r5, r3
	bhi	.L64e0
	ldr	r3, =ewram_2080
	ldr	r3, [r3]
.L64d4:
	cmp	r3, #0
	bne	.L64c2
	ldr	r3, =ewram_23ac
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L64c2
.L64e0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_64b8

.thumb_func_start Func_64f4
	push	{lr}
	ldr	r3, =ewram_2080
	ldr	r3, [r3]
	mov	r0, #0
	cmp	r3, #0
	beq	.L6502
	mov	r0, #1
.L6502:
	ldr	r3, =ewram_23ac
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L650e
	mov	r3, #2
	orr	r0, r3
.L650e:
	pop	{r1}
	bx	r1
.func_end Func_64f4

.thumb_func_start Func_651c
	ldr	r1, =ewram_2220
	ldr	r0, =REG_IME
	ldrh	r4, [r0]
	strh	r0, [r0]
	mov	r2, #0
	mov	r3, #0x80
	strb	r3, [r1, #1]
	ldr	r3, =ewram_2080
	str	r2, [r3]
	ldr	r3, =ewram_2008
	strh	r2, [r3]
	ldr	r3, =ewram_23ac
	str	r2, [r3]
	ldr	r3, =ewram_2238
	strb	r2, [r1, #3]
	strb	r2, [r1, #2]
	strh	r2, [r3]
	strh	r4, [r0]
	bx	lr
.func_end Func_651c

.thumb_func_start Func_655c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	lsl	r3, #26
	lsr	r3, #30
	mov	r2, #1
	bic	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, =ewram_2020
	lsl	r3, #3
	add	r3, r2
	mov	r12, r3
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	ldr	r1, .L65a4	@ 1
	mov	r3, #3
	and	r3, r2
	mov	r8, r1
	ldr	r6, =ewram_2220
	cmp	r3, #3
	beq	.L658e
	b	.L676e
.L658e:
	ldr	r7, =ewram_23ac
	ldr	r5, [r7]
	cmp	r5, #0
	bne	.L6598
	b	.L669a
.L6598:
	ldrb	r3, [r6, #2]
	cmp	r3, #1
	beq	.L65a0
	b	.L6696
.L65a0:
	b	.L65bc

	.align	2, 0
.L65a4:
	.word	1
	.pool

.L65bc:
	mov	r2, r12
	ldrb	r3, [r2, #3]
	mov	r1, #0x80
	add	r3, #0xff
	lsl	r3, #24
	lsl	r1, #17
	cmp	r3, r1
	bhi	.L6696
	ldr	r0, =ewram_23a4
	mov	r2, #0x7f
	mov	r14, r2
	mov	r3, r12
	ldrb	r1, [r0]
	ldrb	r2, [r3]
	mov	r3, r14
	and	r3, r1
	cmp	r2, r3
	bne	.L6650
	mov	r1, #0
	mov	r14, r1
	mov	r2, r14
	strb	r2, [r6]
	mov	r3, r12
	ldrb	r4, [r3, #3]
	cmp	r4, #1
	beq	.L65f6
	cmp	r4, #2
	beq	.L6622
	b	.L6642
.L65f6:
	mov	r0, r12
	ldr	r3, =REG_DMA3SAD
	add	r0, #4
	mov	r1, r5
	ldr	r2, =0x84000005
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, [r7]
	ldr	r2, =ewram_2238
	add	r3, #0x14
	str	r3, [r7]
	ldrh	r3, [r2]
	add	r3, #0x14
	strh	r3, [r2]
	mov	r1, #0x80
	ldrb	r3, [r6, #1]
	neg	r1, r1
	add	r3, #1
	mov	r2, r1
	orr	r3, r2
	strb	r3, [r6, #1]
	b	.L6642
.L6622:
	mov	r0, r12
	ldr	r3, =REG_DMA3SAD
	add	r0, #4
	mov	r1, r5
	ldr	r2, =0x84000005
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =ewram_2238
	ldrh	r3, [r2]
	add	r3, #0x14
	strh	r3, [r2]
	mov	r2, r14
	mov	r3, r8
	strb	r4, [r6, #2]
	strb	r2, [r6, #1]
	strb	r3, [r6]
.L6642:
	ldr	r3, =ewram_23a4
	ldrb	r2, [r3]
	mov	r1, #0x7f
	add	r2, #1
	and	r2, r1
	strb	r2, [r3]
	b	.L669a
.L6650:
	ldrb	r2, [r0]
	mov	r4, #0x80
	mov	r3, r4
	and	r3, r2
	mov	r1, #0x80
	cmp	r3, #0
	beq	.L6688
	ldrb	r1, [r6]
	mov	r3, r4
	and	r3, r1
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	beq	.L6672
	mov	r1, r8
	strb	r1, [r6]
	b	.L669a
.L6672:
	lsl	r3, r1, #24
	mov	r1, #0x80
	lsl	r1, #17
	cmp	r3, r1
	bne	.L669a
	strb	r2, [r6]
	ldrb	r2, [r0]
	mov	r3, r14
	and	r3, r2
	strb	r3, [r0]
	b	.L669a
.L6688:
	ldrb	r3, [r0]
	orr	r3, r1
	strb	r3, [r6]
	ldrb	r3, [r0]
	orr	r3, r1
	strb	r3, [r0]
	b	.L669a
.L6696:
	mov	r3, #0
	strb	r3, [r6]
.L669a:
	ldr	r7, =ewram_2080
	ldr	r0, [r7]
	cmp	r0, #0
	beq	.L6748
	mov	r2, r12
	ldrb	r2, [r2, #2]
	mov	r14, r2
	cmp	r2, #1
	bne	.L672e
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L66e4
	ldr	r5, =ewram_23a4
	mov	r2, r12
	ldrb	r1, [r5]
	ldrb	r3, [r2]
	mov	r4, #0x7f
	sub	r1, r3
	and	r1, r4
	lsl	r2, r1, #2
	add	r2, r1
	lsl	r2, #2
	sub	r3, r0, r2
	ldr	r0, =ewram_2008
	str	r3, [r7]
	ldrh	r3, [r0]
	add	r3, r2
	strh	r3, [r0]
	ldrb	r3, [r5]
	sub	r3, r1
	strb	r3, [r5]
	ldrb	r3, [r5]
	and	r4, r3
	strb	r4, [r5]
.L66e4:
	ldr	r4, =ewram_2008
	ldrh	r3, [r4]
	cmp	r3, #0
	beq	.L672e
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r7]
	add	r1, r6, #4
	ldr	r2, =0x84000005
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r4]
	ldr	r1, =0xffec
	add	r3, r1
	strh	r3, [r4]
	ldrh	r3, [r4]
	cmp	r3, #0
	beq	.L670e
	mov	r2, r14
	ldr	r3, =ewram_23a4
	strb	r2, [r6, #3]
	b	.L6714
.L670e:
	mov	r3, #2
	strb	r3, [r6, #3]
	ldr	r3, =ewram_23a4
.L6714:
	ldrb	r2, [r3]
	mov	r3, #0x7f
	and	r3, r2
	strb	r3, [r6]
	ldr	r3, [r7]
	add	r3, #0x14
	str	r3, [r7]
	ldr	r3, =ewram_23a4
	ldrb	r2, [r3]
	mov	r1, #0x7f
	add	r2, #1
	and	r2, r1
	strb	r2, [r3]
.L672e:
	ldrb	r3, [r6, #3]
	cmp	r3, #2
	bne	.L6748
	mov	r1, r12
	ldrb	r3, [r1, #2]
	cmp	r3, #2
	bne	.L6748
	ldr	r2, =ewram_2080
	mov	r3, #0
	str	r3, [r2]
	strb	r3, [r6, #3]
	mov	r3, #1
	strb	r3, [r6]
.L6748:
	ldrb	r3, [r6, #2]
	cmp	r3, #2
	bne	.L675e
	mov	r2, r12
	ldrb	r3, [r2, #3]
	cmp	r3, #2
	beq	.L676e
	ldr	r2, =ewram_23ac
	mov	r3, #0
	str	r3, [r2]
	b	.L676c
.L675e:
	mov	r3, #0
	strb	r3, [r6, #2]
	ldr	r3, =ewram_23ac
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L676e
	mov	r3, #1
.L676c:
	strb	r3, [r6, #2]
.L676e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_655c

.thumb_func_start Func_6798
	bx	lr
.func_end Func_6798

.thumb_func_start Func_679c
	push	{r5, r6, lr}
	mov	r0, #3
	sub	sp, #4
	bl	_Func_f9080
	bl	Func_5d10
	ldr	r2, =0x6002426
	ldr	r3, =0xfffff093
	mov	r1, #0x13
.L67b0:
	sub	r1, #1
	strh	r3, [r2]
	sub	r2, #2
	sub	r3, #1
	cmp	r1, #0
	bge	.L67b0
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	ldr	r1, =ewram_10000
	ldr	r2, =0x5000100
	bl	Func_6864
	mov	r0, #3
	bl	Func_6384
.L67d0:
	ldr	r0, =ewram_10000
	bl	Func_6408
	ldr	r6, =iwram_1ae8
.L67d8:
	ldr	r3, [r6]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L67ee
	mov	r0, #0x80
	mov	r1, #0xa0
	lsl	r0, #20
	lsl	r1, #2
	bl	Func_63bc
.L67ee:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L6802
	mov	r1, #0xa0
	ldr	r0, =0x8001000
	lsl	r1, #2
	bl	Func_63bc
.L6802:
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L6818
	ldr	r5, =0x270f
.L680e:
	sub	r5, #1
	bl	Func_6798
	cmp	r5, #0
	bge	.L680e
.L6818:
	ldr	r3, =ewram_23ac
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L682e
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_10000
	ldr	r1, =0x6001000
	ldr	r2, =0x840000a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.L67d0
.L682e:
	mov	r0, #1
	bl	Func_30f8
	b	.L67d8
.func_end Func_679c
