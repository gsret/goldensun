	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_191cc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r2, #0xa0
	mov	r9, r3
	lsl	r2, #3
	add	r2, r9
	mov	r3, #0
	sub	sp, #0x18
	mov	r10, r2
	mov	r11, r3
.L191ee:
	mov	r3, r10
	ldrh	r2, [r3, #0x16]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L191fc
	b	.L19618
.L191fc:
	ldr	r3, =iwram_1800
	mov	r2, r10
	ldr	r3, [r3]
	ldr	r6, [r2]
	b	.L1960c
.L19206:
	mov	r2, r10
	ldrh	r3, [r2, #0x12]
	mov	r7, r6
	add	r7, #0x10
	cmp	r3, #4
	bne	.L1921a
	mov	r3, #2
	strh	r3, [r6, #0xc]
	mov	r3, #8
	strb	r3, [r6, #5]
.L1921a:
	ldrb	r3, [r6, #5]
	sub	r3, #2
	cmp	r3, #0x10
	bls	.L19224
	b	.L195e0
.L19224:
	ldr	r2, =.L1922c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1922c:
	.word	.L1927c
	.word	.L195e0
	.word	.L1947c
	.word	.L19310
	.word	.L19380
	.word	.L193fc
	.word	.L19548
	.word	.L195da
	.word	.L195da
	.word	.L195da
	.word	.L195da
	.word	.L195e0
	.word	.L194f6
	.word	.L194f6
	.word	.L194f6
	.word	.L194e0
	.word	.L1950c

	.pool_aligned

.L1927c:
	ldr	r1, =0x12b6
	add	r1, r9
	ldrh	r3, [r1]
	cmp	r3, #0x60
	bne	.L19288
	b	.L195e0
.L19288:
	ldr	r3, =Data_368d4
	lsl	r2, r0, #7
	add	r2, r3
	ldrh	r0, [r1]
	mov	r1, #0x80
	bl	Func_3fa4
	ldr	r3, .L192d0	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r7, #8]
	strb	r3, [r6, #0xe]
	ldrb	r3, [r7, #5]
	mov	r5, #0xd
	neg	r5, r5
	and	r5, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r5, r3
	mov	r3, #0x20
	ldrb	r2, [r7, #7]
	orr	r5, r3
	mov	r3, #0x3f
	mov	r4, r3
	and	r5, r3
	mov	r3, #0x80
	and	r4, r2
	orr	r5, r3
	strb	r4, [r7, #7]
	strb	r5, [r7, #5]
	ldrb	r3, [r6, #8]
	b	.L192e0

	.align	2, 0
.L192d0:
	.word	0x3ff
	.pool

.L192e0:
	mov	r8, r3
	ldr	r3, =iwram_1800
	ldr	r2, =.L33e60
	ldr	r0, [r3]
	mov	r1, #0x50
	str	r2, [sp, #4]
	str	r4, [sp]
	bl	Func_b50_from_thumb
	ldr	r2, [sp, #4]
	ldrb	r3, [r2, r0]
	mov	r2, r8
	add	r3, r2, r3
	add	r3, #2
	strb	r3, [r7, #4]
	mov	r3, #4
	neg	r3, r3
	ldr	r4, [sp]
	and	r5, r3
	sub	r3, #0x3b
	and	r3, r4
	strb	r5, [r7, #5]
	strb	r3, [r7, #7]
	b	.L195e0
.L19310:
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L1931e
	b	.L195e0
.L1931e:
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	lsl	r2, r5, #1
	lsl	r3, r0, #1
	add	r2, r5
	add	r3, r0
	lsr	r3, #16
	lsr	r2, #16
	ldrh	r1, [r6, #6]
	add	r2, r3
	lsr	r2, #1
	add	r1, r2
	ldr	r3, .L19370	@ 0x1ff
	sub	r1, #1
	and	r1, r3
	ldrh	r2, [r7, #6]
	ldr	r3, =0xfffffe00
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #6]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	lsl	r2, r5, #1
	lsl	r3, r0, #1
	add	r2, r5
	add	r3, r0
	lsr	r2, #16
	lsr	r3, #16
	ldrb	r1, [r6, #8]
	add	r2, r3
	lsr	r2, #1
	add	r1, r2
	sub	r1, #1
	strb	r1, [r7, #4]
	b	.L195e0

	.align	2, 0
.L19370:
	.word	0x1ff
	.pool

.L19380:
	ldrh	r3, [r6, #0xc]
	cmp	r3, #0
	bne	.L19388
	b	.L195b0
.L19388:
	ldr	r1, =0xffff0000
	ldr	r3, [sp, #0x10]
	mov	r2, #0x80
	and	r3, r1
	lsl	r2, #2
	ldr	r5, =0xffff
	orr	r3, r2
	mov	r2, #0x80
	lsl	r2, #18
	and	r3, r5
	orr	r3, r2
	str	r3, [sp, #0x10]
	add	r0, sp, #0x10
	ldr	r3, [r0, #4]
	and	r3, r1
	str	r3, [r0, #4]
	bl	Func_3d28
	mov	r3, #0x1f
	ldrb	r2, [r7, #7]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #5]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, =0xfffb
	ldrh	r2, [r6, #6]
	add	r2, r3
	ldr	r3, .L193e8	@ 0x1ff
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrb	r3, [r6, #8]
	add	r3, #0xfb
	strb	r3, [r7, #4]
	ldrh	r3, [r6, #0xc]
	add	r3, r5
	strh	r3, [r6, #0xc]
	b	.L195e0

	.align	2, 0
.L193e8:
	.word	0x1ff
	.pool

.L193fc:
	mov	r3, #0x80
	add	r5, sp, #0x10
	lsl	r3, #1
	strh	r3, [r5]
	strh	r3, [r5, #2]
	mov	r2, #0xc0
	ldrh	r3, [r6, #0xc]
	lsl	r2, #2
	add	r3, r2
	strh	r3, [r6, #0xc]
	strh	r3, [r5, #4]
	mov	r0, r5
	bl	Func_3d28
	mov	r3, #0x1f
	ldrb	r2, [r7, #7]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r0, #1
	and	r3, r2
	orr	r3, r0
	ldrb	r2, [r7, #5]
	strb	r3, [r7, #7]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r7, #5]
	ldrh	r0, [r5, #4]
	mov	r3, #0xe8
	lsl	r3, #8
	add	r0, r3
	bl	Func_2322
	ldrh	r2, [r6, #6]
	asr	r0, #14
	sub	r2, r0
	ldr	r3, =0x1ff
	sub	r2, #2
	and	r2, r3
	ldrh	r1, [r7, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	ldrh	r0, [r5, #4]
	mov	r2, #0xd0
	lsl	r2, #7
	strh	r3, [r7, #6]
	add	r0, r2
	bl	Func_231c
	ldrb	r3, [r6, #8]
	asr	r0, #14
	sub	r3, r0
	sub	r3, #2
	strb	r3, [r7, #4]
	b	.L195e0

	.pool_aligned

.L1947c:
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1948e
	ldrh	r3, [r6, #0xc]
	add	r3, #1
	strh	r3, [r6, #0xc]
.L1948e:
	ldr	r4, =.L33eb0
	ldrh	r0, [r6, #0xc]
	mov	r1, #0x14
	str	r4, [sp]
	bl	Func_b50_from_thumb
	ldr	r4, [sp]
	lsl	r0, #16
	lsr	r0, #15
	ldrsb	r3, [r4, r0]
	ldrh	r2, [r6, #6]
	add	r2, r3
	ldr	r3, .L194d0	@ 0x1ff
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	mov	r1, #0x14
	ldrh	r0, [r6, #0xc]
	bl	Func_b50_from_thumb
	lsl	r0, #16
	lsr	r0, #15
	ldr	r4, [sp]
	add	r0, #1
	ldrb	r5, [r6, #8]
	ldrb	r3, [r4, r0]
	add	r5, r3
	sub	r5, #2
	strb	r5, [r7, #4]
	b	.L195e0

	.align	2, 0
.L194d0:
	.word	0x1ff
	.pool

.L194e0:
	ldrh	r3, [r6, #0xc]
	ldr	r0, =.L33ee8
	add	r3, #1
	mov	r2, #0xf
	strh	r3, [r6, #0xc]
	and	r3, r2
	ldrb	r1, [r6, #8]
	ldrb	r3, [r0, r3]
	sub	r1, r3
	strb	r1, [r7, #4]
	b	.L195e0
.L194f6:
	ldrh	r3, [r6, #0xc]
	ldr	r0, =.L33ee8
	add	r3, #1
	mov	r2, #0xf
	strh	r3, [r6, #0xc]
	and	r3, r2
	ldrb	r1, [r6, #8]
	ldrb	r3, [r0, r3]
	add	r1, r3
	strb	r1, [r7, #4]
	b	.L195e0
.L1950c:
	ldrh	r3, [r6, #0xc]
	ldr	r4, =.L33ee8
	add	r3, #1
	mov	r0, #0xf
	strh	r3, [r6, #0xc]
	and	r3, r0
	ldrh	r2, [r6, #6]
	ldrsb	r3, [r4, r3]
	sub	r2, r3
	ldr	r3, .L1953c	@ 0x1ff
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrh	r3, [r6, #0xc]
	and	r0, r3
	ldrb	r2, [r6, #8]
	ldrb	r3, [r4, r0]
	add	r2, r3
	strb	r2, [r7, #4]
	b	.L195e0

	.align	2, 0
.L1953c:
	.word	0x1ff
	.pool

.L19548:
	ldrh	r3, [r6, #0xc]
	cmp	r3, #0
	beq	.L195b0
	mov	r3, #0xa0
	lsl	r3, #1
	add	r0, sp, #0x10
	mov	r2, #0
	strh	r3, [r0]
	strh	r3, [r0, #2]
	strh	r2, [r0, #4]
	bl	Func_3d28
	mov	r3, #0x1f
	ldrb	r2, [r7, #7]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #5]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, =0xfff8
	ldrh	r2, [r6, #6]
	add	r2, r3
	ldr	r3, .L195a0	@ 0x1ff
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrb	r3, [r6, #8]
	add	r3, #0xf8
	strb	r3, [r7, #4]
	ldr	r2, =0xffff
	ldrh	r3, [r6, #0xc]
	add	r3, r2
	strh	r3, [r6, #0xc]
	b	.L195e0

	.align	2, 0
.L195a0:
	.word	0x1ff
	.pool

.L195b0:
	ldrb	r2, [r7, #7]
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r2, =0x1ff
	ldrh	r3, [r6, #6]
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrh	r3, [r6, #8]
	strb	r3, [r7, #4]
	b	.L195e0
.L195da:
	mov	r0, r6
	bl	Func_1908c
.L195e0:
	ldrb	r3, [r6, #5]
	cmp	r3, #2
	bne	.L195fa
	ldr	r3, =0x12b6
	add	r3, r9
	ldrh	r3, [r3]
	cmp	r3, #0x60
	beq	.L19606
	ldrb	r1, [r6, #0xf]
	mov	r0, r7
	bl	Func_3dec
	b	.L19606
.L195fa:
	cmp	r3, #0xd
	beq	.L19606
	ldrb	r1, [r6, #0xf]
	mov	r0, r7
	bl	Func_3dec
.L19606:
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	ldr	r6, [r6]
.L1960c:
	lsr	r0, r3, #2
	mov	r3, #7
	and	r0, r3
	cmp	r6, #0
	beq	.L19618
	b	.L19206
.L19618:
	mov	r2, #1
	mov	r3, #0x24
	add	r11, r2
	add	r10, r3
	mov	r3, r11
	cmp	r3, #8
	beq	.L19628
	b	.L191ee
.L19628:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_191cc

.thumb_func_start Func_1964c
	push	{lr}
	ldr	r2, =0x7fffffff
	bl	Func_196c4
	pop	{r0}
	bx	r0
.func_end Func_1964c

.thumb_func_start Func_1965c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e8c
	ldr	r6, [r3]
	ldr	r3, =0x12b2
	mov	r5, r2
	add	r2, r6, r3
	mov	r3, #0
	mov	r7, r1
	strh	r3, [r2]
	mov	r1, #1
	bl	Func_18038
	sub	r5, #1
	mov	r0, #0
	cmp	r0, r5
	bcs	.L196a8
	mov	r2, #0xeb
	lsl	r2, #4
	ldrh	r3, [r6, r2]
	strh	r3, [r7]
	lsl	r3, #16
	cmp	r3, #0
	beq	.L196a8
	mov	r12, r5
	add	r2, r6, r2
	mov	r4, #0
.L19690:
	add	r0, #1
	add	r4, #2
	cmp	r0, r12
	bcs	.L196ac
	add	r2, #2
	ldrh	r3, [r2]
	mov	r1, r4
	strh	r3, [r1, r7]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L19690
	b	.L196ae
.L196a8:
	mov	r1, #0
	b	.L196ae
.L196ac:
	lsl	r1, r0, #1
.L196ae:
	ldr	r3, .L196b8	@ 0
	strh	r3, [r1, r7]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L196b8:
	.word	0
.func_end Func_1965c

.thumb_func_start Func_196c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e50
	add	r3, #0xc8
	mov	r7, r2
	ldr	r2, [r3]
	mov	r10, r2
	mov	r8, r3
	mov	r3, r10
	sub	sp, #0xc
	mov	r9, r0
	mov	r6, r1
	cmp	r3, #0
	bne	.L19706
	ldr	r5, =0x140
	mov	r0, #0x32
	mov	r1, r5
	bl	Func_48b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_15430
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r8
	ldr	r3, [r2]
.L19706:
	mov	r5, sp
	mov	r1, r9
	mov	r0, r5
	mov	r8, r3
	bl	Func_19bac
	ldr	r3, =0xffff
	mov	r9, r3
	b	.L19770
.L19718:
	cmp	r0, #0xe
	beq	.L19730
	cmp	r0, #0xe
	bhi	.L1972a
	cmp	r0, #0xc
	bhi	.L19766
	cmp	r0, #8
	bcc	.L19766
	b	.L19750
.L1972a:
	cmp	r0, #0xf
	beq	.L19750
	b	.L19766
.L19730:
	sub	r7, #3
	cmp	r7, #0
	ble	.L1977a
	strh	r0, [r6]
	mov	r0, r5
	bl	_call_via_r8
	add	r6, #2
	add	r0, r9
	strh	r0, [r6]
	mov	r0, r5
	bl	_call_via_r8
	add	r6, #2
	add	r0, r9
	b	.L1976c
.L19750:
	sub	r7, #1
	cmp	r7, #0
	ble	.L1977a
	strh	r0, [r6]
	mov	r0, r5
	bl	_call_via_r8
	ldr	r2, =0xffff
	add	r6, #2
	add	r0, r2
	b	.L1976c
.L19766:
	sub	r7, #1
	cmp	r7, #0
	ble	.L1977a
.L1976c:
	strh	r0, [r6]
	add	r6, #2
.L19770:
	mov	r0, r5
	bl	_call_via_r8
	cmp	r0, #0
	bne	.L19718
.L1977a:
	mov	r3, r10
	cmp	r3, #0
	bne	.L19786
	mov	r0, #0x32
	bl	Func_2dd8
.L19786:
	ldr	r3, .L1979c	@ 0
	add	sp, #0xc
	strh	r3, [r6]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L1979c:
	.word	0
.func_end Func_196c4

.thumb_func_start Func_197b4
	push	{lr}
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L197c0
	mov	r3, #0
	str	r3, [r0]
.L197c0:
	pop	{r1}
	bx	r1
.func_end Func_197b4

.thumb_func_start Func_197c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r5, #0xc4
	mov	r7, #0xa0
	mov	r8, r3
	lsl	r5, #3
	lsl	r7, #3
	add	r5, r8
	add	r7, r8
	mov	r6, #0
.L197de:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L197f0
	ldrh	r3, [r0, #0x16]
	cmp	r3, #0
	beq	.L197f0
	mov	r1, #0
	bl	Func_16418
.L197f0:
	add	r6, #1
	add	r5, #0x28
	cmp	r6, #3
	bne	.L197de
.L197f8:
	mov	r5, #0xc4
	lsl	r5, #3
	mov	r1, #1
	add	r5, r8
	mov	r6, #0
.L19802:
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.L1981a
	ldr	r3, [r2, #0x18]
	cmp	r3, #0
	bne	.L19818
	ldrh	r3, [r2, #0x16]
	cmp	r3, #0
	bne	.L19818
	str	r3, [r5]
	b	.L1981a
.L19818:
	mov	r1, #0
.L1981a:
	add	r6, #1
	add	r5, #0x28
	cmp	r6, #3
	bne	.L19802
	mov	r6, #0
	cmp	r1, #0
	bne	.L19842
	mov	r0, #1
	bl	Func_30f8
	b	.L197f8
.L19830:
	ldrh	r3, [r7, #0x16]
	cmp	r3, #0
	beq	.L1983e
	mov	r0, r7
	mov	r1, #0
	bl	Func_16418
.L1983e:
	add	r7, #0x24
	add	r6, #1
.L19842:
	cmp	r6, #8
	bne	.L19830
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_197c4

.thumb_func_start Func_19854
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	ldr	r3, [r5]
	ldrh	r1, [r3, #0xc]
	mov	r9, r1
	ldrh	r1, [r3, #0xe]
	mov	r11, r1
	ldrh	r1, [r3, #8]
	sub	sp, #8
	ldrh	r2, [r3, #0x12]
	str	r1, [sp, #4]
	ldrh	r3, [r3, #0xa]
	str	r3, [sp]
	cmp	r2, #4
	bne	.L198c4
	add	r1, #2
	mov	r6, r9
	mov	r7, r11
	mov	r8, r1
	sub	r6, #1
	sub	r7, #1
	add	r3, #2
	mov	r2, r8
	mov	r0, r6
	mov	r1, r7
	mov	r10, r3
	bl	Func_170f8
	ldrh	r3, [r5, #0x14]
	ldr	r2, =0xffff
	add	r3, r2
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	lsr	r2, r3, #16
	cmp	r2, #0
	bne	.L198c4
	ldr	r3, [r5]
	mov	r0, r6
	strh	r2, [r3, #0x12]
	mov	r1, r7
	mov	r2, r8
	mov	r3, r10
	bl	Func_16178
	mov	r0, r9
	mov	r1, r11
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	bl	Func_170f8
.L198c4:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_19854

.thumb_func_start Func_198dc
	push	{lr}
	ldr	r3, =iwram_1e8c
	ldr	r4, =0x12dc
	ldr	r3, [r3]
	add	r2, r3, r4
	sub	r4, #0x20
	mov	r1, #0
	mov	r0, #0
	add	r3, r4
.L198ee:
	add	r1, #1
	stmia	r3!, {r0}
	strh	r0, [r2]
	add	r2, #2
	cmp	r1, #8
	bne	.L198ee
	pop	{r0}
	bx	r0
.func_end Func_198dc

.thumb_func_start Func_19908
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e8c
	mov	r7, r1
	ldr	r1, [r3]
	ldr	r3, =0x12bc
	ldr	r4, =0x12dc
	mov	r6, r0
	mov	r5, #8
	mov	r0, #0
	add	r2, r1, r3
.L1991c:
	ldrh	r3, [r4, r1]
	cmp	r3, #0
	bne	.L19928
	str	r6, [r2]
	strh	r7, [r4, r1]
	b	.L19932
.L19928:
	add	r0, #1
	add	r2, #4
	add	r4, #2
	cmp	r0, r5
	bne	.L1991c
.L19932:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_19908

.thumb_func_start Func_19944
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e8c
	ldr	r4, =0x12dc
	ldr	r2, [r3]
	ldrh	r3, [r4, r2]
	mov	r5, r0
	mov	r7, r1
	mov	r1, #0
	mov	r6, #0
	mov	r12, r1
	ldr	r0, =0x12bc
	cmp	r3, r5
	bne	.L1996a
	ldr	r6, [r0, r2]
	cmp	r7, #0
	beq	.L19988
	str	r1, [r0, r2]
	strh	r1, [r4, r2]
	b	.L19988
.L1996a:
	add	r1, #1
	add	r0, #4
	add	r4, #2
	cmp	r1, #7
	bhi	.L19988
	ldrh	r3, [r4, r2]
	cmp	r3, r5
	bne	.L1996a
	ldr	r6, [r0, r2]
	cmp	r7, #0
	beq	.L19988
	mov	r3, r12
	str	r3, [r0, r2]
	mov	r3, r12
	strh	r3, [r4, r2]
.L19988:
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_19944

.thumb_func_start Func_1999c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e8c
	ldr	r2, =0x12f9
	ldr	r3, [r3]
	add	r3, r2
	ldrb	r3, [r3]
	mov	r6, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L199ba
	bl	_Func_f954c
	cmp	r0, #0
	bne	.L199ba
	mov	r5, #1
.L199ba:
	ldr	r3, =iwram_1ae8
	ldr	r2, =0x303
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.L199c8
	mov	r5, #1
.L199c8:
	cmp	r5, #0
	beq	.L199d4
	mov	r3, #0
	strh	r3, [r6, #0x14]
	mov	r0, #1
	b	.L199d6
.L199d4:
	mov	r0, #0
.L199d6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_1999c

.thumb_func_start Func_199ec
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e8c
	ldr	r1, =0x12f9
	ldr	r5, [r3]
	add	r3, r5, r1
	ldrb	r3, [r3]
	mov	r7, r0
	mov	r6, #0
	cmp	r3, #0
	beq	.L19a0a
	bl	_Func_f954c
	cmp	r0, #0
	bne	.L19a0a
	mov	r6, #1
.L19a0a:
	ldr	r3, =iwram_1c94
	ldr	r1, =0xea4
	ldr	r2, [r3]
	add	r3, r5, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L19a1c
	ldr	r3, =iwram_1af8
	ldr	r2, [r3]
.L19a1c:
	ldr	r3, =0x303
	and	r3, r2
	cmp	r3, #0
	beq	.L19a26
	mov	r6, #1
.L19a26:
	cmp	r6, #0
	beq	.L19a32
	mov	r3, #0
	strh	r3, [r7, #0x14]
	mov	r0, #1
	b	.L19a34
.L19a32:
	mov	r0, #0
.L19a34:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_199ec

.thumb_func_start Func_19a54
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e8c
	mov	r2, #0xc4
	ldr	r3, [r3]
	lsl	r2, #3
	add	r5, r3, r2
	mov	r6, #0
.L19a62:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L19a88
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.L19a88
	ldrh	r2, [r0, #0x16]
	mov	r3, r2
	cmp	r3, #0
	beq	.L19a88
	ldrh	r3, [r0, #0x14]
	cmp	r3, #0
	beq	.L19a88
	mov	r1, #2
	and	r1, r2
	lsl	r1, #16
	lsr	r1, #16
	bl	Func_16418
.L19a88:
	add	r6, #1
	add	r5, #0x28
	cmp	r6, #3
	bne	.L19a62
	mov	r0, #0xa
	bl	Func_30f8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_19a54

.thumb_func_start Func_19aa0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	sub	sp, #0x18
	mov	r8, r3
	mov	r6, r1
	mov	r3, #8
	mov	r1, #1
	mov	r9, r2
	str	r3, [sp, #0x14]
	str	r3, [sp, #0x10]
	mov	r7, r0
	bl	Func_18038
	mov	r2, #0xeb
	lsl	r2, #4
	lsl	r3, r0, #1
	add	r3, r2
	mov	r2, r8
	ldrh	r3, [r2, r3]
	mov	r5, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.L19b84
	add	r0, sp, #8
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	add	r3, sp, #0xc
	str	r0, [sp]
	mov	r0, r7
	bl	Func_187ac
	ldr	r2, [sp, #0xc]
	mov	r3, #0x1e
	sub	r3, r2
	ldr	r4, [sp, #8]
	asr	r0, r3, #1
	mov	r3, #0xf
	sub	r3, r4
	asr	r3, #1
	mov	r7, r9
	add	r1, r3, r7
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x10]
	cmp	r6, #0
	beq	.L19b10
	mov	r3, r4
	str	r5, [sp]
	bl	Func_162d4
	mov	r5, r0
	b	.L19b22
.L19b10:
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #0
	mov	r3, #0
	bl	Func_162d4
	mov	r5, r0
	strh	r6, [r5, #8]
	strh	r6, [r5, #0xa]
.L19b22:
	mov	r3, #0
	mov	r0, r5
	mov	r1, r10
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	Func_165d8
	cmp	r0, #0
	bne	.L19b46
	mov	r0, r5
	mov	r1, #1
	bl	Func_16418
	b	.L19b84
.L19b40:
	mov	r0, #1
	bl	Func_30f8
.L19b46:
	bl	Func_17364
	cmp	r0, #0
	beq	.L19b40
	cmp	r6, #0
	beq	.L19b6e
	mov	r0, r5
	mov	r1, #0
	bl	Func_16418
	b	.L19b62
.L19b5c:
	mov	r0, #1
	bl	Func_30f8
.L19b62:
	mov	r0, r5
	bl	Func_17394
	cmp	r0, #0
	beq	.L19b5c
	b	.L19b76
.L19b6e:
	mov	r0, r5
	mov	r1, #1
	bl	Func_16418
.L19b76:
	ldr	r3, =0x12f4
	mov	r2, #0
	add	r3, r8
	strh	r2, [r3]
	ldr	r3, =0x12f6
	add	r3, r8
	strh	r2, [r3]
.L19b84:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_19aa0

.thumb_func_start Func_19ba0
	push	{lr}
	mov	r1, #1
	bl	Func_18038
	pop	{r1}
	bx	r1
.func_end Func_19ba0

.thumb_func_start Func_19bac
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r0
	mov	r10, r1
	ldr	r5, =0x60
	mov	r0, r5
	bl	Func_4938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_15570
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r10
	bl	_call_via_r6
	mov	r0, r6
	bl	Func_2df0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_19bac

.thumb_func_start Func_19bfc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, [r0]
	mov	r2, #0xff
	lsr	r3, r5, #8
	and	r5, r2
	ldr	r2, =Data_3842c
	lsl	r3, #3
	ldr	r1, [r2, r3]
	add	r3, #4
	ldr	r2, [r2, r3]
	lsl	r3, r5, #1
	ldrh	r3, [r3, r2]
	add	r1, r3
	mov	r10, r0
	ldr	r6, [r0, #4]
	sub	r2, r1, #1
	mov	r3, #0
	mov	r5, #0x80
	ldr	r0, [r0, #8]
	mov	r4, #1
	mov	r9, r2
	mov	r14, r3
	mov	r7, #1
	mov	r8, r5
	b	.L19c96
.L19c3a:
	mov	r2, r0
	mov	r3, #1
	and	r2, r3
	asr	r0, #1
	cmp	r2, #0
	beq	.L19c96
	cmp	r0, #0
	bne	.L19c58
	ldrb	r0, [r6]
	mov	r2, r0
	and	r2, r3
	asr	r0, #1
	mov	r3, r8
	add	r6, #1
	orr	r0, r3
.L19c58:
	cmp	r2, #0
	beq	.L19c96
	mov	r5, #1
	mov	r2, #0x80
	mov	r3, #0
	mov	r11, r5
	mov	r12, r2
.L19c66:
	mov	r2, r4
	mov	r5, r11
	and	r2, r5
	asr	r4, #1
	cmp	r2, #0
	beq	.L19c88
	cmp	r4, #0
	bne	.L19c84
	ldrb	r4, [r1]
	mov	r2, r4
	and	r2, r5
	asr	r4, #1
	mov	r5, r12
	add	r1, #1
	orr	r4, r5
.L19c84:
	cmp	r2, #0
	bne	.L19c8c
.L19c88:
	add	r3, #1
	b	.L19c92
.L19c8c:
	mov	r2, #1
	add	r14, r2
	sub	r3, #1
.L19c92:
	cmp	r3, #0
	bge	.L19c66
.L19c96:
	mov	r2, r4
	and	r2, r7
	asr	r4, #1
	cmp	r2, #0
	beq	.L19c3a
	cmp	r4, #0
	bne	.L19cb2
	ldrb	r4, [r1]
	mov	r3, r8
	mov	r2, r4
	asr	r4, #1
	add	r1, #1
	and	r2, r7
	orr	r4, r3
.L19cb2:
	cmp	r2, #0
	beq	.L19c3a
	mov	r5, r14
	lsl	r3, r5, #1
	add	r1, r3, r5
	lsl	r3, r1, #2
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L19cda
	mov	r2, r9
	lsr	r3, r1, #1
	sub	r3, r2, r3
	ldrb	r2, [r3]
	sub	r3, #1
	lsl	r5, r2, #4
	ldrb	r2, [r3]
	lsr	r3, r2, #4
	orr	r5, r3
	b	.L19cee
.L19cda:
	lsr	r3, r1, #1
	mov	r5, r9
	sub	r3, r5, r3
	ldrb	r2, [r3]
	mov	r1, #0xf
	sub	r3, #1
	and	r2, r1
	ldrb	r5, [r3]
	lsl	r2, #8
	orr	r5, r2
.L19cee:
	mov	r2, r10
	str	r0, [r2, #8]
	str	r5, [r2]
	str	r6, [r2, #4]
	mov	r0, r5
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_19bfc

.thumb_func_start Func_19d0c
	ldr	r3, =iwram_1e8c
	ldr	r0, =0x12ec
	ldr	r3, [r3]
	ldr	r2, .L19d20	@ 0x3e7
	add	r1, r3, r0
	add	r0, #2
	strh	r2, [r1]
	add	r1, r3, r0
	strh	r2, [r1]
	bx	lr
	.align	2, 0
.L19d20:
	.word	0x3e7
.func_end Func_19d0c

	.section .rodata

.L33e60:
	.incrom 0x33e60, 0x33eb0
.L33eb0:
	.incrom 0x33eb0, 0x33ee8
.L33ee8:
	.incrom 0x33ee8, 0x33ef8
