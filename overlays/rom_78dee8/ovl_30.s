	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L1d04
	b	.L54
.L48:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L1d64
	b	.L54
.L52:
	ldr	r0, =.L1cd4
.L54:
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_70
	mov	r0, #0
	bx	lr
.func_end OvlFunc_70

.thumb_func_start OvlFunc_74
	ldr	r0, =.L1f14
	bx	lr
.func_end OvlFunc_74

.thumb_func_start OvlFunc_7c
	push	{r5, lr}
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lba
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xb
	blt	.Lae
	cmp	r3, #0xd
	ble	.Laa
	cmp	r3, #0x10
	bgt	.Lae
	ldr	r0, =.L21b8
	b	.Lc6
.Laa:
	ldr	r0, =.L2050
	b	.Lc6
.Lae:
	ldr	r5, =.L1fd8
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
	b	.Lc6
.Lba:
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lc4
	ldr	r0, =.L22a8
	b	.Lc6
.Lc4:
	ldr	r0, =.L1fc0
.Lc6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_ec
	push	{lr}
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.L104
	ldr	r0, =.L22e4
	b	.L12e
.L104:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.L12c
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xb
	blt	.L128
	cmp	r3, #0xd
	ble	.L124
	cmp	r3, #0x10
	bgt	.L128
	ldr	r0, =.L2524
	b	.L12e
.L124:
	ldr	r0, =.L241c
	b	.L12e
.L128:
	ldr	r0, =.L232c
	b	.L12e
.L12c:
	ldr	r0, =.L22d8
.L12e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_ec

.thumb_func_start OvlFunc_154
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xb5
	bl	__Func_f9080
	mov	r5, #3
	mov	r6, #2
	mov	r1, #0x1c
	mov	r2, #0x15
	mov	r3, #3
	mov	r0, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r1, #0x1e
	mov	r2, #0x15
	mov	r3, #3
	mov	r0, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r3, #3
	mov	r2, #0x15
	mov	r1, #0x20
	mov	r0, #0x10
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0x62
	mov	r0, #0
	mov	r1, #0x78
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #2
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_154

.thumb_func_start OvlFunc_200
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x81a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L21a
	ldr	r0, =0x1034
	mov	r1, #1
	bl	__Func_1776c
	b	.L23a
.L21a:
	ldr	r0, =0x1031
	mov	r1, #1
	bl	__Func_1776c
	ldr	r0, =0xf01
	bl	__Func_79338
	cmp	r0, #0
	beq	.L23a
	ldr	r3, =iwram_1ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.L23a:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_200

.thumb_func_start OvlFunc_258
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r0, =0xf01
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L26c
	b	.L39c
.L26c:
	ldr	r0, =0x81a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L278
	b	.L39c
.L278:
	bl	__Func_916b0
	bl	__Func_8e118
	mov	r0, #0xb6
	bl	__Func_f9080
	mov	r5, #1
	mov	r2, #0x1e
	mov	r1, #0x46
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =0x1032
	mov	r8, r3
	mov	r1, #1
	mov	r0, r8
	bl	__Func_1776c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb7
	bl	__Func_f9080
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x51
	mov	r0, #1
	mov	r1, #0x6d
	mov	r2, #4
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0x28
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #1
	add	r8, r3
	mov	r1, #1
	mov	r0, r8
	bl	__Func_1776c
	ldr	r0, =0x143
	bl	__Func_79358
	ldr	r0, =0x81a
	bl	__Func_79358
	bl	__Func_91750
.L39c:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_258

.thumb_func_start OvlFunc_3bc
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x821
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3d6
	ldr	r0, =0x1034
	mov	r1, #1
	bl	__Func_1776c
	b	.L400
.L3d6:
	ldr	r0, =0xf02
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3f8
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x1031
	mov	r1, #1
	ldr	r5, [r3]
	bl	__Func_1776c
	mov	r3, #0xb9
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	b	.L400
.L3f8:
	ldr	r0, =0x1031
	mov	r1, #1
	bl	__Func_1776c
.L400:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3bc

.thumb_func_start OvlFunc_420
	push	{r5, r6, lr}
	ldr	r0, =0xf02
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L430
	b	.L54e
.L430:
	ldr	r0, =0x821
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43c
	b	.L54e
.L43c:
	bl	__Func_916b0
	bl	__Func_8e118
	mov	r0, #0xb6
	bl	__Func_f9080
	mov	r5, #1
	mov	r2, #0x64
	mov	r3, #0x47
	mov	r1, #0x47
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r6, =0x1032
	mov	r1, #1
	mov	r0, r6
	bl	__Func_1776c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb7
	bl	__Func_f9080
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #0x78
	mov	r3, #0x1e
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x78
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	bl	__Func_10704
	bl	__Func_fe9c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0x28
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_12330
	add	r6, #1
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, r6
	bl	__Func_1776c
	ldr	r0, =0x143
	bl	__Func_79358
	ldr	r0, =0x821
	bl	__Func_79358
	bl	__Func_91750
.L54e:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_420

.thumb_func_start OvlFunc_56c
	push	{r5, lr}
	mov	r0, #9
	bl	__Func_92054
	cmp	r0, #0
	beq	.L59e
	ldr	r3, [r0, #8]
	ldr	r0, =0x302
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x303
	bl	__Func_79374
	cmp	r5, #0x5d
	bne	.L594
	ldr	r0, =0x303
	bl	__Func_79358
	b	.L59e
.L594:
	cmp	r5, #0x5f
	bne	.L59e
	ldr	r0, =0x302
	bl	__Func_79358
.L59e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_56c

.thumb_func_start OvlFunc_5ac
	push	{r5, lr}
	mov	r0, #0xa
	bl	__Func_92054
	cmp	r0, #0
	beq	.L5e2
	ldr	r3, [r0, #8]
	mov	r0, #0xc0
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x301
	bl	__Func_79374
	cmp	r5, #0x73
	bne	.L5d8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	b	.L5e2
.L5d8:
	cmp	r5, #0x71
	bne	.L5e2
	ldr	r0, =0x301
	bl	__Func_79358
.L5e2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5ac

.thumb_func_start OvlFunc_5ec
	push	{r5, lr}
	mov	r0, #9
	bl	__Func_92054
	cmp	r0, #0
	beq	.L628
	ldr	r3, [r0, #8]
	mov	r0, #0xc4
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x311
	bl	__Func_79374
	cmp	r5, #0x63
	bne	.L616
	ldr	r0, =0x311
	bl	__Func_79358
	b	.L622
.L616:
	cmp	r5, #0x65
	bne	.L622
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79358
.L622:
	mov	r0, #0
	bl	OvlFunc_17c0
.L628:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5ec

.thumb_func_start OvlFunc_634
	push	{r5, lr}
	mov	r0, #0xa
	bl	__Func_92054
	cmp	r0, #0
	beq	.L66c
	ldr	r3, [r0, #8]
	ldr	r0, =0x312
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x313
	bl	__Func_79374
	cmp	r5, #0x67
	bne	.L65c
	ldr	r0, =0x313
	bl	__Func_79358
	b	.L666
.L65c:
	cmp	r5, #0x69
	bne	.L666
	ldr	r0, =0x312
	bl	__Func_79358
.L666:
	mov	r0, #0
	bl	OvlFunc_17c0
.L66c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_634

.thumb_func_start OvlFunc_67c
	push	{r5, lr}
	mov	r0, #0xb
	bl	__Func_92054
	cmp	r0, #0
	beq	.L6b8
	ldr	r3, [r0, #8]
	mov	r0, #0xc5
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x315
	bl	__Func_79374
	cmp	r5, #0x6b
	bne	.L6a6
	ldr	r0, =0x315
	bl	__Func_79358
	b	.L6b2
.L6a6:
	cmp	r5, #0x6d
	bne	.L6b2
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_79358
.L6b2:
	mov	r0, #0
	bl	OvlFunc_17c0
.L6b8:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_67c

.thumb_func_start OvlFunc_6c4
	push	{r5, lr}
	mov	r0, #0xc
	bl	__Func_92054
	cmp	r0, #0
	beq	.L6fc
	ldr	r3, [r0, #8]
	ldr	r0, =0x316
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x317
	bl	__Func_79374
	cmp	r5, #0x6f
	bne	.L6ec
	ldr	r0, =0x317
	bl	__Func_79358
	b	.L6f6
.L6ec:
	cmp	r5, #0x71
	bne	.L6f6
	ldr	r0, =0x316
	bl	__Func_79358
.L6f6:
	mov	r0, #0
	bl	OvlFunc_17c0
.L6fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6c4

.thumb_func_start OvlFunc_70c
	push	{r5, lr}
	mov	r0, #0xd
	bl	__Func_92054
	cmp	r0, #0
	beq	.L748
	ldr	r3, [r0, #8]
	mov	r0, #0xc6
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x319
	bl	__Func_79374
	cmp	r5, #0x73
	bne	.L736
	ldr	r0, =0x319
	bl	__Func_79358
	b	.L742
.L736:
	cmp	r5, #0x75
	bne	.L742
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__Func_79358
.L742:
	mov	r0, #0
	bl	OvlFunc_17c0
.L748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_70c

.thumb_func_start OvlFunc_754
	push	{r5, lr}
	mov	r0, #0xe
	bl	__Func_92054
	cmp	r0, #0
	beq	.L78c
	ldr	r3, [r0, #8]
	ldr	r0, =0x31a
	asr	r5, r3, #20
	bl	__Func_79374
	ldr	r0, =0x31b
	bl	__Func_79374
	cmp	r5, #0x77
	bne	.L77c
	ldr	r0, =0x31b
	bl	__Func_79358
	b	.L786
.L77c:
	cmp	r5, #0x79
	bne	.L786
	ldr	r0, =0x31a
	bl	__Func_79358
.L786:
	mov	r0, #0
	bl	OvlFunc_17c0
.L78c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_754

.thumb_func_start OvlFunc_79c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r2, r3
	mov	r5, r0
	mov	r4, #8
	add	r2, #0x34
.L7aa:
	ldmia	r2!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r5, r3
	bne	.L7bc
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r1, r3
	beq	.L7c4
.L7bc:
	add	r4, #1
	cmp	r4, #0x41
	bls	.L7aa
	mov	r0, #0
.L7c4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_79c

.thumb_func_start OvlFunc_7d0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	ldr	r2, =.L265c
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r3, [r2, r5]
	mov	r8, r0
	mov	r1, #0xa
	ldrsh	r0, [r0, r1]
	mov	r10, r2
	asr	r2, r3, #16
	add	r0, r2
	mov	r2, r8
	mov	r4, #0x12
	ldrsh	r1, [r2, r4]
	lsl	r3, #16
	asr	r3, #16
	add	r1, r3
	asr	r0, #4
	asr	r1, #4
	bl	OvlFunc_79c
	mov	r7, r0
	cmp	r7, #0
	beq	.L8d4
	mov	r3, #0
	mov	r2, r7
	add	r2, #0x22
	mov	r9, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r4, r10
	ldr	r1, [r4, r5]
	ldr	r2, =0xffff0000
	ldr	r3, [r7, #8]
	and	r2, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	cmp	r0, #0
	bgt	.L8d4
	mov	r1, #8
	mov	r0, r8
	bl	__Func_c300
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__Func_30f8
	mov	r0, #0xb9
	bl	__Func_f9080
	str	r5, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, r7
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Func_d14c
	mov	r1, r8
	str	r5, [r1, #0x30]
	str	r5, [r1, #0x34]
	mov	r0, r8
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Func_d14c
	mov	r0, r7
	bl	__Func_ca6c
	ldr	r3, [r6]
	str	r3, [r7, #8]
	ldr	r3, [r6, #8]
	mov	r2, r9
	str	r3, [r7, #0x10]
	mov	r1, #1
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x2c]
	mov	r0, r8
	bl	__Func_c300
	ldr	r3, =ewram_240
	mov	r4, #0xe1
	lsl	r4, #1
	add	r3, r4
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xb
	blt	.L8d4
	cmp	r3, #0xd
	ble	.L8b2
	cmp	r3, #0x10
	bgt	.L8d4
	b	.L8bc
.L8b2:
	bl	OvlFunc_56c
	bl	OvlFunc_5ac
	b	.L8d4
.L8bc:
	bl	OvlFunc_5ec
	bl	OvlFunc_634
	bl	OvlFunc_67c
	bl	OvlFunc_6c4
	bl	OvlFunc_70c
	bl	OvlFunc_754
.L8d4:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7d0

.thumb_func_start OvlFunc_8f4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.L90e
	bl	OvlFunc_92c
	b	.L918
.L90e:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.L918
	bl	OvlFunc_a24
.L918:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_8f4

.thumb_func_start OvlFunc_92c
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	sub	sp, #8
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r0, =0x814
	bl	__Func_79338
	cmp	r0, #0
	beq	.L960
	ldr	r3, =.L269c
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	ldr	r0, =OvlFunc_1ac8
	lsl	r1, #4
	bl	__Func_41d8
.L960:
	ldr	r0, =0x879
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9b2
	mov	r5, #6
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #6
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
.L9b2:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.La02
	mov	r1, #0xf0
	mov	r2, #0xe8
	mov	r0, #8
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r3, #6
	mov	r5, #0xe
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
.La02:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_92c

.thumb_func_start OvlFunc_a24
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r2, #0x81
	add	r3, r0
	lsl	r2, #2
	str	r2, [r3]
	ldr	r0, =0x814
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.La5c
	mov	r0, #0x8d
	bl	__Func_91ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	bl	__Func_9509c
.La5c:
	ldr	r1, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	sub	r3, #1
	cmp	r3, #0xf
	bls	.La70
	b	.Lcda
.La70:
	ldr	r2, =.La78
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La78:
	.word	.Lab8
	.word	.Lab8
	.word	.Lb10
	.word	.Lcda
	.word	.Lcda
	.word	.Lcda
	.word	.Lcda
	.word	.Lb1e
	.word	.Lcda
	.word	.Lcda
	.word	.Lb42
	.word	.Lb42
	.word	.Lb42
	.word	.Lc30
	.word	.Lc30
	.word	.Lc30
.Lab8:
	ldr	r0, =0x81a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lac4
	b	.Lcda
.Lac4:
	mov	r5, #1
	mov	r0, #1
	mov	r1, #0x6d
	mov	r2, #4
	mov	r3, #0x51
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0
	mov	r1, #0x46
	mov	r2, #0x1e
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	bl	__Func_fe9c
	b	.Lcda
.Lb10:
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	b	.Lcda
.Lb1e:
	mov	r0, #0x90
	ldr	r2, =0x10
	lsl	r0, #2
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r3, =0x242
	add	r2, r1, r3
	mov	r3, #8
	strh	r3, [r2]
	ldr	r0, =0x802
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb3c
	b	.Lcda
.Lb3c:
	bl	OvlFunc_d1c
	b	.Lcda
.Lb42:
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
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =0x804
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lbd4
	bl	OvlFunc_f8c
.Lbd4:
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbee
	mov	r1, #0xbb
	mov	r2, #0x88
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	b	.Lc06
.Lbee:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc06
	mov	r1, #0xbf
	mov	r2, #0x88
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
.Lc06:
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc14
	mov	r1, #0xe3
	b	.Lc22
.Lc14:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lcda
	mov	r1, #0xe7
.Lc22:
	mov	r2, #0x88
	mov	r0, #0xa
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	b	.Lcda
.Lc30:
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
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =0x825
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc86
	bl	OvlFunc_161c
.Lc86:
	mov	r0, #1
	bl	OvlFunc_17c0
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x821
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lcda
	mov	r5, #1
	mov	r0, #0
	mov	r1, #0x47
	mov	r2, #0x64
	mov	r3, #0x47
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #0x78
	mov	r3, #0x1e
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x78
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
	bl	__Func_fe9c
.Lcda:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a24

.thumb_func_start OvlFunc_d1c
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r5, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91dc8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	bl	__Func_933f8
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r0, #0x99
	mov	r1, #1
	mov	r2, #0x88
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Ld82
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__Func_923e4
.Ld82:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Ld96
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #5
	bl	__Func_923e4
.Ld96:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Ldaa
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.Ldaa:
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #5
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	ldr	r2, =0x4ccc
	mov	r0, #1
	ldr	r1, =0x9999
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #5
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0x20
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	__Func_9228c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #5
	bl	__Func_92adc
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92560
	ldr	r0, =0xfd3
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x4008
	bl	__Func_93054
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x99
	mov	r1, #1
	mov	r2, #0x94
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lec6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.Lec6:
	mov	r0, #5
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lee6
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_92128
.Lee6:
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lf06
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__Func_92128
.Lf06:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	ldr	r0, =0x802
	bl	__Func_79358
	ldr	r3, [r5]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x12f
	bl	__Func_79374
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d1c

.thumb_func_start OvlFunc_f8c
	push	{lr}
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lfae
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__Func_923e4
.Lfae:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lfc2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #5
	bl	__Func_923e4
.Lfc2:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lfd6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.Lfd6:
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #5
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	ldr	r2, =0x4ccc
	mov	r0, #1
	ldr	r1, =0x9999
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #5
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	__Func_9228c
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	__Func_9228c
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0x20
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	__Func_9228c
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x96
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	ldr	r0, =0x6310000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xc8
	ldr	r0, =0x6550000
	neg	r1, r1
	lsl	r2, #15
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #1
	mov	r2, #0xc8
	lsl	r2, #15
	mov	r3, #1
	ldr	r0, =0x6b60000
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xdb
	mov	r1, #1
	mov	r2, #0x96
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x80
	mov	r3, #1
	lsl	r2, #17
	ldr	r0, =0x6840000
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r1, =0x101
	mov	r2, #0x14
	mov	r0, #1
	bl	__Func_937b8
	ldr	r0, =0xfd6
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #5
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
	mov	r0, #5
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0
	mov	r1, #5
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #5
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_92560
	b	.L1400

	.pool_aligned

.L1400:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
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
	bne	.L1442
	ldr	r0, =0xfe0
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	b	.L14d8
.L1442:
	ldr	r0, =0xfe1
	bl	__Func_92b94
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
.L14d8:
	ldr	r2, =0x4ccc
	mov	r0, #8
	ldr	r1, =0x9999
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0x30
	mov	r1, #0
	mov	r0, #8
	bl	__Func_9228c
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #5
	bl	__Func_92adc
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1572
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1572:
	mov	r0, #5
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1592
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_92128
.L1592:
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L15b2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__Func_92128
.L15b2:
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #5
	bl	__Func_924d4
	ldr	r0, =0x804
	bl	__Func_79358
	ldr	r0, =0x12f
	bl	__Func_79374
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f8c

.thumb_func_start OvlFunc_161c
	push	{lr}
	bl	__Func_916b0
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1652
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__Func_923e4
.L1652:
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #8
	lsl	r1, #9
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0xa
	neg	r2, r2
	mov	r1, #0x18
	mov	r0, #8
	bl	__Func_9228c
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r0, #0xd1
	mov	r1, #1
	mov	r2, #0x83
	lsl	r2, #18
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r0, #0xeb
	mov	r1, #1
	mov	r2, #0x83
	lsl	r2, #18
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x89
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	ldr	r0, =0x6e90000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r2, #0x1e
	mov	r0, #8
	bl	__Func_92adc
	ldr	r0, =0x103a
	bl	__Func_92b94
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1776
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__Func_92128
.L1776:
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_923e4
	ldr	r0, =0x825
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_161c

.thumb_func_start OvlFunc_17c0
	push	{r5, r6, r7, lr}
	sub	sp, #8
	mov	r5, #0x20
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	mov	r6, r0
	mov	r7, #0x64
	mov	r0, #0x7a
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x68
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x6c
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x70
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x74
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x78
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x311
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1862
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	cmp	r6, #0
	beq	.L1890
	mov	r1, #0xc7
	mov	r2, #0x82
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
	b	.L1890
.L1862:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1890
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	cmp	r6, #0
	beq	.L1890
	mov	r1, #0xcb
	mov	r2, #0x82
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
.L1890:
	ldr	r0, =0x313
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18c2
	mov	r3, #0x68
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L18f2
	mov	r1, #0xcf
	mov	r2, #0x82
	mov	r0, #0xa
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
	b	.L18f2
.L18c2:
	ldr	r0, =0x312
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18f2
	mov	r3, #0x68
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L18f2
	mov	r1, #0xd3
	mov	r2, #0x82
	mov	r0, #0xa
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
.L18f2:
	ldr	r0, =0x315
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1924
	mov	r3, #0x6c
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L1956
	mov	r1, #0xd7
	mov	r2, #0x82
	mov	r0, #0xb
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
	b	.L1956
.L1924:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1956
	mov	r3, #0x6c
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L1956
	mov	r1, #0xdb
	mov	r2, #0x82
	mov	r0, #0xb
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
.L1956:
	ldr	r0, =0x317
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1988
	mov	r3, #0x70
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L19b8
	mov	r1, #0xdf
	mov	r2, #0x82
	mov	r0, #0xc
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
	b	.L19b8
.L1988:
	ldr	r0, =0x316
	bl	__Func_79338
	cmp	r0, #0
	beq	.L19b8
	mov	r3, #0x70
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L19b8
	mov	r1, #0xe3
	mov	r2, #0x82
	mov	r0, #0xc
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
.L19b8:
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	beq	.L19ea
	mov	r3, #0x74
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L1a1c
	mov	r1, #0xe7
	mov	r2, #0x82
	mov	r0, #0xd
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
	b	.L1a1c
.L19ea:
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a1c
	mov	r3, #0x74
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L1a1c
	mov	r1, #0xeb
	mov	r2, #0x82
	mov	r0, #0xd
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
.L1a1c:
	ldr	r0, =0x31b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a4e
	mov	r3, #0x78
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L1a7e
	mov	r1, #0xef
	mov	r2, #0x82
	mov	r0, #0xe
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
	b	.L1a7e
.L1a4e:
	ldr	r0, =0x31a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a7e
	mov	r3, #0x78
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.L1a7e
	mov	r1, #0xf3
	mov	r2, #0x82
	mov	r0, #0xe
	lsl	r1, #19
	lsl	r2, #18
	bl	__Func_923e4
.L1a7e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17c0

.thumb_func_start OvlFunc_1aac
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1aac

.thumb_func_start OvlFunc_1ac8
	push	{r5, lr}
	ldr	r5, =.L269c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L1aea
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0x28
	bne	.L1b14
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	b	.L1b14
.L1aea:
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	bne	.L1b14
	mov	r0, #0x8a
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r3, #0x50
	str	r3, [r5]
.L1b14:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ac8

	.section .data

.L1cd4:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1cd4, (0x1d04-0x1cd4)
.L1d04:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1d04, (0x1d64-0x1d04)
.L1d64:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1d64, (0x1f14-0x1d64)
.L1f14:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1f14, (0x1fc0-0x1f14)
.L1fc0:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1fc0, (0x1fd8-0x1fc0)
.L1fd8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1fd8, (0x2050-0x1fd8)
.L2050:
	.incbin "overlays/rom_78dee8/orig.bin", 0x2050, (0x21b8-0x2050)
.L21b8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x21b8, (0x22a8-0x21b8)
.L22a8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22a8, (0x22d8-0x22a8)
.L22d8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22d8, (0x22e4-0x22d8)
.L22e4:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22e4, (0x232c-0x22e4)
.L232c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x232c, (0x241c-0x232c)
.L241c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x241c, (0x2524-0x241c)
.L2524:
	.incbin "overlays/rom_78dee8/orig.bin", 0x2524, (0x265c-0x2524)
.L265c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x265c

	.section .bss

	.lcomm	.L269c, 4
