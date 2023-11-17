	.include "macros.inc"

.thumb_func_start OvlFunc_314
	ldr	r0, =.L3938
	bx	lr
.func_end OvlFunc_314

.thumb_func_start OvlFunc_31c
	mov	r0, #0
	bx	lr
.func_end OvlFunc_31c

.thumb_func_start OvlFunc_320
	ldr	r0, =.L39c8
	bx	lr
.func_end OvlFunc_320

.thumb_func_start OvlFunc_328
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.L340
	ldr	r0, =0x253
	bl	__Func_79358
.L340:
	ldr	r0, =.L39d4
	pop	{r1}
	bx	r1
.func_end OvlFunc_328

.thumb_func_start OvlFunc_354
	ldr	r0, =.L3be4
	bx	lr
.func_end OvlFunc_354

.thumb_func_start OvlFunc_35c
	push	{r5, r6, lr}
	ldr	r0, =0x111
	sub	sp, #8
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x3a
	cmp	r2, r3
	beq	.L380
	b	.L538
.L380:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_34bc
	bl	__Func_41d8
	mov	r0, #0
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #2
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #3
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #5
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #8
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #9
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_92b08
	mov	r5, #0xe
	mov	r6, #0
.L416:
	mov	r1, #1
	mov	r0, r5
	bl	__Func_92b08
	mov	r0, r5
	bl	__Func_92054
	mov	r3, #4
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, r5
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, =0xffcd8000
	add	r5, #1
	str	r3, [r0, #0xc]
	cmp	r5, #0x13
	bls	.L416
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L46c
	bl	OvlFunc_8cc
	cmp	r0, #0
	beq	.L46c
	bl	__Func_92054
	cmp	r0, #0
	beq	.L46c
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L46c:
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	str	r5, [r0, #0x18]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.L4da
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L538
	bl	OvlFunc_56c
	b	.L538
.L4da:
	cmp	r3, #2
	bne	.L52e
	ldr	r0, =0x251
	bl	__Func_79338
	cmp	r0, #0
	bne	.L538
	ldr	r3, =iwram_1e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #19
	str	r2, [r3, #0xc]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	mov	r0, #4
	mov	r1, #0x46
	mov	r3, #0x4a
	str	r2, [sp, #4]
	bl	__Func_10424
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L538
	bl	OvlFunc_1af0
	b	.L538
.L52e:
	cmp	r3, #5
	bne	.L538
	ldr	r0, =0x251
	bl	__Func_79358
.L538:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_35c

.thumb_func_start OvlFunc_56c
	push	{lr}
	bl	__Func_916b0
	bl	__Func_78144
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xf0
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	neg	r0, r0
	ldr	r2, =0xe666
	bl	__Func_12330
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	__Func_12350
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	ldr	r1, =0xffe80000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_91200
	mov	r0, #0x32
	bl	__Func_91254
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xfc
	mov	r2, #0xa8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x84
	mov	r2, #0x90
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xf4
	mov	r2, #0x90
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x98
	lsl	r2, #16
	mov	r0, #3
	lsl	r1, #18
	bl	__Func_923e4
	mov	r0, #0
	mov	r1, #0x13
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #0x13
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #0x13
	bl	__Func_924d4
	mov	r1, #0x13
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r2, =0x6666
	mov	r0, #3
	ldr	r1, =0xcccc
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L804
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L804:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L81c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L81c:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L834
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L834:
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_923c4
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
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_56c

.thumb_func_start OvlFunc_890
	push	{r5, lr}
	ldmia	r0!, {r5}
	ldmia	r1!, {r3}
	ldmia	r0!, {r4}
	sub	r5, r3
	ldmia	r1!, {r3}
	ldr	r2, [r1]
	sub	r4, r3
	ldr	r3, [r0]
	sub	r3, r2
	asr	r5, #16
	asr	r4, #16
	asr	r3, #16
	mov	r0, r5
	mul	r0, r5
	mov	r2, r4
	mul	r2, r4
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_890

.thumb_func_start OvlFunc_8cc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0
	mov	r0, #0
	ldr	r5, [r3]
	mov	r8, r2
	bl	__Func_92054
	mov	r7, #0xa0
	lsl	r7, #2
	mov	r10, r0
	mov	r6, #8
	add	r5, #0x34
.L8ec:
	ldmia	r5!, {r1}
	cmp	r1, #0
	beq	.L910
	ldr	r3, [r1, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf2
	bne	.L910
	mov	r0, r10
	add	r1, #8
	add	r0, #8
	bl	OvlFunc_890
	cmp	r0, r7
	bge	.L910
	mov	r7, r0
	mov	r8, r6
.L910:
	add	r6, #1
	cmp	r6, #0x41
	bls	.L8ec
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_8cc

.thumb_func_start OvlFunc_928
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r5, r0
	ldrh	r1, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #5
	add	r1, r3
	mov	r7, r5
	mov	r3, #0xe0
	lsl	r3, #8
	add	r7, #0x55
	and	r1, r3
	ldrb	r3, [r7]
	ldr	r0, =0xfff00000
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r0
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r0
	mov	r0, #0x80
	add	r3, r2
	lsl	r0, #14
	mov	r2, r6
	str	r3, [r6, #8]
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_120dc
	cmp	r0, #0
	bne	.L9ec
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79374
	bl	OvlFunc_ad0
	mov	r1, #6
	mov	r0, r5
	bl	__Func_c300
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_92158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c528
	mov	r3, r8
	strb	r3, [r7]
.L9ec:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928

.thumb_func_start OvlFunc_9fc
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r7, r0
	bl	__Func_916b0
	bl	OvlFunc_8cc
	ldr	r5, =.L3c50
	str	r0, [r5]
	cmp	r0, #0
	beq	.Lab8
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, [r5]
	bl	__Func_92054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r7
	add	r1, #0x55
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r2, =0xfffd0000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
	mov	r0, #2
	bl	__Func_30f8
	ldr	r2, =0xfffe0000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #10
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r0, #4
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r0, #4
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
.Lab8:
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9fc

.thumb_func_start OvlFunc_ad0
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, #4
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x12
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ad0

.thumb_func_start OvlFunc_b24
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r0, #0x11
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #0xfa
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb76
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.Lb76:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb8a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.Lb8a:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb9e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.Lb9e:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xac
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r1, #0xa4
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r1, #0xac
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_9218c
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xa4
	mov	r1, #0xa0
	mov	r2, #0xb0
	lsl	r1, #14
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0xc0
	mov	r2, #0xc0
	strb	r3, [r0]
	lsl	r1, #9
	mov	r0, #1
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	bl	__Func_93530
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #1
	bl	__Func_92064
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xac
	mov	r1, #0xc0
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #13
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_92adc
	bl	__Func_93530
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	ldr	r0, =0x159c
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #3
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xa8
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Ldec
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
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
	add	r3, #2
	strh	r3, [r2]
	b	.Le4e

	.pool_aligned

.Ldec:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.Le4e:
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
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
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0x10
	bl	__Func_924d4
	mov	r1, #0
	mov	r2, #0x3c
	mov	r0, #3
	bl	__Func_93040
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r1, #0xd8
	mov	r2, #0xc8
	mov	r0, #5
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xf0
	mov	r2, #0xa0
	mov	r0, #5
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r2, #0
	mov	r0, #5
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #5
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xf0
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	ldr	r1, =0xffe80000
	lsl	r0, #15
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x3d
	bl	__Func_f9080
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x17
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x84
	mov	r2, #0x90
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa4
	mov	r2, #0xd8
	lsl	r2, #16
	mov	r0, #1
	lsl	r1, #17
	bl	__Func_923e4
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x17
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r2, #0x1e
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x68
	mov	r2, #0xa8
	mov	r0, #0x15
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_937b8
	mov	r1, #0x84
	mov	r2, #0x90
	mov	r0, #0x16
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x94
	mov	r2, #0xf0
	mov	r0, #0x16
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xe8
	mov	r1, #0xa0
	b	.L11fc

	.pool_aligned

.L11fc:
	mov	r2, #0x98
	mov	r3, #1
	lsl	r0, #16
	lsl	r1, #14
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #0x16
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x88
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x80
	bl	__Func_921c4
	mov	r1, #0x84
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_921c4
	mov	r1, #0x8c
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_921c4
	bl	__Func_93530
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x94
	mov	r1, #0xa0
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x98
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x16
	bl	__Func_92adc
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x46
	mov	r0, #2
	ldr	r1, =0x107
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x46
	mov	r0, #3
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xa4
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #1
	mov	r2, #0xe0
	bl	__Func_9218c
	mov	r1, #0xac
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xe0
	bl	__Func_9218c
	mov	r1, #0xac
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0xc0
	strb	r3, [r0]
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xa8
	mov	r2, #0xc8
	mov	r0, #0x17
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r2, #0xc8
	lsl	r2, #16
	mov	r0, #0x17
	lsl	r1, #15
	bl	__Func_923e4
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xf0
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #15
	ldr	r1, =0xffe80000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #3
	mov	r0, #0x17
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0x17
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x17
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0x46
	bl	__Func_92adc
	mov	r1, #0x14
	mov	r2, #0
	mov	r0, #5
	bl	__Func_92848
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #0x17
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #5
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #5
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	b	.L161c

	.pool_aligned

.L161c:
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r0, #5
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #0x14
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #5
	mov	r1, #0x80
	mov	r2, #0x90
	bl	__Func_9218c
	mov	r0, #0x14
	mov	r1, #0x78
	mov	r2, #0x88
	bl	__Func_921c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #5
	bl	__Func_923c4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0x58
	mov	r2, #0x98
	mov	r0, #0x15
	bl	__Func_921c4
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xb0
	orr	r3, r6
	strb	r3, [r0]
	mov	r2, #0x14
	mov	r0, #0x17
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #10
	mov	r0, #0x17
	bl	__Func_92064
	mov	r0, #0x17
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0x17
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x11
	bl	__Func_92054
	mov	r3, #4
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0xa8
	mov	r1, #0x68
	mov	r0, #0x17
	bl	__Func_92158
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x17
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0x17
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #4
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92b08
	bl	OvlFunc_3208
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_92b08
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
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0x88
	mov	r2, #0x8c
	mov	r0, #0x14
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_923e4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x9c
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x9c
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__Func_92064
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xa4
	and	r5, r3
	mov	r2, #0xe0
	lsl	r1, #1
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L19c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x16
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
	b	.L19f2

	.pool_aligned

.L19c4:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L19f2:
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa4
	mov	r2, #0xc8
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xa8
	strb	r3, [r0]
	lsl	r1, #1
	mov	r2, #0xd0
	mov	r0, #0x16
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x81
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0x16
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa8
	mov	r2, #0xd8
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_921c4
	ldr	r0, =0x3a
	mov	r1, #2
	bl	__Func_91f90
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x24
	mov	r1, #2
	bl	__Func_91eb0
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b24

.thumb_func_start OvlFunc_1af0
	push	{r5, r6, r7, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x55
	mov	r1, #0xac
	mov	r2, #0xe0
	strb	r6, [r0]
	lsl	r1, #17
	mov	r0, #0
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa4
	mov	r2, #0xe0
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xac
	mov	r2, #0xe8
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa4
	mov	r2, #0xe8
	mov	r0, #3
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa8
	mov	r2, #0xb0
	lsl	r2, #16
	mov	r0, #0x16
	lsl	r1, #17
	bl	__Func_923e4
	mov	r1, #9
	mov	r0, #0x16
	bl	__Func_924d4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xd0
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r7, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r7]
	lsl	r2, #1
	mov	r5, #0x80
	add	r3, r2
	lsl	r5, #1
	str	r5, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #1
	bl	__Func_92adc
	ldr	r0, =0x15d4
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0x9c
	mov	r2, #0xe0
	lsl	r1, #17
	lsl	r2, #15
	mov	r0, #0x18
	bl	__Func_923e4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #3
	mov	r1, r5
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x1e
	mov	r1, #0
	mov	r0, #3
	bl	__Func_93040
	mov	r0, #0x1d
	bl	__Func_f9080
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_933d4
	bl	__Func_93554
	add	r0, #0x55
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, #0xa8
	mov	r2, #0xa8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xac
	mov	r0, #0x18
	lsl	r1, #1
	mov	r2, #0x88
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0x18
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	bl	__Func_93530
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0xac
	mov	r0, #0x18
	lsl	r1, #1
	mov	r2, #0xa0
	bl	__Func_921c4
	mov	r1, #0xa4
	mov	r0, #0x18
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r1, #0x9c
	mov	r0, #0x18
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x18
	lsl	r1, #6
	bl	__Func_92adc
	bl	__Func_93530
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0x18
	mov	r1, r5
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x9c
	mov	r0, #0x18
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1f4c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	ldr	r2, [r7]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L1f6c

	.pool_aligned

.L1f4c:
	ldr	r2, [r7]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L1f6c:
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x18
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_93040
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x18
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #0x18
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0x18
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #8
	mov	r0, #0x16
	bl	__Func_924d4
	mov	r0, #0x2d
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_924d4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x18
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0x18
	bl	__Func_92848
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa4
	mov	r0, #0x18
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x18
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x18
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #7
	mov	r0, #0x16
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #0x18
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92c40
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #3
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L22d0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L22ee

	.pool_aligned

.L22d0:
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
.L22ee:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_93040
	bl	OvlFunc_2f18
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #5
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #5
	mov	r0, #3
	bl	__Func_92adc
	bl	__Func_93554
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0x8c
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x16
	mov	r1, #0xf
	bl	__Func_92950
	mov	r0, #0x18
	mov	r1, #0xf
	bl	__Func_92950
	mov	r1, #0xf0
	mov	r2, #0xd0
	mov	r0, #0x16
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xe8
	mov	r2, #0xd0
	mov	r0, #0x18
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0x16
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	bl	OvlFunc_3060
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xf
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xa4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd0
	bl	__Func_9218c
	mov	r1, #0xa8
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xe0
	bl	__Func_9218c
	mov	r1, #0x9c
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xd8
	neg	r1, r1
	lsl	r0, #16
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	ldr	r6, =iwram_1e70
	mov	r2, #0xb2
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0xe0
	lsl	r2, #18
	str	r2, [r3, #0xc]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0xd0
	add	r0, #0x55
	mov	r2, #0x84
	lsl	r1, #15
	lsl	r2, #17
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	ldr	r5, =0xffe00000
	str	r5, [r0, #0xc]
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #5
	mov	r2, #4
	str	r5, [r0, #0x3c]
	mov	r1, #0x4a
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r3, #0x4a
	str	r2, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92b08
	bl	OvlFunc_3324
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_92b08
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x18
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x18
	mov	r1, #5
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x18
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L26d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_93040
	ldr	r2, [r6, #0x4c]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L26f2

	.pool_aligned

.L26d4:
	ldr	r2, [r6, #0x4c]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L26f2:
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2776
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x18
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
	b	.L27a4
.L2776:
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
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L27a4:
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_2f18
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x16
	mov	r1, #0xf
	bl	__Func_92950
	mov	r0, #0x18
	mov	r1, #0xf
	bl	__Func_92950
	mov	r1, #0xf0
	mov	r2, #0x98
	mov	r0, #0x16
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xe0
	mov	r2, #0xa0
	mov	r0, #0x18
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0x16
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0x18
	bl	__Func_92adc
	bl	OvlFunc_3060
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2870
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x18
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
	b	.L2898
.L2870:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #4
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L2898:
	mov	r2, #0x14
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x16
	bl	__Func_93040
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92b08
	bl	OvlFunc_3208
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_92b08
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_8acc4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x16
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
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
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	mov	r1, #0x80
	str	r3, [r0, #0x18]
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2a68
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
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
	b	.L2a90

	.pool_aligned

.L2a68:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L2a90:
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x9c
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #1
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r1, #0x8c
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
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
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
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
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_92adc
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
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x9c
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_9218c
	mov	r1, #0x9c
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_9218c
	mov	r1, #0x9c
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_9218c
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r0, #3
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =iwram_1e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #19
	str	r2, [r3, #0xc]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	mov	r1, #0x46
	mov	r3, #0x4a
	mov	r0, #4
	str	r2, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x88
	lsl	r0, #4
	bl	__Func_79358
	ldr	r0, =0x881
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1af0

.thumb_func_start OvlFunc_2ddc
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e70
	ldr	r5, [r3]
	mov	r3, #0xb2
	lsl	r3, #1
	sub	sp, #8
	add	r5, r3
	bl	__Func_916b0
	mov	r3, #0xe0
	lsl	r3, #18
	str	r3, [r5, #0xc]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #9
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x55
	mov	r1, #0xd0
	mov	r2, #0x84
	lsl	r2, #17
	lsl	r1, #15
	strb	r6, [r0]
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	ldr	r5, =0xffe00000
	str	r5, [r0, #0xc]
	mov	r0, #9
	bl	__Func_92054
	str	r5, [r0, #0x3c]
	bl	__Func_93554
	add	r0, #0x55
	strb	r6, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xb8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r3, #0x4a
	mov	r1, #0x4a
	str	r2, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92b08
	bl	OvlFunc_3324
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_92b08
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x251
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ddc

.thumb_func_start OvlFunc_2eb8
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0x68
	mov	r2, #0x98
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92b08
	bl	OvlFunc_3208
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2eb8

.thumb_func_start OvlFunc_2f18
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x16
	sub	sp, #0x38
	bl	__Func_92054
	mov	r9, r0
	mov	r0, #0x18
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_92950
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x18
	bl	__Func_92950
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #1
	add	r7, sp, #0x10
	str	r3, [r7]
	mov	r3, #5
	str	r3, [r7, #4]
	mov	r3, #0x8e
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =0x6666
	str	r3, [r7, #8]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, #0
	str	r3, [r7, #0xc]
	mov	r8, r2
.L2f84:
	mov	r0, #1
	bl	__Func_9163c
	mov	r6, #1
	mov	r3, r8
	and	r6, r3
	cmp	r6, #0
	beq	.L2fde
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r9
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Func_4458
	mov	r2, r9
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	ldr	r3, =0xfff00000
	add	r1, r0
	add	r1, r3
	mov	r3, #0x80
	lsl	r3, #11
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	b	.L3024
.L2fde:
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r10
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Func_4458
	mov	r2, r10
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	ldr	r3, =0xfff00000
	add	r1, r0
	add	r1, r3
	mov	r3, #0x80
	lsl	r3, #11
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L3024:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x1f
	bls	.L2f84
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f18

.thumb_func_start OvlFunc_3060
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x16
	sub	sp, #0x38
	bl	__Func_92054
	mov	r9, r0
	mov	r0, #0x18
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #1
	add	r7, sp, #0x10
	str	r3, [r7]
	mov	r3, #5
	str	r3, [r7, #4]
	mov	r3, #0x8e
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =0x6666
	str	r3, [r7, #8]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, #0
	str	r3, [r7, #0xc]
	mov	r8, r2
.L30b8:
	mov	r0, #1
	bl	__Func_9163c
	mov	r6, #1
	mov	r3, r8
	and	r6, r3
	cmp	r6, #0
	beq	.L3112
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r9
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Func_4458
	mov	r2, r9
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	mov	r3, #0x80
	add	r1, r0
	lsl	r3, #14
	add	r1, r3
	ldr	r3, =0xfffc0000
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	b	.L3158
.L3112:
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r10
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Func_4458
	mov	r2, r10
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	mov	r3, #0x80
	add	r1, r0
	lsl	r3, #14
	add	r1, r3
	ldr	r3, =0xfffc0000
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L3158:
	mov	r2, r8
	cmp	r2, #0x14
	bne	.L3172
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_92950
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #1
	bl	__Func_92950
.L3172:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0x1f
	bls	.L30b8
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92950
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92950
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3060

.thumb_func_start OvlFunc_31c0
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, r1
	asr	r2, #20
	ldr	r1, [r3]
	mov	r3, #0x40
	sub	r2, r3, r2
	mov	r6, r2
	mov	r5, r2
	mov	r4, #0
	add	r6, #8
	add	r5, #0xb
	add	r1, #0x14
.L31da:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.L31f8
	ldr	r2, [r3, #8]
	ldr	r3, [r3, #0x10]
	asr	r2, #20
	sub	r2, #4
	asr	r3, #20
	cmp	r2, #4
	bhi	.L31f8
	cmp	r6, r3
	bgt	.L31f8
	cmp	r3, r5
	bge	.L31f8
	stmia	r0!, {r4}
.L31f8:
	add	r4, #1
	cmp	r4, #0x41
	bls	.L31da
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_31c0

.thumb_func_start OvlFunc_3208
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	add	r1, r3
	sub	sp, #0x18
	mov	r11, r1
	mov	r1, #4
	ldr	r2, =0x1999
	add	r1, sp
	mov	r3, #0
	mov	r8, r1
	mov	r10, r2
	mov	r9, r3
	mov	r2, #0
	mov	r1, #0x42
	mov	r3, r8
.L3238:
	add	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #4
	bls	.L3238
	mov	r2, r11
	ldr	r1, [r2, #0xc]
	mov	r0, r8
	bl	OvlFunc_31c0
	mov	r1, r8
	ldr	r3, [r1]
	mov	r2, #0
	cmp	r3, #0x42
	beq	.L327c
	mov	r6, #0
	mov	r5, #0
.L3258:
	mov	r3, r8
	ldr	r0, [r5, r3]
	str	r2, [sp]
	bl	__Func_92054
	ldr	r2, [sp]
	add	r0, #0x55
	mov	r1, #1
	add	r2, #1
	strb	r6, [r0]
	add	r9, r1
	add	r5, #4
	cmp	r2, #4
	bhi	.L327c
	mov	r1, r8
	ldr	r3, [r5, r1]
	cmp	r3, #0x42
	bne	.L3258
.L327c:
	mov	r0, #0xdf
	bl	__Func_f9080
	mov	r2, #0
.L3284:
	mov	r1, r11
	ldr	r3, [r1, #0xc]
	mov	r1, r10
	sub	r3, r1
	mov	r7, #0
	mov	r1, r11
	str	r3, [r1, #0xc]
	cmp	r7, r9
	bcs	.L32c0
	mov	r6, r8
.L3298:
	ldr	r0, [r6]
	str	r2, [sp]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r3, r10
	str	r3, [r0, #0x10]
	ldr	r0, [r6]
	bl	__Func_92054
	mov	r5, r0
	ldmia	r6!, {r0}
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r7, #1
	str	r3, [r5, #0x40]
	ldr	r2, [sp]
	cmp	r7, r9
	bcc	.L3298
.L32c0:
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	bne	.L32cc
	ldr	r3, =0x1999
	add	r10, r3
.L32cc:
	ldr	r1, =0x17fff
	cmp	r10, r1
	ble	.L32d8
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r10, r3
.L32d8:
	mov	r0, #1
	str	r2, [sp]
	bl	__Func_30f8
	ldr	r2, [sp]
	add	r2, #1
	cmp	r2, #0xe3
	bls	.L3284
	mov	r2, #0
	cmp	r2, r9
	bcs	.L3306
	mov	r6, #0
	mov	r5, r8
.L32f2:
	ldmia	r5!, {r0}
	str	r2, [sp]
	bl	__Func_92054
	ldr	r2, [sp]
	add	r0, #0x55
	add	r2, #1
	strb	r6, [r0]
	cmp	r2, r9
	bcc	.L32f2
.L3306:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3208

.thumb_func_start OvlFunc_3324
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	add	r1, r3
	sub	sp, #0x18
	mov	r11, r1
	add	r1, sp, #4
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r3, #0
	mov	r8, r1
	mov	r10, r2
	mov	r9, r3
	mov	r2, #0
	mov	r1, #0x42
	mov	r3, r8
.L3354:
	add	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #4
	bls	.L3354
	mov	r2, r11
	ldr	r1, [r2, #0xc]
	mov	r0, r8
	bl	OvlFunc_31c0
	mov	r1, r8
	ldr	r3, [r1]
	mov	r2, #0
	cmp	r3, #0x42
	beq	.L3398
	mov	r6, #0
	mov	r5, #0
.L3374:
	mov	r3, r8
	ldr	r0, [r5, r3]
	str	r2, [sp]
	bl	__Func_92054
	ldr	r2, [sp]
	add	r0, #0x55
	mov	r1, #1
	add	r2, #1
	strb	r6, [r0]
	add	r9, r1
	add	r5, #4
	cmp	r2, #4
	bhi	.L3398
	mov	r1, r8
	ldr	r3, [r5, r1]
	cmp	r3, #0x42
	bne	.L3374
.L3398:
	mov	r0, #0xdf
	bl	__Func_f9080
	mov	r2, #0
.L33a0:
	mov	r1, r11
	ldr	r3, [r1, #0xc]
	mov	r7, #0
	add	r3, r10
	str	r3, [r1, #0xc]
	cmp	r7, r9
	bcs	.L33da
	mov	r6, r8
.L33b0:
	ldr	r0, [r6]
	str	r2, [sp]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r1, r10
	sub	r3, r1
	str	r3, [r0, #0x10]
	ldr	r0, [r6]
	bl	__Func_92054
	mov	r5, r0
	ldmia	r6!, {r0}
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r7, #1
	str	r3, [r5, #0x40]
	ldr	r2, [sp]
	cmp	r7, r9
	bcc	.L33b0
.L33da:
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	bne	.L33ea
	cmp	r2, #0x4b
	bls	.L33ea
	ldr	r3, =0xffffcccd
	add	r10, r3
.L33ea:
	ldr	r1, =0xccb
	cmp	r10, r1
	bgt	.L33f4
	ldr	r3, =0xccc
	mov	r10, r3
.L33f4:
	mov	r0, #1
	str	r2, [sp]
	bl	__Func_30f8
	ldr	r2, [sp]
	add	r2, #1
	cmp	r2, #0x55
	bls	.L33a0
	mov	r3, #0x80
	lsl	r3, #19
	mov	r1, r11
	str	r3, [r1, #0xc]
	bl	__Func_fe9c
	mov	r0, #2
	bl	__Func_30f8
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3324

.thumb_func_start OvlFunc_3438
	push	{lr}
	mov	r0, #0x5d
	mov	r1, #1
	bl	__Func_96fb0
	mov	r1, #9
	mov	r0, #0x18
	bl	__Func_970f8
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	bl	__Func_97174
	bl	__Func_97194
	pop	{r0}
	bx	r0
.func_end OvlFunc_3438

.thumb_func_start OvlFunc_3460
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	ldrh	r2, [r6]
	ldr	r1, [r5, #0x68]
	mov	r8, r2
	mov	r0, r8
	mov	r10, r1
	bl	__Func_231c
	ldr	r3, [r5, #0x30]
	add	r3, #0x1c
	mov	r2, r3
	mul	r2, r0
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r5, #8]
	bl	__Func_2322
	mov	r2, #0x90
	ldr	r3, [r5, #8]
	lsl	r2, #16
	lsl	r0, #4
	add	r0, r2
	str	r0, [r5, #0x10]
	str	r3, [r5, #0x38]
	str	r0, [r5, #0x40]
	ldr	r1, =0xfffffe00
	ldrh	r3, [r6]
	add	r3, r1
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3460

.thumb_func_start OvlFunc_34bc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, =iwram_1e70
	mov	r10, r0
	ldr	r5, [r3]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	lsl	r3, #16
	add	r5, #0xe8
	mov	r8, r3
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	cmp	r3, #0x81
	bgt	.L3540
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L3512
	mov	r1, #0x98
	mov	r2, #0x90
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #9
	b	.L3528
.L3512:
	mov	r1, #0x98
	mov	r2, #0x97
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, =0x14ccc
.L3528:
	str	r5, [r0, #0x18]
	mov	r0, #8
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	b	.L354e

	.pool_aligned

.L3540:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #12
	lsl	r2, #12
	bl	__Func_923e4
.L354e:
	mov	r1, r10
	cmp	r1, #0
	beq	.L3618
	ldr	r3, =iwram_1e40
	ldr	r6, [r3]
	mov	r3, #0xf
	and	r6, r3
	cmp	r6, #0
	bne	.L3618
	mov	r0, r10
	ldr	r2, [r0, #0xc]
	ldr	r1, [r1, #8]
	mov	r3, #0x80
	lsl	r3, #12
	add	r2, r8
	add	r1, r3
	add	r2, r3
	ldr	r3, [r0, #0x10]
	mov	r0, #0x8e
	lsl	r0, #1
	bl	__Func_c150
	mov	r1, #0xc0
	lsl	r1, #11
	mov	r7, r0
	mov	r0, r8
	bl	_Func_af0
	mov	r8, r0
	mov	r1, r8
	lsl	r1, #16
	mov	r8, r1
	cmp	r7, #0
	beq	.L3618
	ldr	r1, =.L3c54
	mov	r0, r7
	ldr	r5, [r7, #0x50]
	bl	__Func_c2d8
	mov	r1, #3
	mov	r0, r7
	bl	__Func_929d8
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	bl	__Func_4458
	ldr	r3, =0xffff000
	mov	r2, r7
	and	r3, r0
	add	r2, #0x64
	ldr	r0, .L35f4	@ 0
	strh	r3, [r2]
	mov	r3, r7
	mov	r9, r0
	add	r3, #0x66
	ldr	r0, =0xfffff
	strh	r6, [r3]
	mov	r2, r8
	ldr	r3, =OvlFunc_3460
	mov	r1, r10
	and	r0, r2
	str	r1, [r7, #0x68]
	str	r3, [r7, #0x6c]
	asr	r0, #4
	bl	__Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r5
	add	r3, #0x26
	mov	r0, r9
	strb	r0, [r3]
	mov	r1, r10
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	b	.L360c

	.align	2, 0
.L35f4:
	.word	0
	.pool

.L360c:
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r5, #9]
.L3618:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_34bc

	.section .data

.L3938:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3938, (0x39c8-0x3938)
.L39c8:
	.incbin "overlays/rom_7b0400/orig.bin", 0x39c8, (0x39d4-0x39c8)
.L39d4:
	.incbin "overlays/rom_7b0400/orig.bin", 0x39d4, (0x3be4-0x39d4)
.L3be4:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3be4, (0x3c50-0x3be4)
.L3c50:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3c50, (0x3c54-0x3c50)
.L3c54:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3c54
