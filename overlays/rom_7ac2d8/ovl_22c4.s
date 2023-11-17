	.include "macros.inc"

.thumb_func_start OvlFunc_22c4
	push	{r5, lr}
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r0, #2
	ldr	r1, [r5, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	add	r1, r0
	ldr	r2, [r5, #0x10]
	ldr	r0, [r5, #8]
	bl	OvlFunc_3b24
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22c4

.thumb_func_start OvlFunc_22ec
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_22c4
	bl	__Func_41d8
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_22ec

.thumb_func_start OvlFunc_2304
	push	{lr}
	ldr	r0, =OvlFunc_22c4
	bl	__Func_4278
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_2304

.thumb_func_start OvlFunc_2318
	push	{r5, r6, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_758
	cmp	r0, #0
	bne	.L232e
	b	.L24da
.L232e:
	ldr	r3, [r5, #4]
	cmp	r3, #0xa
	beq	.L233a
	cmp	r3, #0xb
	beq	.L236a
	b	.L24da
.L233a:
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	mov	r1, #0xa
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r2, [r5, #8]
	bl	OvlFunc_8ec
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x26
	bne	.L2360
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__Func_79358
	b	.L24da
.L2360:
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__Func_79374
	b	.L24da
.L236a:
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r2, sp
	asr	r6, r3, #20
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r3, [r5, #0xc]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_8ec
	ldr	r3, [r5, #8]
	asr	r0, r3, #20
	cmp	r0, #0x2f
	bne	.L23c4
	ldr	r0, =0x319
	bl	__Func_79358
	ldr	r0, =0x31a
	bl	__Func_79374
	ldr	r0, =0x31b
	bl	__Func_79374
	bl	OvlFunc_21cc
	cmp	r6, #0x36
	bne	.L23b2
	mov	r0, #0
	bl	OvlFunc_2030
	b	.L23bc
.L23b2:
	cmp	r6, #0x30
	bne	.L23bc
	mov	r0, #1
	bl	OvlFunc_2030
.L23bc:
	mov	r0, #2
	bl	OvlFunc_1db4
	b	.L249a
.L23c4:
	cmp	r0, #0x30
	bne	.L247a
	ldr	r0, =0x31a
	bl	__Func_79358
	ldr	r0, =0x31b
	bl	__Func_79374
	ldr	r0, =0x319
	bl	__Func_79374
	bl	OvlFunc_21cc
	cmp	r0, #0
	beq	.L2468
	mov	r0, #2
	bl	OvlFunc_2030
	mov	r5, #0xd2
	bl	OvlFunc_2304
	mov	r0, #1
	bl	OvlFunc_1db4
	lsl	r5, #18
	mov	r0, #9
	bl	__Func_920e8
	ldr	r2, =0x3120000
	mov	r1, #0
	mov	r3, #0xdf
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r3, #0xdf
	ldr	r2, =0x3320000
	mov	r1, #0
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r1, #0xd2
	mov	r2, #0xba
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x877
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xf
	bl	__Func_91e9c
	b	.L24da
.L2468:
	mov	r0, #2
	bl	OvlFunc_2030
	bl	OvlFunc_2304
	mov	r0, #1
	bl	OvlFunc_1db4
	b	.L249a
.L247a:
	cmp	r0, #0x35
	bne	.L24a2
	ldr	r0, =0x31b
	bl	__Func_79358
	ldr	r0, =0x319
	bl	__Func_79374
	ldr	r0, =0x31a
	bl	__Func_79374
	bl	OvlFunc_21cc
	mov	r0, #0
	bl	OvlFunc_2030
.L249a:
	mov	r0, #0x3c
	bl	__Func_9163c
	b	.L24da
.L24a2:
	ldr	r0, =0x319
	bl	__Func_79374
	ldr	r0, =0x31a
	bl	__Func_79374
	ldr	r0, =0x31b
	bl	__Func_79374
	bl	OvlFunc_21cc
	cmp	r6, #0x2f
	bne	.L24c4
	mov	r0, #2
	bl	OvlFunc_2030
	b	.L24ce
.L24c4:
	cmp	r6, #0x30
	bne	.L24ce
	mov	r0, #1
	bl	OvlFunc_2030
.L24ce:
	mov	r0, #0
	bl	OvlFunc_1db4
	mov	r0, #0x3c
	bl	__Func_9163c
.L24da:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2318

.thumb_func_start OvlFunc_2504
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_3a8
	bl	OvlFunc_251c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2504

.thumb_func_start OvlFunc_251c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r5, #0xcc
	mov	r6, #0
	lsl	r5, #2
.L252a:
	mov	r0, r6
	add	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L253c
	ldr	r2, =0xfffff
	add	r3, r2
.L253c:
	asr	r1, r3, #20
	lsl	r3, r6, #2
	mov	r2, r3
	add	r2, #0x27
	cmp	r1, r2
	bne	.L2556
	mov	r0, r5
	bl	__Func_79358
	add	r0, r5, #1
	bl	__Func_79374
	b	.L2576
.L2556:
	add	r3, #0x29
	cmp	r1, r3
	bne	.L256a
	add	r0, r5, #1
	bl	__Func_79358
	mov	r0, r5
	bl	__Func_79374
	b	.L2576
.L256a:
	mov	r0, r5
	bl	__Func_79374
	add	r0, r5, #1
	bl	__Func_79374
.L2576:
	add	r6, #1
	add	r5, #2
	cmp	r6, #3
	ble	.L252a
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L258e
	ldr	r2, =0xfffff
	add	r3, r2
.L258e:
	asr	r1, r3, #20
	cmp	r1, #0x39
	bne	.L25a0
	mov	r0, #0xce
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x339
	b	.L25ae
.L25a0:
	cmp	r1, #0x3b
	bne	.L25c8
	ldr	r0, =0x339
	bl	__Func_79358
	mov	r0, #0xce
	lsl	r0, #2
.L25ae:
	bl	__Func_79374
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L25ea
.L25c8:
	mov	r0, #0xce
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x339
	bl	__Func_79374
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L25ea:
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_251c

.thumb_func_start OvlFunc_2600
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L2618
	ldr	r2, =0xfffff
	add	r3, r2
.L2618:
	asr	r3, #20
	cmp	r3, #0x1c
	bne	.L263a
	mov	r0, #0xd2
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, #0x1f
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L263a:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2600

.thumb_func_start OvlFunc_2648
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2670
	ldr	r1, =0x5000050
	ldr	r3, =0x500005e
	ldrh	r2, [r1]
	strh	r2, [r3]
	ldr	r2, =0x5000052
	mov	r0, #0
.L2662:
	ldrh	r3, [r2]
	add	r0, #1
	strh	r3, [r1]
	add	r2, #2
	add	r1, #2
	cmp	r0, #6
	bls	.L2662
.L2670:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2648

.thumb_func_start OvlFunc_2684
	push	{lr}
	bl	__Func_916b0
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0
	bl	__Func_92064
	ldr	r0, =0x1577
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd2
	mov	r2, #0xa2
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x10
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L275a
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2782
.L275a:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L2782:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_933f8
	mov	r1, #0xd2
	mov	r2, #0x9e
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #3
	bl	__Func_921c4
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_93040
	mov	r0, #0x87
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2684

.thumb_func_start OvlFunc_2814
	push	{lr}
	bl	__Func_916b0
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x157d
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2814

.thumb_func_start OvlFunc_2844
	push	{r5, r6, lr}
	ldr	r6, =0x1f
.L2848:
	ldr	r0, =0x5000050
	mov	r5, #0
	mov	r4, #0
	b	.L2858

	.pool_aligned

.L2858:
	ldrh	r3, [r0]
	mov	r1, #0x1f
	and	r1, r3
	ldrh	r3, [r0]
	lsr	r2, r3, #5
	ldrh	r3, [r0]
	lsr	r3, #10
	and	r2, r6
	and	r3, r6
	cmp	r1, #0x1f
	bne	.L287a
	cmp	r2, #0x1f
	bne	.L287a
	cmp	r3, #0x1f
	bne	.L287a
	add	r5, #1
	b	.L2896
.L287a:
	cmp	r1, #0x1e
	bgt	.L2880
	add	r1, #1
.L2880:
	cmp	r2, #0x1e
	bgt	.L2886
	add	r2, #1
.L2886:
	cmp	r3, #0x1e
	bgt	.L288c
	add	r3, #1
.L288c:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r0]
.L2896:
	add	r4, #1
	add	r0, #2
	cmp	r4, #7
	bls	.L2858
	mov	r0, #2
	bl	__Func_30f8
	cmp	r5, #7
	bls	.L2848
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2844

.thumb_func_start OvlFunc_28b0
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.L28c4
	ldr	r3, =0xfffff
	add	r5, r3
.L28c4:
	asr	r5, #20
	bl	__Func_916b0
	cmp	r5, #0x33
	beq	.L28d0
	b	.L2da4
.L28d0:
	ldr	r2, =0x6666
	ldr	r1, =0xcccc
	mov	r0, #3
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_92adc
	ldr	r0, =0x157f
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L294a
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	b	.L2972
.L294a:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L2972:
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xda
	mov	r2, #0x96
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xda
	mov	r2, #0x96
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xde
	mov	r2, #0x9e
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xdc
	mov	r2, #0x9a
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd2
	mov	r2, #0xa4
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2b64
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2b8c

	.pool_aligned

.L2b64:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L2b8c:
	mov	r1, #0x10
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd2
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	OvlFunc_4f44
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0x83
	bl	__Func_f9080
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #0
	ldr	r0, =0x207e9f
	bl	__Func_91200
	mov	r0, #0xa
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r0, #0xd1
	bl	__Func_f9080
	bl	OvlFunc_2844
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x23
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	bl	__Func_10424
	mov	r2, #0x23
	mov	r1, #0x74
	ldr	r0, =.L60b8
	bl	__Func_10560
	ldr	r0, =OvlFunc_2648
	bl	__Func_4278
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xd2
	mov	r2, #0x96
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x74
	mov	r1, #0x24
	mov	r2, #3
	mov	r3, #4
	bl	__Func_10704
	mov	r0, #0xd2
	mov	r1, #0xe0
	mov	r2, #0x98
	mov	r3, #0xdf
	lsl	r1, #14
	lsl	r2, #18
	lsl	r0, #18
	bl	OvlFunc_common0_18
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xd2
	mov	r2, #0x8c
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2d5e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L2d5e:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2d7e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L2d7e:
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x871
	bl	__Func_79358
.L2da4:
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_28b0

	.section .data

.L60b8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x60b8, (0x60ec-0x60b8)
