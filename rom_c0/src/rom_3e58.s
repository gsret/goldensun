	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_3e58
	push	{r5, r6, r7, lr}
	mov	r6, r0
	lsr	r5, r1, #6
	cmp	r6, #0x5f
	bls	.L3e68
	mov	r0, #1
	neg	r0, r0
	b	.L3ec4
.L3e68:
	ldr	r1, =iwram_1810
	ldr	r2, =iwram_1b10
	mov	r12, r1
	mov	r4, #0
	mov	r14, r2
	mov	r7, r12
.L3e74:
	mov	r3, #0x80
	mov	r0, #1
	lsl	r3, #2
	neg	r0, r0
	cmp	r4, r3
	bge	.L3ec4
	ldrb	r3, [r7, r4]
	cmp	r3, #0xff
	bne	.L3eb2
	mov	r0, r4
	add	r1, r5, r0
	cmp	r0, r1
	bcs	.L3e9e
	add	r2, r0, r7
.L3e90:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r3, #0xff
	bne	.L3eb2
	add	r4, #1
	cmp	r4, r1
	bcc	.L3e90
.L3e9e:
	mov	r2, #0
	cmp	r2, r5
	bcs	.L3ec2
.L3ea4:
	add	r3, r0, r2
	mov	r1, r12
	add	r2, #1
	strb	r6, [r1, r3]
	cmp	r2, r5
	bcc	.L3ea4
	b	.L3ec2
.L3eb2:
	mov	r2, r12
	ldrb	r3, [r2, r4]
	mov	r1, r14
	lsl	r3, #2
	ldrh	r3, [r1, r3]
	lsr	r3, #6
	add	r4, r3
	b	.L3e74
.L3ec2:
	lsl	r0, #6
.L3ec4:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_3e58

.thumb_func_start Func_3ed4
	push	{lr}
	mov	r2, #0x80
	ldr	r4, =iwram_1810
	mov	r1, #0
	mov	r0, #0
	lsl	r2, #2
.L3ee0:
	ldrb	r3, [r4]
	add	r4, #1
	cmp	r3, #0xff
	beq	.L3eec
	mov	r1, #0
	b	.L3ef4
.L3eec:
	add	r1, #1
	cmp	r0, r1
	bge	.L3ef4
	mov	r0, r1
.L3ef4:
	sub	r2, #1
	cmp	r2, #0
	bne	.L3ee0
	pop	{r1}
	bx	r1
.func_end Func_3ed4

.thumb_func_start Func_3f04
	push	{r5, lr}
	mov	r4, #0
	cmp	r0, #0x5f
	bhi	.L3f2a
	mov	r1, #0x80
	ldr	r2, =iwram_1810
	mov	r5, #0xff
	lsl	r1, #2
.L3f14:
	ldrb	r3, [r2]
	cmp	r3, r0
	bne	.L3f1e
	strb	r5, [r2]
	add	r4, #1
.L3f1e:
	sub	r1, #1
	add	r2, #1
	cmp	r1, #0
	bne	.L3f14
	cmp	r4, #0
	beq	.L3f30
.L3f2a:
	mov	r0, #1
	neg	r0, r0
	b	.L3f32
.L3f30:
	mov	r0, #0
.L3f32:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_3f04

.thumb_func_start Func_3f3c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1b10
	lsl	r2, r0, #2
	add	r5, r2, r3
	cmp	r0, #0x5f
	bls	.L3f4e
	mov	r0, #1
	neg	r0, r0
	b	.L3f68
.L3f4e:
	ldrh	r3, [r5, #2]
	ldr	r6, =0xffff
	cmp	r3, r6
	beq	.L3f66
	bl	Func_3f04
	ldrh	r3, [r5, #2]
	mov	r2, r6
	orr	r2, r3
	mov	r3, #0
	strh	r2, [r5, #2]
	strh	r3, [r5]
.L3f66:
	mov	r0, #0
.L3f68:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_3f3c

.thumb_func_start Func_3f78
	push	{r5, lr}
	ldr	r3, =iwram_1b10
	lsl	r2, r0, #2
	add	r5, r2, r3
	cmp	r0, #0x5f
	bls	.L3f8a
	mov	r0, #1
	neg	r0, r0
	b	.L3f9a
.L3f8a:
	ldrh	r3, [r5]
	cmp	r3, #0x10
	bls	.L3f98
	bl	Func_3f04
	mov	r3, #1
	strh	r3, [r5]
.L3f98:
	mov	r0, #0
.L3f9a:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_3f78

.thumb_func_start Func_3fa4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	ldr	r3, =iwram_1b10
	mov	r8, r2
	lsl	r2, r5, #2
	mov	r6, r1
	add	r7, r2, r3
	mov	r0, #0
	cmp	r5, #0x5f
	bhi	.L4020
	mov	r2, #0x80
	lsl	r2, #6
	cmp	r6, r2
	bhi	.L4020
	ldrh	r3, [r7]
	cmp	r3, #0x10
	bls	.L3fda
	cmp	r3, r6
	beq	.L3fd6
	mov	r0, r5
	bl	Func_3f3c
	b	.L3fda
.L3fd6:
	ldrh	r5, [r7, #2]
	b	.L3fe4
.L3fda:
	mov	r0, r5
	mov	r1, r6
	bl	Func_3e58
	mov	r5, r0
.L3fe4:
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.L401e
	ldr	r2, =0x6010000
	add	r1, r5, r2
	mov	r2, r8
	strh	r6, [r7]
	strh	r5, [r7, #2]
	cmp	r2, #0
	beq	.L401a
	cmp	r8, r3
	bne	.L400a
	mov	r0, r1
	ldr	r3, =Func_8d4
	mov	r1, r6
	bl	_call_via_r3
	b	.L401a
.L400a:
	mov	r4, #0x84
	lsr	r2, r6, #2
	lsl	r4, #24
	ldr	r3, =REG_DMA3SAD
	mov	r0, r8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L401a:
	lsr	r0, r5, #5
	b	.L4020
.L401e:
	mov	r0, #0
.L4020:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_3fa4

.thumb_func_start Func_403c
	push	{lr}
	ldr	r0, =0x1ff
	ldr	r3, =iwram_1810
	mov	r1, #0
	mov	r2, #0xff
.L4046:
	add	r1, #1
	strb	r2, [r3]
	add	r3, #1
	cmp	r1, r0
	bls	.L4046
	ldr	r2, =iwram_1b10
	ldr	r4, .L405c	@ 0xffff
	mov	r1, #0
	mov	r0, #0
	b	.L406c

	.align	2, 0
.L405c:
	.word	0xffff
	.pool

.L406c:
	ldrh	r3, [r2, #2]
	add	r1, #1
	orr	r3, r4
	strh	r3, [r2, #2]
	strh	r0, [r2]
	add	r2, #4
	cmp	r1, #0x5f
	bls	.L406c
	pop	{r0}
	bx	r0
.func_end Func_403c

.thumb_func_start Func_4080
	push	{lr}
	ldr	r1, =iwram_1b10
	ldr	r4, =0xffff
	ldrh	r3, [r1, #2]
	mov	r0, #0x60
	mov	r2, #0
	cmp	r3, r4
	bne	.L4094
	mov	r0, #0
	b	.L40a6
.L4094:
	add	r2, #1
	add	r1, #4
	cmp	r2, #0x5f
	bgt	.L40a6
	ldrh	r3, [r1, #2]
	ldr	r4, =0xffff
	cmp	r3, r4
	bne	.L4094
	mov	r0, r2
.L40a6:
	pop	{r1}
	bx	r1
.func_end Func_4080

.thumb_func_start Func_40b4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	Func_4080
	mov	r1, r6
	mov	r2, #0
	mov	r5, r0
	bl	Func_3fa4
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_40b4

.thumb_func_start Func_40d0
	push	{lr}
	mov	r2, r1
	ldr	r1, =iwram_1b10
	lsl	r3, r0, #2
	ldrh	r1, [r1, r3]
	bl	Func_3fa4
	pop	{r1}
	bx	r1
.func_end Func_40d0
