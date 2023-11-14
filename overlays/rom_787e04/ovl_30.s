	.include "macros.inc"
	.include "gba.inc"

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
	ldr	r0, =.L1fd0
	bx	lr
.func_end OvlFunc_88

.thumb_func_start OvlFunc_90
	mov	r0, #0
	bx	lr
.func_end OvlFunc_90

.thumb_func_start OvlFunc_94
	push	{lr}
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.La4
	ldr	r0, =.L21dc
	b	.La6
.La4:
	ldr	r0, =.L2198
.La6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_94

.thumb_func_start OvlFunc_b8
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.Lce
	ldr	r0, =.L2518
	b	.Lf4
.Lce:
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ldc
	ldr	r5, =.L2410
	b	.Lec
.Ldc:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lea
	ldr	r5, =.L2338
	b	.Lec
.Lea:
	ldr	r5, =.L2218
.Lec:
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
.Lf4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_b8

.thumb_func_start OvlFunc_118
	push	{r5, r6, lr}
	ldr	r5, =0x22b9
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L146
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L14c
.L146:
	add	r0, r5, #2
	bl	__Func_92b94
.L14c:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_118

.thumb_func_start OvlFunc_160
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.L186
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L182
	ldr	r0, =.L2c5c
	b	.L1b2
.L182:
	ldr	r0, =.L2b9c
	b	.L1b2
.L186:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L194
	ldr	r0, =.L25a8
	b	.L1b2
.L194:
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a2
	ldr	r0, =.L2980
	b	.L1b2
.L1a2:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1b0
	ldr	r0, =.L2800
	b	.L1b2
.L1b0:
	ldr	r0, =.L26b0
.L1b2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_160

.thumb_func_start OvlFunc_1e0
	push	{lr}
	bl	__Func_916b0
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_9259c
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0xf5b
	bl	__Func_92b94
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0xa
	bl	__Func_92848
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0x10
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L25a
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L25a:
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #4
	bl	__Func_93040
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e0

.thumb_func_start OvlFunc_284
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0xe
	bl	__Func_9280c
	ldr	r0, =0x11aa
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2b8
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	b	.L2d0
.L2b8:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93054
.L2d0:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_284

.thumb_func_start OvlFunc_2e0
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2f2
	bl	__Func_95214
.L2f2:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, r5
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e0

.thumb_func_start OvlFunc_31c
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #1
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_31c

.thumb_func_start OvlFunc_330
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #2
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_330

.thumb_func_start OvlFunc_344
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #3
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_344

.thumb_func_start OvlFunc_358
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #4
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_358

.thumb_func_start OvlFunc_36c
	push	{lr}
	mov	r0, #0x80
	bl	__Func_f9080
	mov	r0, #5
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_36c

.thumb_func_start OvlFunc_380
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #6
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_380

.thumb_func_start OvlFunc_394
	push	{lr}
	mov	r0, #0x80
	bl	__Func_f9080
	mov	r0, #7
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_394

.thumb_func_start OvlFunc_3a8
	push	{lr}
	mov	r0, #0x81
	bl	__Func_f9080
	mov	r0, #8
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a8

.thumb_func_start OvlFunc_3bc
	push	{lr}
	mov	r0, #0x81
	bl	__Func_f9080
	mov	r0, #9
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_3bc

.thumb_func_start OvlFunc_3d0
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #0xa
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_3d0

.thumb_func_start OvlFunc_3e4
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #0xb
	bl	OvlFunc_2e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_3e4

.thumb_func_start OvlFunc_3f8
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.L420
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	b	.L550
.L420:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L468
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L46c
.L468:
	bl	OvlFunc_13b4
.L46c:
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_92b08
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4d8
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #6
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L550
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4bc
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.L550
	mov	r0, #0xc
	bl	__Func_118a8
	b	.L550
.L4bc:
	mov	r0, #0xb
	bl	__Func_118a8
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_924d4
	b	.L550
.L4d8:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x15
	bne	.L4ee
	bl	OvlFunc_a0c
	b	.L550
.L4ee:
	cmp	r3, #0x14
	bne	.L4fe
	ldr	r0, =0x834
	bl	__Func_79358
	bl	OvlFunc_578
	b	.L550
.L4fe:
	cmp	r3, #0x16
	bne	.L508
	bl	OvlFunc_13e4
	b	.L550
.L508:
	ldr	r5, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L546
	bl	__Func_95160
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_95240
	mov	r0, #0x1e
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	__Func_95268
	b	.L550
.L546:
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
.L550:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3f8

.thumb_func_start OvlFunc_578
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =iwram_1ebc
	mov	r9, r2
	ldr	r3, [r2]
	sub	r2, #0x4c
	ldr	r7, [r2]
	mov	r2, #0xf0
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x11
	ldr	r6, [r3]
	bl	__Func_92054
	ldr	r0, [r0, #0x50]
	mov	r8, r0
	bl	__Func_916b0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_924d4
	mov	r3, #0
	mov	r10, r3
	ldr	r3, =0x555
	mov	r2, r8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r5, .L63c	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x90
	lsl	r1, #18
	ldr	r2, =0x28a0000
	mov	r0, #0x11
	bl	__Func_923e4
	mov	r0, #7
	bl	__Func_118a8
	mov	r2, #0xac
	ldr	r1, =0x2160000
	lsl	r2, #18
	mov	r0, #8
	bl	__Func_923e4
	bl	__Func_c5b4
	mov	r0, #8
	b	.L650

	.align	2, 0
.L63c:
	.word	0
	.pool

.L650:
	bl	__Func_93304
	ldr	r5, =0xe52
	mov	r1, #1
	mov	r0, r5
	mov	r2, #0
	bl	__Func_19aa0
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #8
	bl	__Func_93304
	mov	r1, #1
	add	r0, r5, #1
	mov	r2, #0
	bl	__Func_19aa0
	bl	__Func_c5fc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, r7
	mov	r3, #0xa4
	add	r2, #0xec
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0x96
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0x9c
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0xcc
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0x8d
	lsl	r3, #18
	str	r3, [r6, #8]
	mov	r3, r10
	str	r3, [r6, #0xc]
	ldr	r3, =0x2b30000
	str	r3, [r6, #0x10]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, r9
	ldr	r1, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	bl	__Func_95160
	mov	r2, r9
	ldr	r3, [r2, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_95240
	mov	r0, #0x1e
	bl	__Func_30f8
	add	r5, #2
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	__Func_95268
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_92b94
	mov	r2, #0x3c
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #7
	bl	__Func_118c0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_118a8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0x13
	bl	__Func_924d4
	ldr	r1, =0x22d
	ldr	r2, =0x2a7
	mov	r0, #0
	bl	__Func_92158
	mov	r0, #8
	bl	__Func_118c0
	mov	r0, #9
	bl	__Func_118a8
	mov	r2, #0xaa
	ldr	r1, =0x22b
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_92158
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	ldr	r2, =0x2a2
	mov	r0, #0
	ldr	r1, =0x21f
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__Func_92f84
	bl	OvlFunc_17e4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x9008
	bl	__Func_93040
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0xaa
	lsl	r2, #2
	strb	r3, [r0]
	ldr	r1, =0x21e
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0xe2
	bl	__Func_c430
	mov	r0, #0x21
	bl	__Func_79358
	mov	r0, #0x7e
	bl	__Func_f9080
	mov	r1, #7
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xac
	and	r5, r3
	ldr	r1, =0x216
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, #1
	mov	r0, #8
	bl	__Func_9335c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	ldr	r5, =.L1ab4
	orr	r6, r3
	mov	r1, r5
	strb	r6, [r0]
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #8
	bl	__Func_920e8
	mov	r0, #8
	ldr	r1, =0x1a3
	ldr	r2, =0x295
	bl	__Func_921c4
	mov	r1, #0xcc
	ldr	r2, =0x295
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L95a
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L95a:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L1b04
	mov	r0, #8
	bl	__Func_9207c
	ldr	r1, =.L1b34
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, r9
	ldr	r1, [r2]
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
	mov	r0, #0x14
	bl	__Func_91e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_578

.thumb_func_start OvlFunc_a0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	bl	__Func_916b0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #8
	ldr	r1, =0x1af0000
	ldr	r2, =0x1870000
	bl	__Func_923e4
	mov	r2, #0xca
	lsl	r2, #17
	ldr	r1, =0x1cf0000
	mov	r0, #0xa
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	add	r5, #0x55
	mov	r2, #0
	strb	r3, [r1]
	strb	r2, [r5]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	ldr	r1, =.L1cec
	mov	r0, #0xa
	bl	__Func_9207c
	ldr	r2, =iwram_1ebc
	ldr	r3, [r2]
	mov	r10, r2
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r8, r3
	mov	r5, #5
	mov	r0, #0x53
	mov	r1, #0xf
	mov	r2, #0x53
	mov	r3, #0x13
	str	r5, [sp]
	bl	__Func_10424
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x5a
	mov	r1, #0x10
	mov	r2, #0x5a
	mov	r3, #0x14
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r0, #0x4d
	mov	r1, #0x17
	mov	r2, #0x52
	mov	r3, #0x17
	str	r5, [sp]
	bl	__Func_10424
	mov	r5, #2
	mov	r0, #0x53
	mov	r1, #0x21
	mov	r2, #0x55
	mov	r3, #0x21
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r6, #1
	mov	r0, #0x5b
	mov	r1, #0x1c
	mov	r2, #0x5a
	mov	r3, #0x1c
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x5b
	mov	r1, #0x1c
	mov	r2, #0x58
	mov	r3, #0x1e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #6
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x5e
	mov	r1, #0x1b
	mov	r2, #0x5e
	mov	r3, #0x17
	bl	__Func_10424
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5c
	mov	r1, #0x1c
	mov	r2, #0x57
	mov	r3, #0x17
	bl	__Func_10424
	mov	r0, #0x41
	mov	r1, #0x35
	mov	r2, #0x58
	mov	r3, #0x18
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	bl	__Func_11ae0
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r3, =0x100c
	ldr	r5, =REG_BLDALPHA
	strh	r3, [r5]
	bl	__Func_95160
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	strh	r6, [r3]
	bl	__Func_95240
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #9
	lsl	r1, #9
	bl	__Func_92064
	ldr	r1, =.L1bb4
	mov	r0, #0
	bl	__Func_9207c
	ldr	r1, =.L1b78
	mov	r0, #8
	bl	__Func_9207c
	bl	__Func_91dc8
	mov	r0, #8
	bl	__Func_920e8
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xcf
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	ldr	r2, =0x2120000
	bl	__Func_933f8
	mov	r1, #0xcf
	mov	r0, #9
	lsl	r1, #17
	ldr	r2, =0x2120000
	bl	__Func_923e4
	ldr	r1, =0x1ab
	ldr	r2, =0x1e3
	mov	r0, #9
	bl	__Func_921c4
	bl	__Func_93530
	ldr	r0, =0xe5b
	bl	__Func_92b94
	mov	r2, #0xa
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xf0
	mov	r1, #1
	mov	r2, #0xde
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	ldr	r2, =0x24d
	ldr	r1, =0x19f
	mov	r0, #9
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r1, =.L1c04
	mov	r0, #8
	bl	__Func_9207c
	ldr	r1, =.L1c54
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0xea
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L1d38
	mov	r0, #0xa
	bl	__Func_9207c
	mov	r6, #0
.Lcc0:
	ldr	r2, =0x100e
	add	r3, r6, r2
	strh	r3, [r5]
	mov	r0, #1
	add	r6, #1
	bl	__Func_30f8
	cmp	r6, #3
	bls	.Lcc0
	mov	r0, #0xca
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r7, =0x100f
	ldr	r5, =REG_BLDALPHA
	mov	r6, #0
.Lce4:
	sub	r3, r7, r6
	strh	r3, [r5]
	mov	r0, #1
	add	r6, #1
	bl	__Func_30f8
	cmp	r6, #0xf
	bls	.Lce4
	mov	r0, #0
	bl	__Func_920e8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92848
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_9335c
	ldr	r5, =.L1ca4
	mov	r0, #8
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0
	mov	r1, r5
	bl	__Func_920fc
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x15
	bl	__Func_91e9c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a0c

.thumb_func_start OvlFunc_e34
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	mov	r5, #0x90
	add	r3, r2
	lsl	r5, #8
	cmp	r3, r5
	bls	.Le54
	mov	r0, #0
	mov	r1, #0xd
	bl	__Func_b3284
	b	.Led4
.Le54:
	bl	__Func_916b0
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.Leb0
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_9280c
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le96
	ldr	r0, =0x1c14
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
.Le96:
	ldr	r0, =0x1c15
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_93054
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0xa
	bl	__Func_92adc
	b	.Led0
.Leb0:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lec2
	ldr	r0, =0x11a9
	bl	__Func_92b94
	b	.Lec8
.Lec2:
	ldr	r0, =0xf58
	bl	__Func_92b94
.Lec8:
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
.Led0:
	bl	__Func_91750
.Led4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e34

.thumb_func_start OvlFunc_ef8
	push	{lr}
	bl	__Func_916b0
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_9280c
	ldr	r0, =0x1c13
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0x10
	bl	__Func_92adc
	ldr	r0, =0x301
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_ef8

.thumb_func_start OvlFunc_f38
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1c1b
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	ldr	r0, =0x81c
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f38

.thumb_func_start OvlFunc_f64
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1c1a
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	ldr	r0, =0x81c
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f64

.thumb_func_start OvlFunc_f90
	push	{r5, lr}
	bl	__Func_916b0
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0
	ldr	r1, =0x239
	ldr	r2, =0x189
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_9259c
	ldr	r0, =0x1c66
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_93040
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_9259c
	mov	r2, #0x3c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x92
	mov	r2, #0xcb
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_92128
	mov	r0, #0xb
	bl	__Func_118c0
	mov	r0, #0xc
	bl	__Func_118a8
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0x84
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0xd
	bl	__Func_92548
	mov	r2, #0
	mov	r0, #8
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #0xb
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0xd
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L10ea
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L10ea:
	ldr	r0, =0x81c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1100
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
.L1100:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	ldr	r1, =0x107
	mov	r2, #0x3c
	mov	r0, #8
	bl	__Func_937b8
	ldr	r5, =0x1c6f
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L1144
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1144:
	ldr	r0, =0x81c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L115a
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
.L115a:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	ldr	r1, =0x107
	mov	r0, #8
	bl	__Func_937b8
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0xd
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0xc2
	strb	r3, [r0]
	ldr	r1, =0x22e
	mov	r0, #0
	lsl	r2, #1
	bl	__Func_92128
	ldr	r2, =0x9999
	mov	r0, #8
	ldr	r1, =0x13333
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #0xe
	bl	__Func_924d4
	mov	r2, #0xc8
	ldr	r1, =0x24a
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_92158
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x91
	mov	r2, #0xbf
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xc0
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #8
	mov	r2, #8
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #8
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #8
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0x28
	bl	__Func_92560
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0x8f
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	ldr	r0, =0x81e
	bl	__Func_79358
	ldr	r0, =0x203
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f90

.thumb_func_start OvlFunc_133c
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.L136e
	mov	r1, #0x80
	lsl	r1, #9
	ldr	r2, =.L1e6c
	mov	r0, #8
	bl	__Func_92a1c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1c77
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L1398
.L136e:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r5, =0x1c79
	mov	r0, r5
	bl	__Func_92b94
	add	r5, #1
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r0, r5
	mov	r1, #1
	bl	__Func_1776c
.L1398:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_133c

.thumb_func_start OvlFunc_13b4
	push	{lr}
	sub	sp, #8
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x55
	mov	r2, #0x19
	mov	r3, #0x55
	bl	__Func_10424
	mov	r3, #0x19
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0xf
	mov	r2, #2
	mov	r3, #2
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_13b4

.thumb_func_start OvlFunc_13e4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xf0
	mov	r2, #0xca
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #0x12
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0xa4
	mov	r2, #0x80
	mov	r3, #0xc3
	lsl	r1, #17
	lsl	r2, #10
	lsl	r3, #16
	mov	r0, #0x16
	bl	__Func_c150
	mov	r8, r0
	mov	r3, r8
	mov	r5, #0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r2, r8
	ldr	r6, [r2, #0x50]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r2, #0xc]
	mov	r3, r6
	add	r3, #0x27
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	mov	r5, r0
	mov	r0, #0xe0
	bl	__Func_1a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91dc8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xf0
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r1, #0xd2
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_921c4
	mov	r1, #0xa3
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xb9
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	ldr	r1, =.L1eac
	mov	r0, r8
	bl	__Func_c2d8
	mov	r0, r8
	bl	__Func_c4ec
	ldr	r1, =.L1ecc
	mov	r0, r8
	bl	__Func_c2d8
	mov	r0, r8
	bl	__Func_c4ec
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r8
	bl	__Func_c0f4
	mov	r0, #0x12
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x16
	bl	__Func_91e9c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13e4

.thumb_func_start OvlFunc_1544
	push	{r5, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L155c
	mov	r1, #7
	bl	__Func_c598
	b	.L1564
.L155c:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c598
.L1564:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L1576
	mov	r0, r5
	bl	OvlFunc_168c
.L1576:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1544

.thumb_func_start OvlFunc_1580
	push	{r5, r6, lr}
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L15a2
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_b50
	mov	r1, r0
	mov	r0, r6
	bl	__Func_c598
.L15a2:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L15b2
	mov	r0, r6
	bl	OvlFunc_168c
.L15b2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1580

.thumb_func_start OvlFunc_15bc
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =iwram_1e40
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L15de
	ldr	r0, [r0]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_b50
	mov	r1, r0
	mov	r0, r5
	bl	__Func_c598
.L15de:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15bc

.thumb_func_start OvlFunc_15e8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L1608
	mov	r0, r5
	bl	__Func_c0f4
	b	.L1632
.L1608:
	lsl	r0, #10
	bl	__Func_2322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L1632:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15e8

.thumb_func_start OvlFunc_1638
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L1658
	mov	r0, r5
	bl	__Func_c0f4
	b	.L1684
.L1658:
	lsl	r0, #10
	bl	__Func_2322
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L1684:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1638

.thumb_func_start OvlFunc_168c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	sub	sp, #8
	mov	r1, #0x3f
	mov	r6, r0
	mov	r11, r3
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L16ac:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L1758
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L16e0	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L1758
	b	.L16e8

	.align	2, 0
.L16e0:
	.word	0
	.pool

.L16e8:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_ba30
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_3f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L1750	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L1758

	.align	2, 0
.L1750:
	.word	0xfffffc00
	.pool

.L1758:
	add	r7, #1
	cmp	r7, #1
	ble	.L16ac
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_1638
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #8
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	mov	r3, r10
	ldr	r1, [r3, #4]
	ldr	r0, [r1, #0x50]
	ldrb	r3, [r0, #9]
	and	r2, r3
	ldr	r3, =OvlFunc_15e8
	orr	r2, r4
	str	r3, [r1, #0x6c]
	add	r1, #0x23
	mov	r3, #2
	strb	r2, [r0, #9]
	strb	r3, [r1]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_168c

.thumb_func_start OvlFunc_17a8
	push	{lr}
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_96fb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_17a8

.thumb_func_start OvlFunc_17b8
	push	{lr}
	bl	__Func_97194
	pop	{r0}
	bx	r0
.func_end OvlFunc_17b8

.thumb_func_start OvlFunc_17c4
	push	{lr}
	mov	r0, #8
	bl	__Func_92054
	bl	OvlFunc_1580
	pop	{r0}
	bx	r0
.func_end OvlFunc_17c4

.thumb_func_start OvlFunc_17d4
	push	{lr}
	mov	r0, #0x11
	bl	__Func_92054
	bl	OvlFunc_15bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_17d4

.thumb_func_start OvlFunc_17e4
	push	{lr}
	mov	r0, #0x94
	mov	r1, #1
	bl	__Func_96fb0
	mov	r1, #0x11
	mov	r0, #8
	bl	__Func_970f8
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	bl	__Func_97174
	bl	__Func_97194
	pop	{r0}
	bx	r0
.func_end OvlFunc_17e4

	.section .data

.L1ab4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ab4, (0x1b04-0x1ab4)
.L1b04:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b04, (0x1b34-0x1b04)
.L1b34:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b34, (0x1b78-0x1b34)
.L1b78:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b78, (0x1bb4-0x1b78)
.L1bb4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1bb4, (0x1c04-0x1bb4)
.L1c04:
	.incbin "overlays/rom_787e04/orig.bin", 0x1c04, (0x1c54-0x1c04)
.L1c54:
	.incbin "overlays/rom_787e04/orig.bin", 0x1c54, (0x1ca4-0x1c54)
.L1ca4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ca4, (0x1cec-0x1ca4)
.L1cec:
	.incbin "overlays/rom_787e04/orig.bin", 0x1cec, (0x1d38-0x1cec)
.L1d38:
	.incbin "overlays/rom_787e04/orig.bin", 0x1d38, (0x1e6c-0x1d38)
.L1e6c:
	.incbin "overlays/rom_787e04/orig.bin", 0x1e6c, (0x1eac-0x1e6c)
.L1eac:
	.incbin "overlays/rom_787e04/orig.bin", 0x1eac, (0x1ecc-0x1eac)
.L1ecc:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ecc, (0x1fd0-0x1ecc)
.L1fd0:
	.incbin "overlays/rom_787e04/orig.bin", 0x1fd0, (0x2198-0x1fd0)
.L2198:
	.incbin "overlays/rom_787e04/orig.bin", 0x2198, (0x21dc-0x2198)
.L21dc:
	.incbin "overlays/rom_787e04/orig.bin", 0x21dc, (0x2218-0x21dc)
.L2218:
	.incbin "overlays/rom_787e04/orig.bin", 0x2218, (0x2338-0x2218)
.L2338:
	.incbin "overlays/rom_787e04/orig.bin", 0x2338, (0x2410-0x2338)
.L2410:
	.incbin "overlays/rom_787e04/orig.bin", 0x2410, (0x2518-0x2410)
.L2518:
	.incbin "overlays/rom_787e04/orig.bin", 0x2518, (0x25a8-0x2518)
.L25a8:
	.incbin "overlays/rom_787e04/orig.bin", 0x25a8, (0x26b0-0x25a8)
.L26b0:
	.incbin "overlays/rom_787e04/orig.bin", 0x26b0, (0x2800-0x26b0)
.L2800:
	.incbin "overlays/rom_787e04/orig.bin", 0x2800, (0x2980-0x2800)
.L2980:
	.incbin "overlays/rom_787e04/orig.bin", 0x2980, (0x2b9c-0x2980)
.L2b9c:
	.incbin "overlays/rom_787e04/orig.bin", 0x2b9c, (0x2c5c-0x2b9c)
.L2c5c:
	.incbin "overlays/rom_787e04/orig.bin", 0x2c5c
