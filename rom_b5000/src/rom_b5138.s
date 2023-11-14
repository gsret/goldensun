	.include "macros.inc"

.arm_func_start Func_b5138
	push	{r5, r6, r7, r8, r9, r10, r11, lr}
	ldr	r2, .Lb5208
	adr	r3, .Lb5238
	sub	r2, r3, r2
	adr	r4, .Lb5218
	mov	r5, #8
.Lb5150:
	ldr	r6, [r3], #4
	add	r6, r2
	str	r6, [r4], #4
	subs	r5, #1
	bne	.Lb5150
	mov	r11, #7
	ldrh	r3, [r0], #2
	mov	r2, #0
	mov	r5, #0
	mov	r9, #0xf
	ldr	r10, .Lb5204
.Lb517c:
	mov	r8, #8
.Lb5180:
	mov	r7, #0x20
.Lb5184:
	bl	.Lb520c
	lsr	r6, r5, #25
	bl	.Lb520c
	orr	r6, r5, lsr #17
	bl	.Lb520c
	orr	r6, r5, lsr #9
	bl	.Lb520c
	orr	r6, r5, lsr #1
	add	r6, r10
	str	r6, [r1], #4
	bl	.Lb520c
	lsr	r6, r5, #25
	bl	.Lb520c
	orr	r6, r5, lsr #17
	bl	.Lb520c
	orr	r6, r5, lsr #9
	bl	.Lb520c
	orr	r6, r5, lsr #1
	add	r6, r10
	str	r6, [r1], #0x3c
	subs	r7, #1
	bne	.Lb5184
	sub	r1, #0x800
	add	r1, #8
	subs	r8, #1
	bne	.Lb5180
	sub	r1, #0x40
	add	r1, #0x800
	subs	r9, #1
	bne	.Lb517c
	pop	{r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr

.Lb5204:
	.word	0x60606060
.Lb5208:
	.word	.Lb5238

.Lb520c:
	and	r12, r3, #7
	ldr	pc, [pc, r12, lsl #2]
	.align	3

.Lb5218:
	.space	0x20

.Lb5238:
	.word	.Lb5258
	.word	.Lb5274
	.word	.Lb5314
	.word	.Lb52c4
	.word	.Lb5258
	.word	.Lb529c
	.word	.Lb5344
	.word	.Lb52ec

.Lb5258:
	lsr	r3, #2
	subs	r2, #2
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.Lb5274:
	and	r12, r3, #8
	lsrs	r3, #4
	add	r12, #8
	add	r5, r12, lsl #22
	subs	r2, #4
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.Lb529c:
	and	r12, r3, #8
	lsrs	r3, #4
	add	r12, #8
	sub	r5, r12, lsl #22
	subs	r2, #4
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.Lb52c4:
	and	r12, r11, r3, lsr #3
	lsr	r3, #6
	add	r12, #3
	add	r5, r12, lsl #25
	subs	r2, #6
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.Lb52ec:
	and	r12, r11, r3, lsr #3
	lsr	r3, #6
	add	r12, #3
	sub	r5, r12, lsl #25
	subs	r2, #6
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.Lb5314:
	mov	r12, #0xf
	ands	r12, r3, lsr #4
	add	r12, #0xb
	rsbcs	r12, #0
	add	r5, r12, lsl #25
	lsr	r3, #8
	subs	r2, #8
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.Lb5344:
	ror	r5, r3, #10
	and	r5, #0xfe000000
	lsr	r3, #10
	subs	r2, #0xa
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.func_end Func_b5138
