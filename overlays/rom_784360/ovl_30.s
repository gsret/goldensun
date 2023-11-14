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
	ldr	r0, =.L2fa0
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
	ldr	r0, =.L3144
	b	.La6
.La4:
	ldr	r0, =.L3108
.La6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_94

.thumb_func_start OvlFunc_b8
	push	{lr}
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc8
	ldr	r0, =.L3380
	b	.Lec
.Lc8:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	bne	.Ldc
	ldr	r0, =.L3560
	b	.Lec
.Ldc:
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lea
	ldr	r0, =.L37d0
	b	.Lec
.Lea:
	ldr	r0, =.L3170
.Lec:
	pop	{r1}
	bx	r1
.func_end OvlFunc_b8

.thumb_func_start OvlFunc_10c
	push	{lr}
	bl	__Func_916b0
	mov	r1, #1
	ldr	r0, =0x111f
	bl	__Func_1776c
	mov	r0, #0x7e
	bl	__Func_f9080
	mov	r1, #0
	ldr	r0, =0x3e7
	bl	__Func_8c2dc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	ldr	r0, =0x974
	bl	__Func_1776c
	bl	__Func_19a54
	mov	r0, #0xa1
	lsl	r0, #1
	bl	__Func_79374
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c

.thumb_func_start OvlFunc_158
	push	{lr}
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L168
	ldr	r0, =.L3cec
	b	.L19a
.L168:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L176
	ldr	r0, =.L3b3c
	b	.L19a
.L176:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	bne	.L18a
	ldr	r0, =.L3b30
	b	.L19a
.L18a:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L198
	ldr	r0, =.L3a64
	b	.L19a
.L198:
	ldr	r0, =.L3938
.L19a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_158

.thumb_func_start OvlFunc_1c4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0xf3c
	bl	__Func_92b94
	mov	r2, #2
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c4

.thumb_func_start OvlFunc_1f0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0xf3f
	bl	__Func_92b94
	mov	r2, #2
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f0

.thumb_func_start OvlFunc_21c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0xf44
	bl	__Func_92b94
	mov	r2, #2
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_21c

.thumb_func_start OvlFunc_248
	push	{r5, r6, r7, lr}
	bl	__Func_916b0
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2c0
	ldr	r5, =0x1197
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L27a
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L27a:
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L294
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L294:
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2b0
	add	r0, r5, #3
	bl	__Func_92b94
	b	.L2b6
.L2b0:
	add	r0, r5, #4
	bl	__Func_92b94
.L2b6:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92f84
	b	.L386
.L2c0:
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	ldr	r0, =0xf48
	ldr	r6, [r3]
	bl	__Func_92b94
	mov	r2, #0
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_93054
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_9259c
	mov	r0, #0xf
	bl	__Func_9163c
	bl	OvlFunc_2564
	mov	r7, #0
	mov	r5, #0
.L2fa:
	mov	r0, #0x11
	bl	__Func_92054
	bl	OvlFunc_22f8
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L2fa
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2590
	bl	__Func_41d8
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r5, #0
.L322:
	mov	r0, r5
	mov	r1, #0xa
	bl	_Func_b50
	cmp	r0, #0
	bne	.L348
	mov	r3, #1
	and	r3, r7
	cmp	r3, #0
	beq	.L33c
	ldr	r3, [r6]
	ldr	r2, =0xffff0000
	b	.L342
.L33c:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #9
.L342:
	add	r3, r2
	str	r3, [r6]
	add	r7, #1
.L348:
	mov	r0, #1
	add	r5, #1
	bl	__Func_9163c
	cmp	r5, #0xb4
	bne	.L322
	ldr	r0, =0x121
	bl	__Func_f9080
	ldr	r0, =OvlFunc_2590
	bl	__Func_4278
	mov	r0, #1
	bl	__Func_30f8
	bl	OvlFunc_2574
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_92950
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0xf4b
	bl	__Func_92b94
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92f84
.L386:
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_248

.thumb_func_start OvlFunc_3b4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3fc
	ldr	r0, =0x1be8
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L3e8
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	b	.L424
.L3e8:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xf
	b	.L40e
.L3fc:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L416
	ldr	r0, =0x1191
	bl	__Func_92b94
	mov	r0, #0xb
.L40e:
	mov	r1, #0
	bl	__Func_93054
	b	.L424
.L416:
	ldr	r0, =0xea8
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93054
.L424:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3b4

.thumb_func_start OvlFunc_444
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x1a
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_9280c
	mov	r2, #0x28
	mov	r1, #0x15
	mov	r0, #0x1a
	bl	__Func_9280c
	ldr	r0, =0x11c7
	bl	__Func_92b94
	mov	r0, #0x1a
	mov	r1, #0x14
	bl	OvlFunc_22c8
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x88
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1510000
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r0, #0x1a
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0x1a
	mov	r1, #0x28
	bl	OvlFunc_22c8
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_9207c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_444

.thumb_func_start OvlFunc_4d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	bl	__Func_916b0
	mov	r2, #0xbe
	mov	r0, #0
	mov	r1, #0x52
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x1e
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92848
	ldr	r0, =0xeae
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #0x14
	bl	OvlFunc_22c8
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0xf
	bl	OvlFunc_22e0
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xf
	bl	__Func_93874
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_2564
	mov	r5, #0
.L524:
	mov	r0, #0xf
	bl	__Func_92054
	bl	OvlFunc_22f8
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L524
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2580
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_25a0
	bl	__Func_41d8
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_92054
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r2, [r7]
	mov	r3, #0
	strb	r3, [r7]
	mov	r8, r2
	mov	r5, #0
.L570:
	ldr	r3, [r6, #0xc]
	mov	r2, #0xc0
	lsl	r2, #5
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L570
	mov	r3, r8
	strb	r3, [r7]
	ldr	r0, =OvlFunc_2580
	bl	__Func_4278
	ldr	r0, =OvlFunc_25a0
	bl	__Func_4278
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92950
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92950
	mov	r0, #0x28
	bl	__Func_9163c
	bl	OvlFunc_2574
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_92848
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d4

.thumb_func_start OvlFunc_5e8
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92848
	mov	r0, #0x84
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L614
	ldr	r0, =0xeb1
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
	b	.L622
.L614:
	ldr	r0, =0xeb0
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
.L622:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5e8

.thumb_func_start OvlFunc_634
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.L64c
	ldr	r0, =0x1be4
	bl	__Func_92b94
	b	.L658
.L64c:
	ldr	r0, =0x1be3
	bl	__Func_92b94
	ldr	r0, =0x302
	bl	__Func_79358
.L658:
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_634

.thumb_func_start OvlFunc_674
	push	{r5, lr}
	mov	r0, #0x15
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x15
	bl	__Func_920a0
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_937b8
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r5, #6]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_9259c
	ldr	r0, =0x1c94
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	ldr	r0, =0x306
	bl	__Func_79358
	mov	r0, #0x15
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	ldr	r1, =.L2e34
	mov	r0, #0x15
	bl	__Func_9207c
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_674

.thumb_func_start OvlFunc_714
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L726
	bl	__Func_95214
.L726:
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r0, r5
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_714

.thumb_func_start OvlFunc_750
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L3eb4
	mov	r1, #0x2c
	mov	r2, #7
	bl	__Func_10560
	mov	r0, #0
	mov	r1, #0xf8
	ldr	r2, =0x117
	bl	__Func_9218c
	mov	r0, #1
	bl	OvlFunc_714
	pop	{r0}
	bx	r0
.func_end OvlFunc_750

.thumb_func_start OvlFunc_780
	push	{r5, lr}
	mov	r0, #0xbc
	sub	sp, #8
	bl	__Func_f9080
	mov	r5, #2
	mov	r1, #0x3f
	mov	r2, #0x33
	mov	r3, #8
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r3, #8
	mov	r1, #0x3f
	mov	r2, #0x33
	mov	r0, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r1, #0xb0
	mov	r2, #0x99
	lsl	r2, #1
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #0xb0
	mov	r2, #0x94
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #2
	bl	OvlFunc_714
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_780

.thumb_func_start OvlFunc_7ec
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L3eb4
	mov	r1, #0x2b
	mov	r2, #0xf
	bl	__Func_10560
	mov	r0, #0
	mov	r1, #0xe6
	ldr	r2, =0x197
	bl	__Func_9218c
	mov	r0, #3
	bl	OvlFunc_714
	pop	{r0}
	bx	r0
.func_end OvlFunc_7ec

.thumb_func_start OvlFunc_81c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L3eb4
	mov	r1, #0x34
	mov	r2, #0x12
	bl	__Func_10560
	mov	r1, #0xbb
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x1a3
	bl	__Func_9218c
	mov	r0, #4
	bl	OvlFunc_714
	pop	{r0}
	bx	r0
.func_end OvlFunc_81c

.thumb_func_start OvlFunc_84c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L3eb4
	mov	r1, #0x29
	mov	r2, #0x20
	bl	__Func_10560
	mov	r0, #0
	mov	r1, #0xc8
	ldr	r2, =0x222
	bl	__Func_9218c
	mov	r0, #5
	bl	OvlFunc_714
	pop	{r0}
	bx	r0
.func_end OvlFunc_84c

.thumb_func_start OvlFunc_87c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L3eb4
	mov	r1, #0x23
	mov	r2, #0x24
	bl	__Func_10560
	mov	r0, #0
	mov	r1, #0x66
	ldr	r2, =0x263
	bl	__Func_9218c
	mov	r0, #6
	bl	OvlFunc_714
	pop	{r0}
	bx	r0
.func_end OvlFunc_87c

.thumb_func_start OvlFunc_8ac
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L3eb4
	mov	r1, #0x33
	mov	r2, #0x27
	bl	__Func_10560
	mov	r1, #0xb3
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x29e
	bl	__Func_9218c
	mov	r0, #7
	bl	OvlFunc_714
	pop	{r0}
	bx	r0
.func_end OvlFunc_8ac

.thumb_func_start OvlFunc_8dc
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #8
	bl	OvlFunc_714
	pop	{r0}
	bx	r0
.func_end OvlFunc_8dc

.thumb_func_start OvlFunc_8f0
	push	{lr}
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L908
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #0xa
	bl	OvlFunc_714
.L908:
	pop	{r0}
	bx	r0
.func_end OvlFunc_8f0

.thumb_func_start OvlFunc_910
	push	{lr}
	ldr	r0, =0x90b
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_910

.thumb_func_start OvlFunc_920
	push	{lr}
	ldr	r0, =0x90c
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_920

.thumb_func_start OvlFunc_930
	push	{lr}
	ldr	r0, =0x90d
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_930

.thumb_func_start OvlFunc_940
	push	{r5, lr}
	ldr	r0, =0x90b
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L958
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L958:
	ldr	r0, =0x90c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L96c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L96c:
	ldr	r0, =0x90d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L980
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L980:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x62
	beq	.L9a2
	cmp	r3, #0x62
	bgt	.L99c
	cmp	r3, #0x61
	bne	.L99a
	b	.Lb4a
.L99a:
	b	.L9b6
.L99c:
	cmp	r3, #0x63
	beq	.L9b0
	b	.L9b6
.L9a2:
	mov	r0, #0x20
	bl	__Func_79358
	mov	r0, #0x32
	bl	__Func_91e9c
	b	.Lb80
.L9b0:
	bl	OvlFunc_25b0
	b	.Lb80
.L9b6:
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0xc0
	lsl	r5, #9
	str	r5, [r0, #0x1c]
	mov	r0, #9
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	mov	r0, #0xa
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.La0e
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x61
	mov	r1, #2
	mov	r2, #0x50
	mov	r3, #5
	bl	__Func_10424
	mov	r3, #3
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x35
	mov	r2, #0x2a
	mov	r3, #0x36
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.Lb80
.La0e:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.La62
	bl	__Func_94ac8
	bl	__Func_95160
	mov	r3, #0x12
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x84
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.Laaa
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0x80
	ldr	r2, =.L2c00
	mov	r0, #0x13
	lsl	r1, #9
	bl	__Func_92a1c
	b	.Laaa
.La62:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.Laaa
	mov	r1, #0xb4
	mov	r2, #0x8e
	mov	r0, #0x10
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x5c
	mov	r1, #2
	mov	r2, #0x50
	mov	r3, #5
	bl	__Func_10424
	mov	r3, #3
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x35
	mov	r2, #0x2a
	mov	r3, #0x36
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
.Laaa:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	bne	.Lac0
	bl	OvlFunc_17c8
	b	.Lb80
.Lac0:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.Laf8
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, =0x4ccc
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r3, =0x9999
	mov	r1, #5
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0xd
	bl	__Func_924d4
	b	.Lb1a
.Laf8:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb1a
	mov	r2, #0xf9
	ldr	r1, =0x14b0000
	mov	r0, #0x15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.Lb1a:
	mov	r0, #0x84
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb3a
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.Lb3a:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.Lb50
.Lb4a:
	bl	OvlFunc_15b4
	b	.Lb80
.Lb50:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb6a
	ldr	r0, =0x842
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb6a
	bl	OvlFunc_1084
	b	.Lb80
.Lb6a:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb80
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	__Func_95268
.Lb80:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_940

.thumb_func_start OvlFunc_bbc
	push	{r5, r6, lr}
	ldr	r0, =0x834
	mov	r6, #0
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lbcc
	b	.L1054
.Lbcc:
	mov	r0, #0x84
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbda
	b	.L1054
.Lbda:
	bl	__Func_916b0
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r0, #0xc5
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0xeb6
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x4013
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x19
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xb3
	ldr	r2, =0x315
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lc4e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x19
	bl	__Func_923e4
.Lc4e:
	mov	r2, #0xc9
	mov	r0, #0x19
	mov	r1, #0xb3
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0x19
	mov	r2, #0x28
	bl	__Func_92848
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0x11
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_9259c
	mov	r2, #0xa
	ldr	r0, =0x4011
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x4013
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0x11
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	ldr	r2, =0xcccc
	mov	r0, #0x12
	ldr	r1, =0x19999
	bl	__Func_92064
	ldr	r5, =.L2ef0
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r1, =.L2f50
	mov	r0, #0
	bl	__Func_9207c
	ldr	r1, =.L2f78
	mov	r0, #0x19
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0x1a
	bl	OvlFunc_22e0
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1a
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	ldr	r0, =0x4013
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.Ldec
	mov	r0, #0x13
	mov	r1, #4
	mov	r6, #1
	bl	__Func_924d4
	b	.Le04

	.pool_aligned

.Ldec:
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_924d4
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Le04:
	ldr	r0, =0x4013
	mov	r1, #0
	bl	__Func_92f84
	cmp	r6, #0
	beq	.Le20
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Le20:
	mov	r5, #0x80
	lsl	r5, #7
	mov	r1, r5
	mov	r2, #0x1e
	mov	r0, #0x16
	bl	OvlFunc_22e0
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x1a
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r0, #0x13
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x1a
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r6, #0xe0
	mov	r1, #0xe0
	lsl	r6, #8
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r6
	mov	r2, #0xa
	mov	r0, #0x19
	bl	OvlFunc_22e0
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_933d4
	mov	r0, #0xd7
	mov	r1, #1
	ldr	r2, =0x2f60000
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0xcd
	mov	r1, #1
	mov	r3, #1
	ldr	r2, =0x30a0000
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_933f8
	ldr	r1, =.L2874
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r0, #0x16
	bl	__Func_920e8
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #6
	mov	r0, #0x16
	bl	OvlFunc_22e0
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x13
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x16
	mov	r1, #0x14
	bl	OvlFunc_22c8
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r5
	mov	r2, #0x1e
	mov	r0, #0x13
	add	r5, #0x13
	bl	OvlFunc_22e0
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, r6
	mov	r2, #0x1e
	mov	r0, #0x1a
	mov	r6, #0x80
	bl	OvlFunc_22e0
	lsl	r6, #8
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x1e
	mov	r0, #0x13
	mov	r1, r6
	bl	OvlFunc_22e0
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r0, #0
	mov	r1, #0x19
	mov	r2, #0x28
	bl	__Func_92848
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r2, #0x1e
	mov	r0, #0x1a
	mov	r1, r6
	bl	OvlFunc_22e0
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x1a
	mov	r1, #0x1e
	bl	OvlFunc_22c8
	mov	r1, #0xc0
	mov	r2, #0x1e
	lsl	r1, #8
	mov	r0, #0x1a
	bl	OvlFunc_22e0
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lfcc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x19
	bl	__Func_92128
.Lfcc:
	mov	r0, #0x19
	bl	__Func_923c4
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lffc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x1a
	bl	__Func_92128
.Lffc:
	mov	r0, #0x1a
	bl	__Func_923c4
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L102c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__Func_92128
.L102c:
	mov	r0, #0x16
	bl	__Func_923c4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0x80
	ldr	r2, =.L2c00
	mov	r0, #0x13
	lsl	r1, #9
	bl	__Func_92a1c
	mov	r0, #0x84
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
.L1054:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_bbc

.thumb_func_start OvlFunc_1084
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__Func_93554
	mov	r5, r0
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
	mov	r0, #0x80
	mov	r1, #0x90
	mov	r2, #0xaf
	mov	r3, #0
	lsl	r2, #17
	lsl	r1, #16
	lsl	r0, #15
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_917d0
	bl	__Func_91dc8
	mov	r0, #0x11
	bl	__Func_f9080
	bl	__Func_95268
	mov	r1, #0xd2
	lsl	r1, #15
	ldr	r2, =0x10b0000
	mov	r0, #0x17
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	ldr	r2, =0x157
	mov	r1, #0x5d
	mov	r0, #0
	bl	__Func_921c4
	ldr	r0, =0xed6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_92f84
	mov	r0, #0x3d
	bl	__Func_f9080
	add	r5, #0x55
	mov	r3, #0
	mov	r0, #0xc0
	mov	r1, #0xc0
	strb	r3, [r5]
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xda
	mov	r1, #0xb0
	mov	r3, #1
	lsl	r1, #16
	ldr	r2, =0x1190000
	lsl	r0, #15
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x87
	mov	r2, #0xb1
	mov	r0, #0x18
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #0x18
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x81
	mov	r1, #0x7e
	lsl	r2, #1
	mov	r0, #0x18
	bl	__Func_9218c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x17
	bl	__Func_92adc
	mov	r0, #0x18
	bl	__Func_923c4
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xe0
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #0x18
	bl	OvlFunc_22e0
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x18
	mov	r1, #4
	bl	__Func_92548
	ldr	r6, =0x8017
	ldr	r0, =0x2018
	mov	r1, #0
	bl	__Func_92f84
	mov	r5, #0xb0
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_925cc
	lsl	r5, #8
	mov	r0, r6
	mov	r1, #0x1e
	bl	OvlFunc_22c8
	mov	r1, r5
	mov	r2, #0x14
	mov	r0, #0x18
	bl	OvlFunc_22e0
	ldr	r3, =0x2018
	mov	r8, r3
	mov	r0, r8
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x17
	bl	OvlFunc_22e0
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x18
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xf0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #0x17
	bl	OvlFunc_22e0
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0x18
	bl	OvlFunc_22e0
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r8
	mov	r1, #0x14
	bl	OvlFunc_22c8
	bl	OvlFunc_1274
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1084

.thumb_func_start OvlFunc_1274
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0xf
	mov	r0, #0x19
	bl	__Func_92950
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r2, =0x14b0000
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x1019
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0x17
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa0
	lsl	r2, #7
	mov	r8, r2
	mov	r1, r8
	mov	r2, #0x28
	mov	r0, #0x18
	bl	OvlFunc_22e0
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xb2
	mov	r1, #0xb0
	mov	r3, #1
	lsl	r1, #16
	ldr	r2, =0x1390000
	lsl	r0, #15
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0x28
	lsl	r1, #7
	mov	r0, #0x18
	bl	OvlFunc_22e0
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0xc8
	mov	r1, #0x90
	mov	r3, #1
	lsl	r0, #15
	lsl	r1, #16
	ldr	r2, =0x14d0000
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x17
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x18
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x69
	ldr	r2, =0x149
	mov	r0, #0x17
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, =0x149
	mov	r1, #0x7c
	mov	r0, #0x18
	bl	__Func_9218c
	mov	r0, #0x17
	bl	__Func_923c4
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, r8
	mov	r2, #0
	mov	r0, #0x17
	bl	__Func_92adc
	mov	r0, #0x18
	bl	__Func_923c4
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, r8
	mov	r0, #0x18
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92950
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x19
	mov	r1, #0
	ldr	r2, =0x14b0000
	bl	__Func_923e4
	mov	r0, #0x19
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	ldr	r2, =0x153
	mov	r1, #0x25
	mov	r0, #0x19
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_92548
	mov	r5, #0xd0
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_92c40
	lsl	r5, #8
	mov	r0, #0x19
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0xa
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_22e0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	mov	r6, #0x80
	mov	r0, #0x28
	bl	__Func_9163c
	lsl	r6, #8
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x18
	bl	OvlFunc_22e0
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x1019
	mov	r1, #0xa
	bl	OvlFunc_22c8
	ldr	r2, =.L2c00
	mov	r0, #0
	ldr	r1, =0x10019
	bl	__Func_92a1c
	mov	r0, #0x19
	mov	r1, #0x5d
	ldr	r2, =0x169
	bl	__Func_921c4
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x19
	bl	OvlFunc_22e0
	mov	r1, #0x14
	mov	r0, #0x19
	bl	OvlFunc_22c8
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xf
	mov	r1, r6
	mov	r0, #0x18
	bl	OvlFunc_22e0
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_92548
	mov	r1, r8
	mov	r0, #0x17
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x1e
	mov	r1, r8
	mov	r0, #0x18
	bl	OvlFunc_22e0
	mov	r0, #0x18
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x2018
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0x1e
	bl	OvlFunc_22e0
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_22e0
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x17
	mov	r1, #0x14
	bl	OvlFunc_22c8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x19
	bl	__Func_93874
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r1, =.L28e8
	mov	r0, #0x18
	bl	__Func_9207c
	mov	r0, #6
	bl	__Func_9163c
	ldr	r1, =.L2940
	mov	r0, #0x17
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L2998
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #6
	bl	__Func_9163c
	ldr	r1, =.L29f0
	mov	r0, #0x19
	bl	__Func_920fc
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #2
	strb	r2, [r3]
	ldr	r5, =5
	mov	r1, #0x13
	mov	r0, r5
	bl	__Func_91f90
	mov	r0, r5
	mov	r1, #0x13
	bl	__Func_91fa8
	mov	r0, #0xc
	mov	r1, #4
	bl	__Func_91eb0
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1274

.thumb_func_start OvlFunc_15b4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x11
	bl	__Func_f9080
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
	mov	r0, #0x80
	mov	r1, #0x90
	mov	r2, #0xaf
	mov	r3, #0
	lsl	r1, #16
	lsl	r2, #17
	lsl	r0, #15
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xc0
	mov	r2, #0xad
	mov	r0, #0
	lsl	r1, #14
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x9c
	mov	r2, #0xb3
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xce
	mov	r2, #0xab
	mov	r0, #0x17
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xe0
	mov	r2, #0xb4
	mov	r0, #0x18
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x18
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x10
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #7
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0x19
	bl	__Func_92054
	ldr	r3, =0x1555
	ldr	r2, [r0, #0x50]
	mov	r0, #0x19
	strh	r3, [r2, #0x1e]
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r2, =iwram_1ebc
	mov	r8, r2
	ldr	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_95268
	bl	__Func_91e20
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0x17
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x18
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x17
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x18
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_92b08
	ldr	r2, =0x13333
	ldr	r1, =0x26666
	mov	r0, #0x17
	bl	__Func_92064
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r6, =0x28f
	mov	r5, #0x80
	lsl	r5, #8
	str	r6, [r0, #0x44]
	str	r5, [r0, #0x48]
	ldr	r1, =.L2a48
	mov	r0, #0x17
	bl	__Func_9207c
	mov	r0, #0x18
	bl	__Func_9163c
	ldr	r2, =0x13333
	ldr	r1, =0x26666
	mov	r0, #0x18
	bl	__Func_92064
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r1, =.L2b2c
	str	r6, [r0, #0x44]
	str	r5, [r0, #0x48]
	mov	r0, #0x18
	bl	__Func_920fc
	mov	r0, #0x28
	bl	__Func_9163c
	bl	__Func_95214
	bl	__Func_95240
	mov	r0, #0x14
	bl	__Func_30f8
	bl	__Func_95240
	mov	r0, #0x3c
	bl	__Func_30f8
	bl	__Func_95240
	mov	r0, #0x14
	bl	__Func_30f8
	bl	__Func_95214
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x78
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x834
	bl	__Func_79374
	mov	r0, #9
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15b4

.thumb_func_start OvlFunc_17c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #1
	sub	sp, #8
	bl	__Func_7808c
	bl	__Func_916b0
	mov	r3, #3
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x35
	mov	r2, #0x2a
	mov	r3, #0x36
	bl	__Func_10424
	mov	r0, #0xb4
	mov	r1, #0x80
	mov	r3, #0
	ldr	r2, =0x26a0000
	lsl	r1, #13
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
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
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1d
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #0xd0
	lsl	r1, #16
	ldr	r2, =0x32e0000
	mov	r0, #0
	bl	__Func_923e4
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r3, #0xe0
	lsl	r3, #7
	mov	r8, r3
	mov	r2, #0x14
	mov	r1, r8
	mov	r0, #0xc
	bl	OvlFunc_22e0
	ldr	r0, =0x11fa
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r3, #0x80
	lsl	r3, #5
	mov	r11, r3
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, r11
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r7, #0xc0
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	lsl	r7, #6
	bl	__Func_92064
	mov	r0, #0xc
	mov	r1, #0xb8
	ldr	r2, =0x26a
	bl	__Func_921c4
	mov	r2, #0x3c
	mov	r0, #0xc
	mov	r1, r7
	bl	OvlFunc_22e0
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_22c8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0xb
	mov	r1, #0xa8
	ldr	r2, =0x26a
	bl	__Func_921c4
	mov	r1, #0xf0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #8
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_22c8
	mov	r2, #0xa
	mov	r0, #0xc
	mov	r1, r8
	bl	OvlFunc_22e0
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x1e
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r2, #0xba
	lsl	r2, #18
	lsl	r1, #15
	mov	r0, #0x1e
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x1e
	mov	r1, #3
	bl	__Func_924d4
	ldr	r1, =.L2c14
	mov	r0, #0x1e
	bl	__Func_9207c
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r5, =.L2c00
	mov	r0, #0xb
	ldr	r1, =0x1001e
	mov	r2, r5
	bl	__Func_92a1c
	ldr	r1, =0x1001e
	mov	r2, r5
	mov	r0, #0xc
	bl	__Func_92a1c
	mov	r0, #0x1e
	bl	__Func_920e8
	mov	r0, #0xb
	bl	__Func_920a0
	mov	r0, #0xc
	bl	__Func_920a0
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xb
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0xc
	ldr	r1, =0x105
	mov	r2, #0x78
	bl	__Func_937b8
	mov	r0, #0xb
	mov	r1, r11
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, r8
	mov	r2, #0x50
	bl	OvlFunc_22e0
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r9, r3
	mov	r0, #0xb
	mov	r1, r9
	mov	r2, #0x28
	bl	OvlFunc_22e0
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, r11
	bl	OvlFunc_22e0
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, r9
	mov	r2, #0x3c
	bl	OvlFunc_22e0
	mov	r0, #0xc
	mov	r1, r7
	mov	r2, #0x28
	bl	OvlFunc_22e0
	mov	r0, #0xc
	mov	r1, r9
	mov	r2, #0x3c
	bl	OvlFunc_22e0
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r0, #0xb
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb8
	ldr	r2, =0x276
	mov	r0, #0xc
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, r7
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r0, #0xc
	mov	r1, r9
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r0, #0xc
	mov	r1, r7
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xa8
	ldr	r2, =0x276
	mov	r0, #0xb
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, r7
	mov	r2, #0x28
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, r9
	mov	r2, #0x28
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, r7
	mov	r2, #0x28
	bl	OvlFunc_22e0
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, r11
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_22c8
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r0, #0xb
	mov	r1, r9
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, r7
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, r9
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r2, #0x3c
	mov	r0, #0xb
	mov	r1, r9
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r0, #0x1e
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b66
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x1f
	bl	__Func_923e4
.L1b66:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x1e
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1f
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0x1e
	bl	__Func_92b08
	mov	r0, #0x1f
	mov	r1, #2
	bl	__Func_92b08
	ldr	r2, =0x1cccc
	mov	r0, #0x1f
	ldr	r1, =0x39999
	bl	__Func_92064
	mov	r0, #0x1f
	mov	r1, #2
	bl	__Func_924d4
	ldr	r5, =.L2c90
	mov	r0, #0x1f
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x1e
	mov	r1, #3
	bl	__Func_924d4
	ldr	r2, =0x26666
	mov	r0, #0x1e
	ldr	r1, =0x4cccc
	bl	__Func_92064
	mov	r1, r5
	mov	r0, #0x1e
	bl	__Func_920fc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r1, r8
	mov	r0, #0xc
	bl	OvlFunc_22e0
	mov	r0, #0xc
	b	.L1c3c

	.pool_aligned

.L1c3c:
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, r11
	mov	r0, #0xb
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_22c8
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	ldr	r2, =0x13333
	mov	r0, #0xc
	ldr	r1, =0x26666
	bl	__Func_92064
	ldr	r1, =.L2cf8
	mov	r0, #0xb
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r1, =0x4ccc
	ldr	r0, =0x26666
	bl	__Func_933d4
	bl	__Func_93554
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r1, #0x80
	mov	r0, #0xd7
	mov	r3, #1
	ldr	r2, =0x3210000
	lsl	r1, #13
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r1, =.L2d74
	mov	r0, #0xc
	bl	__Func_9207c
	mov	r0, #0xc
	bl	__Func_920e8
	mov	r2, #0x78
	mov	r1, r7
	mov	r0, #0xc
	bl	OvlFunc_22e0
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r6, #0x90
	mov	r0, #0xd
	mov	r1, #0x14
	bl	OvlFunc_22c8
	lsl	r6, #8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r6
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r1, r10
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_22e0
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r8, r3
	mov	r2, #0xa
	mov	r1, r8
	mov	r0, #1
	bl	OvlFunc_22e0
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xc8
	mov	r0, #0x10
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x10
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0xb4
	bl	__Func_91a58
	mov	r1, #0x84
	mov	r2, #0xc8
	mov	r0, #0x10
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xf0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	OvlFunc_22e0
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r0, #0x11
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x11
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, r11
	mov	r0, #1
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92560
	mov	r5, #0xd0
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	lsl	r5, #8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r5
	mov	r2, #0xa
	mov	r0, #0xe
	bl	OvlFunc_22e0
	mov	r0, #0xe
	mov	r1, #0x3c
	bl	OvlFunc_22c8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x11
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x11
	mov	r1, #0x3c
	bl	OvlFunc_22c8
	mov	r0, #0
	mov	r1, #0x11
	bl	__Func_920c0
	mov	r0, #1
	mov	r1, #0x11
	bl	__Func_920c0
	mov	r2, #0xc8
	mov	r0, #0x11
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x11
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #0x3c
	bl	OvlFunc_22c8
	mov	r1, #0
	mov	r0, #0xcf
	bl	__Func_91a58
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r1, #0x88
	mov	r2, #0xcc
	mov	r0, #0x11
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x11
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, r6
	mov	r2, #0xa
	mov	r0, #1
	bl	OvlFunc_22e0
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, r7
	mov	r0, #0xe
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_22e0
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0x10
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, #0xf0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	OvlFunc_22e0
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x10
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, r5
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x1c
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xf
	mov	r1, #2
	mov	r2, #0xa
	bl	__Func_92560
	mov	r2, #0x28
	mov	r0, #0xf
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0xf
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, r8
	mov	r0, #1
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r10
	mov	r0, #0
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r1, r5
	mov	r2, #0xa
	mov	r0, #0xf
	bl	OvlFunc_22e0
	mov	r0, #0xf
	mov	r1, #0xa
	bl	OvlFunc_22c8
	mov	r1, r6
	mov	r0, #0xf
	mov	r2, #0x14
	bl	OvlFunc_22e0
	mov	r2, #0xa
	mov	r1, r9
	mov	r0, #0xf
	bl	OvlFunc_22e0
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x1d
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x12
	b	.L20a4

	.pool_aligned

.L20a4:
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x1c
	bl	__Func_92548
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0xe
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x11
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x14
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x17
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x1a
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x1d
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0xc
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0xf
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x12
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x15
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x1b
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0xd
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x10
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x13
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x16
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x19
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0
	mov	r0, #0x1c
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #1
	ldr	r0, =0x1214
	bl	__Func_1776c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0x81
	orr	r5, r3
	strb	r5, [r0]
	lsl	r1, #1
	mov	r0, #0
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_22e0
	mov	r1, r9
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_22e0
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__Func_92064
	ldr	r5, =.L2df0
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0xd8
	mov	r1, #0x80
	mov	r3, #1
	lsl	r1, #13
	ldr	r2, =0x3890000
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r2, =0x6666
	mov	r0, #1
	ldr	r1, =0xcccc
	bl	__Func_92064
	mov	r1, r5
	mov	r0, #1
	bl	__Func_9207c
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
	mov	r3, #0x3c
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #0xa
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17c8

.thumb_func_start OvlFunc_22c8
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22c8

.thumb_func_start OvlFunc_22e0
	push	{r5, lr}
	mov	r5, r2
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22e0

.thumb_func_start OvlFunc_22f8
	push	{r5, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L2310
	mov	r1, #7
	bl	__Func_c598
	b	.L2318
.L2310:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c598
.L2318:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L232a
	mov	r0, r5
	bl	OvlFunc_2440
.L232a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22f8

.thumb_func_start OvlFunc_2334
	push	{r5, r6, lr}
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L2356
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_b50
	mov	r1, r0
	mov	r0, r6
	bl	__Func_c598
.L2356:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L2366
	mov	r0, r6
	bl	OvlFunc_2440
.L2366:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2334

.thumb_func_start OvlFunc_2370
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =iwram_1e40
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2392
	ldr	r0, [r0]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_b50
	mov	r1, r0
	mov	r0, r5
	bl	__Func_c598
.L2392:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2370

.thumb_func_start OvlFunc_239c
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
	ble	.L23bc
	mov	r0, r5
	bl	__Func_c0f4
	b	.L23e6
.L23bc:
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
.L23e6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_239c

.thumb_func_start OvlFunc_23ec
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
	ble	.L240c
	mov	r0, r5
	bl	__Func_c0f4
	b	.L2438
.L240c:
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
.L2438:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_23ec

.thumb_func_start OvlFunc_2440
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, #0x83
	sub	sp, #8
	mov	r11, r3
	bl	__Func_f9080
	mov	r1, #0x3f
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L2466:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L2514
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L249c	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L2514
	b	.L24a4

	.align	2, 0
.L249c:
	.word	0
	.pool

.L24a4:
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
	ldr	r2, .L250c	@ 0xffffffc0
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
	b	.L2514

	.align	2, 0
.L250c:
	.word	0xfffffc00
	.pool

.L2514:
	add	r7, #1
	cmp	r7, #1
	ble	.L2466
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_23ec
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
	ldr	r3, =OvlFunc_239c
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
.func_end OvlFunc_2440

.thumb_func_start OvlFunc_2564
	push	{lr}
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_96fb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2564

.thumb_func_start OvlFunc_2574
	push	{lr}
	bl	__Func_97194
	pop	{r0}
	bx	r0
.func_end OvlFunc_2574

.thumb_func_start OvlFunc_2580
	push	{lr}
	mov	r0, #0xf
	bl	__Func_92054
	bl	OvlFunc_2334
	pop	{r0}
	bx	r0
.func_end OvlFunc_2580

.thumb_func_start OvlFunc_2590
	push	{lr}
	mov	r0, #0x11
	bl	__Func_92054
	bl	OvlFunc_2334
	pop	{r0}
	bx	r0
.func_end OvlFunc_2590

.thumb_func_start OvlFunc_25a0
	push	{lr}
	mov	r0, #0x14
	bl	__Func_92054
	bl	OvlFunc_2370
	pop	{r0}
	bx	r0
.func_end OvlFunc_25a0

.thumb_func_start OvlFunc_25b0
	push	{lr}
	mov	r0, #0xb0
	lsl	r0, #1
	bl	__Func_79358
	ldr	r0, =0x16d
	bl	__Func_79358
	ldr	r0, =0x844
	bl	__Func_79358
	ldr	r0, =0x845
	bl	__Func_79358
	mov	r0, #0x28
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_25b0

	.section .data

	.incbin "overlays/rom_784360/orig.bin", 0x2854, (0x2874-0x2854)
.L2874:
	.incbin "overlays/rom_784360/orig.bin", 0x2874, (0x28e8-0x2874)
.L28e8:
	.incbin "overlays/rom_784360/orig.bin", 0x28e8, (0x2940-0x28e8)
.L2940:
	.incbin "overlays/rom_784360/orig.bin", 0x2940, (0x2998-0x2940)
.L2998:
	.incbin "overlays/rom_784360/orig.bin", 0x2998, (0x29f0-0x2998)
.L29f0:
	.incbin "overlays/rom_784360/orig.bin", 0x29f0, (0x2a48-0x29f0)
.L2a48:
	.incbin "overlays/rom_784360/orig.bin", 0x2a48, (0x2b2c-0x2a48)
.L2b2c:
	.incbin "overlays/rom_784360/orig.bin", 0x2b2c, (0x2c00-0x2b2c)
.L2c00:
	.incbin "overlays/rom_784360/orig.bin", 0x2c00, (0x2c14-0x2c00)
.L2c14:
	.incbin "overlays/rom_784360/orig.bin", 0x2c14, (0x2c90-0x2c14)
.L2c90:
	.incbin "overlays/rom_784360/orig.bin", 0x2c90, (0x2cf8-0x2c90)
.L2cf8:
	.incbin "overlays/rom_784360/orig.bin", 0x2cf8, (0x2d74-0x2cf8)
.L2d74:
	.incbin "overlays/rom_784360/orig.bin", 0x2d74, (0x2df0-0x2d74)
.L2df0:
	.incbin "overlays/rom_784360/orig.bin", 0x2df0, (0x2e34-0x2df0)
.L2e34:
	.incbin "overlays/rom_784360/orig.bin", 0x2e34, (0x2ef0-0x2e34)
.L2ef0:
	.incbin "overlays/rom_784360/orig.bin", 0x2ef0, (0x2f50-0x2ef0)
.L2f50:
	.incbin "overlays/rom_784360/orig.bin", 0x2f50, (0x2f78-0x2f50)
.L2f78:
	.incbin "overlays/rom_784360/orig.bin", 0x2f78, (0x2fa0-0x2f78)
.L2fa0:
	.incbin "overlays/rom_784360/orig.bin", 0x2fa0, (0x3108-0x2fa0)
.L3108:
	.incbin "overlays/rom_784360/orig.bin", 0x3108, (0x3144-0x3108)
.L3144:
	.incbin "overlays/rom_784360/orig.bin", 0x3144, (0x3170-0x3144)
.L3170:
	.incbin "overlays/rom_784360/orig.bin", 0x3170, (0x3380-0x3170)
.L3380:
	.incbin "overlays/rom_784360/orig.bin", 0x3380, (0x3560-0x3380)
.L3560:
	.incbin "overlays/rom_784360/orig.bin", 0x3560, (0x37d0-0x3560)
.L37d0:
	.incbin "overlays/rom_784360/orig.bin", 0x37d0, (0x3938-0x37d0)
.L3938:
	.incbin "overlays/rom_784360/orig.bin", 0x3938, (0x3a64-0x3938)
.L3a64:
	.incbin "overlays/rom_784360/orig.bin", 0x3a64, (0x3b30-0x3a64)
.L3b30:
	.incbin "overlays/rom_784360/orig.bin", 0x3b30, (0x3b3c-0x3b30)
.L3b3c:
	.incbin "overlays/rom_784360/orig.bin", 0x3b3c, (0x3cec-0x3b3c)
.L3cec:
	.incbin "overlays/rom_784360/orig.bin", 0x3cec, (0x3eb4-0x3cec)
.L3eb4:
	.incbin "overlays/rom_784360/orig.bin", 0x3eb4
