	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L7a
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, [r1, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r1, [r1, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_44d0
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	asr	r0, #16
	cmp	r0, #0
	beq	.L7a
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L6e
	mov	r0, r2
.L6e:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L76
	mov	r0, r2
.L76:
	add	r3, r0
	strh	r3, [r5, #6]
.L7a:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_88
	ldr	r0, =.L2638
	bx	lr
.func_end OvlFunc_88

.thumb_func_start OvlFunc_90
	mov	r0, #0
	bx	lr
.func_end OvlFunc_90

.thumb_func_start OvlFunc_94
	ldr	r0, =.L2920
	bx	lr
.func_end OvlFunc_94

.thumb_func_start OvlFunc_9c
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x21
	cmp	r2, r3
	bne	.Le4
	ldr	r5, =.L29b4
	mov	r0, r5
	bl	__Func_8b868
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le0
	mov	r1, r5
	mov	r3, #2
	add	r1, #0xa6
	strb	r3, [r1]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0xbe
	strb	r2, [r3]
	mov	r2, r5
	add	r2, #0xd6
	mov	r3, #3
	strb	r3, [r2]
	add	r2, #0x18
	mov	r3, #1
	strb	r3, [r2]
.Le0:
	mov	r0, r5
	b	.Le6
.Le4:
	ldr	r0, =.L299c
.Le6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_9c

.thumb_func_start OvlFunc_100
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x21
	cmp	r2, r3
	bne	.L118
	ldr	r0, =.L2ca8
	b	.L11a
.L118:
	ldr	r0, =.L2c9c
.L11a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_100

.thumb_func_start OvlFunc_130
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1420
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_130

.thumb_func_start OvlFunc_150
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x1764
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_150

.thumb_func_start OvlFunc_1b4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1750
	bl	__Func_92b94
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1d0
	ldr	r0, =0x1768
	bl	__Func_92b94
.L1d0:
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	ldr	r0, =0x302
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b4

.thumb_func_start OvlFunc_1f4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1769
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f4

.thumb_func_start OvlFunc_214
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L22c
	ldr	r0, =0x174b
	bl	__Func_92b94
	b	.L25e
.L22c:
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L23e
	ldr	r0, =0x176e
	bl	__Func_92b94
	b	.L25e
.L23e:
	ldr	r0, =0x1432
	bl	__Func_92b94
	ldr	r0, =0x84d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L25e
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L25e:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_214

.thumb_func_start OvlFunc_28c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1756
	bl	__Func_92b94
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2a8
	ldr	r0, =0x176c
	bl	__Func_92b94
.L2a8:
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92f84
	ldr	r0, =0x303
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_28c

.thumb_func_start OvlFunc_2cc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2e4
	ldr	r0, =0x174c
	bl	__Func_92b94
	b	.L30c
.L2e4:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2f6
	ldr	r0, =0x1436
	bl	__Func_92b94
	b	.L30c
.L2f6:
	ldr	r0, =0x1434
	bl	__Func_92b94
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L30c
	ldr	r0, =0x176f
	bl	__Func_92b94
.L30c:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2cc

.thumb_func_start OvlFunc_338
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r6, [r3]
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, #0
	cmp	r3, #9
	bne	.L35e
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L366
	mov	r0, #0xbc
	b	.L360
.L35e:
	mov	r0, #0x9e
.L360:
	bl	__Func_f9080
	mov	r5, #1
.L366:
	cmp	r5, #0
	beq	.L376
	mov	r0, #1
	bl	__Func_118a8
	mov	r0, #2
	bl	__Func_118a8
.L376:
	bl	__Func_916b0
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	bne	.L3b2
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_9228c
	b	.L3be
.L3b2:
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_92208
.L3be:
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	bl	__Func_91750
	mov	r0, #1
	bl	__Func_118c0
	mov	r0, #2
	bl	__Func_118c0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_338

.thumb_func_start OvlFunc_3ec
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x174d
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3ec

.thumb_func_start OvlFunc_408
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x174e
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_408

.thumb_func_start OvlFunc_424
	push	{lr}
	bl	__Func_79338
	cmp	r0, #0
	beq	.L434
	bl	OvlFunc_3ec
	b	.L438
.L434:
	bl	OvlFunc_408
.L438:
	pop	{r0}
	bx	r0
.func_end OvlFunc_424

.thumb_func_start OvlFunc_43c
	push	{lr}
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L452
	mov	r0, #0x84
	lsl	r0, #2
	bl	OvlFunc_424
	b	.L45e
.L452:
	mov	r2, #0x84
	lsl	r2, #2
	mov	r0, #0x15
	mov	r1, #0xb6
	bl	OvlFunc_4ec
.L45e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_43c

.thumb_func_start OvlFunc_468
	push	{lr}
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L47c
	ldr	r0, =0x211
	bl	OvlFunc_424
	b	.L486
.L47c:
	ldr	r2, =0x211
	mov	r0, #0x16
	mov	r1, #0xb7
	bl	OvlFunc_4ec
.L486:
	pop	{r0}
	bx	r0
.func_end OvlFunc_468

.thumb_func_start OvlFunc_494
	push	{lr}
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4a8
	ldr	r0, =0x212
	bl	OvlFunc_424
	b	.L4b2
.L4a8:
	ldr	r2, =0x212
	mov	r0, #0x17
	mov	r1, #0xba
	bl	OvlFunc_4ec
.L4b2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_494

.thumb_func_start OvlFunc_4c0
	push	{lr}
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4d4
	ldr	r0, =0x213
	bl	OvlFunc_424
	b	.L4de
.L4d4:
	ldr	r2, =0x213
	mov	r0, #0x18
	mov	r1, #0xbd
	bl	OvlFunc_4ec
.L4de:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c0

.thumb_func_start OvlFunc_4ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r6, r0
	mov	r7, r2
	bl	__Func_916b0
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_8e078
	mov	r1, #0
	mov	r8, r0
	mov	r0, r5
	bl	__Func_91a58
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L53a
	mov	r1, #2
	mov	r0, r6
	bl	__Func_924d4
	ldr	r0, =0x84e
	bl	__Func_79358
	mov	r0, r7
	bl	__Func_79358
	ldr	r0, =0x322
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	b	.L548
.L53a:
	mov	r0, #0x7d
	bl	__Func_f9080
	mov	r0, r6
	mov	r1, #5
	bl	__Func_924d4
.L548:
	mov	r0, r8
	bl	__Func_c0f4
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4ec

.thumb_func_start OvlFunc_568
	push	{lr}
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	bne	.L5e0
	ldr	r0, =0x322
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5e0
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1748
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x9a
	mov	r0, #0
	lsl	r1, #2
	ldr	r2, =0x2fa
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r0, #0x13
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
.L5e0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_568

.thumb_func_start OvlFunc_5f4
	push	{lr}
	ldr	r0, =0x84e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L6aa
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0xbf
	mov	r0, #0x13
	ldr	r1, =0x26e
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xf0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	ldr	r0, =0x1749
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x13
	ldr	r1, =0x23a
	ldr	r2, =0x2f6
	bl	__Func_921c4
	mov	r1, #0
	mov	r0, #0x13
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x85e
	bl	__Func_79358
	ldr	r0, =0x333
	bl	__Func_79358
	bl	__Func_91750
.L6aa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_5f4

.thumb_func_start OvlFunc_6e0
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r0, #1
	sub	sp, #8
	bl	__Func_118c0
	mov	r0, #2
	bl	__Func_118c0
	ldr	r0, =0x84b
	bl	__Func_79358
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L716
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
.L716:
	ldr	r0, =0x84f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L758
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.L758
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1d
	bne	.L740
	bl	OvlFunc_8c0
	b	.L888
.L740:
	cmp	r3, #9
	beq	.L746
	b	.L888
.L746:
	ldr	r0, =0x321
	bl	__Func_79338
	cmp	r0, #0
	bne	.L752
	b	.L888
.L752:
	bl	OvlFunc_179c
	b	.L888
.L758:
	ldr	r0, =0x84e
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	beq	.L766
	b	.L888
.L766:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1d
	bne	.L792
	ldr	r0, =0x85e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L782
	b	.L888
.L782:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.L888
	bl	OvlFunc_19b0
	b	.L888
.L792:
	cmp	r3, #0x1c
	bne	.L888
	ldr	r0, =0x322
	bl	__Func_79338
	cmp	r0, #0
	beq	.L888
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L884
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r5, #0x26
	mov	r0, #0x26
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r3, #1
	mov	r1, #0x37
	mov	r2, #4
	str	r5, [sp]
	bl	__Func_10704
	mov	r1, #0x9a
	mov	r2, #0xb6
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x9e
	mov	r2, #0xb6
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xa2
	mov	r2, #0xb6
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xa6
	mov	r2, #0xb6
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0x18
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x17
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x18
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r5, =0xfffc0000
	str	r5, [r0, #0xc]
	mov	r0, #0x16
	bl	__Func_92054
	str	r5, [r0, #0xc]
	mov	r0, #0x17
	bl	__Func_92054
	str	r5, [r0, #0xc]
	mov	r0, #0x18
	bl	__Func_92054
	str	r5, [r0, #0xc]
	b	.L888
.L884:
	bl	OvlFunc_21bc
.L888:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_6e0

.thumb_func_start OvlFunc_8c0
	push	{r5, lr}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #1
	mov	r2, #0xa6
	strb	r3, [r0]
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x85f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L940
	mov	r1, #1
	mov	r3, #0
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_933f8
	mov	r1, #0xdb
	mov	r0, #0x13
	lsl	r1, #18
	ldr	r2, =0x27a0000
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x37e0000
	ldr	r2, =0x31e0000
	bl	__Func_923e4
.L940:
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r0, =0x85f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L974
	b	.Le2c
.L974:
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r2, =0x31e0000
	mov	r0, #0x13
	ldr	r1, =0x37e0000
	bl	__Func_923e4
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_933f8
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0xae
	ldr	r1, =0x37e
	lsl	r2, #2
	mov	r0, #0x13
	bl	__Func_9218c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_933f8
	mov	r0, #0x13
	bl	__Func_923c4
	mov	r2, #0xae
	mov	r0, #0x13
	ldr	r1, =0x34a
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x9f
	mov	r0, #0x13
	ldr	r1, =0x34a
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xdb
	ldr	r2, =0x27a
	mov	r0, #0x13
	lsl	r1, #2
	bl	__Func_921c4
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x1437
	bl	__Func_92b94
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #0x12
	ldr	r1, =0x105
	bl	__Func_937b8
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_933f8
	mov	r0, #0
	ldr	r1, =0x37e0000
	ldr	r2, =0x31e0000
	bl	__Func_923e4
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	ldr	r2, =0x2d6
	ldr	r1, =0x37e
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_925cc
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r2, #0xa6
	ldr	r0, =0x37e0000
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_933f8
	mov	r2, #0xab
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb26
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.Lb26:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb3a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.Lb3a:
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb58
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb58
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.Lb58:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
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
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r0, #2
	mov	r1, #0x10
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbbc
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #0x10
	bl	__Func_9228c
.Lbbc:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #3
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
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_92560
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0x12
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_92c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lcb6
	b	.Lf86
.Lcb6:
	ldr	r0, =0x1440
	bl	__Func_92b94
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x13
	lsl	r1, #6
	b	.Ld1c

	.pool_aligned

.Ld1c:
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Ld72
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.Ld72:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Ld92
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.Ld92:
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ldbc
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Ldbc
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.Ldbc:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	ldr	r0, =0x85f
	bl	__Func_79358
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xbc
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_921c4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	bl	.L177e

	.pool_aligned

.Le2c:
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0xab
	lsl	r2, #2
	ldr	r1, =0x37e
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xa6
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	ldr	r0, =0x37e0000
	bl	__Func_933f8
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Le82
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.Le82:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Le96
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.Le96:
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.Leb4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Leb4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.Leb4:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
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
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r0, #2
	mov	r1, #0x10
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf18
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #0x10
	bl	__Func_9228c
.Lf18:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #3
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
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r1, =0x101
	mov	r2, #0x3c
	mov	r0, #0x12
	bl	__Func_937b8
	ldr	r0, =0x1442
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.Lf86
	b	.Lcb6
.Lf86:
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
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
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x12
	bl	__Func_937b8
	ldr	r0, =0x1443
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0x12
	bl	__Func_92054
	cmp	r0, #0
	beq	.L101c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x14
	bl	__Func_923e4
.L101c:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0xa7
	ldr	r1, =0x37e
	lsl	r2, #2
	mov	r0, #0x14
	bl	__Func_92158
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_92c40
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L1108
.L10de:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	ldr	r0, =0x1447
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L10de
.L1108:
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	ldr	r0, =0x1448
	bl	__Func_92b94
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
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
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #0x12
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0x12
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0xa
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	b	.L1244

	.pool_aligned

.L1244:
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_92c40
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	b	.L12b2

	.pool_aligned

.L12a4:
	ldr	r0, =0x144e
	bl	__Func_92b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_92c40
.L12b2:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L12a4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	ldr	r0, =0x144f
	bl	__Func_92b94
	mov	r2, #0x14
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
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
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_92adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0x14
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x12
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1436
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x14
	bl	__Func_92128
.L1436:
	mov	r0, #0x14
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_93874
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
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #2
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x107
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r5, =.L25c0
	mov	r0, #0
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_92a1c
	mov	r0, #1
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_92a1c
	mov	r0, #2
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_92a1c
	mov	r0, #3
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_92a1c
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x286
	bl	__Func_921c4
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x29a
	bl	__Func_921c4
	mov	r1, #0xd8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #5
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x4013
	bl	__Func_93040
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #2
	bl	__Func_920a0
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_92a1c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L16da
	b	.L16cc

	.pool_aligned

.L16cc:
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L16da:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L16fa
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L16fa:
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1724
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1724
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L1724:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xbc
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_921c4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x321
	bl	__Func_79358
.L177e:
	mov	r0, #0x1d
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8c0

.thumb_func_start OvlFunc_179c
	push	{lr}
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0xa5
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_118a8
	mov	r0, #2
	bl	__Func_118a8
	mov	r1, #0x80
	mov	r2, #0x9e
	lsl	r1, #17
	lsl	r2, #18
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0xa1
	lsl	r2, #2
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_118c0
	mov	r0, #2
	bl	__Func_118c0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_925cc
	ldr	r0, =0x145e
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x84
	mov	r2, #0xa5
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa5
	mov	r0, #0x13
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_93054
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0xc1
	mov	r0, #0x13
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_923e4
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r0, =0x84f
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_179c

.thumb_func_start OvlFunc_1958
	push	{lr}
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_1958

.thumb_func_start OvlFunc_1984
	push	{lr}
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
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_1984

.thumb_func_start OvlFunc_19b0
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_93554
	mov	r5, #0
	add	r0, #0x55
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #0
	strb	r5, [r0]
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_923e4
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r6, =iwram_1ebc
	mov	r3, #0xe0
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xde
	mov	r0, #0x13
	lsl	r1, #18
	ldr	r2, =0x31e0000
	bl	__Func_923e4
	mov	r1, #0xe2
	ldr	r2, =0x31e0000
	mov	r0, #0
	lsl	r1, #18
	bl	__Func_923e4
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_933f8
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0xde
	mov	r2, #0xb4
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xe2
	mov	r2, #0xb8
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x13
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x1728
	bl	__Func_92b94
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1ad6
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1ad6:
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	cmp	r5, #0
	beq	.L1af0
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1af0:
	mov	r1, #1
	mov	r2, #0xa6
	lsl	r2, #18
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	bl	__Func_933f8
	ldr	r1, =.L25d4
	mov	r0, #0x13
	bl	__Func_9207c
	mov	r2, #0xab
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b28
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L1b28:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b3c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L1b3c:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b50
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L1b50:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
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
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r0, #2
	mov	r1, #0x10
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r2, #0x10
	mov	r1, #0x20
	mov	r0, #3
	bl	__Func_9228c
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x13
	bl	__Func_920e8
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1c20
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1c20:
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	cmp	r5, #0
	beq	.L1c44
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1c44:
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1c60
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1c60:
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	cmp	r5, #0
	beq	.L1c84
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1c84:
	bl	OvlFunc_1958
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x84f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1cec
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	b	.L1cf2

	.pool_aligned

.L1cec:
	mov	r0, #0x28
	bl	__Func_9163c
.L1cf2:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x84f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1df8
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_92c40
	bl	OvlFunc_1958
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L1db6
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1db6:
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_92adc
	bl	OvlFunc_1984
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	cmp	r5, #0
	beq	.L1dea
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1dea:
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	b	.L1e08
.L1df8:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #4
	strh	r3, [r2]
.L1e08:
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_92c40
	bl	OvlFunc_1958
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1e48
	ldr	r0, =0x1737
	bl	__Func_92b94
	b	.L1e4e

	.pool_aligned

.L1e48:
	ldr	r0, =0x1738
	bl	__Func_92b94
.L1e4e:
	bl	OvlFunc_1984
	mov	r2, #0x14
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	ldr	r0, =0x1739
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	bl	OvlFunc_1984
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x84
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0x12
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_92c40
	bl	OvlFunc_1958
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L1f76
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1f76:
	bl	OvlFunc_1984
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	cmp	r5, #0
	beq	.L1f98
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1f98:
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L205a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L205a:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L207a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L207a:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L209a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L209a:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	ldr	r2, =.L25c0
	mov	r0, #0
	ldr	r1, =0x10013
	bl	__Func_92a1c
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x286
	bl	__Func_921c4
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x29a
	bl	__Func_921c4
	mov	r1, #0xd8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0xb1
	mov	r0, #0x13
	ldr	r1, =0x376
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xbf
	mov	r0, #0x13
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_9218c
	mov	r2, #0xbf
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_921c4
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x322
	bl	__Func_79358
	ldr	r0, =0x84f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2172
	ldr	r0, =0x84f
	bl	__Func_79358
	ldr	r0, =0x84a
	bl	__Func_79358
.L2172:
	mov	r0, #6
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19b0

.thumb_func_start OvlFunc_21bc
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	bl	__Func_93554
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, #0x9d
	mov	r2, #0xbb
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #0
	bl	__Func_933f8
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r5, #0x26
	mov	r0, #0x26
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r1, #0x37
	mov	r3, #1
	mov	r2, #4
	mov	r0, #0x2a
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xbe
	strh	r6, [r0, #6]
	ldr	r1, =0x2410000
	lsl	r2, #18
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0x94
	mov	r2, #0xbe
	strh	r6, [r0, #6]
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #0x11
	bl	__Func_92054
	mov	r3, #0x90
	lsl	r3, #8
	mov	r2, #0xbf
	strh	r3, [r0, #6]
	ldr	r1, =0x2960000
	mov	r0, #0x11
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x9a
	mov	r2, #0xb6
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x9e
	mov	r2, #0xb6
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xa2
	mov	r2, #0xb6
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xa6
	mov	r2, #0xb6
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0x18
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r5, .L2308	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x17
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x18
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r5, =0xfffc0000
	str	r5, [r0, #0xc]
	mov	r0, #0x16
	bl	__Func_92054
	str	r5, [r0, #0xc]
	mov	r0, #0x17
	bl	__Func_92054
	b	.L2318

	.align	2, 0
.L2308:
	.word	0
	.pool

.L2318:
	str	r5, [r0, #0xc]
	mov	r0, #0x18
	bl	__Func_92054
	str	r5, [r0, #0xc]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0x9d
	mov	r2, #0xbf
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0x99
	mov	r2, #0xbf
	lsl	r2, #2
	mov	r0, #0
	lsl	r1, #2
	bl	__Func_921c4
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	ldr	r0, =0x1746
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0xc3
	mov	r0, #0x13
	ldr	r1, =0x26e
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_21bc

	.section .data

.L25c0:
	.incbin "overlays/rom_79c738/orig.bin", 0x25c0, (0x25d4-0x25c0)
.L25d4:
	.incbin "overlays/rom_79c738/orig.bin", 0x25d4, (0x2638-0x25d4)
.L2638:
	.incbin "overlays/rom_79c738/orig.bin", 0x2638, (0x2920-0x2638)
.L2920:
	.incbin "overlays/rom_79c738/orig.bin", 0x2920, (0x299c-0x2920)
.L299c:
	.incbin "overlays/rom_79c738/orig.bin", 0x299c, (0x29b4-0x299c)
.L29b4:
	.incbin "overlays/rom_79c738/orig.bin", 0x29b4, (0x2c9c-0x29b4)
.L2c9c:
	.incbin "overlays/rom_79c738/orig.bin", 0x2c9c, (0x2ca8-0x2c9c)
.L2ca8:
	.incbin "overlays/rom_79c738/orig.bin", 0x2ca8
