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
	b	.L98
.L48:
	cmp	r3, #4
	beq	.L60
	cmp	r3, #6
	bne	.L98
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
	b	.L98
.L82:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r0, #0x3c
	strh	r0, [r5]
.L98:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_b4
	push	{lr}
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_b4

.thumb_func_start OvlFunc_c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x62
	ldrb	r1, [r6]
	mov	r8, r1
	cmp	r1, #0
	bne	.Lda
	b	.L21a
.Lda:
	mov	r3, r1
	sub	r3, #1
	cmp	r3, #7
	bls	.Le4
	b	.L2b2
.Le4:
	ldr	r2, =.Lec
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lec:
	.word	.L10c
	.word	.L1d4
	.word	.L12c
	.word	.L1d4
	.word	.L1aa
	.word	.L1d4
	.word	.L1dc
	.word	.L214
.L10c:
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r1, #0x86
	mov	r2, #0xa0
	mov	r3, #0xad
	lsl	r3, #18
	mov	r0, r5
	lsl	r1, #17
	lsl	r2, #13
	bl	__Func_d14c
	b	.L1d4
.L12c:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	beq	.L138
	b	.L2b2
.L138:
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	beq	.L140
	b	.L2b2
.L140:
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	beq	.L148
	b	.L2b2
.L148:
	ldrb	r3, [r6]
	mov	r0, #0x92
	add	r3, #1
	strb	r3, [r6]
	bl	__Func_f9080
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16c
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	b	.L178
.L16c:
	mov	r1, #0xb0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.L178:
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.L192
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.L2b2
.L192:
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.L2b2
.L1aa:
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1c4
	mov	r1, #0x8d
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	ldr	r3, =0x2920000
	bl	__Func_d14c
	b	.L1d4
.L1c4:
	mov	r1, #0xfe
	mov	r3, #0xa7
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Func_d14c
.L1d4:
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
	b	.L2b2
.L1dc:
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	cmp	r3, r1
	bne	.L2b2
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L2b2
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L2b2
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
	str	r2, [r5, #0x4c]
	b	.L2b2
.L214:
	mov	r3, #0
	strb	r3, [r6]
	b	.L2b2
.L21a:
	mov	r7, r5
	add	r7, #0x64
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.L240
	bl	__Func_4458
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	ldr	r1, =0xffffc000
	sub	r3, r0
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	bge	.L25a
	mov	r2, r8
	strh	r2, [r7]
	b	.L25a
.L240:
	bl	__Func_4458
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	mov	r1, #0x80
	add	r3, r0
	lsl	r1, #7
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	ble	.L25a
	mov	r3, #1
	strh	r3, [r7]
.L25a:
	ldr	r1, =0xff07ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x2bfffe
	cmp	r3, r1
	bhi	.L26c
	ldr	r3, [r5, #0x4c]
	add	r3, r2, r3
	str	r3, [r5, #8]
.L26c:
	mov	r7, r5
	add	r7, #0x66
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.L292
	bl	__Func_4458
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	ldr	r1, =0xffff8000
	sub	r3, r0
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L2b2
	mov	r3, #0
	b	.L2b0
.L292:
	bl	__Func_4458
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	mov	r2, #0x80
	add	r3, r0
	lsl	r2, #8
	mov	r1, #0x80
	add	r3, r2
	lsl	r1, #12
	str	r3, [r5, #0xc]
	cmp	r3, r1
	ble	.L2b2
	mov	r3, #1
.L2b0:
	strh	r3, [r7]
.L2b2:
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #0
	bne	.L2c4
	mov	r3, #1
	strb	r3, [r6]
.L2c4:
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_c4

.thumb_func_start OvlFunc_2ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x62
	ldrb	r1, [r6]
	mov	r8, r1
	cmp	r1, #0
	bne	.L302
	b	.L444
.L302:
	mov	r3, r1
	sub	r3, #1
	cmp	r3, #7
	bls	.L30c
	b	.L4dc
.L30c:
	ldr	r2, =.L314
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L314:
	.word	.L334
	.word	.L3fe
	.word	.L354
	.word	.L3fe
	.word	.L3d2
	.word	.L3fe
	.word	.L406
	.word	.L43e
.L334:
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r1, #0x80
	mov	r2, #0xa0
	mov	r3, #0xa0
	lsl	r3, #18
	mov	r0, r5
	lsl	r1, #17
	lsl	r2, #13
	bl	__Func_d14c
	b	.L3fe
.L354:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	beq	.L360
	b	.L4dc
.L360:
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	beq	.L368
	b	.L4dc
.L368:
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	beq	.L370
	b	.L4dc
.L370:
	ldrb	r3, [r6]
	mov	r0, #0x92
	add	r3, #1
	strb	r3, [r6]
	bl	__Func_f9080
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L394
	mov	r1, #0xd0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	b	.L3a0
.L394:
	mov	r1, #0xb0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.L3a0:
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.L3ba
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.L4dc
.L3ba:
	mov	r0, #0x16
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.L4dc
.L3d2:
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L3ee
	mov	r1, #0x84
	mov	r3, #0x96
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #18
	bl	__Func_d14c
	b	.L3fe
.L3ee:
	mov	r1, #0xf2
	mov	r3, #0x97
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Func_d14c
.L3fe:
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
	b	.L4dc
.L406:
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	cmp	r3, r1
	bne	.L4dc
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L4dc
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L4dc
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
	str	r2, [r5, #0x4c]
	b	.L4dc
.L43e:
	mov	r3, #0
	strb	r3, [r6]
	b	.L4dc
.L444:
	mov	r7, r5
	add	r7, #0x64
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.L46a
	bl	__Func_4458
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	ldr	r1, =0xffffc000
	sub	r3, r0
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	bge	.L484
	mov	r2, r8
	strh	r2, [r7]
	b	.L484
.L46a:
	bl	__Func_4458
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	mov	r1, #0x80
	add	r3, r0
	lsl	r1, #7
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	ble	.L484
	mov	r3, #1
	strh	r3, [r7]
.L484:
	ldr	r1, =0xff17ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x27fffe
	cmp	r3, r1
	bhi	.L496
	ldr	r3, [r5, #0x4c]
	add	r3, r2, r3
	str	r3, [r5, #8]
.L496:
	mov	r7, r5
	add	r7, #0x66
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.L4bc
	bl	__Func_4458
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	ldr	r1, =0xffff8000
	sub	r3, r0
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L4dc
	mov	r3, #0
	b	.L4da
.L4bc:
	bl	__Func_4458
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	mov	r2, #0x80
	add	r3, r0
	lsl	r2, #8
	mov	r1, #0x80
	add	r3, r2
	lsl	r1, #12
	str	r3, [r5, #0xc]
	cmp	r3, r1
	ble	.L4dc
	mov	r3, #1
.L4da:
	strh	r3, [r7]
.L4dc:
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #0
	bne	.L4ee
	mov	r3, #1
	strb	r3, [r6]
.L4ee:
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_2ec

.thumb_func_start OvlFunc_514
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L542
	bl	__Func_4458
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	ldr	r2, =0xffff8000
	lsr	r0, #16
	sub	r3, r0
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.L562
	mov	r3, #0
	b	.L560
.L542:
	bl	__Func_4458
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r0
	add	r3, r2
	mov	r2, #0xc0
	lsl	r2, #12
	str	r3, [r5, #0xc]
	cmp	r3, r2
	ble	.L562
	mov	r3, #1
.L560:
	strh	r3, [r6]
.L562:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_514

.thumb_func_start OvlFunc_570
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_4458
	lsl	r0, #5
	lsr	r0, #16
	cmp	r0, #6
	bne	.L584
	mov	r3, #0xd0
	b	.L58a
.L584:
	cmp	r0, #9
	bne	.L58e
	mov	r3, #0xb0
.L58a:
	lsl	r3, #8
	strh	r3, [r5, #6]
.L58e:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_570

.thumb_func_start OvlFunc_598
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bls	.L5aa
	b	.L708
.L5aa:
	ldr	r2, =.L5b4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L5b4:
	.word	.L5dc
	.word	.L5f4
	.word	.L5fa
	.word	.L61c
	.word	.L622
	.word	.L69a
	.word	.L6a0
	.word	.L6e2
	.word	.L6e8
	.word	.L704
.L5dc:
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	beq	.L5ee
	b	.L708
.L5ee:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L5f4:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L5fa:
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r1, #0x84
	str	r3, [r5, #0x34]
	mov	r0, r5
	ldr	r3, =0x2960000
	lsl	r1, #17
	mov	r2, #0
	bl	__Func_d14c
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L61c:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L622:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L708
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L708
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L708
	ldrh	r3, [r6]
	mov	r0, #0x98
	add	r3, #1
	strh	r3, [r6]
	bl	__Func_f9080
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L65c
	mov	r1, #0xb0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	b	.L668
.L65c:
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
.L668:
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.L682
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.L708
.L682:
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.L708
.L69a:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L6a0:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L6d2
	mov	r1, #0xfc
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	ldr	r3, =0x2860000
	bl	__Func_d14c
	b	.L708
.L6d2:
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	ldr	r3, =0x2ae0000
	bl	__Func_d14c
	b	.L708
.L6e2:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L6e8:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L708
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L708
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L708
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L704:
	mov	r3, #0
.L706:
	strh	r3, [r6]
.L708:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_598

.thumb_func_start OvlFunc_724
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bls	.L736
	b	.L88c
.L736:
	ldr	r2, =.L740
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L740:
	.word	.L768
	.word	.L780
	.word	.L786
	.word	.L7aa
	.word	.L7b0
	.word	.L826
	.word	.L82c
	.word	.L866
	.word	.L86c
	.word	.L888
.L768:
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	beq	.L77a
	b	.L88c
.L77a:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L780:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L786:
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r1, #0xb0
	mov	r3, #0xae
	lsl	r3, #18
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	bl	__Func_d14c
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L7aa:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L7b0:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L88c
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L88c
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L88c
	ldrh	r3, [r6]
	mov	r0, #0x98
	add	r3, #1
	strh	r3, [r6]
	bl	__Func_f9080
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L7ea
	mov	r1, #0xd0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	b	.L7f4
.L7ea:
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
.L7f4:
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.L80e
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.L88c
.L80e:
	mov	r0, #0x16
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.L88c
.L826:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L82c:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L854
	mov	r1, #0xb8
	mov	r3, #0xa8
	b	.L858
.L854:
	mov	r1, #0xca
	mov	r3, #0xad
.L858:
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Func_d14c
	b	.L88c
.L866:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L86c:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L88c
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L88c
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L88c
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L888:
	mov	r3, #0
.L88a:
	strh	r3, [r6]
.L88c:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_724

.thumb_func_start OvlFunc_89c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	bne	.L8b6
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
.L8b6:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_89c

.thumb_func_start OvlFunc_8c0
	push	{lr}
	mov	r2, #0x80
	ldr	r3, [r0, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	ble	.L8d8
	ldr	r2, =0xfffff800
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
.L8d8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_8c0

.thumb_func_start OvlFunc_8e0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x62
	ldrb	r3, [r6]
	mov	r7, r3
	cmp	r7, #0
	beq	.L8f4
	add	r3, #0xff
	b	.L92c
.L8f4:
	bl	__Func_4458
	lsl	r2, r0, #2
	add	r2, r0
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	lsr	r3, #16
	cmp	r3, #0xc8
	bls	.L910
	mov	r3, #0xd0
	lsl	r3, #8
	strh	r3, [r5, #6]
	b	.L91e
.L910:
	cmp	r3, #0x64
	bls	.L91c
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r5, #6]
	b	.L91e
.L91c:
	strh	r7, [r5, #6]
.L91e:
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	add	r3, #0x50
.L92c:
	strb	r3, [r6]
	mov	r0, #1
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_8e0

.thumb_func_start OvlFunc_938
	ldr	r0, =.L4994
	bx	lr
.func_end OvlFunc_938

.thumb_func_start OvlFunc_940
	ldr	r0, =.L4b44
	bx	lr
.func_end OvlFunc_940

.thumb_func_start OvlFunc_948
	ldr	r0, =.L4b64
	bx	lr
.func_end OvlFunc_948

.thumb_func_start OvlFunc_950
	push	{r5, lr}
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L960
	ldr	r0, =.L5508
	b	.L9ca
.L960:
	ldr	r0, =0x927
	bl	__Func_79338
	cmp	r0, #0
	beq	.L96e
	ldr	r0, =.L4ef0
	b	.L9ca
.L96e:
	ldr	r0, =0x928
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L97e
	ldr	r0, =.L5028
	b	.L9ca
.L97e:
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9c8
	ldr	r0, =0x925
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9a6
	ldr	r2, =.L4cf8
	mov	r1, #0xa7
	lsl	r1, #1
	add	r3, r2, r1
	strb	r5, [r3]
	mov	r3, #0xd7
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #2
	b	.L9ba
.L9a6:
	ldr	r0, =0x922
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9c4
	ldr	r2, =.L4cf8
	mov	r3, #0xd7
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #1
.L9ba:
	strb	r3, [r1]
	mov	r1, #0xe3
	lsl	r1, #1
	add	r2, r1
	strb	r3, [r2]
.L9c4:
	ldr	r0, =.L4cf8
	b	.L9ca
.L9c8:
	ldr	r0, =.L4ba8
.L9ca:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_950

.thumb_func_start OvlFunc_9fc
	push	{lr}
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	beq	.La0c
	ldr	r0, =.L59d0
	b	.La2c
.La0c:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.La1c
	ldr	r0, =.L5a54
	b	.La2c
.La1c:
	ldr	r0, =0x928
	bl	__Func_79338
	cmp	r0, #0
	beq	.La2a
	ldr	r0, =.L5958
	b	.La2c
.La2a:
	ldr	r0, =.L5778
.La2c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_9fc

.thumb_func_start OvlFunc_a48
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x925
	bl	__Func_79338
	cmp	r0, #0
	beq	.La68
	ldr	r0, =0x1e08
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	b	.Laca
.La68:
	ldr	r0, =0x922
	bl	__Func_79338
	cmp	r0, #0
	beq	.Laaa
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	ldr	r0, =0x1d6f
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0x15
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r3, #0x5a
	mul	r3, r0
	lsr	r3, #16
	add	r3, #0x3c
	add	r5, #0x64
	strh	r3, [r5]
	ldr	r1, =.L44d8
	mov	r0, #0x15
	bl	__Func_9207c
	b	.Laca
.Laaa:
	mov	r2, #0
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_9259c
	ldr	r0, =0x1d36
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
.Laca:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a48

.thumb_func_start OvlFunc_af0
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x925
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb10
	ldr	r0, =0x1e09
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	b	.Lb72
.Lb10:
	ldr	r0, =0x922
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb52
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_925cc
	ldr	r0, =0x1d70
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r3, #0x5a
	mul	r3, r0
	lsr	r3, #16
	add	r3, #0x3c
	add	r5, #0x64
	strh	r3, [r5]
	ldr	r1, =.L44d8
	mov	r0, #0x18
	bl	__Func_9207c
	b	.Lb72
.Lb52:
	mov	r2, #0
	mov	r0, #0x18
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_9259c
	ldr	r0, =0x1d37
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
.Lb72:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_af0

.thumb_func_start OvlFunc_b98
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1f00
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_b98

.thumb_func_start OvlFunc_bb8
	push	{lr}
	ldr	r0, =0x271
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lbe6
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x5e
	mov	r2, #0xd
	mov	r3, #0x5e
	bl	__Func_10424
	ldr	r0, =0x271
	bl	__Func_79358
.Lbe6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_bb8

.thumb_func_start OvlFunc_bf0
	push	{lr}
	ldr	r0, =0x272
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc1e
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x6c
	mov	r2, #0xd
	mov	r3, #0x6c
	bl	__Func_10424
	ldr	r0, =0x272
	bl	__Func_79358
.Lc1e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_bf0

.thumb_func_start OvlFunc_c28
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r6, [r3]
	bl	__Func_916b0
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, #0
	cmp	r3, #1
	beq	.Lc48
	cmp	r3, #3
	beq	.Lc50
	b	.Lc56
.Lc48:
	mov	r5, #1
	bl	OvlFunc_bb8
	b	.Lc56
.Lc50:
	mov	r5, #1
	bl	OvlFunc_bf0
.Lc56:
	cmp	r5, #0
	beq	.Lc78
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #1
	neg	r2, r2
	bl	__Func_92208
	mov	r0, #0xa
	bl	__Func_9163c
	b	.Lc7e
.Lc78:
	mov	r0, #0x7b
	bl	__Func_f9080
.Lc7e:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c28

.thumb_func_start OvlFunc_ca0
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lcba
	b	.L1046
.Lcba:
	bl	__Func_916b0
	bl	__Func_8e118
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0x14
	bl	__Func_9280c
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r0, #0xbe
	mov	r1, #1
	mov	r2, #0xb1
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	ldr	r5, =0x4016
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_925cc
	ldr	r0, =0x1d26
	bl	__Func_92b94
	mov	r0, r5
	bl	OvlFunc_39ec
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, r5
	bl	OvlFunc_39ec
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_925cc
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r11, r3
	mov	r1, r11
	mov	r0, #0x14
	bl	OvlFunc_3a00
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r9, r3
	ldr	r6, =0x4017
	mov	r0, #0x17
	mov	r1, r9
	bl	OvlFunc_3a00
	mov	r1, #3
	mov	r0, #0x17
	bl	__Func_924d4
	mov	r0, r6
	bl	OvlFunc_39ec
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, r5
	bl	OvlFunc_39ec
	mov	r0, #0x17
	mov	r1, #0
	bl	OvlFunc_3a00
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_92548
	mov	r0, r6
	bl	OvlFunc_39ec
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, r5
	bl	OvlFunc_39ec
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_3a00
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x83
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_937b8
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #0x16
	bl	OvlFunc_3a00
	ldr	r0, =0x1d40
	bl	__Func_92b94
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_9259c
	mov	r0, r5
	bl	OvlFunc_39ec
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r1, #0x84
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0x17
	bl	__Func_937b8
	mov	r0, r6
	bl	OvlFunc_39ec
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0x16
	bl	OvlFunc_3a00
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r0, #0x16
	mov	r1, r8
	bl	OvlFunc_3a00
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_924d4
	mov	r0, #0x16
	bl	OvlFunc_39ec
	mov	r0, #0x14
	mov	r1, r11
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x17
	mov	r1, r9
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, r10
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	bl	OvlFunc_39ec
	mov	r1, #0x81
	mov	r0, #0x17
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, r5
	bl	OvlFunc_39ec
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0xb6
	mov	r1, #1
	mov	r2, #0xbe
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_933f8
	ldr	r2, =0x6666
	mov	r0, #0x17
	ldr	r1, =0xcccc
	bl	__Func_92064
	ldr	r1, =.L4464
	mov	r0, #0x17
	bl	__Func_9207c
	ldr	r2, =0x6666
	mov	r0, #0x16
	ldr	r1, =0xcccc
	bl	__Func_92064
	ldr	r1, =.L449c
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r0, #0x14
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0xbe
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xb6
	bl	__Func_921c4
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_3a00
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r9
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xd8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x3160000
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x13333
	mov	r0, #0x14
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0xb6
	ldr	r2, =0x30e
	bl	__Func_921c4
	mov	r2, #0xca
	mov	r0, #0x14
	mov	r1, #0xc0
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xca
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xd8
	bl	__Func_921c4
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_3a00
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_925cc
	bl	OvlFunc_bf0
	mov	r0, #0x14
	mov	r1, #0xd8
	ldr	r2, =0x31e
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	mov	r0, #0x92
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
.L1046:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ca0

.thumb_func_start OvlFunc_10a0
	push	{r5, r6, lr}
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1198
	ldr	r0, =0x922
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1198
	bl	__Func_916b0
	bl	__Func_8e118
	bl	OvlFunc_12f0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	mov	r0, #0x14
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0xcc
	lsl	r2, #2
	strb	r3, [r0]
	mov	r1, #0xe8
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
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	mov	r0, #0x14
	bl	OvlFunc_39ec
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	mov	r0, #0x14
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xc9
	and	r5, r3
	mov	r1, #0xf4
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0xf8
	ldr	r2, =0x30a
	bl	__Func_921c4
	mov	r2, #0xaf
	mov	r0, #0x14
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xf6
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	bl	__Func_91750
.L1198:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10a0

.thumb_func_start OvlFunc_11c8
	push	{r5, r6, lr}
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12c0
	ldr	r0, =0x922
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12c0
	bl	__Func_916b0
	bl	__Func_8e118
	bl	OvlFunc_12f0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	mov	r0, #0x14
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0xcc
	lsl	r2, #2
	strb	r3, [r0]
	mov	r1, #0xca
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
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	mov	r0, #0x14
	bl	OvlFunc_39ec
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	mov	r0, #0x14
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xc9
	and	r5, r3
	mov	r1, #0xc0
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0xb4
	ldr	r2, =0x30a
	bl	__Func_921c4
	mov	r2, #0xaf
	mov	r0, #0x14
	mov	r1, #0xb4
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xf6
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	bl	__Func_91750
.L12c0:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11c8

.thumb_func_start OvlFunc_12f0
	push	{lr}
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	sub	sp, #8
	bl	__Func_933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xce
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_bf0
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x6c
	mov	r1, #0x6c
	mov	r2, #0xd
	mov	r0, #0x1e
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xd8
	mov	r2, #0xc8
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x14
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0xd8
	ldr	r2, =0x32e
	bl	__Func_921c4
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0x14
	bl	__Func_9280c
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	ldr	r0, =0x1d8d
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_937b8
	ldr	r0, =0x923
	bl	__Func_79358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_12f0

.thumb_func_start OvlFunc_13d4
	push	{r5, r6, lr}
	ldr	r6, =iwram_1e70
	mov	r2, #0x82
	ldr	r5, [r6]
	mov	r0, #0x8e
	lsl	r2, #1
	lsl	r0, #1
	add	r5, r2
	bl	__Func_79374
	ldr	r3, [r6, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r6, #0
	add	r2, #0x49
	str	r2, [r3]
	str	r6, [r5, #0x1c]
	ldr	r5, =.L5b58
	bl	__Func_4458
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	ldr	r5, =.L5b38
	bl	__Func_4458
	ldr	r3, =.L5b50
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	str	r6, [r3]
	str	r6, [r3, #4]
	ldr	r3, =.L5b60
	str	r6, [r3]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	OvlFunc_1444
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_13d4

.thumb_func_start OvlFunc_1444
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1464
	ldr	r0, =0x271
	bl	__Func_79374
	ldr	r0, =0x272
	bl	__Func_79374
.L1464:
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1480
	bl	OvlFunc_3950
	bl	OvlFunc_39b8
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_92950
	b	.L14ee
.L1480:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1496
	bl	OvlFunc_3950
	bl	OvlFunc_39b8
	b	.L14ee
.L1496:
	ldr	r0, =0x927
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L14ce
	bl	OvlFunc_3950
	bl	OvlFunc_3284
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_34bc
	bl	__Func_41d8
	ldr	r2, =.L5b50
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r2, =.L5b60
	ldr	r3, =0x13333
	mov	r1, #0xc8
	str	r3, [r2, #4]
	ldr	r0, =OvlFunc_31a8
	lsl	r1, #4
	bl	__Func_41d8
	b	.L14ee
.L14ce:
	ldr	r0, =0x928
	bl	__Func_79338
	cmp	r0, #0
	beq	.L14ee
	bl	OvlFunc_3950
	ldr	r3, =.L5b50
	str	r5, [r3, #4]
	ldr	r3, =.L5b60
	mov	r1, #0xc8
	str	r5, [r3, #4]
	ldr	r0, =OvlFunc_31a8
	lsl	r1, #4
	bl	__Func_41d8
.L14ee:
	ldr	r0, =0x927
	bl	__Func_79338
	cmp	r0, #0
	bne	.L14fc
	bl	OvlFunc_3710
.L14fc:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #4
	cmp	r3, #0xf
	bhi	.L15d0
	ldr	r2, =.L1518
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1518:
	.word	.L1558
	.word	.L15d0
	.word	.L15d0
	.word	.L15d0
	.word	.L15d0
	.word	.L15d0
	.word	.L1570
	.word	.L1586
	.word	.L158c
	.word	.L1592
	.word	.L1598
	.word	.L159e
	.word	.L15a4
	.word	.L15b4
	.word	.L15ba
	.word	.L15ca
.L1558:
	mov	r0, #0
	bl	__Func_92054
	ldr	r1, [r0, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	b	.L15d0
.L1570:
	ldr	r0, =0x928
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1580
	bl	OvlFunc_1b58
	b	.L1638
.L1580:
	bl	OvlFunc_1a98
	b	.L1638
.L1586:
	bl	OvlFunc_1d0c
	b	.L1638
.L158c:
	bl	OvlFunc_1db0
	b	.L1638
.L1592:
	bl	OvlFunc_1f90
	b	.L1638
.L1598:
	bl	OvlFunc_22c0
	b	.L1638
.L159e:
	bl	OvlFunc_2618
	b	.L1638
.L15a4:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1604
	bl	OvlFunc_29d4
	b	.L1638
.L15b4:
	bl	OvlFunc_2b7c
	b	.L1638
.L15ba:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1638
	bl	OvlFunc_2c84
	b	.L1638
.L15ca:
	bl	OvlFunc_3a0c
	b	.L1638
.L15d0:
	ldr	r0, =0x93e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L15e8
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r2, #0x82
	add	r3, #0xec
	lsl	r2, #15
	str	r2, [r3]
	b	.L1638
.L15e8:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L15fa
	bl	OvlFunc_19c0
	b	.L1638
.L15fa:
	ldr	r0, =0x92b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L160a
.L1604:
	bl	OvlFunc_1920
	b	.L1638
.L160a:
	ldr	r0, =0x928
	bl	__Func_79338
	cmp	r0, #0
	beq	.L161a
	bl	OvlFunc_185c
	b	.L1638
.L161a:
	ldr	r0, =0x925
	bl	__Func_79338
	cmp	r0, #0
	beq	.L162a
	bl	OvlFunc_17a0
	b	.L1638
.L162a:
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1638
	bl	OvlFunc_1684
.L1638:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1444

.thumb_func_start OvlFunc_1684
	push	{r5, r6, lr}
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x1a
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x92
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16e6
	mov	r1, #0xa2
	lsl	r1, #16
	ldr	r2, =0x29a0000
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0x17
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L16e6:
	ldr	r0, =0x922
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L1766
	mov	r1, #0x84
	ldr	r2, =0x2be0000
	lsl	r1, #17
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0x15
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	ldr	r6, =.L44d8
	add	r0, #0x3c
	add	r5, #0x64
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x15
	bl	__Func_9207c
	mov	r1, #0xf8
	mov	r2, #0xaa
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x18
	bl	__Func_923e4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x18
	bl	__Func_9207c
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L1786
.L1766:
	ldr	r0, =0x923
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1786
	mov	r1, #0xf6
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	strh	r5, [r0, #6]
.L1786:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1684

.thumb_func_start OvlFunc_17a0
	push	{r5, r6, lr}
	mov	r1, #0x83
	lsl	r1, #17
	ldr	r2, =0x2c20000
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r6, #0xa0
	lsl	r6, #7
	mov	r1, #0xa4
	mov	r2, #0xa2
	lsl	r2, #18
	strh	r6, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x18
	bl	__Func_923e4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, #0
	strh	r5, [r0, #6]
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_92b08
	mov	r1, #0xc6
	ldr	r2, =0x2990000
	lsl	r1, #16
	mov	r0, #0x19
	bl	__Func_923e4
	mov	r0, #0x19
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_92b08
	mov	r1, #0xbc
	lsl	r1, #16
	ldr	r2, =0x2a60000
	mov	r0, #0x1a
	bl	__Func_923e4
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r1, #0xba
	strh	r3, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x27b0000
	mov	r0, #0x1b
	bl	__Func_923e4
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r1, #0
	strh	r6, [r0, #6]
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17a0

.thumb_func_start OvlFunc_185c
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =.L5160
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__Func_923e4
	mov	r1, #0xcc
	lsl	r1, #16
	ldr	r2, =0x2090000
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r0, #0xc]
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x80
	orr	r3, r5
	strb	r3, [r0]
	ldr	r2, =0x4ccc
	mov	r0, #0x16
	ldr	r1, =0x9999
	bl	__Func_92064
	ldr	r1, =.L458c
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0x15
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x15
	ldr	r1, =.L4628
	bl	__Func_9207c
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18ec
	bl	OvlFunc_4218
.L18ec:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_185c

.thumb_func_start OvlFunc_1920
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =.L5160
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__Func_923e4
	mov	r1, #0x86
	ldr	r2, =0x2a60000
	lsl	r1, #17
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0
	strh	r3, [r0, #6]
	ldr	r1, =.L4980
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0x15
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x15
	ldr	r1, =.L4628
	bl	__Func_9207c
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1996
	bl	OvlFunc_4218
.L1996:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1920

.thumb_func_start OvlFunc_19c0
	push	{r5, lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r2, #0x82
	add	r3, #0xec
	lsl	r2, #15
	str	r2, [r3]
	bl	__Func_916b0
	ldr	r0, =.L5418
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x18
	bl	__Func_92924
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__Func_923e4
	mov	r0, #0x17
	bl	__Func_92054
	mov	r5, #0xc0
	lsl	r5, #6
	strh	r5, [r0, #6]
	ldr	r0, =0x903
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a32
	mov	r1, #0xa2
	lsl	r1, #16
	ldr	r2, =0x27a0000
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0xa2
	mov	r2, #0xa9
	strh	r5, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x15
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xd0
	b	.L1a5e
.L1a32:
	mov	r1, #0xa0
	mov	r2, #0xa3
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0xa6
	mov	r2, #0xa7
	strh	r5, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x15
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xb0
.L1a5e:
	lsl	r3, #8
	strh	r3, [r0, #6]
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.L1a76
	bl	OvlFunc_3f30
.L1a76:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19c0

.thumb_func_start OvlFunc_1a98
	push	{lr}
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
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x17
	bl	__Func_923e4
	mov	r0, #0x17
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r1, #0xe8
	strh	r3, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x28a0000
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #1
	mov	r0, #0xe8
	mov	r2, #0x9f
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #0
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x17
	mov	r1, #0x15
	bl	OvlFunc_1c14
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a98

.thumb_func_start OvlFunc_1b58
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =.L5160
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xe8
	mov	r2, #0x9f
	lsl	r2, #18
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
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9335c
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x16
	bl	__Func_920a0
	mov	r0, #0x15
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r1, #0xe8
	strh	r3, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x28a0000
	mov	r0, #0x17
	bl	__Func_923e4
	mov	r0, #0x17
	bl	__Func_92054
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	mov	r1, #0x17
	bl	OvlFunc_1c14
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b58

.thumb_func_start OvlFunc_1c14
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r6, r1
	mov	r3, #0xe0
	ldr	r1, =iwram_1ebc
	lsl	r3, #1
	ldr	r2, [r1]
	mov	r10, r3
	mov	r8, r1
	sub	r3, #0xc0
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r5, r0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_bb8
	mov	r1, #0xd8
	mov	r2, #0x93
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x96
	mov	r0, r5
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x97
	mov	r0, r5
	mov	r1, #0xda
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x97
	mov	r0, r5
	mov	r1, #0xea
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, r5
	mov	r1, #0xec
	ldr	r2, =0x26a
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, r5
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, r5
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, r6
	lsl	r1, #7
	bl	OvlFunc_3a00
	mov	r2, #0x28
	mov	r0, r6
	mov	r1, #4
	bl	__Func_92560
	mov	r0, r6
	mov	r1, #2
	bl	__Func_9259c
	ldr	r0, =0x1e39
	bl	__Func_92b94
	mov	r0, r6
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
	mov	r0, #0xa
	bl	__Func_91e9c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c14

.thumb_func_start OvlFunc_1d0c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =.L5160
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
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	ldr	r0, =0x1e41
	bl	__Func_92b94
	mov	r2, #0xa
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x16
	bl	OvlFunc_3a00
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_9259c
	ldr	r0, =0x6016
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xb
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d0c

.thumb_func_start OvlFunc_1db0
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =.L5160
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =.L5208
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xf8
	mov	r2, #0xb6
	lsl	r2, #18
	mov	r0, #0x15
	lsl	r1, #16
	bl	__Func_923e4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91dc8
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0xad
	mov	r0, #0x15
	mov	r1, #0xf2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #0x15
	mov	r1, #0xc4
	ldr	r2, =0x2a6
	bl	__Func_921c4
	ldr	r2, =0x28e
	mov	r0, #0x15
	mov	r1, #0xb6
	bl	__Func_921c4
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	ldr	r0, =0x1e44
	bl	__Func_92b94
	ldr	r0, =0xa015
	bl	OvlFunc_39ec
	mov	r0, #0
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	mov	r1, #0x9a
	ldr	r2, =0x261
	mov	r0, #0
	bl	__Func_92128
	mov	r0, #0x92
	bl	__Func_f9080
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0x19
	bl	__Func_92054
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r1, #0x80
	add	r0, #0x64
	mov	r2, #0xf2
	strh	r5, [r0]
	lsl	r1, #14
	mov	r0, #0x18
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa8
	mov	r2, #0xf8
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x95
	mov	r0, #0x1a
	lsl	r1, #13
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x18
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	mov	r0, #0x19
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	ldr	r2, =0x13333
	mov	r0, #0x1a
	ldr	r1, =0x26666
	bl	__Func_92064
	ldr	r5, =.L44ec
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x19
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1a
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_92950
.L1ef4:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x18
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L1ef4
	bl	OvlFunc_bb8
	mov	r0, #0x15
	mov	r2, #0x99
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__Func_9218c
	mov	r0, #0x18
	bl	__Func_920e8
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_c5b4
	mov	r0, #0x15
	bl	__Func_93304
	ldr	r0, =0x1e45
	mov	r1, #1
	mov	r2, #0
	bl	__Func_19aa0
	bl	__Func_c5fc
	mov	r0, #0xc
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1db0

.thumb_func_start OvlFunc_1f90
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =.L5160
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =.L5268
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #0x1f
	bl	__Func_924d4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x1c
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x1d
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #0x80
	mov	r2, #0xa0
	lsl	r2, #18
	mov	r0, #0x16
	lsl	r1, #17
	bl	__Func_923e4
	ldr	r5, =.L480c
	mov	r0, #0x16
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, #0x86
	mov	r2, #0xad
	lsl	r2, #18
	mov	r0, #0x15
	lsl	r1, #17
	bl	__Func_923e4
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r1, #0xf2
	mov	r2, #0x97
	mov	r0, #0x18
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x84
	mov	r2, #0x96
	mov	r0, #0x19
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xfe
	mov	r2, #0xa7
	mov	r0, #0x1a
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x8d
	ldr	r2, =0x2920000
	lsl	r1, #17
	mov	r0, #0x1b
	bl	__Func_923e4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x63
	strb	r6, [r0]
	mov	r0, #0x19
	bl	__Func_92054
	mov	r5, #1
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x1a
	bl	__Func_92054
	add	r0, #0x63
	strb	r6, [r0]
	mov	r0, #0x1b
	bl	__Func_92054
	add	r0, #0x63
	strb	r5, [r0]
	ldr	r5, =.L47a8
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_9207c
	ldr	r5, =.L4764
	mov	r0, #0x1a
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1b
	bl	__Func_9207c
	mov	r1, #0
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xc8
	lsl	r0, #1
	bl	__Func_9163c
	mov	r1, #0xfe
	mov	r2, #0xb9
	mov	r0, #0x1c
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #0x1d
	lsl	r1, #13
	ldr	r2, =0x24a0000
	bl	__Func_923e4
	mov	r0, #0x1c
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #0x1d
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0xa1
	mov	r0, #0x1d
	mov	r1, #0xac
	lsl	r2, #2
	bl	__Func_92128
	mov	r2, #0xa5
	mov	r0, #0x1c
	mov	r1, #0xc8
	lsl	r2, #2
	bl	__Func_92158
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #10
	bl	__Func_92064
	mov	r2, #0x9b
	mov	r0, #0
	mov	r1, #0xae
	lsl	r2, #2
	bl	__Func_92128
	mov	r2, #0x91
	lsl	r2, #2
	mov	r1, #0xb4
	mov	r0, #0x1c
	bl	__Func_92158
	mov	r0, #0x92
	bl	__Func_f9080
	ldr	r5, =.L47ec
	mov	r0, #0x1c
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1d
	bl	__Func_9207c
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r1, #0x86
	ldr	r2, =0x2520000
	mov	r0, #0x1f
	lsl	r1, #16
	bl	__Func_923e4
	ldr	r1, =.L4814
	mov	r0, #0x1f
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x86
	mov	r2, #0x92
	mov	r0, #0x1e
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #0x1e
	bl	__Func_92064
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #12
	mov	r2, #0x99
	str	r3, [r0, #0x28]
	lsl	r2, #2
	mov	r1, #0xba
	mov	r0, #0x1e
	bl	__Func_92158
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1e
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0x96
	lsl	r2, #2
	mov	r0, #0x1e
	mov	r1, #0xd8
	bl	__Func_92158
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #0x1e
	bl	OvlFunc_3a00
	bl	OvlFunc_bb8
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r5, =.L4888
	mov	r0, #0x1e
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0x1c
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0x1d
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x93
	bl	__Func_f9080
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x18
	bl	__Func_920a0
	mov	r0, #0x19
	bl	__Func_920a0
	mov	r0, #0x1a
	bl	__Func_920a0
	mov	r0, #0x1b
	bl	__Func_920a0
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_c5b4
	mov	r0, #0x15
	bl	__Func_93304
	ldr	r0, =0x1e45
	mov	r1, #1
	mov	r2, #0
	bl	__Func_19aa0
	bl	__Func_c5fc
	mov	r0, #0xd
	bl	__Func_91e9c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f90

.thumb_func_start OvlFunc_22c0
	push	{r5, r6, r7, lr}
	bl	__Func_916b0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =.L5160
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =.L5340
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xb0
	mov	r2, #0xae
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r1, #0x84
	strh	r3, [r0, #6]
	lsl	r1, #17
	ldr	r2, =0x2960000
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r1, #0xb8
	mov	r2, #0xa8
	strh	r3, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xca
	mov	r2, #0xad
	mov	r0, #0x19
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xfc
	mov	r0, #0x1a
	lsl	r1, #16
	ldr	r2, =0x2860000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #17
	ldr	r2, =0x2ae0000
	bl	__Func_923e4
	mov	r1, #0xac
	mov	r2, #0x9e
	mov	r0, #0x1c
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x80
	lsl	r1, #17
	ldr	r2, =0x26e0000
	mov	r0, #0x1d
	bl	__Func_923e4
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r5, .L23b8	@ 0
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x19
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x63
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__Func_92054
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x63
	strb	r3, [r0]
	mov	r2, #0
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_923e4
	ldr	r5, =.L48c4
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_9207c
	b	.L23d8

	.align	2, 0
.L23b8:
	.word	0
	.pool

.L23d8:
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_9207c
	ldr	r5, =.L48b0
	mov	r0, #0x1a
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1b
	bl	__Func_9207c
	ldr	r5, =.L48d8
	mov	r0, #0x1c
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1d
	bl	__Func_9207c
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0x1c
	mov	r1, #3
	bl	__Func_92950
	mov	r1, #3
	mov	r0, #0x1d
	bl	__Func_92950
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r0, #0x1f
	bl	__Func_92054
	ldr	r3, =0x1999
	mov	r6, r0
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r3, #0xc2
	lsl	r3, #16
	str	r3, [r6, #8]
	ldr	r3, =0x2820000
	ldr	r7, =0xf5c
	str	r3, [r6, #0x10]
	mov	r5, #0
.L2472:
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0xf
	bls	.L2472
	mov	r0, #0x1e
	bl	__Func_92054
	ldr	r3, =0x11999
	mov	r6, r0
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r3, #0xc2
	lsl	r3, #16
	str	r3, [r6, #8]
	mov	r3, #0xa0
	lsl	r3, #15
	str	r3, [r6, #0xc]
	ldr	r3, =0x2820000
	str	r3, [r6, #0x10]
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r6, #6]
	ldr	r3, =0x6666
	str	r3, [r6, #0x44]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x48]
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1f
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r6, r0
	ldr	r5, .L252c	@ 0
	mov	r3, r6
	add	r3, #0x55
	mov	r2, #0x99
	strb	r5, [r3]
	mov	r0, #0
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_92128
	mov	r0, #0x1e
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0x96
	mov	r0, #0x1e
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__Func_92158
	mov	r2, #0x96
	mov	r1, #0xd8
	lsl	r2, #2
	mov	r0, #0x1e
	bl	__Func_92158
	mov	r0, #0x1c
	bl	__Func_920a0
	b	.L2558

	.align	2, 0
.L252c:
	.word	0
	.pool

.L2558:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =0xcccc
	mov	r0, #0x1c
	ldr	r1, =0x19999
	bl	__Func_92064
	ldr	r5, =.L4888
	mov	r0, #0x1c
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x1e
	bl	OvlFunc_3a00
	bl	OvlFunc_bb8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0x1e
	bl	__Func_9207c
	mov	r0, #0x1d
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =0xcccc
	mov	r0, #0x1d
	ldr	r1, =0x19999
	bl	__Func_92064
	mov	r1, r5
	mov	r0, #0x1d
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x18
	bl	__Func_920a0
	mov	r0, #0x19
	bl	__Func_920a0
	mov	r0, #0x1a
	bl	__Func_920a0
	mov	r0, #0x1b
	bl	__Func_920a0
	mov	r0, #0x1c
	bl	__Func_920a0
	mov	r0, #0x1d
	bl	__Func_920a0
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_c5b4
	mov	r0, #0x15
	bl	__Func_93304
	ldr	r0, =0x1e45
	mov	r1, #1
	mov	r2, #0
	bl	__Func_19aa0
	bl	__Func_c5fc
	mov	r0, #0xe
	bl	__Func_91e9c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22c0

.thumb_func_start OvlFunc_2618
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =.L5418
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_9335c
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #5
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	ldr	r3, =iwram_1ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	ldr	r2, =0x202
	lsl	r0, #1
	add	r3, r0
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_bb8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xd8
	mov	r0, #0
	lsl	r1, #16
	ldr	r2, =0x24a0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	ldr	r2, =0x256
	mov	r1, #0xd8
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_3a00
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0xa
	bl	__Func_92560
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0x9c
	mov	r1, #0xc2
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0xb5
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x19
	bl	__Func_92054
	ldr	r5, .L275c	@ 0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r5, [r0]
	lsl	r1, #10
	mov	r0, #0x19
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0x99
	lsl	r2, #2
	mov	r1, #0xd8
	mov	r0, #0x19
	bl	__Func_92128
	mov	r0, #0x95
	bl	__Func_f9080
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_92b08
	mov	r1, #5
	mov	r0, #0x16
	bl	__Func_924d4
	mov	r0, #0x16
	bl	__Func_92054
	b	.L2780

	.align	2, 0
.L275c:
	.word	0
	.pool

.L2780:
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	ldr	r3, =0xb333
	str	r3, [r0, #0x48]
	mov	r3, #0xd0
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r5, #0x80
	ldr	r3, =OvlFunc_8c0
	lsl	r5, #8
	mov	r1, #0xc0
	mov	r2, #0xc0
	str	r3, [r0, #0x6c]
	str	r5, [r0, #0x44]
	lsl	r1, #11
	mov	r0, #0x16
	lsl	r2, #10
	bl	__Func_92064
	ldr	r2, =0x26a
	mov	r1, #0xb6
	mov	r0, #0x16
	bl	__Func_92158
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_3a00
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0x50
	bl	__Func_92560
	mov	r2, #0x8d
	mov	r0, #0x19
	mov	r1, #0xe8
	lsl	r2, #2
	bl	__Func_92128
	mov	r0, #0
	mov	r1, #0xcc
	ldr	r2, =0x262
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0xd0
	ldr	r2, =0x256
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0xf8
	ldr	r2, =0x256
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2812
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L2812:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2826
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L2826:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L283a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L283a:
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #2
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_92064
	mov	r2, #0x92
	mov	r0, #0
	mov	r1, #0xfa
	lsl	r2, #2
	bl	__Func_9218c
	mov	r2, #0x96
	mov	r0, #1
	mov	r1, #0xf0
	lsl	r2, #2
	bl	__Func_9218c
	mov	r2, #0x96
	mov	r0, #2
	mov	r1, #0xfe
	lsl	r2, #2
	bl	__Func_9218c
	mov	r2, #0x9a
	lsl	r2, #2
	mov	r0, #3
	mov	r1, #0xf8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
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
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x95
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
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
	mov	r2, #0x8d
	mov	r0, #0
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_9218c
	mov	r2, #0x8d
	mov	r1, #0xf8
	lsl	r2, #2
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x8d
	mov	r0, #2
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_9218c
	mov	r2, #0x8d
	mov	r1, #0xf8
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r2, =ewram_240
	mov	r0, #0xe2
	ldr	r1, =0x6f
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #0x1e
	strh	r3, [r1]
	add	r0, #0x67
	add	r2, r0
	mov	r3, #3
	strb	r3, [r2]
	ldr	r0, =0x6d
	mov	r1, #0x10
	bl	__Func_91f90
	mov	r0, #0x3e
	mov	r1, #3
	bl	__Func_91eb0
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2618

.thumb_func_start OvlFunc_29d4
	push	{r5, r6, lr}
	bl	__Func_916b0
	ldr	r0, =.L5160
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xb6
	mov	r0, #0x14
	lsl	r1, #16
	ldr	r2, =0x26a0000
	bl	__Func_923e4
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__Func_923e4
	mov	r1, #0x86
	ldr	r2, =0x2a60000
	lsl	r1, #17
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r3, #0
	strh	r3, [r0, #6]
	ldr	r1, =.L4980
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r0]
	ldr	r2, =0x6666
	mov	r0, #0x15
	ldr	r1, =0xcccc
	bl	__Func_92064
	ldr	r1, =.L4628
	mov	r0, #0x15
	bl	__Func_9207c
	ldr	r5, =iwram_1ebc
	mov	r6, #0xe0
	ldr	r2, [r5]
	mov	r3, #0x80
	lsl	r3, #1
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0x89
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xb6
	bl	__Func_921c4
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_3a00
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_3a00
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	ldr	r0, =0x1ee1
	bl	__Func_92b94
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0x14
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0
	mov	r0, #0x14
	bl	OvlFunc_3a00
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x96
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x96
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xd8
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_3a00
	bl	OvlFunc_bb8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x91
	mov	r0, #0x14
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_923e4
	ldr	r2, [r5]
	ldr	r3, =0x209
	ldr	r0, =0x92b
	str	r3, [r2, r6]
	bl	__Func_79358
	ldr	r0, =0x302
	bl	__Func_79374
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_29d4

.thumb_func_start OvlFunc_2b7c
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =.L5160
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xc4
	mov	r2, #0xfb
	lsl	r1, #16
	lsl	r2, #17
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r1, #0xb8
	mov	r2, #0x83
	strh	r3, [r0, #6]
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r5, #0xb0
	lsl	r5, #8
	strh	r5, [r0, #6]
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_92b08
	mov	r1, #0xb8
	mov	r2, #0x9e
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r3, =iwram_1ebc
	strh	r5, [r0, #6]
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
	mov	r0, #0x16
	mov	r1, #4
	mov	r2, #0xa
	bl	__Func_92560
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #0x16
	bl	__Func_92560
	ldr	r0, =0x1ee5
	bl	__Func_92b94
	mov	r0, #0x16
	bl	OvlFunc_39ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0x15
	mov	r1, #0xb4
	ldr	r2, =0x222
	bl	__Func_921c4
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x15
	bl	OvlFunc_39ec
	mov	r0, #0xf
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b7c

.thumb_func_start OvlFunc_2c84
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x34
	mov	r1, #4
	mov	r6, #0
	add	r1, sp
	mov	r7, #0
	add	r4, sp, #0x24
	mov	r8, r1
	mov	r10, r6
	mov	r5, #0
.L2c9e:
	mov	r0, r6
	str	r4, [sp]
	bl	OvlFunc_3150
	ldr	r4, [sp]
	mov	r3, r10
	mov	r2, r8
	add	r6, #1
	str	r0, [r5, r4]
	str	r3, [r5, r2]
	add	r5, #4
	cmp	r6, #3
	bls	.L2c9e
	ldr	r3, [r4]
	mov	r1, #0x17
	mov	r6, #0
	cmp	r3, #0x17
	bne	.L2cca
	add	r2, sp, #0x14
	mov	r3, r8
	str	r1, [r2, r6]
	b	.L2cde
.L2cca:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2ce6
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2cca
	add	r2, sp, #0x14
	mov	r3, r8
	str	r1, [r2]
.L2cde:
	mov	r10, r2
	str	r7, [r3]
	mov	r7, #1
	b	.L2cea
.L2ce6:
	add	r1, sp, #0x14
	mov	r10, r1
.L2cea:
	ldr	r3, [r4]
	mov	r1, #0x18
	mov	r6, #0
	cmp	r3, #0x18
	beq	.L2d02
.L2cf4:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2d0e
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2cf4
.L2d02:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.L2d0e:
	ldr	r3, [r4]
	mov	r1, #0x19
	mov	r6, #0
	cmp	r3, #0x19
	beq	.L2d26
.L2d18:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2d32
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2d18
.L2d26:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.L2d32:
	ldr	r3, [r4]
	mov	r1, #0x1b
	mov	r6, #0
	cmp	r3, #0x1b
	beq	.L2d4a
.L2d3c:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2d56
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2d3c
.L2d4a:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.L2d56:
	cmp	r7, #4
	beq	.L2e22
	ldr	r3, [r4]
	mov	r1, #0x1c
	mov	r6, #0
	cmp	r3, #0x1c
	beq	.L2d72
.L2d64:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2d7e
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2d64
.L2d72:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.L2d7e:
	cmp	r7, #4
	beq	.L2e22
	ldr	r3, [r4]
	mov	r1, #0x1d
	mov	r6, #0
	cmp	r3, #0x1d
	beq	.L2d9a
.L2d8c:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2da6
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2d8c
.L2d9a:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.L2da6:
	cmp	r7, #4
	beq	.L2e22
	ldr	r3, [r4]
	mov	r1, #0x1a
	mov	r6, #0
	cmp	r3, #0x1a
	beq	.L2dc2
.L2db4:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2dd0
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2db4
.L2dc2:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0xa
	mov	r1, r8
	str	r3, [r1, r2]
	add	r7, #1
.L2dd0:
	cmp	r7, #4
	beq	.L2e22
	ldr	r3, [r4]
	mov	r1, #0x1e
	mov	r6, #0
	cmp	r3, #0x1e
	beq	.L2dec
.L2dde:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2dfa
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2dde
.L2dec:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0xb
	mov	r1, r8
	str	r3, [r1, r2]
	add	r7, #1
.L2dfa:
	cmp	r7, #4
	beq	.L2e22
	ldr	r3, [r4]
	mov	r1, #0x1f
	mov	r6, #0
	cmp	r3, #0x1f
	beq	.L2e16
.L2e08:
	add	r6, #1
	cmp	r6, #3
	bhi	.L2e22
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.L2e08
.L2e16:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0x14
	mov	r1, r8
	str	r3, [r1, r2]
.L2e22:
	bl	__Func_916b0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2e4e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x20
	bl	__Func_923e4
.L2e4e:
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x20
	mov	r1, #1
	bl	__Func_9335c
	bl	OvlFunc_bb8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r6, #0
.L2e70:
	lsl	r7, r6, #2
	mov	r2, r10
	ldr	r5, [r2, r7]
	mov	r1, #0xd8
	mov	r2, #0x92
	lsl	r1, #16
	mov	r0, r5
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, r8
	ldr	r3, [r1, r7]
	cmp	r3, #0x14
	bne	.L2e98
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	b	.L2ea6
.L2e98:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
.L2ea6:
	mov	r2, #0x96
	mov	r0, r5
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, r5
	mov	r1, #0xc0
	ldr	r2, =0x26a
	bl	__Func_921c4
	mov	r2, #0xa4
	lsl	r2, #2
	mov	r0, r5
	mov	r1, #0xc0
	bl	__Func_921c4
	mov	r2, r8
	ldr	r3, [r2, r7]
	cmp	r3, #0x14
	bhi	.L2fb8
	ldr	r2, =.L2ed8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2ed8:
	.word	.L2f2c
	.word	.L2f40
	.word	.L2f5e
	.word	.L2f70
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2f80
	.word	.L2f90
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fb8
	.word	.L2fa0
.L2f2c:
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x1ee7
	bl	__Func_92b94
	b	.L2fb8
.L2f40:
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, r5
	bl	OvlFunc_3a00
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x1ee8
	bl	__Func_92b94
	b	.L2fb8
.L2f5e:
	mov	r0, r5
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x1ee9
	bl	__Func_92b94
	b	.L2fb8
.L2f70:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_925cc
	ldr	r0, =0x1eea
	bl	__Func_92b94
	b	.L2fb8
.L2f80:
	mov	r0, r5
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x1eeb
	bl	__Func_92b94
	b	.L2fb8
.L2f90:
	mov	r0, r5
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x1eec
	bl	__Func_92b94
	b	.L2fb8
.L2fa0:
	mov	r0, r5
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r5
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r0, =0x1eed
	bl	__Func_92b94
.L2fb8:
	mov	r0, r5
	bl	OvlFunc_39ec
	add	r6, #1
	ldr	r1, =.L48e0
	mov	r0, r5
	bl	__Func_9207c
	cmp	r6, #3
	bhi	.L2fce
	b	.L2e70
.L2fce:
	mov	r0, r5
	bl	__Func_920e8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xd8
	mov	r2, #0x92
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x96
	mov	r0, #0
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x99
	mov	r1, #0xbe
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_921c4
	ldr	r0, =0x1eee
	bl	__Func_92b94
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x20
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0x20
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0x8d
	mov	r0, #0x20
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__Func_92128
	mov	r0, #0x14
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0xb6
	ldr	r2, =0x22b
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0x14
	mov	r5, #0xc0
	bl	__Func_92adc
	lsl	r5, #6
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r1, r5
	mov	r0, #0x14
	bl	OvlFunc_3a00
	mov	r0, #0x14
	bl	OvlFunc_39ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0x80
	mov	r0, #0x14
	mov	r1, #0xbc
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, r5
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x20
	bl	__Func_923e4
	ldr	r0, =0x12f
	bl	__Func_79374
	bl	__Func_91750
	add	sp, #0x34
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c84

.thumb_func_start OvlFunc_3150
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #0x17
	cmp	r0, #1
	beq	.L316c
	cmp	r0, #1
	bcc	.L3168
	cmp	r0, #2
	beq	.L3170
	cmp	r0, #3
	beq	.L3178
	b	.L317c
.L3168:
	ldr	r6, =0x92c
	b	.L317c
.L316c:
	ldr	r6, =0x935
	b	.L317c
.L3170:
	ldr	r6, =0x917
	b	.L317c
.L3174:
	mov	r0, r7
	b	.L3194
.L3178:
	mov	r6, #0x99
	lsl	r6, #4
.L317c:
	mov	r5, #0
.L317e:
	mov	r0, r6
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3174
	add	r5, #1
	add	r6, #1
	add	r7, #1
	cmp	r5, #8
	bls	.L317e
	mov	r0, #0
.L3194:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3150

.thumb_func_start OvlFunc_31a8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_1e70
	ldr	r0, =.L5b58
	ldr	r3, [r3]
	mov	r8, r0
	ldr	r0, [r0]
	ldr	r6, [r3]
	mov	r9, r3
	bl	__Func_231c
	ldr	r1, =.L5b38
	mov	r5, r0
	ldr	r0, [r1]
	mov	r10, r1
	bl	__Func_2322
	ldr	r3, [r6]
	asr	r5, #1
	add	r3, r5
	stmia	r6!, {r3}
	ldr	r3, [r6]
	add	r3, r0
	str	r3, [r6]
	bl	__Func_4458
	lsl	r3, r0, #1
	mov	r5, r8
	add	r3, r0
	ldr	r2, [r5]
	lsl	r3, #7
	lsr	r3, #16
	add	r2, r3
	str	r2, [r5]
	bl	__Func_4458
	mov	r1, r10
	ldr	r3, [r1]
	lsl	r0, #9
	ldrh	r2, [r5]
	lsr	r0, #16
	ldr	r1, =0xffff
	add	r3, r0
	str	r2, [r5]
	and	r3, r1
	mov	r2, r10
	str	r3, [r2]
	ldr	r1, =.L5b50
	mov	r0, #0x82
	ldr	r3, [r1]
	lsl	r0, #1
	add	r0, r9
	str	r3, [r0, #8]
	ldr	r4, =.L5b60
	ldr	r2, [r1]
	ldr	r3, [r4]
	sub	r2, r3
	str	r2, [r1]
	cmp	r2, #0
	bge	.L3230
	mov	r5, #0x80
	lsl	r5, #14
	add	r3, r2, r5
	str	r3, [r1]
.L3230:
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #14
	cmp	r3, r2
	ble	.L3240
	ldr	r5, =0xffe00000
	add	r3, r5
	str	r3, [r1]
.L3240:
	ldr	r3, [r1, #4]
	str	r3, [r0, #0xc]
	ldr	r2, [r1, #4]
	ldr	r3, [r4, #4]
	sub	r2, r3
	str	r2, [r1, #4]
	cmp	r2, #0
	bge	.L3258
	mov	r0, #0x80
	lsl	r0, #14
	add	r3, r2, r0
	str	r3, [r1, #4]
.L3258:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_31a8

.thumb_func_start OvlFunc_3284
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #8
	bl	OvlFunc_3380
	mov	r0, #9
	bl	OvlFunc_3380
	mov	r0, #0xa
	bl	OvlFunc_3380
	mov	r0, #0xb
	bl	OvlFunc_3380
	mov	r0, #0xc
	bl	OvlFunc_3380
	mov	r0, #0xd
	bl	OvlFunc_3380
	mov	r0, #0xe
	bl	OvlFunc_3380
	mov	r0, #0xf
	bl	OvlFunc_3380
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r6, =.L5b90
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r6]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xe
	str	r3, [r6, #4]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	str	r3, [r6, #8]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x10
	str	r3, [r6, #0xc]
	bl	OvlFunc_3380
	mov	r0, #0x11
	bl	OvlFunc_3380
	mov	r0, #0x12
	bl	OvlFunc_3380
	mov	r0, #0x13
	bl	OvlFunc_3380
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x11
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0x12
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0x13
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x11
	str	r3, [r6, #0x10]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	str	r3, [r6, #0x14]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	str	r3, [r6, #0x18]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #0x1c]
	bl	OvlFunc_33b8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3284

.thumb_func_start OvlFunc_3380
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L33b2
	mov	r0, r6
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #0
	mov	r0, r5
	bl	__Func_c528
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.L33b2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3380

.thumb_func_start OvlFunc_33b8
	push	{r5, r6, r7, lr}
	ldr	r6, =.L5b70
	mov	r5, #0
	mov	r7, #3
.L33c0:
	mov	r0, r5
	bl	OvlFunc_3150
	cmp	r0, #0
	beq	.L33d4
	mov	r0, r5
	bl	OvlFunc_3464
	str	r0, [r6]
	b	.L33d6
.L33d4:
	str	r7, [r6]
.L33d6:
	add	r5, #1
	add	r6, #4
	cmp	r5, #3
	bls	.L33c0
	mov	r0, #0
	bl	OvlFunc_3150
	cmp	r0, #0
	beq	.L33f4
	mov	r0, #0
	bl	OvlFunc_3464
	ldr	r3, =.L5b70
	str	r0, [r3]
	b	.L33fa
.L33f4:
	ldr	r2, =.L5b70
	mov	r3, #3
	str	r3, [r2]
.L33fa:
	mov	r0, #2
	bl	OvlFunc_3150
	cmp	r0, #0
	beq	.L3410
	mov	r0, #2
	bl	OvlFunc_3464
	ldr	r3, =.L5b70
	str	r0, [r3, #4]
	b	.L3416
.L3410:
	ldr	r2, =.L5b70
	mov	r3, #3
	str	r3, [r2, #4]
.L3416:
	ldr	r6, =.L5b70
	mov	r5, #3
	str	r5, [r6, #8]
	str	r5, [r6, #0xc]
	mov	r0, #1
	bl	OvlFunc_3150
	cmp	r0, #0
	beq	.L3432
	mov	r0, #1
	bl	OvlFunc_3464
	str	r0, [r6, #0x10]
	b	.L3434
.L3432:
	str	r5, [r6, #0x10]
.L3434:
	mov	r0, #3
	bl	OvlFunc_3150
	cmp	r0, #0
	beq	.L344a
	mov	r0, #3
	bl	OvlFunc_3464
	ldr	r3, =.L5b70
	str	r0, [r3, #0x14]
	b	.L3450
.L344a:
	ldr	r2, =.L5b70
	mov	r3, #3
	str	r3, [r2, #0x14]
.L3450:
	ldr	r2, =.L5b70
	mov	r3, #3
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_33b8

.thumb_func_start OvlFunc_3464
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.L347e
	cmp	r0, #1
	bcc	.L347a
	cmp	r0, #2
	beq	.L3482
	cmp	r0, #3
	beq	.L348e
	b	.L3492
.L347a:
	ldr	r6, =0x92c
	b	.L3492
.L347e:
	ldr	r6, =0x935
	b	.L3492
.L3482:
	ldr	r6, =0x917
	b	.L3492
.L3486:
	ldr	r3, =.L5b08
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.L34a6
.L348e:
	mov	r6, #0x99
	lsl	r6, #4
.L3492:
	mov	r5, #0
.L3494:
	add	r0, r6, r5
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3486
	add	r5, #1
	cmp	r5, #8
	bls	.L3494
	mov	r0, #0
.L34a6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3464

.thumb_func_start OvlFunc_34bc
	push	{r5, lr}
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_3558
	ldr	r5, =.L5b30
	mov	r3, #0
	strh	r3, [r5]
	mov	r0, #9
	mov	r1, #1
	bl	OvlFunc_3558
	ldrh	r3, [r5, #2]
	add	r3, #0x80
	strh	r3, [r5, #2]
	mov	r0, #0xa
	mov	r1, #2
	bl	OvlFunc_3558
	ldrh	r3, [r5, #4]
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r2
	strh	r3, [r5, #4]
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_3558
	ldrh	r3, [r5, #6]
	mov	r2, #0x80
	lsl	r2, #2
	add	r3, r2
	strh	r3, [r5, #6]
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_35ec
	mov	r0, #0xd
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_35ec
	mov	r0, #0xe
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_35ec
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_35ec
	mov	r0, #0x10
	mov	r1, #4
	mov	r2, #1
	bl	OvlFunc_35ec
	mov	r0, #0x11
	mov	r1, #5
	mov	r2, #1
	bl	OvlFunc_35ec
	mov	r0, #0x12
	mov	r1, #6
	mov	r2, #1
	bl	OvlFunc_35ec
	mov	r0, #0x13
	mov	r1, #7
	mov	r2, #1
	bl	OvlFunc_35ec
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_34bc

.thumb_func_start OvlFunc_3558
	push	{r5, lr}
	ldr	r3, =.L5b40
	lsl	r1, #1
	ldr	r4, =0xffff97ff
	ldrh	r2, [r3, r1]
	ldr	r5, =0x7fe0000
	add	r3, r2, r4
	lsl	r3, #16
	ldr	r4, =0x7fe
	cmp	r3, r5
	bhi	.L3576
	ldr	r2, =.L5b30
	ldrh	r3, [r2, r1]
	add	r3, #0x70
	b	.L3588
.L3576:
	ldr	r5, =0x17ff
	add	r3, r2, r5
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r4
	bhi	.L3592
	ldr	r2, =.L5b30
	ldrh	r3, [r2, r1]
	add	r3, #0xe0
.L3588:
	strh	r3, [r2, r1]
	mov	r1, #3
	bl	__Func_924d4
	b	.L35c4
.L3592:
	ldr	r4, =0xffff8fff
	ldr	r5, =0x7ffe0000
	add	r3, r2, r4
	lsl	r3, #16
	cmp	r3, r5
	bhi	.L35b2
	ldr	r2, =.L5b30
	mov	r4, #0xe0
	ldrh	r3, [r2, r1]
	lsl	r4, #1
	add	r3, r4
	strh	r3, [r2, r1]
	mov	r1, #2
	bl	__Func_924d4
	b	.L35c4
.L35b2:
	ldr	r2, =.L5b30
	mov	r5, #0xc0
	ldrh	r3, [r2, r1]
	lsl	r5, #2
	add	r3, r5
	strh	r3, [r2, r1]
	mov	r1, #1
	bl	__Func_924d4
.L35c4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3558

.thumb_func_start OvlFunc_35ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r9, r2
	mov	r7, r0
	bl	__Func_92054
	mov	r3, #2
	ldr	r1, [r0, #0x50]
	mov	r2, r9
	and	r3, r2
	mov	r10, r0
	mov	r11, r1
	cmp	r3, #0
	bne	.L3684
	ldr	r3, =.L5b70
	lsl	r1, r5, #2
	ldr	r3, [r3, r1]
	mov	r8, r1
	cmp	r3, #2
	beq	.L3648
	cmp	r3, #2
	bhi	.L362a
	cmp	r3, #1
	beq	.L3634
	b	.L3688
.L362a:
	cmp	r3, #3
	beq	.L365c
	cmp	r3, #4
	beq	.L3670
	b	.L3688
.L3634:
	ldr	r2, =.L5b30
	ldr	r3, =.L5b40
	ldrh	r2, [r2]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #8
	bl	__Func_92b54
	b	.L368a
.L3648:
	ldr	r2, =.L5b30
	ldr	r3, =.L5b40
	ldrh	r2, [r2, #2]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #9
	bl	__Func_92b54
	b	.L368a
.L365c:
	ldr	r2, =.L5b30
	ldr	r3, =.L5b40
	ldrh	r2, [r2, #4]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #0xa
	bl	__Func_92b54
	b	.L368a
.L3670:
	ldr	r2, =.L5b30
	ldr	r3, =.L5b40
	ldrh	r2, [r2, #6]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #0xb
	bl	__Func_92b54
	b	.L368a
.L3684:
	lsl	r2, r5, #2
	mov	r8, r2
.L3688:
	lsl	r6, r5, #1
.L368a:
	mov	r3, #1
	mov	r1, r9
	and	r3, r1
	cmp	r3, #0
	beq	.L36c0
	ldr	r5, =.L5b40
	ldrh	r0, [r5, r6]
	bl	__Func_2322
	mov	r2, #0x80
	mov	r7, r0
	ldrh	r0, [r5, r6]
	lsl	r2, #8
	add	r0, r2
	bl	__Func_2322
	mov	r3, r11
	asr	r0, #5
	strh	r0, [r3, #0x1e]
	ldr	r3, =.L5b90
	mov	r1, r8
	ldr	r3, [r3, r1]
	lsl	r2, r7, #2
	sub	r3, r2
	lsl	r2, r7, #1
	sub	r3, r2
	b	.L36ea
.L36c0:
	ldr	r5, =.L5b40
	mov	r3, #0x80
	ldrh	r0, [r5, r6]
	lsl	r3, #8
	add	r0, r3
	bl	__Func_2322
	mov	r7, r0
	ldrh	r0, [r5, r6]
	bl	__Func_2322
	mov	r1, r11
	asr	r0, #5
	strh	r0, [r1, #0x1e]
	ldr	r3, =.L5b90
	mov	r1, r8
	ldr	r3, [r3, r1]
	lsl	r2, r7, #2
	add	r3, r2
	lsl	r2, r7, #1
	add	r3, r2
.L36ea:
	mov	r2, r10
	str	r3, [r2, #0x10]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_35ec

.thumb_func_start OvlFunc_3710
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =0xc000
	ldr	r3, =.L5b40
	mov	r2, #0
	b	.L3728

	.pool_aligned

.L3728:
	add	r2, #1
	strh	r1, [r3]
	add	r3, #2
	cmp	r2, #7
	bls	.L3728
	mov	r0, #8
	bl	OvlFunc_3380
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
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_923e4
	mov	r0, #0xd
	bl	OvlFunc_3380
	mov	r0, #0xe
	bl	OvlFunc_3380
	mov	r0, #0xf
	bl	OvlFunc_3380
	ldr	r2, =.L5b70
	mov	r6, #0
	str	r6, [r2]
	str	r6, [r2, #4]
	str	r6, [r2, #8]
	str	r6, [r2, #0xc]
	mov	r0, #8
	mov	r8, r2
	bl	__Func_92054
	ldr	r3, =.L5b90
	mov	r10, r3
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #4]
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #8]
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r0, #0x10
	bl	OvlFunc_3380
	mov	r0, #0x11
	bl	OvlFunc_3380
	mov	r0, #0x12
	bl	OvlFunc_3380
	mov	r0, #0x13
	bl	OvlFunc_3380
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x11
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0x12
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, r8
	str	r5, [r0, #0x18]
	str	r6, [r3, #0x10]
	str	r6, [r3, #0x14]
	str	r6, [r3, #0x18]
	str	r6, [r3, #0x1c]
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x10]
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x14]
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x18]
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x1c]
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L383c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__Func_923e4
.L383c:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xd
	mov	r1, #8
	bl	__Func_92b54
	mov	r0, #0xe
	mov	r1, #8
	bl	__Func_92b54
	mov	r0, #0xf
	mov	r1, #8
	bl	__Func_92b54
	mov	r0, #0x10
	mov	r1, #8
	bl	__Func_92b54
	mov	r0, #0x11
	mov	r1, #8
	bl	__Func_92b54
	mov	r0, #0x12
	mov	r1, #8
	bl	__Func_92b54
	mov	r1, #8
	mov	r0, #0x13
	bl	__Func_92b54
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #1
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__Func_92054
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0x12
	bl	__Func_92054
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x84
	mov	r2, #0x9e
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_35ec
	mov	r0, #0xd
	mov	r1, #1
	mov	r2, #2
	bl	OvlFunc_35ec
	mov	r0, #0xe
	mov	r1, #2
	mov	r2, #2
	bl	OvlFunc_35ec
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #2
	bl	OvlFunc_35ec
	mov	r0, #0x10
	mov	r1, #4
	mov	r2, #3
	bl	OvlFunc_35ec
	mov	r0, #0x11
	mov	r1, #5
	mov	r2, #3
	bl	OvlFunc_35ec
	mov	r0, #0x12
	mov	r1, #6
	mov	r2, #3
	bl	OvlFunc_35ec
	mov	r0, #0x13
	mov	r1, #7
	mov	r2, #3
	bl	OvlFunc_35ec
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3710

.thumb_func_start OvlFunc_3950
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r5, #1
	mov	r6, #5
	mov	r0, #0x4e
	mov	r1, #0x27
	mov	r2, #0x4e
	mov	r3, #0x28
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4e
	mov	r1, #0x27
	mov	r2, #0x4e
	mov	r3, #0x29
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #4
	str	r3, [sp]
	mov	r0, #0x4e
	mov	r1, #0x27
	mov	r2, #0x4f
	mov	r3, #0x2a
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4e
	mov	r1, #0x27
	mov	r2, #0x52
	mov	r3, #0x2b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x11
	mov	r2, #0x28
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x26
	mov	r2, #5
	mov	r3, #2
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3950

.thumb_func_start OvlFunc_39b8
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r5, #5
	mov	r0, #0x42
	mov	r1, #0x3d
	mov	r2, #0x40
	mov	r3, #0x28
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0x27
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #5
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_39b8

.thumb_func_start OvlFunc_39ec
	push	{lr}
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_39ec

.thumb_func_start OvlFunc_3a00
	push	{lr}
	mov	r2, #0xa
	bl	__Func_92adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a00

.thumb_func_start OvlFunc_3a0c
	push	{r5, r6, lr}
	bl	__Func_916b0
	ldr	r2, =.L5b50
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r2]
	ldr	r3, =0xffff8000
	ldr	r2, =.L5b60
	ldr	r0, =.L5160
	str	r3, [r2]
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xb6
	lsl	r1, #16
	ldr	r2, =0x26a0000
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r1, #0xda
	mov	r2, #0x81
	strh	r3, [r0, #6]
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r5, #0xb0
	lsl	r5, #8
	mov	r1, #0xcc
	strh	r5, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x20e0000
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r2, #0
	strh	r5, [r0, #6]
	mov	r1, #0
	mov	r0, #0x17
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
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x85
	mov	r0, #0x15
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x15
	bl	__Func_92adc
	ldr	r0, =0x1f23
	bl	__Func_92b94
	mov	r0, #0x15
	bl	OvlFunc_39ec
	ldr	r6, =0x6014
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, r6
	bl	OvlFunc_39ec
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, r6
	bl	OvlFunc_39ec
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x16
	bl	__Func_93874
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0xfa
	mov	r0, #0x15
	mov	r1, #0xc2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, r5
	mov	r0, #0x15
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x16
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x16
	mov	r1, #0xc0
	ldr	r2, =0x206
	bl	__Func_921c4
	mov	r1, r5
	mov	r0, #0x16
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xfe
	lsl	r2, #1
	mov	r0, #0x14
	mov	r1, #0xd2
	bl	__Func_921c4
	mov	r1, r5
	mov	r0, #0x14
	bl	OvlFunc_3a00
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	ldr	r0, =0x5015
	bl	OvlFunc_39ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x16
	bl	OvlFunc_3a00
	ldr	r0, =0x9016
	bl	OvlFunc_39ec
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_924d4
	ldr	r0, =0xa014
	bl	OvlFunc_39ec
	mov	r2, #0x86
	mov	r0, #0x14
	mov	r1, #0xcc
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, r5
	mov	r0, #0x16
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x89
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xa6
	mov	r1, #0xb6
	lsl	r2, #2
	mov	r0, #0x14
	bl	__Func_9218c
	mov	r0, #0x28
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x10
	bl	__Func_91e9c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a0c

.thumb_func_start OvlFunc_3c88
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L3cc6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L3cc6:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L3cda
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L3cda:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L3cee
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L3cee:
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r2, #0xa0
	mov	r0, #1
	mov	r1, #0xc2
	lsl	r2, #2
	bl	__Func_9218c
	mov	r0, #2
	mov	r1, #0xc6
	ldr	r2, =0x28e
	bl	__Func_9218c
	mov	r2, #0xa8
	lsl	r2, #2
	mov	r0, #3
	mov	r1, #0xc2
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_3a00
	mov	r1, #0
	mov	r0, #0x16
	bl	OvlFunc_3a00
	ldr	r0, =0x1f55
	bl	__Func_92b94
	mov	r0, #0x16
	bl	OvlFunc_39ec
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_3a00
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L3e1e
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #2
	bl	OvlFunc_39ec
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_3a00
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	OvlFunc_39ec
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_3a00
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92c40
.L3dfa:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L3e1e
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	ldr	r0, =0x1f53
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92c40
	b	.L3dfa
.L3e1e:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	ldr	r0, =0x1f5b
	bl	__Func_92b94
	mov	r0, #0x16
	bl	OvlFunc_39ec
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x15
	bl	__Func_92064
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0xa2
	ldr	r2, =0x27a
	mov	r0, #0x16
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xa9
	and	r5, r3
	mov	r1, #0xa2
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xc0
	orr	r6, r3
	mov	r2, #0
	strb	r6, [r0]
	lsl	r1, #6
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_3a00
	mov	r0, #0x16
	bl	OvlFunc_39ec
	mov	r0, #1
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__Func_9218c
	mov	r0, #2
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__Func_9218c
	mov	r1, #0xb4
	ldr	r2, =0x28e
	mov	r0, #3
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_92924
	mov	r0, #2
	bl	__Func_92924
	mov	r0, #3
	bl	__Func_92924
	ldr	r0, =0x903
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3c88

.thumb_func_start OvlFunc_3f30
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__Func_916b0
	ldr	r0, =.L51d8
	bl	__Func_917ac
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xa4
	mov	r0, #0
	mov	r1, #0x94
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #1
	mov	r5, #0xa0
	bl	__Func_937b8
	lsl	r5, #7
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r5
	mov	r0, #0x16
	bl	OvlFunc_3a00
	ldr	r0, =0x1f69
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x2016
	bl	__Func_92c40
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L3fb6
	ldr	r0, =0x2016
	bl	OvlFunc_39ec
	bl	__Func_91750
	b	.L41d4
.L3fb6:
	ldr	r2, =iwram_1ebc
	mov	r3, #0xec
	mov	r8, r2
	ldr	r2, [r2]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	ldr	r0, =0x2016
	bl	__Func_93054
	bl	OvlFunc_bb8
	mov	r1, #0xd8
	mov	r2, #0x93
	mov	r0, #0x1a
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x1a
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r2, #0x95
	mov	r0, #0x1a
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x9a
	mov	r0, #0x1a
	mov	r1, #0xbc
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #0x1a
	bl	OvlFunc_3a00
	mov	r2, #0
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_92560
	mov	r0, #0x1a
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x1a
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xb4
	mov	r0, #0x14
	lsl	r1, #16
	ldr	r2, =0x3090000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xa6
	mov	r0, #0x14
	mov	r1, #0xb4
	lsl	r2, #2
	bl	__Func_921c4
	ldr	r6, =0x2014
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, r6
	bl	OvlFunc_39ec
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x3c
	mov	r0, #0x1a
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, r6
	bl	OvlFunc_39ec
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_9259c
	mov	r0, #0x15
	bl	OvlFunc_39ec
	mov	r2, #0x14
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_924d4
	ldr	r0, =0x6014
	bl	OvlFunc_39ec
	mov	r2, #0x14
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_92560
	mov	r1, #4
	mov	r0, #0x1a
	bl	__Func_924d4
	mov	r0, #0x1a
	bl	OvlFunc_39ec
	mov	r2, #0xa0
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92adc
	ldr	r0, =0x8014
	bl	OvlFunc_39ec
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x1a
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_9259c
	mov	r0, #0x1a
	bl	OvlFunc_39ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_3a00
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x16
	bl	OvlFunc_39ec
	ldr	r2, =0xcccc
	mov	r0, #0x16
	ldr	r1, =0x19999
	bl	__Func_92064
	ldr	r5, =.L4918
	mov	r0, #0x16
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r2, #0x9e
	lsl	r2, #2
	mov	r0, #0x15
	mov	r1, #0xa8
	bl	__Func_921c4
	mov	r1, r5
	mov	r0, #0x15
	bl	__Func_9207c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0x1a
	bl	__Func_9207c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_3a00
	mov	r0, r6
	bl	OvlFunc_39ec
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_3a00
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x11
	bl	__Func_91e9c
.L41d4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3f30

.thumb_func_start OvlFunc_4218
	push	{lr}
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xa9
	mov	r3, #0
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r1, #0xe8
	mov	r2, #0xa9
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__Func_30f8
	pop	{r0}
	bx	r0
.func_end OvlFunc_4218

	.section .data

.L4464:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4464, (0x449c-0x4464)
.L449c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x449c, (0x44d8-0x449c)
.L44d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x44d8, (0x44ec-0x44d8)
.L44ec:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x44ec, (0x458c-0x44ec)
.L458c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x458c, (0x4628-0x458c)
.L4628:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4628, (0x4764-0x4628)
.L4764:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4764, (0x47a8-0x4764)
.L47a8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x47a8, (0x47ec-0x47a8)
.L47ec:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x47ec, (0x480c-0x47ec)
.L480c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x480c, (0x4814-0x480c)
.L4814:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4814, (0x4888-0x4814)
.L4888:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4888, (0x48b0-0x4888)
.L48b0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48b0, (0x48c4-0x48b0)
.L48c4:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48c4, (0x48d8-0x48c4)
.L48d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48d8, (0x48e0-0x48d8)
.L48e0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48e0, (0x4918-0x48e0)
.L4918:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4918, (0x4980-0x4918)
.L4980:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4980, (0x4994-0x4980)
.L4994:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4994, (0x4b44-0x4994)
.L4b44:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4b44, (0x4b64-0x4b44)
.L4b64:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4b64, (0x4ba8-0x4b64)
.L4ba8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4ba8, (0x4cf8-0x4ba8)
.L4cf8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4cf8, (0x4ef0-0x4cf8)
.L4ef0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4ef0, (0x5028-0x4ef0)
.L5028:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5028, (0x5160-0x5028)
.L5160:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5160, (0x51d8-0x5160)
.L51d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x51d8, (0x5208-0x51d8)
.L5208:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5208, (0x5268-0x5208)
.L5268:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5268, (0x5340-0x5268)
.L5340:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5340, (0x5418-0x5340)
.L5418:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5418, (0x5508-0x5418)
.L5508:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5508, (0x5778-0x5508)
.L5778:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5778, (0x5958-0x5778)
.L5958:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5958, (0x59d0-0x5958)
.L59d0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x59d0, (0x5a54-0x59d0)
.L5a54:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5a54, (0x5b08-0x5a54)
.L5b08:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5b08

	.section .bss

	.lcomm	.L5b30, 8
	.lcomm	.L5b38, 4
	.lcomm	.Lunused_5b3c, 4
	.lcomm	.L5b40, 0x10
	.lcomm	.L5b50, 8
	.lcomm	.L5b58, 4
	.lcomm	.Lunused_5b5c, 4
	.lcomm	.L5b60, 8
	.lcomm	.Lunused_5b68, 4
	.lcomm	.Lunused_5b6c, 4
	.lcomm	.L5b70, 0x20
	.lcomm	.L5b90, 4
