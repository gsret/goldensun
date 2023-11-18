	.include "macros.inc"

.arm_func_start Func_15430
	push	{r5, r6}
	ldm	r0, {r1, r2, r3}
	ldr	r12, =HuffmanTreePointers
	lsr	r4, r1, #8
	add	r12, r4, lsl #3
	ldm	r12, {r4, r5}
	and	r12, r1, #0xff
	add	r12, r12
	ldrh	r5, [r5, r12]
	add	r4, r5
	mov	r5, r4
	mov	r12, #1
	ands	r6, r4, #3
	beq	.L15480
	rsbs	r6, r12, r6, lsl #3
	bic	r4, #3
	ldr	r12, [r4], #4
	rrx	r12, r12
	lsr	r12, r6
	mov	r6, #0
.L15480:
	lsrs	r12, #1
	ldreq	r12, [r4], #4
	rrxeqs	r12, r12
	bcs	.L15538
	lsrs	r3, #1
	bcc	.L15480
	ldreq	r3, [r2], #4
	rrxeqs	r3, r3
	bcc	.L15480
	mov	r1, #0
.L154a8:
	lsrs	r12, #1
	bcs	.L15510
	lsrs	r12, #1
	bcs	.L154d4
	lsrs	r12, #1
	bcs	.L154d0
	lsrs	r12, #1
	bcs	.L154f0
	add	r1, #4
	b	.L154a8
.L154d0:
	add	r1, #1
.L154d4:
	addne	r6, #1
	bne	.L154a8
	ldr	r12, [r4], #4
	rrxs	r12, r12
	addcc	r1, #2
	addcs	r6, #1
	b	.L154a8
.L154f0:
	add	r1, #2
	addne	r6, #1
	bne	.L154a8
	ldr	r12, [r4], #4
	rrxs	r12, r12
	addcc	r1, #2
	addcs	r6, #1
	b	.L154a8
.L15510:
	beq	.L15524
.L15514:
	add	r6, #1
	subs	r1, #1
	bge	.L154a8
	b	.L15480
.L15524:
	ldr	r12, [r4], #4
	rrxs	r12, r12
	bcs	.L15514
	add	r1, #1
	b	.L154a8
.L15538:
	lsrs	r1, r6, #1
	add	r6, r1
	sub	r6, r5, r6
	ldrb	r5, [r6, #-1]
	ldrb	r6, [r6, #-2]
	andcs	r1, r5, #0xf
	orrcs	r1, r6, r1, lsl #8
	lslcc	r1, r5, #4
	orrcc	r1, r6, lsr #4
	stm	r0, {r1, r2, r3}
	movs	r0, r1
	pop	{r5, r6}
	bx	lr
.func_end Func_15430

.arm_func_start Func_15570
	lsr	r3, r1, #8
	ldr	r12, =StringPointers
	add	r12, r3, lsl #3
	ldm	r12, {r2, r4}
	ands	r1, #0xff
	beq	.L155a0
.L15588:
	ldrb	r3, [r4], #1
	add	r2, r3
	cmp	r3, #0xff
	beq	.L15588
	subs	r1, #1
	bne	.L15588
.L155a0:
	mov	r3, #1
	ands	r4, r2, #3
	beq	.L155c0
	rsbs	r4, r3, r4, lsl #3
	bic	r2, #3
	ldr	r3, [r2], #4
	rrx	r3, r3
	lsr	r3, r4
.L155c0:
	mov	r1, #0
	stm	r0, {r1, r2, r3}
	bx	lr
.func_end Func_15570

.arm_func_start Func_155d0
	push	{r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r3
	sub	sp, #0x2c
	ldr	r3, [sp, #0x48]
	mov	r9, r2
	str	r0, [sp, #0x28]
	sub	r12, r1, #0x20
	ldrh	r0, [r0, #0xa]
	cmp	r12, #0x6f
	str	r0, [sp, #0x1c]
	movhi	r0, #1
	bhi	.L158dc
	cmp	r1, #0xff
	bls	.L1561c
	cmp	r3, #0
	sub	r14, r1, #0xde
	beq	.L15750
	cmp	r14, #1
	bhi	.L15750
.L1561c:
	cmp	r3, #0
	beq	.L1572c
	add	r1, r3, r1, lsl #5
	str	r1, [sp, #0x18]
	mov	r1, #0x1100
	add	r1, #0x11
	mov	r2, #0x3300
	str	r1, [sp, #0x14]
	add	r2, #0x33
	str	r2, [sp, #0x10]
	ldr	r3, =Data_370d4
	mov	r2, #0
	ldrb	r3, [r3, r12]
	cmp	r7, #0x1f
	str	r3, [sp, #0xc]
	bhi	.L15724
	mov	r10, #0x2500
	add	r10, #0x6000000
.L15664:
	mov	r14, #0
	add	r4, r2, #1
	add	r3, r7, r2
	lsr	r8, r3, #3
	and	r3, #7
	lsl	r6, r3, #1
.L1567c:
	tst	r14, #1
	lsr	r5, #4
	ldreq	r3, [sp, #0x18]
	ldreqb	r5, [r3], #1
	streq	r3, [sp, #0x18]
	and	r3, r5, #0xd
	cmp	r3, #1
	bne	.L15700
	and	r3, r5, #0xf
	cmp	r3, #1
	ldr	r12, [sp, #0x10]
	add	r1, r9, r14
	ldr	r0, [sp, #0x14]
	lsr	r2, r1, #3
	moveq	r12, r0
	cmp	r2, #0x1d
	bhi	.L15700
	ldr	r0, [sp, #0x1c]
	sub	r3, r0, #2
	mla	r0, r3, r2, r8
	and	r3, r1, #7
	orr	r3, r6, r3, lsr #2
	and	r1, #3
	lsl	r1, #2
	add	r0, r10, r0, lsl #5
	orr	r0, r3, lsl #1
	mov	r3, #0xf
	ldrh	r2, [r0]
	lsl	r3, r1
	bic	r2, r3
	and	r3, r12
	orr	r2, r3
	strh	r2, [r0]
.L15700:
	add	r14, #1
	cmp	r14, #7
	bls	.L1567c
	mov	r2, r4
	cmp	r4, #7
	bhi	.L15724
	add	r3, r7, r4
	cmp	r3, #0x1f
	bls	.L15664
.L15724:
	ldr	r0, [sp, #0xc]
	b	.L158dc
.L1572c:
	sub	r14, r1, #0xde
	add	r3, r12, r12, lsl #1
	add	r3, r12, r3, lsl #2
	ldr	r2, =Data_32224
	lsl	r3, #1
	add	r1, r3, r2
	add	r1, #2
	str	r1, [sp, #0x24]
	b	.L15768
.L15750:
	sub	r3, r1, #0x20
	ldr	r2, =Data_32224
	lsl	r3, #5
	add	r0, r3, r2
	add	r0, #8
	str	r0, [sp, #0x24]
.L15768:
	ldrh	r0, [r3, r2]
	cmp	r14, #1
	bhi	.L15788
	sub	r9, #3
	sub	r7, #2
	mov	r1, #0
	str	r1, [sp, #0x20]
	b	.L1578c
.L15788:
	str	r0, [sp, #0x20]
.L1578c:
	ldr	r2, [sp, #0x24]
	mov	r1, #0
	add	r2, #2
	str	r2, [sp, #4]
.L1579c:
	cmp	r1, #3
	moveq	r5, #0x1100
	addeq	r5, #0x11
	movne	r5, #0x5500
	addne	r5, #0x55
	ldr	r0, [sp, #0x28]
	ldrh	r3, [r0, #0x16]
	tst	r3, #0x40
	beq	.L157f8
	cmp	r1, #1
	bhi	.L157d8
	addeq	r9, #2
	beq	.L157f8
	sub	r9, #1
	b	.L157f8
.L157d8:
	cmp	r1, #2
	bne	.L157f4
	sub	r9, #1
	add	r7, #1
	b	.L157f8

	.pool

.L157f4:
	sub	r7, #1
.L157f8:
	ldr	r3, [sp, #4]
	ldr	r0, [sp, #0x24]
	mov	r2, #0
	str	r3, [sp, #8]
	cmp	r7, #0x1f
	ldrh	r12, [r0]
	add	r1, #1
	str	r1, [sp]
	lsl	r12, #16
	bhi	.L158cc
	mov	r6, #0x2500
	add	r6, #0x6000000
.L15828:
	mov	r14, #0
	add	r4, r2, #1
	add	r3, r7, r2
	lsr	r10, r3, #3
	and	r3, #7
	lsl	r8, r3, #1
.L15840:
	cmp	r12, #0
	bge	.L15890
	add	r1, r9, r14
	ldr	r0, [sp, #0x1c]
	lsr	r2, r1, #3
	sub	r3, r0, #2
	mla	r0, r3, r2, r10
	and	r3, r1, #7
	orr	r3, r8, r3, lsr #2
	and	r1, #3
	lsl	r1, #2
	add	r0, r6, r0, lsl #5
	orr	r0, r3, lsl #1
	mov	r3, #0xf
	ldrh	r2, [r0]
	lsl	r3, r1
	bic	r2, r3
	and	r3, r5
	orr	r2, r3
	strh	r2, [r0]
.L15890:
	lsls	r12, #1
	beq	.L158a4
	add	r14, #1
	cmp	r14, #0xd
	bls	.L15840
.L158a4:
	mov	r2, r4
	cmp	r4, #0xb
	bhi	.L158cc
	ldr	r1, [sp, #8]
	add	r3, r7, r4
	ldrh	r12, [r1], #2
	cmp	r3, #0x1f
	lsl	r12, #16
	str	r1, [sp, #8]
	bls	.L15828
.L158cc:
	ldr	r1, [sp]
	cmp	r1, #3
	bls	.L1579c
	ldr	r0, [sp, #0x20]
.L158dc:
	add	sp, #0x2c
	pop	{r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.func_end Func_155d0

.arm_func_start Func_158e8
	push	{r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r1
	mov	r1, #0
.L158f4:
	mov	r7, #0
	mov	r14, r7
	mov	r8, r7
	mov	r2, r7
	mov	r12, r2
	mov	r4, r2
	mov	r5, r2
	mov	r6, r2
	add	r0, #2
	add	r9, r1, #1
	mov	r1, r2
.L15920:
	ldrh	r3, [r10], #2
	cmp	r3, #0
	beq	.L15a8c
	cmp	r5, #0
	bne	.L159f8
	sub	r3, #0xf000
	sub	r3, #7
	cmp	r3, #0x13
	ldrls	pc, [pc, r3, lsl #2]
	b	.L159f4

	.word	.L159d8
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15998
	.word	.L15a8c
	.word	.L15a8c
	.word	.L159b8
	.word	.L15a8c
	.word	.L15a8c
	.word	.L159d8
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L159d8

.L15998:
	lsl	r14, r6, #3
	add	r12, r14, #8
	add	r8, r14, #1
	mov	r7, r14
	add	r4, r7, #7
	mov	r2, r12
	add	r5, #1
	b	.L15a8c
.L159b8:
	lsl	r14, r6, #3
	add	r12, r14, #8
	mov	r8, r14
	add	r7, r14, #1
	mov	r4, r12
	add	r2, r14, #7
	add	r5, #1
	b	.L15a8c
.L159d8:
	lsl	r14, r6, #3
	add	r12, r14, #8
	mov	r7, r14
	mov	r8, r7
	mov	r2, r12
	mov	r4, r2
	add	r5, #1
.L159f4:
	b	.L15a8c
.L159f8:
	sub	r3, #0xf000
	sub	r3, #7
	cmp	r3, #0x14
	ldrls	pc, [pc, r3, lsl #2]
	b	.L15a8c

	.word	.L15a80
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a60
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a70
	.word	.L15a8c
	.word	.L15a80
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a8c
	.word	.L15a80

.L15a60:
	add	r12, r1, #8
	add	r4, r1, #7
	mov	r2, r12
	b	.L15a8c
.L15a70:
	add	r12, r1, #8
	mov	r4, r12
	add	r2, r1, #7
	b	.L15a8c
.L15a80:
	add	r2, r1, #8
	mov	r12, r2
	mov	r4, r2
.L15a8c:
	add	r1, #8
	add	r6, #1
	cmp	r6, #0x1d
	bls	.L15920
	add	r3, r4, r8, lsl #8
	strh	r3, [r0], #2
	add	r3, r12, r14, lsl #8
	add	r0, #2
	strh	r3, [r0], #2
	add	r0, #2
	strh	r3, [r0], #2
	add	r0, #2
	strh	r3, [r0], #2
	add	r10, #4
	add	r0, #2
	strh	r3, [r0], #2
	mov	r1, r9
	add	r0, #2
	strh	r3, [r0], #2
	cmp	r1, #0x13
	add	r0, #2
	strh	r3, [r0], #2
	add	r3, r2, r7, lsl #8
	add	r0, #2
	strh	r3, [r0], #2
	bls	.L158f4
	pop	{r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.func_end Func_158e8

.arm_func_start Func_15afc
	push	{r5, r6}
	adr	r5, .L15b30
	ldm	r5, {r2, r3}
	mov	r5, #0xf
	mov	r12, #1
	ands	r6, r0, #3
	beq	.L15b54
	rsbs	r6, r12, r6, lsl #3
	bic	r0, #3
	ldr	r12, [r0], #4
	rrx	r12, r12
	lsr	r12, r6
	b	.L15b54

.L15b30:
	.word	0xfedcba98
	.word	0x76543210

.L15b38:
	orr	r2, r4, r3, lsr #28
	orr	r3, r6, r3, lsl #4
.L15b40:
	and	r6, r3, r5
.L15b44:
	strb	r6, [r1], #1
	lsrs	r12, #1
	bcs	.L15b5c
	strb	r6, [r1], #1
.L15b54:
	lsrs	r12, #1
	bcc	.L15b40
.L15b5c:
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15b40
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15d10
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15cd8
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15bac
	lsr	r4, r3, #28
	orr	r4, r3, lsl #8
	and	r6, r5, r3, lsr #24
	orr	r3, r6, r4, ror #4
	b	.L15b44
.L15bac:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15be4
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15bd8
	ror	r3, #28
	and	r6, r5, r3
	b	.L15b44
.L15bd8:
	and	r6, r5, r2
	bic	r4, r2, #0xf
	b	.L15b38
.L15be4:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15c08
	and	r6, r5, r2, lsr #4
	lsr	r4, r2, #8
	orr	r4, r2, lsl #28
	ror	r4, #24
	b	.L15b38
.L15c08:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15c50
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15c3c
	and	r6, r5, r2, lsr #8
	lsr	r4, r2, #12
	orr	r4, r2, lsl #24
	ror	r4, #20
	b	.L15b38
.L15c3c:
	and	r6, r5, r2, lsr #12
	lsr	r4, r2, #16
	orr	r4, r2, lsl #20
	ror	r4, #16
	b	.L15b38
.L15c50:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15c74
	and	r6, r5, r2, lsr #16
	lsr	r4, r2, #20
	orr	r4, r2, lsl #16
	ror	r4, #12
	b	.L15b38
.L15c74:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15cbc
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15ca8
	and	r6, r5, r2, lsr #20
	lsr	r4, r2, #24
	orr	r4, r2, lsl #12
	ror	r4, #8
	b	.L15b38
.L15ca8:
	and	r6, r5, r2, lsr #24
	lsr	r4, r2, #28
	orr	r4, r2, lsl #8
	ror	r4, #4
	b	.L15b38
.L15cbc:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15d6c
	and	r6, r5, r2, lsr #28
	lsl	r4, r2, #4
	b	.L15b38
.L15cd8:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15cfc
	lsr	r4, r3, #24
	orr	r4, r3, lsl #12
	and	r6, r5, r3, lsr #20
	orr	r3, r6, r4, ror #8
	b	.L15b44
.L15cfc:
	lsr	r4, r3, #20
	orr	r4, r3, lsl #16
	and	r6, r5, r3, lsr #16
	orr	r3, r6, r4, ror #12
	b	.L15b44
.L15d10:
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcc	.L15d58
	lsrs	r12, #1
	ldreq	r12, [r0], #4
	rrxeqs	r12, r12
	bcs	.L15d44
	lsr	r4, r3, #12
	orr	r4, r3, lsl #24
	and	r6, r5, r3, lsr #8
	orr	r3, r6, r4, ror #20
	b	.L15b44
.L15d44:
	lsr	r4, r3, #16
	orr	r4, r3, lsl #20
	and	r6, r5, r3, lsr #12
	orr	r3, r6, r4, ror #16
	b	.L15b44
.L15d58:
	lsr	r4, r3, #8
	orr	r4, r3, lsl #28
	and	r6, r5, r3, lsr #4
	orr	r3, r6, r4, ror #24
	b	.L15b44
.L15d6c:
	pop	{r5, r6}
	bx	lr
.func_end Func_15afc

.arm_func_start Func_15d74
	push	{r5, r6, r7, r8, r9, r10}
	adr	r10, .L15e04
	ldm	r10, {r4, r6, r7}
.L15d80:
	add	r10, r0, r2, lsl #3
.L15d84:
	add	r9, r1, #0x20
.L15d88:
	ldm	r0, {r5, r12}
	orr	r5, r5, lsr #4
	and	r5, r4
	orr	r5, r5, lsr #8
	and	r5, r6
	orr	r12, r12, lsr #4
	and	r12, r4
	orr	r12, r12, lsr #8
	orr	r12, r5, r12, lsl #16
	orr	r5, r12, r12, lsr #1
	orr	r5, r5, lsr #2
	and	r5, r7
	rsbs	r5, r5, lsl #4
	mvns	r8, r5
	ldrne	r8, [r1]
	bicne	r8, r5
	orrne	r12, r8
	str	r12, [r1], #4
	add	r0, r2, lsl #3
	cmp	r1, r9
	bne	.L15d88
	sub	r0, r2, lsl #6
	add	r0, #8
	cmp	r0, r10
	bne	.L15d84
	add	r0, r2, lsl #6
	sub	r0, r2, lsl #3
	subs	r3, #1
	bne	.L15d80
	pop	{r5, r6, r7, r8, r9, r10}
	bx	lr

.L15e04:
	.word	0xff00ff
	.word	0xffff
	.word	0x11111111
.func_end Func_15d74

.arm_func_start Func_15e10
	push	{r5, r6, r7, r8, r9, r10}
	adr	r10, .L15e80
	ldm	r10, {r4, r6, r7}
.L15e1c:
	add	r10, r0, r2, lsl #3
.L15e20:
	add	r9, r1, #0x20
.L15e24:
	ldm	r0, {r5, r12}
	orr	r5, r5, lsr #4
	and	r5, r4
	orr	r5, r5, lsr #8
	and	r5, r6
	orr	r12, r12, lsr #4
	and	r12, r4
	orr	r12, r12, lsr #8
	orr	r12, r5, r12, lsl #16
	str	r12, [r1], #4
	add	r0, r2, lsl #3
	cmp	r1, r9
	bne	.L15e24
	sub	r0, r2, lsl #6
	add	r0, #8
	cmp	r0, r10
	bne	.L15e20
	add	r0, r2, lsl #6
	sub	r0, r2, lsl #3
	subs	r3, #1
	bne	.L15e1c
	pop	{r5, r6, r7, r8, r9, r10}
	bx	lr

.L15e80:
	.word	0xff00ff
	.word	0xffff
	.word	0x11111111
.func_end Func_15e10
