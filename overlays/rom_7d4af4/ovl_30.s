	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	mov	r0, #0x1f
	mov	r1, #2
	mov	r2, #4
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_40
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
.func_end OvlFunc_40

.thumb_func_start OvlFunc_7c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r10, r1
	mov	r11, r3
	mov	r3, #8
	mov	r7, r10
	add	r3, r6
	add	r7, #8
	mov	r8, r3
	mov	r5, r2
	mov	r0, r7
	mov	r2, #0
	mov	r1, r8
	mov	r9, r2
	bl	OvlFunc_40
	cmp	r0, r5
	blt	.Lb2
	mov	r2, r11
	cmp	r2, #0
	beq	.L146
.Lb2:
	mov	r3, r10
	ldr	r0, [r3, #0x10]
	ldr	r3, [r6, #0x10]
	mov	r2, r8
	ldr	r1, [r7]
	sub	r0, r3
	ldr	r3, [r2]
	sub	r1, r3
	bl	__Func_44d0
	ldr	r3, =0xffffe000
	lsl	r0, #16
	lsr	r0, #16
	add	r3, r0
	mov	r8, r3
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r8
	and	r2, r3
	mov	r8, r2
	mov	r2, #0x80
	lsl	r2, #6
	add	r7, r0, r2
	ldr	r2, =0xfffff000
	add	r4, r0, r2
	mov	r2, #0x80
	lsl	r2, #5
	add	r1, r0, r2
	ldrh	r2, [r6, #6]
	mov	r5, r3
	and	r0, r3
	and	r5, r2
	and	r7, r3
	and	r4, r3
	and	r1, r3
	cmp	r0, r5
	beq	.L10a
	cmp	r1, r5
	beq	.L10a
	cmp	r4, r5
	beq	.L10a
	mov	r3, r11
	cmp	r3, #0
	beq	.L11e
.L10a:
	mov	r2, r6
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	mov	r2, #1
	mov	r9, r2
.L11e:
	mov	r0, #0
	bl	__Func_92054
	cmp	r10, r0
	bne	.L156
	cmp	r7, r5
	beq	.L130
	cmp	r8, r5
	bne	.L156
.L130:
	mov	r2, r6
	mov	r3, #1
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	mov	r3, #1
	mov	r9, r3
	b	.L156
.L146:
	mov	r3, r6
	add	r3, #0x5b
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #2
	bl	__Func_c300
.L156:
	mov	r0, r9
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_170
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e8c
	mov	r5, r0
	ldr	r2, [r3]
	mov	r6, r5
	mov	r8, r2
	add	r6, #0x64
	mov	r2, #0x12
	ldr	r7, [r3, #0x30]
	mov	r10, r2
	mov	r3, #0
	ldrh	r2, [r6]
	mov	r9, r3
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L19e
	mov	r0, #0x11
	b	.L1a0
.L19e:
	mov	r0, #0x10
.L1a0:
	bl	__Func_92054
	mov	r1, r0
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0
	bl	OvlFunc_7c
	cmp	r0, #0
	bne	.L1f0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r1, r0
	cmp	r3, #0
	bne	.L1d4
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1e6
.L1d4:
	mov	r3, #0x1a
	ldrh	r2, [r6]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1e6
	mov	r2, #1
	mov	r9, r2
.L1e6:
	mov	r0, r5
	mov	r2, r10
	mov	r3, r9
	bl	OvlFunc_7c
.L1f0:
	mov	r0, #0
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_170

.thumb_func_start OvlFunc_208
	ldr	r0, =.L1060
	bx	lr
.func_end OvlFunc_208

.thumb_func_start OvlFunc_210
	mov	r0, #0
	bx	lr
.func_end OvlFunc_210

.thumb_func_start OvlFunc_214
	ldr	r0, =.L11f8
	bx	lr
.func_end OvlFunc_214

.thumb_func_start OvlFunc_21c
	ldr	r0, =.L1238
	bx	lr
.func_end OvlFunc_21c

.thumb_func_start OvlFunc_224
	push	{lr}
	mov	r0, #8
	bl	__Func_92054
	cmp	r0, #0
	beq	.L238
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L238:
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x88
	mov	r2, #0x90
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_224

.thumb_func_start OvlFunc_260
	push	{lr}
	sub	sp, #8
	mov	r3, #3
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #1
	bl	__Func_10704
	mov	r1, #0xe0
	mov	r2, #0xd4
	mov	r0, #0x66
	lsl	r1, #14
	lsl	r2, #17
	bl	__Func_8edac
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_260

.thumb_func_start OvlFunc_28c
	push	{lr}
	sub	sp, #8
	mov	r3, #3
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #2
	mov	r1, #0x19
	mov	r2, #1
	bl	__Func_10704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x66
	neg	r1, r1
	neg	r2, r2
	bl	__Func_8edac
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_28c

.thumb_func_start OvlFunc_2b8
	push	{lr}
	ldr	r0, =0xe36
	bl	__Func_92b94
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b8

.thumb_func_start OvlFunc_2d4
	push	{lr}
	ldr	r0, =0xe37
	bl	__Func_92b94
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d4

.thumb_func_start OvlFunc_2f0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r0, #0x10
	ldr	r5, [r3]
	bl	__Func_92054
	mov	r7, r0
	mov	r3, #6
	ldrsh	r2, [r7, r3]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r2
	bl	__Func_916b0
	ldrh	r2, [r6]
	ldr	r3, .L338	@ 2
	orr	r3, r2
	mov	r2, #0xbf
	lsl	r2, #1
	strh	r3, [r6]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L356
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L344
	ldr	r0, =0x2365
	b	.L376

	.align	2, 0
.L338:
	.word	2
	.pool

.L344:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L352
	ldr	r0, =0x21e2
	b	.L376
.L352:
	ldr	r0, =0x1f95
	b	.L376
.L356:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L366
	ldr	r0, =0x2371
	b	.L376
.L366:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L374
	ldr	r0, =0x21f5
	b	.L376
.L374:
	ldr	r0, =0x1faa
.L376:
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x10
	bl	__Func_93040
	mov	r3, r8
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__Func_30f8
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r6]
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f0

.thumb_func_start OvlFunc_3d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r0, #0x11
	ldr	r5, [r3]
	bl	__Func_92054
	mov	r7, r0
	mov	r3, #6
	ldrsh	r2, [r7, r3]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r2
	bl	__Func_916b0
	ldrh	r2, [r6]
	ldr	r3, .L418	@ 2
	orr	r3, r2
	mov	r2, #0xbf
	lsl	r2, #1
	strh	r3, [r6]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L436
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L424
	ldr	r0, =0x2366
	b	.L456

	.align	2, 0
.L418:
	.word	2
	.pool

.L424:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L432
	ldr	r0, =0x21e3
	b	.L456
.L432:
	ldr	r0, =0x1f96
	b	.L456
.L436:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L446
	ldr	r0, =0x2372
	b	.L456
.L446:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L454
	ldr	r0, =0x21f6
	b	.L456
.L454:
	ldr	r0, =0x1fab
.L456:
	bl	__Func_92b94
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x11
	bl	__Func_93040
	mov	r3, r8
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__Func_30f8
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r6]
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3d0

.thumb_func_start OvlFunc_4b0
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4c2
	ldr	r0, =.L1a9c
	b	.L4d2
.L4c2:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4d0
	ldr	r0, =.L17a8
	b	.L4d2
.L4d0:
	ldr	r0, =.L14a8
.L4d2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_4b0

.thumb_func_start OvlFunc_4e8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1f92
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4e8

.thumb_func_start OvlFunc_508
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1f9d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_508

.thumb_func_start OvlFunc_528
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1fa0
	bl	__Func_92b94
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_528

.thumb_func_start OvlFunc_568
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_9259c
	ldr	r0, =0x1fa2
	bl	__Func_92b94
	mov	r0, #0x1a
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_568

.thumb_func_start OvlFunc_59c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1fa3
	bl	__Func_92b94
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_59c

.thumb_func_start OvlFunc_5bc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x235f
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5bc

.thumb_func_start OvlFunc_5dc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x8bf
	bl	__Func_79338
	cmp	r0, #0
	bne	.L622
	ldr	r0, =0x8bf
	bl	__Func_79358
	ldr	r0, =0x2368
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xe9
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xe9
	mov	r1, #0
	bl	__Func_91a58
	b	.L630
.L622:
	ldr	r0, =0x236a
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
.L630:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5dc

.thumb_func_start OvlFunc_644
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	bl	__Func_916b0
	mov	r5, #8
	mov	r6, #0
.L652:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L662
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L662:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L652
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	mov	r0, #0x9e
	sub	r5, #1
	bl	__Func_f9080
	lsl	r4, r5, #3
	ldr	r0, =.L1d00
	add	r3, r4, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r4]
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	cmp	r5, #6
	beq	.L6c4
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_92208
	mov	r0, #0xa
	bl	__Func_9163c
.L6c4:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_644

.thumb_func_start OvlFunc_6e8
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.L720
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r1, r5
	ldrb	r2, [r3, #9]
	add	r1, #0x23
	mov	r3, #0
	strb	r3, [r1]
	mov	r1, #0xc
	ldr	r4, [r5, #0x50]
	and	r1, r2
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r0, [r5, #0x50]
	ldrb	r3, [r0, #0x15]
	and	r2, r3
	orr	r2, r1
	strb	r2, [r0, #0x15]
.L720:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6e8

.thumb_func_start OvlFunc_728
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r1, #0xb0
	mov	r2, #0xb0
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__Func_923e4
	ldr	r1, =.Lec0
	mov	r0, #0x10
	bl	__Func_9207c
	mov	r0, #0x10
	bl	__Func_92054
	mov	r2, r0
	mov	r3, #1
	ldr	r5, =OvlFunc_170
	add	r2, #0x64
	strh	r3, [r2]
	mov	r1, #0xb8
	mov	r2, #0xa0
	lsl	r2, #17
	str	r5, [r0, #0x6c]
	lsl	r1, #17
	mov	r0, #0x11
	bl	__Func_923e4
	ldr	r1, =.Lf90
	mov	r0, #0x11
	bl	__Func_9207c
	mov	r0, #0x11
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x64
	mov	r6, #0
	strh	r6, [r3]
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, =OvlFunc_6e8
	str	r3, [r0, #0x6c]
	ldr	r0, =0x8c1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L7a8
	mov	r1, #0x9e
	mov	r2, #0xa4
	mov	r0, #0x1c
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
.L7a8:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L7b6
	bl	OvlFunc_ca8
.L7b6:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L7ce
	bl	OvlFunc_224
	mov	r0, #8
	mov	r1, #4
	bl	__Func_924d4
.L7ce:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L83e
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x14
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x18
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x1a
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x1b
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	b	.L86a
.L83e:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L86a
	mov	r1, #0x8c
	mov	r2, #0xa0
	mov	r0, #0x1b
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_924d4
.L86a:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_728

.thumb_func_start OvlFunc_894
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0x98
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x1c
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xe3d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x1c
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L936
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1c
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xa0
	mov	r2, #0x98
	mov	r0, #0x1c
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x9e
	mov	r2, #0xa4
	mov	r0, #0x1c
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	ldr	r0, =0x8c1
	bl	__Func_79358
	b	.L93e
.L936:
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_92f84
.L93e:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_894

.thumb_func_start OvlFunc_954
	push	{lr}
	mov	r0, #0x1e
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_954

.thumb_func_start OvlFunc_964
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_964

.thumb_func_start OvlFunc_980
	push	{r5, lr}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1d
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x1e
	bl	__Func_92064
	ldr	r5, =0x1fb6
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0x90
	mov	r2, #0xd0
	mov	r0, #0x1d
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xe0
	mov	r2, #0xd0
	lsl	r2, #16
	mov	r0, #0x1e
	lsl	r1, #14
	bl	__Func_923e4
	mov	r1, #0xf
	mov	r0, #0x20
	bl	__Func_92950
	mov	r0, #0x20
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xbe
	mov	r2, #0xa0
	mov	r0, #0x20
	lsl	r1, #15
	lsl	r2, #14
	bl	__Func_923e4
	mov	r0, #0x1d
	mov	r1, #0x48
	mov	r2, #0xf8
	bl	__Func_9218c
	mov	r0, #0x1e
	mov	r1, #0x38
	mov	r2, #0xf8
	bl	__Func_9218c
	mov	r2, #0x84
	mov	r0, #0
	mov	r1, #0x40
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1d
	bl	__Func_923c4
	mov	r0, #0x1d
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x1e
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x1d
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1e
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0x1d
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #0x1e
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0x1d
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0x1e
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x1d
	bl	__Func_92c40
	mov	r0, #0x19
	bl	__Func_9163c
	add	r5, #3
	mov	r1, #0
	mov	r2, #0xc
	mov	r3, #7
	mov	r0, #0x34
	bl	__Func_19da8
	mov	r0, r5
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #2
	bl	__Func_17658
	ldr	r5, =iwram_1ebc
	mov	r2, #0xfa
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lb9e
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x1e
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1e
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x1d
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1d
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x1d
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x1e
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x1d
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x1e
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x1d
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_92064
	mov	r0, #0x1e
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_92064
	mov	r1, #0xe8
	mov	r2, #0xf8
	mov	r0, #0x1d
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_9163c
	mov	r1, #0xe8
	mov	r2, #0xf8
	mov	r0, #0x1e
	bl	__Func_9218c
	mov	r0, #0x1d
	bl	__Func_923c4
	mov	r0, #0x1d
	mov	r1, #0xf8
	mov	r2, #0xf8
	bl	__Func_9218c
	mov	r0, #0x1e
	mov	r1, #0xf8
	mov	r2, #0xf8
	bl	__Func_921c4
	b	.Lc5e
.Lb9e:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x1e
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1e
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x1d
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x1d
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0x1d
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x1e
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x1d
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x1e
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x1d
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #0x1e
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #0x1d
	mov	r1, #0x48
	mov	r2, #0xb8
	bl	__Func_9218c
	mov	r0, #0x1e
	mov	r1, #0x38
	mov	r2, #0xb8
	bl	__Func_921c4
.Lc5e:
	mov	r0, #0x1d
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x1e
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x20
	bl	__Func_923e4
	mov	r0, #0x8c
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_980

.thumb_func_start OvlFunc_ca8
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.Lcce
	mov	r1, #0
	bl	__Func_c528
	mov	r1, r5
	mov	r2, #2
	add	r1, #0x23
	strb	r2, [r1]
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
.Lcce:
	mov	r0, #9
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #0x22
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x24
	bl	__Func_10704
	ldr	r0, =0x201
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ca8

	.section .data

	.incbin "overlays/rom_7d4af4/orig.bin", 0xea8, (0xec0-0xea8)
.Lec0:
	.incbin "overlays/rom_7d4af4/orig.bin", 0xec0, (0xf90-0xec0)
.Lf90:
	.incbin "overlays/rom_7d4af4/orig.bin", 0xf90, (0x1060-0xf90)
.L1060:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1060, (0x11f8-0x1060)
.L11f8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x11f8, (0x1238-0x11f8)
.L1238:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1238, (0x14a8-0x1238)
.L14a8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x14a8, (0x17a8-0x14a8)
.L17a8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x17a8, (0x1a9c-0x17a8)
.L1a9c:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1a9c, (0x1d00-0x1a9c)
.L1d00:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1d00
