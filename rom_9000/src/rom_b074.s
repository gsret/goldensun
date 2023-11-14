	.include "macros.inc"

.thumb_func_start Func_b074
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r12, r0
	mov	r11, r3
	mov	r3, r12
	add	r3, #0x20
	ldrb	r3, [r3]
	lsr	r0, r3, #1
	mov	r3, #0x21
	add	r3, r12
	mov	r14, r3
	ldrb	r3, [r3]
	sub	sp, #8
	lsr	r4, r3, #1
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r3, #4
	str	r3, [sp]
	mov	r10, r2
	ldr	r2, [sp, #0x2c]
	mov	r3, #1
	mov	r9, r3
	ldmia	r2!, {r3}
	ldr	r5, [r2]
	mov	r2, #0x80
	lsl	r2, #9
	cmp	r3, r2
	bgt	.Lb0ba
	cmp	r5, r2
	ble	.Lb0ca
.Lb0ba:
	mov	r2, #3
	mov	r9, r2
	mov	r3, #0x10
	mov	r2, #8
	str	r3, [sp, #4]
	str	r2, [sp]
	lsl	r0, #1
	lsl	r4, #1
.Lb0ca:
	asr	r1, #16
	sub	r7, r1, r0
	mov	r3, r11
	mov	r0, r10
	mov	r2, r14
	mov	r8, r1
	sub	r1, r3, r0
	ldrb	r3, [r2]
	mov	r2, r12
	add	r2, #0x23
	ldrb	r2, [r2]
	lsl	r2, #24
	asr	r2, #24
	lsr	r3, #1
	sub	r3, r2
	mul	r3, r5
	asr	r1, #16
	sub	r1, r4
	ldr	r4, =0xffff
	add	r3, r4
	asr	r3, #16
	sub	r6, r1, r3
	mov	r0, r12
	mov	r1, #4
	ldrb	r2, [r0, #5]
	neg	r1, r1
	mov	r3, r1
	mov	r5, r9
	and	r3, r2
	orr	r3, r5
	ldr	r2, =0xfffffe00
	strb	r3, [r0, #5]
	ldr	r4, .Lb144	@ 0x1ff
	ldrh	r0, [r0, #6]
	mov	r3, r2
	and	r7, r4
	and	r3, r0
	orr	r3, r7
	mov	r0, r12
	strh	r3, [r0, #6]
	strb	r6, [r0, #4]
	ldr	r0, [sp, #4]
	mov	r3, r8
	sub	r7, r3, r0
	ldr	r3, [sp, #0x28]
	mov	r0, r11
	sub	r3, r0, r3
	ldr	r0, [sp]
	asr	r3, #16
	sub	r6, r3, r0
	mov	r3, r12
	add	r3, #0xc
	ldrb	r0, [r3, #5]
	and	r1, r0
	orr	r1, r5
	strb	r1, [r3, #5]
	ldrh	r1, [r3, #6]
	and	r7, r4
	and	r2, r1
	orr	r2, r7
	b	.Lb150

	.align	2, 0
.Lb144:
	.word	0x1ff
	.pool

.Lb150:
	strh	r2, [r3, #6]
	strb	r6, [r3, #4]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b074

.thumb_func_start Func_b168
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	add	r0, #0x20
	ldrb	r0, [r0]
	sub	sp, #0x44
	lsr	r0, #1
	str	r0, [sp, #0x1c]
	mov	r0, r7
	add	r0, #0x21
	str	r0, [sp, #0x14]
	ldrb	r0, [r0]
	lsr	r0, #1
	str	r0, [sp, #0x18]
	mov	r4, #8
	mov	r0, #4
	str	r4, [sp, #0x10]
	str	r0, [sp, #0xc]
	ldmia	r2!, {r4}
	ldmia	r1!, {r0}
	ldr	r2, [r2]
	mov	r9, r2
	ldmia	r1!, {r2}
	str	r2, [sp, #4]
	mov	r8, r4
	lsl	r3, #16
	ldmia	r1!, {r4}
	lsr	r3, #16
	ldr	r6, [r1]
	mov	r10, r0
	mov	r1, r3
	mov	r0, r7
	mov	r11, r4
	bl	Func_aa0c
	mov	r5, r0
	cmp	r5, #0
	bne	.Lb1da
	mov	r0, #0x80
	lsl	r0, #9
	cmp	r8, r0
	bne	.Lb1da
	cmp	r9, r8
	bne	.Lb1da
	ldrh	r2, [r7, #0x1e]
	mov	r3, r2
	cmp	r3, #0
	bne	.Lb1dc
	mov	r1, #0
	str	r1, [sp, #8]
	str	r1, [sp, #0x20]
	b	.Lb222
.Lb1da:
	ldrh	r2, [r7, #0x1e]
.Lb1dc:
	mov	r3, #1
	str	r3, [sp, #8]
	add	r0, sp, #0x24
	ldr	r3, [r0, #4]
	ldr	r4, =0xffff0000
	and	r3, r4
	orr	r3, r2
	str	r3, [r0, #4]
	mov	r1, r8
	lsl	r3, r1, #8
	ldr	r1, [sp, #0x24]
	lsr	r3, #16
	mov	r2, r9
	and	r1, r4
	orr	r1, r3
	lsl	r3, r2, #8
	ldr	r2, =0xffff
	lsr	r3, #16
	lsl	r3, #16
	and	r1, r2
	orr	r1, r3
	str	r1, [sp, #0x24]
	cmp	r5, #0
	beq	.Lb21c
	ldrh	r3, [r0]
	neg	r3, r3
	lsl	r3, #16
	mov	r2, r4
	lsr	r3, #16
	and	r2, r1
	orr	r2, r3
	str	r2, [sp, #0x24]
.Lb21c:
	bl	Func_3d28
	str	r0, [sp, #0x20]
.Lb222:
	mov	r3, #0x80
	lsl	r3, #9
	cmp	r8, r3
	bgt	.Lb22e
	cmp	r9, r3
	ble	.Lb246
.Lb22e:
	ldr	r4, [sp, #0x1c]
	ldr	r0, [sp, #0x18]
	mov	r3, #3
	lsl	r4, #1
	lsl	r0, #1
	mov	r1, #0x10
	mov	r2, #8
	str	r3, [sp, #8]
	str	r4, [sp, #0x1c]
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
.Lb246:
	ldr	r3, [sp, #4]
	ldr	r4, =0xff9c0000
	cmp	r3, r4
	bgt	.Lb256
	mov	r0, #1
	str	r0, [sp]
	mov	r4, #0
	b	.Lb260
.Lb256:
	mov	r1, r11
	asr	r3, r1, #17
	add	r3, #0xa
	str	r3, [sp]
	mov	r4, #2
.Lb260:
	mov	r2, r11
	sub	r3, r2, r6
	ldr	r0, [sp, #0xc]
	asr	r3, #16
	sub	r6, r3, r0
	mov	r3, r7
	add	r3, #0x26
	ldrb	r2, [r3]
	mov	r3, #1
	mov	r1, r10
	and	r3, r2
	asr	r5, r1, #16
	cmp	r3, #0
	beq	.Lb2dc
	cmp	r6, #0x9f
	bgt	.Lb2d8
	mov	r0, r7
	add	r0, #0xc
	ldrb	r2, [r0, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	ldr	r2, [sp, #8]
	orr	r3, r2
	strb	r3, [r0, #5]
	ldr	r2, [sp, #0x20]
	mov	r3, #0x1f
	ldrb	r1, [r0, #7]
	and	r2, r3
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r2, #1
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #7]
	ldr	r1, [sp, #0x10]
	ldr	r3, .Lb2c4	@ 0x1ff
	sub	r2, r5, r1
	and	r2, r3
	ldrh	r1, [r0, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #6]
	strb	r6, [r0, #4]
	mov	r1, r4
	bl	Func_3dec
	b	.Lb2dc

	.align	2, 0
.Lb2c4:
	.word	0x1ff
	.pool

.Lb2d8:
	mov	r2, r10
	asr	r5, r2, #16
.Lb2dc:
	ldr	r3, [sp, #0x1c]
	sub	r2, r5, r3
	mov	r3, r7
	add	r3, #0x22
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r4, r8
	mul	r4, r3
	ldr	r0, =0xffff
	mov	r3, r4
	add	r3, r0
	asr	r3, #16
	add	r4, r2, r3
	ldr	r3, [sp, #4]
	mov	r2, r11
	sub	r1, r2, r3
	ldr	r2, [sp, #0x18]
	asr	r1, #16
	sub	r1, r2
	ldr	r2, [sp, #0x14]
	ldrb	r3, [r2]
	mov	r2, r7
	add	r2, #0x23
	ldrb	r2, [r2]
	lsl	r2, #24
	asr	r2, #24
	lsr	r3, #1
	sub	r3, r2
	mov	r2, r9
	mul	r2, r3
	mov	r3, r2
	add	r3, r0
	asr	r3, #16
	sub	r6, r1, r3
	cmp	r4, #0xef
	bgt	.Lb374
	cmp	r6, #0x9f
	bgt	.Lb374
	ldr	r3, .Lb364	@ 0x1ff
	mov	r0, r7
	ldrh	r2, [r0, #6]
	and	r4, r3
	ldr	r3, =0xfffffe00
	and	r3, r2
	orr	r3, r4
	strh	r3, [r0, #6]
	strb	r6, [r0, #4]
	ldrb	r2, [r0, #5]
	mov	r3, #4
	ldr	r4, [sp, #8]
	neg	r3, r3
	and	r3, r2
	orr	r3, r4
	strb	r3, [r0, #5]
	ldr	r1, [sp, #0x20]
	mov	r3, #0x1f
	and	r1, r3
	str	r1, [sp, #0x20]
	mov	r3, #0x3f
	ldrb	r2, [r0, #7]
	neg	r3, r3
	lsl	r1, #1
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #7]
	ldr	r1, [sp]
	b	.Lb370

	.align	2, 0
.Lb364:
	.word	0x1ff
	.pool

.Lb370:
	bl	Func_3dec
.Lb374:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b168

.thumb_func_start Func_b388
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #0x14]
	mov	r1, #1
	str	r2, [sp, #0x10]
	str	r1, [sp]
	mov	r6, r3
	ldr	r3, =iwram_1e68
	ldr	r3, [r3]
	mov	r2, #4
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #0
	beq	.Lb3b2
	b	.Lb658
.Lb3b2:
	add	r3, sp, #0x20
	mov	r10, r3
	mov	r1, r10
	ldr	r0, [sp, #0x14]
	bl	Func_5268
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r5, r0
	cmp	r3, #0
	bne	.Lb3ca
	b	.Lb658
.Lb3ca:
	mov	r2, #0x20
	ldr	r3, [r1]
	neg	r2, r2
	cmp	r3, r2
	bge	.Lb3d6
	b	.Lb658
.Lb3d6:
	mov	r1, #0x88
	lsl	r1, #1
	cmp	r3, r1
	ble	.Lb3e0
	b	.Lb658
.Lb3e0:
	mov	r1, r10
	ldr	r3, [r1, #4]
	cmp	r3, r2
	bge	.Lb3ea
	b	.Lb658
.Lb3ea:
	cmp	r3, #0xd0
	ble	.Lb3f0
	b	.Lb658
.Lb3f0:
	ldrb	r2, [r7, #0x1d]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb3fe
	ldr	r5, [r7, #0x18]
	b	.Lb40a
.Lb3fe:
	ldr	r3, =Func_888
	mov	r0, r5
	ldr	r1, [r7, #0x18]
	.call_via r3
	mov	r5, r0
.Lb40a:
	mov	r3, r7
	add	r3, #0x20
	ldrb	r3, [r3]
	mov	r2, #0x21
	add	r2, r7
	lsr	r3, #1
	mov	r11, r3
	ldrb	r3, [r2]
	lsl	r1, r6, #16
	lsr	r3, #1
	str	r3, [sp, #8]
	lsr	r1, #16
	mov	r3, #8
	mov	r0, r7
	mov	r9, r2
	str	r3, [sp, #4]
	bl	Func_aa0c
	mov	r1, #0x80
	lsl	r1, #3
	ldr	r3, =0xfffff800
	add	r4, r5, r1
	str	r0, [sp, #0xc]
	and	r4, r3
	ldr	r3, [sp, #0x10]
	ldmia	r3!, {r1}
	mov	r2, r3
	ldr	r6, =Func_888
	mov	r0, r4
	str	r2, [sp, #0x10]
	.call_via r6
	mov	r5, r0
	ldr	r1, [r3]
	mov	r0, r4
	.call_via r6
	ldr	r3, =0x1f7ff
	mov	r14, r0
	cmp	r5, r3
	ble	.Lb464
	mov	r5, #0xfc
	lsl	r5, #9
.Lb464:
	cmp	r14, r3
	ble	.Lb46e
	mov	r1, #0xfc
	lsl	r1, #9
	mov	r14, r1
.Lb46e:
	mov	r3, r7
	add	r3, #0x22
	mov	r0, #0
	ldrsb	r0, [r3, r0]
	mov	r1, r5
	.call_via r6
	mov	r2, r9
	mov	r8, r0
	add	r3, #1
	ldrb	r0, [r2]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	lsr	r0, #1
	sub	r0, r3
	mov	r1, r14
	.call_via r6
	mov	r3, #0x80
	lsl	r3, #9
	neg	r6, r0
	cmp	r5, r3
	bgt	.Lb4a2
	cmp	r14, r3
	ble	.Lb4b8
.Lb4a2:
	ldr	r2, [sp, #8]
	mov	r3, #3
	mov	r1, r11
	str	r3, [sp]
	lsl	r1, #1
	lsl	r2, #1
	mov	r3, #0x10
	mov	r11, r1
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	b	.Lb4ca
.Lb4b8:
	cmp	r5, r3
	bne	.Lb4ca
	ldrh	r3, [r7, #0x1e]
	cmp	r3, #0
	bne	.Lb4ca
	cmp	r14, r5
	bne	.Lb4ca
	mov	r1, #0
	str	r1, [sp]
.Lb4ca:
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.Lb520
	add	r0, sp, #0x18
	ldr	r2, [r0, #4]
	ldr	r1, =0xffff0000
	ldrh	r3, [r7, #0x1e]
	and	r2, r1
	orr	r2, r3
	str	r2, [r0, #4]
	ldr	r4, [sp, #0x18]
	lsl	r3, r5, #8
	lsr	r3, #16
	and	r4, r1
	orr	r4, r3
	ldr	r3, [sp, #0xc]
	str	r4, [sp, #0x18]
	cmp	r3, #0
	beq	.Lb506
	ldrh	r3, [r0]
	neg	r3, r3
	mov	r2, r1
	lsl	r3, #16
	lsr	r3, #16
	and	r2, r4
	mov	r1, r8
	orr	r2, r3
	neg	r1, r1
	str	r2, [sp, #0x18]
	mov	r8, r1
.Lb506:
	mov	r2, r14
	lsl	r3, r2, #8
	ldr	r1, =0xffff
	ldr	r2, [sp, #0x18]
	lsr	r3, #16
	lsl	r3, #16
	and	r2, r1
	orr	r2, r3
	str	r2, [sp, #0x18]
	bl	Func_3d28
	mov	r5, r0
	b	.Lb54a
.Lb520:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	beq	.Lb548
	mov	r1, r8
	neg	r1, r1
	mov	r5, #8
	mov	r8, r1
	b	.Lb54a

	.pool_aligned

.Lb548:
	mov	r5, #0
.Lb54a:
	mov	r3, r10
	ldr	r2, [r3]
	mov	r1, r11
	sub	r2, r1
	ldr	r3, =0x1ff
	add	r2, r8
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	mov	r2, r10
	ldr	r1, [sp, #8]
	ldr	r3, [r2, #4]
	sub	r3, r1
	add	r3, r6
	strb	r3, [r7, #4]
	ldrb	r2, [r7, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	ldr	r2, [sp]
	orr	r3, r2
	strb	r3, [r7, #5]
	mov	r2, r5
	mov	r3, #0x1f
	and	r2, r3
	ldrb	r1, [r7, #7]
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r2, #1
	and	r3, r1
	b	.Lb598

	.pool_aligned

.Lb598:
	orr	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [sp, #0x58]
	cmp	r3, #0
	bne	.Lb5c4
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r2, #0x80
	lsl	r2, #2
	sub	r2, r3
	lsr	r3, r2, #31
	add	r2, r3
	asr	r2, #1
	mov	r1, r2
	add	r1, #0x80
	cmp	r1, #0
	bgt	.Lb5bc
	mov	r1, #1
.Lb5bc:
	mov	r0, r7
	bl	Func_3dec
	b	.Lb5cc
.Lb5c4:
	mov	r0, r7
	ldr	r1, [sp, #0x58]
	bl	Func_3dec
.Lb5cc:
	mov	r3, r7
	add	r3, #0x26
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb670
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	add	r0, sp, #0x2c
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r0, #4]
	ldr	r3, [r2, #8]
	mov	r1, r10
	str	r3, [r0, #8]
	bl	Func_5268
	mov	r3, r10
	ldr	r1, [sp, #4]
	ldr	r2, [r3]
	mov	r0, r7
	ldr	r3, =0x1ff
	add	r0, #0xc
	sub	r2, r1
	and	r2, r3
	ldrh	r1, [r0, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r1, [sp, #4]
	mov	r2, r10
	ldr	r3, [r2, #4]
	lsr	r2, r1, #1
	sub	r3, r2
	add	r3, #2
	strb	r3, [r0, #4]
	ldrb	r2, [r0, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	ldr	r2, [sp]
	orr	r3, r2
	strb	r3, [r0, #5]
	mov	r3, #0x1f
	and	r5, r3
	ldrb	r2, [r0, #7]
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r1, r5, #1
	b	.Lb63c

	.pool_aligned

.Lb63c:
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #7]
	ldr	r3, [sp, #0x58]
	cmp	r3, #0
	bne	.Lb650
	mov	r1, #0
	bl	Func_3dec
	b	.Lb670
.Lb650:
	ldr	r1, [sp, #0x58]
	bl	Func_3dec
	b	.Lb670
.Lb658:
	ldrb	r2, [r7, #0x1d]
	mov	r5, #1
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Lb670
	ldrb	r0, [r7, #0x1c]
	bl	Func_3f78
	mov	r3, r7
	add	r3, #0x25
	strb	r5, [r3]
.Lb670:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b388

.thumb_func_start Func_b684
	push	{lr}
	mov	r12, r0
	cmp	r0, #0
	beq	.Lb6b4
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb6ac
	mov	r4, r12
	add	r4, #0x28
	mov	r0, r3
.Lb69c:
	ldmia	r4!, {r2}
	ldrb	r3, [r2, #5]
	cmp	r3, #0xf
	beq	.Lb6a6
	strb	r1, [r2, #5]
.Lb6a6:
	sub	r0, #1
	cmp	r0, #0
	bne	.Lb69c
.Lb6ac:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.Lb6b4:
	pop	{r0}
	bx	r0
.func_end Func_b684

.thumb_func_start Func_b6b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	sub	sp, #4
	mov	r7, r1
	mov	r4, r2
	mov	r8, r3
	cmp	r6, #7
	bls	.Lb6d2
.Lb6ce:
	mov	r0, #0
	b	.Lb77e
.Lb6d2:
	ldr	r3, =iwram_1e68
	ldr	r5, [r3]
	mov	r0, r4
	lsl	r3, r6, #3
	add	r5, r3
	str	r4, [sp]
	bl	_Func_185008
	ldr	r4, [sp]
	ldr	r2, =.L12fa0
	lsl	r3, r6, #12
	add	r5, #0x1c
	orr	r3, r4
	str	r3, [r5]
	mov	r1, #2
	ldrsh	r3, [r2, r1]
	lsl	r3, #16
	lsr	r3, #16
	mov	r10, r0
	str	r7, [r5, #4]
	ldrh	r0, [r2]
	add	r1, r2, #6
	mov	r5, #0
.Lb700:
	add	r2, #4
	cmp	r3, #0
	beq	.Lb6ce
	cmp	r3, r4
	beq	.Lb71e
	add	r5, #1
	cmp	r5, #0xff
	bhi	.Lb71e
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	lsl	r3, #16
	lsr	r3, #16
	ldrh	r0, [r2]
	add	r1, #4
	b	.Lb700
.Lb71e:
	bl	Func_2f40
	mov	r1, r7
	bl	Func_5340
	ldr	r3, [r7]
	mov	r4, r7
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb746
	mov	r2, r3
.Lb734:
	add	r3, r2, r7
	add	r5, #1
	stmia	r4!, {r3}
	cmp	r5, #0xff
	bhi	.Lb746
	ldr	r3, [r4]
	mov	r2, r3
	cmp	r3, #0
	bne	.Lb734
.Lb746:
	mov	r1, r8
	cmp	r1, #0
	beq	.Lb774
	mov	r2, r8
	sub	r2, #1
	add	r5, r4, #4
	add	r0, r7, r0
	cmp	r2, #4
	bls	.Lb75a
	mov	r2, #0
.Lb75a:
	ldr	r3, =Data_92b8
	lsl	r2, #8
	add	r2, r3
	cmp	r5, r0
	bcs	.Lb774
.Lb764:
	ldrb	r4, [r5]
	cmp	r4, #0xdf
	bhi	.Lb76e
	ldrb	r4, [r2, r4]
	strb	r4, [r5]
.Lb76e:
	add	r5, #1
	cmp	r5, r0
	bcc	.Lb764
.Lb774:
	mov	r2, r10
	ldrb	r3, [r2]
	ldrb	r2, [r2, #1]
	mov	r0, r2
	mul	r0, r3
.Lb77e:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b6b8

	.section .rodata

.L12fa0:
	.incrom 0x12fa0, 0x1307c
