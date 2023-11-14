	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, lr}
	mov	r5, r0
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	beq	.L6e
	cmp	r3, #2
	bgt	.L48
	cmp	r3, #0
	beq	.L82
	b	.Lbc
.L48:
	cmp	r3, #4
	beq	.L60
	cmp	r3, #6
	bne	.Lbc
	ldr	r3, [r0, #0x18]
	ldr	r2, =0xffffc000
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x1c]
	lsl	r2, #6
	b	.L7c
.L60:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #6
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff000
	b	.L7a
.L6e:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
.L7a:
	ldr	r3, [r0, #0x1c]
.L7c:
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.Lbc
.L82:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	mov	r3, r0
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.Lae
	bl	__Func_4458
	mov	r1, #0x28
	bl	_Func_b50
	add	r0, #0x28
	b	.Lba
.Lae:
	bl	__Func_4458
	mov	r1, #0x14
	bl	_Func_b50
	add	r0, #0x14
.Lba:
	strh	r0, [r5]
.Lbc:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_d8
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L122
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
	beq	.L122
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L116
	mov	r0, r2
.L116:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L11e
	mov	r0, r2
.L11e:
	add	r3, r0
	strh	r3, [r5, #6]
.L122:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_d8

.thumb_func_start OvlFunc_130
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x33
	cmp	r2, r3
	bne	.L148
	ldr	r0, =.L28a0
	b	.L14a
.L148:
	ldr	r0, =.L2798
.L14a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_130

.thumb_func_start OvlFunc_160
	mov	r0, #0
	bx	lr
.func_end OvlFunc_160

.thumb_func_start OvlFunc_164
	ldr	r0, =.L2990
	bx	lr
.func_end OvlFunc_164

.thumb_func_start OvlFunc_16c
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x33
	cmp	r2, r3
	bne	.L1b0
	ldr	r5, =.L2ad0
	mov	r0, r5
	bl	__Func_8b868
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1ac
	mov	r3, #0x83
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0xb6
	lsl	r3, #16
	str	r3, [r5, #0x50]
	mov	r3, #0x8d
	lsl	r3, #18
	str	r3, [r5, #0x58]
	mov	r3, #2
	str	r3, [r5, #0x4c]
.L1ac:
	mov	r0, r5
	b	.L1c0
.L1b0:
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1be
	ldr	r0, =.L2a58
	b	.L1c0
.L1be:
	ldr	r0, =.L29e0
.L1c0:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_16c

.thumb_func_start OvlFunc_1e0
	push	{lr}
	bl	OvlFunc_1fa4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e0

.thumb_func_start OvlFunc_1ec
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x33
	cmp	r2, r3
	bne	.L204
	ldr	r0, =.L2db8
	b	.L206
.L204:
	ldr	r0, =.L2c80
.L206:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1ec

.thumb_func_start OvlFunc_21c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L234
	ldr	r0, =0x1570
	bl	__Func_92b94
	b	.L23a
.L234:
	ldr	r0, =0x1529
	bl	__Func_92b94
.L23a:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_21c

.thumb_func_start OvlFunc_254
	push	{lr}
	bl	__Func_916b0
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L26c
	ldr	r0, =0x1571
	bl	__Func_92b94
	b	.L272
.L26c:
	ldr	r0, =0x152f
	bl	__Func_92b94
.L272:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_254

.thumb_func_start OvlFunc_28c
	push	{lr}
	bl	__Func_916b0
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #9
	bl	__Func_9280c
	ldr	r0, =0x152a
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_28c

.thumb_func_start OvlFunc_2b8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.L31c
	ldr	r0, =0x163c
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_93054
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #9
	bl	__Func_924d4
	b	.L36e
.L31c:
	ldr	r0, =0x152d
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #9
	bl	__Func_924d4
.L36e:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b8

.thumb_func_start OvlFunc_384
	push	{lr}
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3b8
	bl	__Func_916b0
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x1644
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	bl	__Func_91750
	b	.L4d6
.L3b8:
	ldr	r0, =0x82b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3fe
	bl	__Func_916b0
	mov	r0, #9
	mov	r1, #7
	bl	__Func_924d4
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.L31c0
	bl	__Func_10560
	ldr	r0, =0x156c
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #9
	mov	r1, #8
	bl	__Func_924d4
	ldr	r0, =.L31d6
	mov	r1, #0xa
	mov	r2, #0x45
	bl	__Func_10560
	bl	__Func_91750
	b	.L4d6
.L3fe:
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L24f4
	mov	r0, #9
	bl	__Func_9207c
	ldr	r0, =0x1534
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #8
	bl	__Func_920a0
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	ldr	r1, =.L2564
	mov	r0, #0
	bl	__Func_9207c
	ldr	r2, =0xcccc
	mov	r0, #8
	ldr	r1, =0x19999
	bl	__Func_92064
	ldr	r1, =.L2508
	mov	r0, #8
	bl	__Func_920fc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #8
	mov	r1, #2
	bl	__Func_92560
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r2, #2
	eor	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x82c
	bl	__Func_79358
	bl	__Func_91750
.L4d6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_384

.thumb_func_start OvlFunc_510
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x153f
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_510

.thumb_func_start OvlFunc_530
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x154d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_530

.thumb_func_start OvlFunc_550
	push	{lr}
	bl	__Func_916b0
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L570
	ldr	r0, =0x1574
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	b	.L58a
.L570:
	ldr	r0, =0x1557
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_93054
	ldr	r0, =0x82a
	bl	__Func_79358
	ldr	r0, =0x82c
	bl	__Func_79358
.L58a:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_550

.thumb_func_start OvlFunc_5a4
	push	{lr}
	bl	__Func_916b0
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5bc
	ldr	r0, =0x1575
	bl	__Func_92b94
	b	.L5c2
.L5bc:
	ldr	r0, =0x155b
	bl	__Func_92b94
.L5c2:
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5a4

.thumb_func_start OvlFunc_5dc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x156d
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5dc

.thumb_func_start OvlFunc_608
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x82b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L620
	ldr	r0, =0x156f
	bl	__Func_92b94
	b	.L638
.L620:
	ldr	r0, =0x82c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L632
	ldr	r0, =0x153b
	bl	__Func_92b94
	b	.L638
.L632:
	ldr	r0, =0x1533
	bl	__Func_92b94
.L638:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_608

.thumb_func_start OvlFunc_65c
	push	{lr}
	bl	OvlFunc_384
	pop	{r0}
	bx	r0
.func_end OvlFunc_65c

.thumb_func_start OvlFunc_668
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x156e
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_668

.thumb_func_start OvlFunc_688
	push	{lr}
	bl	__Func_916b0
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L6a0
	ldr	r0, =0x1573
	bl	__Func_92b94
	b	.L6a6
.L6a0:
	ldr	r0, =0x155a
	bl	__Func_92b94
.L6a6:
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_688

.thumb_func_start OvlFunc_6c0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	bl	__Func_916b0
	mov	r5, #8
	mov	r6, #0
.L6ce:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L6de
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L6de:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L6ce
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r3, [r3]
	sub	r3, #0x32
	lsl	r3, #16
	asr	r5, r3, #16
	cmp	r5, #6
	bne	.L6fe
	mov	r0, #0xbc
	bl	__Func_f9080
	b	.L704
.L6fe:
	mov	r0, #0x9e
	bl	__Func_f9080
.L704:
	ldr	r2, =.L31a8
	lsl	r3, r5, #2
	sub	r0, r3, #4
	sub	r3, #2
	ldrsh	r1, [r2, r0]
	ldrsh	r2, [r2, r3]
	ldr	r3, =.L3190
	ldr	r0, [r3, r0]
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92064
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	cmp	r5, #6
	bne	.L760
	ldr	r2, =0x1999
	mov	r0, #0
	ldr	r1, =0x3333
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92b08
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_9228c
	b	.L778
.L760:
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r2, #0x10
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0
	neg	r2, r2
	bl	__Func_92208
.L778:
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6c0

.thumb_func_start OvlFunc_7a4
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #6
	ldrsh	r5, [r0, r2]
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.L804
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L7d0
	mov	r0, #0xa
	mov	r1, #0xc
	bl	__Func_b0278
	b	.L86c
.L7d0:
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x164b
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	b	.L86c
.L804:
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L86c
	bl	__Func_916b0
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xd5
	mov	r1, #1
	mov	r2, #0xf6
	lsl	r2, #17
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L25ec
	mov	r0, #0xc
	bl	__Func_920fc
	ldr	r0, =0x153e
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd5
	mov	r1, #1
	mov	r2, #0x9a
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	bl	__Func_91750
.L86c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7a4

.thumb_func_start OvlFunc_88c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #6
	ldrsh	r5, [r0, r2]
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.L8ec
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L8b8
	mov	r0, #0xb
	mov	r1, #0xd
	bl	__Func_b0278
	b	.L954
.L8b8:
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x164d
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	b	.L954
.L8ec:
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L954
	bl	__Func_916b0
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xd5
	mov	r1, #1
	mov	r2, #0xf6
	lsl	r2, #17
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L25ec
	mov	r0, #0xd
	bl	__Func_920fc
	ldr	r0, =0x1543
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd5
	mov	r1, #1
	mov	r2, #0x9a
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	bl	__Func_91750
.L954:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_88c

.thumb_func_start OvlFunc_974
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #6
	ldrsh	r5, [r0, r2]
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9ce
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L9a0
	mov	r0, #0xc
	mov	r1, #0xf
	bl	__Func_b0278
	b	.La1e
.L9a0:
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_9280c
	ldr	r0, =0x164f
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	bl	__Func_91750
	b	.La1e
.L9ce:
	ldr	r2, =0x5fff0000
	lsl	r3, r5, #16
	add	r3, r2
	ldr	r2, =0x3ffe0000
	cmp	r3, r2
	bhi	.L9fa
	bl	__Func_916b0
	ldr	r0, =0x1546
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe
	mov	r0, #0xc
	bl	__Func_b0278
	bl	__Func_91750
	b	.La1e
.L9fa:
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_9280c
	ldr	r0, =0x1547
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
.La1e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_974

.thumb_func_start OvlFunc_a3c
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.La5c
	mov	r0, #4
	mov	r1, #0x10
	bl	__Func_b3284
	b	.Laa2
.La5c:
	bl	__Func_916b0
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_9280c
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.La84
	ldr	r0, =0x1653
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_93054
	b	.La92
.La84:
	ldr	r0, =0x154b
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
.La92:
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
.Laa2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_a3c

.thumb_func_start OvlFunc_abc
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.Lb00
	bl	__Func_916b0
	ldr	r0, =0x82d
	bl	__Func_79338
	cmp	r0, #0
	bne	.Laf4
	ldr	r0, =0x1553
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x82d
	bl	__Func_79358
.Laf4:
	bl	__Func_91750
	mov	r0, #0x13
	bl	__Func_b29a8
	b	.Lb4a
.Lb00:
	bl	__Func_916b0
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb12
	ldr	r0, =0x1671
	b	.Lb1e
.Lb12:
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb2c
	ldr	r0, =0x1572
.Lb1e:
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	b	.Lb46
.Lb2c:
	ldr	r0, =0x1554
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_93054
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
.Lb46:
	bl	__Func_91750
.Lb4a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_abc

.thumb_func_start OvlFunc_b70
	push	{r5, r6, lr}
	ldr	r6, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x32
	sub	sp, #8
	cmp	r2, r3
	bne	.Lc14
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	mov	r5, r0
	str	r2, [r3]
	mov	r0, #0xa
	mov	r1, #9
	bl	__Func_924d4
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbbc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x201
	bl	__Func_79374
.Lbbc:
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	mov	r1, #0xc8
	add	r3, #2
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_1794
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_18c4
	bl	__Func_41d8
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_92b08
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbf2
	bl	OvlFunc_1960
.Lbf2:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbfe
	b	.Lf78
.Lbfe:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	beq	.Lc0e
	b	.Lf78
.Lc0e:
	bl	OvlFunc_19bc
	b	.Lf78
.Lc14:
	ldr	r3, =0x33
	cmp	r2, r3
	beq	.Lc1c
	b	.Lf78
.Lc1c:
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r5, [r3, r1]
	cmp	r5, #1
	beq	.Lc38
	b	.Ld84
.Lc38:
	mov	r1, #0xf
	mov	r0, #0x15
	bl	__Func_92950
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_92b08
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lca6
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #9
	mov	r1, #0x7d
	mov	r3, #0x45
	mov	r0, #3
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9207c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.Lf78
.Lca6:
	ldr	r0, =0x82c
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld14
	ldr	r0, =0x82a
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld14
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xae
	mov	r2, #0xa4
	lsl	r2, #16
	lsl	r1, #16
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #0xa8
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, =0x82b
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld0e
	b	.Lf78
.Ld0e:
	bl	OvlFunc_f90
	b	.Lf78
.Ld14:
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x7d
	mov	r2, #9
	mov	r3, #0x45
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x82c
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld7a
	mov	r1, #0x95
	mov	r2, #0xe8
	lsl	r1, #16
	lsl	r2, #15
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	strh	r5, [r0, #6]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x66
	strh	r5, [r0]
	ldr	r1, =.L24f4
	mov	r0, #9
	bl	__Func_9207c
	b	.Lf78
.Ld7a:
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9207c
	b	.Lf78
.Ld84:
	cmp	r5, #2
	bne	.Ldaa
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld94
	b	.Lf78
.Ld94:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x66
	strh	r3, [r0]
	ldr	r1, =.L24f4
	mov	r0, #0xb
	bl	__Func_9207c
	b	.Lf78
.Ldaa:
	cmp	r5, #4
	bne	.Le48
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le1a
	mov	r1, #0xb6
	ldr	r2, =0x2420000
	mov	r0, #0xc
	lsl	r1, #17
	bl	__Func_923e4
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_92b08
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r6, #4
	orr	r3, r6
	strb	r3, [r0]
	mov	r5, #3
	mov	r3, #0x58
	mov	r0, #6
	mov	r1, #0x7d
	mov	r2, #0x16
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, #0xf6
	ldr	r2, =0x2420000
	mov	r0, #0xd
	lsl	r1, #17
	bl	__Func_923e4
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_92b08
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r1, #0x7d
	mov	r0, #9
	mov	r2, #0x1c
	mov	r3, #0x58
	b	.Le9e
.Le1a:
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #5
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xd
	b	.Lee6
.Le48:
	cmp	r5, #3
	bne	.Lf34
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lea8
	mov	r1, #0xe6
	mov	r2, #0x81
	lsl	r2, #17
	mov	r0, #0xf
	lsl	r1, #17
	bl	__Func_923e4
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_92b08
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	mov	r1, #0xcc
	mov	r2, #0x84
	strb	r3, [r0]
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #0xe
	bl	__Func_923e4
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r0, #6]
	mov	r1, #0x7d
	mov	r0, #0xc
	mov	r2, #0x1a
	mov	r3, #0x46
.Le9e:
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.Lf78
.Lea8:
	mov	r1, #0xe6
	mov	r2, #0x81
	lsl	r2, #17
	mov	r0, #0xe
	lsl	r1, #17
	bl	__Func_923e4
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_92b08
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xf
.Lee6:
	mov	r1, #5
	bl	__Func_924d4
	b	.Lf78

	.pool_aligned

.Lf34:
	cmp	r5, #7
	bne	.Lf78
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf78
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, =0x82e
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lf6a
	mov	r2, #0xa1
	mov	r0, #0x14
	ldr	r1, =0x28a0000
	lsl	r2, #16
	bl	__Func_923e4
	bl	OvlFunc_19e8
	b	.Lf78
.Lf6a:
	mov	r1, #0xa1
	mov	r2, #0xa6
	mov	r0, #0x14
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
.Lf78:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_b70

.thumb_func_start OvlFunc_f90
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0xb6
	mov	r2, #0x96
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #0x8d
	mov	r1, #1
	mov	r2, #0xdd
	lsl	r2, #16
	mov	r3, #0
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x4ccc
	ldr	r1, =0x999
	bl	__Func_933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xa4
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
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
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0x8e
	mov	r2, #0xdd
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1038
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L1038:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L104c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L104c:
	mov	r0, #1
	mov	r1, #0x96
	mov	r2, #0xea
	bl	__Func_9218c
	mov	r2, #0xea
	mov	r0, #2
	mov	r1, #0x86
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	ldr	r5, =.L274c
	mov	r0, #0
	mov	r2, r5
	ldr	r1, =0x10003
	bl	__Func_92a1c
	mov	r2, r5
	mov	r0, #1
	ldr	r1, =0x10003
	bl	__Func_92a1c
	mov	r2, r5
	mov	r0, #2
	ldr	r1, =0x10003
	bl	__Func_92a1c
	bl	__Func_93530
	ldr	r5, =.L25ec
	mov	r0, #9
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	ldr	r0, =0x155c
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, r5
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, r5
	mov	r0, #9
	bl	__Func_9207c
	bl	OvlFunc_16c8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #9
	mov	r1, #7
	bl	__Func_924d4
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.L31c0
	bl	__Func_10560
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #8
	bl	__Func_924d4
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.L31d6
	bl	__Func_10560
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #3
	bl	__Func_92064
	mov	r0, #3
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L2670
	mov	r0, #3
	bl	__Func_9207c
	b	.L128a

	.pool_aligned

.L1284:
	mov	r0, #1
	bl	__Func_30f8
.L128a:
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1284
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xc6
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, #3
	bl	__Func_920e8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
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
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0xc6
	mov	r1, #0xca
	mov	r0, #3
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #2
	bl	__Func_920a0
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #3
	bl	__Func_92064
	mov	r0, #3
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L26e0
	mov	r0, #3
	bl	__Func_9207c
	b	.L13e6
.L13e0:
	mov	r0, #1
	bl	__Func_30f8
.L13e6:
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L13e0
	mov	r1, #0x80
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
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #10
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #11
	lsl	r2, #10
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #2
	bl	__Func_92064
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0x84
	mov	r0, #0
	mov	r2, #0xce
	bl	__Func_92128
	mov	r0, #1
	mov	r1, #0x88
	mov	r2, #0xdd
	bl	__Func_92128
	mov	r1, #0x7a
	mov	r2, #0xee
	mov	r0, #2
	bl	__Func_92128
	mov	r0, #3
	bl	__Func_920e8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__Func_92064
	ldr	r5, =.L2760
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r0, =0x82b
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f90

.thumb_func_start OvlFunc_154c
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	cmp	r6, #0
	beq	.L15a6
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r1, r3, #16
	cmp	r1, #0
	beq	.L15a0
	ldr	r2, =.L31f0
	ldr	r3, [r2]
	mov	r5, sp
	str	r3, [r5]
	mov	r0, #0x80
	ldr	r3, [r2, #4]
	lsl	r0, #12
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r2, #8]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	lsl	r0, r1, #16
	lsl	r1, #11
	add	r1, r3
	mov	r2, r5
	bl	__Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.L15a6
.L15a0:
	mov	r0, r6
	bl	__Func_c0f4
.L15a6:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_154c

.thumb_func_start OvlFunc_15b4
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	lsl	r0, #10
	sub	sp, #0xc
	bl	__Func_2322
	mov	r1, r0
	mov	r0, #0xc0
	ldr	r3, =Func_888
	lsl	r0, #11
	.call_via r3
	ldr	r3, =.L31f0
	ldr	r3, [r3]
	add	r3, r0
	str	r3, [r6, #8]
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x40
	mov	r3, r2
	cmp	r2, #0
	bge	.L15f4
	mov	r3, r1
	add	r3, #0x7f
.L15f4:
	asr	r3, #6
	lsl	r3, #6
	sub	r3, r2, r3
	strh	r3, [r5]
	ldr	r3, =iwram_1e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_Func_b50
	cmp	r0, #0
	bne	.L16a4
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	__Func_4458
	mov	r6, r0
	bl	__Func_4458
	mov	r1, r0
	lsl	r0, r6, #1
	add	r0, r6
	mov	r2, r5
	lsl	r0, #1
	bl	__Func_447c
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	ldr	r0, =0x11d
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L16a4
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, .L1688	@ 0
	add	r2, #0x32
	mov	r0, r5
	mov	r1, #9
	strb	r3, [r2]
	bl	__Func_929d8
	ldr	r1, =.L264c
	mov	r0, r5
	bl	__Func_c2d8
	b	.L16a4

	.align	2, 0
.L1688:
	.word	0
	.pool

.L16a4:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15b4

.thumb_func_start OvlFunc_16ac
	push	{lr}
	ldr	r1, =.L25ec
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_16ac

.thumb_func_start OvlFunc_16c8
	push	{r5, lr}
	mov	r0, #0x5d
	mov	r1, #1
	bl	__Func_96fb0
	ldr	r3, =iwram_1f30
	mov	r1, #9
	mov	r0, #3
	ldr	r5, [r3]
	bl	__Func_970f8
	ldr	r3, =OvlFunc_16ac
	str	r3, [r5, #0x24]
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	bl	__Func_97174
	bl	__Func_97194
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16c8

.thumb_func_start OvlFunc_1704
	push	{r5, lr}
	mov	r5, r0
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #9
	bl	__Func_929d8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1704

.thumb_func_start OvlFunc_174c
	push	{lr}
	mov	r1, r0
	add	r1, #0x64
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r3, [r0, #8]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #8]
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, =0x7ae
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	add	r3, #2
	strh	r3, [r1]
	ldr	r3, [r0, #0x68]
	sub	r3, #1
	str	r3, [r0, #0x68]
	cmp	r3, #0
	bne	.L178a
	bl	__Func_c0f4
.L178a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_174c

.thumb_func_start OvlFunc_1794
	push	{r5, r6, lr}
	ldr	r6, =iwram_1e40
	mov	r1, #0x3c
	ldr	r0, [r6]
	bl	_Func_b50
	cmp	r0, #0
	bne	.L17cc
	mov	r3, #0x92
	mov	r0, #0xde
	ldr	r1, =0x1cf0000
	mov	r2, #0
	lsl	r3, #17
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L17cc
	bl	OvlFunc_1704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_174c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Func_c300
.L17cc:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x1e
	bl	_Func_b50
	cmp	r0, #0
	bne	.L1806
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r3, #0xb2
	mov	r0, #0xde
	lsl	r1, #17
	lsl	r2, #14
	lsl	r3, #17
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1806
	bl	OvlFunc_1704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_174c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Func_c300
.L1806:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0xa
	bl	_Func_b50
	cmp	r0, #0
	bne	.L183e
	mov	r1, #0xec
	mov	r3, #0x8c
	mov	r0, #0xde
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #15
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L183e
	bl	OvlFunc_1704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_174c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Func_c300
.L183e:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x32
	bl	_Func_b50
	cmp	r0, #0
	bne	.L1876
	mov	r1, #0xab
	mov	r3, #0xf8
	mov	r0, #0xde
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #15
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1876
	bl	OvlFunc_1704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_174c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Func_c300
.L1876:
	ldr	r0, [r6]
	mov	r1, #0x3c
	add	r0, #0x50
	bl	_Func_b50
	cmp	r0, #0
	bne	.L18ac
	mov	r3, #0xab
	mov	r0, #0xde
	ldr	r1, =0x1af0000
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L18ac
	bl	OvlFunc_1704
	mov	r3, #0x3c
	str	r3, [r5, #0x68]
	ldr	r3, =OvlFunc_174c
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #5
	bl	__Func_c300
.L18ac:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1794

.thumb_func_start OvlFunc_18c4
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r4, [r0, #8]
	asr	r2, r4, #19
	mov	r3, r2
	sub	r3, #0x18
	cmp	r3, #7
	bls	.L18ea
	ldr	r1, [r0, #0x10]
	asr	r3, r1, #19
	sub	r3, #0x24
	cmp	r3, #9
	bhi	.L1902
	mov	r3, r2
	sub	r3, #0x16
	cmp	r3, #9
	bhi	.L1902
.L18ea:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1954
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	strb	r0, [r3, #0x17]
	mov	r0, #0x80
	lsl	r0, #2
	b	.L1928
.L1902:
	mov	r2, #0xe8
	lsl	r2, #16
	cmp	r4, r2
	ble	.L1934
	mov	r2, #0xf0
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	ble	.L1934
	mov	r3, #0xd4
	lsl	r3, #16
	cmp	r1, r3
	ble	.L1934
	ldr	r3, =iwram_1e70
	ldr	r2, [r3]
	mov	r0, #0x80
	mov	r3, #0
	lsl	r0, #2
	strb	r3, [r2, #0x17]
.L1928:
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79374
	b	.L1954
.L1934:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1954
	ldr	r3, =iwram_1e70
	ldr	r2, [r3]
	mov	r3, #1
	ldr	r0, =0x201
	strb	r3, [r2, #0x17]
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
.L1954:
	pop	{r0}
	bx	r0
.func_end OvlFunc_18c4

.thumb_func_start OvlFunc_1960
	push	{lr}
	ldr	r0, =0x203
	sub	sp, #8
	bl	__Func_79358
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92b08
	mov	r3, #0xf
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1960

.thumb_func_start OvlFunc_1990
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #0x7b
	bl	__Func_f9080
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #8
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1990

.thumb_func_start OvlFunc_19bc
	push	{lr}
	bl	__Func_916b0
	bl	__Func_91dc8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #10
	ldr	r2, =0x1999
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xe8
	mov	r2, #0xcc
	bl	__Func_92158
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_19bc

.thumb_func_start OvlFunc_19e8
	push	{r5, r6, r7, lr}
	bl	__Func_916b0
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0xc8
	ldr	r1, =0x2b2
	mov	r0, #0
	bl	__Func_9218c
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_933d4
	mov	r2, #0xa4
	ldr	r0, =0x2b20000
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	ldr	r7, =iwram_1ebc
	mov	r3, #0xe0
	ldr	r1, [r7]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x30
	str	r3, [r2]
	bl	__Func_91dc8
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #3
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1a74
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L1a74:
	mov	r0, #3
	ldr	r1, =0x2a1
	mov	r2, #0xb7
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x165b
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_93874
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x4014
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0xa
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_93874
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x4014
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
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x13
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_92adc
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xf0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x14
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xa4
	strb	r3, [r0]
	lsl	r1, #2
	mov	r2, #0xa6
	mov	r0, #0x14
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xa
	ldr	r0, =0x4014
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0xa
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0x14
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x14
	ldr	r0, =0x4014
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_93040
	mov	r0, #0x13
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #0x13
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x4014
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x28
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x4014
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	b	.L1e2c

	.pool_aligned

.L1e2c:
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r0, =0x4003
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xac
	mov	r0, #3
	lsl	r1, #2
	mov	r2, #0xc8
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xa1
	and	r5, r3
	lsl	r1, #2
	mov	r2, #0xa6
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	ldr	r3, [r7]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x82e
	bl	__Func_79358
	ldr	r0, =0x82d
	bl	__Func_79374
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e8

.thumb_func_start OvlFunc_1f24
	push	{r5, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldrh	r3, [r2]
	cmp	r1, #0
	beq	.L1f3c
	sub	r3, #1
	strh	r3, [r2]
	b	.L1f92
.L1f3c:
	mov	r3, r5
	add	r3, #0x5a
	strb	r1, [r3]
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.L23f0
	lsl	r3, #1
	mov	r0, #1
	ldrsh	r3, [r1, r3]
	neg	r0, r0
	cmp	r3, r0
	bne	.L1f64
	mov	r0, r5
	mov	r1, #9
	bl	__Func_c300
	b	.L1f92
.L1f64:
	ldrh	r1, [r5, #6]
	sub	r3, r1
	lsl	r3, #16
	mov	r2, #0x80
	asr	r3, #16
	lsl	r2, #5
	cmp	r3, r2
	ble	.L1f76
	mov	r3, r2
.L1f76:
	ldr	r2, =0xfffff000
	cmp	r3, r2
	bge	.L1f7e
	mov	r3, r2
.L1f7e:
	add	r3, r1, r3
	mov	r0, r5
	mov	r1, #2
	strh	r3, [r5, #6]
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0x30
	bl	__Func_c344
.L1f92:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f24

.thumb_func_start OvlFunc_1fa4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	sub	sp, #0x14
	bl	__Func_8ba1c
	mov	r6, r0
.L1fc4:
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.L2430
	lsl	r3, #1
	ldrsh	r2, [r1, r3]
	str	r2, [sp, #4]
	lsl	r3, r2, #16
	ldr	r2, =0xffff0000
	cmp	r3, r2
	bne	.L1fe0
	b	.L213a
.L1fe0:
	bl	__Func_916b0
	ldr	r2, [r6, #8]
	ldr	r1, =0xfff00000
	mov	r3, #0x80
	lsl	r3, #12
	mov	r11, r3
	and	r2, r1
	add	r5, sp, #8
	add	r2, r11
	str	r2, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r11
	str	r3, [r5, #8]
	mov	r0, #0x22
	mov	r9, r3
	mov	r10, r2
	add	r0, r6
	mov	r8, r0
	mov	r1, r10
	mov	r2, r9
	ldrb	r0, [r0]
	bl	__Func_12038
	str	r0, [sp]
	mov	r0, #0x80
	ldr	r1, [sp, #4]
	lsl	r0, #13
	mov	r2, r5
	bl	__Func_447c
	mov	r2, r8
	ldrb	r0, [r2]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_12038
	mov	r7, r0
	cmp	r7, #0xff
	beq	.L208c
	mov	r3, r8
	ldrb	r0, [r3]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_11f54
	ldr	r3, [r6, #0xc]
	sub	r0, r3
	cmp	r0, r11
	bgt	.L208c
	mov	r3, #0x80
	mov	r0, r10
	mov	r2, r9
	lsl	r3, #10
	str	r0, [r5]
	str	r2, [r5, #8]
	str	r3, [r6, #0x30]
	ldr	r3, =0x1999
	mov	r2, r6
	str	r3, [r6, #0x34]
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, r6
	mov	r3, r9
	ldr	r2, [r6, #0xc]
	mov	r1, r10
	bl	__Func_d14c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_c300
	mov	r0, r6
	mov	r1, #0x30
	bl	__Func_c344
	mov	r0, r6
	bl	__Func_ca6c
	ldr	r3, =OvlFunc_1f24
	str	r3, [r6, #0x6c]
	b	.L20d6
.L208c:
	add	r3, sp, #4
	ldrh	r3, [r3]
	strh	r3, [r6, #6]
	b	.L2130
.L2094:
	mov	r2, r8
	ldrb	r0, [r2]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_11f54
	ldr	r3, [r6, #0xc]
	sub	r0, r3
	mov	r3, #0x80
	lsl	r3, #12
	cmp	r0, r3
	bgt	.L20f4
	mov	r3, #0x80
	lsl	r3, #10
	ldr	r0, [r5]
	ldr	r2, [r5, #8]
	str	r3, [r6, #0x30]
	ldr	r3, =0x1999
	str	r3, [r6, #0x34]
	mov	r10, r0
	ldr	r3, [r5, #8]
	ldr	r1, [r5]
	mov	r0, r6
	mov	r9, r2
	ldr	r2, [r5, #4]
	bl	__Func_d14c
	mov	r0, r6
	bl	__Func_ca6c
	ldr	r3, [sp]
	cmp	r7, r3
	bne	.L211a
.L20d6:
	mov	r0, #0x80
	ldr	r1, [sp, #4]
	add	r2, sp, #8
	lsl	r0, #13
	bl	__Func_447c
	mov	r2, r8
	ldrb	r0, [r2]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_12038
	mov	r7, r0
	cmp	r7, #0xff
	bne	.L2094
.L20f4:
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x34]
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	mov	r1, r10
	mov	r3, r9
	bl	__Func_d14c
	mov	r0, r6
	bl	__Func_ca6c
	mov	r0, #2
	bl	__Func_30f8
	b	.L1fc4
.L211a:
	mov	r3, #0
	str	r3, [r6, #0x6c]
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
.L2130:
	mov	r0, #0xa
	bl	__Func_30f8
	bl	__Func_91750
.L213a:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fa4

	.section .data

.L23f0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x23f0, (0x2430-0x23f0)
.L2430:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2430, (0x24f4-0x2430)
.L24f4:
	.incbin "overlays/rom_7a7298/orig.bin", 0x24f4, (0x2508-0x24f4)
.L2508:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2508, (0x2564-0x2508)
.L2564:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2564, (0x25ec-0x2564)
.L25ec:
	.incbin "overlays/rom_7a7298/orig.bin", 0x25ec, (0x264c-0x25ec)
.L264c:
	.incbin "overlays/rom_7a7298/orig.bin", 0x264c, (0x2670-0x264c)
.L2670:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2670, (0x26e0-0x2670)
.L26e0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x26e0, (0x274c-0x26e0)
.L274c:
	.incbin "overlays/rom_7a7298/orig.bin", 0x274c, (0x2760-0x274c)
.L2760:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2760, (0x2798-0x2760)
.L2798:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2798, (0x28a0-0x2798)
.L28a0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x28a0, (0x2990-0x28a0)
.L2990:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2990, (0x29e0-0x2990)
.L29e0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x29e0, (0x2a58-0x29e0)
.L2a58:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2a58, (0x2ad0-0x2a58)
.L2ad0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2ad0, (0x2c80-0x2ad0)
.L2c80:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2c80, (0x2db8-0x2c80)
.L2db8:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2db8, (0x3190-0x2db8)
.L3190:
	.incbin "overlays/rom_7a7298/orig.bin", 0x3190, (0x31a8-0x3190)
.L31a8:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31a8, (0x31c0-0x31a8)
.L31c0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31c0, (0x31d6-0x31c0)
.L31d6:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31d6

	.section .bss

	.lcomm	.L31f0, 0xc
