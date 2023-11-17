	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_1150
	push	{lr}
	ldr	r0, =0x205
	bl	__Func_79374
	ldr	r1, =.L2820
	mov	r0, #8
	bl	__Func_9207c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1150

.thumb_func_start OvlFunc_116c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.L117e
	ldr	r3, =0xfffff
	add	r5, r3
.L117e:
	asr	r5, #20
	ldr	r0, =0x205
	bl	__Func_79358
	cmp	r5, #7
	bne	.L1194
	ldr	r1, =.L2874
	mov	r0, #8
	bl	__Func_9207c
	b	.L119c
.L1194:
	ldr	r1, =.L28c8
	mov	r0, #8
	bl	__Func_9207c
.L119c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_116c

.thumb_func_start OvlFunc_11b4
	push	{lr}
	bl	__Func_916b0
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0x35
	mov	r1, #0x1f
	bl	__Func_91f90
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x24
	mov	r1, #1
	bl	__Func_91eb0
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_11b4

.thumb_func_start OvlFunc_1208
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	bne	.L12c6
	bl	__Func_916b0
	mov	r7, r5
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	add	r7, #0x55
	bl	__Func_933f8
	strb	r6, [r7]
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	ldr	r3, =0xfff00000
	lsl	r2, #16
	add	r2, r3
	lsl	r1, #16
	mov	r0, #0
	bl	__Func_923e4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r3, =OvlFunc_cc0
	mov	r0, #0
	str	r3, [r5, #0x6c]
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92304
	mov	r1, #0
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92304
	mov	r3, #3
	strb	r3, [r7]
	str	r6, [r5, #0x6c]
	bl	__Func_9202c
	bl	__Func_91750
.L12c6:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1208

.thumb_func_start OvlFunc_12e0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =REG_BLDCNT
	mov	r2, #0xfd
	lsl	r2, #6
	sub	sp, #0x44
	strh	r2, [r3]
	ldr	r2, =0x1010
	add	r3, #2
	strh	r2, [r3]
	ldr	r1, =ewram_1000
	mov	r0, #0x15
	bl	OvlFunc_1a3c
	ldr	r0, =0x111
	bl	__Func_79358
	ldr	r2, =ewram_240
	ldr	r3, =0x242
	mov	r4, #0x90
	add	r1, r2, r3
	mov	r3, #0xb
	strh	r3, [r1]
	lsl	r4, #2
	ldr	r3, =0x39
	add	r2, r4
	mov	r0, #0
	strh	r3, [r2]
	bl	__Func_91494
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1338
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_d98
	lsl	r1, #4
	bl	__Func_41d8
	b	.L133c
.L1338:
	bl	OvlFunc_e3c
.L133c:
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	ldr	r3, =ewram_240
	sub	r2, #0x42
	add	r3, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	sub	r3, #1
	cmp	r3, #0x1e
	bls	.L135e
	b	.L1718
.L135e:
	ldr	r2, =.L1368
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1368:
	.word	.L13e4
	.word	.L13f4
	.word	.L144a
	.word	.L144a
	.word	.L144a
	.word	.L144a
	.word	.L1416
	.word	.L1416
	.word	.L1416
	.word	.L1416
	.word	.L1416
	.word	.L1416
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1640
	.word	.L163c
	.word	.L163c
	.word	.L163c
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1648
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1694
	.word	.L170a
.L13e4:
	ldr	r0, =0x872
	bl	__Func_79338
	cmp	r0, #0
	bne	.L13f4
	mov	r0, #0x14
	bl	__Func_91e9c
.L13f4:
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__Func_30f8
	b	.L1718
.L1416:
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1422
	b	.L1718
.L1422:
	mov	r3, #0x14
	mov	r5, #5
	str	r3, [sp]
	mov	r0, #0x54
	mov	r1, #5
	mov	r2, #0xa
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r0, #0x65
	mov	r1, #5
	mov	r2, #0xc
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_10704
	b	.L1718
.L144a:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_d98
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1490
	mov	r3, #5
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x62
	mov	r2, #0xa
	mov	r3, #0x61
	mov	r0, #0x25
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #6
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x20
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_10704
.L1490:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	beq	.L14a2
	b	.L1718
.L14a2:
	ldr	r0, =0x251
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L14b0
	b	.L1718
.L14b0:
	ldr	r0, =0x251
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__Func_92054
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r0, #0x18
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r3, sp, #0x1c
	mov	r9, r3
	mov	r4, r9
	mov	r3, #7
	mov	r1, #0
	add	r6, sp, #0x10
	str	r3, [r4, #4]
	mov	r10, r0
	mov	r8, r1
	mov	r7, r6
.L1540:
	mov	r2, r8
	lsl	r5, r2, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r3, #0
	str	r0, [r7]
	str	r3, [r7, #4]
	mov	r0, r5
	bl	__Func_2322
	ldr	r2, [r7]
	str	r0, [r7, #8]
	mov	r3, r2
	cmp	r2, #0
	bge	.L1562
	add	r3, r2, #3
.L1562:
	lsr	r5, r0, #31
	add	r5, r0, r5
	asr	r3, #2
	asr	r5, #1
	sub	r3, r2, r3
	sub	r5, r0, r5
	str	r3, [r6]
	str	r5, [r6, #8]
	mov	r4, r10
	ldr	r1, [r4, #0xc]
	ldr	r2, [r4, #0x10]
	ldr	r0, [r4, #8]
	ldr	r4, [r6, #4]
	str	r4, [sp]
	ldr	r4, =0x10001
	str	r4, [sp, #8]
	mov	r4, r9
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.L1540
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_924d4
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_12330
	bl	__Func_12350
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x48]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	bne	.L168e
	mov	r0, r5
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #1
	ldr	r0, =0x10003
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	bl	__Func_91e20
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x1632
	mov	r1, #0
	mov	r2, #0
	bl	__Func_19aa0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	b	.L168e
.L163c:
	bl	OvlFunc_1208
.L1640:
	mov	r0, #0xaa
	bl	__Func_91ff0
	b	.L1718
.L1648:
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_916b0
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	mov	r4, #0xe0
	ldr	r3, [r3]
	lsl	r4, #1
	mov	r2, #0x80
	add	r3, r4
	lsl	r2, #1
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0x32
	bl	__Func_91e9c
.L168e:
	bl	__Func_91750
	b	.L1718
.L1694:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16f4
	bl	OvlFunc_1730
	b	.L1718

	.pool_aligned

.L16f4:
	mov	r3, #7
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	bl	__Func_10704
	b	.L1718
.L170a:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1718
	bl	OvlFunc_196c
.L1718:
	mov	r0, #0
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_12e0

.thumb_func_start OvlFunc_1730
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0x88
	mov	r2, #0xb8
	str	r5, [r0, #0x18]
	lsl	r1, #16
	mov	r0, #3
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x88
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x88
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__Func_92064
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xb8
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #0xfe
	mov	r8, r3
	ldr	r7, =.L2820
	mov	r3, #0
	mov	r10, r3
	mov	r6, #1
	mov	r5, #1
.L17f6:
	mov	r2, #0xa8
	mov	r1, #0x98
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r1, =.L28c8
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r8
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xb8
	mov	r1, #0x88
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r7
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0xa8
	mov	r1, #0x78
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #5
	bl	__Func_9163c
	ldr	r1, =.L2874
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r8
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xb8
	mov	r1, #0x88
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, r7
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	sub	r5, #1
	orr	r3, r6
	strb	r3, [r0]
	cmp	r5, #0
	bge	.L17f6
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #3
	bl	__Func_92054
	ldr	r3, =OvlFunc_d58
	mov	r1, #1
	str	r3, [r0, #0x6c]
	mov	r0, #0
	bl	__Func_93500
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x84
	mov	r0, #0
	mov	r1, #0x88
	lsl	r2, #1
	bl	__Func_921c4
	bl	__Func_93530
	mov	r3, #7
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	bl	__Func_10704
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1730

.thumb_func_start OvlFunc_196c
	push	{r5, r6, lr}
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1a26
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0x88
	mov	r2, #0x90
	str	r5, [r0, #0x18]
	lsl	r1, #16
	mov	r0, #3
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #3
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r5, =iwram_1ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x48
	mov	r1, #0x88
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #3
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_923e4
	ldr	r0, =0x872
	bl	__Func_79358
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__Func_91750
.L1a26:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_196c

	.section .data

.L2820:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2820, (0x2874-0x2820)
.L2874:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2874, (0x28c8-0x2874)
.L28c8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x28c8, (0x291c-0x28c8)
