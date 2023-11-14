	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_40e8
	push	{lr}
	ldr	r3, =iwram_1d34
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, =iwram_1a10
	ldr	r1, =iwram_1a20
	ldr	r4, .L4118	@ 0xffff
	strb	r2, [r3]
	mov	r0, #0
	mov	r2, #0x13
.L40fc:
	ldrh	r3, [r1, #4]
	sub	r2, #1
	orr	r3, r4
	str	r0, [r1]
	strh	r3, [r1, #4]
	strb	r0, [r1, #6]
	add	r1, #8
	cmp	r2, #0
	bge	.L40fc
	ldr	r2, =iwram_1d34
	mov	r3, #1
	strb	r3, [r2]
	b	.L4128

	.align	2, 0
.L4118:
	.word 0xffff
	.pool

.L4128:
	pop	{r0}
	bx	r0
.func_end Func_40e8

.thumb_func_start Func_412c
	push	{lr}
	lsr	r2, #2
	mov	r4, #0
	cmp	r4, r2
	bcs	.L4140
.L4136:
	ldmia	r1!, {r3}
	add	r4, #1
	stmia	r0!, {r3}
	cmp	r4, r2
	bcc	.L4136
.L4140:
	pop	{r0}
	bx	r0
.func_end Func_412c

.thumb_func_start Func_4144
	push	{r5, r6, lr}
	sub	sp, #8
	ldr	r2, =iwram_1a20
	mov	r4, #0x13
	b	.L4150
.L414e:
	ldr	r2, =iwram_1a20
.L4150:
	mov	r1, r2
	cmp	r4, #0
	ble	.L4184
	mov	r0, r4
.L4158:
	mov	r3, #0xc
	ldrsh	r2, [r1, r3]
	mov	r5, #4
	ldrsh	r3, [r1, r5]
	cmp	r2, r3
	ble	.L417c
	mov	r3, r1
	mov	r2, sp
	ldmia	r3!, {r5, r6}
	stmia	r2!, {r5, r6}
	mov	r2, r1
	mov	r1, r3
	ldmia	r3!, {r5, r6}
	stmia	r2!, {r5, r6}
	mov	r3, sp
	ldmia	r3!, {r5, r6}
	stmia	r2!, {r5, r6}
	b	.L417e
.L417c:
	add	r1, #8
.L417e:
	sub	r0, #1
	cmp	r0, #0
	bne	.L4158
.L4184:
	sub	r4, #1
	cmp	r4, #1
	bgt	.L414e
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_4144

.thumb_func_start Func_4198
	push	{r5, lr}
	mov	r5, #1
	ldr	r4, =iwram_1a20
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	strh	r3, [r3]
	mov	r1, #0
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L41b2
	mov	r5, #0
	b	.L41c2
.L41b2:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	bgt	.L41c2
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L41b2
	mov	r5, r1
.L41c2:
	ldr	r3, =REG_IME
	strh	r2, [r3]
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_4198

.thumb_func_start Func_41d8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1a10
	mov	r5, #1
	ldr	r4, =iwram_1a20
	ldrb	r3, [r3]
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r2, #0
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L41fa
	strh	r1, [r4, #4]
	mov	r5, #0
	b	.L420c
.L41fa:
	add	r2, #1
	add	r4, #8
	cmp	r2, #0x13
	bgt	.L420c
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L41fa
	strh	r1, [r4, #4]
	mov	r5, r2
.L420c:
	mov	r3, #1
	neg	r3, r3
	ldr	r4, =iwram_1a20
	cmp	r5, r3
	bne	.L4254
	ldr	r3, [r4]
	mov	r2, #0
	cmp	r3, #0
	bne	.L423c
	ldr	r3, .L422c	@ 0
	str	r0, [r4]
	strh	r1, [r4, #4]
	strb	r3, [r4, #6]
	mov	r5, #0
	b	.L4254

	.align	2, 0
.L422c:
	.word	0
	.pool

.L423c:
	add	r2, #1
	add	r4, #8
	cmp	r2, #0x13
	bgt	.L4254
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L423c
	ldr	r3, .L4260	@ 0
	str	r0, [r4]
	strh	r1, [r4, #4]
	strb	r3, [r4, #6]
	mov	r5, r2
.L4254:
	bl	Func_4144
	ldr	r3, =REG_IME
	strh	r6, [r3]
	mov	r0, r5
	b	.L4268

	.align	2, 0
.L4260:
	.word	0
	.pool

.L4268:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_41d8

.thumb_func_start Func_4270
	bx	lr
.func_end Func_4270

.thumb_func_start Func_4274
	bx	lr
.func_end Func_4274

.thumb_func_start Func_4278
	push	{r5, lr}
	mov	r5, #1
	ldr	r4, =iwram_1a20
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	strh	r3, [r3]
	mov	r1, #0
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L4298
	ldr	r3, =0x7fff
	str	r1, [r4]
	strh	r3, [r4, #4]
	mov	r5, #0
	b	.L42b0
.L4298:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	bgt	.L42b0
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L4298
	mov	r3, #0
	str	r3, [r4]
	ldr	r3, =0x7fff
	strh	r3, [r4, #4]
	mov	r5, r1
.L42b0:
	ldr	r3, =REG_IME
	strh	r2, [r3]
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_4278

.thumb_func_start Func_42c8
	push	{r5, r6, lr}
	mov	r5, #1
	ldr	r4, =iwram_1a20
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r1, #0
	mov	r2, #1
.L42dc:
	cmp	r0, #0
	beq	.L42e6
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L42ee
.L42e6:
	ldrb	r3, [r4, #5]
	orr	r3, r2
	strb	r3, [r4, #5]
	mov	r5, r1
.L42ee:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	ble	.L42dc
	ldr	r3, =REG_IME
	strh	r6, [r3]
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_42c8

.thumb_func_start Func_430c
	push	{r5, r6, r7, lr}
	mov	r5, #1
	ldr	r1, =iwram_1a20
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r4, #0
	mov	r7, #1
.L4320:
	ldrb	r3, [r1, #3]
	cmp	r3, #2
	bne	.L433a
	ldrb	r2, [r1, #6]
	mov	r3, r7
	and	r3, r2
	mov	r0, #1
	cmp	r3, #0
	bne	.L433a
	ldrb	r3, [r1, #5]
	orr	r3, r0
	strb	r3, [r1, #5]
	mov	r5, r4
.L433a:
	add	r4, #1
	add	r1, #8
	cmp	r4, #0x13
	ble	.L4320
	ldr	r3, =REG_IME
	strh	r6, [r3]
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_430c

.thumb_func_start Func_4358
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, #1
	ldr	r1, =iwram_1a20
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	strh	r3, [r3]
	mov	r4, #0
	ldr	r3, [r1]
	cmp	r3, r0
	bne	.L4376
	strb	r6, [r1, #6]
	mov	r5, #0
	b	.L4388
.L4376:
	add	r4, #1
	add	r1, #8
	cmp	r4, #0x13
	bgt	.L4388
	ldr	r3, [r1]
	cmp	r3, r0
	bne	.L4376
	strb	r6, [r1, #6]
	mov	r5, r4
.L4388:
	ldr	r3, =REG_IME
	strh	r2, [r3]
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_4358

.thumb_func_start Func_439c
	push	{r5, r6, r7, lr}
	mov	r5, #1
	ldr	r4, =iwram_1a20
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r7, r2
	strh	r3, [r3]
	mov	r1, #0
	mov	r6, #0xfe
.L43b0:
	cmp	r0, #0
	beq	.L43ba
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L43c4
.L43ba:
	ldrb	r2, [r4, #5]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r4, #5]
	mov	r5, r1
.L43c4:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	ble	.L43b0
	ldr	r3, =REG_IME
	strh	r7, [r3]
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_439c

.thumb_func_start Func_43e0
	push	{r5, r6, lr}
	mov	r0, #1
	ldr	r4, =iwram_1a20
	neg	r0, r0
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r1, #0
	mov	r5, #0xfe
.L43f4:
	ldrb	r3, [r4, #3]
	cmp	r3, #2
	bne	.L4404
	ldrb	r2, [r4, #5]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r4, #5]
	mov	r0, r1
.L4404:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	ble	.L43f4
	ldr	r3, =REG_IME
	strh	r6, [r3]
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_43e0

.thumb_func_start Func_4420
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1d34
	ldrb	r3, [r3]
	mov	r7, r0
	ldr	r6, =iwram_1a20
	asr	r7, #8
	cmp	r3, #1
	bne	.L444a
	mov	r5, #0x15
	sub	r6, #8
.L4434:
	sub	r5, #1
	cmp	r5, #0
	beq	.L444a
	add	r6, #8
	ldrb	r3, [r6, #5]
	cmp	r3, r7
	bne	.L4434
	ldr	r0, [r6]
	bl	_call_via_r0
	b	.L4434
.L444a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_4420
