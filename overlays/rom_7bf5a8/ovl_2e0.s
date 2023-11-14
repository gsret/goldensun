	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_2e0
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.L2f8
	ldr	r0, =.L1f98
	b	.L30e
.L2f8:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.L302
	ldr	r0, =.L2064
	b	.L30e
.L302:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.L30c
	ldr	r0, =.L2190
	b	.L30e
.L30c:
	ldr	r0, =.L1f8c
.L30e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_2e0

.thumb_func_start OvlFunc_334
	push	{lr}
	mov	r0, #9
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	cmp	r2, #0
	bge	.L346
	ldr	r3, =0xfffff
	add	r2, r3
.L346:
	ldr	r0, [r0, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L352
	ldr	r3, =0xfffff
	add	r0, r3
.L352:
	asr	r3, r0, #20
	cmp	r3, #0xf
	bne	.L35e
	mov	r0, #1
	cmp	r2, #0x36
	beq	.L360
.L35e:
	mov	r0, #0
.L360:
	pop	{r1}
	bx	r1
.func_end OvlFunc_334

.thumb_func_start OvlFunc_368
	push	{lr}
	ldr	r0, =0x9a9
	bl	__Func_79338
	cmp	r0, #0
	bne	.L390
	bl	OvlFunc_170
	bl	OvlFunc_334
	cmp	r0, #0
	beq	.L390
	ldr	r0, =0x9a9
	bl	__Func_79358
	mov	r0, #0x50
	bl	__Func_f9080
	bl	OvlFunc_398
.L390:
	pop	{r0}
	bx	r0
.func_end OvlFunc_368

.thumb_func_start OvlFunc_398
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x50
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #4
	bl	__Func_105d4
	mov	r3, #0x34
	str	r3, [sp, #4]
	mov	r5, #0x10
	mov	r0, #0x17
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x35
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_398

.thumb_func_start OvlFunc_3e0
	push	{lr}
	ldr	r0, =0x9a9
	bl	__Func_79338
	cmp	r0, #0
	bne	.L404
	bl	OvlFunc_334
	cmp	r0, #0
	beq	.L404
	ldr	r0, =0x9a9
	bl	__Func_79358
	mov	r0, #0x50
	bl	__Func_f9080
	bl	OvlFunc_398
.L404:
	pop	{r0}
	bx	r0
.func_end OvlFunc_3e0

.thumb_func_start OvlFunc_40c
	bx	lr
.func_end OvlFunc_40c

.thumb_func_start OvlFunc_410
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x50
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5a
	mov	r1, #9
	mov	r2, #2
	mov	r3, #3
	bl	__Func_105d4
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r5, #0x11
	mov	r0, #0x1b
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_410

.thumb_func_start OvlFunc_458
	push	{lr}
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	cmp	r2, #0
	bge	.L46a
	ldr	r3, =0xfffff
	add	r2, r3
.L46a:
	ldr	r0, [r0, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L476
	ldr	r3, =0xfffff
	add	r0, r3
.L476:
	asr	r3, r0, #20
	cmp	r3, #0x10
	bne	.L482
	mov	r0, #1
	cmp	r2, #0xc
	beq	.L484
.L482:
	mov	r0, #0
.L484:
	pop	{r1}
	bx	r1
.func_end OvlFunc_458

.thumb_func_start OvlFunc_48c
	push	{lr}
	bl	OvlFunc_170
	ldr	r0, =0x9aa
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4be
	bl	OvlFunc_458
	cmp	r0, #0
	beq	.L4be
	ldr	r0, =0x207
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4be
	mov	r0, #0x50
	bl	__Func_f9080
	bl	OvlFunc_410
	ldr	r0, =0x9aa
	bl	__Func_79358
.L4be:
	pop	{r0}
	bx	r0
.func_end OvlFunc_48c

.thumb_func_start OvlFunc_4cc
	bx	lr
.func_end OvlFunc_4cc

.thumb_func_start OvlFunc_4d0
	push	{lr}
	ldr	r0, =0x9aa
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4fe
	bl	OvlFunc_458
	cmp	r0, #0
	beq	.L4fe
	ldr	r0, =0x207
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4fe
	mov	r0, #0x50
	bl	__Func_f9080
	bl	OvlFunc_410
	ldr	r0, =0x9aa
	bl	__Func_79358
.L4fe:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d0

.thumb_func_start OvlFunc_50c
	push	{r5, lr}
	mov	r0, #0x10
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x17
	mov	r2, #0x20
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L544
	mov	r0, #0x10
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L544:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_50c

.thumb_func_start OvlFunc_554
	push	{r5, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x17
	mov	r2, #0x22
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L58c
	mov	r0, #0x11
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L58c:
	ldr	r0, =0x201
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_554

.thumb_func_start OvlFunc_5a0
	push	{r5, lr}
	mov	r0, #0x12
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x18
	mov	r2, #0x22
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L5d8
	mov	r0, #0x12
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L5d8:
	ldr	r0, =0x202
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5a0

.thumb_func_start OvlFunc_5ec
	push	{r5, lr}
	mov	r0, #0x13
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x1a
	mov	r2, #0x20
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L62c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L62c:
	ldr	r0, =0x203
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5ec

.thumb_func_start OvlFunc_640
	push	{r5, lr}
	mov	r0, #0x14
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x1a
	mov	r2, #0x22
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L680
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L680:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_640

.thumb_func_start OvlFunc_690
	push	{r5, lr}
	mov	r0, #0x15
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x1c
	mov	r2, #0x21
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L6d0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L6d0:
	ldr	r0, =0x205
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_690

.thumb_func_start OvlFunc_6e4
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	blt	.L6fc
	bl	OvlFunc_704
	b	.L700
.L6fc:
	bl	OvlFunc_734
.L700:
	pop	{r0}
	bx	r0
.func_end OvlFunc_6e4

.thumb_func_start OvlFunc_704
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r6, #0x10
	mov	r7, #2
	mov	r5, #5
	mov	r8, r3
.L714:
	mov	r0, r6
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	sub	r5, #1
	orr	r3, r7
	strb	r3, [r0]
	add	r6, #1
	cmp	r5, #0
	bge	.L714
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_704

.thumb_func_start OvlFunc_734
	push	{r5, r6, r7, lr}
	mov	r6, #0x10
	mov	r7, #1
	mov	r5, #5
.L73c:
	mov	r0, r6
	bl	__Func_92054
	sub	r5, #1
	add	r0, #0x23
	strb	r7, [r0]
	add	r6, #1
	cmp	r5, #0
	bge	.L73c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_734

.thumb_func_start OvlFunc_754
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r2, r3
	mov	r10, r2
	sub	sp, #0x10
	bl	__Func_916b0
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L782
	mov	r3, r10
	str	r2, [r3, #0x18]
	str	r2, [r3, #0x1c]
	b	.L78c
.L782:
	mov	r3, #1
	neg	r3, r3
	mov	r2, r10
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
.L78c:
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r0, #0xa3
	bl	__Func_f9080
	ldr	r3, =0x1df
	mov	r8, r3
.L7b4:
	bl	__Func_4458
	mov	r2, r10
	mov	r5, r0
	ldr	r0, [r2, #0x24]
	bl	OvlFunc_145c
	lsl	r5, #11
	lsr	r5, #16
	str	r0, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r0, r5
	bl	OvlFunc_145c
	mov	r7, r1
	mov	r6, r0
	cmp	r5, #0
	bge	.L7e4
	ldr	r2, =0x41f00000
	ldr	r3, =0
	bl	OvlFunc_13ac
	mov	r7, r1
	mov	r6, r0
.L7e4:
	mov	r3, r7
	mov	r2, r6
	ldr	r0, =0x40b26e97
	ldr	r1, =0x8d4fdf3b
	bl	OvlFunc_13e4
	mov	r3, r1
	mov	r2, r0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0xc]
	bl	OvlFunc_13e4
	bl	OvlFunc_14d8
	mov	r3, r10
	str	r0, [r3, #0x24]
	mov	r0, #1
	bl	__Func_9163c
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bge	.L7b4
	mov	r5, #6
	mov	r2, #0
	mov	r6, #6
	mov	r8, r2
	lsl	r7, r5, #10
.L820:
	lsl	r1, r5, #5
	orr	r1, r7
	orr	r1, r6
	ldr	r0, =REG_BLDALPHA
	bl	__Func_387c
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, r8
	mov	r1, #0x14
	bl	_Func_b1c
	cmp	r0, #0
	bne	.L842
	sub	r6, #1
	sub	r5, #1
.L842:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0x45
	ble	.L820
	mov	r3, #0x13
	mov	r2, #0x5b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x53
	mov	r2, #0xf
	mov	r3, #8
	mov	r0, #0x13
	bl	__Func_105d4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	bl	__Func_fe9c
	bl	__Func_12350
	bl	__Func_91750
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_754

.thumb_func_start OvlFunc_8a8
	push	{r5, r6, lr}
	ldr	r0, =0x9a8
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L932
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	ldr	r0, =0x9a8
	bl	__Func_79358
	mov	r0, #0x9b
	bl	__Func_f9080
	mov	r5, #0x1b
	mov	r6, #0x5c
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x6b
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0x27
	bl	__Func_9163c
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x6c
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0x9c
	bl	__Func_f9080
	mov	r6, #0x19
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	mov	r0, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0x28
	bl	__Func_9163c
	bl	OvlFunc_754
.L932:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8a8

.thumb_func_start OvlFunc_944
	push	{r5, r6, r7, lr}
	bl	__Func_92054
	mov	r5, #0
	mov	r6, r0
.L94e:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	ldr	r2, =0xffffe
	sub	r3, #1
	cmp	r3, r2
	bhi	.L9a8
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L96a
	ldr	r7, =0xfffff
	add	r3, r7
.L96a:
	asr	r4, r3, #20
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L976
	ldr	r2, =0xfffff
	add	r3, r2
.L976:
	asr	r1, r3, #20
	ldr	r3, [r6, #0x10]
	cmp	r3, #0
	bge	.L982
	ldr	r7, =0xfffff
	add	r3, r7
.L982:
	asr	r2, r3, #20
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bge	.L98e
	ldr	r7, =0xfffff
	add	r3, r7
.L98e:
	asr	r3, #20
	sub	r2, r4
	cmp	r3, r1
	bne	.L9a8
	cmp	r2, #0
	bne	.L9a8
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r0, #0xc]
	str	r2, [r0, #0x48]
	str	r2, [r0, #0x28]
	mov	r0, #1
	b	.L9b0
.L9a8:
	add	r5, #1
	cmp	r5, #3
	ble	.L94e
	mov	r0, #0
.L9b0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944

.thumb_func_start OvlFunc_9c0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x5b
	ldrb	r6, [r0]
	cmp	r6, #0
	bne	.La82
	ldr	r1, =.L2224
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0xbe
	ble	.L9de
	str	r6, [r1]
.L9de:
	ldr	r7, =.L2228
	ldr	r0, [r7]
	ldr	r2, =.L2214
	lsl	r3, r0, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r1]
	cmp	r2, r3
	bne	.La06
	add	r0, #0xb
	bl	__Func_92054
	ldr	r3, =0xa3d
	mov	r5, r0
	str	r3, [r5, #0x48]
	ldr	r3, [r7]
	add	r3, #1
	str	r3, [r7]
	cmp	r3, #3
	ble	.La06
	str	r6, [r7]
.La06:
	mov	r6, #0
	mov	r7, #0
.La0a:
	mov	r0, r6
	add	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	blt	.La3c
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff
	cmp	r3, r2
	bgt	.La3c
	bl	OvlFunc_b8c
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, r5
	add	r3, #0x5b
	str	r7, [r5, #0x48]
	str	r7, [r5, #0x28]
	mov	r0, #0x6a
	strb	r7, [r3]
	bl	__Func_f9080
.La3c:
	add	r6, #1
	cmp	r6, #3
	ble	.La0a
	mov	r0, #0xa
	bl	OvlFunc_944
	cmp	r0, #0
	beq	.La72
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x207
	bl	__Func_79338
	cmp	r0, #0
	bne	.La6c
	ldr	r0, =0x207
	bl	__Func_79358
	mov	r0, #0xcc
	bl	__Func_f9080
	b	.La72
.La6c:
	mov	r0, #0x6a
	bl	__Func_f9080
.La72:
	mov	r0, #9
	bl	OvlFunc_944
	cmp	r0, #0
	beq	.La82
	mov	r0, #0x6a
	bl	__Func_f9080
.La82:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9c0

.thumb_func_start OvlFunc_aa0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x5b
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb3a
	ldr	r3, =.L222c
	ldr	r2, [r3]
	add	r2, #1
	str	r2, [r3]
	mov	r3, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.Lade
	ldr	r5, =.L2230
	bl	__Func_4458
	mov	r1, #6
	bl	_Func_b50
	str	r0, [r5]
	add	r0, #0xa
	bl	__Func_92054
	ldr	r3, =0xa3d
	mov	r5, r0
	str	r3, [r5, #0x48]
.Lade:
	mov	r7, #0xff
	mov	r6, #0
	lsl	r7, #16
.Lae4:
	mov	r0, r6
	add	r0, #0xa
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #2
	mov	r5, r0
	add	r0, r6, r2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb1a
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	bgt	.Lb0a
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x20ffff
	cmp	r3, r2
	bgt	.Lb34
.Lb0a:
	mov	r3, #0
	str	r7, [r5, #0xc]
	str	r3, [r5, #0x48]
	str	r3, [r5, #0x28]
	mov	r0, #0x6a
	bl	__Func_f9080
	b	.Lb34
.Lb1a:
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	bgt	.Lb28
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff
	cmp	r3, r2
	bgt	.Lb34
.Lb28:
	str	r0, [r5, #0x48]
	str	r0, [r5, #0x28]
	str	r7, [r5, #0xc]
	mov	r0, #0x6a
	bl	__Func_f9080
.Lb34:
	add	r6, #1
	cmp	r6, #5
	ble	.Lae4
.Lb3a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_aa0

.thumb_func_start OvlFunc_b54
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	mov	r0, r1
	mov	r1, r2
	cmp	r6, #0
	beq	.Lb82
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_447c
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	mov	r0, r6
	bl	__Func_d14c
.Lb82:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b54

	.section .data

.L1f8c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1f8c, (0x1f98-0x1f8c)
.L1f98:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1f98, (0x2064-0x1f98)
.L2064:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2064, (0x2190-0x2064)
.L2190:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2190, (0x2214-0x2190)
.L2214:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2214, (0x2224-0x2214)
.L2224:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2224, (0x2228-0x2224)
.L2228:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2228, (0x222c-0x2228)
.L222c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x222c, (0x2230-0x222c)
.L2230:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x2230
