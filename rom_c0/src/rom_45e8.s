	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_45e8
	ldr	r0, =.L779c
	bx	lr
.func_end Func_45e8

.thumb_func_start Func_45f0
	push	{lr}
	ldr	r3, =iwram_1f70
	ldr	r4, =.L795c
	mov	r1, #0xf
	add	r2, r3, #7
	mov	r12, r3
.L45fc:
	mov	r3, r0
	and	r3, r1
	ldrb	r3, [r4, r3]
	strb	r3, [r2]
	sub	r2, #1
	lsr	r0, #4
	cmp	r2, r12
	bge	.L45fc
	ldr	r2, =iwram_1f70
	mov	r3, #0
	strb	r3, [r2, #8]
	pop	{r0}
	bx	r0
.func_end Func_45f0

.thumb_func_start Func_4620
	push	{r5, r6, r7, lr}
	mov	r6, r0
	sub	sp, #8
	ldr	r4, =.L7970
	mov	r1, #0x20
	ldr	r7, =iwram_1f70
	cmp	r6, #0
	bge	.L4634
	neg	r6, r6
	mov	r1, #0x2d
.L4634:
	ldmia	r4!, {r5}
	mov	r2, #9
	cmp	r6, r5
	bcs	.L464e
	mov	r3, #0x20
.L463e:
	sub	r2, #1
	strb	r3, [r7]
	add	r7, #1
	cmp	r2, #0
	beq	.L464e
	ldmia	r4!, {r5}
	cmp	r6, r5
	bcc	.L463e
.L464e:
	strb	r1, [r7]
	sub	r4, #4
	add	r7, #1
	cmp	r2, #0
	beq	.L467e
.L4658:
	ldmia	r4!, {r5}
	mov	r0, r6
	mov	r1, r5
	str	r2, [sp, #4]
	str	r4, [sp]
	bl	Func_b60_from_thumb
	mov	r3, r0
	add	r3, #0x30
	strb	r3, [r7]
	mov	r3, r5
	mul	r3, r0
	ldr	r2, [sp, #4]
	sub	r2, #1
	add	r7, #1
	sub	r6, r3
	ldr	r4, [sp]
	cmp	r2, #0
	bne	.L4658
.L467e:
	mov	r3, r6
	add	r3, #0x30
	strb	r3, [r7]
	mov	r3, #0
	strb	r3, [r7, #1]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_4620

.thumb_func_start Func_4698
	push	{lr}
	ldr	r1, =iwram_1cbc
	mov	r2, #0
	ldr	r3, [r1]
	cmp	r2, r0
	bcs	.L46bc
	ldr	r1, .L46b4	@ 0xf000
.L46a6:
	add	r2, #1
	strh	r1, [r3]
	add	r3, #2
	cmp	r2, r0
	bcc	.L46a6
	ldr	r1, =iwram_1cbc
	b	.L46bc

	.align	2, 0
.L46b4:
	.word	0xf000
	.pool

.L46bc:
	str	r3, [r1]
	pop	{r0}
	bx	r0
.func_end Func_4698

.thumb_func_start Func_46c4
	push	{r5, lr}
	ldr	r3, =iwram_1ac4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L4700
	ldr	r4, =iwram_1cbc
	ldrb	r3, [r0]
	ldr	r2, [r4]
	mov	r1, #0
	add	r0, #1
	cmp	r3, #0
	beq	.L46fe
	mov	r5, #0xf0
	ldr	r4, =0x6002500
	lsl	r5, #8
.L46e2:
	orr	r3, r5
	strh	r3, [r2]
	add	r2, #2
	cmp	r2, r4
	bne	.L46ee
	ldr	r2, =0x6002000
.L46ee:
	add	r1, #1
	cmp	r1, #0x1f
	bhi	.L46fc
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0
	bne	.L46e2
.L46fc:
	ldr	r4, =iwram_1cbc
.L46fe:
	str	r2, [r4]
.L4700:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_46c4

.thumb_func_start Func_4718
	push	{r5, lr}
	mov	r5, r1
	sub	r3, r5, #1
	cmp	r3, #7
	bls	.L4724
	mov	r5, #8
.L4724:
	bl	Func_45f0
	ldr	r0, =iwram_1f78
	sub	r0, r5
	bl	Func_46c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_4718

.thumb_func_start Func_473c
	push	{r5, lr}
	mov	r5, r1
	sub	r3, r5, #1
	cmp	r3, #9
	bls	.L4748
	mov	r5, #0xa
.L4748:
	bl	Func_4620
	ldr	r0, =iwram_1f7a
	sub	r0, r5
	bl	Func_46c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_473c

.thumb_func_start Func_4760
	sub	sp, #4
	ldr	r3, =0xf000f000
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0x6002000
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000140
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =iwram_1cbc
	ldr	r3, =0x6002000
	str	r3, [r2]
	mov	r2, #0x80
	ldr	r3, =REG_BG0CNT
	lsl	r2, #3
	strh	r2, [r3]
	add	sp, #4
	bx	lr
.func_end Func_4760

.thumb_func_start Func_479c
	push	{lr}
	ldr	r0, =0x13
	bl	Func_2f40
	mov	r1, #0xc0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =.L777c
	ldr	r1, =0x50001e0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	mov	r2, #0x83
	ldr	r3, =0x50001e8
	lsl	r2, #7
	strh	r2, [r3]
	ldr	r2, =0x3960
	add	r3, #2
	strh	r2, [r3]
	mov	r2, #0xc5
	lsl	r2, #6
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x2920
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x49a0
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x51c0
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =0x59e0
	add	r3, #2
	strh	r2, [r3]
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L779c
	add	r1, #0x20
	ldr	r2, =0x800000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	pop	{r0}
	bx	r0
.func_end Func_479c

.thumb_func_start Func_4838
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L779c
	ldr	r1, =0x5000200
	ldr	r2, =0x800000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_4838

	.section .rodata

.L777c:
	.incrom 0x777c, 0x779c
.L779c:
	.incrom 0x779c, 0x795c
.L795c:
	.incrom 0x795c, 0x7970
.L7970:
	.incrom 0x7970, 0x7994
