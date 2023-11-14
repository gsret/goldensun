	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_b0070
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r7, #0x9b
	mov	r8, r3
	mov	r1, #0
	lsl	r7, #2
	mov	r10, r1
	mov	r6, #0
	add	r7, r8
.Lb008a:
	ldr	r3, =0x3a9
	mov	r0, r6
	add	r3, r8
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	bl	_Func_78480
	cmp	r5, r0
	bne	.Lb00b0
	mov	r0, r6
	mov	r1, #0
	bl	_Func_78ad0
	cmp	r0, #0
	beq	.Lb00b0
	mov	r2, #1
	strh	r6, [r7]
	add	r10, r2
	add	r7, #2
.Lb00b0:
	ldr	r3, =0x1ff
	add	r6, #1
	cmp	r6, r3
	ble	.Lb008a
	mov	r1, r10
	mov	r2, #0x9b
	lsl	r3, r1, #1
	lsl	r2, #2
	add	r3, r2
	ldr	r2, .Lb00e0	@ 0
	mov	r1, r8
	strh	r2, [r1, r3]
	ldr	r3, =0x3a6
	mov	r2, r10
	add	r3, r8
	strb	r2, [r3]
	mov	r0, r10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb00e0:
	.word	0
.func_end Func_b0070

.thumb_func_start Func_b00f4
	push	{lr}
	ldr	r3, =iwram_1f2c
	ldr	r0, [r3]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r0, r3
	bl	Func_b08b8
	pop	{r0}
	bx	r0
.func_end Func_b00f4

.thumb_func_start Func_b010c
	push	{r5, lr}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	Func_48b0
	mov	r5, r0
	bl	_Func_8e118
	mov	r3, #0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500029c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r5, r3
	mov	r3, #0xc
	strb	r3, [r2]
	ldr	r2, =0x36e
	add	r0, r5, r2
	bl	_Func_796c4
	ldr	r2, =0x3a7
	add	r3, r5, r2
	strb	r0, [r3]
	bl	Func_4080
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3940
	mov	r1, #0x80
	bl	Func_3fa4
	bl	Func_4080
	ldr	r2, =0x392
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3b40
	mov	r1, #0x80
	bl	Func_3fa4
	bl	Func_4080
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3bc0
	mov	r1, #0x80
	bl	Func_3fa4
	bl	Func_4080
	ldr	r2, =0x396
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb39c0
	mov	r1, #0x80
	bl	Func_3fa4
	bl	Func_4080
	ldr	r2, =0x39a
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Lb3a40
	mov	r1, #0x80
	bl	Func_3fa4
	bl	Func_4080
	mov	r3, #0xe6
	lsl	r3, #2
	add	r5, r3
	ldr	r2, =.Lb3ac0
	strh	r0, [r5]
	mov	r1, #0x80
	bl	Func_3fa4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_b00f4
	bl	Func_41d8
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_b010c

.thumb_func_start Func_b0204
	push	{r5, lr}
	ldr	r3, =iwram_1f2c
	ldr	r0, =Func_b00f4
	ldr	r5, [r3]
	bl	Func_4278
	bl	_Func_19a54
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_3f3c
	ldr	r2, =0x392
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_3f3c
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_3f3c
	ldr	r2, =0x396
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_3f3c
	mov	r2, #0xe6
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_3f3c
	ldr	r3, =0x39a
	add	r5, r3
	ldrh	r0, [r5]
	bl	Func_3f3c
	mov	r0, #0x37
	bl	Func_2dd8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_b0204

.thumb_func_start Func_b0278
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r1, #0
	mov	r8, r0
	sub	sp, #4
	mov	r10, r1
	bl	Func_b26c8
	cmp	r8, r0
	bge	.Lb029a
	mov	r2, r8
	cmp	r2, #0
	bge	.Lb029e
.Lb029a:
	mov	r3, #0
	mov	r8, r3
.Lb029e:
	mov	r0, r8
	bl	Func_b26cc
	bl	Func_b010c
	ldr	r3, =iwram_1f2c
	mov	r0, r8
	ldr	r7, [r3]
	bl	Func_b2764
	ldr	r1, =0x3a9
	mov	r2, r8
	add	r3, r7, r1
	strb	r0, [r3]
	cmp	r2, #0x10
	bne	.Lb02c8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02c8:
	mov	r1, r8
	cmp	r1, #0x11
	bne	.Lb02d8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02d8:
	mov	r1, r8
	cmp	r1, #0x12
	bne	.Lb02e8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02e8:
	mov	r0, r5
	bl	_Func_92054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0xe9
	ldrh	r2, [r3]
	lsl	r1, #2
	add	r3, r7, r1
	strh	r2, [r3]
	mov	r1, #0
	ldrh	r0, [r3]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_19da8
	mov	r9, r0
	cmp	r0, #0
	bne	.Lb0322
	mov	r3, #2
	mov	r0, #5
	str	r3, [sp]
	neg	r0, r0
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	bl	_Func_162d4
	mov	r9, r0
.Lb0322:
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r7, r2
	mov	r1, #0x80
	ldrh	r0, [r3]
	lsl	r1, #23
	mov	r3, #0
	mov	r2, r9
	str	r3, [sp]
	bl	_Func_1eadc
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r5, #5]
	ldr	r3, .Lb0374	@ 0
	strb	r3, [r5, #4]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r6, r7, r3
	mov	r1, #0x20
	mov	r0, r6
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_b0a20
	str	r5, [r6]
	ldr	r0, =0xc9b
	bl	Func_b04dc
.Lb035c:
	mov	r0, r10
	bl	_Func_28d74
	ldr	r1, =0x3aa
	mov	r10, r0
	add	r3, r7, r1
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb039e
	b	.Lb0388

	.align	2, 0
.Lb0374:
	.word	0
	.pool

.Lb0388:
	mov	r2, #0x9b
	lsl	r2, #2
	add	r1, r7, r2
	mov	r0, r8
	bl	Func_b2720
	ldr	r1, =0x3a6
	add	r3, r7, r1
	strb	r0, [r3]
	ldr	r0, =0xca7
	b	.Lb03c0
.Lb039e:
	mov	r2, r10
	cmp	r2, #1
	bne	.Lb03b0
	ldr	r0, =0xca9
	bl	Func_b04dc
	bl	Func_b1a14
	b	.Lb03e8
.Lb03b0:
	mov	r3, r10
	cmp	r3, #2
	bne	.Lb03d8
	bl	Func_b0070
	cmp	r0, #0
	beq	.Lb03ca
	ldr	r0, =0xcb8
.Lb03c0:
	bl	Func_b04dc
	bl	Func_b0aac
	b	.Lb03e8
.Lb03ca:
	ldr	r0, =0xcb7
	bl	Func_b04dc
	mov	r0, #1
	bl	Func_30f8
	b	.Lb03e8
.Lb03d8:
	mov	r1, r10
	cmp	r1, #3
	bne	.Lb0400
	ldr	r0, =0xcb9
	bl	Func_b04dc
	bl	Func_b2110
.Lb03e8:
	mov	r2, #0xe0
	lsl	r2, #2
	mov	r1, #0x20
	add	r0, r7, r2
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_b0a20
	ldr	r0, =0xca4
	bl	Func_b04dc
	b	.Lb035c
.Lb0400:
	ldr	r0, =0xca5
	bl	Func_b04dc
	mov	r0, r9
	mov	r1, #2
	bl	_Func_16418
	bl	Func_b0204
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b0278

.thumb_func_start Func_b0444
	push	{r5, r6, lr}
	ldr	r3, =ewram_240
	ldr	r2, =0x30d40
	str	r2, [r3, #0x10]
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x1c
	strb	r2, [r3]
	ldr	r1, =0x48d
	mov	r0, #1
	bl	_Func_78588
	mov	r1, r0
	mov	r0, #1
	bl	_Func_78708
	ldr	r1, =0x40b
	mov	r0, #0
	bl	_Func_78588
	mov	r1, r0
	mov	r0, #0
	bl	_Func_78708
	mov	r1, #0xe7
	mov	r0, #2
	bl	_Func_78588
	mov	r0, #3
	bl	_Func_77394
	ldr	r6, =0x131
	mov	r5, #1
	strb	r5, [r0, r6]
	mov	r0, #5
	bl	_Func_77394
	strb	r5, [r0, r6]
	mov	r0, #2
	bl	_Func_77394
	mov	r3, #0xa0
	lsl	r3, #1
	add	r0, r3
	strb	r5, [r0]
	mov	r1, #0x1e
	mov	r0, #1
	bl	Func_b0278
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b0444

.thumb_func_start Func_b04c4
	push	{lr}
	b	.Lb04ce
.Lb04c8:
	mov	r0, #1
	bl	Func_30f8
.Lb04ce:
	bl	_Func_f954c
	cmp	r0, #0
	bne	.Lb04c8
	pop	{r0}
	bx	r0
.func_end Func_b04c4

.thumb_func_start Func_b04dc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	mov	r2, #0xe9
	ldr	r6, [r3]
	lsl	r2, #2
	add	r3, r6, r2
	mov	r5, r0
	ldrh	r0, [r3]
	bl	_Func_915ac
	mov	r7, r0
	bl	_Func_19a54
	ldr	r2, =0x3a9
	add	r3, r6, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #2
	bne	.Lb050a
	ldr	r3, =0xcc6
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb050a:
	cmp	r1, #0
	bne	.Lb0516
	ldr	r3, =0xcf1
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb0516:
	mov	r2, #0xeb
	lsl	r2, #2
	add	r3, r6, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb052e
	ldr	r3, =0xd4c
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb052e:
	lsl	r3, r7, #16
	mov	r2, #0x22
	orr	r3, r2
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	bl	_Func_17658
	b	.Lb0546
.Lb0540:
	mov	r0, #1
	bl	Func_30f8
.Lb0546:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lb0540
	mov	r0, #1
	bl	Func_30f8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b04dc

.thumb_func_start Func_b0574
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	mov	r2, #0xe0
	ldr	r6, [r3]
	lsl	r2, #2
	add	r7, r6, r2
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]
	add	r2, #0x24
	mov	r10, r3
	add	r3, r6, r2
	mov	r5, r0
	ldrh	r0, [r3]
	bl	_Func_915ac
	ldr	r2, =0x3a9
	add	r3, r6, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r8, r0
	cmp	r1, #2
	bne	.Lb05ae
	ldr	r3, =0xcc6
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05ae:
	cmp	r1, #0
	bne	.Lb05ba
	ldr	r3, =0xcf1
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05ba:
	mov	r2, #0xeb
	lsl	r2, #2
	add	r3, r6, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb05d2
	ldr	r3, =0xd4c
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05d2:
	ldr	r2, [r7]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	bl	_Func_19a54
	mov	r2, r8
	lsl	r3, r2, #16
	mov	r2, #0x22
	orr	r3, r2
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	bl	_Func_17658
	b	.Lb05f6
.Lb05f0:
	mov	r0, #1
	bl	Func_30f8
.Lb05f6:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lb05f0
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0xe0
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r2, r10
	strb	r2, [r3, #5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b0574

.thumb_func_start Func_b0634
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	ldr	r5, [r3]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r5, r3
	mov	r7, r0
	ldr	r0, [r5]
	ldrb	r6, [r0, #5]
	bl	_Func_a17c4
	mov	r2, r7
	mov	r1, #5
	mov	r0, #7
	bl	_Func_28e54
	ldr	r3, [r5]
	mov	r7, r0
	strb	r6, [r3, #5]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b0634

.thumb_func_start Func_b0664
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	ldr	r5, [r3]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r5, r3
	mov	r7, r0
	ldr	r0, [r5]
	ldrb	r6, [r0, #5]
	bl	_Func_a17c4
	mov	r2, r7
	mov	r1, #7
	mov	r0, #7
	bl	_Func_28e54
	ldr	r3, [r5]
	mov	r7, r0
	strb	r6, [r3, #5]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b0664

.thumb_func_start Func_b0694
	push	{lr}
	mov	r2, #0xd2
	lsl	r2, #2
	ldr	r4, =0x39e
	add	r3, r0, r2
	ldr	r2, [r3]
	add	r3, r0, r4
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #0
	beq	.Lb06b6
	add	r3, r0, r4
	ldrh	r0, [r3]
.Lb06ae:
	add	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, r0
	bne	.Lb06ae
.Lb06b6:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_b0694

.thumb_func_start Func_b06c0
	push	{lr}
	lsl	r3, r1, #4
	add	r1, r3, #1
	cmp	r0, #0
	ble	.Lb06e4
	ldr	r4, =.Lb4100
.Lb06cc:
	ldrh	r3, [r4]
	sub	r0, #1
	add	r3, r2, r3
	add	r4, #2
	strb	r1, [r3, #4]
	strb	r1, [r3, #8]
	strb	r1, [r3, #0xc]
	strb	r1, [r3, #0x10]
	strb	r1, [r3, #0x14]
	strb	r1, [r3, #0x18]
	cmp	r0, #0
	bne	.Lb06cc
.Lb06e4:
	pop	{r0}
	bx	r0
.func_end Func_b06c0

.thumb_func_start Func_b06ec
	push	{lr}
	ldr	r3, =.Lb3d40
	lsl	r0, #5
	add	r0, r3
	ldr	r3, =.Lb413c
	lsl	r2, #1
	ldrh	r3, [r3, r2]
	add	r1, r3
	add	r1, #2
	mov	r4, #3
.Lb0700:
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #1]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #0x1e]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #0x1f]
	add	r0, #1
.Lb0730:
	sub	r4, #1
	add	r1, #4
	cmp	r4, #0
	bge	.Lb0700
	pop	{r0}
	bx	r0
.func_end Func_b06ec

.thumb_func_start Func_b0744
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r1, #0x80
	mov	r5, r0
	lsl	r1, #3
	mov	r0, #0xe
	mov	r10, r2
	mov	r7, r3
	sub	sp, #4
	bl	Func_48f4
	mov	r3, #0
	mov	r6, r0
	mov	r9, r3
	ldr	r0, =.Lb3e80
	ldr	r3, =REG_DMA3SAD
	mov	r1, r6
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_b1c_from_thumb
	mov	r1, r6
	mov	r2, #0
	bl	Func_b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	Func_b1c_from_thumb
	mov	r1, r6
	mov	r2, #1
	bl	Func_b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	Func_b1c_from_thumb
	mov	r1, r6
	mov	r2, #2
	bl	Func_b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	Func_b1c_from_thumb
	mov	r1, r6
	mov	r2, #3
	bl	Func_b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r0, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	Func_b1c_from_thumb
	mov	r1, r6
	mov	r2, #4
	bl	Func_b06ec
.Lb07f2:
	bl	Func_4080
	mov	r5, r0
	cmp	r5, #0x60
	beq	.Lb0816
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, r6
	bl	Func_3fa4
	ldr	r1, =0x80008000
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_1eadc
	mov	r9, r0
.Lb0816:
	mov	r0, #0xe
	bl	Func_2dd8
	mov	r0, r9
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b0744

.thumb_func_start Func_b0840
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r5, [r3, #0x14]
	lsl	r2, #4
	ldr	r1, [r3]
	add	r4, r5, r2
	ldr	r2, =0x236
	mov	r6, r0
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r2, =0x84000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #2
	add	r1, r5, r2
	mov	r0, r4
	ldr	r2, =0x840002a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	mov	r1, #1
	bl	_Func_91200
	mov	r0, #0x10
	bl	_Func_91254
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b0840

.thumb_func_start Func_b0894
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, [r3]
	ldr	r3, =0x236
	mov	r1, #1
	add	r0, r3
	bl	_Func_91200
	mov	r0, #0x10
	bl	_Func_91254
	pop	{r0}
	bx	r0
.func_end Func_b0894

.thumb_func_start Func_b08b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	cmp	r7, #0
	beq	.Lb094a
	mov	r1, #0xd
	ldrsb	r1, [r7, r1]
	mov	r10, r1
	cmp	r1, #0
	beq	.Lb094a
	ldr	r2, [r7]
	ldrb	r6, [r7, #0xc]
	mov	r8, r2
	add	r6, #1
	mov	r1, #4
	ldrsh	r2, [r7, r1]
	mov	r1, #8
	ldrsh	r3, [r7, r1]
	strb	r6, [r7, #0xc]
	lsl	r6, #24
	sub	r3, r2
	asr	r6, #24
	mov	r0, r6
	mul	r0, r3
	mov	r1, r10
	bl	Func_af0_from_thumb
	ldrh	r5, [r7, #4]
	mov	r3, r8
	add	r5, r0
	strh	r5, [r3, #6]
	ldr	r2, =0
	ldr	r3, =0x1ff
	mov	r1, r8
	and	r5, r3
	mov	r9, r2
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #0x16]
	and	r3, r2
	orr	r3, r5
	mov	r2, r8
	strh	r3, [r2, #0x16]
	mov	r1, #6
	ldrsh	r2, [r7, r1]
	mov	r1, #0xa
	ldrsh	r3, [r7, r1]
	sub	r3, r2
	mov	r0, r6
	mul	r0, r3
	mov	r1, r10
	bl	Func_af0_from_thumb
	ldrh	r5, [r7, #6]
	mov	r2, r8
	add	r5, r0
	strh	r5, [r2, #8]
	strb	r5, [r2, #0x14]
	b	.Lb0940

	.pool_aligned

.Lb0940:
	cmp	r6, r10
	bne	.Lb094a
	mov	r3, r9
	strb	r3, [r7, #0xd]
	strb	r3, [r7, #0xc]
.Lb094a:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b08b8

.thumb_func_start Func_b0958
	push	{r5, lr}
	mov	r5, r0
	ldr	r4, [r5]
	cmp	r4, #0
	beq	.Lb09ea
	mov	r1, #8
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r4, #6]
	sub	r0, r2, r3
	mov	r3, r0
	cmp	r0, #0
	bge	.Lb0972
	add	r3, r0, #3
.Lb0972:
	asr	r3, #2
	cmp	r3, #0
	bge	.Lb097a
	neg	r3, r3
.Lb097a:
	cmp	r0, #0
	ble	.Lb098c
	cmp	r3, #0
	beq	.Lb0986
	sub	r3, r2, r3
	b	.Lb099a
.Lb0986:
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.Lb099a
.Lb098c:
	cmp	r0, #0
	bge	.Lb09ac
	cmp	r3, #0
	beq	.Lb0998
	add	r3, r2, r3
	b	.Lb099a
.Lb0998:
	add	r3, r2, #1
.Lb099a:
	strh	r3, [r4, #6]
	ldrh	r3, [r4, #6]
	ldr	r2, =0x1ff
	ldrh	r1, [r4, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r4, #0x16]
.Lb09ac:
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r4, #8]
	sub	r0, r2, r3
	mov	r3, r0
	cmp	r0, #0
	bge	.Lb09bc
	add	r3, r0, #3
.Lb09bc:
	asr	r3, #2
	cmp	r3, #0
	bge	.Lb09c4
	neg	r3, r3
.Lb09c4:
	cmp	r0, #0
	ble	.Lb09d6
	cmp	r3, #0
	beq	.Lb09d0
	sub	r3, r2, r3
	b	.Lb09e4
.Lb09d0:
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.Lb09e4
.Lb09d6:
	cmp	r0, #0
	bge	.Lb09ea
	cmp	r3, #0
	beq	.Lb09e2
	add	r3, r2, r3
	b	.Lb09e4
.Lb09e2:
	add	r3, r2, #1
.Lb09e4:
	strh	r3, [r4, #8]
	ldrh	r3, [r4, #8]
	strb	r3, [r4, #0x14]
.Lb09ea:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_b0958

.thumb_func_start Func_b09fc
	push	{r5, r6, lr}
	ldr	r5, [r0]
	ldrh	r4, [r5, #6]
	ldr	r6, =0
	strh	r4, [r0, #4]
	ldrh	r4, [r5, #8]
	strh	r1, [r0, #8]
	strh	r4, [r0, #6]
	strh	r2, [r0, #0xa]
	strb	r3, [r0, #0xd]
	strb	r6, [r0, #0xc]
	b	.Lb0a18

	.pool_aligned
.Lb0a18:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b09fc

.thumb_func_start Func_b0a20
	push	{r5, r6, lr}
	ldr	r5, [r0]
	ldr	r6, =0xffff
	mov	r3, #1
	ldr	r4, =0
	strb	r3, [r0, #0xd]
	ldr	r3, =0x1ff
	strh	r1, [r5, #6]
	strh	r1, [r0, #8]
	strh	r1, [r0, #4]
	and	r1, r6
	and	r1, r3
	strb	r4, [r0, #0xc]
	ldr	r3, =0xfffffe00
	ldrh	r4, [r5, #0x16]
	and	r3, r4
	orr	r3, r1
	strh	r3, [r5, #0x16]
	ldr	r3, [r0]
	strh	r2, [r0, #0xa]
	strh	r2, [r0, #6]
	strh	r2, [r3, #8]
	and	r2, r6
	strb	r2, [r3, #0x14]
	b	.Lb0a64

	.pool_aligned

.Lb0a64:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b0a20

.thumb_func_start Func_b0a6c
	push	{lr}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r12, r3
	cmp	r0, #0
	beq	.Lb0a8c
	ldrh	r3, [r0, #0xc]
	lsl	r3, #3
	add	r3, r1, r3
	mov	r1, r3
	ldrh	r3, [r0, #0xe]
	lsl	r3, #3
	add	r3, r2, r3
	mov	r2, r3
	add	r1, #8
	add	r2, #8
.Lb0a8c:
	mov	r3, #0xea
	mov	r0, #0xe0
	lsl	r3, #2
	add	r3, r12
	lsl	r0, #2
	add	r0, r12
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	bl	Func_b09fc
	pop	{r0}
	bx	r0
.func_end Func_b0a6c

.thumb_func_start Func_b0aac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	sub	sp, #0x24
	mov	r0, #0
	mov	r1, #0
	str	r0, [sp, #0x20]
	str	r0, [sp, #0x10]
	mov	r10, r3
	str	r1, [r3, #0x20]
	mov	r5, #2
	mov	r1, #7
	mov	r3, #4
	mov	r2, #0xc
	mov	r0, #0x12
	str	r5, [sp]
	bl	_Func_162d4
	mov	r2, r10
	str	r0, [r2, #0xc]
	bl	Func_b10cc
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0xf
	mov	r3, #4
	str	r5, [sp]
	bl	_Func_162d4
	str	r0, [sp, #0x20]
.Lb0af4:
	mov	r5, #2
	mov	r1, #0xc
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	ldr	r7, [sp, #0x10]
	str	r5, [sp]
	bl	_Func_162d4
	mov	r3, #0xe0
	str	r0, [sp, #0x1c]
	lsl	r3, #2
	add	r3, r10
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r10
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r0, #0
	mov	r3, #3
	mov	r1, #0x11
	mov	r2, #0x1e
	str	r5, [sp]
	bl	_Func_162d4
	mov	r3, #1
	str	r0, [sp, #0x18]
	mov	r11, r3
.Lb0b32:
	ldr	r3, =0x3a6
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r11
	mov	r9, r3
	cmp	r0, #0
	beq	.Lb0ba0
	mov	r2, #0x9b
	lsl	r2, #2
	lsl	r3, r7, #1
	add	r2, r10
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	bl	_Func_78414
	mov	r2, #0
	mov	r6, r0
	mov	r1, #7
	mov	r0, r7
	mov	r11, r2
	bl	Func_b1c_from_thumb
	mov	r1, r0
	lsl	r1, #5
	ldr	r0, [sp, #0x1c]
	sub	r1, #8
	mov	r2, #8
	bl	Func_b0a6c
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #4
	add	r2, r10
	strb	r3, [r2]
	ldr	r0, [sp, #0x1c]
	mov	r1, r7
	bl	Func_b0fa4
	ldr	r1, =0x75
	ldr	r0, [sp, #0x18]
	add	r1, r5, r1
	bl	Func_b11a4
	ldr	r0, [sp, #0x20]
	bl	_Func_16498
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	ldr	r0, [sp, #0x20]
	mov	r1, r5
	mov	r3, #0
	bl	Func_b110c
.Lb0ba0:
	ldr	r1, =iwram_1c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0bae
	b	.Lb0f48
.Lb0bae:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0bba
	b	.Lb0f3a
.Lb0bba:
	ldr	r0, =iwram_1b04
	ldr	r3, [r0]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0be2
	mov	r1, r9
	mov	r8, r7
	sub	r7, #1
	add	r0, r7, r1
	bl	Func_b1c_from_thumb
	mov	r7, r0
	cmp	r8, r7
	beq	.Lb0be2
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	mov	r11, r2
.Lb0be2:
	ldr	r0, =iwram_1b04
	ldr	r3, [r0]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0c0a
	mov	r1, r9
	mov	r8, r7
	add	r7, #1
	add	r0, r7, r1
	bl	Func_b1c_from_thumb
	mov	r7, r0
	cmp	r8, r7
	beq	.Lb0c0a
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	mov	r11, r2
.Lb0c0a:
	ldr	r0, =iwram_1b04
	ldr	r3, [r0]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0c22
	sub	r3, r7, #7
	cmp	r3, #0
	blt	.Lb0c22
	mov	r1, #1
	mov	r7, r3
	mov	r11, r1
.Lb0c22:
	ldr	r2, =iwram_1b04
	ldr	r3, [r2]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0c52
	mov	r0, r9
	add	r0, #6
	mov	r1, #7
	bl	Func_af0_from_thumb
	lsl	r3, r0, #3
	add	r5, r7, #7
	sub	r3, r0
	cmp	r5, r3
	bge	.Lb0c48
	mov	r3, #1
	mov	r7, r5
	mov	r11, r3
.Lb0c48:
	mov	r0, r9
	sub	r0, #1
	cmp	r7, r0
	ble	.Lb0c52
	mov	r7, r0
.Lb0c52:
	mov	r0, #1
	bl	Func_30f8
	b	.Lb0b32
.Lb0c5a:
	ldr	r0, [sp, #0x18]
	mov	r1, #2
	bl	_Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0x1c]
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r8
	cmp	r0, #0
	beq	.Lb0c78
	b	.Lb0f56
.Lb0c78:
	ldr	r1, [sp, #0x10]
	mov	r2, #0x9b
	lsl	r3, r1, #1
	lsl	r2, #2
	add	r3, r2
	mov	r0, r10
	ldr	r5, =0x39e
	ldrh	r3, [r0, r3]
	add	r5, r10
	strh	r3, [r5]
	ldr	r0, =0xc9d
	bl	Func_b04dc
	ldrh	r0, [r5]
	bl	_Func_78414
	mov	r1, #1
	str	r0, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r5, #2
	mov	r1, #0xe
	mov	r2, #0xd
	mov	r3, #3
	mov	r6, #0
	mov	r0, #0
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	_Func_162d4
	mov	r3, #0xe0
	str	r0, [sp, #0x14]
	lsl	r3, #2
	add	r3, r10
	ldr	r2, [r3]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r10
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r2, r8
	str	r2, [sp]
	ldr	r0, [sp, #0x14]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_a1870
	mov	r3, #9
	mov	r0, #0x10
	mov	r1, #0xb
	mov	r2, #0xe
	str	r5, [sp]
	bl	_Func_162d4
	mov	r3, #1
	mov	r7, #0
	mov	r9, r0
	mov	r11, r3
.Lb0cf0:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.Lb0d04
	mov	r1, #0
	ldr	r0, =0xc9d
	str	r1, [sp, #4]
	bl	Func_b04dc
	mov	r2, #1
	mov	r11, r2
.Lb0d04:
	mov	r3, r11
	cmp	r3, #0
	beq	.Lb0d72
	ldr	r3, =0x3a7
	add	r3, r10
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r0, #0
	mov	r11, r0
	add	r0, r7, r1
	bl	Func_b1c_from_thumb
	mov	r3, #0xdb
	mov	r7, r0
	lsl	r1, r7, #1
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, r10
	add	r1, r7
	add	r3, #2
	lsl	r1, #3
	ldrsh	r6, [r3, r2]
	sub	r1, #0xc
	ldr	r0, [sp, #0x14]
	mov	r2, #0
	bl	Func_b0a6c
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r10
	mov	r3, #3
	ldr	r5, =0x39e
	strb	r3, [r2]
	add	r5, r10
	ldr	r0, [sp, #0x14]
	ldrh	r2, [r5]
	mov	r1, r7
	bl	Func_b11c4
	ldrh	r0, [r5]
	bl	_Func_78480
	cmp	r0, #0
	bne	.Lb0d68
	ldrh	r2, [r5]
	mov	r0, r9
	mov	r1, r6
	bl	Func_b1470
	b	.Lb0d72
.Lb0d68:
	ldrh	r2, [r5]
	mov	r0, r9
	mov	r1, r6
	bl	Func_b1260
.Lb0d72:
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb0e6a
	ldr	r5, =0x39e
	add	r5, r10
	ldrh	r1, [r5]
	mov	r0, r6
	bl	_Func_78588
	mov	r1, r0
	cmp	r1, #0
	bge	.Lb0de8
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r0, r6
	mov	r1, #1
	bl	_Func_19908
	ldrh	r0, [r5]
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r6
	bl	_Func_784d8
	cmp	r0, #0xf
	bne	.Lb0db8
	ldr	r0, =0xc9e
	bl	Func_b04dc
	b	.Lb0cf0
.Lb0db8:
	ldr	r0, =0xca6
	bl	Func_b04dc
	b	.Lb0cf0

	.pool_aligned

.Lb0de8:
	mov	r0, r6
	bl	_Func_788c4
	ldr	r2, [sp, #8]
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	ldr	r2, =ewram_240
	ldr	r2, [r2, #0x10]
	cmp	r3, r2
	bls	.Lb0dfe
	b	.Lb0f26
.Lb0dfe:
	ldrh	r1, [r5]
	mov	r0, r6
	bl	_Func_7845c
	cmp	r0, #0
	bne	.Lb0e28
	mov	r1, #1
	mov	r0, r6
	bl	_Func_19908
	ldr	r0, =0xc9f
	bl	Func_b04dc
	mov	r0, #0
	bl	Func_b0634
	mov	r3, #1
	str	r3, [sp, #4]
	cmp	r0, #0
	beq	.Lb0e28
	b	.Lb0cf0
.Lb0e28:
	ldr	r5, =0x39e
	mov	r0, #0x70
	bl	_Func_f9080
	add	r5, r10
	mov	r0, #1
	bl	Func_30f8
	ldrh	r1, [r5]
	mov	r0, r6
	bl	Func_b153c
	str	r0, [sp, #0xc]
	mov	r2, #1
	ldr	r1, [sp, #0xc]
	mov	r0, #1
	neg	r2, r2
	str	r0, [sp, #4]
	cmp	r1, r2
	bne	.Lb0e52
	b	.Lb0cf0
.Lb0e52:
	ldrh	r1, [r5]
	mov	r0, r6
	ldr	r2, [sp, #0xc]
	bl	Func_b17e4
	mov	r1, r9
	ldr	r0, [sp, #0x14]
	bl	Func_b24e4
	mov	r3, #0
	mov	r8, r3
	b	.Lb0eaa
.Lb0e6a:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lb0f18
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0e8c
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #1
	sub	r7, #1
	mov	r11, r0
.Lb0e8c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb0ea2
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #1
	add	r7, #1
	mov	r11, r1
.Lb0ea2:
	mov	r0, #1
	bl	Func_30f8
	b	.Lb0cf0
.Lb0eaa:
	bl	_Func_a195c
	mov	r0, r9
	mov	r1, #2
	bl	_Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0x14]
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r2, r8
	cmp	r2, #0
	bne	.Lb0f10
	ldr	r3, =0x3aa
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #2
	bne	.Lb0f10
	ldr	r3, [sp, #0xc]
	cmp	r8, r3
	bge	.Lb0ef4
	ldr	r6, =0x39e
	mov	r5, r3
	add	r6, r10
.Lb0ee4:
	mov	r1, #1
	ldrh	r0, [r6]
	neg	r1, r1
	sub	r5, #1
	bl	_Func_78ad0
	cmp	r5, #0
	bne	.Lb0ee4
.Lb0ef4:
	bl	Func_b0070
	cmp	r0, #0
	beq	.Lb0f56
	ldr	r3, =0x3a6
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r0, [sp, #0x10]
	sub	r3, #1
	cmp	r0, r3
	ble	.Lb0f10
	str	r3, [sp, #0x10]
.Lb0f10:
	ldr	r0, =0xca8
	bl	Func_b04dc
	b	.Lb0af4
.Lb0f18:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r1, #1
	neg	r1, r1
	mov	r8, r1
	b	.Lb0eaa
.Lb0f26:
	mov	r0, #0x71
	bl	_Func_f9080
	ldr	r0, =0xc9c
	bl	Func_b0574
	mov	r2, #1
	neg	r2, r2
	mov	r8, r2
	b	.Lb0eaa
.Lb0f3a:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r3, #1
	neg	r3, r3
	mov	r8, r3
	b	.Lb0c5a
.Lb0f48:
	mov	r0, #0x70
	str	r7, [sp, #0x10]
	bl	_Func_f9080
	mov	r0, #0
	mov	r8, r0
	b	.Lb0c5a
.Lb0f56:
	ldr	r0, [sp, #0x20]
	mov	r1, #2
	bl	_Func_16418
	mov	r1, r10
	ldr	r0, [r1, #0xc]
	mov	r1, #2
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b0aac

.thumb_func_start Func_b0fa4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r1, [sp, #8]
	ldr	r3, =iwram_1f2c
	mov	r2, #0x9b
	ldr	r5, [r3]
	lsl	r2, #2
	add	r7, r5, r2
	ldr	r2, =0x3a6
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r0
	mov	r0, r1
	mov	r1, #7
	str	r3, [sp, #4]
	bl	Func_b1c_from_thumb
	ldr	r3, [sp, #8]
	mov	r2, r9
	sub	r6, r3, r0
	cmp	r2, #0
	beq	.Lb10ac
	mov	r0, r9
	bl	_Func_16478
	cmp	r6, #0
	beq	.Lb100c
	ldr	r2, =0x392
	add	r3, r5, r2
	ldrh	r0, [r3]
	mov	r3, #0x10
	neg	r3, r3
	mov	r1, #0x80
	str	r3, [sp]
	mov	r2, r9
	mov	r3, #0xd8
	lsl	r1, #23
	bl	_Func_1eadc
	mov	r2, #0
	mov	r3, #0x11
	strb	r2, [r0, #4]
	strb	r3, [r0, #5]
	strh	r2, [r0, #0xc]
.Lb100c:
	ldr	r2, [sp, #4]
	add	r3, r6, #7
	cmp	r3, r2
	bge	.Lb1036
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	mov	r1, #0x80
	mov	r3, #0x18
	str	r3, [sp]
	mov	r2, r9
	mov	r3, #0xd8
	lsl	r1, #23
	bl	_Func_1eadc
	mov	r2, #0
	mov	r3, #0xf
	strb	r2, [r0, #4]
	strb	r3, [r0, #5]
	strh	r2, [r0, #0xc]
.Lb1036:
	ldr	r2, [sp, #4]
	mov	r3, #0
	mov	r10, r3
	cmp	r6, r2
	bcs	.Lb10ac
	lsl	r3, r6, #1
	add	r3, r7
	mov	r8, r3
	mov	r3, #0x10
	mov	r11, r3
.Lb104a:
	mov	r3, r8
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	bl	_Func_78414
	mov	r2, r10
	lsl	r3, r2, #5
	mov	r2, #0
	str	r2, [sp]
	mov	r7, r0
	mov	r1, #1
	mov	r0, r5
	mov	r2, r9
	bl	_Func_1eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
	ldr	r3, [sp, #8]
	cmp	r6, r3
	bne	.Lb1080
	mov	r3, #9
	strb	r3, [r0, #5]
	mov	r3, #0xa
	strh	r3, [r0, #0xc]
	mov	r3, #0xfd
	strb	r3, [r0, #0xf]
.Lb1080:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r3, #0
	mov	r2, r11
	mov	r1, r9
	bl	Func_b0744
	mov	r3, #0xfb
	mov	r2, #1
	strb	r3, [r0, #0xf]
	add	r10, r2
	mov	r3, #0x20
	add	r11, r3
	mov	r2, r10
	mov	r3, #2
	add	r8, r3
	add	r6, #1
	cmp	r2, #6
	bhi	.Lb10ac
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bcc	.Lb104a
.Lb10ac:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b0fa4

.thumb_func_start Func_b10cc
	push	{r5, lr}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	ldr	r5, [r3, #0xc]
	sub	sp, #4
	cmp	r5, #0
	beq	.Lb10f8
	ldr	r0, =0xc8a
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r3, =ewram_240
	ldr	r0, [r3, #0x10]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #6
	mov	r2, r5
	mov	r3, #0x20
	bl	_Func_1ea08
.Lb10f8:
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_b10cc

.thumb_func_start Func_b110c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	sub	sp, #4
	mov	r5, r1
	mov	r8, r2
	mov	r7, r3
	cmp	r6, #0
	bne	.Lb1158
	b	.Lb1186
.Lb1122:
	ldr	r0, =0xc92
	mov	r1, r6
	mov	r2, #0
	b	.Lb1150
.Lb112a:
	ldr	r5, =0xc8b
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #5
	mov	r2, r6
	mov	r3, #0x20
	sub	r5, #3
	bl	_Func_1ea08
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0x48
.Lb1150:
	mov	r3, #8
	bl	_Func_1e7c0
	b	.Lb1186
.Lb1158:
	mov	r0, r6
	bl	_Func_16498
	ldr	r0, =0x182
	mov	r3, #0
	add	r0, r5, r0
	mov	r1, r6
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r3, r8
	cmp	r3, #0
	bne	.Lb112a
	cmp	r7, #1
	beq	.Lb1122
	cmp	r7, #2
	bne	.Lb112a
	ldr	r0, =0xc93
	mov	r1, r6
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
.Lb1186:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b110c

.thumb_func_start Func_b11a4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	cmp	r5, #0
	beq	.Lb11be
	bl	_Func_16498
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
.Lb11be:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b11a4

.thumb_func_start Func_b11c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r11, r1
	mov	r9, r2
	ldr	r7, [r3]
	cmp	r0, #0
	beq	.Lb1244
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lb1244
	mov	r3, #0xdb
	mov	r1, #0x8a
	add	r2, r7, #2
	lsl	r3, #2
	lsl	r1, #1
	mov	r10, r2
	mov	r8, r3
	add	r5, r7, r1
.Lb11fe:
	cmp	r6, r11
	bne	.Lb120c
	ldr	r0, [r5]
	mov	r1, #0x1e
	bl	_Func_ba30
	b	.Lb1214
.Lb120c:
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Func_ba30
.Lb1214:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x40]
	mov	r1, r8
	mov	r2, r10
	ldrsh	r0, [r2, r1]
	mov	r1, r9
	bl	_Func_7845c
	cmp	r0, #0
	bne	.Lb122e
	ldr	r3, =0xcccc
	str	r3, [r5, #0x40]
.Lb122e:
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #2
	add	r6, #1
	add	r8, r2
	add	r5, #4
	cmp	r6, r3
	blt	.Lb11fe
.Lb1244:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b11c4

.thumb_func_start Func_b1260
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #0x14]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r10, r0
	mov	r0, r1
	mov	r9, r2
	str	r3, [sp, #0x10]
	bl	_Func_77394
	mov	r7, r0
	mov	r0, r9
	bl	_Func_78414
	mov	r5, r0
	mov	r0, #1
	neg	r0, r0
	mov	r1, r10
	str	r0, [sp, #0xc]
	cmp	r1, #0
	bne	.Lb129a
	b	.Lb1450
.Lb129a:
	mov	r0, r10
	bl	_Func_16478
	mov	r1, r9
	ldr	r0, [sp, #0x14]
	bl	_Func_7842c
	cmp	r0, #0
	bne	.Lb12ba
	ldr	r0, =0xc8e
	mov	r1, r10
	mov	r2, #8
	mov	r3, #0x18
	bl	_Func_1e74c
	b	.Lb1450
.Lb12ba:
	ldrb	r1, [r5, #2]
	ldr	r0, [sp, #0x14]
	bl	_Func_787dc
	ldr	r2, [sp, #0xc]
	cmp	r0, r2
	bne	.Lb1324
	mov	r3, #0xd8
	mov	r1, #0x80
	ldrh	r2, [r7, r3]
	lsl	r1, #2
	mov	r3, r1
	and	r3, r2
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb12f2
	mov	r12, r1
	mov	r1, r7
	add	r1, #0xd8
.Lb12e0:
	add	r5, #1
	cmp	r5, #0xe
	bgt	.Lb12f2
	add	r1, #2
	ldrh	r2, [r1]
	mov	r3, r12
	and	r3, r2
	cmp	r3, #0
	bne	.Lb12e0
.Lb12f2:
	cmp	r5, #0xf
	bne	.Lb1318
	mov	r6, r7
	mov	r5, #0
	add	r6, #0xd8
	b	.Lb1300
.Lb12fe:
	add	r5, #1
.Lb1300:
	cmp	r5, #0xe
	bgt	.Lb1312
	ldrh	r0, [r6]
	bl	_Func_78414
	ldrb	r3, [r0, #2]
	add	r6, #2
	cmp	r3, #6
	bne	.Lb12fe
.Lb1312:
	cmp	r5, #0xf
	bne	.Lb1318
	mov	r5, #0
.Lb1318:
	lsl	r0, r5, #1
	b	.Lb1332

	.pool_aligned

.Lb1324:
	lsl	r0, #1
	mov	r3, r0
	add	r3, #0xd8
	ldrh	r3, [r7, r3]
	ldr	r1, =0x1ff
	and	r1, r3
	str	r1, [sp, #0xc]
.Lb1332:
	ldr	r3, .Lb1368	@ 0x200
	mov	r5, r0
	mov	r0, r9
	orr	r0, r3
	mov	r9, r0
	mov	r1, r9
	add	r5, #0xd8
	ldrh	r2, [r7, r5]
	strh	r1, [r7, r5]
	ldr	r0, [sp, #0x14]
	mov	r8, r2
	bl	_Func_77428
	ldrh	r3, [r7, #0x3c]
	add	r2, sp, #0x18
	str	r3, [r2]
	ldrh	r3, [r7, #0x3e]
	mov	r6, r7
	str	r3, [r2, #4]
	add	r6, #0x40
	ldrh	r3, [r6]
	str	r3, [r2, #8]
	mov	r3, r7
	add	r3, #0x42
	str	r3, [sp, #8]
	b	.Lb1370

	.align	2, 0
.Lb1368:
	.word	0x200
	.pool

.Lb1370:
	ldrb	r3, [r3]
	mov	r0, r8
	str	r3, [r2, #0xc]
	strh	r0, [r7, r5]
	ldr	r0, [sp, #0x14]
	mov	r11, r2
	bl	_Func_77428
	ldrh	r3, [r7, #0x3c]
	add	r1, sp, #0x28
	str	r3, [r1]
	ldrh	r3, [r7, #0x3e]
	str	r3, [r1, #4]
	ldrh	r3, [r6]
	str	r3, [r1, #8]
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	str	r3, [r1, #0xc]
	mov	r3, #2
	mov	r5, #0
	str	r3, [sp, #4]
	mov	r9, r1
	mov	r8, r5
	mov	r7, #0
.Lb13a0:
	mov	r0, r8
	mov	r1, r9
	ldr	r2, [r0, r1]
	mov	r1, r11
	ldr	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lb13b6
	ldr	r2, [sp, #0x10]
	ldr	r0, =0x39a
	add	r3, r2, r0
	b	.Lb13c2
.Lb13b6:
	cmp	r2, r3
	bge	.Lb13dc
	ldr	r1, [sp, #0x10]
	mov	r2, #0xe6
	lsl	r2, #2
	add	r3, r1, r2
.Lb13c2:
	ldrh	r0, [r3]
	mov	r1, #0x80
	sub	r3, r7, #4
	str	r3, [sp]
	lsl	r1, #23
	mov	r3, #0x38
	mov	r2, r10
	bl	_Func_1eadc
	mov	r3, #0
	mov	r6, r7
	strb	r3, [r0, #4]
	b	.Lb13de
.Lb13dc:
	lsl	r6, r5, #4
.Lb13de:
	add	r1, sp, #0x28
	mov	r3, r8
	ldr	r0, [r3, r1]
	mov	r2, r10
	mov	r1, #3
	mov	r3, #0x20
	str	r7, [sp]
	bl	_Func_1ea08
	mov	r2, r8
	add	r0, sp, #0x28
	mov	r1, r11
	ldr	r3, [r2, r0]
	ldr	r0, [r2, r1]
	cmp	r3, r0
	beq	.Lb140a
	mov	r1, #3
	mov	r2, r10
	mov	r3, #0x48
	str	r6, [sp]
	bl	_Func_1ea08
.Lb140a:
	ldr	r0, =0xc98
	mov	r1, r10
	add	r0, r5, r0
	mov	r2, #0
	mov	r3, r6
	bl	_Func_1e7c0
	ldr	r2, [sp, #4]
	mov	r0, r10
	mov	r3, #0xd
	mov	r1, #0
	str	r2, [sp]
	bl	_Func_1e41c
	ldr	r3, [sp, #4]
	mov	r0, #4
	add	r3, #2
	add	r5, #1
	str	r3, [sp, #4]
	add	r8, r0
	add	r7, #0x10
	cmp	r5, #2
	ble	.Lb13a0
	mov	r2, #1
	ldr	r1, [sp, #0xc]
	neg	r2, r2
	cmp	r1, r2
	beq	.Lb1450
	ldr	r0, =0x182
	mov	r2, #0
	add	r0, r1, r0
	mov	r3, #0x30
	mov	r1, r10
	bl	_Func_1e7c0
.Lb1450:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b1260

.thumb_func_start Func_b1470
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r10, r0
	mov	r0, r5
	sub	sp, #4
	mov	r9, r2
	bl	_Func_77394
	mov	r1, r10
	mov	r8, r0
	mov	r6, #8
	mov	r7, #8
	cmp	r1, #0
	beq	.Lb1522
	mov	r0, r10
	bl	_Func_16478
	mov	r0, r5
	mov	r1, r9
	bl	_Func_78664
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lb14ca
	lsl	r3, r0, #1
	add	r3, #0xd8
	mov	r1, r8
	ldrh	r0, [r1, r3]
	lsr	r0, #11
	add	r0, #1
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0xc90
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	b	.Lb14d6
.Lb14ca:
	ldr	r0, =0xc8f
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
.Lb14d6:
	mov	r3, #0xd8
	mov	r2, r8
	ldrh	r3, [r2, r3]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb1522
	mov	r2, #0
.Lb14e4:
	mov	r3, r2
	add	r3, #0xd8
	mov	r1, r8
	ldrh	r0, [r1, r3]
	mov	r2, r10
	mov	r3, r6
	mov	r1, #0x1b
	str	r7, [sp]
	bl	_Func_1eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
	add	r6, #0x10
	cmp	r5, #4
	bne	.Lb1506
	mov	r6, #8
	add	r7, #0x10
.Lb1506:
	cmp	r5, #9
	bne	.Lb150e
	mov	r6, #8
	add	r7, #0x10
.Lb150e:
	add	r5, #1
	cmp	r5, #0xe
	bgt	.Lb1522
	lsl	r3, r5, #1
	mov	r2, r3
	mov	r1, r8
	add	r3, #0xd8
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lb14e4
.Lb1522:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b1470

.thumb_func_start Func_b153c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r6, r1
	mov	r10, r3
	mov	r5, r0
	bl	_Func_77394
	mov	r7, r0
	mov	r0, r6
	bl	_Func_78414
	mov	r8, r0
	mov	r1, r8
	ldrb	r2, [r1, #3]
	mov	r3, #0x10
	and	r3, r2
	mov	r0, #1
	cmp	r3, #0
	beq	.Lb15f6
	ldr	r0, =0xca0
	bl	Func_b04dc
	mov	r0, r5
	mov	r1, r6
	bl	_Func_78664
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lb158c
	lsl	r3, r0, #1
	add	r3, #0xd8
	ldrh	r3, [r7, r3]
	lsr	r3, #11
	add	r7, r3, #1
	b	.Lb158e
.Lb158c:
	mov	r7, #0
.Lb158e:
	mov	r2, r8
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	mov	r5, #0x1e
	cmp	r1, #0
	beq	.Lb15a4
	ldr	r3, =ewram_240
	ldr	r0, [r3, #0x10]
	bl	Func_b60_from_thumb
	mov	r5, r0
.Lb15a4:
	ldr	r3, =0x3aa
	add	r3, r10
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #2
	bne	.Lb15cc
	mov	r0, r6
	mov	r1, #0
	bl	_Func_78ad0
	cmp	r5, r0
	ble	.Lb15c8
	mov	r0, r6
	mov	r1, #0
	bl	_Func_78ad0
	b	.Lb15ca
.Lb15c8:
	mov	r0, r5
.Lb15ca:
	mov	r5, r0
.Lb15cc:
	add	r5, r7
	cmp	r5, #0x1e
	ble	.Lb15d4
	mov	r5, #0x1e
.Lb15d4:
	mov	r3, #0xea
	lsl	r3, #2
	add	r3, r10
	mov	r2, #0xc
	strb	r2, [r3]
	mov	r0, #0
	mov	r1, #0x80
	mov	r2, #0x30
	bl	Func_b0a6c
	mov	r1, r8
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r0, r7
	mov	r1, r5
	bl	Func_b1614
.Lb15f6:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b153c

.thumb_func_start Func_b1614
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r1
	mov	r1, #0x80
	sub	sp, #0x10
	mov	r11, r0
	lsl	r1, #3
	mov	r0, #0xe
	str	r2, [sp, #0xc]
	bl	Func_48f4
	mov	r2, #1
	str	r2, [sp, #8]
	mov	r3, r9
	mov	r2, r11
	sub	r3, r2
	mov	r9, r3
	mov	r3, #2
	str	r3, [sp]
	mov	r8, r0
	mov	r1, #4
	mov	r0, #7
	mov	r2, #0x17
	mov	r3, #3
	bl	_Func_162d4
	mov	r5, #1
	neg	r5, r5
	mov	r7, #0
	mov	r10, r0
	cmp	r0, #0
	bne	.Lb1660
	b	.Lb17b0
.Lb1660:
	bl	Func_4080
	str	r0, [sp, #4]
	cmp	r0, #0x60
	bne	.Lb166c
	b	.Lb17b0
.Lb166c:
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	bl	Func_3fa4
	ldr	r5, =0x40004000
	ldr	r0, [sp, #4]
	mov	r1, r5
	mov	r2, r10
	mov	r3, #0
	str	r7, [sp]
	bl	_Func_1eadc
	mov	r1, r5
	mov	r2, r10
	mov	r3, #0x20
	ldr	r0, [sp, #4]
	str	r7, [sp]
	bl	_Func_1eadc
	ldrh	r1, [r0, #0x18]
	lsl	r2, r1, #22
	ldr	r3, .Lb16ac	@ 0x3ff
	lsr	r2, #22
	add	r2, #4
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #0x18]
	b	.Lb1776

	.align	2, 0
.Lb16ac:
	.word	0x3ff
	.pool

.Lb16b8:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb16d0
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, #1
	str	r3, [sp, #8]
	sub	r7, #1
.Lb16d0:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb16e6
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	str	r2, [sp, #8]
	add	r7, #1
.Lb16e6:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.Lb1770
	mov	r3, r9
	mov	r2, #0
	add	r0, r7, r3
	mov	r1, r9
	str	r2, [sp, #8]
	bl	Func_b1c_from_thumb
	ldr	r3, =REG_DMA3SAD
	mov	r7, r0
	mov	r1, r8
	ldr	r0, =.Lb3f80
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r8
	mov	r0, #0x1e
	mov	r1, #0xe
	bl	Func_b06c0
	mov	r0, r11
	add	r0, r9
	mov	r1, #0
	mov	r2, r8
	bl	Func_b06c0
	mov	r2, r11
	add	r0, r2, r7
	add	r0, #1
	mov	r1, #0xa
	mov	r2, r8
	bl	Func_b06c0
	mov	r0, r11
	mov	r1, #2
	mov	r2, r8
	bl	Func_b06c0
	mov	r1, #0x80
	ldr	r0, [sp, #4]
	lsl	r1, #1
	mov	r2, r8
	bl	Func_3fa4
	add	r5, r7, #1
	mov	r0, r5
	mov	r1, #2
	mov	r2, r10
	mov	r3, #0x48
	str	r6, [sp]
	bl	_Func_1ea08
	ldr	r3, [sp, #0xc]
	mov	r1, #6
	mov	r0, r5
	mul	r0, r3
	mov	r2, r10
	mov	r3, #0x58
	str	r6, [sp]
	bl	_Func_1ea08
	ldr	r0, =0xc88
	mov	r1, r10
	mov	r2, #0x88
	mov	r3, #0
	bl	_Func_1e7c0
.Lb1770:
	mov	r0, #1
	bl	Func_30f8
.Lb1776:
	ldr	r2, =iwram_1c94
	ldr	r3, [r2]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb178c
	mov	r0, #0x70
	bl	_Func_f9080
	add	r5, r7, #1
	b	.Lb17a2
.Lb178c:
	ldr	r3, =iwram_1c94
	ldr	r6, [r3]
	mov	r3, #2
	and	r6, r3
	cmp	r6, #0
	beq	.Lb16b8
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r5, #1
	neg	r5, r5
.Lb17a2:
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r10
	mov	r1, #2
	bl	_Func_16418
.Lb17b0:
	mov	r0, #0xe
	bl	Func_2dd8
	mov	r0, r5
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b1614

.thumb_func_start Func_b17e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r7, r0
	mov	r0, r8
	mov	r5, r2
	bl	_Func_78414
	mov	r6, r0
	mov	r3, #0
	ldrb	r1, [r6, #2]
	mov	r0, r7
	mov	r10, r3
	bl	_Func_787dc
	mov	r9, r0
	mov	r0, #0x65
	bl	_Func_f9080
	cmp	r10, r5
	bge	.Lb183a
.Lb1814:
	mov	r1, r8
	mov	r0, r7
	bl	_Func_78588
	mov	r10, r0
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	neg	r0, r0
	bl	_Func_79700
	sub	r5, #1
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	_Func_79728
	bl	Func_b10cc
	cmp	r5, #0
	bne	.Lb1814
.Lb183a:
	ldr	r0, =0xca1
	bl	Func_b0574
	mov	r0, r7
	mov	r1, r10
	bl	Func_b1868
	cmp	r0, #0
	beq	.Lb1854
	mov	r0, r7
	mov	r1, r9
	bl	Func_b196c
.Lb1854:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b17e4

.thumb_func_start Func_b1868
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r9, r1
	mov	r11, r3
	mov	r8, r0
	bl	_Func_77394
	mov	r3, r9
	lsl	r5, r3, #1
	mov	r7, r0
	add	r5, #0xd8
	ldrh	r3, [r7, r5]
	ldr	r6, =0x1ff
	and	r6, r3
	mov	r0, r6
	bl	_Func_78414
	ldrh	r2, [r7, r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	mov	r10, r0
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb1948
	mov	r0, r8
	mov	r1, r6
	bl	_Func_7842c
	cmp	r0, #0
	beq	.Lb18f4
	mov	r3, r10
	ldrb	r1, [r3, #2]
	mov	r0, r8
	bl	_Func_787dc
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lb18dc
	lsl	r3, r0, #1
	add	r3, #0xd8
	ldrh	r0, [r7, r3]
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #2
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb1948
.Lb18dc:
	mov	r0, r8
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0xca2
	bl	Func_b04dc
	mov	r0, #0
	bl	Func_b0634
	cmp	r0, #0
	beq	.Lb18f8
.Lb18f4:
	mov	r0, #0
	b	.Lb1948
.Lb18f8:
	mov	r0, r8
	mov	r1, r9
	bl	_Func_78708
	mov	r3, r11
	ldr	r0, [r3, #0x20]
	cmp	r0, #0
	beq	.Lb190e
	mov	r1, r8
	bl	Func_b1dec
.Lb190e:
	mov	r3, r10
	ldrb	r2, [r3, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1940
	mov	r0, #0x67
	bl	_Func_f9080
	bl	_Func_19a54
	mov	r1, #8
	mov	r2, #4
	mov	r3, #2
	ldr	r0, =0xad0
	bl	_Func_17658
	b	.Lb1938
.Lb1932:
	mov	r0, #1
	bl	Func_30f8
.Lb1938:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lb1932
.Lb1940:
	ldr	r0, =0xca3
	bl	Func_b0574
	mov	r0, #1
.Lb1948:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b1868

.thumb_func_start Func_b196c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r6, r1
	bl	_Func_77394
	mov	r3, #1
	neg	r3, r3
	mov	r8, r3
	cmp	r6, r8
	bne	.Lb1988
	mov	r0, #0
	b	.Lb19be
.Lb1988:
	lsl	r3, r6, #1
	add	r3, #0xd8
	ldrh	r3, [r0, r3]
	ldr	r5, =0x1ff
	and	r5, r3
	mov	r0, r5
	bl	_Func_78414
	ldrb	r3, [r0, #2]
	mov	r0, #0
	cmp	r3, #6
	beq	.Lb19be
	mov	r0, r5
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb19be
	mov	r0, r7
	mov	r1, r6
	mov	r2, r8
	bl	Func_b1f4c
	mov	r0, #1
.Lb19be:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b196c

.thumb_func_start Func_b19cc
	push	{r5, r6, r7, lr}
	mov	r6, r0
	bl	_Func_78414
	ldrh	r3, [r0]
	mov	r0, r6
	lsl	r7, r3, #16
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	asr	r5, r7, #16
	cmp	r3, #0
	beq	.Lb19ee
	mov	r5, #0
	b	.Lb1a0c
.Lb19ee:
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r6
	cmp	r3, #0
	beq	.Lb1a00
	lsr	r3, r7, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lb1a0c
.Lb1a00:
	lsl	r3, r5, #1
	add	r0, r3, r5
	cmp	r0, #0
	bge	.Lb1a0a
	add	r0, #3
.Lb1a0a:
	asr	r5, r0, #2
.Lb1a0c:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b19cc

.thumb_func_start Func_b1a14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r0, #1
	mov	r2, #0
	sub	sp, #4
	ldr	r6, [r3]
	mov	r5, #2
	mov	r1, #9
	mov	r3, #4
	mov	r9, r0
	mov	r10, r2
	mov	r0, #0
	mov	r2, #0xc
	str	r5, [sp]
	bl	_Func_162d4
	str	r0, [r6, #0xc]
	bl	Func_b10cc
	mov	r1, #0xc
	mov	r2, #0xe
	mov	r3, #8
	mov	r0, #0x10
	str	r5, [sp]
	bl	_Func_162d4
	mov	r1, #0xe
	str	r0, [r6, #0x20]
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #0
	str	r5, [sp]
	bl	_Func_162d4
	mov	r4, #0xe0
	lsl	r4, #2
	add	r3, r6, r4
	ldr	r2, [r3]
	mov	r8, r0
	mov	r0, #0xea
	mov	r3, #4
	lsl	r0, #2
	strb	r3, [r2, #5]
	add	r2, r6, r0
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r7, #0
	mov	r2, #0
	mov	r0, r8
	mov	r1, #2
	mov	r3, #8
	str	r7, [sp]
	bl	_Func_a1870
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r6
	mov	r11, r2
.Lb1a94:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lb1ae2
	ldr	r0, =0x3a7
	add	r3, r6, r0
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r4, #0
	add	r0, r7, r1
	mov	r9, r4
	bl	Func_b1c_from_thumb
	mov	r3, #0xdb
	mov	r7, r0
	lsl	r1, r7, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r6, #2
	add	r1, r7
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r8
	mov	r2, #0
	mov	r10, r4
	bl	Func_b0a6c
	mov	r3, #3
	mov	r2, r11
	strb	r3, [r2]
	mov	r0, r8
	mov	r1, r7
	mov	r2, #0
	bl	Func_b11c4
	ldr	r0, [r6, #0x20]
	mov	r1, r10
	bl	Func_b1dec
.Lb1ae2:
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb1b40
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r10
	bl	_Func_784d8
	cmp	r0, #0
	bne	.Lb1b06
	mov	r0, #0x71
	bl	_Func_f9080
	b	.Lb1a94
.Lb1b06:
	mov	r0, #0x70
	bl	_Func_f9080
	ldr	r4, =0x3aa
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #1
	bne	.Lb1b22
	mov	r0, r10
	bl	Func_b1bd0
	b	.Lb1b28
.Lb1b22:
	mov	r0, r10
	bl	Func_b211c
.Lb1b28:
	mov	r0, #0xe0
	lsl	r0, #2
	add	r3, r6, r0
	ldr	r2, [r3]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r3, #0xc
	mov	r2, r11
	strb	r3, [r2]
	mov	r3, #1
	mov	r9, r3
	b	.Lb1a94
.Lb1b40:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1b86
	mov	r0, #0x71
	bl	_Func_f9080
	bl	_Func_a195c
	mov	r0, r8
	mov	r1, #2
	bl	_Func_16418
	ldr	r0, [r6, #0x20]
	mov	r1, #2
	bl	_Func_16418
	ldr	r0, [r6, #0xc]
	mov	r1, #2
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.Lb1b86:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1b9e
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r4, #1
	sub	r7, #1
	mov	r9, r4
.Lb1b9e:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1bb4
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #1
	add	r7, #1
	mov	r9, r0
.Lb1bb4:
	mov	r0, #1
	bl	Func_30f8
	b	.Lb1a94
.func_end Func_b1a14

.thumb_func_start Func_b1bd0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x18
	str	r0, [sp, #0x14]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r11, r3
	bl	_Func_77394
	mov	r2, #1
	mov	r3, #2
	str	r0, [sp, #8]
	str	r3, [sp]
	mov	r9, r2
	mov	r0, #0xf
	mov	r1, #8
	mov	r2, #0xf
	mov	r3, #4
	bl	_Func_162d4
	str	r0, [sp, #0xc]
	mov	r7, #0
.Lb1c06:
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	mov	r1, #5
	bl	_Func_162d4
	mov	r3, #0xe0
	str	r0, [sp, #0x10]
	lsl	r3, #2
	add	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #0xc
	add	r2, r11
	strb	r3, [r2]
	mov	r3, #1
	mov	r10, r3
.Lb1c32:
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb1cba
	mov	r3, #0
	ldr	r0, [sp, #0x14]
	mov	r10, r3
	bl	_Func_784d8
	mov	r9, r0
	mov	r3, r9
	sub	r3, #1
	cmp	r7, r3
	ble	.Lb1c4e
	mov	r7, r3
.Lb1c4e:
	ldr	r2, [sp, #8]
	lsl	r4, r7, #1
	add	r4, #0xd8
	ldrh	r3, [r2, r4]
	ldr	r6, .Lb1c94	@ 0x1ff
	and	r6, r3
	mov	r3, r11
	ldr	r3, [r3, #0x20]
	mov	r1, #5
	mov	r0, r7
	str	r4, [sp, #4]
	mov	r8, r3
	bl	Func_b1c_from_thumb
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	Func_af0_from_thumb
	mov	r2, r0
	lsl	r5, #4
	lsl	r2, #4
	mov	r1, r5
	add	r2, #8
	mov	r0, r8
	bl	Func_b0a6c
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #3
	add	r2, r11
	strb	r3, [r2]
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #4]
	b	.Lb1c9c

	.align	2, 0
.Lb1c94:
	.word	0x1ff
	.pool

.Lb1c9c:
	ldrh	r0, [r2, r4]
	bl	Func_b19cc
	mov	r1, r6
	mov	r2, r0
	mov	r3, #1
	ldr	r0, [sp, #0xc]
	bl	Func_b110c
	ldr	r3, =0x75
	add	r6, r3
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	bl	Func_b11a4
.Lb1cba:
	ldr	r1, =iwram_1c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1cd0
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r5, #0
	b	.Lb1d82
.Lb1cd0:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1ce6
	mov	r0, #0x71
	mov	r5, #1
	bl	_Func_f9080
	neg	r5, r5

	b	.Lb1d82
.Lb1ce6:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1d0a
	mov	r0, #0x6f
	bl	_Func_f9080
	sub	r7, #1
	mov	r3, r9
	add	r0, r7, r3
	mov	r1, r9
	bl	Func_b1c_from_thumb
	mov	r2, #1
	mov	r7, r0
	mov	r10, r2
.Lb1d0a:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1d2c
	mov	r0, #0x6f
	bl	_Func_f9080
	add	r7, #1
	mov	r3, r9
	add	r0, r7, r3
	mov	r1, r9
	bl	Func_b1c_from_thumb
	mov	r2, #1
	mov	r7, r0
	mov	r10, r2
.Lb1d2c:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1d52
	sub	r7, #5
	cmp	r7, #0
	bge	.Lb1d3e
	add	r7, #0xf
.Lb1d3e:
	cmp	r7, r9
	blt	.Lb1d48
.Lb1d42:
	sub	r7, #5
	cmp	r7, r9
	bge	.Lb1d42
.Lb1d48:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, #1
	mov	r10, r3
.Lb1d52:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1d7a
	add	r7, #5
	cmp	r7, r9
	blt	.Lb1d66
	sub	r7, #0xf
.Lb1d66:
	cmp	r7, #0
	bge	.Lb1d70
.Lb1d6a:
	add	r7, #5
	cmp	r7, #0
	blt	.Lb1d6a
.Lb1d70:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	mov	r10, r2
.Lb1d7a:
	mov	r0, #1
	bl	Func_30f8
	b	.Lb1c32
.Lb1d82:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	cmp	r5, #0
	bne	.Lb1dc0
	ldr	r0, [sp, #0x14]
	mov	r1, r7
	bl	Func_b1e80
	mov	r3, #1
	mov	r2, r0
	neg	r3, r3
	cmp	r2, r3
	beq	.Lb1dae
	ldr	r0, [sp, #0x14]
	mov	r1, r7
	bl	Func_b1f4c
.Lb1dae:
	ldr	r0, =0xcaa
	bl	Func_b04dc
	ldr	r0, [sp, #0x14]
	bl	_Func_784d8
	cmp	r0, #0
	beq	.Lb1dc0
	b	.Lb1c06
.Lb1dc0:
	ldr	r0, [sp, #0xc]
	mov	r1, #2
	bl	_Func_16418
	mov	r0, r5
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b1bd0

.thumb_func_start Func_b1dec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r9, r0
	mov	r0, r5
	sub	sp, #4
	bl	_Func_77394
	mov	r2, #0
	mov	r3, r9
	mov	r10, r0
	mov	r7, #8
	mov	r8, r2
	cmp	r3, #0
	beq	.Lb1e6c
	mov	r0, r9
	bl	_Func_16478
	mov	r0, r5
	bl	_Func_784d8
	cmp	r0, #0
	bne	.Lb1e2e
	ldr	r0, =0xc91
	mov	r1, r9
	mov	r2, #8
	mov	r3, #0x14
	bl	_Func_1e74c
	b	.Lb1e6c
.Lb1e2e:
	mov	r5, #0
	mov	r6, #0xd8
.Lb1e32:
	mov	r2, r10
	ldrh	r3, [r6, r2]
	cmp	r3, #0
	beq	.Lb1e4e
	mov	r0, r3
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1b
	mov	r3, r7
	mov	r2, r9
	bl	_Func_1eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
.Lb1e4e:
	add	r7, #0x10
	cmp	r5, #4
	bne	.Lb1e5a
	mov	r2, #0x10
	mov	r7, #8
	add	r8, r2
.Lb1e5a:
	cmp	r5, #9
	bne	.Lb1e64
	mov	r3, #0x10
	mov	r7, #8
	add	r8, r3
.Lb1e64:
	add	r5, #1
	add	r6, #2
	cmp	r5, #0xe
	ble	.Lb1e32
.Lb1e6c:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b1dec

.thumb_func_start Func_b1e80
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	sub	sp, #4
	ldr	r7, [r3]
	mov	r10, r0
	mov	r9, r1
	bl	_Func_77394
	mov	r1, r9
	lsl	r5, r1, #1
	mov	r6, r0
	add	r5, #0xd8
	ldrh	r0, [r6, r5]
	bl	_Func_78414
	mov	r2, #1
	str	r2, [sp]
	mov	r8, r0
	ldrh	r0, [r6, r5]
	bl	Func_b19cc
	mov	r1, r9
	mov	r11, r0
	mov	r0, r10
	bl	_Func_784b0
	mov	r3, r8
	ldrb	r2, [r3, #3]
	mov	r3, #0x10
	and	r3, r2
	mov	r10, r0
	cmp	r3, #0
	beq	.Lb1f2c
	cmp	r0, #1
	ble	.Lb1f2c
	ldr	r0, =0xcad
	bl	Func_b04dc
	mov	r1, #0xe2
	lsl	r1, #2
	add	r3, r7, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r8, r2
	ldr	r2, =0x38a
	add	r3, r7, r2
	sub	r2, #0xa
	add	r5, r7, r2
	ldr	r2, [r5]
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r0, #0
	mov	r1, #0x80
	mov	r2, #0x30
	bl	Func_b0a6c
	mov	r1, r10
	mov	r2, r11
	mov	r0, #0
	bl	Func_b1614
	str	r0, [sp]
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, [r5]
	bl	_Func_a17c4
	mov	r0, #0
	mov	r1, r8
	mov	r2, r6
	bl	Func_b0a6c
.Lb1f2c:
	ldr	r0, [sp]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b1e80

.thumb_func_start Func_b1f4c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r7, r2
	str	r3, [sp, #8]
	bl	_Func_77394
	ldr	r2, [sp, #0xc]
	lsl	r2, #1
	str	r2, [sp, #4]
	mov	r5, r2
	mov	r6, r0
	add	r5, #0xd8
	ldrh	r3, [r6, r5]
	ldr	r2, =0x1ff
	and	r2, r3
	mov	r10, r2
	mov	r0, r10
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #4
	and	r3, r2
	lsl	r3, #24
	lsr	r3, #24
	mov	r2, #1
	mov	r11, r3
	neg	r2, r2
	mov	r3, #0
	mov	r9, r0
	str	r3, [sp]
	cmp	r7, r2
	bne	.Lb1fa6
	mov	r3, #1
	str	r3, [sp]
	mov	r7, #1
.Lb1fa6:
	ldrh	r0, [r6, r5]
	bl	Func_b19cc
	mov	r2, r7
	mul	r2, r0
	mov	r8, r2
	cmp	r2, #0
	bne	.Lb1fc6
	mov	r0, r10
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0xcac
	bl	Func_b0574
	b	.Lb20a0
.Lb1fc6:
	ldrh	r2, [r6, r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1fee
	mov	r3, r9
	ldrb	r2, [r3, #3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb1fee
	mov	r0, r10
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0xcab
	bl	Func_b0574
	b	.Lb20a0
.Lb1fee:
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.Lb1ff8
	ldr	r5, =0xcb2
	b	.Lb2020
.Lb1ff8:
	ldr	r3, [sp, #4]
	add	r3, #0xd8
	ldrh	r2, [r6, r3]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Lb200c
	ldr	r5, =0xcb1
	b	.Lb2020
.Lb200c:
	cmp	r7, #1
	ble	.Lb2014
	ldr	r5, =0xcb0
	b	.Lb2020
.Lb2014:
	mov	r3, r11
	cmp	r3, #0
	beq	.Lb201e
	ldr	r5, =0xcaf
	b	.Lb2020
.Lb201e:
	ldr	r5, =0xcae
.Lb2020:
	mov	r0, r10
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r8
	mov	r1, #5
	bl	_Func_19908
	mov	r0, r5
	bl	Func_b0574
	mov	r0, #0
	bl	Func_b0634
	cmp	r0, #0
	beq	.Lb205a
	mov	r2, r11
	cmp	r2, #0
	bne	.Lb204c
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.Lb2050
.Lb204c:
	ldr	r5, =0xcb6
	b	.Lb2052
.Lb2050:
	ldr	r5, =0xcb4
.Lb2052:
	mov	r0, r5
	bl	Func_b0574
	b	.Lb20a0
.Lb205a:
	mov	r0, #0x66
	bl	_Func_f9080
	cmp	r7, #0
	ble	.Lb2074
	mov	r5, r7
.Lb2066:
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	sub	r5, #1
	bl	_Func_78948
	cmp	r5, #0
	bne	.Lb2066
.Lb2074:
	mov	r0, r8
	bl	_Func_79700
	bl	Func_b10cc
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #0x10]
	ldr	r0, [r2, #0x20]
	bl	Func_b1dec
	mov	r3, r11
	cmp	r3, #0
	bne	.Lb2094
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.Lb2098
.Lb2094:
	ldr	r5, =0xcb5
	b	.Lb209a
.Lb2098:
	ldr	r5, =0xcb3
.Lb209a:
	mov	r0, r5
	bl	Func_b0574
.Lb20a0:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b1f4c

.thumb_func_start Func_b20e8
	push	{r5, lr}
	mov	r5, r0
	bl	_Func_78414
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	cmp	r0, #0
	bge	.Lb20fa
	add	r0, #3
.Lb20fa:
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r5
	asr	r0, #2
	cmp	r3, #0
	bne	.Lb2108
	mov	r0, #0
.Lb2108:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b20e8

.thumb_func_start Func_b2110
	push	{lr}
	bl	Func_b1a14
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Func_b2110

.thumb_func_start Func_b211c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x18
	str	r0, [sp, #0x14]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r11, r3
	bl	_Func_77394
	mov	r2, #1
	mov	r3, #2
	str	r0, [sp, #8]
	str	r3, [sp]
	mov	r9, r2
	mov	r0, #0xf
	mov	r1, #8
	mov	r2, #0xf
	mov	r3, #4
	bl	_Func_162d4
	str	r0, [sp, #0xc]
	mov	r7, #0
.Lb2152:
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	mov	r1, #5
	bl	_Func_162d4
	mov	r3, #0xe0
	str	r0, [sp, #0x10]
	lsl	r3, #2
	add	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #0xc
	add	r2, r11
	strb	r3, [r2]
	mov	r3, #1
	mov	r10, r3
.Lb217e:
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb2206
	mov	r3, #0
	ldr	r0, [sp, #0x14]
	mov	r10, r3
	bl	_Func_784d8
	mov	r9, r0
	mov	r3, r9
	sub	r3, #1
	cmp	r7, r3
	ble	.Lb219a
	mov	r7, r3
.Lb219a:
	ldr	r2, [sp, #8]
	lsl	r4, r7, #1
	add	r4, #0xd8
	ldrh	r3, [r2, r4]
	ldr	r6, .Lb21e0	@ 0x1ff
	and	r6, r3
	mov	r3, r11
	ldr	r3, [r3, #0x20]
	mov	r1, #5
	mov	r0, r7
	str	r4, [sp, #4]
	mov	r8, r3
	bl	Func_b1c_from_thumb
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	Func_af0_from_thumb
	mov	r2, r0
	lsl	r5, #4
	lsl	r2, #4
	mov	r1, r5
	add	r2, #8
	mov	r0, r8
	bl	Func_b0a6c
	mov	r2, #0xea
	lsl	r2, #2
	mov	r3, #3
	add	r2, r11
	strb	r3, [r2]
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #4]
	b	.Lb21e8

	.align	2, 0
.Lb21e0:
	.word	0x1ff
	.pool

.Lb21e8:
	ldrh	r0, [r2, r4]
	bl	Func_b20e8
	mov	r1, r6
	mov	r2, r0
	mov	r3, #2
	ldr	r0, [sp, #0xc]
	bl	Func_b110c
	ldr	r3, =0x75
	add	r6, r3
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	bl	Func_b11a4
.Lb2206:
	ldr	r1, =iwram_1c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb221c
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r5, #0
	b	.Lb22ce
.Lb221c:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2232
	mov	r0, #0x71
	mov	r5, #1
	bl	_Func_f9080
	neg	r5, r5
	b	.Lb22ce
.Lb2232:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2256
	mov	r0, #0x6f
	bl	_Func_f9080
	sub	r7, #1
	mov	r3, r9
	add	r0, r7, r3
	mov	r1, r9
	bl	Func_b1c_from_thumb
	mov	r2, #1
	mov	r7, r0
	mov	r10, r2
.Lb2256:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2278
	mov	r0, #0x6f
	bl	_Func_f9080
	add	r7, #1
	mov	r3, r9
	add	r0, r7, r3
	mov	r1, r9
	bl	Func_b1c_from_thumb
	mov	r2, #1
	mov	r7, r0
	mov	r10, r2
.Lb2278:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb229e
	sub	r7, #5
	cmp	r7, #0
	bge	.Lb228a
	add	r7, #0xf
.Lb228a:
	cmp	r7, r9
	blt	.Lb2294
.Lb228e:
	sub	r7, #5
	cmp	r7, r9
	bge	.Lb228e
.Lb2294:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, #1
	mov	r10, r3
.Lb229e:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lb22c6
	add	r7, #5
	cmp	r7, r9
	blt	.Lb22b2
	sub	r7, #0xf
.Lb22b2:
	cmp	r7, #0
	bge	.Lb22bc
.Lb22b6:
	add	r7, #5
	cmp	r7, #0
	blt	.Lb22b6
.Lb22bc:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	mov	r10, r2
.Lb22c6:
	mov	r0, #1
	bl	Func_30f8
	b	.Lb217e
.Lb22ce:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	cmp	r5, #0
	bne	.Lb22fa
	ldr	r0, [sp, #0x14]
	mov	r1, r7
	bl	Func_b2328
	ldr	r0, =0xcc2
	bl	Func_b04dc
	ldr	r0, [sp, #0x14]
	bl	_Func_784d8
	cmp	r0, #0
	beq	.Lb22fa
	b	.Lb2152
.Lb22fa:
	ldr	r0, [sp, #0xc]
	mov	r1, #2
	bl	_Func_16418
	mov	r0, r5
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b211c

.thumb_func_start Func_b2328
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r1, [sp, #0xc]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r7, r0
	str	r3, [sp, #8]
	bl	_Func_77394
	ldr	r2, [sp, #0xc]
	lsl	r2, #1
	str	r2, [sp, #4]
	mov	r6, r2
	add	r6, #0xd8
	ldrh	r3, [r0, r6]
	ldr	r2, =0x1ff
	and	r2, r3
	mov	r10, r2
	mov	r8, r0
	mov	r0, r10
	bl	_Func_78414
	mov	r5, r0
	ldrb	r1, [r5, #2]
	mov	r0, r7
	bl	_Func_787dc
	str	r0, [sp]
	mov	r3, r8
	ldrh	r0, [r3, r6]
	bl	Func_b20e8
	ldrb	r1, [r5, #0xc]
	mov	r9, r0
	cmp	r1, #2
	beq	.Lb238c
	mov	r0, r10
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0xcba
	bl	Func_b0574
	b	.Lb24b0
.Lb238c:
	mov	r3, r8
	ldrh	r2, [r3, r6]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lb23aa
	mov	r0, r10
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0xcbb
	bl	Func_b0574
	b	.Lb24b0
.Lb23aa:
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb23cc
	ldrb	r3, [r5, #3]
	and	r3, r1
	cmp	r3, #0
	beq	.Lb23cc
	mov	r0, r10
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0xcbc
	bl	Func_b0574
	b	.Lb24b0
.Lb23cc:
	ldr	r3, =ewram_240
	ldr	r3, [r3, #0x10]
	cmp	r9, r3
	bls	.Lb23dc
	ldr	r0, =0xcbd
	bl	Func_b0574
	b	.Lb24b0
.Lb23dc:
	mov	r0, r10
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r9
	mov	r1, #5
	bl	_Func_19908
	ldr	r2, =0xcbe
	mov	r11, r2
	mov	r0, r11
	bl	Func_b0574
	mov	r0, #0
	bl	Func_b0634
	cmp	r0, #0
	beq	.Lb240a
	mov	r0, r11
	add	r0, #1
	bl	Func_b0574
	b	.Lb24b0
.Lb240a:
	ldr	r5, [sp, #4]
	mov	r2, r8
	add	r5, #0xd8
	mov	r3, r8
	ldrh	r6, [r3, r5]
	strh	r0, [r2, r5]
	ldr	r3, [sp, #8]
	mov	r1, r7
	ldr	r0, [r3, #0x20]
	bl	Func_b1dec
	mov	r1, #2
	mov	r0, r10
	bl	_Func_19908
	mov	r0, r11
	add	r0, #2
	bl	Func_b0574
	bl	_Func_19a54
	mov	r0, #0xa
	bl	Func_30f8
	mov	r0, #0x64
	bl	_Func_f9080
	mov	r0, #0x6e
	bl	Func_30f8
	mov	r0, #0x64
	bl	_Func_f9080
	mov	r0, #0x6e
	bl	Func_30f8
	mov	r0, #0x64
	bl	_Func_f9080
	mov	r0, #0x6e
	bl	Func_30f8
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r0, #0x14
	bl	Func_30f8
	mov	r2, r8
	strh	r6, [r2, r5]
	ldr	r1, [sp, #0xc]
	mov	r0, r7
	bl	_Func_78a60
	mov	r3, r9
	neg	r0, r3
	bl	_Func_79700
	bl	Func_b10cc
	ldr	r2, [sp, #8]
	mov	r1, r7
	ldr	r0, [r2, #0x20]
	bl	Func_b1dec
	mov	r1, #2
	mov	r0, r10
	bl	_Func_19908
	mov	r0, r11
	add	r0, #3
	bl	Func_b0574
	mov	r0, r7
	ldr	r1, [sp, #0xc]
	bl	Func_b1868
	cmp	r0, #0
	beq	.Lb24b0
	mov	r0, r7
	ldr	r1, [sp]
	bl	Func_b196c
.Lb24b0:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b2328

.thumb_func_start Func_b24e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r1, [sp, #8]
	ldr	r3, =iwram_1f2c
	ldr	r6, [r3]
	ldr	r3, =0x39e
	add	r3, r6
	ldrh	r4, [r3]
	mov	r9, r0
	mov	r0, #1
	ldr	r1, =ewram_240
	mov	r11, r0
	mov	r0, #0x8e
	str	r4, [sp]
	lsl	r0, #1
	mov	r8, r3
	add	r3, r1, r0
	mov	r2, #0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r10, r2
	ldr	r2, =.Lb4146
	lsl	r3, #1
	ldrsh	r4, [r2, r3]
	mov	r2, #0x8c
	str	r4, [sp, #4]
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r7, #0
	cmp	r4, r3
	ble	.Lb2534
	b	.Lb2684
.Lb2534:
	mov	r3, #0xe4
	mov	r4, r8
	strh	r3, [r4]
	mov	r1, #2
	mov	r0, #0xe4
	bl	_Func_19908
	ldr	r5, =0xcc3
	mov	r0, r5
	bl	Func_b0574
	mov	r2, r8
	ldrh	r0, [r2]
	mov	r1, #2
	add	r5, #1
	bl	_Func_19908
	mov	r0, r5
	bl	Func_b0574
.Lb255c:
	mov	r3, r11
	cmp	r3, #0
	beq	.Lb25b4
	ldr	r0, =0x3a7
	add	r3, r6, r0
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r4, #0
	add	r0, r7, r1
	mov	r11, r4
	bl	Func_b1c_from_thumb
	mov	r3, #0xdb
	mov	r7, r0
	lsl	r1, r7, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r6, #2
	add	r1, r7
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r9
	mov	r2, #0
	mov	r10, r4
	bl	Func_b0a6c
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r6, r3
	ldr	r4, =0x39e
	mov	r3, #3
	strb	r3, [r2]
	add	r5, r6, r4
	ldrh	r2, [r5]
	mov	r0, r9
	mov	r1, r7
	bl	Func_b11c4
	ldrh	r2, [r5]
	ldr	r0, [sp, #8]
	mov	r1, r10
	bl	Func_b1470
.Lb25b4:
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb262c
	ldr	r0, =0x39e
	add	r5, r6, r0
	ldrh	r1, [r5]
	mov	r0, r10
	bl	_Func_78588
	mov	r1, r0
	cmp	r1, #0
	bge	.Lb2602
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r0, r10
	mov	r1, #1
	bl	_Func_19908
	ldrh	r0, [r5]
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r10
	bl	_Func_784d8
	cmp	r0, #0xf
	bne	.Lb25fa
	ldr	r0, =0xc9e
	bl	Func_b04dc
	b	.Lb255c
.Lb25fa:
	ldr	r0, =0xca6
	bl	Func_b04dc
	b	.Lb255c
.Lb2602:
	mov	r0, r10
	bl	_Func_788c4
	mov	r0, #0x65
	bl	_Func_f9080
	ldr	r0, =0xca1
	bl	Func_b0574
	ldrh	r1, [r5]
	mov	r0, r10
	bl	_Func_78588
	ldr	r2, [sp, #4]
	neg	r0, r2
	bl	_Func_79728
	mov	r0, #1
	bl	_Func_79754
	b	.Lb267a
.Lb262c:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2644
	ldr	r0, =0xcc5
	bl	Func_b0574
	mov	r0, #0x71
	bl	_Func_f9080
	b	.Lb267a
.Lb2644:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb265c
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, #1
	sub	r7, #1
	mov	r11, r3
.Lb265c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2672
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r4, #1
	add	r7, #1
	mov	r11, r4
.Lb2672:
	mov	r0, #1
	bl	Func_30f8
	b	.Lb255c
.Lb267a:
	ldr	r0, =0x39e
	mov	r2, sp
	ldrh	r2, [r2]
	add	r3, r6, r0
	strh	r2, [r3]
.Lb2684:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b24e4

.thumb_func_start Func_b26c8
	mov	r0, #0x23
	bx	lr
.func_end Func_b26c8

.thumb_func_start Func_b26cc
	push	{r5, r6, lr}
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	add	r6, r5, r3
	mov	r0, r6
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lb2716
	mov	r0, r6
	bl	_Func_79358
	lsl	r3, r5, #5
	add	r3, r5
	lsl	r2, r3, #1
	ldr	r1, =.Lb41ac
	mov	r3, r2
	add	r3, #0x30
	ldrsh	r0, [r1, r3]
	mov	r6, #0
	cmp	r0, #0
	beq	.Lb2716
	add	r3, r2, r1
	mov	r5, r3
	add	r5, #0x30
.Lb2700:
	mov	r1, #1
	add	r6, #1
	bl	_Func_78ad0
	cmp	r6, #7
	bgt	.Lb2716
	add	r5, #2
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	cmp	r0, #0
	bne	.Lb2700
.Lb2716:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b26cc

.thumb_func_start Func_b2720
	push	{r5, lr}
	lsl	r3, r0, #5
	add	r3, r0
	mov	r5, r1
	ldr	r1, =.Lb41ac
	lsl	r2, r3, #1
	ldrsh	r3, [r1, r2]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lb274e
	mov	r0, r5
	add	r2, r1
.Lb2738:
	ldrh	r3, [r2]
	add	r4, #1
	strh	r3, [r0]
	add	r2, #2
	add	r0, #2
	cmp	r4, #0x17
	bgt	.Lb274e
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.Lb2738
.Lb274e:
	ldr	r3, .Lb275c	@ 0
	lsl	r2, r4, #1
	strh	r3, [r2, r5]
	mov	r0, r4
	pop	{r5}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb275c:
	.word	0
.func_end Func_b2720

.thumb_func_start Func_b2764
	lsl	r3, r0, #5
	add	r3, r0
	ldr	r2, =.Lb41ac
	lsl	r3, #1
	add	r3, #0x40
	ldrsh	r0, [r2, r3]
	bx	lr
.func_end Func_b2764

.thumb_func_start Func_b2778
	push	{r5, lr}
	mov	r5, r1
	bl	_Func_77394
	ldrb	r2, [r0, #0xf]
	mov	r0, #0
	cmp	r5, #0
	bne	.Lb2790
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r0, r3, #2
	b	.Lb27aa
.Lb2790:
	cmp	r5, #1
	bne	.Lb2798
	mov	r0, #0xa
	b	.Lb27aa
.Lb2798:
	cmp	r5, #2
	bne	.Lb27a0
	mov	r0, #0x32
	b	.Lb27aa
.Lb27a0:
	cmp	r5, #3
	bne	.Lb27aa
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r0, r3, #1
.Lb27aa:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b2778

.thumb_func_start Func_b27b0
	push	{r5, lr}
	mov	r5, r1
	bl	_Func_77394
	mov	r2, r0
	mov	r0, #0
	cmp	r5, #0
	bne	.Lb27c8
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	ble	.Lb27fe
.Lb27c8:
	cmp	r5, #1
	bne	.Lb27da
	ldr	r1, =0x131
	add	r3, r2, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.Lb27fe
.Lb27da:
	cmp	r5, #2
	bne	.Lb27ea
	mov	r1, #0xa0
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb27fe
.Lb27ea:
	cmp	r5, #3
	bne	.Lb2800
	mov	r1, #0x98
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb2800
.Lb27fe:
	mov	r0, #1
.Lb2800:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b27b0

.thumb_func_start Func_b280c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r1, =0x3aa
	ldr	r5, [r3]
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	sub	r1, #3
	mov	r10, r3
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	sub	sp, #4
	mov	r7, #0
	cmp	r2, r3
	bge	.Lb2866
	add	r3, r5, #2
	mov	r6, #0xdb
	mov	r8, r3
	lsl	r6, #2
.Lb2840:
	mov	r1, r8
	ldrsh	r0, [r1, r6]
	mov	r1, r10
	str	r2, [sp]
	bl	Func_b27b0
	ldr	r2, [sp]
	cmp	r0, #0
	beq	.Lb2854
	add	r2, #1
.Lb2854:
	ldr	r1, =0x3a7
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	blt	.Lb2840
.Lb2866:
	mov	r0, r2
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b280c

.thumb_func_start Func_b2884
	push	{lr}
	ldr	r3, =iwram_1f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #1
	bne	.Lb289e
	ldr	r3, =0xd2e
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb289e:
	cmp	r1, #2
	bne	.Lb28aa
	ldr	r3, =0xd38
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28aa:
	cmp	r1, #3
	bne	.Lb28b6
	ldr	r3, =0xd42
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28b6:
	pop	{r1}
	bx	r1
.func_end Func_b2884

.thumb_func_start Func_b28d4
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f2c
	mov	r2, #0xe9
	ldr	r3, [r3]
	lsl	r2, #2
	add	r3, r2
	mov	r6, r0
	ldrh	r0, [r3]
	bl	_Func_915ac
	mov	r5, r0
	bl	_Func_19a54
	mov	r0, r6
	bl	Func_b2884
	lsl	r5, #16
	mov	r3, #0x22
	orr	r5, r3
	mov	r1, #5
	mov	r2, #0
	mov	r3, r5
	mov	r6, r0
	bl	_Func_17658
	b	.Lb290e
.Lb2908:
	mov	r0, #1
	bl	Func_30f8
.Lb290e:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lb2908
	mov	r0, #1
	bl	Func_30f8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b28d4

.thumb_func_start Func_b2928
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r6, #0xe0
	mov	r8, r3
	lsl	r6, #2
	add	r6, r8
	ldr	r3, [r6]
	ldrb	r3, [r3, #5]
	mov	r10, r3
	mov	r3, #0xe9
	lsl	r3, #2
	add	r3, r8
	mov	r7, r0
	ldrh	r0, [r3]
	bl	_Func_915ac
	mov	r5, r0
	mov	r0, r7
	bl	Func_b2884
	ldr	r2, [r6]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r7, r0
	lsl	r5, #16
	bl	_Func_19a54
	mov	r3, #0x22
	orr	r5, r3
	mov	r0, r7
	mov	r1, #5
	mov	r2, #0
	mov	r3, r5
	bl	_Func_17658
	b	.Lb297e
.Lb2978:
	mov	r0, #1
	bl	Func_30f8
.Lb297e:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lb2978
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r3, [r3]
	mov	r2, r10
	strb	r2, [r3, #5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b2928

.thumb_func_start Func_b29a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	sub	sp, #8
	mov	r8, r1
	mov	r5, r0
	mov	r10, r1
	bl	Func_b010c
	ldr	r3, =iwram_1f2c
	ldr	r2, =0x3aa
	ldr	r7, [r3]
	mov	r1, r8
	add	r3, r7, r2
	strb	r1, [r3]
	mov	r0, r5
	bl	_Func_92054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0xe9
	ldrh	r2, [r3]
	lsl	r1, #2
	add	r3, r7, r1
	strh	r2, [r3]
	mov	r1, #0
	ldrh	r0, [r3]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_19da8
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb2a2c
	mov	r0, #5
	neg	r0, r0
	mov	r5, #2
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	str	r5, [sp]
	bl	_Func_162d4
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb2a2c
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	mov	r0, #0
	str	r5, [sp]
	bl	_Func_162d4
	mov	r3, #4
	neg	r3, r3
	mov	r8, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	mov	r3, r8
	bl	_Func_1ec6c
.Lb2a2c:
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r7, r2
	mov	r1, #0x80
	ldrh	r0, [r3]
	mov	r6, #0
	lsl	r1, #23
	mov	r2, r8
	mov	r3, #0
	str	r6, [sp]
	bl	_Func_1eadc
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r5, #5]
	mov	r3, #0xe0
	lsl	r3, #2
	strb	r6, [r5, #4]
	mov	r1, #0x20
	add	r6, r7, r3
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0x70
	bl	Func_b0a20
	str	r5, [r6]
	ldr	r0, =0xd21
	bl	Func_b28d4
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x10
	bl	_Func_162d4
	str	r0, [r7, #0xc]
	bl	Func_b10cc
	ldr	r1, =0x3aa
	add	r6, r7, r1
	b	.Lb2ab8
.Lb2a82:
	ldr	r5, =0xd24
	mov	r0, r5
	bl	Func_b28d4
	bl	Func_b280c
	cmp	r0, #0
	bne	.Lb2a9a
	add	r0, r5, #1
	bl	Func_b28d4
	b	.Lb2a9e
.Lb2a9a:
	bl	Func_b2b10
.Lb2a9e:
	mov	r2, #0xe0
	mov	r3, #0
	lsl	r2, #2
	mov	r1, #0x20
	add	r0, r7, r2
	strb	r3, [r6]
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_b0a20
	ldr	r0, =0xd22
	bl	Func_b28d4
.Lb2ab8:
	mov	r0, r10
	bl	_Func_28db4
	mov	r1, #1
	mov	r10, r0
	mov	r3, r10
	neg	r1, r1
	strb	r3, [r6]
	cmp	r10, r1
	bne	.Lb2a82
	ldr	r0, =0xd23
	bl	Func_b28d4
	ldr	r0, [r7, #0xc]
	mov	r1, #2
	bl	_Func_16418
	mov	r0, r8
	mov	r1, #2
	bl	_Func_16418
	bl	Func_b0204
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b29a8

.thumb_func_start Func_b2b10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	sub	sp, #0xc
	ldr	r7, [r3]
	mov	r1, #1
	ldr	r2, =0x3aa
	mov	r0, #0
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r0, =0xd26
	mov	r9, r3
	bl	Func_b28d4
	mov	r5, #2
	mov	r1, #0xc
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #1
	str	r5, [sp]
	bl	_Func_162d4
	mov	r4, #0xe0
	lsl	r4, #2
	add	r3, r7, r4
	ldr	r2, [r3]
	add	r1, sp, #4
	mov	r11, r0
	mov	r0, #0xea
	ldrb	r1, [r1]
	mov	r3, #4
	lsl	r0, #2
	strb	r3, [r2, #5]
	add	r3, r7, r0
	strb	r1, [r3]
	ldr	r2, [sp, #8]
	mov	r0, r11
	str	r2, [sp]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_a1870
	mov	r0, #1
	mov	r1, #0x10
	mov	r2, #0x17
	mov	r3, #3
	str	r5, [sp]
	bl	_Func_162d4
	mov	r6, #0
	mov	r5, #0xdb
	mov	r10, r6
	mov	r8, r6
	lsl	r5, #2
	str	r0, [sp, #8]
	b	.Lb2b98
.Lb2b94:
	add	r5, #2
	add	r6, #1
.Lb2b98:
	ldr	r4, =0x3a7
	add	r3, r7, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r6, r3
	bge	.Lb2bb6
	add	r3, r7, #2
	ldrsh	r0, [r3, r5]
	mov	r1, r9
	mov	r10, r0
	bl	Func_b27b0
	cmp	r0, #0
	beq	.Lb2b94
.Lb2bb6:
	mov	r2, #1
	str	r2, [sp, #4]
.Lb2bba:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb2bfa
	mov	r4, #0
	ldr	r0, =0xd26
	mov	r8, r4
	bl	Func_b28d4
	mov	r5, #0xdb
	mov	r0, #1
	mov	r6, #0
	lsl	r5, #2
	str	r0, [sp, #4]
	b	.Lb2bda
.Lb2bd6:
	add	r5, #2
	add	r6, #1
.Lb2bda:
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r6, r3
	bge	.Lb2bfa
	add	r3, r7, #2
	ldrsh	r2, [r3, r5]
	mov	r10, r2
	mov	r0, r10
	mov	r1, r9
	bl	Func_b27b0
	cmp	r0, #0
	beq	.Lb2bd6
.Lb2bfa:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.Lb2c4a
	ldr	r2, =0x3a7
	mov	r1, #0
	str	r1, [sp, #4]
	add	r3, r7, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	add	r0, r6, r1
	bl	Func_b1c_from_thumb
	mov	r3, #0xdb
	mov	r6, r0
	lsl	r1, r6, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r7, #2
	add	r1, r6
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r11
	mov	r2, #0
	mov	r10, r4
	bl	Func_b0a6c
	mov	r1, #0xea
	lsl	r1, #2
	add	r2, r7, r1
	mov	r3, #3
	mov	r0, r11
	mov	r1, r6
	strb	r3, [r2]
	bl	Func_b2e30
	mov	r1, r10
	ldr	r0, [sp, #8]
	bl	Func_b2ed8
.Lb2c4a:
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb2d12
	mov	r0, #1
	bl	Func_30f8
	mov	r1, r9
	mov	r0, r10
	bl	Func_b2778
	mov	r1, r9
	mov	r5, r0
	mov	r0, r10
	bl	Func_b27b0
	cmp	r0, #0
	bne	.Lb2c7a
	mov	r0, #0x71
	bl	_Func_f9080
	b	.Lb2bba
.Lb2c7a:
	mov	r0, r10
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r5
	mov	r1, #5
	bl	_Func_19908
	ldr	r2, =0xd27
	mov	r8, r2
	mov	r0, r8
	bl	Func_b28d4
	mov	r0, #0
	bl	Func_b0664
	cmp	r0, #0
	beq	.Lb2cac
	mov	r0, r8
	add	r0, #2
	bl	Func_b2928
	mov	r3, #1
	mov	r8, r3
	b	.Lb2bba
.Lb2cac:
	ldr	r3, =ewram_240
	ldr	r3, [r3, #0x10]
	cmp	r5, r3
	bls	.Lb2cc8
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r0, r8
	add	r0, #1
	bl	Func_b2928
	mov	r4, #1
	mov	r8, r4
	b	.Lb2bba
.Lb2cc8:
	mov	r1, #1
	mov	r0, r10
	bl	_Func_19908
	mov	r0, r8
	add	r0, #3
	bl	Func_b28d4
	bl	_Func_19a54
	mov	r1, r9
	mov	r0, r10
	bl	Func_b2da8
	mov	r0, r6
	bl	Func_b3050
	neg	r0, r5
	bl	_Func_79700
	bl	Func_b10cc
	mov	r0, r10
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r8
	add	r0, #4
	bl	Func_b28d4
	bl	Func_b280c
	cmp	r0, #0
	beq	.Lb2d5a
	mov	r0, #1
	mov	r8, r0
	b	.Lb2bba
.Lb2d12:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d24
	mov	r0, #0x71
	bl	_Func_f9080
	b	.Lb2d5a
.Lb2d24:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d3c
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #1
	str	r1, [sp, #4]
	sub	r6, #1
.Lb2d3c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d52
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	str	r2, [sp, #4]
	add	r6, #1
.Lb2d52:
	mov	r0, #1
	bl	Func_30f8
	b	.Lb2bba
.Lb2d5a:
	bl	_Func_a195c
	mov	r1, #2
	ldr	r0, [sp, #8]
	bl	_Func_16418
	mov	r0, r11
	mov	r1, #2
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b2b10

.thumb_func_start Func_b2da8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r5, r1
	bl	_Func_77394
	mov	r2, r0
	cmp	r5, #0
	bne	.Lb2dc8
	ldrh	r3, [r2, #0x34]
	mov	r0, r7
	strh	r3, [r2, #0x38]
	bl	_Func_7822c
	b	.Lb2e20
.Lb2dc8:
	cmp	r5, #1
	bne	.Lb2dd0
	ldr	r3, =0x131
	b	.Lb2dd8
.Lb2dd0:
	cmp	r5, #2
	bne	.Lb2de0
	mov	r3, #0xa0
	lsl	r3, #1
.Lb2dd8:
	add	r2, r3
	mov	r3, #0
	strb	r3, [r2]
	b	.Lb2e20
.Lb2de0:
	cmp	r5, #3
	bne	.Lb2e20
	mov	r3, #0x80
	lsl	r3, #2
	mov	r5, r2
	mov	r8, r3
	mov	r6, #0xe
	add	r5, #0xd8
.Lb2df0:
	ldrh	r2, [r5]
	mov	r3, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2e18
	ldrh	r0, [r5]
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2e18
	ldrh	r2, [r5]
	mov	r3, r8
	eor	r3, r2
	strh	r3, [r5]
	mov	r0, r7
	bl	_Func_77428
.Lb2e18:
	sub	r6, #1
	add	r5, #2
	cmp	r6, #0
	bge	.Lb2df0
.Lb2e20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b2da8

.thumb_func_start Func_b2e30
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r11, r1
	ldr	r7, [r3]
	ldr	r1, =0x3aa
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r3
	cmp	r0, #0
	beq	.Lb2eb8
	ldr	r2, =0x3a7
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lb2eb8
	mov	r2, #0x8a
	add	r3, r7, #2
	sub	r1, #0x3e
	lsl	r2, #1
	mov	r10, r3
	mov	r8, r1
	add	r5, r7, r2
.Lb2e72:
	cmp	r6, r11
	bne	.Lb2e80
	ldr	r0, [r5]
	mov	r1, #0x1e
	bl	_Func_ba30
	b	.Lb2e88
.Lb2e80:
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Func_ba30
.Lb2e88:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x40]
	mov	r2, r8
	mov	r3, r10
	ldrsh	r0, [r3, r2]
	mov	r1, r9
	bl	Func_b27b0
	cmp	r0, #0
	bne	.Lb2ea2
	ldr	r3, =0xb333
	str	r3, [r5, #0x40]
.Lb2ea2:
	ldr	r1, =0x3a7
	mov	r3, #2
	add	r8, r3
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r6, #1
	add	r5, #4
	cmp	r6, r3
	blt	.Lb2e72
.Lb2eb8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b2e30

.thumb_func_start Func_b2ed8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r7, r1
	mov	r6, r0
	mov	r1, r5
	mov	r0, r7
	bl	Func_b2778
	mov	r8, r0
	cmp	r6, #0
	beq	.Lb2f30
	mov	r0, r6
	bl	_Func_16478
	mov	r0, r7
	mov	r1, r5
	bl	Func_b27b0
	cmp	r0, #0
	beq	.Lb2f12
	ldr	r5, =0xd2c
	b	.Lb2f14
.Lb2f12:
	ldr	r5, =0xd2d
.Lb2f14:
	mov	r0, r5
	bl	Func_b2884
	mov	r1, #5
	mov	r5, r0
	mov	r0, r8
	bl	_Func_19908
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e74c
.Lb2f30:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b2ed8

.thumb_func_start Func_b2f4c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0x40
	add	r2, r6
	mov	r7, #0
	ldrsb	r7, [r2, r7]
	sub	sp, #0xc
	mov	r8, r2
	cmp	r7, #0
	bne	.Lb2fc2
	ldr	r3, [r6, #0x14]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r1, r0
	mov	r0, #0xa0
	lsl	r0, #14
	mov	r2, r5
	bl	Func_447c
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, r6
	bl	_Func_9ba5c
	ldr	r3, [r6, #0x14]
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x20]
	ldr	r3, =0x6666
	str	r3, [r6, #0x24]
	mov	r3, r6
	add	r3, #0x42
	strb	r7, [r3]
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.Lb2fea
.Lb2fc2:
	cmp	r7, #1
	bne	.Lb2fd6
	mov	r0, r6
	bl	_Func_9ba34
	cmp	r0, #0
	bne	.Lb2fea
	mov	r3, r8
	strb	r0, [r3]
	b	.Lb2fea
.Lb2fd6:
	cmp	r7, #2
	bne	.Lb2fea
	mov	r0, r6
	bl	_Func_9ba34
	cmp	r0, #0
	bne	.Lb2fea
	mov	r0, r6
	bl	_Func_9bb34
.Lb2fea:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b2f4c

.thumb_func_start Func_b2ffc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	mov	r2, #0xec
	ldr	r7, [r3]
	lsl	r2, #2
	add	r5, r7, r2
	mov	r6, #0x17
.Lb300a:
	mov	r0, r5
	sub	r6, #1
	bl	_Func_9b804
	add	r5, #0x48
	cmp	r6, #0
	bge	.Lb300a
	ldr	r2, =0x3ab
	add	r3, r7, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.Lb3040
	bl	Func_4458
	mov	r2, #0x8a
	lsl	r1, r0, #3
	lsl	r3, r5, #2
	lsl	r2, #1
	sub	r1, r0
	add	r3, r2
	lsr	r1, #16
	ldr	r0, [r7, r3]
	bl	_Func_b684
.Lb3040:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b2ffc

.thumb_func_start Func_b3050
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r1, #0xe0
	mov	r8, r3
	lsl	r1, #2
	add	r1, r8
	ldr	r3, [r1]
	ldr	r2, =0x3ab
	ldrb	r3, [r3, #5]
	add	r2, r8
	mov	r11, r3
	mov	r3, #0xff
	strb	r3, [r2]
	ldr	r2, [r1]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r3, =0x3aa
	add	r3, r8
	ldr	r2, =.Lb4ab2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r10, r0
	ldrsb	r0, [r2, r3]
	sub	sp, #0xc
	bl	_Func_f9080
	ldr	r0, =0x202108
	bl	Func_b0840
	mov	r0, r10
	lsl	r0, #2
	mov	r3, #0x8a
	mov	r9, r0
	lsl	r3, #1
	add	r3, r9
	mov	r1, r8
	ldr	r0, [r1, r3]
	mov	r1, #0
	bl	_Func_baf8
	mov	r0, #0x14
	bl	Func_30f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_b2ffc
	bl	Func_41d8
	mov	r3, r10
	mov	r0, #0x9a
	lsl	r2, r3, #1
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, r8
	ldrsh	r3, [r1, r3]
	mov	r6, sp
	lsl	r3, #16
	mov	r1, #0xa2
	str	r3, [r6]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, r8
	ldrsh	r3, [r2, r3]
	ldr	r1, =0xfff40000
	lsl	r3, #16
	add	r3, r1
	mov	r5, #0xec
	lsl	r5, #2
	str	r3, [r6, #8]
	mov	r7, #0
	add	r5, r8
.Lb30ee:
	mov	r1, #0x8e
	ldr	r3, [r6, #8]
	ldr	r2, [r6]
	mov	r0, r5
	lsl	r1, #1
	bl	_Func_9ba90
	mov	r0, r5
	ldr	r1, =Func_b2f4c
	bl	_Func_9ba7c
	mov	r1, #7
	mov	r0, r5
	bl	_Func_9ba70
	bl	Func_4458
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	_Func_b684
	ldr	r3, =0xb333
	mov	r0, #3
	str	r3, [r5, #0x2c]
	str	r3, [r5, #0x28]
	bl	Func_30f8
	cmp	r7, #5
	bne	.Lb3134
	ldr	r3, =0x3ab
	mov	r2, r10
	add	r3, r8
	strb	r2, [r3]
.Lb3134:
	add	r7, #1
	add	r5, #0x48
	cmp	r7, #0x11
	ble	.Lb30ee
	bl	Func_b04c4
	mov	r2, #0xfc
	lsl	r2, #2
	mov	r1, #2
	add	r2, r8
	mov	r7, #0x17
.Lb314a:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Lb3154
	strb	r1, [r2]
.Lb3154:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.Lb314a
	mov	r0, #0x14
	bl	Func_30f8
	mov	r0, #0x7e
	bl	_Func_f9080
	ldr	r2, =0x3ab
	mov	r3, #0xff
	add	r2, r8
	strb	r3, [r2]
	add	r3, #0x15
	add	r3, r9
	mov	r1, r8
	ldr	r0, [r1, r3]
	mov	r1, #0
	bl	_Func_b684
	mov	r0, #0x14
	bl	Func_30f8
	ldr	r6, =0x3f5
	mov	r5, #0xec
	lsl	r5, #2
	add	r6, r8
	add	r5, r8
	mov	r7, #0x17
.Lb3190:
	ldrb	r3, [r6]
	lsl	r3, #24
	add	r6, #0x48
	cmp	r3, #0
	beq	.Lb31a0
	mov	r0, r5
	bl	_Func_9bb34
.Lb31a0:
	sub	r7, #1
	add	r5, #0x48
	cmp	r7, #0
	bge	.Lb3190
	ldr	r0, =Func_b2ffc
	bl	Func_4278
	mov	r3, #0x8a
	lsl	r3, #1
	add	r3, r9
	mov	r2, r8
	ldr	r0, [r2, r3]
	mov	r1, #0x10
	bl	_Func_baf8
	bl	Func_b0894
	mov	r0, #0x1e
	bl	Func_30f8
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r3, [r3]
	mov	r0, r11
	strb	r0, [r3, #5]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b3050

.thumb_func_start Func_b3210
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r1, =0x3a7
	ldr	r6, [r3]
	ldr	r3, =.Lb4ab6
	ldrsb	r0, [r3, r0]
	add	r3, r6, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	sub	sp, #4
	mov	r10, r0
	mov	r7, #0
	cmp	r2, r3
	bge	.Lb3266
	add	r3, r6, #2
	mov	r5, #0xdb
	mov	r8, r3
	lsl	r5, #2
.Lb323e:
	mov	r1, r8
	ldrsh	r0, [r1, r5]
	str	r2, [sp]
	bl	_Func_77394
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	beq	.Lb3254
	add	r2, #1
.Lb3254:
	ldr	r1, =0x3a7
	add	r3, r6, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r7, #1
	add	r5, #2
	cmp	r7, r3
	blt	.Lb323e
.Lb3266:
	mov	r0, r10
	mul	r0, r2
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b3210

.thumb_func_start Func_b3284
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r1
	sub	sp, #4
	mov	r6, r0
	bl	Func_b010c
	ldr	r3, =iwram_1f2c
	ldr	r1, =0x3a9
	ldr	r5, [r3]
	mov	r2, #1
	add	r3, r5, r1
	strb	r2, [r3]
	cmp	r6, #5
	bne	.Lb32ae
	add	r1, #3
	add	r3, r5, r1
	strb	r2, [r3]
.Lb32ae:
	mov	r0, r9
	bl	_Func_92054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0xe9
	ldrh	r3, [r3]
	lsl	r2, #2
	add	r7, r5, r2
	strh	r3, [r7]
	mov	r2, #0
	mov	r3, #0
	mov	r1, #0
	ldrh	r0, [r7]
	bl	_Func_19da8
	mov	r8, r0
	mov	r0, r6
	bl	Func_b3210
	mov	r1, #5
	mov	r6, r0
	bl	_Func_19908
	ldr	r3, =0xd1c
	mov	r10, r3
	mov	r0, r10
	bl	Func_b04dc
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0
	bl	_Func_162d4
	str	r0, [r5, #0xc]
	bl	Func_b10cc
	mov	r0, #0
	bl	Func_b0634
	cmp	r0, #0
	beq	.Lb330e
	mov	r0, r10
	add	r0, #3
	b	.Lb331a
.Lb330e:
	ldr	r3, =ewram_240
	ldr	r3, [r3, #0x10]
	cmp	r6, r3
	bls	.Lb3328
	mov	r0, r10
	add	r0, #2
.Lb331a:
	bl	Func_b04dc
	ldr	r0, [r5, #0xc]
	mov	r1, #2
	bl	_Func_16418
	b	.Lb336a
.Lb3328:
	mov	r1, #2
	ldr	r0, [r5, #0xc]
	bl	_Func_16418
	mov	r0, r10
	add	r0, #1
	bl	Func_b04dc
	mov	r1, #2
	mov	r0, r8
	bl	_Func_16418
	mov	r0, r6
	bl	Func_b3398
	mov	r0, r9
	bl	_Func_92054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	ldrh	r3, [r3]
	strh	r3, [r7]
	mov	r1, #0
	ldrh	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_19da8
	mov	r8, r0
	mov	r0, r10
	add	r0, #4
	bl	Func_b04dc
.Lb336a:
	mov	r0, r8
	mov	r1, #2
	bl	_Func_16418
	bl	Func_b0204
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b3284

.thumb_func_start Func_b3398
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x10
	mov	r8, sp
	mov	r5, r0
	mov	r0, r8
	bl	_Func_796c4
	neg	r5, r5
	mov	r7, r0
	mov	r0, r5
	bl	_Func_79700
	cmp	r7, #0
	ble	.Lb33e8
	mov	r10, r8
	mov	r6, #0
	mov	r5, r7
.Lb33c0:
	mov	r2, r10
	ldrsh	r0, [r6, r2]
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lb33e0
	ldrh	r3, [r0, #0x34]
	strh	r3, [r0, #0x38]
	ldrh	r3, [r0, #0x36]
	strh	r3, [r0, #0x3a]
	mov	r3, r8
	ldrsh	r0, [r6, r3]
	bl	_Func_7822c
.Lb33e0:
	sub	r5, #1
	add	r6, #2
	cmp	r5, #0
	bne	.Lb33c0
.Lb33e8:
	ldr	r6, =iwram_1ebc
	mov	r3, #0xe0
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	mov	r5, #0xe4
	add	r3, #0x49
	str	r3, [r2]
	lsl	r5, #1
	mov	r3, #0x3c
	str	r3, [r1, r5]
	mov	r0, #0x14
	bl	Func_30f8
	bl	_Func_91df4
	bl	_Func_91e20
	mov	r0, #0x56
	bl	_Func_f9080
	bl	Func_b04c4
	mov	r0, #0xa
	bl	Func_30f8
	bl	_Func_91dc8
	bl	_Func_91e20
	mov	r0, #0x1e
	bl	Func_30f8
	ldr	r2, [r6]
	mov	r3, #0x10
	str	r3, [r2, r5]
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b3398

.thumb_func_start Func_b3444
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r0, [sp, #0xc]
	mov	r2, #0
	mov	r0, #1
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r9, r0
	mov	r11, r2
	bl	Func_b010c
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r5, #2
	mov	r8, r3
	mov	r1, #0xc
	mov	r2, #0xe
	mov	r3, #8
	mov	r0, #0x10
	str	r5, [sp]
	bl	_Func_162d4
	mov	r3, r8
	str	r0, [r3, #0x20]
	mov	r1, #0xe
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #0
	str	r5, [sp]
	bl	_Func_162d4
	mov	r3, #0xe4
	lsl	r3, #2
	ldr	r4, [sp, #4]
	mov	r10, r0
	add	r3, r8
	mov	r1, #0x80
	ldrh	r0, [r3]
	lsl	r1, #23
	mov	r2, r10
	mov	r3, #0
	str	r4, [sp]
	bl	_Func_1eadc
	mov	r6, #0xe0
	mov	r5, r0
	add	r0, sp, #4
	ldrb	r0, [r0]
	lsl	r6, #2
	mov	r3, #4
	add	r6, r8
	mov	r1, #0x20
	strb	r3, [r5, #5]
	strb	r0, [r5, #4]
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0x70
	bl	Func_b0a20
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r8
	mov	r3, #0xc
	str	r5, [r6]
	strb	r3, [r2]
	ldr	r2, [sp, #4]
	mov	r0, r10
	str	r2, [sp]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_a1870
	mov	r6, #0xea
	lsl	r6, #2
	mov	r7, #0
	add	r6, r8
.Lb34ea:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lb353a
	ldr	r3, =0x3a7
	add	r3, r8
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r4, #0
	add	r0, r7, r1
	mov	r9, r4
	bl	Func_b1c_from_thumb
	mov	r7, r0
	mov	r0, #0xdb
	lsl	r0, #2
	lsl	r1, r7, #1
	mov	r3, r8
	add	r2, r1, r0
	add	r3, #2
	add	r1, r7
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r10
	mov	r2, #0
	mov	r11, r4
	bl	Func_b0a6c
	mov	r3, #3
	mov	r0, r10
	mov	r1, r7
	mov	r2, #0
	strb	r3, [r6]
	bl	Func_b11c4
	mov	r2, r8
	ldr	r0, [r2, #0x20]
	mov	r1, r11
	bl	Func_b1dec
.Lb353a:
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb3598
	mov	r0, r11
	bl	_Func_784d8
	cmp	r0, #0
	bne	.Lb355e
	mov	r0, #0x71
	bl	_Func_f9080
	b	.Lb34ea
.Lb355e:
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r0, r11
	bl	Func_b362c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lb3588
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r2, [r3]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r4, #1
	mov	r3, #0xc
	strb	r3, [r6]
	mov	r9, r4
	b	.Lb34ea
.Lb3588:
	ldr	r3, [sp, #0xc]
	mov	r2, r11
	str	r2, [r3]
	ldr	r4, [sp, #8]
	str	r0, [r4]
	mov	r0, #0
	str	r0, [sp, #4]
	b	.Lb35e8
.Lb3598:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb35b8
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r3, #1
	ldr	r2, [sp, #0xc]
	neg	r3, r3
	str	r3, [r2]
	ldr	r4, [sp, #8]
	str	r3, [r4]
	str	r3, [sp, #4]
	b	.Lb35e8
.Lb35b8:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb35d0
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #1
	sub	r7, #1
	mov	r9, r0
.Lb35d0:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb34ea
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	add	r7, #1
	mov	r9, r2
	b	.Lb34ea
.Lb35e8:
	bl	_Func_a195c
	mov	r0, r10
	mov	r1, #2
	bl	_Func_16418
	mov	r3, r8
	ldr	r0, [r3, #0x20]
	mov	r1, #2
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	bl	Func_b0204
	ldr	r0, [sp, #4]
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b3444

.thumb_func_start Func_b362c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	sub	sp, #0x18
	str	r3, [sp, #0x14]
	mov	r11, r0
	bl	_Func_77394
	mov	r1, #1
	mov	r2, #0
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	mov	r5, #2
	mov	r2, #0x10
	mov	r3, #4
	mov	r10, r1
	mov	r9, r1
	mov	r0, #0xe
	mov	r1, #8
	str	r5, [sp]
	bl	_Func_162d4
	mov	r1, #5
	str	r0, [sp, #0xc]
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	str	r5, [sp]
	bl	_Func_162d4
	mov	r2, #0xe0
	ldr	r1, [sp, #0x14]
	str	r0, [sp, #0x10]
	lsl	r2, #2
	add	r3, r1, r2
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r7, #0
.Lb3690:
	mov	r1, r9
	cmp	r1, #0
	beq	.Lb370c
	mov	r2, #0
	mov	r0, r11
	mov	r9, r2
	bl	_Func_784d8
	mov	r10, r0
	mov	r3, r10
	sub	r3, #1
	cmp	r7, r3
	ble	.Lb36ac
	mov	r7, r3
.Lb36ac:
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x14]
	lsl	r3, r7, #1
	add	r3, #0xd8
	ldrh	r3, [r1, r3]
	ldr	r2, [r2, #0x20]
	ldr	r6, .Lb36f4	@ 0x1ff
	mov	r1, #5
	mov	r0, r7
	and	r6, r3
	mov	r8, r2
	bl	Func_b1c_from_thumb
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	Func_af0_from_thumb
	mov	r2, r0
	lsl	r5, #4
	lsl	r2, #4
	add	r2, #8
	mov	r0, r8
	mov	r1, r5
	bl	Func_b0a6c
	mov	r1, #0xea
	ldr	r3, [sp, #0x14]
	lsl	r1, #2
	add	r2, r3, r1
	mov	r3, #3
	strb	r3, [r2]
	ldr	r0, [sp, #0xc]
	mov	r1, r11
	mov	r2, r7
	b	.Lb36fc

	.align	2, 0
.Lb36f4:
	.word	0x1ff
	.pool

.Lb36fc:
	bl	Func_b386c
	ldr	r3, =0x75
	add	r6, r3
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	bl	Func_b11a4
.Lb370c:
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb377c
	mov	r0, r11
	mov	r1, r7
	bl	_Func_78980
	cmp	r0, #0
	bne	.Lb3734
	mov	r0, #0x70
	bl	_Func_f9080
	str	r7, [sp, #4]
	b	.Lb382c
.Lb3734:
	mov	r2, #4
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb374a
	ldr	r0, =0xc96
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	_Func_17658
	b	.Lb3760
.Lb374a:
	mov	r1, #3
	ldr	r3, [sp, #4]
	neg	r1, r1
	cmp	r3, r1
	bne	.Lb3760
	ldr	r0, =0xc97
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	_Func_17658
.Lb3760:
	mov	r0, #0x71
	bl	_Func_f9080
	b	.Lb376e
.Lb3768:
	mov	r0, #1
	bl	Func_30f8
.Lb376e:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lb3768
	bl	_Func_19a54
	b	.Lb3690
.Lb377c:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb3794
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #4]
	b	.Lb382c
.Lb3794:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb37b8
	mov	r0, #0x6f
	bl	_Func_f9080
	sub	r7, #1
	mov	r3, r10
	add	r0, r7, r3
	mov	r1, r10
	bl	Func_b1c_from_thumb
	mov	r1, #1
	mov	r7, r0
	mov	r9, r1
.Lb37b8:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb37da
	mov	r0, #0x6f
	bl	_Func_f9080
	add	r7, #1
	mov	r2, r10
	add	r0, r7, r2
	mov	r1, r10
	bl	Func_b1c_from_thumb
	mov	r3, #1
	mov	r7, r0
	mov	r9, r3
.Lb37da:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb3800
	sub	r7, #5
	cmp	r7, #0
	bge	.Lb37ec
	add	r7, #0xf
.Lb37ec:
	cmp	r7, r10
	blt	.Lb37f6
.Lb37f0:
	sub	r7, #5
	cmp	r7, r10
	bge	.Lb37f0
.Lb37f6:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #1
	mov	r9, r1
.Lb3800:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	bne	.Lb380e
	b	.Lb3690
.Lb380e:
	add	r7, #5
	cmp	r7, r10
	blt	.Lb3816
	sub	r7, #0xf
.Lb3816:
	cmp	r7, #0
	bge	.Lb3820
.Lb381a:
	add	r7, #5
	cmp	r7, #0
	blt	.Lb381a
.Lb3820:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	mov	r9, r2
	b	.Lb3690
.Lb382c:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	_Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, [sp, #4]
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b362c

.thumb_func_start Func_b386c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r7, r0
	mov	r0, r10
	mov	r9, r2
	sub	sp, #4
	bl	_Func_77394
	mov	r2, r9
	lsl	r3, r2, #1
	mov	r6, r3
	add	r6, #0xd8
	ldrh	r3, [r0, r6]
	ldr	r5, =0x1ff
	and	r5, r3
	ldrh	r3, [r0, r6]
	lsr	r3, #11
	add	r3, #1
	mov	r8, r0
	mov	r11, r3
	cmp	r7, #0
	beq	.Lb391a
	mov	r0, r7
	bl	_Func_16498
	ldr	r0, =0x182
	mov	r3, #0
	add	r0, r5, r0
	mov	r1, r7
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r0, r10
	mov	r1, r9
	bl	_Func_78980
	mov	r3, #4
	neg	r3, r3
	cmp	r0, r3
	bne	.Lb38cc
	ldr	r0, =0xc94
	b	.Lb38d6
.Lb38cc:
	mov	r2, #3
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb38e2
	ldr	r0, =0xc95
.Lb38d6:
	mov	r1, r7
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
	b	.Lb391a
.Lb38e2:
	mov	r3, r8
	ldrh	r0, [r3, r6]
	bl	Func_b19cc
	ldr	r5, =0xc8d
	mov	r6, r11
	mul	r6, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, #8
	mov	r3, #8
	bl	_Func_1e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #5
	mov	r2, r7
	mov	r3, #0x28
	sub	r5, #5
	bl	_Func_1ea08
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x50
	mov	r3, #8
	bl	_Func_1e7c0
.Lb391a:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b386c

	.section .rodata

.Lb3940:
	.incrom 0xb3940, 0xb39c0
.Lb39c0:
	.incrom 0xb39c0, 0xb3a40
.Lb3a40:
	.incrom 0xb3a40, 0xb3ac0
.Lb3ac0:
	.incrom 0xb3ac0, 0xb3b40
.Lb3b40:
	.incrom 0xb3b40, 0xb3bc0
.Lb3bc0:
	.incrom 0xb3bc0, 0xb3d40
.Lb3d40:
	.incrom 0xb3d40, 0xb3e80
.Lb3e80:
	.incrom 0xb3e80, 0xb3f80
.Lb3f80:
	.incrom 0xb3f80, 0xb4100
.Lb4100:
	.incrom 0xb4100, 0xb413c
.Lb413c:
	.incrom 0xb413c, 0xb4146
.Lb4146:
	.incrom 0xb4146, 0xb41ac
.Lb41ac:
	.incrom 0xb41ac, 0xb4ab2
.Lb4ab2:
	.incrom 0xb4ab2, 0xb4ab6
.Lb4ab6:
	.incrom 0xb4ab6, 0xb4ac2
