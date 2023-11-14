	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r4, =.L1938
	ldmia	r3!, {r1}
	ldr	r5, =.L1930
	ldr	r2, [r3]
	ldr	r3, [r4]
	sub	r1, r3
	ldr	r3, [r5]
	add	r3, r1
	str	r3, [r0, #8]
	ldr	r3, [r4, #4]
	sub	r2, r3
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r5, #4]
	asr	r2, #1
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, [r0, #0x50]
	mov	r1, #0xc0
	ldrh	r3, [r2, #0x1e]
	lsl	r1, #3
	add	r3, r1
	strh	r3, [r2, #0x1e]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_7c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_4458
	lsl	r0, #6
	lsr	r0, #16
	cmp	r0, #6
	bne	.L90
	mov	r3, #0xd0
	b	.L96
.L90:
	cmp	r0, #9
	bne	.L9a
	mov	r3, #0xb0
.L96:
	lsl	r3, #8
	strh	r3, [r5, #6]
.L9a:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_a4
	push	{lr}
	mov	r2, #0x80
	ldr	r3, [r0, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.Lba
	add	r3, #0xa0
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, #0xa0
	str	r3, [r0, #0x1c]
.Lba:
	pop	{r0}
	bx	r0
.func_end OvlFunc_a4

.thumb_func_start OvlFunc_c0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	cmp	r3, #9
	bne	.Ld6
	mov	r3, #0
	str	r3, [r5, #0x4c]
	b	.L10c
.Ld6:
	cmp	r3, #0
	beq	.Lf2
	bl	__Func_4458
	ldr	r3, [r5, #0x4c]
	lsl	r0, #11
	lsr	r0, #16
	ldr	r2, =0xffff4000
	sub	r3, r0
	str	r3, [r5, #0x4c]
	cmp	r3, r2
	bge	.L10c
	mov	r3, #0
	b	.L10a
.Lf2:
	bl	__Func_4458
	ldr	r3, [r5, #0x4c]
	lsl	r0, #11
	lsr	r0, #16
	mov	r1, #0xc0
	add	r3, r0
	lsl	r1, #8
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	ble	.L10c
	mov	r3, #1
.L10a:
	strh	r3, [r6]
.L10c:
	ldr	r1, =0xffd7ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x117fffe
	cmp	r3, r1
	bhi	.L11e
	ldr	r3, [r5, #0x4c]
	add	r3, r2, r3
	str	r3, [r5, #8]
.L11e:
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bne	.L130
	mov	r3, #0
	str	r3, [r5, #0xc]
	b	.L16c
.L130:
	cmp	r3, #0
	beq	.L14e
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	lsr	r3, #16
	sub	r2, r3
	str	r2, [r5, #0xc]
	cmp	r2, #0
	bge	.L16c
	mov	r3, #0
	b	.L16a
.L14e:
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	lsr	r3, #16
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #13
	str	r2, [r5, #0xc]
	cmp	r2, r3
	ble	.L16c
	mov	r3, #1
.L16a:
	strh	r3, [r6]
.L16c:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_c0

.thumb_func_start OvlFunc_180
	push	{lr}
	ldr	r1, [r0, #0x50]
	ldrb	r3, [r1, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x34]
	mov	r2, #0x80
	ldr	r3, [r0, #0x18]
	lsl	r2, #5
	cmp	r3, r2
	ble	.L1b0
	ldr	r2, =0xfffffc00
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.L1be
.L1b0:
	mov	r3, #0
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x10]
	str	r3, [r0, #0x24]
	str	r3, [r0, #0x28]
	str	r3, [r0, #0x2c]
.L1be:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_180

.thumb_func_start OvlFunc_1c8
	ldr	r0, =.L15c0
	bx	lr
.func_end OvlFunc_1c8

.thumb_func_start OvlFunc_1d0
	ldr	r0, =.L1680
	bx	lr
.func_end OvlFunc_1d0

.thumb_func_start OvlFunc_1d8
	ldr	r0, =.L16a0
	bx	lr
.func_end OvlFunc_1d8

.thumb_func_start OvlFunc_1e0
	ldr	r0, =.L16c4
	bx	lr
.func_end OvlFunc_1e0

.thumb_func_start OvlFunc_1e8
	ldr	r0, =.L188c
	bx	lr
.func_end OvlFunc_1e8

.thumb_func_start OvlFunc_1f0
	push	{lr}
	bl	__Func_93e28
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f0

.thumb_func_start OvlFunc_1fc
	push	{lr}
	ldr	r0, =0x923
	bl	__Func_79338
	cmp	r0, #0
	bne	.L212
	ldr	r0, =0x922
	bl	__Func_79338
	cmp	r0, #0
	beq	.L230
.L212:
	bl	__Func_916b0
	mov	r0, #0xe8
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, #0xe8
	bl	__Func_91a58
	ldr	r0, =0x924
	bl	__Func_79358
	bl	__Func_91750
.L230:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fc

.thumb_func_start OvlFunc_240
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	ldr	r2, =0x209
	add	r3, r0
	str	r2, [r3]
	ldr	r0, =0x927
	bl	__Func_79338
	cmp	r0, #0
	bne	.L26c
	ldr	r0, =0x928
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2a4
.L26c:
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2a4
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2a4
	ldr	r5, =.L1940
	bl	__Func_4458
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	ldr	r5, =.L1928
	bl	__Func_4458
	lsl	r0, #16
	lsr	r0, #16
	mov	r1, #0xc8
	str	r0, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_10a0
	bl	__Func_41d8
.L2a4:
	ldr	r0, =0x925
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2c6
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2c6
	mov	r1, #0xa4
	mov	r2, #0xa4
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
.L2c6:
	ldr	r1, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	sub	r3, #1
	cmp	r3, #0xd
	bhi	.L3d0
	ldr	r2, =.L2e0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2e0:
	.word	.L318
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L368
	.word	.L37e
	.word	.L398
	.word	.L3b2
	.word	.L3cc
.L318:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3d0
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	bl	__Func_93fa0
	mov	r3, #0xe0
	lsl	r3, #14
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	str	r3, [r5, #0xc]
	neg	r0, r0
	mov	r3, #0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91750
	b	.L3d0
.L368:
	ldr	r0, =0x928
	bl	__Func_79338
	cmp	r0, #0
	beq	.L378
	bl	OvlFunc_468
	b	.L3d0
.L378:
	bl	OvlFunc_40c
	b	.L3d0
.L37e:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_564
	b	.L3d0
.L398:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_7b0
	b	.L3d0
.L3b2:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_af8
	b	.L3d0
.L3cc:
	bl	OvlFunc_e78
.L3d0:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_240

.thumb_func_start OvlFunc_40c
	push	{lr}
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
	strb	r3, [r0]
	mov	r1, #0x80
	mov	r0, #0xa4
	lsl	r1, #15
	ldr	r2, =0x1410000
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	OvlFunc_4b0
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_40c

.thumb_func_start OvlFunc_468
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0xa4
	ldr	r2, =0x1410000
	mov	r0, #0
	lsl	r1, #16
	bl	__Func_923e4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	OvlFunc_4b0
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_468

.thumb_func_start OvlFunc_4b0
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #0xa4
	ldr	r2, =0x141
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0xa7
	mov	r0, #8
	mov	r1, #0xa4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #2
	mov	r0, #8
	bl	__Func_9259c
	ldr	r0, =0x1e3a
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xa
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_4b0

.thumb_func_start OvlFunc_564
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =iwram_1e70
	ldr	r3, [r1]
	mov	r8, r1
	ldr	r5, [r3]
	bl	__Func_916b0
	ldr	r0, =.L16f4
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	ldr	r1, =.L139c
	bl	__Func_9207c
	mov	r2, #0x4c
	add	r8, r2
	mov	r3, r8
	ldr	r2, [r3]
	mov	r1, #0xe0
	ldr	r3, =0x203
	lsl	r1, #1
	str	r3, [r2, r1]
	mov	r10, r1
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	ldmia	r5!, {r3}
	ldr	r2, =.L1938
	str	r3, [r2]
	ldr	r3, [r5]
	mov	r1, #0xa0
	str	r3, [r2, #4]
	mov	r2, #0xd2
	lsl	r2, #16
	lsl	r1, #15
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	mov	r5, #0xa0
	ldr	r3, =.L1930
	lsl	r5, #15
	mov	r6, #0
	add	r0, #0x55
	ldr	r1, =.L1314
	strb	r6, [r0]
	str	r5, [r3]
	str	r6, [r3, #4]
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x1d
	bl	__Func_f9080
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__Func_79358
	mov	r0, #8
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	ldr	r0, =0x1e3e
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0xd2
	mov	r1, r5
	mov	r0, #0xa
	lsl	r2, #16
	bl	__Func_923e4
	mov	r2, #0xd2
	mov	r1, r5
	mov	r0, #0xb
	lsl	r2, #16
	bl	__Func_923e4
	mov	r2, #0xd2
	lsl	r2, #16
	mov	r1, r5
	mov	r0, #0xc
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92950
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92950
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #0x80
	ldr	r6, =OvlFunc_a4
	lsl	r5, #8
	str	r5, [r0, #0x1c]
	str	r5, [r0, #0x18]
	str	r6, [r0, #0x6c]
	mov	r0, #0xb
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	str	r5, [r0, #0x18]
	str	r6, [r0, #0x6c]
	mov	r0, #0xc
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	str	r5, [r0, #0x18]
	str	r6, [r0, #0x6c]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xa
	ldr	r1, =0x851e
	ldr	r2, =0x428f
	bl	__Func_92064
	mov	r0, #0xb
	ldr	r1, =0x7333
	ldr	r2, =0x3999
	bl	__Func_92064
	mov	r0, #0xc
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #0x80
	ldr	r2, =0x159
	bl	__Func_92128
	mov	r2, #0xa5
	mov	r0, #0xb
	mov	r1, #0x88
	lsl	r2, #1
	bl	__Func_92128
	mov	r2, #0xaa
	lsl	r2, #1
	mov	r1, #0x9c
	mov	r0, #0xc
	bl	__Func_92128
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xac
	mov	r0, #8
	mov	r1, #0xa4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0xa
	bl	__Func_92560
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #6
	bl	__Func_92560
	mov	r0, #8
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, =0x202
	mov	r1, r10
	str	r3, [r2, r1]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xb
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_564

.thumb_func_start OvlFunc_7b0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	bl	__Func_916b0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =.L176c
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #9
	bl	OvlFunc_a84
	mov	r0, #0xa
	bl	OvlFunc_a84
	mov	r0, #0xb
	bl	OvlFunc_a84
	mov	r0, #0xc
	bl	OvlFunc_a84
	mov	r0, #0xd
	bl	OvlFunc_a84
	mov	r0, #0xe
	bl	OvlFunc_a84
	mov	r0, #0xf
	bl	OvlFunc_a84
	ldr	r2, =.L139c
	mov	r10, r2
	mov	r1, r10
	mov	r0, #8
	bl	__Func_9207c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #9
	bl	__Func_920a0
	mov	r3, #0x80
	mov	r6, #0
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x28]
	str	r6, [r5, #0x2c]
	str	r6, [r5, #0x4c]
	mov	r0, #0x14
	mov	r8, r3
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #12
	lsl	r2, #11
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r2, #0x90
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #16
	ldr	r3, =0x1410000
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0xa4
	mov	r2, #0xd0
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0xcc
	mov	r2, #0xf8
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0x90
	mov	r3, #0xa9
	lsl	r3, #16
	lsl	r1, #16
	mov	r2, #0
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, #8
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #8
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #10
	mov	r0, #9
	bl	__Func_92064
	mov	r0, #9
	bl	OvlFunc_a84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r10
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #9
	bl	__Func_920a0
	mov	r2, r8
	str	r2, [r5, #0x38]
	str	r2, [r5, #0x3c]
	str	r2, [r5, #0x40]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x28]
	str	r6, [r5, #0x2c]
	str	r6, [r5, #0x4c]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #12
	lsl	r2, #11
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r2, #0x90
	ldr	r3, =0x1410000
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #9
	lsl	r1, #11
	lsl	r2, #10
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r2, #0xd0
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0xa4
	mov	r2, #0xe4
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0xa4
	mov	r2, #0xd0
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0xcc
	mov	r2, #0xf8
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #15
	ldr	r3, =0x1410000
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r1, #0x90
	mov	r3, #0xa9
	lsl	r3, #16
	lsl	r1, #16
	mov	r2, #0
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, #8
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #8
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #9
	bl	__Func_92064
	mov	r0, #9
	bl	OvlFunc_a84
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_92560
	mov	r1, #6
	mov	r2, #0x28
	mov	r0, #8
	bl	__Func_92560
	mov	r0, #0x1d
	bl	__Func_f9080
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__Func_79358
	ldr	r0, =0x1e49
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0xac
	lsl	r2, #1
	mov	r1, #0xa4
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xc
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7b0

.thumb_func_start OvlFunc_a84
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_92054
	mov	r1, #1
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b08
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Func_4458
	mov	r3, r6
	add	r3, #0x64
	lsr	r0, #15
	strh	r0, [r3]
	bl	__Func_4458
	mov	r3, r6
	add	r3, #0x66
	lsr	r0, #15
	strh	r0, [r3]
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	mov	r2, #0xc0
	lsl	r2, #11
	lsl	r0, #16
	add	r0, r2
	str	r0, [r6, #0xc]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, =0xffffd000
	lsl	r3, #13
	lsr	r3, #16
	add	r3, r2
	str	r3, [r6, #0x4c]
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	ldr	r1, =.L13a4
	mov	r0, r5
	bl	__Func_9207c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a84

.thumb_func_start OvlFunc_af8
	push	{r5, r6, r7, lr}
	bl	__Func_916b0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =.L176c
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =.L1844
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #9
	bl	OvlFunc_a84
	mov	r0, #0xa
	bl	OvlFunc_a84
	mov	r0, #0xb
	bl	OvlFunc_a84
	mov	r0, #0xc
	bl	OvlFunc_a84
	mov	r0, #0xd
	bl	OvlFunc_a84
	mov	r0, #0xe
	bl	OvlFunc_a84
	mov	r0, #0xf
	bl	OvlFunc_a84
	ldr	r1, =.L139c
	mov	r0, #8
	bl	__Func_9207c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_9163c
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #9
	bl	__Func_920a0
	mov	r0, #0xa
	bl	__Func_920a0
	mov	r0, #0xb
	bl	__Func_920a0
	mov	r0, #0xc
	bl	__Func_920a0
	mov	r0, #0xd
	bl	__Func_920a0
	mov	r0, #0xe
	bl	__Func_920a0
	mov	r0, #0xf
	bl	__Func_920a0
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xb
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xd
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xe
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xf
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x64
	bl	__Func_92128
	mov	r0, #0xa
	mov	r1, #0x3c
	mov	r2, #0x64
	bl	__Func_92128
	mov	r0, #0xb
	mov	r1, #0x78
	mov	r2, #0x64
	bl	__Func_92128
	mov	r0, #0xc
	mov	r1, #0xb4
	mov	r2, #0x64
	bl	__Func_92128
	mov	r0, #0xd
	mov	r1, #0xf0
	mov	r2, #0x64
	bl	__Func_92128
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x64
	bl	__Func_92128
	mov	r1, #0xbe
	lsl	r1, #1
	mov	r2, #0x64
	mov	r0, #0xf
	bl	__Func_92128
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #8
	bl	__Func_937b8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
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
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_923e4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, =0x1999
	mov	r5, r0
	mov	r1, #0xac
	mov	r2, #0xaa
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, #0x12
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x1d
	bl	__Func_f9080
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__Func_79358
	ldr	r7, =0xccc
	mov	r6, #0
.Ld12:
	ldr	r3, [r5, #0x18]
	add	r3, r7
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r7
	str	r3, [r5, #0x1c]
	mov	r0, #1
	add	r6, #1
	bl	__Func_30f8
	cmp	r6, #0x1f
	bls	.Ld12
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xaa
	mov	r0, #8
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0xaa
	mov	r0, #8
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, =0x12666
	mov	r5, r0
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xac
	lsl	r3, #16
	str	r3, [r5, #8]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, #0xaa
	lsl	r3, #17
	str	r3, [r5, #0x10]
	mov	r3, #0
	strh	r3, [r5, #6]
	ldr	r3, =0x6666
	str	r3, [r5, #0x44]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x48]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #8
	bl	__Func_92560
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L13ac
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x11
	bl	__Func_92064
	ldr	r3, =0x1999
	str	r3, [r5, #0x44]
	ldr	r3, =0xb333
	mov	r0, #0x99
	str	r3, [r5, #0x48]
	bl	__Func_f9080
	mov	r3, #0x80
	lsl	r3, #12
	mov	r2, #0xb4
	str	r3, [r5, #0x28]
	mov	r0, #0x11
	mov	r1, #0x84
	lsl	r2, #1
	bl	__Func_92128
	mov	r2, #0xb4
	mov	r1, #0x84
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_92128
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r0, #0x28
	strh	r3, [r5, #6]
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xd
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_af8

.thumb_func_start OvlFunc_e78
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =.L176c
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #9
	bl	OvlFunc_a84
	mov	r0, #0xa
	bl	OvlFunc_a84
	mov	r0, #0xb
	bl	OvlFunc_a84
	mov	r0, #0xc
	bl	OvlFunc_a84
	mov	r0, #0xd
	bl	OvlFunc_a84
	mov	r0, #0xe
	bl	OvlFunc_a84
	mov	r0, #0xf
	bl	OvlFunc_a84
	ldr	r1, =.L139c
	mov	r0, #8
	bl	__Func_9207c
	ldr	r5, =iwram_1ebc
	ldr	r3, =0x203
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xc8
	lsl	r0, #1
	bl	__Func_9163c
	mov	r0, #9
	bl	__Func_920a0
	mov	r0, #0xa
	bl	__Func_920a0
	mov	r0, #0xb
	bl	__Func_920a0
	mov	r0, #0xc
	bl	__Func_920a0
	mov	r0, #0xd
	bl	__Func_920a0
	mov	r0, #0xe
	bl	__Func_920a0
	mov	r0, #0xf
	bl	__Func_920a0
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xb
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xd
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xe
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r0, #0xf
	lsl	r1, #10
	bl	__Func_92064
	ldr	r1, =.L1450
	mov	r0, #9
	bl	__Func_9207c
	ldr	r1, =.L1480
	mov	r0, #0xa
	bl	__Func_9207c
	ldr	r1, =.L14b0
	mov	r0, #0xb
	bl	__Func_9207c
	ldr	r1, =.L14e0
	mov	r0, #0xc
	bl	__Func_9207c
	ldr	r1, =.L1510
	mov	r0, #0xd
	bl	__Func_9207c
	ldr	r1, =.L1540
	mov	r0, #0xe
	bl	__Func_9207c
	ldr	r1, =.L1570
	mov	r0, #0xf
	bl	__Func_9207c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_93874
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xac
	mov	r0, #8
	mov	r1, #0xa4
	lsl	r2, #1
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0xa
	bl	__Func_92560
	mov	r1, #6
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_92560
	ldr	r0, =0x1ee4
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	ldr	r2, [r5]
	ldr	r3, =0x202
	str	r3, [r2, r6]
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r1, =ewram_240
	mov	r0, #0xe2
	ldr	r2, =0x6f
	lsl	r0, #1
	add	r3, r1, r0
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #2
	strh	r3, [r2]
	bl	OvlFunc_1130
	cmp	r0, #0xb
	bne	.L1054
	mov	r0, #0xf
	bl	__Func_91e9c
	b	.L105a
.L1054:
	mov	r0, #0xe
	bl	__Func_91e9c
.L105a:
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e78

.thumb_func_start OvlFunc_10a0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =iwram_1e70
	ldr	r6, =.L1940
	ldr	r3, [r3]
	ldr	r0, [r6]
	ldr	r5, [r3]
	bl	__Func_231c
	ldr	r2, =.L1928
	mov	r10, r0
	ldr	r0, [r2]
	mov	r8, r2
	bl	__Func_2322
	ldr	r3, [r5]
	add	r3, r10
	stmia	r5!, {r3}
	ldr	r3, [r5]
	lsl	r0, #2
	add	r3, r0
	str	r3, [r5]
	ldr	r2, =.L1924
	ldr	r3, [r2]
	add	r3, r10
	str	r3, [r2]
	ldr	r2, =.L1920
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, [r6]
	lsl	r3, #7
	lsr	r3, #16
	add	r2, r3
	str	r2, [r6]
	bl	__Func_4458
	mov	r2, r8
	ldr	r3, [r2]
	lsl	r0, #9
	ldrh	r2, [r6]
	lsr	r0, #16
	ldr	r1, =0xffff
	add	r3, r0
	str	r2, [r6]
	and	r3, r1
	mov	r2, r8
	str	r3, [r2]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10a0

.thumb_func_start OvlFunc_1130
	push	{r5, r6, lr}
	mov	r0, #0
	bl	OvlFunc_115c
	mov	r6, r0
	mov	r0, #2
	bl	OvlFunc_115c
	add	r6, r0
	mov	r0, #1
	bl	OvlFunc_115c
	mov	r5, r0
	mov	r0, #3
	bl	OvlFunc_115c
	add	r5, r0
	sub	r6, r5
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1130

.thumb_func_start OvlFunc_115c
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.L1176
	cmp	r0, #1
	bcc	.L1172
	cmp	r0, #2
	beq	.L117a
	cmp	r0, #3
	beq	.L1186
	b	.L118a
.L1172:
	ldr	r6, =0x92c
	b	.L118a
.L1176:
	ldr	r6, =0x935
	b	.L118a
.L117a:
	ldr	r6, =0x917
	b	.L118a
.L117e:
	ldr	r3, =.L18f8
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.L119e
.L1186:
	mov	r6, #0x99
	lsl	r6, #4
.L118a:
	mov	r5, #0
.L118c:
	add	r0, r6, r5
	bl	__Func_79338
	cmp	r0, #0
	bne	.L117e
	add	r5, #1
	cmp	r5, #8
	bls	.L118c
	mov	r0, #0
.L119e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_115c

	.section .data

.L1314:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1314, (0x139c-0x1314)
.L139c:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x139c, (0x13a4-0x139c)
.L13a4:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x13a4, (0x13ac-0x13a4)
.L13ac:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x13ac, (0x1450-0x13ac)
.L1450:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1450, (0x1480-0x1450)
.L1480:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1480, (0x14b0-0x1480)
.L14b0:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x14b0, (0x14e0-0x14b0)
.L14e0:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x14e0, (0x1510-0x14e0)
.L1510:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1510, (0x1540-0x1510)
.L1540:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1540, (0x1570-0x1540)
.L1570:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1570, (0x15c0-0x1570)
.L15c0:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x15c0, (0x1680-0x15c0)
.L1680:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1680, (0x16a0-0x1680)
.L16a0:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x16a0, (0x16c4-0x16a0)
.L16c4:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x16c4, (0x16f4-0x16c4)
.L16f4:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x16f4, (0x176c-0x16f4)
.L176c:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x176c, (0x1844-0x176c)
.L1844:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1844, (0x188c-0x1844)
.L188c:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x188c, (0x18f8-0x188c)
.L18f8:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x18f8

	.section .bss

	.lcomm	.L1920, 4
	.lcomm	.L1924, 4
	.lcomm	.L1928, 4
	.lcomm	.L1930, 8
	.lcomm	.L1938, 8
	.lcomm	.L1940, 4
