	.include "macros.inc"

.thumb_func_start Func_1a66c
	push	{r5, r6, r7, lr}
	mov	r1, #0xf9
	lsl	r1, #2
	mov	r0, #0x12
	bl	Func_48f4
	mov	r2, #0xd2
	mov	r7, r0
	lsl	r2, #2
	mov	r5, #0
	add	r3, r7, r2
	add	r2, #4
	str	r5, [r3]
	add	r3, r7, r2
	add	r2, #4
	str	r5, [r3]
	add	r3, r7, r2
	add	r2, #0x4a
	str	r5, [r3]
	add	r3, r7, r2
	add	r2, #2
	strh	r5, [r3]
	add	r3, r7, r2
	strh	r5, [r3]
	ldr	r3, =0x39e
	add	r2, r7, r3
	mov	r3, #0x80
	strh	r3, [r2]
	mov	r3, #0xe8
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #0x20
	strh	r3, [r2]
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r7, r2
	strh	r5, [r3]
	mov	r3, #0xee
	lsl	r3, #2
	add	r2, r7, r3
	add	r3, #0x2f
	strh	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, r7
	mov	r1, #0
	mov	r0, #0
	add	r3, #0x72
.L1a6ce:
	add	r1, #1
	strh	r0, [r3]
	strh	r0, [r2]
	add	r3, #0x34
	add	r2, #0x34
	cmp	r1, #5
	bne	.L1a6ce
	mov	r2, #0xba
	lsl	r2, #1
	mov	r5, #0
	add	r3, r7, r2
	add	r2, #0x34
	strh	r5, [r3, #2]
	add	r3, r7, r2
	strh	r5, [r3, #2]
	mov	r3, r7
	add	r3, #0x46
	strh	r5, [r7, #0xa]
	strh	r5, [r7, #0x3e]
	strh	r5, [r7, #0x12]
	strh	r5, [r3]
	ldr	r6, =Data_346f8
	bl	Func_4080
	mov	r2, #0xb9
	lsl	r2, #2
	add	r3, r7, r2
	strh	r0, [r3]
	mov	r1, #0x80
	mov	r2, r6
	ldrh	r0, [r3]
	lsl	r1, #1
	bl	Func_3fa4
	ldr	r2, =0x2e6
	add	r3, r7, r2
	sub	r2, #4
	strh	r0, [r3]
	add	r3, r7, r2
	add	r2, #0x18
	strh	r5, [r3]
	add	r3, r7, r2
	add	r2, #0x1c
	strh	r5, [r3]
	add	r3, r7, r2
	strh	r5, [r3]
	mov	r3, #0xc0
	lsl	r3, #2
	add	r5, r7, r3
	mov	r0, #0xd
	ldrb	r3, [r5, #5]
	neg	r0, r0
	mov	r2, r0
	and	r2, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r2, r3
	mov	r3, #0x20
	orr	r2, r3
	mov	r3, #4
	ldrb	r1, [r5, #7]
	neg	r3, r3
	and	r2, r3
	sub	r3, #0x3b
	mov	r4, #0x3f
	and	r3, r1
	and	r3, r4
	mov	r1, #0x40
	orr	r3, r1
	strb	r3, [r5, #7]
	ldrb	r3, [r5, #9]
	and	r2, r4
	and	r0, r3
	strb	r2, [r5, #5]
	strb	r0, [r5, #9]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1a66c

.thumb_func_start Func_1a778
	push	{lr}
	ldr	r3, =iwram_1e98
	mov	r2, #0xd2
	ldr	r1, [r3]
	lsl	r2, #2
	add	r3, r1, r2
	mov	r0, #0
	add	r2, #0x52
	str	r0, [r3]
	add	r3, r1, r2
	strh	r0, [r3]
	ldr	r3, =0x39e
	add	r4, r1, r3
	ldrh	r2, [r4]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1a7a6
	mov	r2, #0xe7
	lsl	r2, #2
	add	r3, r1, r2
	strh	r0, [r3]
	strh	r0, [r4]
.L1a7a6:
	mov	r2, #0xe8
	lsl	r2, #2
	add	r3, r1, r2
	sub	r2, #0xc
	strh	r0, [r3]
	add	r3, r1, r2
	strh	r0, [r3]
	pop	{r0}
	bx	r0
.func_end Func_1a778

.thumb_func_start Func_1a7c0
	push	{lr}
	ldr	r3, =iwram_1e98
	ldr	r2, [r3]
	mov	r3, #0xe5
	lsl	r3, #2
	add	r4, r2, r3
	ldrh	r3, [r4]
	cmp	r3, #0x10
	beq	.L1a7ec
	lsl	r3, #1
	mov	r12, r3
	mov	r3, #0xd5
	lsl	r3, #2
	add	r3, r12
	strh	r0, [r2, r3]
	mov	r3, #0xdd
	lsl	r3, #2
	add	r3, r12
	strh	r1, [r2, r3]
	ldrh	r3, [r4]
	add	r3, #1
	strh	r3, [r4]
.L1a7ec:
	pop	{r0}
	bx	r0
.func_end Func_1a7c0

.thumb_func_start Func_1a7f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e98
	ldr	r3, [r3]
	mov	r9, r3
	mov	r3, #0xe5
	lsl	r3, #2
	add	r3, r9
	ldrh	r3, [r3]
	sub	sp, #8
	str	r3, [sp, #4]
	mov	r3, #0xe7
	lsl	r3, #2
	add	r3, r9
	ldrh	r3, [r3]
	mov	r2, #0xd5
	mov	r10, r3
	lsl	r3, #1
	mov	r6, #0
	add	r3, r9
	lsl	r2, #2
	mov	r11, r6
	add	r4, r3, r2
	b	.L1a86c
.L1a82e:
	mov	r2, r5
	mov	r3, #0
	mov	r0, r7
	mov	r1, r8
	str	r4, [sp]
	bl	Func_1bd98
	mov	r3, #0xd2
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	ldr	r4, [sp]
	cmp	r2, #0
	bne	.L1a854
	str	r5, [r3]
	str	r2, [r5]
	b	.L1a858

	.pool_aligned

.L1a854:
	str	r5, [r6, #4]
	str	r6, [r5]
.L1a858:
	mov	r3, #0
	str	r3, [r5, #4]
	mov	r3, #1
	add	r11, r3
	mov	r2, r11
	mov	r6, r5
	cmp	r2, #5
	beq	.L1a888
	add	r4, #2
	add	r10, r3
.L1a86c:
	ldr	r3, [sp, #4]
	cmp	r10, r3
	bcs	.L1a888
	ldrh	r2, [r4, #0x20]
	mov	r0, #0
	ldrh	r7, [r4]
	str	r4, [sp]
	mov	r8, r2
	bl	Func_1a910
	mov	r5, r0
	ldr	r4, [sp]
	cmp	r5, #0
	bne	.L1a82e
.L1a888:
	mov	r3, r11
	lsl	r2, r3, #3
	ldr	r3, =0x64
	ldr	r1, =0x396
	sub	r3, r2
	mov	r2, #0xe6
	add	r1, r9
	lsl	r2, #2
	strh	r3, [r1]
	add	r2, r9
	mov	r3, #0x8c
	strh	r3, [r2]
	mov	r3, #0xd2
	lsl	r3, #2
	add	r3, r9
	ldr	r6, [r3]
	mov	r3, #0
	mov	r11, r3
	cmp	r6, #0
	beq	.L1a8f4
	mov	r0, #0xee
	lsl	r0, #2
	mov	r5, r1
	mov	r4, r2
	add	r0, r9
	mov	r1, #0
	b	.L1a8c8

	.pool_aligned

.L1a8c8:
	ldrh	r3, [r5]
	add	r3, r11
	strh	r3, [r6, #0x10]
	ldrh	r2, [r4]
	strh	r2, [r6, #0x12]
	strh	r2, [r6, #0x1a]
	ldrh	r2, [r6, #0xa]
	strh	r3, [r6, #0x18]
	cmp	r2, #6
	bne	.L1a8e6
	ldrh	r3, [r0]
	cmp	r3, #0
	bne	.L1a8e6
	strh	r2, [r6, #0x12]
	strh	r2, [r6, #0x1a]
.L1a8e6:
	strh	r1, [r6, #0x14]
	strh	r1, [r6, #0x16]
	ldr	r6, [r6, #4]
	mov	r2, #0x10
	add	r11, r2
	cmp	r6, #0
	bne	.L1a8c8
.L1a8f4:
	bl	Func_1c188
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1a7f4

.thumb_func_start Func_1a90c
	bx	lr
.func_end Func_1a90c

.thumb_func_start Func_1a910
	push	{lr}
	ldr	r3, =iwram_1e98
	ldr	r4, [r3]
	cmp	r0, #0
	beq	.L1a940
	mov	r3, #0xef
	lsl	r3, #1
	mov	r1, #0
	add	r2, r4, r3
	mov	r0, #0
.L1a924:
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L1a934
	mov	r3, #0xea
	add	r0, r4, r0
	lsl	r3, #1
	add	r0, r3
	b	.L1a960
.L1a934:
	add	r1, #1
	add	r2, #0x34
	add	r0, #0x34
	cmp	r1, #5
	bne	.L1a924
	b	.L1a95e
.L1a940:
	mov	r2, r4
	mov	r0, r4
	mov	r1, #0
	add	r2, #0x68
	add	r0, #0x72
.L1a94a:
	ldrh	r3, [r0]
	add	r0, #0x34
	cmp	r3, #0
	bne	.L1a956
	mov	r0, r2
	b	.L1a960
.L1a956:
	add	r1, #1
	add	r2, #0x34
	cmp	r1, #7
	bne	.L1a94a
.L1a95e:
	mov	r0, #0
.L1a960:
	pop	{r1}
	bx	r1
.func_end Func_1a910

.thumb_func_start Func_1a968
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_1a98c
	bl	Func_41d8
	pop	{r0}
	bx	r0
.func_end Func_1a968

.thumb_func_start Func_1a97c
	push	{lr}
	ldr	r0, =Func_1a98c
	bl	Func_4278
	pop	{r0}
	bx	r0
.func_end Func_1a97c

.thumb_func_start Func_1a98c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e98
	ldr	r3, [r3]
	mov	r0, #0xc0
	mov	r10, r3
	lsl	r0, #2
	mov	r3, #0
	sub	sp, #0x18
	add	r0, r10
	mov	r11, r3
	mov	r3, #0xd2
	str	r0, [sp, #8]
	lsl	r3, #2
	mov	r1, #0xb6
	mov	r2, #0xc3
	add	r3, r10
	lsl	r1, #2
	lsl	r2, #2
	ldr	r7, [r3]
	add	r1, r10
	add	r2, r10
	mov	r8, r1
	mov	r9, r2
	cmp	r7, #0
	bne	.L1a9cc
	b	.L1ab1c
.L1a9cc:
	mov	r6, r7
	add	r6, #0x28
	mov	r4, #4
	ldrb	r3, [r6, #5]
	neg	r4, r4
	mov	r2, r4
	and	r3, r2
	mov	r5, #0x3f
	strb	r3, [r6, #5]
	neg	r5, r5
	ldrb	r3, [r6, #7]
	mov	r2, r5
	and	r3, r2
	strb	r3, [r6, #7]
	ldrh	r1, [r7, #0x10]
	ldr	r3, .L1aa18	@ 0x1ff
	ldr	r2, .L1aa1c	@ 0xfffffe00
	and	r1, r3
	ldrh	r3, [r6, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r6, #6]
	ldrh	r3, [r7, #0x12]
	mov	r0, #0xf0
	strb	r3, [r6, #4]
	mov	r1, r3
	mov	r3, #0xe8
	str	r0, [sp, #4]
	lsl	r3, #2
	add	r3, r10
	ldrh	r2, [r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1aa24
	add	r3, r2, r1
	strb	r3, [r6, #4]
	b	.L1aac0

	.align	2, 0
.L1aa18:
	.word	0x1ff
.L1aa1c:
	.word	0xfffffe00
	.pool

.L1aa24:
	mov	r1, #0x10
	ldrsh	r2, [r7, r1]
	mov	r3, #0x18
	ldrsh	r1, [r7, r3]
	ldrh	r5, [r7, #0x10]
	ldrh	r4, [r7, #0x18]
	cmp	r2, r1
	beq	.L1aa78
	ldrh	r0, [r7, #0x14]
	mov	r12, r0
	mov	r0, #0x14
	ldrsh	r3, [r7, r0]
	cmp	r3, #0
	ble	.L1aa4c
	add	r3, r2, r3
	cmp	r3, r1
	bgt	.L1aa52
	mov	r1, r12
	add	r3, r5, r1
	b	.L1aa5a
.L1aa4c:
	add	r3, r2, r3
	cmp	r3, r1
	bge	.L1aa56
.L1aa52:
	strh	r4, [r7, #0x10]
	b	.L1aa5c
.L1aa56:
	mov	r2, r12
	add	r3, r5, r2
.L1aa5a:
	strh	r3, [r7, #0x10]
.L1aa5c:
	ldrh	r1, [r7, #0x10]
	ldr	r3, =0x1ff
	ldr	r2, =0xfffffe00
	and	r1, r3
	ldrh	r3, [r6, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r6, #6]
	b	.L1aac0

	.pool_aligned

.L1aa78:
	ldr	r3, =0x39e
	add	r3, r10
	ldrh	r3, [r3]
	cmp	r11, r3
	bne	.L1aac0
	mov	r3, #0xf1
	str	r3, [sp, #4]
	mov	r4, r8
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	beq	.L1aac0
	add	r5, sp, #0xc
	mov	r1, r5
	ldrh	r0, [r7, #8]
	bl	_Func_b845c
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L1aac0
	ldr	r2, [r5]
	mov	r3, r8
	strh	r2, [r3, #0x18]
	mov	r4, r8
	ldr	r1, [r5, #4]
	mov	r5, #0x22
	ldrsh	r3, [r4, r5]
	strh	r1, [r4, #0x1a]
	cmp	r3, #0
	bne	.L1aac0
	mov	r0, r8
	strh	r2, [r0, #0x10]
	mov	r3, #1
	mov	r2, r8
	strh	r1, [r2, #0x12]
	strh	r3, [r4, #0x22]
.L1aac0:
	mov	r5, #0x22
	ldrsh	r3, [r7, r5]
	cmp	r3, #0
	beq	.L1ab10
	ldr	r0, =0x103
	bl	_Func_79338
	cmp	r0, #0
	beq	.L1ab08
	ldr	r3, =0x2e2
	add	r3, r10
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L1aaea
	ldrb	r3, [r6, #5]
	mov	r0, #0xd
	neg	r0, r0
	and	r3, r0
	mov	r2, #4
	orr	r3, r2
	b	.L1aaf2
.L1aaea:
	ldrb	r3, [r6, #5]
	mov	r1, #0xd
	neg	r1, r1
	and	r3, r1
.L1aaf2:
	strb	r3, [r6, #5]
	ldrh	r3, [r7, #0xa]
	cmp	r3, #1
	bne	.L1ab08
	ldrb	r3, [r6, #5]
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #5]
.L1ab08:
	mov	r0, r6
	ldr	r1, [sp, #4]
	bl	Func_3dec
.L1ab10:
	ldr	r7, [r7, #4]
	mov	r3, #1
	add	r11, r3
	cmp	r7, #0
	beq	.L1ab1c
	b	.L1a9cc
.L1ab1c:
	mov	r4, r9
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.L1ab26
	b	.L1ac36
.L1ab26:
	mov	r0, r10
	bl	Func_1b36c
	mov	r5, r9
	add	r5, #0x28
	mov	r6, #0xd
	ldrb	r3, [r5, #5]
	neg	r6, r6
	mov	r2, r6
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r5, #7]
	neg	r3, r3
	and	r2, r3
	sub	r3, #0x3b
	and	r3, r1
	mov	r1, #0x11
	neg	r1, r1
	and	r2, r1
	mov	r1, #0x20
	mov	r7, r0
	orr	r2, r1
	mov	r0, #0x3f
	and	r2, r0
	and	r3, r0
	mov	r1, #0x80
	strb	r2, [r5, #5]
	orr	r3, r1
	ldrb	r2, [r5, #9]
	strb	r3, [r5, #7]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r5, #9]
	mov	r0, r9
	ldrh	r3, [r0, #0xe]
	ldr	r2, =0x3ff
	ldrh	r1, [r5, #8]
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #8]
	ldrh	r2, [r7, #0x10]
	ldr	r1, =0x1ff
	sub	r2, #4
	and	r2, r1
	ldr	r3, =0xfffffe00
	ldrh	r1, [r5, #6]
	mov	r11, r3
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	ldr	r0, =.L36740
	mov	r2, #0xf
	lsr	r3, #1
	and	r3, r2
	ldrb	r3, [r0, r3]
	ldrb	r1, [r7, #0x12]
	lsl	r3, #24
	asr	r3, #25
	add	r1, r3
	sub	r1, #4
	strb	r1, [r5, #4]
	mov	r4, r9
	mov	r0, #0x22
	ldrsh	r2, [r4, r0]
	mov	r0, #0x26
	ldrsh	r3, [r4, r0]
	ldrh	r1, [r4, #0x22]
	cmp	r2, r3
	beq	.L1ac18
	mov	r0, #0xd0
	lsl	r0, #2
	add	r0, r10
	strh	r1, [r0]
	ldr	r3, =0x342
	ldrh	r2, [r4, #0x22]
	add	r3, r10
	strh	r2, [r3]
	mov	r2, #0xd1
	lsl	r2, #2
	add	r2, r10
	mov	r3, #0
	strh	r3, [r2]
	bl	Func_3d28
	mov	r3, #0x1f
	ldrb	r2, [r5, #7]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r0, #1
	and	r3, r2
	orr	r3, r0
	strb	r3, [r5, #7]
	ldrb	r3, [r5, #5]
	ldrh	r1, [r5, #6]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #5]
	ldr	r2, =0xfff0
	lsl	r3, r1, #23
	lsr	r3, #23
	ldr	r4, =0x1ff
	add	r3, r2
	mov	r2, r11
	and	r3, r4
	and	r2, r1
	orr	r2, r3
	ldrb	r3, [r5, #4]
	add	r3, #0xf0
	strh	r2, [r5, #6]
	strb	r3, [r5, #4]
	mov	r0, r9
	ldrh	r3, [r0, #0x22]
	ldrh	r2, [r0, #0x24]
	mov	r1, r9
	add	r3, r2
	strh	r3, [r1, #0x22]
.L1ac18:
	ldr	r0, =0x103
	bl	_Func_79338
	cmp	r0, #0
	beq	.L1ac2e
	ldrb	r3, [r5, #5]
	mov	r2, r6
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r5, #5]
.L1ac2e:
	mov	r0, r5
	mov	r1, #0xf8
	bl	Func_3dec
.L1ac36:
	mov	r0, r10
	mov	r1, #0
	bl	Func_1aeec
	mov	r0, r10
	mov	r1, #1
	bl	Func_1aeec
	mov	r3, #0xd3
	lsl	r3, #2
	add	r3, r10
	ldr	r7, [r3]
	cmp	r7, #0
	bne	.L1ac54
	b	.L1adaa
.L1ac54:
	mov	r2, #0xd0
	lsl	r2, #2
	mov	r3, #0xd
	add	r2, r10
	neg	r3, r3
	mov	r9, r2
	mov	r11, r3
.L1ac62:
	mov	r4, #0x10
	ldrsh	r2, [r7, r4]
	mov	r5, #0x18
	ldrsh	r3, [r7, r5]
	mov	r6, r7
	add	r6, #0x28
	ldrh	r1, [r7, #0x10]
	cmp	r2, r3
	beq	.L1ac7a
	ldrh	r3, [r7, #0x14]
	add	r3, r1, r3
	strh	r3, [r7, #0x10]
.L1ac7a:
	mov	r0, #0x12
	ldrsh	r2, [r7, r0]
	mov	r4, #0x1a
	ldrsh	r3, [r7, r4]
	ldrh	r1, [r7, #0x12]
	cmp	r2, r3
	beq	.L1ac8e
	ldrh	r3, [r7, #0x16]
	add	r3, r1, r3
	strh	r3, [r7, #0x12]
.L1ac8e:
	ldr	r4, =0x1ff
	ldrh	r3, [r7, #0x10]
	ldr	r5, =0xfffffe00
	ldrh	r1, [r6, #6]
	mov	r2, r4
	and	r2, r3
	mov	r3, r5
	and	r3, r1
	orr	r3, r2
	strh	r3, [r6, #6]
	ldrh	r3, [r7, #0x12]
	strb	r3, [r6, #4]
	mov	r3, #0x22
	ldrsh	r2, [r7, r3]
	mov	r14, r2
	mov	r3, #0x26
	ldrsh	r2, [r7, r3]
	mov	r12, r2
	mov	r0, #0
	ldrh	r1, [r7, #0x22]
	cmp	r14, r12
	beq	.L1ad16
	ldrh	r3, [r7, #0x24]
	add	r3, r1, r3
	mov	r1, r9
	strh	r3, [r7, #0x22]
	strh	r3, [r1]
	ldr	r3, =0x342
	ldrh	r2, [r7, #0x22]
	add	r3, r10
	strh	r2, [r3]
	mov	r3, #0xd1
	lsl	r3, #2
	add	r3, r10
	strh	r0, [r3]
	mov	r0, r9
	str	r4, [sp]
	bl	Func_3d28
	mov	r3, #0x1f
	mov	r1, #0x3f
	and	r0, r3
	neg	r1, r1
	ldrb	r3, [r6, #7]
	mov	r2, r1
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r6, #7]
	ldrb	r3, [r6, #5]
	ldrh	r1, [r6, #6]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r6, #5]
	lsl	r2, r1, #23
	ldr	r3, =0xfff8
	lsr	r2, #23
	ldr	r4, [sp]
	add	r2, r3
	mov	r3, r5
	and	r2, r4
	and	r3, r1
	orr	r3, r2
	strh	r3, [r6, #6]
	ldrb	r3, [r6, #4]
	add	r3, #0xf8
	strb	r3, [r6, #4]
	b	.L1ad2e
.L1ad16:
	mov	r4, #4
	ldrb	r3, [r6, #5]
	neg	r4, r4
	mov	r2, r4
	and	r3, r2
	mov	r5, #0x3f
	strb	r3, [r6, #5]
	neg	r5, r5
	ldrb	r3, [r6, #7]
	mov	r2, r5
	and	r3, r2
	strb	r3, [r6, #7]
.L1ad2e:
	ldr	r0, =0x103
	bl	_Func_79338
	cmp	r0, #0
	beq	.L1ad9a
	ldr	r3, =0x2e2
	add	r3, r10
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L1ad80
	ldrb	r3, [r6, #5]
	mov	r0, r11
	and	r3, r0
	mov	r2, #4
	orr	r3, r2
	b	.L1ad86

	.pool_aligned

.L1ad80:
	ldrb	r3, [r6, #5]
	mov	r1, r11
	and	r3, r1
.L1ad86:
	strb	r3, [r6, #5]
	ldrh	r3, [r7, #0xa]
	cmp	r3, #1
	bne	.L1ad9a
	ldrb	r3, [r6, #5]
	mov	r2, r11
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #5]
.L1ad9a:
	mov	r0, r6
	mov	r1, #0xf0
	bl	Func_3dec
	ldr	r7, [r7, #4]
	cmp	r7, #0
	beq	.L1adaa
	b	.L1ac62
.L1adaa:
	mov	r4, r8
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.L1adb4
	b	.L1aecc
.L1adb4:
	ldr	r3, =iwram_1800
	ldr	r2, [r3]
	ldr	r5, =Data_346f8
	mov	r3, #0xf
	lsr	r2, #2
	and	r2, r3
	mov	r11, r5
	lsl	r2, #8
	mov	r1, #0x80
	add	r2, r11
	ldrh	r0, [r4, #0xc]
	lsl	r1, #1
	bl	Func_3fa4
	ldr	r3, .L1ae00	@ 0x3ff
	ldr	r1, [sp, #8]
	and	r0, r3
	ldrh	r2, [r1, #8]
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r2, r1
	strh	r3, [r2, #8]
	mov	r3, r8
	ldrh	r0, [r3, #0x18]
	mov	r4, #0x18
	ldrsh	r2, [r3, r4]
	ldrh	r1, [r3, #0x10]
	mov	r5, #0x10
	ldrsh	r3, [r3, r5]
	cmp	r2, r3
	beq	.L1ae1c
	sub	r3, r2, r3
	asr	r3, #1
	cmp	r3, #0
	beq	.L1ae18
	b	.L1ae10

	.align	2, 0
.L1ae00:
	.word	0x3ff
	.pool

.L1ae10:
	add	r3, r1, r3
	mov	r0, r8
	strh	r3, [r0, #0x10]
	b	.L1ae1c
.L1ae18:
	mov	r1, r8
	strh	r0, [r1, #0x10]
.L1ae1c:
	mov	r2, r8
	mov	r5, r8
	ldrh	r1, [r2, #0x1a]
	mov	r3, #0x1a
	ldrsh	r2, [r2, r3]
	mov	r4, #0x12
	ldrsh	r3, [r5, r4]
	mov	r0, r3
	cmp	r2, r3
	beq	.L1ae48
	sub	r3, r2, r3
	asr	r3, #1
	cmp	r3, #0
	beq	.L1ae42
	add	r3, r0, r3
	mov	r0, r8
	strh	r3, [r0, #0x12]
	mov	r0, r3
	b	.L1ae48
.L1ae42:
	mov	r2, r8
	strh	r1, [r2, #0x12]
	mov	r0, r1
.L1ae48:
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	ldr	r1, =.L36740
	mov	r2, #0xf
	lsr	r3, #2
	and	r3, r2
	ldrb	r3, [r1, r3]
	ldr	r4, [sp, #8]
	add	r3, r0
	sub	r3, #0x20
	strb	r3, [r4, #4]
	mov	r5, r8
	ldrh	r2, [r5, #0x10]
	ldr	r3, .L1ae8c	@ 0x1ff
	sub	r2, #4
	and	r2, r3
	ldrh	r1, [r4, #6]
	ldr	r3, =0xfffffe00
	ldr	r0, [sp, #8]
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r0, =0x103
	bl	_Func_79338
	cmp	r0, #0
	beq	.L1aec4
	ldr	r3, =0x2e2
	add	r3, r10
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L1aeb6
	b	.L1aea4

	.align	2, 0
.L1ae8c:
	.word	0x1ff
	.pool

.L1aea4:
	ldr	r1, [sp, #8]
	mov	r2, #0xd
	ldrb	r3, [r1, #5]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r1, #5]
	b	.L1aec4
.L1aeb6:
	ldr	r3, [sp, #8]
	ldrb	r2, [r3, #5]
	mov	r3, #0xd
	neg	r3, r3
	ldr	r4, [sp, #8]
	and	r3, r2
	strb	r3, [r4, #5]
.L1aec4:
	ldr	r0, [sp, #8]
	mov	r1, #0xf8
	bl	Func_3dec
.L1aecc:
	ldr	r2, =0x3a2
	add	r2, r10
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1a98c

	.section .rodata

.L36740:
	.incrom 0x36740, 0x36750
