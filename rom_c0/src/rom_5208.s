	.include "macros.inc"

.thumb_func_start Func_5208
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	lsr	r3, r5, #31
	add	r5, r3
	asr	r5, #1
	mov	r0, r5
	mov	r10, r2
	mov	r8, r1
	bl	Func_2322
	mov	r6, r0
	mov	r0, r5
	bl	Func_231c
	lsl	r1, r0, #2
	add	r1, r0
	lsl	r1, #4
	ldr	r3, =Func_8ac
	mov	r0, r6
	bl	_call_via_r3
	ldr	r3, =iwram_1ce0
	mov	r2, r8
	str	r2, [r3, #4]
	mov	r2, r10
	str	r0, [r3]
	str	r2, [r3, #8]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_5208

.thumb_func_start Func_5258
	ldr	r3, =iwram_1ce0
	str	r0, [r3]
	str	r1, [r3, #4]
	str	r2, [r3, #8]
	bx	lr
.func_end Func_5258

.thumb_func_start Func_5268
	push	{r5, r6, r7, lr}
	mov	r5, r1
	ldr	r3, =Func_9c0
	bl	_call_via_r3
	ldr	r3, [r5, #8]
	ldr	r7, =iwram_1ce0
	neg	r1, r3
	ldr	r3, [r7, #4]
	mov	r0, #0
	cmp	r1, r3
	blt	.L52d6
	ldr	r3, [r7, #8]
	cmp	r1, r3
	bgt	.L52d6
	asr	r3, r1, #16
	str	r3, [r5, #8]
	ldr	r0, [r7]
	cmp	r0, #0
	beq	.L529e
	lsr	r1, #11
	lsl	r0, #5
	ldr	r3, =Func_b60
	bl	_call_via_r3
	mov	r4, r0
	b	.L52a0
.L529e:
	ldr	r4, =0x151eb
.L52a0:
	ldr	r6, =Func_888
	ldr	r0, [r5]
	mov	r1, r4
	.call_via r6
	cmp	r0, #0
	bge	.L52b4
	ldr	r3, =0xffff
	add	r0, r3
.L52b4:
	ldr	r3, [r7, #0xc]
	asr	r2, r0, #16
	add	r3, r2
	str	r3, [r5]
	ldr	r0, [r5, #4]
	mov	r1, r4
	.call_via r6
	cmp	r0, #0
	bge	.L52cc
	ldr	r3, =0xffff
	add	r0, r3
.L52cc:
	ldr	r3, [r7, #0x10]
	asr	r2, r0, #16
	sub	r3, r2
	str	r3, [r5, #4]
	mov	r0, r4
.L52d6:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_5268
