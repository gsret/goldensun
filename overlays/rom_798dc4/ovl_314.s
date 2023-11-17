	.include "macros.inc"

.thumb_func_start OvlFunc_314
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_32c
	ldr	r0, =.L12f8
	bx	lr
.func_end OvlFunc_32c

.thumb_func_start OvlFunc_334
	mov	r0, #0
	bx	lr
.func_end OvlFunc_334

.thumb_func_start OvlFunc_338
	ldr	r0, =.L1358
	bx	lr
.func_end OvlFunc_338

.thumb_func_start OvlFunc_340
	ldr	r0, =.L1368
	bx	lr
.func_end OvlFunc_340

.thumb_func_start OvlFunc_348
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L35c
	ldr	r2, =0xfffff
	add	r3, r2
.L35c:
	ldr	r0, =0x861
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x862
	bl	__Func_79374
	cmp	r5, #0xf
	bne	.L384
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	b	.L3bc
.L384:
	cmp	r5, #0x10
	bne	.L3a2
	mov	r3, #0x12
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	ldr	r0, =0x861
	bl	__Func_79358
	b	.L3bc
.L3a2:
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	ldr	r0, =0x862
	bl	__Func_79358
.L3bc:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_348

.thumb_func_start OvlFunc_3d0
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L3e4
	ldr	r2, =0xfffff
	add	r3, r2
.L3e4:
	asr	r6, r3, #20
	cmp	r6, #0x17
	bne	.L42c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x11
	str	r3, [sp, #4]
	mov	r0, #0x36
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	ldr	r0, =0x863
	bl	__Func_79358
.L42c:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3d0

.thumb_func_start OvlFunc_43c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #9
	bl	__Func_92064
	mov	r0, #0xb9
	bl	__Func_f9080
	mov	r2, #0xb6
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r5, #0xb
	lsl	r3, #1
	sub	r5, r3
	lsl	r5, #4
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, r5
	mov	r0, #9
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	bl	OvlFunc_348
	bl	__Func_9202c
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_43c

.thumb_func_start OvlFunc_4cc
	bx	lr
.func_end OvlFunc_4cc

.thumb_func_start OvlFunc_4d0
	bx	lr
.func_end OvlFunc_4d0

.thumb_func_start OvlFunc_4d4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x866
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d4

.thumb_func_start OvlFunc_4ec
	ldr	r0, =.L1488
	bx	lr
.func_end OvlFunc_4ec

.thumb_func_start OvlFunc_4f4
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	sub	sp, #8
	bl	__Func_79358
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xaa
	bl	__Func_91ff0
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x865
	bl	__Func_79338
	cmp	r0, #0
	beq	.L55e
	mov	r3, #0x49
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L55e:
	mov	r0, #0x86
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5b6
	mov	r1, #0x88
	mov	r2, #0xc4
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #8
	bl	__Func_924d4
	mov	r3, #8
	mov	r5, #0xc
	str	r3, [sp]
	mov	r0, #0x27
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
.L5b6:
	ldr	r0, =0x861
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5e4
	mov	r1, #0x84
	mov	r2, #0x9c
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	b	.L610
.L5e4:
	ldr	r0, =0x862
	bl	__Func_79338
	cmp	r0, #0
	beq	.L610
	mov	r1, #0x8c
	mov	r2, #0x9c
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
.L610:
	ldr	r0, =0x863
	bl	__Func_79338
	cmp	r0, #0
	beq	.L660
	mov	r1, #0xbc
	mov	r2, #0x8c
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #0xa
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x17
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x36
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L660:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4f4

.thumb_func_start OvlFunc_67c
	push	{lr}
	sub	sp, #8
	bl	__Func_9202c
	bl	__Func_916b0
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x138f
	bl	__Func_92b94
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L6c8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L6c8:
	mov	r1, #0x84
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.L75c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L736
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L736:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	b	.Lcf0

	.pool_aligned

.L75c:
	mov	r1, #0xb4
	mov	r2, #0xf8
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x88
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r1, #0x88
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xd0
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x84
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0xf8
	mov	r2, #0xa8
	bl	__Func_9218c
	mov	r1, #0xf8
	mov	r2, #0xb8
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe8
	mov	r2, #0xb8
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x83
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	bl	OvlFunc_d68
	mov	r1, #1
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_9202c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_314
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0xb8
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x3c
	bl	OvlFunc_314
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_314
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_314
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_314
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_314
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_314
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	b	.Lb78

	.pool_aligned

.Lb78:
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_314
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_314
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_314
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_917d0
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	OvlFunc_fc8
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xb8
	mov	r1, #0xf8
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_314
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_314
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x14
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
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #0xf8
	mov	r2, #0xa8
	bl	__Func_9218c
	mov	r0, #2
	mov	r1, #0xf8
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #0x49
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r0, =0x865
	bl	__Func_79358
	bl	__Func_91750
.Lcf0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_67c

.thumb_func_start OvlFunc_d04
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	cmp	r6, #0xb
	bne	.Ld5c
	mov	r0, #8
	bl	OvlFunc_dd8
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0x27
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x2b
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x86
	lsl	r0, #4
	bl	__Func_79358
.Ld5c:
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d04

.thumb_func_start OvlFunc_d68
	push	{r5, lr}
	ldr	r3, =iwram_1f30
	mov	r0, #0x4e
	mov	r1, #1
	ldr	r5, [r3]
	bl	__Func_96fb0
	mov	r1, #0xf
	mov	r0, #2
	bl	__Func_970f8
	ldr	r3, =0x71c
	add	r5, r3
	ldrb	r2, [r5]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r5]
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	bl	__Func_97174
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d68

.thumb_func_start OvlFunc_da8
	ldr	r2, [r0, #0x50]
	ldr	r1, =0xfffff800
	ldrh	r3, [r2, #0x1e]
	add	r3, r1
	strh	r3, [r2, #0x1e]
	bx	lr
.func_end OvlFunc_da8

.thumb_func_start OvlFunc_db8
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r1
	mov	r5, #0x3c
.Ldc0:
	cmp	r5, #0
	beq	.Ldd2
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r7, #0xc]
	sub	r5, #1
	cmp	r3, r6
	bgt	.Ldc0
.Ldd2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_db8

.thumb_func_start OvlFunc_dd8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	mov	r11, r0
	bl	__Func_92054
	mov	r6, r0
	mov	r5, r6
	mov	r3, #0
	add	r5, #0x55
	strb	r3, [r5]
	mov	r8, r3
.Ldfa:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r6, #0x50]
	ldr	r1, =0xffffff00
	ldrh	r3, [r2, #0x1e]
	add	r3, r1
	strh	r3, [r2, #0x1e]
	ldr	r3, [r6, #0x50]
	ldrh	r0, [r3, #0x1e]
	bl	__Func_231c
	lsr	r3, r0, #31
	add	r0, r3
	ldr	r3, [r6, #8]
	asr	r0, #1
	sub	r3, r0
	str	r3, [r6, #8]
	mov	r2, #1
	mov	r3, #0x80
	lsl	r3, #24
	add	r8, r2
	str	r3, [r6, #0x38]
	mov	r3, r8
	cmp	r3, #0x11
	bls	.Ldfa
	ldr	r3, =OvlFunc_da8
	mov	r1, #0xc0
	mov	r2, #0xc0
	str	r3, [r6, #0x6c]
	mov	r0, r11
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xa0
	mov	r0, r11
	mov	r2, #0xc0
	bl	__Func_92128
	ldr	r3, =0xcccc
	str	r3, [r6, #0x48]
	mov	r3, #3
	strb	r3, [r5]
	mov	r3, r6
	add	r3, #0x22
	mov	r2, #0
	strb	r2, [r3]
	mov	r0, r11
	bl	__Func_923c4
	mov	r1, #0x80
	lsl	r1, #14
	mov	r0, r6
	bl	OvlFunc_db8
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0xa0
	lsl	r0, #11
	mov	r2, #0x80
	mov	r1, r0
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r4, #0
	add	r7, sp, #0x38
	mov	r8, r4
	mov	r10, r7
	mov	r9, r4
.Le9c:
	mov	r1, r8
	lsl	r5, r1, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r2, r10
	mov	r3, r9
	str	r0, [r2]
	str	r3, [r2, #4]
	mov	r0, r5
	bl	__Func_2322
	mov	r4, r10
	ldr	r2, [r4]
	str	r0, [r4, #8]
	mov	r3, r2
	cmp	r2, #0
	bge	.Lec2
	add	r3, r2, #3
.Lec2:
	lsr	r5, r0, #31
	add	r5, r0, r5
	asr	r3, #2
	asr	r5, #1
	sub	r3, r2, r3
	sub	r5, r0, r5
	str	r3, [r7]
	str	r5, [r7, #8]
	ldr	r4, [r7, #4]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	ldr	r0, [r6, #8]
	str	r4, [sp]
	mov	r4, r9
	str	r5, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.Le9c
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r2, #0xc4
	mov	r0, r11
	mov	r1, #0x8b
	bl	__Func_92128
	mov	r0, r11
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, r6
	lsl	r1, #14
	bl	OvlFunc_db8
	mov	r3, r9
	str	r3, [r6, #0x6c]
	ldr	r2, [r6, #0x50]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r2, #0x1e]
	add	r4, sp, #0x10
	mov	r3, #0xd6
	strh	r3, [r4, #0x18]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r4, #8]
	ldr	r3, =0xcccc
	str	r3, [r4, #0xc]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r4, #0x10]
	ldr	r3, =0x13333
	str	r3, [r4, #0x14]
	mov	r3, r9
	ldr	r2, [r6, #0x10]
	ldr	r1, [r6, #0xc]
	ldr	r0, [r6, #8]
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xe0
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, r11
	mov	r1, #3
	bl	__Func_924d4
	bl	__Func_12350
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_dd8

.thumb_func_start OvlFunc_f8c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r8, r1
	bl	__Func_77394
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	__Func_78588
	mov	r6, #0
	add	r5, #0xd8
.Lfa8:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r8
	bne	.Lfb8
	mov	r0, r7
	mov	r1, r6
	bl	__Func_78708
.Lfb8:
	add	r6, #1
	cmp	r6, #0xe
	ble	.Lfa8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f8c

.thumb_func_start OvlFunc_fc8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0x41
	mov	r0, #2
	mov	r10, r3
	sub	sp, #4
	bl	__Func_77394
	mov	r3, #0
	mov	r7, r0
	mov	r8, r3
.Lfe2:
	mov	r3, #1
	add	r8, r3
	mov	r3, #0xfa
	lsl	r3, #2
	cmp	r8, r3
	ble	.Lff6
	mov	r2, r7
	add	r2, #0xf4
	mov	r3, #0
	strh	r3, [r2]
.Lff6:
	mov	r0, #2
	mov	r1, #0x41
	bl	__Func_78588
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L105a
	mov	r5, r7
	mov	r6, #0
	add	r5, #0xd8
.L100c:
	ldrh	r0, [r5]
	bl	__Func_78414
	ldrb	r3, [r0, #2]
	add	r5, #2
	cmp	r3, #1
	beq	.L1040
	add	r6, #1
	cmp	r6, #0xe
	ble	.L100c
	mov	r5, r7
	ldr	r2, =0x8ff
	mov	r6, #0
	add	r5, #0xd8
.L1028:
	ldrh	r0, [r5]
	str	r2, [sp]
	bl	__Func_78414
	ldrh	r3, [r0, #2]
	ldr	r2, [sp]
	and	r3, r2
	cmp	r3, #0
	bne	.L1050
	ldrb	r3, [r0, #0xc]
	cmp	r3, #1
	bne	.L1050
.L1040:
	mov	r0, #2
	mov	r1, r6
	bl	__Func_78948
	b	.Lfe2

	.pool_aligned

.L1050:
	add	r6, #1
	add	r5, #2
	cmp	r6, #0xe
	ble	.L1028
	b	.Lfe2
.L105a:
	mov	r5, r7
	mov	r6, #0
	add	r5, #0xd8
.L1060:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r10
	bne	.L1070
	mov	r0, #2
	mov	r1, r6
	bl	__Func_78708
.L1070:
	add	r6, #1
	cmp	r6, #0xe
	ble	.L1060
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fc8

	.section .data

	.incbin "overlays/rom_798dc4/orig.bin", 0x12e8, (0x12f8-0x12e8)
.L12f8:
	.incbin "overlays/rom_798dc4/orig.bin", 0x12f8, (0x1358-0x12f8)
.L1358:
	.incbin "overlays/rom_798dc4/orig.bin", 0x1358, (0x1368-0x1358)
.L1368:
	.incbin "overlays/rom_798dc4/orig.bin", 0x1368, (0x1488-0x1368)
.L1488:
	.incbin "overlays/rom_798dc4/orig.bin", 0x1488
