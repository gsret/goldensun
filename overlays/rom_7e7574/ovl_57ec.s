	.include "macros.inc"

.thumb_func_start OvlFunc_57ec
	push	{r4, r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6, r7}
	sub	sp, #8
	mov	r10, r0
	mov	r9, r1
	mov	r8, r2
	bl	OvlFunc_5ac0
	cmp	r0, #0
	beq	.L580c
.L5808:
	mov	r0, r10
	b	.L5a2a
.L580c:
	mov	r0, r9
	bl	OvlFunc_5ac0
	cmp	r0, #0
	bne	.L5880
	mov	r0, r10
	bl	OvlFunc_5ad0
	cmp	r0, #0
	beq	.L583c
	mov	r0, r9
	bl	OvlFunc_5ad0
	cmp	r0, #0
	beq	.L5808
	mov	r0, r10
	mov	r1, r9
	ldr	r2, [r0, #4]
	ldr	r3, [r1, #4]
	cmp	r2, r3
	beq	.L5808
	bl	OvlFunc_5ab8
	b	.L5a2a
.L583c:
	mov	r0, r9
	bl	OvlFunc_5ad0
	cmp	r0, #0
	bne	.L5880
	mov	r0, r9
	bl	OvlFunc_5ae0
	cmp	r0, #0
	beq	.L5876
	mov	r0, r10
	bl	OvlFunc_5ae0
	cmp	r0, #0
	beq	.L5808
	mov	r2, r8
	mov	r3, r10
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldmia	r3!, {r0, r4}
	stmia	r2!, {r0, r4}
	mov	r1, r10
	mov	r4, r9
	ldr	r3, [r1, #4]
	ldr	r2, [r4, #4]
	mov	r0, r8
	and	r3, r2
	str	r3, [r0, #4]
	b	.L5a2a
.L5876:
	mov	r0, r10
	bl	OvlFunc_5ae0
	cmp	r0, #0
	beq	.L5884
.L5880:
	mov	r0, r9
	b	.L5a2a
.L5884:
	mov	r1, r10
	ldr	r1, [r1, #8]
	mov	r2, r9
	ldr	r2, [r2, #8]
	mov	r14, r1
	mov	r1, r9
	mov	r3, r10
	ldr	r0, [r1, #0xc]
	ldr	r1, [r1, #0x10]
	mov	r4, r14
	ldr	r6, [r3, #0xc]
	ldr	r7, [r3, #0x10]
	sub	r3, r4, r2
	mov	r12, r2
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	r3, #0
	bge	.L58aa
	neg	r3, r3
.L58aa:
	cmp	r3, #0x3f
	bgt	.L591a
	cmp	r14, r12
	ble	.L58f0
	mov	r2, r12
	mov	r1, r14
	mov	r0, #1
	sub	r1, r2
	mov	r11, r0
	mov	r12, r1
.L58be:
	mov	r3, #1
	ldr	r0, [sp, #4]
	neg	r3, r3
	add	r12, r3
	ldr	r3, [sp]
	lsl	r5, r0, #31
	ldr	r1, [sp]
	lsr	r0, r3, #1
	mov	r3, r5
	mov	r4, r11
	orr	r3, r0
	ldr	r0, [sp, #4]
	and	r1, r4
	lsr	r4, r0, #1
	mov	r0, r1
	orr	r0, r3
	mov	r2, #0
	str	r0, [sp]
	mov	r0, r2
	orr	r0, r4
	mov	r1, r12
	str	r0, [sp, #4]
	cmp	r1, #0
	bne	.L58be
	mov	r12, r14
.L58f0:
	cmp	r12, r14
	ble	.L592e
	mov	r2, #1
	mov	r11, r2
.L58f8:
	mov	r3, #1
	lsl	r5, r7, #31
	mov	r1, r11
	lsr	r0, r6, #1
	add	r14, r3
	and	r1, r6
	mov	r2, #0
	mov	r3, r5
	lsr	r4, r7, #1
	orr	r3, r0
	mov	r6, r1
	mov	r7, r2
	orr	r6, r3
	orr	r7, r4
	cmp	r12, r14
	bgt	.L58f8
	b	.L592e
.L591a:
	cmp	r14, r12
	ble	.L5928
	mov	r0, #0
	mov	r1, #0
	str	r0, [sp]
	str	r1, [sp, #4]
	b	.L592e
.L5928:
	mov	r14, r12
	mov	r6, #0
	mov	r7, #0
.L592e:
	mov	r1, r10
	mov	r2, r9
	ldr	r0, [r1, #4]
	ldr	r3, [r2, #4]
	cmp	r0, r3
	beq	.L59dc
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	sub	r1, r6
	sbc	r2, r7
	cmp	r0, #0
	bne	.L5952
	ldr	r3, [sp]
	ldr	r4, [sp, #4]
	mov	r2, r7
	mov	r1, r6
	sub	r1, r3
	sbc	r2, r4
.L5952:
	cmp	r2, #0
	blt	.L5968
	mov	r3, #0
	mov	r4, r8
	str	r3, [r4, #4]
	mov	r0, r14
	mov	r3, r8
	str	r0, [r4, #8]
	str	r1, [r3, #0xc]
	str	r2, [r3, #0x10]
	b	.L597e
.L5968:
	mov	r4, r8
	mov	r3, #1
	mov	r0, r14
	str	r3, [r4, #4]
	str	r0, [r4, #8]
	mov	r4, #0
	neg	r3, r1
	sbc	r4, r2
	mov	r1, r8
	str	r3, [r1, #0xc]
	str	r4, [r1, #0x10]
.L597e:
	mov	r2, r8
	ldr	r4, [r2, #0xc]
	ldr	r5, [r2, #0x10]
	ldr	r1, =0xfffffff
	mov	r2, #1
	neg	r2, r2
	asr	r3, r2, #31
	add	r2, r4
	adc	r3, r5
	cmp	r3, r1
	bhi	.L59f2
	cmp	r3, r1
	bne	.L59a0
	mov	r0, #2
	neg	r0, r0
	cmp	r2, r0
	bhi	.L59f2
.L59a0:
	lsr	r2, r4, #31
	lsl	r3, r5, #1
	mov	r1, r2
	mov	r2, r8
	orr	r1, r3
	ldr	r3, [r2, #8]
	lsl	r0, r4, #1
	sub	r3, #1
	str	r0, [r2, #0xc]
	str	r1, [r2, #0x10]
	str	r3, [r2, #8]
	ldr	r6, =0xfffffff
	mov	r2, #1
	neg	r2, r2
	asr	r3, r2, #31
	add	r2, r0
	adc	r3, r1
	cmp	r3, r6
	bhi	.L59f2
	mov	r5, r1
	mov	r4, r0
	cmp	r3, r6
	bne	.L59a0
	mov	r4, #2
	neg	r4, r4
	cmp	r2, r4
	bhi	.L59f2
	mov	r5, r1
	mov	r4, r0
	b	.L59a0
.L59dc:
	mov	r1, r8
	mov	r2, r14
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r3, [sp]
	ldr	r4, [sp, #4]
	add	r6, r3
	adc	r7, r4
	mov	r4, r8
	str	r6, [r4, #0xc]
	str	r7, [r4, #0x10]
.L59f2:
	mov	r3, #3
	mov	r0, r8
	str	r3, [r0]
	ldr	r1, =0x1fffffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r1
	bls	.L5a28
	ldr	r5, [r0, #0xc]
	ldr	r6, [r0, #0x10]
	mov	r2, #1
	mov	r3, r5
	and	r3, r2
	lsl	r2, r6, #31
	mov	r12, r2
	lsr	r0, r5, #1
	mov	r1, r12
	orr	r1, r0
	mov	r4, #0
	lsr	r2, r6, #1
	mov	r0, r8
	orr	r3, r1
	orr	r4, r2
	str	r3, [r0, #0xc]
	str	r4, [r0, #0x10]
	ldr	r3, [r0, #8]
	add	r3, #1
	str	r3, [r0, #8]
.L5a28:
	mov	r0, r8
.L5a2a:
	add	sp, #8
	pop	{r3, r4, r5, r6}
	mov	r8, r3
	mov	r9, r4
	mov	r10, r5
	mov	r11, r6
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_57ec

.thumb_func_start OvlFunc_5a40
	push	{r4, r5, r6, lr}
	sub	sp, #0x4c
	add	r4, sp, #8
	add	r6, sp, #0x38
	mov	r5, sp
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	mov	r1, r6
	str	r2, [r5]
	str	r3, [r5, #4]
	bl	OvlFunc_5e04
	add	r4, sp, #0x24
	mov	r0, r5
	mov	r1, r4
	bl	OvlFunc_5e04
	mov	r1, r4
	add	r2, sp, #0x10
	mov	r0, r6
	bl	OvlFunc_57ec
	bl	OvlFunc_5c38
	add	sp, #0x4c
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_5a40

.thumb_func_start OvlFunc_5a78
	push	{r4, r5, r6, lr}
	sub	sp, #0x4c
	add	r4, sp, #8
	add	r6, sp, #0x38
	mov	r5, sp
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	mov	r1, r6
	str	r2, [r5]
	str	r3, [r5, #4]
	bl	OvlFunc_5e04
	add	r4, sp, #0x24
	mov	r0, r5
	mov	r1, r4
	bl	OvlFunc_5e04
	ldr	r3, [r4, #4]
	mov	r2, #1
	eor	r3, r2
	str	r3, [r4, #4]
	add	r2, sp, #0x10
	mov	r1, r4
	mov	r0, r6
	bl	OvlFunc_57ec
	bl	OvlFunc_5c38
	add	sp, #0x4c
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_5a78

.thumb_func_start OvlFunc_5ab8
	ldr	r0, =.L5f90
	bx	lr
.func_end OvlFunc_5ab8

.thumb_func_start OvlFunc_5ac0
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L5acc
	mov	r2, #1
.L5acc:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5ac0

.thumb_func_start OvlFunc_5ad0
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L5adc
	mov	r2, #1
.L5adc:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5ad0

.thumb_func_start OvlFunc_5ae0
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L5aec
	mov	r2, #1
.L5aec:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5ae0

.thumb_func_start OvlFunc_5af0
	push	{r4, r5, lr}
	sub	sp, #0x14
	mov	r5, sp
	mov	r3, #3
	lsr	r2, r0, #31
	str	r3, [r5]
	str	r2, [r5, #4]
	cmp	r0, #0
	bne	.L5b08
	mov	r3, #2
	str	r3, [r5]
	b	.L5b56
.L5b08:
	mov	r3, #0x3c
	str	r3, [r5, #8]
	cmp	r2, #0
	beq	.L5b24
	mov	r3, #0x80
	lsl	r3, #24
	cmp	r0, r3
	bne	.L5b1e
	ldr	r1, =0
	ldr	r0, .L5b60	@ 0xc1e00000
	b	.L5b5c
.L5b1e:
	neg	r3, r0
	asr	r4, r3, #31
	b	.L5b28
.L5b24:
	mov	r3, r0
	asr	r4, r0, #31
.L5b28:
	str	r3, [r5, #0xc]
	str	r4, [r5, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfffffff
	cmp	r3, r2
	bhi	.L5b56
	mov	r0, r5
	mov	r12, r2
.L5b38:
	ldr	r3, [r0, #0xc]
	ldr	r4, [r0, #0x10]
	lsr	r1, r3, #31
	lsl	r2, r4, #1
	mov	r4, r1
	lsl	r3, #1
	orr	r4, r2
	str	r3, [r0, #0xc]
	str	r4, [r0, #0x10]
	ldr	r3, [r0, #8]
	sub	r3, #1
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	cmp	r3, r12
	bls	.L5b38
.L5b56:
	mov	r0, r5
	bl	OvlFunc_5c38
.L5b5c:
	add	sp, #0x14
	pop	{r4, r5, pc}

	.align	2, 0
.L5b60:
	.word	0xc1e00000
.func_end OvlFunc_5af0

.thumb_func_start OvlFunc_5b6c
	push	{r4, lr}
	sub	sp, #0x1c
	mov	r3, sp
	add	r4, sp, #8
	str	r0, [r3]
	str	r1, [r3, #4]
	mov	r0, r3
	mov	r1, r4
	bl	OvlFunc_5e04
	mov	r0, r4
	bl	OvlFunc_5bf8
	cmp	r0, #0
	bne	.L5b94
	mov	r0, r4
	bl	OvlFunc_5bd8
	cmp	r0, #0
	beq	.L5b98
.L5b94:
	mov	r0, #0
	b	.L5bd0
.L5b98:
	mov	r0, r4
	bl	OvlFunc_5be8
	cmp	r0, #0
	bne	.L5bae
	ldr	r3, [r4, #8]
	mov	r0, #0
	cmp	r3, #0
	blt	.L5bd0
	cmp	r3, #0x1e
	ble	.L5bbc
.L5bae:
	ldr	r3, [r4, #4]
	neg	r0, r3
	orr	r0, r3
	ldr	r3, =0x7fffffff
	lsr	r0, #31
	add	r0, r3
	b	.L5bd0
.L5bbc:
	mov	r2, #0x3c
	sub	r2, r3
	ldr	r0, [r4, #0xc]
	ldr	r1, [r4, #0x10]
	bl	OvlFunc_5c08
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L5bd0
	neg	r0, r0
.L5bd0:
	add	sp, #0x1c
	pop	{r4, pc}
.func_end OvlFunc_5b6c

.thumb_func_start OvlFunc_5bd8
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L5be4
	mov	r2, #1
.L5be4:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5bd8

.thumb_func_start OvlFunc_5be8
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L5bf4
	mov	r2, #1
.L5bf4:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5be8

.thumb_func_start OvlFunc_5bf8
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L5c04
	mov	r2, #1
.L5c04:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5bf8

.thumb_func_start OvlFunc_5c08
	push	{r4, r5, r6, lr}
	mov	r6, r2
	cmp	r6, #0
	beq	.L5c36
	mov	r3, #0x20
	sub	r3, r6
	cmp	r3, #0
	bgt	.L5c22
	neg	r3, r3
	mov	r4, r1
	mov	r5, #0
	lsr	r4, r3
	b	.L5c32
.L5c22:
	mov	r2, r1
	lsl	r2, r3
	mov	r3, r0
	lsr	r3, r6
	mov	r5, r1
	mov	r4, r3
	lsr	r5, r6
	orr	r4, r2
.L5c32:
	mov	r1, r5
	mov	r0, r4
.L5c36:
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_5c08

.thumb_func_start OvlFunc_5c38
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r4, r0
	ldr	r3, [r4, #4]
	sub	sp, #8
	ldr	r5, [r4, #0xc]
	ldr	r6, [r4, #0x10]
	mov	r10, r3
	mov	r7, #0
	bl	OvlFunc_5dd4
	cmp	r0, #0
	beq	.L5c64
	ldr	r2, =0x80000
	ldr	r1, .L5d38	@ 0
	mov	r4, r6
	mov	r3, r5
	orr	r4, r2
	ldr	r7, =0x7ff
	b	.L5d78
.L5c64:
	mov	r0, r4
	bl	OvlFunc_5de4
	cmp	r0, #0
	bne	.L5d06
	mov	r0, r4
	bl	OvlFunc_5df4
	cmp	r0, #0
	beq	.L5c7e
	mov	r5, #0
	mov	r6, #0
	b	.L5d7c
.L5c7e:
	mov	r3, r6
	orr	r3, r5
	cmp	r3, #0
	beq	.L5d7c
	ldr	r0, [r4, #8]
	ldr	r2, =0xfffffc02
	cmp	r0, r2
	bge	.L5cfe
	sub	r2, r0
	cmp	r2, #0x38
	ble	.L5c9a
	mov	r5, #0
	mov	r6, #0
	b	.L5cc8
.L5c9a:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #1
	lsl	r3, r2
	sub	r3, #1
	asr	r4, r3, #31
	and	r4, r6
	and	r3, r5
	orr	r3, r4
	cmp	r3, #0
	beq	.L5cb4
	mov	r3, #1
	mov	r8, r3
.L5cb4:
	mov	r1, r6
	mov	r0, r5
	bl	OvlFunc_5c08
	mov	r4, #0
	mov	r3, r8
	mov	r5, r0
	mov	r6, r1
	orr	r5, r3
	orr	r6, r4
.L5cc8:
	mov	r3, #0xff
	mov	r1, r5
	and	r1, r3
	mov	r2, #0
	cmp	r1, #0x80
	bne	.L5cec
	cmp	r2, #0
	bne	.L5cec
	add	r3, #1
	mov	r1, r5
	and	r1, r3
	mov	r3, r2
	orr	r3, r1
	cmp	r3, #0
	beq	.L5cf4
	mov	r3, #0x80
	mov	r4, #0
	b	.L5cf0
.L5cec:
	mov	r3, #0x7f
	mov	r4, #0
.L5cf0:
	add	r5, r3
	adc	r6, r4
.L5cf4:
	ldr	r3, =0xfffffff
	cmp	r6, r3
	bls	.L5d6e
	mov	r7, #1
	b	.L5d6e
.L5cfe:
	mov	r3, #0x80
	lsl	r3, #3
	cmp	r0, r3
	blt	.L5d0e
.L5d06:
	ldr	r7, =0x7ff
	mov	r5, #0
	mov	r6, #0
	b	.L5d7c
.L5d0e:
	ldr	r3, =0x3ff
	mov	r1, r5
	add	r7, r0, r3
	mov	r3, #0xff
	and	r1, r3
	mov	r2, #0
	cmp	r1, #0x80
	bne	.L5d50
	cmp	r2, #0
	bne	.L5d50
	add	r3, #1
	mov	r1, r5
	and	r1, r3
	mov	r3, r2
	orr	r3, r1
	cmp	r3, #0
	beq	.L5d58
	mov	r3, #0x80
	mov	r4, #0
	b	.L5d54

	.align	2, 0
.L5d38:
	.word	0
	.pool

.L5d50:
	mov	r3, #0x7f
	mov	r4, #0
.L5d54:
	add	r5, r3
	adc	r6, r4
.L5d58:
	ldr	r3, =0x1fffffff
	cmp	r6, r3
	bls	.L5d6e
	lsl	r1, r6, #31
	lsr	r2, r5, #1
	mov	r3, r1
	orr	r3, r2
	lsr	r4, r6, #1
	mov	r6, r4
	mov	r5, r3
	add	r7, #1
.L5d6e:
	lsl	r1, r6, #24
	lsr	r2, r5, #8
	mov	r3, r1
	orr	r3, r2
	lsr	r4, r6, #8
.L5d78:
	mov	r6, r4
	mov	r5, r3
.L5d7c:
	mov	r0, sp
	ldr	r3, [r0, #4]
	ldr	r2, =0xfff00000
	ldr	r1, =0xfffff
	and	r3, r2
	and	r1, r6
	orr	r3, r1
	str	r3, [r0, #4]
	ldr	r3, .L5db8	@ 0x7ff
	ldrh	r2, [r0, #6]
	and	r7, r3
	ldr	r3, =0xffff800f
	lsl	r1, r7, #4
	and	r3, r2
	orr	r3, r1
	strh	r3, [r0, #6]
	mov	r3, r10
	ldrb	r2, [r0, #7]
	lsl	r1, r3, #7
	mov	r3, #0x7f
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #7]
	ldr	r3, [r0, #4]
	str	r5, [r0, #4]
	str	r3, [r0]
	ldr	r1, [r0, #4]
	ldr	r0, [r0]
	add	sp, #8
	b	.L5dcc

	.align	2, 0
.L5db8:
	.word	0x7ff
	.pool

.L5dcc:
	pop	{r3, r4}
	mov	r8, r3
	mov	r10, r4
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_5c38

.thumb_func_start OvlFunc_5dd4
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L5de0
	mov	r2, #1
.L5de0:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5dd4

.thumb_func_start OvlFunc_5de4
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L5df0
	mov	r2, #1
.L5df0:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5de4

.thumb_func_start OvlFunc_5df4
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L5e00
	mov	r2, #1
.L5e00:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_5df4

.thumb_func_start OvlFunc_5e04
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r0, #4]
	sub	sp, #8
	mov	r2, sp
	str	r4, [r2]
	ldr	r3, [r0]
	str	r3, [r2, #4]
	lsl	r3, #12
	lsr	r6, r3, #12
	ldrh	r3, [r2, #6]
	lsl	r3, #17
	mov	r7, r1
	lsr	r1, r3, #21
	ldrb	r3, [r2, #7]
	lsr	r3, #7
	mov	r5, r4
	str	r3, [r7, #4]
	cmp	r1, #0
	bne	.L5e70
	mov	r3, r4
	orr	r3, r6
	cmp	r3, #0
	bne	.L5e38
	mov	r3, #2
	str	r3, [r7]
	b	.L5ebc
.L5e38:
	ldr	r3, =0xfffffc02
	lsr	r1, r5, #24
	lsl	r2, r6, #8
	mov	r4, r1
	str	r3, [r7, #8]
	orr	r4, r2
	lsl	r3, r5, #8
	mov	r6, r4
	mov	r5, r3
	mov	r3, #3
	str	r3, [r7]
	ldr	r3, =0xfffffff
	cmp	r6, r3
	bhi	.L5e98
	mov	r12, r3
.L5e56:
	lsr	r1, r5, #31
	lsl	r2, r6, #1
	mov	r4, r1
	lsl	r3, r5, #1
	orr	r4, r2
	mov	r6, r4
	mov	r5, r3
	ldr	r3, [r7, #8]
	sub	r3, #1
	str	r3, [r7, #8]
	cmp	r6, r12
	bls	.L5e56
	b	.L5e98
.L5e70:
	ldr	r2, =0x7ff
	cmp	r1, r2
	bne	.L5e9e
	mov	r3, r4
	orr	r3, r6
	cmp	r3, #0
	bne	.L5e84
	mov	r3, #4
	str	r3, [r7]
	b	.L5ebc
.L5e84:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r4, r6
	mov	r3, #0
	and	r4, r2
	orr	r3, r4
	cmp	r3, #0
	beq	.L5e96
	mov	r3, #1
.L5e96:
	str	r3, [r7]
.L5e98:
	str	r5, [r7, #0xc]
	str	r6, [r7, #0x10]
	b	.L5ebc
.L5e9e:
	ldr	r2, =0xfffffc01
	add	r3, r1, r2
	lsr	r1, r5, #24
	lsl	r2, r6, #8
	mov	r4, r1
	orr	r4, r2
	ldr	r1, =0
	ldr	r2, =0x10000000
	str	r3, [r7, #8]
	mov	r3, #3
	str	r3, [r7]
	orr	r4, r2
	lsl	r3, r5, #8
	str	r3, [r7, #0xc]
	str	r4, [r7, #0x10]
.L5ebc:
	add	sp, #8
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_5e04

	.section .data

.L5f90:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5f90, (0x5fa4-0x5f90)
