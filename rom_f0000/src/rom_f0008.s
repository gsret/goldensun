	.include "macros.inc"

.arm_func_start Func_f0008
	smull	r12, r0, r1, r0
	smlal	r12, r0, r2, r3
	ldm	sp, {r2, r3}
	smlal	r12, r0, r2, r3
	lsl	r0, #16
	orr	r0, r12, lsr #16
	bx	lr
.func_end Func_f0008

.arm_func_start Func_f0024
	push	{r5, r6, r7, r8, r9, r10, r11, lr}
	mov	r10, r2
	ldr	r2, .Lf00f4	@ .Lf0124
	adr	r3, .Lf0124
	sub	r2, r3, r2
	adr	r4, .Lf0104
	mov	r5, #8
.Lf0040:
	ldr	r6, [r3], #4
	add	r6, r2
	str	r6, [r4], #4
	subs	r5, #1
	bne	.Lf0040
	mov	r11, #7
	ldrh	r3, [r0], #2
	mov	r2, #0
	mov	r5, #0
	mov	r9, #0xf
.Lf0068:
	mov	r8, #8
.Lf006c:
	mov	r7, #0x20
.Lf0070:
	bl	.Lf00f8
	lsr	r6, r5, #25
	bl	.Lf00f8
	orr	r6, r5, lsr #17
	bl	.Lf00f8
	orr	r6, r5, lsr #9
	bl	.Lf00f8
	orr	r6, r5, lsr #1
	add	r6, r10
	str	r6, [r1], #4
	bl	.Lf00f8
	lsr	r6, r5, #25
	bl	.Lf00f8
	orr	r6, r5, lsr #17
	bl	.Lf00f8
	orr	r6, r5, lsr #9
	bl	.Lf00f8
	orr	r6, r5, lsr #1
	add	r6, r10
	str	r6, [r1], #0x3c
	subs	r7, #1
	bne	.Lf0070
	sub	r1, #0x800
	add	r1, #8
	subs	r8, #1
	bne	.Lf006c
	sub	r1, #0x40
	add	r1, #0x800
	subs	r9, #1
	bne	.Lf0068
	pop	{r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr

	.word	0x80808080
.Lf00f4:
	.word	.Lf0124

.Lf00f8:
	and	r12, r3, #7
	ldr	pc, [pc, r12, lsl #2]
	nop

.Lf0104:
	.space	0x20

.Lf0124:
	.word	.Lf0144
	.word	.Lf0160
	.word	.Lf0200
	.word	.Lf01b0
	.word	.Lf0144
	.word	.Lf0188
	.word	.Lf0230
	.word	.Lf01d8

.Lf0144:
	lsr	r3, #2
	subs	r2, #2
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.Lf0160:
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
.Lf0188:
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
.Lf01b0:
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
.Lf01d8:
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
.Lf0200:
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
.Lf0230:
	ror	r5, r3, #10
	and	r5, #0xfe000000
	lsr	r3, #10
	subs	r2, #0xa
	movpl	pc, lr
	ldrh	r12, [r0], #2
	add	r2, #0x10
	orr	r3, r12, lsl r2
	mov	pc, lr
.func_end Func_f0024
