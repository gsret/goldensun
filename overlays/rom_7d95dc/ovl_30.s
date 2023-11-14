	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L3094
	b	.L54
.L48:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L3274
	b	.L54
.L52:
	ldr	r0, =.L3034
.L54:
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_70
	mov	r0, #0
	bx	lr
.func_end OvlFunc_70

.thumb_func_start OvlFunc_74
	ldr	r0, =.L32bc
	bx	lr
.func_end OvlFunc_74

.thumb_func_start OvlFunc_7c
	push	{lr}
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x8c
	cmp	r2, r3
	beq	.L92
	b	.L1cc
.L92:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	sub	r3, #5
	cmp	r3, #0x41
	bls	.La4
	b	.L1c8
.La4:
	ldr	r2, =.Lac
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lac:
	.word	.L1b4
	.word	.L1c8
	.word	.L1b8
	.word	.L1bc
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c0
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1bc
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1bc
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1bc
	.word	.L1bc
	.word	.L1c4
	.word	.L1bc
	.word	.L1c4
	.word	.L1b4
	.word	.L1b8
.L1b4:
	ldr	r0, =.L339c
	b	.L1f6
.L1b8:
	ldr	r0, =.L35f4
	b	.L1f6
.L1bc:
	ldr	r0, =.L37bc
	b	.L1f6
.L1c0:
	ldr	r0, =.L387c
	b	.L1f6
.L1c4:
	ldr	r0, =.L399c
	b	.L1f6
.L1c8:
	ldr	r0, =.L375c
	b	.L1f6
.L1cc:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.L1f4
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1e2
	ldr	r0, =.L3e1c
	b	.L1f6
.L1e2:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1f0
	ldr	r0, =.L3bdc
	b	.L1f6
.L1f0:
	ldr	r0, =.L3a44
	b	.L1f6
.L1f4:
	ldr	r0, =.L3324
.L1f6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_238
	push	{lr}
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x8d
	cmp	r2, r3
	bne	.L250
	ldr	r0, =.L3e70
	b	.L278
.L250:
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.L26c
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xc
	bne	.L268
	ldr	r0, =.L4110
	b	.L278
.L268:
	ldr	r0, =.L3e94
	b	.L278
.L26c:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.L276
	ldr	r0, =.L3f60
	b	.L278
.L276:
	ldr	r0, =.L3e64
.L278:
	pop	{r1}
	bx	r1
.func_end OvlFunc_238

.thumb_func_start OvlFunc_2a0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2c0
	ldr	r0, =0x2251
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	b	.L2ce
.L2c0:
	ldr	r0, =0x2057
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93054
.L2ce:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2a0

.thumb_func_start OvlFunc_2e4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L310
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xd
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r0, =0x2254
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	b	.L31e
.L310:
	ldr	r0, =0x205c
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
.L31e:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e4

.thumb_func_start OvlFunc_334
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L37a
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	ldr	r0, =0x2256
	bl	__Func_92b94
	mov	r0, #0xe
	bl	OvlFunc_1c48
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_93054
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_1c5c
	b	.L388
.L37a:
	ldr	r0, =0x205d
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L388:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_334

.thumb_func_start OvlFunc_39c
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43a
	mov	r0, #0xf0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3c0
	ldr	r0, =0x225e
	bl	__Func_92b94
	b	.L430
.L3c0:
	ldr	r0, =0x225a
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L430
	ldr	r5, =iwram_1ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	mov	r1, #0x80
	add	r2, #1
	strh	r2, [r3]
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L418
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L418:
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xf0
	lsl	r0, #2
	bl	__Func_79358
	b	.L448
.L430:
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
	b	.L448
.L43a:
	ldr	r0, =0x205e
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_93054
.L448:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_39c

.thumb_func_start OvlFunc_468
	push	{r5, lr}
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xd
	bl	__Func_920a0
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92848
	ldr	r0, =0x2114
	bl	__Func_92b94
	mov	r0, #0xd
	bl	OvlFunc_1c48
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, r5
	mov	r3, #0xb4
	add	r2, #0x64
	lsl	r3, #2
	strh	r3, [r2]
	add	r5, #0x66
	mov	r3, #0x70
	strh	r3, [r5]
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9207c
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_468

.thumb_func_start OvlFunc_4c8
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	ldr	r0, =0x2116
	bl	__Func_92b94
	mov	r0, #0xe
	bl	OvlFunc_1c48
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c8

.thumb_func_start OvlFunc_50c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x2118
	bl	__Func_92b94
	mov	r0, #0xf
	bl	OvlFunc_1c48
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92848
	mov	r0, #0xf
	bl	OvlFunc_1c48
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_924d4
	mov	r0, #0xf
	bl	OvlFunc_1c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0xf
	bl	OvlFunc_1c5c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_50c

.thumb_func_start OvlFunc_55c
	push	{lr}
	bl	__Func_916b0
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	ldr	r0, =0x211b
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	ldr	r0, =0x3c1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L58c
	mov	r0, #0x14
	bl	__Func_9163c
	b	.L5da
.L58c:
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_1c5c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92848
	mov	r1, #4
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x11
	bl	OvlFunc_1c48
	ldr	r1, =0x105
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__Func_937b8
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r1, #0xa0
	mov	r0, #0x11
	lsl	r1, #7
	bl	OvlFunc_1c5c
	ldr	r0, =0x3c1
	bl	__Func_79358
.L5da:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_55c

.thumb_func_start OvlFunc_5f0
	push	{lr}
	bl	__Func_916b0
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_92848
	ldr	r0, =0x211f
	bl	__Func_92b94
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x11
	bl	OvlFunc_1c5c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5f0

.thumb_func_start OvlFunc_648
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x12
	bl	__Func_92848
	ldr	r0, =0x2122
	bl	__Func_92b94
	mov	r0, #0x12
	bl	OvlFunc_1c48
	mov	r1, #0xd0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92848
	mov	r0, #0x12
	bl	OvlFunc_1c48
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x12
	bl	OvlFunc_1c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x12
	bl	OvlFunc_1c5c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_648

.thumb_func_start OvlFunc_6bc
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_92848
	ldr	r0, =0x2125
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L6f6
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L6f6:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_6bc

.thumb_func_start OvlFunc_710
	push	{r5, r6, r7, lr}
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	bne	.L71e
	b	.Lda8
.L71e:
	bl	__Func_916b0
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r5, #0xc0
	mov	r1, #0x80
	lsl	r5, #6
	mov	r2, #0x28
	mov	r0, #0x11
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, r5
	mov	r0, #0x11
	bl	OvlFunc_1c5c
	ldr	r0, =0x2267
	bl	__Func_92b94
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_9259c
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r0, #0x12
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_92adc
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x3333
	ldr	r0, =0x19999
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_937b8
	mov	r0, #0x12
	bl	OvlFunc_1c48
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_1c5c
	mov	r0, #0x13
	bl	OvlFunc_1c48
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_1c5c
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_9259c
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_925cc
	mov	r6, #0x80
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	lsl	r6, #8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	mov	r1, r6
	bl	OvlFunc_1c5c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x11
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_92adc
	mov	r0, #0x14
	mov	r1, r5
	bl	OvlFunc_1c5c
	mov	r0, #0x11
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_921c4
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xbc
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L938
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L938:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L94c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L94c:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L960
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L960:
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
	mov	r0, #1
	mov	r1, #0xf6
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r1, #0x83
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r1, #0x8b
	mov	r2, #0xc8
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
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
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x11
	bl	OvlFunc_1c48
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
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_92c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Laec
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x11
	bl	OvlFunc_1c48
	ldr	r5, =.L2d3c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__Func_92064
	ldr	r5, =.L2de4
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, r5
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	b	.Lc90

	.pool_aligned

.Laec:
	ldr	r7, =iwram_1ebc
	mov	r3, #0xec
	ldr	r2, [r7]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	mov	r1, #0x81
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__Func_937b8
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x12
	bl	__Func_937b8
	mov	r0, #0x12
	bl	OvlFunc_1c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, #0x13
	bl	OvlFunc_1c48
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_937b8
	mov	r0, #0x13
	bl	OvlFunc_1c48
	mov	r1, #4
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	bl	OvlFunc_1c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #3
	bl	OvlFunc_1c48
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_1c5c
	mov	r0, #3
	bl	OvlFunc_1c48
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lca2
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x11
	bl	OvlFunc_1c48
	ldr	r5, =.L2d3c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__Func_92064
	ldr	r5, =.L2de4
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, r5
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r3, [r7]
	mov	r2, #0xe4
.Lc90:
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	b	.Ld98
.Lca2:
	ldr	r2, [r7]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #2
	bl	OvlFunc_1c48
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_1c5c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	OvlFunc_1c48
	ldr	r5, =.L2d74
	mov	r0, #2
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0
	bl	__Func_920fc
	mov	r1, #0x83
	mov	r2, #0xbc
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #1
	bl	OvlFunc_1c5c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #1
	bl	OvlFunc_1c48
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__Func_92064
	ldr	r5, =.L2de4
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, r5
	mov	r0, #1
	bl	__Func_9207c
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r3, [r7]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
.Ld98:
	mov	r0, #2
	bl	__Func_91e9c
	ldr	r0, =0x93f
	bl	__Func_79358
	bl	__Func_91750
.Lda8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_710

.thumb_func_start OvlFunc_dcc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lde2
	b	.L1160
.Lde2:
	ldr	r0, =0x235
	bl	__Func_79358
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xda
	mov	r2, #0x78
	mov	r0, #0
	lsl	r1, #2
	bl	__Func_921c4
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0
	mov	r1, r10
	bl	OvlFunc_1c5c
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r0, #0xcc
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	ldr	r0, =0x2125
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	mov	r7, r0
	cmp	r7, #0
	beq	.Le64
	b	.L1144
.Le64:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r8, r3
	mov	r0, #0xc
	mov	r1, r8
	bl	OvlFunc_1c5c
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_925cc
	ldr	r0, =0x212b
	bl	__Func_92b94
	mov	r6, #0x80
	ldr	r0, =0x400c
	bl	OvlFunc_1c48
	lsl	r6, #8
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_1c5c
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_1c5c
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, r8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0xf
	bl	OvlFunc_1c48
	mov	r0, #0x10
	mov	r1, r6
	bl	OvlFunc_1c5c
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_925cc
	mov	r5, #0xb0
	mov	r1, r10
	mov	r0, #0x11
	bl	OvlFunc_1c5c
	lsl	r5, #8
	ldr	r0, =0x4011
	bl	OvlFunc_1c48
	mov	r1, r5
	mov	r0, #0x12
	bl	OvlFunc_1c5c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_9259c
	ldr	r0, =0x4012
	bl	OvlFunc_1c48
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0xb
	bl	OvlFunc_1c5c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xb
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_9259c
	ldr	r0, =0x800b
	bl	OvlFunc_1c48
	mov	r0, #0xd
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xd
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #0xe
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	ldr	r2, =0xcccc
	mov	r0, #0x10
	ldr	r1, =0x19999
	bl	__Func_92064
	ldr	r1, =.L2e20
	mov	r0, #0xd
	bl	__Func_9207c
	ldr	r1, =.L2ed4
	mov	r0, #0x10
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, r8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #0x11
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, r8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0x12
	bl	__Func_92adc
	ldr	r1, =.L2e5c
	mov	r0, #0xe
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, r6
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	lsl	r2, #15
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #8
	bl	OvlFunc_1c48
	mov	r1, #0x80
	lsl	r1, #9
	mov	r2, r6
	mov	r0, #8
	bl	__Func_92064
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xc6
	strb	r3, [r0]
	lsl	r1, #2
	mov	r2, #0x48
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_1c5c
	mov	r0, #0xd
	bl	__Func_920a0
	mov	r0, #0xd
	bl	__Func_92054
	mov	r2, r0
	mov	r3, r2
	add	r3, #0x64
	str	r7, [r2, #0x6c]
	strh	r7, [r3]
	add	r3, #2
	strh	r7, [r3]
	mov	r3, #0x80
	lsl	r3, #24
	str	r7, [r2, #0x24]
	str	r7, [r2, #0x28]
	str	r7, [r2, #0x2c]
	str	r3, [r2, #0x38]
	str	r3, [r2, #0x3c]
	str	r3, [r2, #0x40]
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =.L2f24
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0xd
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0x11
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0xe
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0xc
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0x12
	bl	__Func_9207c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x42
	bl	__Func_91e9c
	b	.L115c
.L1144:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
.L115c:
	bl	__Func_91750
.L1160:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_dcc

.thumb_func_start OvlFunc_11ac
	push	{lr}
	ldr	r0, =0x235
	bl	__Func_79374
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_11ac

.thumb_func_start OvlFunc_11c4
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x8a4
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L11fa
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__Func_92848
	ldr	r0, =0x206f
	bl	__Func_92b94
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	b	.L1272
.L11fa:
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_9259c
	ldr	r0, =0x206d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_92f84
	bl	__Func_93554
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_933d4
	mov	r0, #0x87
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x8a3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L126c
	mov	r0, #0x46
	bl	__Func_91e9c
	b	.L1272
.L126c:
	mov	r0, #7
	bl	__Func_91e9c
.L1272:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11c4

.thumb_func_start OvlFunc_1298
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0xf7
	bl	__Func_f9080
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_924d4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	ldr	r1, =iwram_1ebc
	mov	r3, #0xe0
	lsl	r3, #1
	ldr	r2, [r1]
	mov	r10, r3
	mov	r8, r1
	add	r3, #0x40
	mov	r1, r10
	str	r3, [r2, r1]
	sub	r3, #0x38
	mov	r9, r3
	mov	r1, r9
	mov	r3, #0x20
	str	r3, [r2, r1]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r1, #0xa4
	mov	r0, #0x10
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #9
	mov	r0, #0x10
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa
	mov	r0, #0x10
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xe6
	mov	r0, #0x10
	mov	r1, #0xa4
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xe6
	mov	r0, #0x10
	mov	r1, #0xb9
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0xe5
	lsl	r2, #2
	mov	r0, #0x10
	mov	r1, #0xb9
	bl	__Func_921c4
	mov	r1, #0xb
	mov	r0, #0x10
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r1, =.L2f88
	mov	r0, #0x10
	bl	__Func_9207c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x10
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r6, #0xc0
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r6, #6
	mov	r0, #0x11
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, r6
	mov	r0, #0x12
	bl	OvlFunc_1c5c
	mov	r0, #0x10
	bl	__Func_920a0
	mov	r0, #0x10
	bl	__Func_92054
	mov	r5, #0x80
	mov	r3, #0xd0
	lsl	r3, #8
	lsl	r5, #9
	strh	r3, [r0, #6]
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #5
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x10
	bl	__Func_92adc
	mov	r1, #8
	mov	r0, #0x10
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x11
	mov	r1, #4
	bl	__Func_924d4
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #0x10
	lsl	r1, #10
	bl	__Func_92064
	mov	r2, #0xe5
	mov	r0, #0x10
	mov	r1, #0xa2
	lsl	r2, #2
	bl	__Func_921c4
	ldr	r2, =0x37a
	mov	r0, #0x10
	mov	r1, #0xa2
	bl	__Func_921c4
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x10
	mov	r1, #0xb8
	ldr	r2, =0x35f
	bl	__Func_921c4
	mov	r2, #0xc7
	mov	r0, #0x10
	mov	r1, #0xb8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, =0x201
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r1, r9
	mov	r3, #0x10
	str	r3, [r2, r1]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r0, #0x45
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1298

.thumb_func_start OvlFunc_160c
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r5, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x11
	bl	OvlFunc_1c5c
	ldr	r0, =0x206e
	bl	__Func_92b94
	ldr	r0, =0x8a4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1656
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1656:
	mov	r0, #0x11
	bl	OvlFunc_1c48
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x11
	bl	OvlFunc_1c5c
	ldr	r0, =0x8a3
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_160c

.thumb_func_start OvlFunc_1688
	push	{r5, r6, r7, lr}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0xf7
	bl	__Func_f9080
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_924d4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r1, #0xa4
	mov	r0, #0x11
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #9
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xe6
	mov	r0, #0x11
	mov	r1, #0xa4
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xe6
	mov	r0, #0x11
	mov	r1, #0xb9
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0xe5
	lsl	r2, #2
	mov	r0, #0x11
	mov	r1, #0xb9
	bl	__Func_921c4
	mov	r1, #0xb
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r1, =.L2f88
	mov	r0, #0x11
	bl	__Func_9207c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x11
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xf
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x12
	bl	OvlFunc_1c5c
	mov	r0, #0x11
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r0, #0x15
	bl	__Func_92054
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	mov	r3, #0
	strb	r3, [r7]
	mov	r5, #0
.L18b2:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x9999
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffffb334
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x13
	bls	.L18b2
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_924d4
	mov	r1, #6
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x11
	bl	__Func_93874
	mov	r0, #0x11
	bl	__Func_920a0
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x11
	bl	__Func_92054
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r5, #0x80
	strh	r3, [r0, #6]
	lsl	r5, #9
	mov	r3, #3
	strb	r3, [r7]
	mov	r0, #0xa
	str	r5, [r6, #0x18]
	str	r5, [r6, #0x1c]
	bl	__Func_9163c
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r1, r5
	mov	r2, r5
	mov	r0, r5
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x11
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0xe8
	mov	r1, #0xd0
	lsl	r2, #2
	mov	r0, #0x11
	bl	__Func_921c4
	mov	r0, #0x5c
	bl	__Func_f9080
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x11
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #9
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #9
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
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
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x8a4
	bl	__Func_79358
	mov	r0, #0x45
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1688

.thumb_func_start OvlFunc_1a14
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.L1a2e
	bl	OvlFunc_1a4c
	b	.L1a38
.L1a2e:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.L1a38
	bl	OvlFunc_1c6c
.L1a38:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_1a14

.thumb_func_start OvlFunc_1a4c
	push	{lr}
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #5
	cmp	r3, #0x41
	bls	.L1a68
	b	.L1c2e
.L1a68:
	ldr	r2, =.L1a70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1a70:
	.word	.L1b78
	.word	.L1c2e
	.word	.L1baa
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1bcc
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1be8
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c12
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1bb6
	.word	.L1bc0
	.word	.L1bc6
	.word	.L1c06
	.word	.L1c0c
	.word	.L1b8a
	.word	.L1bb0
.L1b78:
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_924d4
	b	.L1c2e
.L1b8a:
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_924d4
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1c2e
	bl	OvlFunc_160c
	b	.L1c2e
.L1baa:
	bl	OvlFunc_1298
	b	.L1c2e
.L1bb0:
	bl	OvlFunc_1688
	b	.L1c2e
.L1bb6:
	bl	OvlFunc_1cd4
	bl	__Func_7a664
	b	.L1c2e
.L1bc0:
	bl	OvlFunc_23e0
	b	.L1c2e
.L1bc6:
	bl	OvlFunc_25f0
	b	.L1c2e
.L1bcc:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	bl	OvlFunc_2b1c
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1c2e
	bl	OvlFunc_24d8
	b	.L1c2e
.L1be8:
	mov	r0, #1
	bl	__Func_7961c
	mov	r0, #2
	bl	__Func_7961c
	mov	r0, #3
	bl	__Func_7961c
	ldr	r0, =0x90e
	bl	__Func_79358
	bl	OvlFunc_2668
	b	.L1c2e
.L1c06:
	bl	OvlFunc_2820
	b	.L1c2e
.L1c0c:
	bl	OvlFunc_2904
	b	.L1c2e
.L1c12:
	mov	r0, #1
	bl	__Func_7961c
	mov	r0, #2
	bl	__Func_7961c
	mov	r0, #3
	bl	__Func_7961c
	ldr	r0, =0x90f
	bl	__Func_79358
	bl	OvlFunc_2964
.L1c2e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a4c

.thumb_func_start OvlFunc_1c48
	push	{lr}
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c48

.thumb_func_start OvlFunc_1c5c
	push	{lr}
	lsl	r1, #16
	lsr	r1, #16
	mov	r2, #0xa
	bl	__Func_92adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c5c

.thumb_func_start OvlFunc_1c6c
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1ca4
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0
	mov	r2, #0x30
	mov	r3, #5
	bl	__Func_10424
	mov	r3, #0x10
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #8
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
	b	.L1cca
.L1ca4:
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_92950
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1cca
	mov	r3, #0xe
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x16
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
.L1cca:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c6c

.thumb_func_start OvlFunc_1cd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__Func_916b0
	mov	r1, #0xc6
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xce
	mov	r2, #0x88
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xca
	mov	r2, #0x98
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	bl	__Func_933f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r9, r3
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x43
	str	r3, [r2]
	sub	r3, #0x3b
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #0
	ldr	r0, =0x10002
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_1c5c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x20f8
	bl	__Func_92b94
	mov	r0, #2
	bl	OvlFunc_1c48
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #8
	bl	OvlFunc_1c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #3
	bl	OvlFunc_1c48
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_1c5c
	ldr	r1, =0x105
	mov	r2, #0x14
	mov	r0, #9
	bl	__Func_937b8
	mov	r0, #9
	bl	OvlFunc_1c48
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #1
	bl	OvlFunc_1c48
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_937b8
	mov	r0, #0xa
	bl	OvlFunc_1c48
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0xb
	bl	OvlFunc_1c48
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_1c5c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #2
	bl	OvlFunc_1c48
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #3
	bl	OvlFunc_1c48
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_1c5c
	mov	r5, #0xc0
	mov	r1, #2
	mov	r0, #1
	lsl	r5, #7
	bl	__Func_9259c
	mov	r0, #1
	bl	OvlFunc_1c48
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_1c5c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_1c5c
	mov	r0, #2
	bl	OvlFunc_1c48
	mov	r1, #4
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r6, #0x80
	mov	r0, #3
	bl	OvlFunc_1c48
	lsl	r6, #6
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_1c5c
	mov	r0, #1
	bl	OvlFunc_1c48
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x83
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	mov	r7, #0xc0
	lsl	r7, #8
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r7
	mov	r0, #2
	bl	OvlFunc_1c5c
	mov	r0, #2
	bl	OvlFunc_1c48
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, r7
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_1c5c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #8
	bl	OvlFunc_1c48
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #9
	bl	OvlFunc_1c48
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0xa
	bl	OvlFunc_1c48
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #2
	mov	r1, r7
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, r7
	bl	OvlFunc_1c5c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0xb
	bl	OvlFunc_1c48
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x83
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	mov	r5, #0xe0
	bl	__Func_937b8
	lsl	r5, #8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r5
	mov	r0, #2
	bl	OvlFunc_1c5c
	mov	r0, #2
	bl	OvlFunc_1c48
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x3c
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #1
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r10
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_91c7c
	b	.L2154

	.pool_aligned

.L2154:
	cmp	r0, #1
	bne	.L2162
	mov	r0, #2
	bl	OvlFunc_1c48
	mov	r5, #1
	b	.L2188
.L2162:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, r7
	bl	OvlFunc_1c5c
	mov	r0, #2
	bl	OvlFunc_1c48
.L2188:
	cmp	r5, #0
	beq	.L219c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L219c:
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #9
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r5, #0xc0
	mov	r2, #0x3c
	mov	r0, #0xb
	ldr	r1, =0x105
	bl	__Func_937b8
	lsl	r5, #6
	mov	r0, #8
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_1c5c
	mov	r0, #8
	bl	OvlFunc_1c48
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
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r5
	mov	r0, #9
	bl	OvlFunc_1c5c
	mov	r0, #9
	bl	OvlFunc_1c48
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0xa
	mov	r6, #0x80
	bl	OvlFunc_1c5c
	lsl	r6, #8
	mov	r0, #0xa
	bl	OvlFunc_1c48
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_1c5c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0xb
	bl	OvlFunc_1c48
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #2
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_92064
	ldr	r5, =.L2dac
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_1c5c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0xb
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_92064
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xb
	ldr	r1, =0x33e
	mov	r2, #0x98
	bl	__Func_92158
	mov	r1, #0xca
	mov	r0, #0xb
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_92158
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0xb
	bl	__Func_92128
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r1, #0xca
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_921c4
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x3c
	bl	__Func_9163c
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
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x40
	bl	__Func_91e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1cd4

.thumb_func_start OvlFunc_23e0
	push	{lr}
	mov	r0, #5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L23fe
	ldr	r0, =0x16d
	bl	__Func_79358
	mov	r0, #5
	bl	__Func_79664
	mov	r0, #3
	bl	__Func_7961c
.L23fe:
	bl	__Func_916b0
	mov	r1, #0xb2
	mov	r2, #0x93
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_9335c
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	ldr	r2, =0xcccc
	ldr	r1, =0x19999
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #0
	strh	r3, [r0, #6]
	bl	__Func_91dc8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0xc3
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	mov	r1, #0xcb
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92158
	mov	r1, #0xdc
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	mov	r1, #0xe4
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92158
	mov	r1, #0xf5
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	mov	r1, #0xfd
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x90f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L24be
	mov	r0, #0x1f
	bl	__Func_91e9c
	b	.L24c4
.L24be:
	mov	r0, #0x41
	bl	__Func_91e9c
.L24c4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_23e0

.thumb_func_start OvlFunc_24d8
	push	{r5, lr}
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0xd
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xd0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x12
	bl	__Func_92adc
	ldr	r0, =0x2112
	bl	__Func_92b94
	mov	r0, #8
	bl	OvlFunc_1c48
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r2, r5
	mov	r3, #0xb4
	add	r2, #0x64
	lsl	r3, #2
	strh	r3, [r2]
	add	r5, #0x66
	mov	r3, #0x70
	strh	r3, [r5]
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9207c
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x11
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_24d8

.thumb_func_start OvlFunc_25f0
	push	{lr}
	bl	__Func_916b0
	ldr	r2, =0xcccc
	mov	r0, #0
	ldr	r1, =0x19999
	bl	__Func_92064
	bl	__Func_91dc8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0xc3
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_92158
	mov	r1, #0xdc
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_92158
	mov	r1, #0xf5
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_92128
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x90f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2650
	mov	r0, #0x20
	bl	__Func_91e9c
	b	.L2656
.L2650:
	mov	r0, #0xc
	bl	__Func_91e9c
.L2656:
	pop	{r0}
	bx	r0
.func_end OvlFunc_25f0

.thumb_func_start OvlFunc_2668
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0xc6
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xce
	mov	r2, #0x88
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xca
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r1, #18
	mov	r0, #3
	bl	__Func_923e4
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_924d4
	ldr	r0, =0x2134
	bl	__Func_92b94
	mov	r0, #8
	bl	OvlFunc_1c48
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #9
	bl	OvlFunc_1c48
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0xa
	bl	OvlFunc_1c48
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0xb
	bl	OvlFunc_1c48
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_92064
	ldr	r5, =.L2dac
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_1c5c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_92064
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xb
	ldr	r1, =0x33e
	mov	r2, #0x98
	bl	__Func_92158
	mov	r1, #0xca
	mov	r0, #0xb
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_92158
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0xb
	bl	__Func_92128
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r1, #0xca
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_921c4
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x43
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2668

.thumb_func_start OvlFunc_2820
	push	{lr}
	mov	r0, #5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L283e
	ldr	r0, =0x16d
	bl	__Func_79358
	mov	r0, #5
	bl	__Func_79664
	mov	r0, #3
	bl	__Func_7961c
.L283e:
	bl	__Func_916b0
	mov	r1, #0xd9
	mov	r2, #0x93
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_9335c
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	ldr	r2, =0xcccc
	ldr	r1, =0x19999
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	bl	__Func_91dc8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0xc8
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	mov	r1, #0xc0
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92158
	mov	r1, #0xaf
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	mov	r1, #0xa7
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92158
	mov	r1, #0x96
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	mov	r1, #0x8e
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x15
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_2820

.thumb_func_start OvlFunc_2904
	push	{lr}
	bl	__Func_916b0
	ldr	r2, =0xcccc
	mov	r0, #0
	ldr	r1, =0x19999
	bl	__Func_92064
	bl	__Func_91dc8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0xc8
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_92158
	mov	r1, #0xaf
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_92158
	mov	r1, #0x96
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_92128
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x16
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_2904

.thumb_func_start OvlFunc_2964
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0xc6
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xce
	mov	r2, #0x88
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xca
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r1, #18
	mov	r0, #3
	bl	__Func_923e4
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_924d4
	ldr	r0, =0x2138
	bl	__Func_92b94
	mov	r0, #8
	bl	OvlFunc_1c48
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #9
	bl	OvlFunc_1c48
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0xa
	bl	OvlFunc_1c48
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0xb
	bl	OvlFunc_1c48
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_92064
	ldr	r5, =.L2dac
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_1c5c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_92064
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xb
	ldr	r1, =0x33e
	mov	r2, #0x98
	bl	__Func_92158
	mov	r1, #0xca
	mov	r0, #0xb
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_92158
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0xb
	bl	__Func_92128
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r1, #0xca
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_921c4
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x40
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2964

.thumb_func_start OvlFunc_2b1c
	push	{lr}
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_92950
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x10
	mov	r1, #5
	bl	__Func_92950
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_92950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0xd
	mov	r1, #0xa
	bl	__Func_924ec
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__Func_924ec
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0x10
	mov	r1, #0x28
	bl	__Func_924ec
	mov	r0, #0x11
	mov	r1, #0x32
	bl	__Func_924ec
	mov	r0, #0x12
	mov	r1, #0x3c
	bl	__Func_924ec
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b1c

	.section .data

.L2d3c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2d3c, (0x2d74-0x2d3c)
.L2d74:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2d74, (0x2dac-0x2d74)
.L2dac:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2dac, (0x2de4-0x2dac)
.L2de4:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2de4, (0x2e20-0x2de4)
.L2e20:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2e20, (0x2e5c-0x2e20)
.L2e5c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2e5c, (0x2ed4-0x2e5c)
.L2ed4:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2ed4, (0x2f24-0x2ed4)
.L2f24:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2f24, (0x2f88-0x2f24)
.L2f88:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2f88, (0x3034-0x2f88)
.L3034:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3034, (0x3094-0x3034)
.L3094:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3094, (0x3274-0x3094)
.L3274:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3274, (0x32bc-0x3274)
.L32bc:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x32bc, (0x3324-0x32bc)
.L3324:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3324, (0x339c-0x3324)
.L339c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x339c, (0x35f4-0x339c)
.L35f4:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x35f4, (0x375c-0x35f4)
.L375c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x375c, (0x37bc-0x375c)
.L37bc:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x37bc, (0x387c-0x37bc)
.L387c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x387c, (0x399c-0x387c)
.L399c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x399c, (0x3a44-0x399c)
.L3a44:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3a44, (0x3bdc-0x3a44)
.L3bdc:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3bdc, (0x3e1c-0x3bdc)
.L3e1c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3e1c, (0x3e64-0x3e1c)
.L3e64:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3e64, (0x3e70-0x3e64)
.L3e70:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3e70, (0x3e94-0x3e70)
.L3e94:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3e94, (0x3f60-0x3e94)
.L3f60:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3f60, (0x4110-0x3f60)
.L4110:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x4110
