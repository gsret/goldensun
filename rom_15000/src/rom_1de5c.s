	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_1de5c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	mov	r8, r3
	ldr	r3, =iwram_1e8c
	mov	r5, #0x80
	ldr	r3, [r3]
	lsl	r5, #4
	mov	r6, r0
	mov	r0, r5
	mov	r11, r3
	bl	Func_4938
	str	r0, [sp, #8]
	ldr	r0, =0x13
	bl	Func_2f40
	ldr	r3, =0xea7
	str	r0, [sp, #4]
	add	r3, r11
	ldrb	r3, [r3]
	lsl	r3, #12
	str	r3, [sp]
	mov	r1, #0x10
	ldr	r3, =Func_8d4
	add	r0, sp, #0x14
	bl	_call_via_r3
	mov	r2, #0xf0
	ldr	r1, [sp]
	lsl	r2, #8
	cmp	r1, r2
	bne	.L1ded4
	add	r3, sp, #0x14
	mov	r10, r3
	ldr	r3, =0xeae
	add	r3, r11
	ldrh	r2, [r3]
	ldr	r1, =.L371b4
	mov	r3, #0xf
	and	r3, r2
	ldrb	r3, [r1, r3]
	mov	r4, r10
	strb	r3, [r4, #1]
	mov	r3, #3
	strb	r3, [r4, #3]
	ldr	r0, [sp, #8]
	ldr	r3, =Func_8d8
	mov	r1, r5
	ldr	r2, =0x4040404
	bl	_call_via_r3
	b	.L1def6
.L1ded4:
	ldr	r3, =0xeae
	add	r3, r11
	ldrb	r2, [r3]
	mov	r7, #0x14
	mov	r3, #0xf
	add	r7, sp
	and	r3, r2
	strb	r3, [r7, #1]
	mov	r3, #1
	strb	r3, [r7, #3]
	ldr	r0, [sp, #8]
	ldr	r3, =Func_8d8
	mov	r1, r5
	ldr	r2, =0xe0e0e0e
	mov	r10, r7
	bl	_call_via_r3
.L1def6:
	cmp	r6, #0
	bne	.L1defc
	b	.L1e042
.L1defc:
	b	.L1e036
.L1defe:
	cmp	r1, #0x1e
	bhi	.L1dfb6
	sub	r3, r1, #3
	cmp	r3, #0x1a
	bls	.L1df0a
	b	.L1e036
.L1df0a:
	ldr	r2, =.L1df14
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1df14:
	.word	.L1dfaa
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1df98
	.word	.L1df80
	.word	.L1df98
	.word	.L1df98
	.word	.L1dfb2
	.word	.L1dfb2
	.word	.L1e036
	.word	.L1dfb0
	.word	.L1dfb0
	.word	.L1e036
	.word	.L1dfb2
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1dfb0
	.word	.L1dfb2
.L1df80:
	ldr	r3, =0xeae
	ldrh	r1, [r6]
	add	r3, r11
	strh	r1, [r3]
	ldr	r2, =.L371b4
	mov	r3, #0xf
	and	r3, r1
	ldrb	r3, [r2, r3]
	mov	r1, r10
	add	r6, #2
	strb	r3, [r1, #1]
	b	.L1e036
.L1df98:
	ldr	r3, =0xeae
	mov	r2, #0xf
	add	r3, r11
	strh	r2, [r3]
	ldr	r3, =.L371b4
	ldrb	r3, [r3, r2]
	mov	r2, r10
	strb	r3, [r2, #1]
	b	.L1e036
.L1dfaa:
	ldr	r3, =Data_370d4
	ldrb	r3, [r3]
	b	.L1e034
.L1dfb0:
	add	r6, #2
.L1dfb2:
	add	r6, #2
	b	.L1e036
.L1dfb6:
	mov	r3, #0xff
	and	r1, r3
	ldr	r4, [sp, #4]
	ldr	r0, [sp, #8]
	lsl	r3, r1, #5
	mov	r7, #0
	add	r5, r4, r3
	add	r0, r8
	mov	r9, r7
	mov	r14, r10
.L1dfca:
	ldmia	r5!, {r2}
	mov	r4, #3
.L1dfce:
	mov	r7, #0xf
	mov	r3, r2
	and	r3, r7
	mov	r7, r14
	ldrb	r3, [r7, r3]
	cmp	r3, #0
	beq	.L1dfde
	strb	r3, [r0]
.L1dfde:
	lsr	r2, #4
	mov	r7, #0xf
	mov	r3, r2
	and	r3, r7
	mov	r7, r10
	ldrb	r3, [r7, r3]
	add	r0, #1
	cmp	r3, #0
	beq	.L1dff2
	strb	r3, [r0]
.L1dff2:
	sub	r4, #1
	add	r0, #1
	lsr	r2, #4
	cmp	r4, #0
	bge	.L1dfce
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	add	r0, #0xf8
	cmp	r3, #7
	ble	.L1dfca
	ldr	r4, =0xf01d
	cmp	r12, r4
	beq	.L1e014
	ldr	r7, =0xf01f
	cmp	r12, r7
	bne	.L1e01a
.L1e014:
	mov	r1, #8
	add	r8, r1
	b	.L1e036
.L1e01a:
	ldr	r2, =0xf01e
	cmp	r12, r2
	bne	.L1e024
	mov	r3, #3
	b	.L1e034
.L1e024:
	cmp	r1, #0x1f
	bls	.L1e032
	ldr	r2, =Data_370d4
	mov	r3, r1
	sub	r3, #0x20
	ldrb	r3, [r2, r3]
	b	.L1e034
.L1e032:
	mov	r3, #1
.L1e034:
	add	r8, r3
.L1e036:
	ldrh	r1, [r6]
	add	r6, #2
	mov	r12, r1
	cmp	r1, #0
	beq	.L1e042
	b	.L1defe
.L1e042:
	mov	r3, r8
	add	r3, #7
	lsr	r6, r3, #3
	ldr	r5, [sp, #8]
	mov	r1, #0x80
	lsl	r4, r6, #2
	lsl	r7, r6, #3
	lsl	r1, #1
	mov	r2, #7
	mov	r0, r5
	mov	r10, r4
	mov	r8, r7
	mov	r14, r1
	mov	r9, r2
.L1e05e:
	cmp	r6, #0
	beq	.L1e096
	ldr	r3, =0xff00ff0
	ldr	r7, =0xff00ff
	mov	r12, r3
	mov	r4, r6
.L1e06a:
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	lsl	r3, r1, #4
	orr	r1, r3
	lsr	r3, r2, #4
	orr	r2, r3
	mov	r3, r12
	and	r1, r3
	and	r2, r7
	lsl	r3, r1, #8
	orr	r1, r3
	lsr	r3, r2, #8
	orr	r2, r3
	lsl	r3, r1, #4
	lsr	r3, #16
	lsl	r2, #16
	orr	r3, r2
	sub	r4, #1
	add	r5, #8
	stmia	r0!, {r3}
	cmp	r4, #0
	bne	.L1e06a
.L1e096:
	mov	r4, r10
	mov	r2, #1
	sub	r3, r0, r4
	mov	r7, r14
	mov	r1, r8
	neg	r2, r2
	add	r0, r3, r7
	add	r9, r2
	sub	r3, r5, r1
	add	r5, r3, r7
	mov	r3, r9
	cmp	r3, #0
	bge	.L1e05e
	cmp	r6, #0
	bne	.L1e0b6
	b	.L1e22a
.L1e0b6:
	ldr	r4, =0xea2
	mov	r7, #0xea
	mov	r1, #0xda
	ldr	r2, =0x3ff
	add	r4, r11
	lsl	r7, #4
	lsl	r1, #4
	ldr	r0, [sp, #8]
	mov	r14, r4
	add	r7, r11
	mov	r12, r1
	mov	r8, r2
	mov	r9, r6
.L1e0d0:
	mov	r3, r14
	ldrb	r2, [r3]
	mov	r5, #0x7f
	cmp	r2, #0
	beq	.L1e0dc
	mov	r5, #0xff
.L1e0dc:
	ldr	r4, [sp, #0x10]
	ldrh	r3, [r4]
	mov	r1, r8
	and	r1, r3
	mov	r3, r1
	sub	r3, #0x80
	cmp	r3, #0x7f
	bls	.L1e1a0
	cmp	r2, #0
	beq	.L1e100
	mov	r2, #0x80
	lsl	r2, #2
	cmp	r1, r2
	bcc	.L1e100
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcc	.L1e1a0
.L1e100:
	ldrh	r1, [r7]
	mov	r2, r12
	and	r1, r5
	add	r3, r1, r2
	mov	r2, r11
	ldrb	r3, [r2, r3]
	mov	r4, #0
	cmp	r3, #0
	beq	.L1e12a
.L1e112:
	add	r1, #1
	add	r4, #1
	and	r1, r5
	cmp	r4, r5
	bhi	.L1e12a
	mov	r2, #0xda
	lsl	r2, #4
	add	r3, r1, r2
	mov	r2, r11
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	bne	.L1e112
.L1e12a:
	add	r3, r1, #1
	and	r3, r5
	strh	r3, [r7]
	mov	r3, r12
	add	r2, r1, r3
	mov	r4, r11
	mov	r3, #1
	strb	r3, [r4, r2]
	cmp	r1, #0x7f
	bls	.L1e190
	mov	r2, #0xc0
	lsl	r2, #1
	add	r1, r2
	b	.L1e194

	.pool_aligned

.L1e190:
	mov	r3, #0x80
	orr	r1, r3
.L1e194:
	ldr	r3, [sp]
	ldr	r4, [sp, #0x10]
	orr	r3, r1
	strh	r3, [r4]
	ldr	r2, [sp, #0xc]
	strh	r3, [r2]
.L1e1a0:
	mov	r3, #0xc0
	lsl	r2, r1, #5
	lsl	r3, #19
	add	r1, r2, r3
	ldr	r4, =0x6000004
	ldr	r3, [r0]
	str	r3, [r1]
	add	r1, r2, r4
	mov	r4, #0x80
	lsl	r4, #1
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0x80
	str	r3, [r1]
	ldr	r3, =0x6000008
	lsl	r4, #2
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xc0
	str	r3, [r1]
	ldr	r3, =0x600000c
	lsl	r4, #2
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0x80
	str	r3, [r1]
	ldr	r3, =0x6000010
	lsl	r4, #3
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xa0
	str	r3, [r1]
	ldr	r3, =0x6000014
	lsl	r4, #3
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xc0
	str	r3, [r1]
	ldr	r3, =0x6000018
	lsl	r4, #3
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xe0
	str	r3, [r1]
	ldr	r3, =0x600001c
	lsl	r4, #3
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	str	r3, [r1]
	mov	r3, #1
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	neg	r3, r3
	add	r9, r3
	add	r1, #2
	add	r2, #2
	mov	r4, r9
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	add	r0, #4
	cmp	r4, #0
	beq	.L1e22a
	b	.L1e0d0
.L1e22a:
	ldr	r0, [sp, #8]
	bl	Func_2df0
	mov	r0, r6
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1de5c

.thumb_func_start Func_1e260
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r3
	ldr	r3, =iwram_1e8c
	mov	r7, r2
	ldr	r5, [r3]
	ldr	r2, =0xea2
	lsl	r1, #5
	add	r3, r5, r2
	add	r1, r0
	ldrb	r3, [r3]
	lsl	r1, #1
	mov	r6, #0
	sub	sp, #4
	add	r0, r1, r5
	mov	r8, r3
	cmp	r6, r11
	bcs	.L1e2f0
	mov	r3, #0x20
	sub	r3, r7
	lsl	r3, #1
	str	r3, [sp]
.L1e296:
	mov	r4, #0
	cmp	r4, r7
	bcs	.L1e2e6
	ldr	r3, =0x3ff
	ldr	r2, =0x1ff
	mov	r9, r3
	ldr	r3, =0x27f
	mov	r10, r2
	mov	r2, #0xff
	mov	r14, r3
	mov	r12, r2
.L1e2ac:
	ldrh	r3, [r0]
	mov	r2, r9
	and	r2, r3
	mov	r3, r2
	sub	r3, #0x80
	add	r0, #2
	cmp	r3, #0x7f
	bls	.L1e2ca
	mov	r3, r8
	cmp	r3, #0
	beq	.L1e2e0
	cmp	r2, r10
	bls	.L1e2e0
	cmp	r2, r14
	bhi	.L1e2e0
.L1e2ca:
	mov	r3, r12
	and	r2, r3
	mov	r3, #0x80
	eor	r2, r3
	mov	r3, #0xda
	lsl	r3, #4
	add	r2, r3
	ldrb	r1, [r5, r2]
	mov	r3, #0xfc
	and	r3, r1
	strb	r3, [r5, r2]
.L1e2e0:
	add	r4, #1
	cmp	r4, r7
	bcc	.L1e2ac
.L1e2e6:
	ldr	r2, [sp]
	add	r6, #1
	add	r0, r2
	cmp	r6, r11
	bcc	.L1e296
.L1e2f0:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e260

.thumb_func_start Func_1e318
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e8c
	mov	r2, #0x1e
	ldr	r5, [r3]
	mov	r9, r2
	ldr	r2, =0xea2
	add	r3, r5, r2
	ldrb	r7, [r3]
	mov	r4, r5
	mov	r6, #0x14
.L1e334:
	mov	r3, r9
	cmp	r3, #0
	beq	.L1e384
	ldr	r2, =0x3ff
	ldr	r3, =0x1ff
	mov	r10, r2
	ldr	r2, =0x27f
	mov	r8, r3
	mov	r3, #0xff
	mov	r0, r9
	mov	r14, r2
	mov	r12, r3
.L1e34c:
	ldrh	r3, [r4]
	mov	r1, r10
	and	r1, r3
	mov	r3, r1
	sub	r3, #0x80
	add	r4, #2
	cmp	r3, #0x7f
	bls	.L1e368
	cmp	r7, #0
	beq	.L1e37e
	cmp	r1, r8
	bls	.L1e37e
	cmp	r1, r14
	bhi	.L1e37e
.L1e368:
	mov	r2, r12
	and	r1, r2
	mov	r3, #0x80
	eor	r1, r3
	mov	r3, #0xda
	lsl	r3, #4
	add	r1, r3
	ldrb	r3, [r5, r1]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r5, r1]
.L1e37e:
	sub	r0, #1
	cmp	r0, #0
	bne	.L1e34c
.L1e384:
	sub	r6, #1
	cmp	r6, #0
	bne	.L1e334
	mov	r3, #0xda
	lsl	r3, #4
	mov	r1, #0
	mov	r6, #0xff
	add	r2, r5, r3
.L1e394:
	ldrb	r3, [r2]
	cmp	r3, #1
	bne	.L1e39c
	strb	r1, [r2]
.L1e39c:
	sub	r6, #1
	add	r2, #1
	cmp	r6, #0
	bge	.L1e394
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e318

.thumb_func_start Func_1e3c8
	push	{lr}
	ldr	r3, =iwram_1e8c
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.L1e3f0
	ldr	r3, =0xea2
	mov	r4, #0xe2
	add	r2, r1, r3
	lsl	r4, #4
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	mov	r3, #0x80
	add	r2, r1, r4
.L1e3e4:
	add	r3, #1
	strb	r0, [r2]
	add	r2, #1
	cmp	r3, #0xff
	ble	.L1e3e4
	b	.L1e40c
.L1e3f0:
	ldr	r3, =0xea2
	mov	r4, #0xe2
	add	r2, r1, r3
	lsl	r4, #4
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0
	add	r2, r1, r4
	mov	r3, #0x7f
.L1e402:
	sub	r3, #1
	strb	r0, [r2]
	add	r2, #1
	cmp	r3, #0
	bge	.L1e402
.L1e40c:
	pop	{r0}
	bx	r0
.func_end Func_1e3c8

.thumb_func_start Func_1e418
	bx	lr
.func_end Func_1e418

.thumb_func_start Func_1e41c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r3
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r7, r1
	mov	r5, r0
	mov	r8, r2
	ldr	r6, [sp, #0x1c]
	mov	r9, r3
	cmp	r7, r10
	beq	.L1e43c
	b	.L1e572
.L1e43c:
	cmp	r8, r6
	bne	.L1e442
	b	.L1e6c2
.L1e442:
	cmp	r8, r6
	bls	.L1e44c
	mov	r4, r8
	mov	r8, r6
	mov	r6, r4
.L1e44c:
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	mov	r2, r8
	sub	r3, r6, r2
	add	r0, r10
	mov	r2, #1
	add	r1, r8
	bl	Func_1e260
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	add	r3, r8
	lsl	r3, #5
	add	r3, r2
	add	r3, r10
	lsl	r3, #1
	mov	r2, r9
	mov	r4, r8
	add	r0, r3, r2
	cmp	r4, r6
	bls	.L1e478
	b	.L1e6c2
.L1e478:
	ldrh	r1, [r0]
	cmp	r4, r8
	bne	.L1e4d8
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #0xf
	bhi	.L1e564
	ldr	r2, =.L1e490
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e490:
	.word	.L1e566
	.word	.L1e560
	.word	.L1e566
	.word	.L1e566
	.word	.L1e566
	.word	.L1e4d4
	.word	.L1e564
	.word	.L1e564
	.word	.L1e4d0
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e566
.L1e4d0:
	ldr	r1, =0xf018
	b	.L1e566
.L1e4d4:
	ldr	r1, =0xf009
	b	.L1e566
.L1e4d8:
	cmp	r4, r6
	bne	.L1e538
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #0x10
	bhi	.L1e564
	ldr	r2, =.L1e4ec
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e4ec:
	.word	.L1e560
	.word	.L1e566
	.word	.L1e566
	.word	.L1e566
	.word	.L1e566
	.word	.L1e534
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e530
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e564
	.word	.L1e566
.L1e530:
	ldr	r1, =0xf019
	b	.L1e566
.L1e534:
	ldr	r1, =0xf00a
	b	.L1e566
.L1e538:
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #5
	bhi	.L1e564
	ldr	r2, =.L1e548
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e548:
	.word	.L1e560
	.word	.L1e560
	.word	.L1e566
	.word	.L1e566
	.word	.L1e566
	.word	.L1e560
.L1e560:
	ldr	r1, =0xf00d
	b	.L1e566
.L1e564:
	ldr	r1, =0xf00f
.L1e566:
	add	r4, #1
	strh	r1, [r0]
	add	r0, #0x40
	cmp	r4, r6
	bls	.L1e478
	b	.L1e6c2
.L1e572:
	cmp	r8, r6
	beq	.L1e578
	b	.L1e6c2
.L1e578:
	cmp	r7, r10
	bne	.L1e57e
	b	.L1e6c2
.L1e57e:
	cmp	r7, r10
	bls	.L1e588
	mov	r4, r7
	mov	r7, r10
	mov	r10, r4
.L1e588:
	ldrh	r0, [r5, #0xc]
	ldrh	r1, [r5, #0xe]
	mov	r3, r10
	sub	r2, r3, r7
	add	r0, r7
	mov	r3, #1
	add	r1, r8
	bl	Func_1e260
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	add	r3, r8
	lsl	r3, #5
	add	r3, r2
	add	r3, r7
	lsl	r3, #1
	mov	r2, r9
	mov	r4, r7
	add	r0, r3, r2
	cmp	r4, r10
	bls	.L1e5b4
	b	.L1e6c2
.L1e5b4:
	ldrh	r1, [r0]
	cmp	r4, r7
	bne	.L1e61c
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #0x11
	bhi	.L1e6b4
	ldr	r2, =.L1e5cc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e5cc:
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b0
	.word	.L1e6b6
	.word	.L1e6b4
	.word	.L1e618
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e614
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b6
.L1e614:
	ldr	r1, =0xf01a
	b	.L1e6b6
.L1e618:
	ldr	r1, =0xf00b
	b	.L1e6b6
.L1e61c:
	cmp	r4, r10
	bne	.L1e684
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #0x12
	bhi	.L1e6b4
	ldr	r2, =.L1e630
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e630:
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b0
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b4
	.word	.L1e680
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e67c
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b4
	.word	.L1e6b6
.L1e67c:
	ldr	r1, =0xf01b
	b	.L1e6b6
.L1e680:
	ldr	r1, =0xf00c
	b	.L1e6b6
.L1e684:
	ldr	r2, =0xffff0ff7
	add	r3, r1, r2
	cmp	r3, #6
	bhi	.L1e6b4
	ldr	r2, =.L1e694
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1e694:
	.word	.L1e6b6
	.word	.L1e6b6
	.word	.L1e6b0
	.word	.L1e6b0
	.word	.L1e6b6
	.word	.L1e6b4
	.word	.L1e6b0
.L1e6b0:
	ldr	r1, =0xf00d
	b	.L1e6b6
.L1e6b4:
	ldr	r1, =0xf00e
.L1e6b6:
	add	r4, #1
	strh	r1, [r0]
	add	r0, #2
	cmp	r4, r10
	bhi	.L1e6c2
	b	.L1e5b4
.L1e6c2:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e41c

.thumb_func_start Func_1e71c
	ldr	r3, =iwram_1e8c
	ldr	r2, .L1e72c	@ 0xf
	ldr	r3, [r3]
	and	r0, r2
	ldr	r2, =0xeae
	add	r3, r2
	strh	r0, [r3]
	bx	lr
	.align	2, 0
.L1e72c:
	.word	0xf
.func_end Func_1e71c

.thumb_func_start Func_1e738
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xeac
	ldr	r3, [r3]
	add	r3, r2
	strh	r0, [r3]
	bx	lr
.func_end Func_1e738

.thumb_func_start Func_1e74c
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r11, r3
	ldr	r3, =iwram_1e8c
	mov	r9, r2
	ldr	r5, [r3]
	ldr	r2, =0x12b2
	mov	r3, #0
	mov	r8, r3
	add	r6, r5, r2
	mov	r2, r8
	mov	r10, r1
	strh	r2, [r6]
	mov	r1, #1
	bl	Func_18038
	ldrh	r3, [r6]
	mov	r1, #0xeb
	lsl	r1, #4
	lsl	r3, #1
	add	r3, r1
	mov	r2, r8
	strh	r2, [r5, r3]
	ldrh	r3, [r6]
	ldr	r2, .L1e7a0	@ 0x1ff
	add	r3, #1
	and	r3, r2
	add	r5, r1
	strh	r3, [r6]
	mov	r0, r5
	mov	r1, r10
	mov	r2, r9
	mov	r3, r11
	bl	Func_17aa4
	b	.L1e7ac

	.align	2, 0
.L1e7a0:
	.word	0x1ff
	.pool

.L1e7ac:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_1e74c

.thumb_func_start Func_1e7c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r6, r3
	ldr	r3, =iwram_1e8c
	mov	r10, r1
	ldr	r7, [r3]
	mov	r9, r2
	ldr	r1, =0x12b2
	mov	r2, #0
	mov	r8, r2
	add	r5, r7, r1
	mov	r3, r8
	strh	r3, [r5]
	mov	r1, #1
	bl	Func_18038
	ldrh	r3, [r5]
	mov	r4, #0xeb
	lsl	r4, #4
	lsl	r3, #1
	add	r3, r4
	mov	r0, r8
	strh	r0, [r7, r3]
	ldrh	r3, [r5]
	ldr	r2, .L1e82c	@ 0x1ff
	add	r3, #1
	and	r3, r2
	strh	r3, [r5]
	mov	r1, r10
	ldrh	r3, [r1, #0xe]
	lsr	r6, #3
	ldrh	r2, [r1, #0xc]
	add	r3, r6
	mov	r4, r9
	lsr	r1, r4, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	mov	r0, #0xa0
	add	r1, r3, #1
	lsl	r0, #2
	cmp	r1, r0
	bcs	.L1e848
	ldr	r3, =0x6002000
	mov	r4, #0xeb
	lsl	r1, #1
	lsl	r4, #4
	add	r2, r1, r3
	add	r0, r7, r4
	b	.L1e83c

	.align	2, 0
.L1e82c:
	.word	0x1ff
	.pool

.L1e83c:
	mov	r3, #7
	mov	r4, r9
	add	r1, r7, r1
	and	r3, r4
	bl	Func_1de5c
.L1e848:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e7c0

.thumb_func_start Func_1e858
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r8, r2
	mov	r10, r3
	mov	r7, r1
	bl	Func_4970
	ldrb	r3, [r5]
	mov	r6, r0
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e888
.L1e87a:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e87a
.L1e888:
	ldr	r3, =0
	mov	r0, r6
	strh	r3, [r2]
	mov	r1, r7
	mov	r2, r8
	mov	r3, r10
	bl	Func_17aa4
	mov	r0, r6
	bl	Func_2df0
	b	.L1e8a4

	.pool_aligned

.L1e8a4:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e858

.thumb_func_start Func_1e8b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r10, r2
	mov	r8, r3
	mov	r7, r1
	bl	Func_4970
	ldr	r3, =iwram_1e8c
	mov	r6, r0
	ldr	r0, [r3]
	ldrb	r3, [r5]
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e8e4
.L1e8d6:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e8d6
.L1e8e4:
	ldr	r3, .L1e91c	@ 0
	strh	r3, [r2]
	mov	r1, r8
	ldrh	r3, [r7, #0xe]
	lsr	r2, r1, #3
	add	r3, r2
	mov	r4, r10
	ldrh	r2, [r7, #0xc]
	lsr	r1, r4, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	add	r1, r3, #1
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcs	.L1e932
	ldr	r4, =0x6002000
	lsl	r1, #1
	add	r2, r1, r4
	mov	r3, #7
	add	r1, r0, r1
	mov	r0, r10
	and	r3, r0
	mov	r0, r6
	b	.L1e928

	.align	2, 0
.L1e91c:
	.word	0
	.pool

.L1e928:
	bl	Func_1de5c
	mov	r0, r6
	bl	Func_2df0
.L1e932:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e8b0

.thumb_func_start Func_1e940
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r7, r2
	mov	r8, r3
	mov	r10, r1
	bl	Func_4970
	ldrb	r3, [r5]
	mov	r6, r0
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e970
.L1e962:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e962
.L1e970:
	ldr	r3, =0
	lsr	r7, #3
	strh	r3, [r2]
	mov	r3, r8
	lsr	r3, #3
	mov	r0, r6
	mov	r1, r10
	mov	r2, r7
	mov	r8, r3
	bl	Func_17c8c
	mov	r0, r6
	bl	Func_2df0
	b	.L1e994

	.pool_aligned

.L1e994:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e940

.thumb_func_start Func_1e9a0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r4, r0
	ldr	r7, [sp, #0x24]
	mov	r5, r1
	mov	r8, r3
	mov	r1, r4
	mov	r6, r2
	mov	r0, sp
	mov	r2, r5
	bl	Func_17dd4
	mov	r1, r6
	mov	r2, r8
	mov	r3, r7
	bl	Func_1e858
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e9a0

.thumb_func_start Func_1e9d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r4, r0
	ldr	r7, [sp, #0x24]
	mov	r5, r1
	mov	r8, r3
	mov	r1, r4
	mov	r6, r2
	mov	r0, sp
	mov	r2, r5
	bl	Func_17dd4
	mov	r1, r6
	mov	r2, r8
	mov	r3, r7
	bl	Func_1e8b0
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e9d4

.thumb_func_start Func_1ea08
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r4, r0
	ldr	r7, [sp, #0x24]
	mov	r5, r1
	mov	r8, r3
	mov	r1, r4
	mov	r6, r2
	mov	r0, sp
	mov	r2, r5
	bl	Func_17dd4
	mov	r1, r6
	mov	r2, r8
	mov	r3, r7
	bl	Func_1e940
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1ea08

.thumb_func_start Func_1ea3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r3
	ldr	r3, =iwram_1e8c
	sub	sp, #0x20
	mov	r4, r0
	ldr	r5, [sp, #0x38]
	ldr	r3, [r3]
	mov	r6, r1
	mov	r7, r2
	add	r0, sp, #0x10
	mov	r1, r4
	mov	r2, #4
	mov	r10, r3
	bl	Func_17dd4
	cmp	r5, #0
	bne	.L1ea68
	ldr	r3, =0xf01d
	b	.L1ea6a
.L1ea68:
	ldr	r3, =0xf01f
.L1ea6a:
	mov	r4, sp
	strh	r3, [r4]
	ldr	r3, =0xf01e
	strh	r3, [r4, #2]
	add	r2, r4, #4
	mov	r1, #4
.L1ea76:
	ldrb	r3, [r0]
	sub	r1, #1
	strh	r3, [r2]
	add	r0, #1
	add	r2, #2
	cmp	r1, #0
	bge	.L1ea76
	mov	r3, #0
	mov	r1, r8
	strh	r3, [r4, #0xc]
	ldrh	r3, [r6, #0xe]
	lsr	r2, r1, #3
	add	r3, r2
	ldrh	r2, [r6, #0xc]
	lsr	r1, r7, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	add	r1, r3, #1
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcs	.L1eab8
	ldr	r3, =0x6002000
	lsl	r1, #1
	add	r2, r1, r3
	mov	r3, #7
	add	r1, r10
	and	r3, r7
	mov	r0, r4
	bl	Func_1de5c
.L1eab8:
	add	sp, #0x20
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1ea3c

.thumb_func_start Func_1eadc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r10, r1
	mov	r8, r2
	mov	r6, r3
	bl	Func_15e8c
	mov	r5, r0
	cmp	r5, #0
	bne	.L1eb00
	mov	r0, r7
	bl	Func_3f3c
	mov	r0, #0
	b	.L1eb50
.L1eb00:
	mov	r0, r8
	ldrh	r1, [r0, #0xc]
	ldrh	r3, [r0, #0xe]
	ldr	r2, [sp, #0x18]
	lsl	r3, #3
	lsl	r1, #3
	add	r2, r3
	add	r1, r6, r1
	ldr	r3, =0x1ff
	add	r1, #8
	and	r1, r3
	add	r2, #8
	mov	r3, #0xff
	and	r2, r3
	lsl	r3, r1, #16
	orr	r3, r2
	mov	r0, r10
	orr	r3, r0
	ldr	r0, =iwram_1b10
	str	r3, [r5, #0x14]
	lsl	r3, r7, #2
	add	r3, r0
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	str	r3, [r5, #0x18]
	mov	r3, #0xff
	strb	r3, [r5, #0xf]
	mov	r3, #0
	str	r3, [r5]
	mov	r3, #1
	strh	r1, [r5, #6]
	strh	r2, [r5, #8]
	strb	r7, [r5, #0xe]
	strb	r3, [r5, #4]
	strb	r3, [r5, #5]
	mov	r0, r8
	mov	r1, r5
	bl	Func_16584
	mov	r0, r5
.L1eb50:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1eadc

.thumb_func_start Func_1eb64
	push	{r5, r6, lr}
	sub	sp, #4
	mov	r5, r2
	mov	r6, r3
	bl	Func_1bc34
	cmp	r0, #0
	bge	.L1eb78
	mov	r0, #0
	b	.L1eb88
.L1eb78:
	ldr	r3, [sp, #0x10]
	mov	r1, #0x80
	str	r3, [sp]
	lsl	r1, #23
	mov	r2, r5
	mov	r3, r6
	bl	Func_1eadc
.L1eb88:
	add	sp, #4
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_1eb64

.thumb_func_start Func_1eb90
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r10, r3
	bl	Func_4080
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0x60
	beq	.L1ebca
	mov	r1, r7
	mov	r2, r5
	mov	r0, r6
	bl	Func_1a2a4
	ldr	r3, [sp, #0x1c]
	mov	r1, #0x80
	str	r3, [sp]
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	bl	Func_1eadc
.L1ebca:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1eb90

.thumb_func_start Func_1ebd8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r5, r0
	mov	r7, r1
	mov	r8, r2
	mov	r6, r3
	bl	Func_4080
	str	r0, [sp, #8]
	cmp	r0, #0x60
	bne	.L1ebf6
	mov	r0, #0
	b	.L1ec18
.L1ebf6:
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, #1
	mov	r0, r5
	str	r1, [sp]
	bl	Func_19ee4
	mov	r1, #0x80
	mov	r3, r8
	ldr	r0, [sp, #8]
	lsl	r1, #23
	mov	r2, r7
	str	r6, [sp]
	bl	Func_1eadc
	mov	r3, #0xfb
	strb	r3, [r0, #0xf]
.L1ec18:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1ebd8

.thumb_func_start Func_1ec24
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r6, r0
	mov	r8, r1
	mov	r10, r2
	mov	r7, r3
	bl	Func_4080
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0x60
	beq	.L1ec5c
	mov	r1, #0
	mov	r2, r5
	mov	r0, r6
	bl	Func_1a32c
	mov	r1, #0x80
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	Func_1eadc
.L1ec5c:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1ec24

.thumb_func_start Func_1ec6c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r3
	ldr	r3, =iwram_1e8c
	mov	r5, r0
	mov	r0, #0x20
	sub	sp, #0x10
	mov	r10, r1
	mov	r6, r2
	ldr	r7, [r3]
	bl	_Func_79338
	cmp	r0, #0
	beq	.L1ec9a
	cmp	r5, #0
	bne	.L1ec94
	mov	r5, #0x12
.L1ec94:
	cmp	r5, #1
	bne	.L1ec9a
	mov	r5, #0x13
.L1ec9a:
	mov	r0, r5
	bl	Func_19d2c
	mov	r1, #1
	mov	r5, r0
	neg	r1, r1
	mov	r0, #0
	cmp	r5, r1
	beq	.L1ed1c
	cmp	r6, #1
	bls	.L1ecca
	ldr	r2, =0x12ee
	add	r3, r7, r2
	ldrh	r3, [r3]
	ldr	r2, =0x3e7
	mov	r6, #1
	cmp	r3, r2
	beq	.L1ecca
	ldr	r1, =0x12ec
	add	r3, r7, r1
	ldrh	r3, [r3]
	mov	r6, #0
	cmp	r3, r2
	bne	.L1ed1c
.L1ecca:
	mov	r2, #0xe
	add	r2, r6
	mov	r8, r2
	mov	r1, r8
	str	r1, [sp]
	mov	r1, #0
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r1, [sp, #4]
	mov	r0, r5
	mov	r1, r10
	bl	Func_1a4fc
	ldr	r3, [sp, #0x30]
	mov	r1, #0x80
	str	r3, [sp]
	ldr	r0, [sp, #0xc]
	lsl	r1, #24
	mov	r2, r9
	ldr	r3, [sp, #0x2c]
	bl	Func_1eadc
	cmp	r0, #0
	beq	.L1ed0c
	mov	r2, r8
	lsl	r1, r2, #4
	ldrb	r2, [r0, #0x19]
	mov	r3, #0xf
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #0x19]
	mov	r3, #2
	strb	r3, [r0, #4]
.L1ed0c:
	ldr	r1, =0x12ec
	lsl	r3, r6, #1
	add	r2, r3, r1
	strh	r5, [r7, r2]
	ldr	r2, =0x12f0
	add	r3, r2
	ldr	r2, [sp, #0xc]
	strh	r2, [r7, r3]
.L1ed1c:
	add	sp, #0x10
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1ec6c

.thumb_func_start Func_1ed40
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	mov	r6, r0
	mov	r0, #0x20
	sub	sp, #0x10
	mov	r5, r1
	mov	r8, r2
	ldr	r7, [r3]
	bl	_Func_79338
	cmp	r0, #0
	beq	.L1ed68
	cmp	r5, #0
	bne	.L1ed62
	mov	r5, #0x12
.L1ed62:
	cmp	r5, #1
	bne	.L1ed68
	mov	r5, #0x13
.L1ed68:
	mov	r0, r5
	bl	Func_19d2c
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L1edb0
	cmp	r6, #1
	bls	.L1ed92
	ldr	r2, =0x12ee
	add	r3, r7, r2
	ldrh	r3, [r3]
	mov	r6, #1
	cmp	r3, r0
	beq	.L1ed92
	ldr	r2, =0x12ec
	add	r3, r7, r2
	ldrh	r3, [r3]
	cmp	r3, r0
	bne	.L1edb0
	mov	r6, #0
.L1ed92:
	ldr	r2, =0x12f0
	lsl	r3, r6, #1
	add	r3, r2
	mov	r1, r6
	ldrh	r3, [r7, r3]
	add	r1, #0xe
	str	r1, [sp]
	mov	r1, #1
	str	r3, [sp, #0xc]
	str	r1, [sp, #4]
	add	r2, sp, #0xc
	add	r3, sp, #8
	mov	r1, r8
	bl	Func_1a4fc
.L1edb0:
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1ed40

.thumb_func_start Func_1edcc
	push	{lr}
	cmp	r0, #0
	beq	.L1edd8
	mov	r3, #0
	strb	r1, [r0, #5]
	strh	r3, [r0, #0xc]
.L1edd8:
	pop	{r0}
	bx	r0
.func_end Func_1edcc

.thumb_func_start Func_1eddc
	push	{lr}
	cmp	r0, #0
	beq	.L1ede6
	mvn	r3, r1
	strb	r3, [r0, #0xf]
.L1ede6:
	pop	{r0}
	bx	r0
.func_end Func_1eddc

.thumb_func_start Func_1edec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	ldr	r7, [r3]
	sub	sp, #4
	mov	r8, r0
	cmp	r7, #0
	bne	.L1ee24
	mov	r0, sp
	ldr	r3, .L1ee14	@ 0xe0e0
	add	r0, #2
	strh	r3, [r0]
	mov	r1, r8
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x810000a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.L1ee4e

	.align	2, 0
.L1ee14:
	.word	0xe0e0
	.pool

.L1ee24:
	ldr	r5, =0x214
	mov	r0, r5
	bl	Func_4938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_158e8
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r7
	bl	_call_via_r6
	mov	r0, r6
	bl	Func_2df0
.L1ee4e:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1edec

.thumb_func_start Func_1ee68
	push	{r5, r6, lr}
	mov	r5, r3
	mov	r4, #0
	ldr	r6, [sp, #0xc]
	ldr	r0, =0x6002000
	cmp	r4, r5
	bcs	.L1ee94
	mov	r3, #0x20
	sub	r3, r2
	lsl	r3, #1
.L1ee7c:
	mov	r1, #0
	cmp	r1, r2
	bcs	.L1ee8c
.L1ee82:
	add	r1, #1
	strh	r6, [r0]
	add	r0, #2
	cmp	r1, r2
	bcc	.L1ee82
.L1ee8c:
	add	r4, #1
	add	r0, r3
	cmp	r4, r5
	bcc	.L1ee7c
.L1ee94:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_1ee68

.thumb_func_start Func_1eea0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e90
	ldr	r5, [r3]
	sub	r3, #4
	ldr	r3, [r3]
	ldr	r2, =0xea5
	add	r3, r2
	ldrb	r3, [r3]
	mov	r6, r0
	mov	r7, #4
	cmp	r3, #0
	beq	.L1eec2
	mov	r0, #0
	bl	_Func_b6a60
	mov	r7, #3
	b	.L1eec6
.L1eec2:
	bl	_Func_795fc
.L1eec6:
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L1eed2
	add	r7, #1
	b	.L1eed8
.L1eed2:
	mov	r3, #3
	neg	r3, r3
	and	r6, r3
.L1eed8:
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r0, r3, #1
	mov	r3, #2
	and	r3, r6
	add	r1, r0, #1
	cmp	r3, #0
	beq	.L1eeea
	add	r1, r0, #6
.L1eeea:
	mov	r3, #0x1e
	sub	r3, r1
	mov	r2, #0
	strh	r3, [r5, #4]
	strh	r2, [r5, #6]
	strh	r1, [r5, #8]
	strh	r7, [r5, #0xa]
	strh	r6, [r5, #0xc]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1eea0

.thumb_func_start Func_1ef08
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r0
	mov	r1, #0x10
	mov	r0, #0x10
	sub	sp, #4
	bl	Func_48f4
	ldr	r3, =iwram_1e8c
	ldr	r6, [r3]
	ldr	r3, =0xea6
	add	r6, r3
	mov	r3, #0
	mov	r10, r3
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r6]
	mov	r0, r8
	bl	Func_1eea0
	ldrh	r3, [r5, #0xa]
	ldrh	r1, [r5, #6]
	ldrh	r2, [r5, #8]
	mov	r4, #6
	ldrh	r0, [r5, #4]
	str	r4, [sp]
	bl	Func_162d4
	str	r0, [r5]
	mov	r0, r8
	bl	Func_1f200
	mov	r3, r10
	strb	r3, [r6]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_1ef08

.thumb_func_start Func_1ef68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r6, r0
	sub	sp, #4
	mov	r9, r3
	mov	r3, #0
	str	r3, [sp]
	ldrh	r3, [r6, #8]
	sub	r3, #1
	mov	r2, #1
	mov	r11, r3
	mov	r3, r1
	and	r3, r2
	ldrh	r7, [r6, #0xa]
	cmp	r3, #0
	bne	.L1ef9c
	mov	r3, #3
	neg	r3, r3
	and	r1, r3
.L1ef9c:
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	beq	.L1efaa
	mov	r2, #5
	str	r2, [sp]
	mov	r2, #0
.L1efaa:
	ldr	r1, =.L371c4
	mov	r5, r2
	b	.L1f012
.L1efb0:
	ldrsb	r3, [r2, r5]
	ldr	r2, [sp]
	add	r0, r3, r2
	cmp	r0, r11
	bcs	.L1f010
	mov	r4, #0
	cmp	r7, #0
	beq	.L1f010
	ldr	r3, =0xf018
	sub	r2, r7, #1
	mov	r12, r2
	ldr	r2, =0xf00f
	mov	r10, r3
	add	r3, #1
	mov	r8, r3
	mov	r14, r2
.L1efd0:
	ldrh	r2, [r6, #0xe]
	ldrh	r3, [r6, #0xc]
	add	r2, r4
	add	r3, r0
	lsl	r2, #5
	add	r2, r3
	lsl	r2, #1
	mov	r3, r9
	add	r1, r2, r3
	cmp	r4, #0
	bne	.L1efea
	mov	r2, r10
	b	.L1f006
.L1efea:
	cmp	r4, r12
	bne	.L1f004
	mov	r3, r8
	strh	r3, [r1]
	b	.L1f008

	.pool_aligned

.L1f004:
	mov	r2, r14
.L1f006:
	strh	r2, [r1]
.L1f008:
	add	r4, #1
	cmp	r4, r7
	bne	.L1efd0
	ldr	r1, =.L371c4
.L1f010:
	add	r5, #1
.L1f012:
	mov	r2, r1
	ldrsb	r3, [r2, r5]
	cmp	r3, #0
	bge	.L1efb0
	ldr	r3, =0xea5
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f054
	ldrh	r3, [r6, #0xa]
	ldrh	r2, [r6, #0xe]
	add	r2, r3
	ldrh	r3, [r6, #0xc]
	lsl	r2, #6
	lsl	r3, #1
	add	r2, r9
	add	r2, r3
	mov	r1, r2
	ldr	r3, .L1f060	@ 0xf080
	sub	r1, #0x40
	mov	r0, #1
	strh	r3, [r1]
	add	r1, #2
	cmp	r0, r11
	bcs	.L1f050
	ldr	r3, .L1f064	@ 0xf081
.L1f046:
	add	r0, #1
	strh	r3, [r1]
	add	r1, #2
	cmp	r0, r11
	bcc	.L1f046
.L1f050:
	ldr	r3, .L1f068	@ 0xf082
	strh	r3, [r1]
.L1f054:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r9
	strb	r3, [r2]
	add	sp, #4
	b	.L1f078

	.align	2, 0
.L1f060:
	.word	0xf080
.L1f064:
	.word	0xf081
.L1f068:
	.word	0xf082
	.pool

.L1f078:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1ef68

.thumb_func_start Func_1f088
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r1, [sp, #0x10]
	mov	r9, r3
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r6, r0
	ldr	r1, =0xea5
	mov	r0, r9
	str	r3, [sp, #8]
	str	r0, [sp, #4]
	add	r3, r1
	ldrb	r3, [r3]
	mov	r5, r2
	cmp	r3, #0
	bne	.L1f0ca
	bl	Func_45e8
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x50001e8
	ldr	r2, =0x50001dc
	ldrh	r3, [r3]
	strh	r3, [r2]
.L1f0ca:
	ldrh	r3, [r6, #0xc]
	ldr	r2, [sp, #0x10]
	add	r2, r3
	str	r2, [sp, #0x10]
	ldrh	r3, [r6, #0xe]
	add	r5, r3
	lsl	r5, #5
	mov	r3, #4
	str	r5, [sp]
	str	r3, [sp, #0xc]
.L1f0de:
	ldr	r0, [sp]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #8]
	add	r3, r0, r1
	lsl	r3, #1
	ldrh	r3, [r2, r3]
	mov	r10, r3
	ldr	r3, =0x22222222
	mov	r8, r3
	ldr	r3, =0x3ff
	mov	r1, r10
	ldr	r0, =0xcccccccc
	and	r1, r3
	mov	r2, r9
	mov	r12, r0
	mov	r10, r1
	cmp	r2, #7
	ble	.L1f10a
	ldr	r3, =0x88888888
	ldr	r0, =0xdddddddd
	mov	r8, r3
	b	.L1f134
.L1f10a:
	mov	r1, r9
	cmp	r1, #0
	blt	.L1f136
	lsl	r1, #2
	mov	r2, r8
	lsl	r2, r1
	mov	r8, r2
	ldr	r3, =0x88888888
	mov	r2, #0x20
	sub	r2, r1
	lsr	r3, r2
	mov	r0, r8
	orr	r0, r3
	mov	r3, r12
	lsl	r3, r1
	mov	r12, r3
	ldr	r3, =0xdddddddd
	mov	r8, r0
	lsr	r3, r2
	mov	r0, r12
	orr	r0, r3
.L1f134:
	mov	r12, r0
.L1f136:
	ldr	r2, =0x600001c
	mov	r1, #0
	mov	r14, r1
	mov	r11, r2
	mov	r7, #0
	b	.L1f190
.L1f142:
	mov	r3, r10
	lsl	r6, r3, #5
	mov	r0, r11
	sub	r3, r6, r7
	ldr	r4, [r3, r0]
	mov	r1, #0
	mov	r0, #0
	mov	r5, #0xf
.L1f152:
	mov	r2, r4
	and	r2, r5
	cmp	r2, #0xe
	bne	.L1f164
	lsl	r2, r1, #2
	mov	r3, r5
	lsl	r3, r2
	mov	r2, r8
	b	.L1f170
.L1f164:
	cmp	r2, #1
	bne	.L1f176
	lsl	r2, r1, #2
	mov	r3, r5
	lsl	r3, r2
	mov	r2, r12
.L1f170:
	and	r3, r2
	orr	r0, r3
	b	.L1f17c
.L1f176:
	lsl	r3, r1, #2
	lsl	r2, r3
	orr	r0, r2
.L1f17c:
	add	r1, #1
	lsr	r4, #4
	cmp	r1, #7
	ble	.L1f152
	sub	r3, r6, r7
	mov	r1, r11
	mov	r2, #1
	str	r0, [r3, r1]
	add	r7, #4
	add	r14, r2
.L1f190:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L1f19e
	mov	r0, r14
	cmp	r0, #2
	ble	.L1f142
	b	.L1f1a4
.L1f19e:
	mov	r1, r14
	cmp	r1, #0
	ble	.L1f142
.L1f1a4:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x10]
	mov	r2, #8
	neg	r2, r2
	sub	r3, #1
	add	r0, #1
	add	r9, r2
	str	r3, [sp, #0xc]
	str	r0, [sp, #0x10]
	cmp	r3, #0
	bge	.L1f0de
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1f088

.thumb_func_start Func_1f200
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e90
	ldr	r6, [r3]
	mov	r2, r3
	sub	r3, #4
	ldr	r3, [r3]
	sub	sp, #0x34
	sub	r2, #0x1c
	mov	r5, #0
	ldr	r1, =0xea5
	ldr	r7, [r2]
	mov	r11, r0
	ldr	r0, [r6]
	str	r3, [sp, #0x20]
	str	r5, [sp, #0x18]
	add	r3, r1
	ldrb	r3, [r3]
	mov	r8, r0
	cmp	r3, #0
	beq	.L1f288
	mov	r0, #0
	bl	_Func_b6a60
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	mov	r10, r3
	str	r0, [sp, #0x1c]
	str	r2, [sp, #0x18]
	cmp	r10, r0
	bcs	.L1f2d8
	mov	r4, sp
	add	r4, #0x28
	str	r4, [sp, #0x10]
	mov	r3, #0x58
	ldrh	r3, [r7, r3]
	mov	r0, r4
	mov	r1, #0xff
	strh	r3, [r0]
	lsl	r1, #16
	lsl	r3, #16
	cmp	r3, r1
	beq	.L1f2d8
	mov	r2, r7
	ldr	r0, [sp, #0x10]
	add	r2, #0x58
	mov	r1, #0
.L1f26a:
	mov	r3, #1
	ldr	r4, [sp, #0x1c]
	add	r10, r3
	add	r1, #2
	cmp	r10, r4
	bcs	.L1f2d8
	add	r2, #2
	ldrh	r3, [r2]
	mov	r4, #0xff
	strh	r3, [r1, r0]
	lsl	r4, #16
	lsl	r3, #16
	cmp	r3, r4
	bne	.L1f26a
	b	.L1f2d8
.L1f288:
	bl	_Func_795fc
	str	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x1c]
	mov	r0, #0
	mov	r10, r0
	cmp	r10, r1
	bcs	.L1f2c8
	mov	r2, sp
	ldr	r3, =ewram_240
	mov	r4, #0xfc
	add	r2, #0x28
	lsl	r4, #1
	str	r2, [sp, #0x10]
	mov	r1, r2
	add	r2, r3, r4
.L1f2a8:
	ldrb	r3, [r2]
	strh	r3, [r1]
	mov	r0, #1
	ldr	r3, [sp, #0x1c]
	add	r10, r0
	add	r2, #1
	add	r1, #2
	cmp	r10, r3
	bcc	.L1f2a8
	b	.L1f2ce

	.pool_aligned

.L1f2c8:
	mov	r4, sp
	add	r4, #0x28
	str	r4, [sp, #0x10]
.L1f2ce:
	mov	r0, r10
	ldr	r3, =0xff
	ldr	r1, [sp, #0x10]
	lsl	r2, r0, #1
	strh	r3, [r1, r2]
.L1f2d8:
	mov	r3, #1
	mov	r2, r10
	neg	r3, r3
	str	r2, [sp, #0x1c]
	cmp	r11, r3
	bne	.L1f2e8
	ldrh	r4, [r6, #0xc]
	mov	r11, r4
.L1f2e8:
	mov	r3, #1
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	bne	.L1f2fa
	mov	r3, #3
	neg	r3, r3
	and	r0, r3
	mov	r11, r0
.L1f2fa:
	ldr	r1, [sp, #0x20]
	ldr	r2, =0xea5
	add	r3, r1, r2
	ldrb	r3, [r3]
	b	.L1f30c

	.pool_aligned

.L1f30c:
	cmp	r3, #0
	beq	.L1f31c
	mov	r0, #0
	mov	r1, #0
	bl	_Func_be0b4
	cmp	r0, #0
	bne	.L1f326
.L1f31c:
	mov	r3, #3
	mov	r4, r11
	neg	r3, r3
	and	r4, r3
	mov	r11, r4
.L1f326:
	mov	r0, r11
	cmp	r0, #9
	bne	.L1f33a
	ldrh	r0, [r6, #4]
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	bl	Func_16178
	b	.L1f5a6
.L1f33a:
	ldr	r1, [sp, #0x20]
	ldr	r2, =0xea6
	add	r3, r1, r2
	mov	r2, #1
	strb	r2, [r3]
	ldrh	r3, [r6, #0xc]
	cmp	r3, r11
	bne	.L1f35a
	mov	r0, r8
	bl	Func_16498
	mov	r0, r8
	mov	r1, r11
	bl	Func_1ef68
	b	.L1f392
.L1f35a:
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	ldrh	r0, [r6, #4]
	bl	Func_16178
	mov	r0, r11
	bl	Func_1eea0
	ldrh	r3, [r6, #8]
	mov	r4, r8
	strh	r3, [r4, #8]
	ldrh	r3, [r6, #0xa]
	mov	r0, r8
	strh	r3, [r0, #0xa]
	ldrh	r3, [r6, #4]
	mov	r1, r8
	strh	r3, [r1, #0xc]
	ldrh	r0, [r6, #4]
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	bl	Func_170f8
	mov	r0, r8
	mov	r1, r11
	bl	Func_1ef68
.L1f392:
	mov	r3, #2
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0
	beq	.L1f39e
	mov	r5, #5
.L1f39e:
	ldr	r4, [sp, #0x1c]
	mov	r3, #0
	mov	r10, r3
	cmp	r4, #0
	bne	.L1f3aa
	b	.L1f4ea
.L1f3aa:
	ldr	r1, [sp, #0x18]
	mov	r0, sp
	lsl	r1, #3
	add	r2, r5, #1
	add	r0, #0x28
	lsl	r5, #3
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r1, [sp, #0x14]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	mov	r9, r5
.L1f3c2:
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #0x10]
	ldrh	r0, [r3, r4]
	bl	_Func_77394
	mov	r5, r0
	mov	r0, #0x38
	ldrsh	r7, [r5, r0]
	mov	r1, #0x34
	ldrsh	r3, [r5, r1]
	cmp	r7, #0
	bne	.L1f3e2
	mov	r0, #2
	bl	Func_1e71c
	b	.L1f3fc
.L1f3e2:
	cmp	r3, #0
	bge	.L1f3e8
	add	r3, #3
.L1f3e8:
	asr	r3, #2
	cmp	r7, r3
	bgt	.L1f3f6
	mov	r0, #4
	bl	Func_1e71c
	b	.L1f3fc
.L1f3f6:
	mov	r0, #0xf
	bl	Func_1e71c
.L1f3fc:
	ldr	r2, [sp, #0x20]
	ldr	r3, =0xea7
	add	r6, r2, r3
	mov	r3, #0xe
	strb	r3, [r6]
	ldr	r4, [sp, #0x20]
	ldr	r0, =0xea5
	add	r3, r4, r0
	ldrb	r3, [r3]
	mov	r2, #0
	cmp	r3, #0
	beq	.L1f418
	mov	r3, #5
	strb	r3, [r6]
.L1f418:
	ldr	r3, [sp, #0x14]
	str	r2, [sp]
	mov	r1, r8
	mov	r2, r9
	add	r3, #8
	mov	r0, r7
	bl	Func_1ea3c
	mov	r3, #0xf
	strb	r3, [r6]
	mov	r1, r8
	mov	r2, r9
	mov	r0, r5
	ldr	r3, [sp, #0x14]
	bl	Func_1e8b0
	mov	r0, #0xf
	bl	Func_1e71c
	mov	r2, #0x34
	ldrsh	r1, [r5, r2]
	cmp	r1, #0
	beq	.L1f46c
	mov	r3, #0x38
	ldrsh	r6, [r5, r3]
	lsl	r0, r6, #2
	add	r0, r6
	lsl	r0, #3
	bl	Func_af0_from_thumb
	mov	r3, r0
	cmp	r3, #0
	bne	.L1f460
	cmp	r6, #0
	beq	.L1f460
	mov	r3, #1
.L1f460:
	ldr	r2, [sp, #0x18]
	mov	r0, r8
	ldr	r1, [sp, #8]
	add	r2, #2
	bl	Func_1f088
.L1f46c:
	mov	r1, #1
	mov	r3, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L1f4ce
	ldr	r4, [sp, #0x20]
	ldr	r0, =0xea7
	mov	r3, #0xe
	add	r2, r4, r0
	strb	r3, [r2]
	sub	r0, #2
	add	r3, r4, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f48e
	mov	r3, #5
	strb	r3, [r2]
.L1f48e:
	ldr	r3, [sp, #0xc]
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	add	r3, #0x10
	str	r1, [sp]
	mov	r2, r9
	mov	r1, r8
	bl	Func_1ea3c
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	cmp	r1, #0
	beq	.L1f4ce
	mov	r4, #0x3a
	ldrsh	r6, [r5, r4]
	lsl	r0, r6, #2
	add	r0, r6
	lsl	r0, #3
	bl	Func_af0_from_thumb
	mov	r3, r0
	cmp	r3, #0
	bne	.L1f4c2
	cmp	r6, #0
	beq	.L1f4c2
	mov	r3, #1
.L1f4c2:
	ldr	r2, [sp, #0x18]
	mov	r0, r8
	ldr	r1, [sp, #8]
	add	r2, #3
	bl	Func_1f088
.L1f4ce:
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #4]
	mov	r3, #1
	ldr	r4, [sp, #0x1c]
	add	r0, #6
	mov	r1, #0x30
	add	r2, #2
	add	r10, r3
	str	r0, [sp, #8]
	add	r9, r1
	str	r2, [sp, #4]
	cmp	r10, r4
	beq	.L1f4ea
	b	.L1f3c2
.L1f4ea:
	ldr	r0, [sp, #0x20]
	ldr	r1, =0xea7
	mov	r3, #0
	add	r2, r0, r1
	mov	r10, r3
	ldr	r4, =0xea5
	mov	r3, #0xf
	strb	r3, [r2]
	add	r3, r0, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f59c
	mov	r3, #2
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	beq	.L1f59c
	mov	r3, #1
	and	r3, r0
	ldr	r7, [sp, #0x18]
	cmp	r3, #0
	beq	.L1f518
	add	r7, #1
.L1f518:
	add	r6, sp, #0x24
	mov	r1, r6
	mov	r0, #0
	bl	_Func_be0b4
	mov	r2, r10
	str	r2, [sp]
	ldr	r1, =0x5001
	mov	r0, r8
	mov	r2, #0
	mov	r3, r7
	bl	Func_19000
	mov	r3, r10
	str	r3, [sp]
	ldr	r1, =0x5002
	mov	r0, r8
	mov	r2, #2
	mov	r3, r7
	bl	Func_19000
	add	r5, r7, #1
	mov	r4, r10
	ldr	r1, =0x5003
	mov	r0, r8
	mov	r2, #0
	mov	r3, r5
	str	r4, [sp]
	bl	Func_19000
	mov	r0, r10
	str	r0, [sp]
	ldr	r1, =0x5004
	mov	r0, r8
	mov	r2, #2
	mov	r3, r5
	bl	Func_19000
	ldrb	r1, [r6]
	mov	r2, #1
	add	r1, #0x30
	mov	r3, r7
	mov	r0, r8
	bl	Func_18efc
	ldrb	r1, [r6, #1]
	mov	r2, #3
	add	r1, #0x30
	mov	r3, r7
	mov	r0, r8
	bl	Func_18efc
	ldrb	r1, [r6, #2]
	mov	r2, #1
	add	r1, #0x30
	mov	r3, r5
	mov	r0, r8
	bl	Func_18efc
	ldrb	r1, [r6, #3]
	mov	r0, r8
	add	r1, #0x30
	mov	r2, #3
	mov	r3, r5
	bl	Func_18efc
.L1f59c:
	ldr	r1, [sp, #0x20]
	ldr	r3, =0xea6
	add	r2, r1, r3
	mov	r3, #0
	strb	r3, [r2]
.L1f5a6:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1f200

.thumb_func_start Func_1f5d4
	push	{lr}
	ldr	r3, =iwram_1e90
	ldr	r3, [r3]
	mov	r1, #1
	ldr	r0, [r3]
	bl	Func_16418
	mov	r0, #0x10
	bl	Func_2dd8
	pop	{r0}
	bx	r0
.func_end Func_1f5d4

.thumb_func_start Func_1f5f0
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r12, r3
	ldrh	r3, [r0, #0xc]
	add	r3, r1, r3
	add	r1, r3, #1
	ldrh	r3, [r0, #0xe]
	ldr	r7, [sp, #0x14]
	add	r3, r2, r3
	add	r2, r3, #1
	mov	r3, #1
	and	r7, r3
	ldr	r5, [sp, #0x10]
	lsl	r7, #12
	cmp	r1, #0
	bge	.L1f618
	add	r6, r1
	mov	r1, #0
.L1f618:
	add	r3, r1, r6
	cmp	r3, #0x1d
	ble	.L1f622
	mov	r3, #0x1e
	sub	r6, r3, r1
.L1f622:
	cmp	r2, #0
	bge	.L1f62a
	add	r5, r2
	mov	r2, #0
.L1f62a:
	add	r3, r2, r5
	cmp	r3, #0x1d
	ble	.L1f634
	mov	r3, #0x14
	sub	r5, r3, r2
.L1f634:
	cmp	r6, #0
	ble	.L1f66e
	cmp	r5, #0
	ble	.L1f66e
	lsl	r2, #6
	lsl	r3, r1, #1
	add	r1, r2, r3
.L1f642:
	mov	r3, r12
	mov	r0, r6
	add	r4, r1, r3
	cmp	r0, #0
	beq	.L1f65e
	ldr	r2, =0xffffefff
.L1f64e:
	ldrh	r3, [r4]
	and	r3, r2
	orr	r3, r7
	sub	r0, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r0, #0
	bne	.L1f64e
.L1f65e:
	sub	r5, #1
	add	r1, #0x40
	cmp	r5, #0
	bne	.L1f642
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r12
	strb	r3, [r2]
.L1f66e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1f5f0

.thumb_func_start Func_1f680
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r1, #0xe1
	lsl	r1, #4
	sub	sp, #0x40
	bl	Func_b60_from_thumb
	ldr	r3, =0xea5f
	mov	r6, r0
	cmp	r6, r3
	bls	.L1f69c
	mov	r6, r3
.L1f69c:
	mov	r0, r6
	mov	r1, #0x3c
	bl	Func_b60_from_thumb
	mov	r1, #0x3c
	mov	r5, r0
	mov	r0, r6
	bl	Func_b50_from_thumb
	mov	r8, sp
	mov	r1, r5
	mov	r6, r0
	mov	r2, #3
	mov	r0, r8
	bl	Func_17dd4
	ldrb	r3, [r0]
	strb	r3, [r7]
	add	r0, #1
	ldrb	r3, [r0]
	add	r5, r7, #1
	strb	r3, [r5]
	ldrb	r3, [r0, #1]
	add	r5, #1
	strb	r3, [r5]
	add	r6, #0x64
	mov	r3, #0x3a
	add	r5, #1
	strb	r3, [r5]
	mov	r0, r8
	mov	r1, r6
	mov	r2, #2
	bl	Func_17dd4
	ldrb	r3, [r0]
	add	r5, #1
	strb	r3, [r5]
	ldrb	r3, [r0, #1]
	add	r5, #1
	strb	r3, [r5]
	mov	r3, #0
	mov	r0, r7
	strb	r3, [r5, #1]
	add	sp, #0x40
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1f680

.thumb_func_start Func_1f704
	push	{lr}
	ldr	r3, =iwram_1f1c
	mov	r1, #0x82
	ldr	r3, [r3]
	lsl	r1, #5
	add	r2, r3, r1
	mov	r0, #0
.L1f712:
	ldrb	r3, [r2, #0x1c]
	cmp	r3, #0
	beq	.L1f722
	add	r0, #1
	add	r2, #0x40
	cmp	r0, #2
	bls	.L1f712
	ldr	r0, =0x3e7
.L1f722:
	pop	{r1}
	bx	r1
.func_end Func_1f704

.thumb_func_start Func_1f730
	push	{r5, r6, lr}
	mov	r6, r0
	bl	Func_56cc
	mov	r5, #9
	neg	r5, r5
	cmp	r0, #0
	bne	.L1f766
	bl	Func_5c68
	mov	r5, r0
	cmp	r6, #0
	beq	.L1f766
	ldr	r3, =iwram_1f1c
	ldr	r1, =0x1071
	ldr	r3, [r3]
	add	r2, r3, r1
	mov	r1, #2
.L1f754:
	ldrb	r3, [r2]
	lsl	r3, #24
	add	r2, #0x40
	cmp	r3, #0
	beq	.L1f760
	sub	r5, #1
.L1f760:
	sub	r1, #1
	cmp	r1, #0
	bge	.L1f754
.L1f766:
	bl	Func_5cf8
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_1f730

.thumb_func_start Func_1f77c
	push	{r5, r6, r7, lr}
	bl	Func_56cc
	mov	r6, #9
	mov	r5, #0
	neg	r6, r6
	cmp	r0, #0
	bne	.L1f7f6
	bl	Func_5c68
	ldr	r3, =iwram_1f1c
	ldr	r1, [r3]
	ldr	r3, =ewram_2010
	ldr	r2, =ewram_200c
	strh	r5, [r3]
	mov	r7, r3
	ldr	r3, =0x1070
	strh	r5, [r2]
	ldr	r4, .L1f7d0	@ 1
	mov	r6, r0
	add	r1, r3
	mov	r0, #2
.L1f7a8:
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L1f7b4
	strh	r4, [r7]
	add	r5, #1
.L1f7b4:
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L1f7be
	strh	r4, [r2]
.L1f7be:
	sub	r0, #1
	add	r1, #0x40
	cmp	r0, #0
	bge	.L1f7a8
	ldr	r3, =iwram_1ae8
	mov	r2, #0x90
	ldr	r3, [r3]
	b	.L1f7e8

	.align	2, 0
.L1f7d0:
	.word	1
	.pool

.L1f7e8:
	lsl	r2, #1
	and	r3, r2
	cmp	r3, r2
	beq	.L1f7f6
	ldr	r2, =ewram_2010
	ldr	r3, .L1f808	@ 0
	strh	r3, [r2]
.L1f7f6:
	bl	Func_5cf8
	cmp	r6, #0
	beq	.L1f810
	cmp	r5, r6
	bne	.L1f810
	mov	r0, r6
	add	r0, #0x64
	b	.L1f812

	.align	2, 0
.L1f808:
	.word	0
	.pool

.L1f810:
	mov	r0, r6
.L1f812:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1f77c

.thumb_func_start Func_1f818
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	ldr	r5, =ewram_0
	sub	sp, #0x1c
	mov	r8, r0
	bl	_Func_77cb8
	ldr	r2, =ewram_240
	ldr	r3, =iwram_1c9c
	str	r0, [r2]
	mov	r0, #0x80
	ldr	r1, [r3]
	ldr	r3, =ewram_1000
	lsl	r0, #1
	add	r3, r0
	str	r1, [r2, #4]
	str	r1, [r3]
	ldr	r3, =iwram_1d08
	ldr	r0, =0x22a
	ldrb	r1, [r3]
	add	r3, r2, r0
	strb	r1, [r3]
	mov	r1, #0xfa
	lsl	r1, #1
	add	r2, r1
	ldr	r0, [r2]
	bl	_Func_77394
	mov	r7, r5
	mov	r6, r0
	mov	r1, r5
	sub	r7, #0x10
	mov	r2, r6
	mov	r5, #0xb
.L1f860:
	ldrb	r3, [r2]
	sub	r5, #1
	strb	r3, [r1]
	add	r2, #1
	add	r1, #1
	cmp	r5, #0
	bge	.L1f860
	ldrb	r3, [r6, #0xf]
	ldr	r5, =ewram_240
	strb	r3, [r7, #0x1c]
	ldr	r3, [r5, #4]
	mov	r2, #0xe0
	str	r3, [r7, #0x20]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #2
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_Func_8b158
	strh	r0, [r7, #0x1e]
	ldr	r0, =0x129
	add	r3, r6, r0
	ldrb	r3, [r3]
	strb	r3, [r7, #0x1d]
	ldr	r3, [r5, #0x10]
	mov	r0, #0
	str	r3, [r7, #0x24]
	bl	_Func_7a5bc
	mov	r3, r7
	add	r3, #0x28
	strb	r0, [r3]
	mov	r0, #1
	bl	_Func_7a5bc
	mov	r3, r7
	add	r3, #0x29
	strb	r0, [r3]
	mov	r0, #2
	bl	_Func_7a5bc
	mov	r3, r7
	add	r3, #0x2a
	strb	r0, [r3]
	mov	r0, #3
	bl	_Func_7a5bc
	mov	r3, r7
	add	r3, #0x2b
	mov	r6, sp
	strb	r0, [r3]
	mov	r5, #0
	mov	r0, r6
	bl	_Func_796c4
	ldrh	r3, [r6, r5]
	cmp	r3, #0xff
	beq	.L1f8f8
	mov	r1, r7
	mov	r0, r6
	add	r1, #0x2c
	mov	r2, #0
.L1f8e4:
	ldrh	r3, [r2, r0]
	add	r5, #1
	strb	r3, [r1]
	add	r2, #2
	add	r1, #1
	cmp	r5, #3
	bgt	.L1f8f8
	ldrh	r3, [r2, r6]
	cmp	r3, #0xff
	bne	.L1f8e4
.L1f8f8:
	mov	r1, #1
	mov	r2, r5
	neg	r1, r1
	mov	r3, r1
	add	r2, #0x2c
	strb	r3, [r7, r2]
	ldr	r0, =0x205
	ldr	r2, =ewram_240
	add	r3, r2, r0
	ldrb	r1, [r3]
	mov	r3, r7
	add	r3, #0x34
	strb	r1, [r3]
	ldr	r1, =0x206
	add	r3, r2, r1
	ldrb	r3, [r3]
	mov	r1, r7
	add	r1, #0x35
	strb	r3, [r1]
	ldr	r3, =0x20f
	add	r2, r3
	ldrb	r3, [r2]
	mov	r2, r7
	add	r2, #0x31
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x32
	mov	r0, #0
	strb	r0, [r3]
	mov	r5, #0x30
	mov	r6, r3
.L1f936:
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	beq	.L1f946
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
.L1f946:
	add	r5, #1
	cmp	r5, #0x7f
	ble	.L1f936
	mov	r0, #0x20
	bl	_Func_79338
	neg	r3, r0
	orr	r3, r0
	mov	r2, r7
	lsr	r3, #31
	add	r2, #0x33
	strb	r3, [r2]
	ldr	r3, =ewram_240
	mov	r1, #0xf2
	ldr	r3, [r3]
	ldr	r2, =ewram_40
	mov	r5, #0
	lsl	r1, #2
	strh	r3, [r7, #0x36]
	b	.L1f974
.L1f96e:
	ldmia	r2!, {r3}
	add	r5, #1
	add	r8, r3
.L1f974:
	cmp	r5, r1
	blt	.L1f96e
	mov	r0, r8
	str	r0, [r7, #0x3c]
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1f818

.thumb_func_start Func_1f9b4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, =ewram_2004
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1fa20
	bl	Func_56cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1f9e2
	ldr	r0, =0xa
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #9
	b	.L1fa16
.L1f9e2:
	bl	Func_1f818
	ldr	r5, =ewram_0
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r1, r5
	bl	Func_5920
	mov	r6, r0
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	add	r0, #3
	mov	r1, r5
	bl	Func_5920
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fa1a
	ldr	r0, =0xb
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #3
.L1fa16:
	neg	r3, r3
	mov	r8, r3
.L1fa1a:
	bl	Func_5cf8
	mov	r0, r8
.L1fa20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1f9b4

.thumb_func_start Func_1fa3c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r7, r0
	mov	r8, r3
	bl	Func_56cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1fa5e
	ldr	r0, =0xa
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #9
	b	.L1fa88
.L1fa5e:
	ldr	r5, =ewram_0
	mov	r0, r7
	mov	r1, r5
	bl	Func_5920
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	mov	r6, r0
	mov	r1, r5
	add	r0, r7, #3
	bl	Func_5920
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fa8c
	ldr	r0, =0xb
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #3
.L1fa88:
	neg	r3, r3
	mov	r8, r3
.L1fa8c:
	bl	Func_5cf8
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1fa3c

.thumb_func_start Func_1faa8
	push	{r5, r6, r7, lr}
	mov	r0, #0x80
	lsl	r0, #5
	bl	Func_4970
	ldr	r6, =ewram_2004
	mov	r5, r0
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r3, #1
	neg	r3, r3
	mov	r7, #0
	cmp	r0, r3
	beq	.L1fb28
	bl	Func_56cc
	cmp	r0, #0
	beq	.L1fad8
	ldr	r0, =0xa
	mov	r1, #1
	mov	r7, #9
	bl	Func_1776c
	b	.L1fb1a
.L1fad8:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r1, r5
	bl	Func_5a78
	cmp	r0, #0
	beq	.L1faf2
	ldr	r0, =0xb
	mov	r1, #1
	bl	Func_1776c
	mov	r7, #2
	neg	r7, r7
.L1faf2:
	ldr	r1, =ewram_4e4
	ldr	r3, =ewram_0
	add	r0, r5, r1
	sub	r0, r3
	mov	r2, #0x10
	ldr	r3, =Func_1af8
	bl	_call_via_r3
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r1, r5
	bl	Func_5920
	cmp	r0, #0
	beq	.L1fb1c
	ldr	r0, =0xb
	mov	r1, #1
	bl	Func_1776c
	mov	r7, #3
.L1fb1a:
	neg	r7, r7
.L1fb1c:
	bl	Func_5cf8
	mov	r0, r5
	bl	Func_2df0
	mov	r0, r7
.L1fb28:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1faa8

.thumb_func_start Func_1fb48
	push	{r5, lr}
	mov	r1, #8
	mov	r2, #0xc
	mov	r3, #2
	ldr	r0, =0x14
	bl	Func_17658
	b	.L1fb5e
.L1fb58:
	mov	r0, #1
	bl	Func_30f8
.L1fb5e:
	bl	Func_17364
	cmp	r0, #0
	beq	.L1fb58
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	bl	Func_28df4
	cmp	r0, #0
	beq	.L1fb7c
	bl	Func_19a54
	b	.L1fb98
.L1fb7c:
	bl	Func_19a54
	mov	r0, #0x55
	bl	_Func_f9080
	bl	Func_1faa8
	mov	r5, r0
	cmp	r5, #0
	blt	.L1fb98
	ldr	r0, =0x17
	mov	r1, #1
	bl	Func_1776c
.L1fb98:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_1fb48

.thumb_func_start Func_1fba8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0
	mov	r8, r3
	bl	Func_56cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1fbca
	ldr	r0, =0xa
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #9
	b	.L1fc4c
.L1fbca:
	bl	Func_5c68
	mov	r0, #0
	mov	r1, #2
	bl	Func_20244
	mov	r3, #1
	mov	r5, r0
	neg	r3, r3
	cmp	r5, r3
	bne	.L1fbe4
	mov	r8, r5
	b	.L1fc5a
.L1fbe4:
	ldr	r7, =ewram_0
	mov	r0, r5
	mov	r1, r7
	bl	Func_5a78
	mov	r3, #0x80
	lsl	r3, #5
	add	r3, r7
	mov	r10, r3
	mov	r6, r0
	mov	r1, r10
	add	r0, r5, #3
	bl	Func_5a78
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fc12
	ldr	r0, =0xc
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #2
	b	.L1fc4c
.L1fc12:
	bl	Func_1f704
	ldr	r3, =0x3e7
	mov	r5, r0
	cmp	r5, r3
	bne	.L1fc2a
	ldr	r0, =0xd
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #5
	b	.L1fc4c
.L1fc2a:
	mov	r1, r7
	mov	r0, r5
	bl	Func_5920
	mov	r1, r10
	mov	r6, r0
	add	r0, r5, #3
	bl	Func_5920
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fc52
	ldr	r0, =0xd
	mov	r1, #1
	bl	Func_1776c
	mov	r3, #3
.L1fc4c:
	neg	r3, r3
	mov	r8, r3
	b	.L1fc5a
.L1fc52:
	ldr	r0, =0x19
	mov	r1, #1
	bl	Func_1776c
.L1fc5a:
	bl	Func_5cf8
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1fba8

.thumb_func_start Func_1fc84
	push	{r5, r6, r7, lr}
	bl	Func_56cc
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.L1fc9e
	ldr	r0, =0xa
	mov	r1, #1
	bl	Func_1776c
	sub	r7, #9
	b	.L1fd18
.L1fc9e:
	bl	Func_5c68
	mov	r0, #0
	mov	r1, #3
	bl	Func_20244
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	cmp	r6, r3
	bne	.L1fcb8
	mov	r7, r6
	b	.L1fd18
.L1fcb8:
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	ldr	r0, =0x16
	bl	Func_17658
	b	.L1fccc
.L1fcc6:
	mov	r0, #1
	bl	Func_30f8
.L1fccc:
	bl	Func_17364
	cmp	r0, #0
	beq	.L1fcc6
	mov	r0, #1
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	Func_28df4
	cmp	r0, #0
	beq	.L1fcea
	bl	Func_19a54
	b	.L1fd18
.L1fcea:
	bl	Func_19a54
	mov	r0, r6
	bl	Func_5ac0
	mov	r5, r0
	add	r0, r6, #3
	bl	Func_5ac0
	orr	r5, r0
	cmp	r5, #0
	beq	.L1fd10
	ldr	r0, =0xd
	mov	r1, #1
	mov	r7, #4
	bl	Func_1776c
	neg	r7, r7
	b	.L1fd18
.L1fd10:
	ldr	r0, =0x18
	mov	r1, #1
	bl	Func_1776c
.L1fd18:
	bl	Func_5cf8
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1fc84

.thumb_func_start Func_1fd34
	push	{r5, r6, r7, lr}
	ldr	r7, =iwram_1800
	ldr	r6, =0x50001d0
	mov	r5, #0
.L1fd3c:
	ldr	r3, [r7]
	lsl	r2, r5, #3
	add	r3, r2
	lsl	r0, r3, #1
	add	r0, r3
	lsl	r0, #8
	bl	Func_2322
	cmp	r0, #0
	bge	.L1fd54
	ldr	r3, =0x3fff
	add	r0, r3
.L1fd54:
	asr	r3, r0, #14
	lsl	r1, r3, #1
	mov	r2, r3
	add	r1, #0x16
	add	r2, #0x10
	add	r3, #0x14
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r6]
	add	r6, #2
	add	r5, #1
	cmp	r5, #3
	ble	.L1fd3c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1fd34

.thumb_func_start Func_1fd84
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_1fd34
	bl	Func_41d8
	pop	{r0}
	bx	r0
.func_end Func_1fd84

.thumb_func_start Func_1fd98
	push	{lr}
	ldr	r0, =Func_1fd34
	bl	Func_4278
	pop	{r0}
	bx	r0
.func_end Func_1fd98

.thumb_func_start Func_1fda8
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_1e8c
	ldr	r7, [r3]
	ldrh	r3, [r0, #0xc]
	add	r3, r1, r3
	add	r1, r3, #1
	ldrh	r3, [r0, #0xe]
	add	r3, r2, r3
	ldr	r5, [sp, #0x10]
	add	r2, r3, #1
	cmp	r1, #0
	bge	.L1fdc6
	add	r6, r1
	mov	r1, #0
.L1fdc6:
	add	r3, r1, r6
	cmp	r3, #0x1d
	ble	.L1fdd0
	mov	r3, #0x1e
	sub	r6, r3, r1
.L1fdd0:
	cmp	r2, #0
	bge	.L1fdd8
	add	r5, r2
	mov	r2, #0
.L1fdd8:
	add	r3, r2, r5
	cmp	r3, #0x1d
	ble	.L1fde2
	mov	r3, #0x14
	sub	r5, r3, r2
.L1fde2:
	cmp	r6, #0
	ble	.L1fe24
	cmp	r5, #0
	ble	.L1fe24
	lsl	r2, #6
	lsl	r3, r1, #1
	add	r1, r2, r3
.L1fdf0:
	mov	r0, r6
	add	r4, r1, r7
	cmp	r0, #0
	beq	.L1fe04
	ldr	r3, .L1fe18	@ 0xe006
.L1fdfa:
	sub	r0, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r0, #0
	bne	.L1fdfa
.L1fe04:
	sub	r5, #1
	add	r1, #0x40
	cmp	r5, #0
	bne	.L1fdf0
	ldr	r3, =0xea3
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
	b	.L1fe24
	.align	2, 0
.L1fe18:
	.word	0xe006
	.pool

.L1fe24:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1fda8

	.section .rodata

.L371b4:
	.incrom 0x371b4, 0x371c4
.L371c4:
	.incrom 0x371c4, 0x371e0
