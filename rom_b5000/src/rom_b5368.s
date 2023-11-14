	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_b5368
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	str	r0, [sp, #0x18]
	mov	r1, #0
	mov	r0, #0
	str	r1, [sp, #0x14]
	bl	_Func_79664
	mov	r0, #1
	bl	_Func_79664
	mov	r0, #2
	bl	_Func_79664
	mov	r0, #3
	bl	_Func_79664
	mov	r0, #5
	bl	_Func_79664
	mov	r3, sp
	add	r3, #0x1c
	str	r3, [sp, #4]
	mov	r2, #0
	ldr	r5, [sp, #4]
	str	r2, [sp, #0xc]
	add	r3, sp, #0x28
	mov	r12, r5
.Lb53ac:
	str	r2, [r3]
	sub	r3, #4
	cmp	r3, r12
	bge	.Lb53ac
	mov	r1, #0
	str	r1, [sp, #0x10]
	b	.Lb54e8
.Lb53ba:
	ldr	r2, [sp, #0xc]
	add	r2, #1
	str	r2, [sp, #0xc]
	b	.Lb54e2
.Lb53c2:
	ldr	r3, [sp, #0xc]
	ldr	r1, [sp, #0x18]
	cmp	r3, r1
	beq	.Lb53cc
	b	.Lb54e2
.Lb53cc:
	mov	r0, r10
	bl	_Func_7961c
	ldr	r2, =.Lc3f34
	add	r3, r5, r2
	ldrb	r1, [r3, #1]
	mov	r0, r10
	bl	_Func_792fc
	mov	r0, r10
	bl	_Func_77394
	mov	r5, #0x8c
	mov	r1, r0
	mov	r2, r1
	lsl	r5, #1
	mov	r4, #0
	mov	r0, #0
	add	r2, #0xf8
	add	r3, r1, r5
	mov	r7, #3
.Lb53f6:
	sub	r7, #1
	strb	r4, [r3]
	strb	r4, [r3, #4]
	str	r0, [r2]
	str	r0, [r2, #0x10]
	add	r3, #1
	add	r2, #4
	cmp	r7, #0
	bge	.Lb53f6
	mov	r0, r1
	ldr	r3, .Lb543c	@ 0
	mov	r7, #0x1f
	add	r0, #0xd4
.Lb5410:
	sub	r7, #1
	strh	r3, [r0]
	sub	r0, #4
	cmp	r7, #0
	bge	.Lb5410
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x10]
	ldr	r5, =.Lc3f34
	add	r3, r1, r2
	lsl	r3, #2
	add	r3, r5, r3
	mov	r5, r3
	add	r5, #0xe
	mov	r7, #1
.Lb542c:
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.Lb5444
	mov	r1, r3
	mov	r0, r10
	bl	_Func_78e28
	b	.Lb5444

	.align	2, 0
.Lb543c:
	.word	0
	.pool

.Lb5444:
	sub	r7, #1
	add	r5, #2
	cmp	r7, #0
	bge	.Lb542c
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x10]
	add	r3, r1, r2
	lsl	r4, r3, #2
	mov	r3, #0
	mov	r7, #0
	mov	r9, r3
.Lb545a:
	ldr	r2, =.Lc3f34
	add	r2, #2
	mov	r5, #0
	ldrsb	r3, [r2, r4]
	mov	r8, r5
	cmp	r8, r3
	bge	.Lb5498
	ldr	r6, [sp, #4]
	mov	r5, r9
	mov	r11, r2
.Lb546e:
	ldr	r2, [r6, r5]
	mov	r1, r7
	mov	r0, r10
	str	r4, [sp]
	bl	_Func_7a1b4
	ldr	r2, [r6, r5]
	mov	r1, r7
	mov	r0, r10
	bl	_Func_7a2e4
	ldr	r3, [r6, r5]
	ldr	r4, [sp]
	add	r3, #1
	mov	r2, r11
	str	r3, [r6, r5]
	mov	r1, #1
	ldrsb	r3, [r2, r4]
	add	r8, r1
	cmp	r8, r3
	blt	.Lb546e
.Lb5498:
	mov	r3, #4
	add	r7, #1
	add	r4, #1
	add	r9, r3
	cmp	r7, #3
	ble	.Lb545a
	mov	r7, #0xf
.Lb54a6:
	mov	r0, r10
	mov	r1, #0
	sub	r7, #1
	bl	_Func_788c4
	cmp	r7, #0
	bge	.Lb54a6
	ldr	r5, [sp, #8]
	ldr	r1, [sp, #0x10]
	ldr	r2, =.Lc3f34
	add	r3, r5, r1
	lsl	r3, #2
	add	r3, r2, r3
	add	r5, r3, #6
	mov	r7, #3
.Lb54c4:
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.Lb54da
	mov	r1, r3
	mov	r0, r10
	bl	_Func_78588
	mov	r1, r0
	mov	r0, r10
	bl	_Func_78708
.Lb54da:
	sub	r7, #1
	add	r5, #2
	cmp	r7, #0
	bge	.Lb54c4
.Lb54e2:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
.Lb54e8:
	ldr	r5, [sp, #0x10]
	ldr	r1, [sp, #0x10]
	lsl	r5, #2
	str	r5, [sp, #8]
	add	r3, r5, r1
	ldr	r2, =.Lc3f34
	lsl	r5, r3, #2
	ldrsb	r2, [r2, r5]
	mov	r3, #0xa6
	lsl	r3, #1
	mov	r10, r2
	cmp	r1, r3
	bls	.Lb5508
	mov	r5, #1
	str	r5, [sp, #0x14]
	b	.Lb551c
.Lb5508:
	mov	r1, #1
	neg	r1, r1
	cmp	r10, r1
	beq	.Lb5512
	b	.Lb53c2
.Lb5512:
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #0x18]
	cmp	r2, r3
	beq	.Lb551c
	b	.Lb53ba
.Lb551c:
	ldr	r0, [sp, #0x14]
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b5368

.thumb_func_start Func_b5534
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0
	mov	r0, #0
	sub	sp, #0x80
	mov	r10, r2
	bl	_Func_77394
	mov	r5, sp
	mov	r6, r0
	mov	r1, r5
	ldr	r0, =0x903
	bl	_Func_1964c
	mov	r2, r10
	ldrh	r3, [r5, r2]
	strb	r3, [r6]
	lsl	r3, #16
	mov	r0, #0
	cmp	r3, #0
	beq	.Lb557a
	mov	r2, r6
	mov	r1, r5
.Lb5566:
	add	r0, #1
	cmp	r0, #0xd
	bgt	.Lb557a
	add	r1, #2
	ldrh	r3, [r1]
	add	r2, #1
	strb	r3, [r2]
	lsl	r3, #16
	cmp	r3, #0
	bne	.Lb5566
.Lb557a:
	mov	r3, #0
	strb	r3, [r6, #0xe]
	bl	_Func_15f30
	mov	r0, #0x47
	bl	_Func_f9080
	mov	r5, #0
	ldr	r2, =0x1341
	mov	r3, #0x80
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r3, =ewram_240
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	mov	r2, #2
.Lb559c:
	strb	r2, [r3]
	bl	_Func_198dc
	ldr	r0, =0x3e7
	mov	r1, #5
	bl	_Func_19908
	mov	r0, #0
	mov	r1, #3
	bl	_Func_19908
	mov	r0, #1
	mov	r1, #1
	bl	_Func_19908
	mov	r0, #1
	mov	r1, #2
	bl	_Func_19908
	mov	r0, #2
	mov	r1, #4
	bl	_Func_19908
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb55da
	ldr	r3, =0x26fa
	mov	r1, #2
	add	r0, r5, r3
	mov	r2, #0xa
	b	.Lb55e2
.Lb55da:
	ldr	r3, =0xad0
	mov	r1, #2
	add	r0, r5, r3
	mov	r2, #2
.Lb55e2:
	mov	r3, #4
	bl	_Func_17658
	mov	r7, r0
	mov	r0, #0xa
	bl	Func_30f8
	ldr	r2, =0x2850
	ldr	r3, =0x26fa
	ldr	r6, =iwram_1b04
	sub	r2, r3
	mov	r8, r2
	b	.Lb5614
.Lb55fc:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lb560e
	ldr	r3, [r6]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lb569a
.Lb560e:
	mov	r0, #1
	bl	Func_30f8
.Lb5614:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5630
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb562a
	mov	r3, #0
	mov	r10, r3
	b	.Lb5630
.Lb562a:
	mov	r2, #1
	add	r5, #1
	mov	r10, r2
.Lb5630:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb563c
	add	r5, #1
.Lb563c:
	ldr	r3, [r6]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5648
	sub	r5, #2
.Lb5648:
	ldr	r3, [r6]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5656
	mov	r3, #1
	mov	r10, r3
.Lb5656:
	ldr	r3, [r6]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5664
	mov	r2, #0
	mov	r10, r2
.Lb5664:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5672
	add	r5, #0xa
.Lb5672:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb5680
	sub	r5, #0xa
.Lb5680:
	cmp	r5, #0
	bge	.Lb5686
	mov	r5, #0
.Lb5686:
	mov	r3, r8
	add	r3, #5
	cmp	r5, r3
	bcc	.Lb5690
	mov	r5, r3
.Lb5690:
	ldr	r3, [r6]
	ldr	r2, =0x3f2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb55fc
.Lb569a:
	mov	r0, #1
	bl	_Func_197c4
	mov	r0, r7
	mov	r1, #1
	bl	_Func_16418
	ldr	r3, =iwram_1e8c
	ldr	r2, =0x12f8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	b	.Lb559c
.func_end Func_b5534

.thumb_func_start Func_b56e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r10, r2
	bl	_Func_77d38
.Lb56f6:
	mov	r5, #0xb5
	lsl	r5, #1
	bl	Func_479c
	bl	Func_4760
	bl	Func_40e8
	bl	Func_4858
	bl	Func_403c
	mov	r0, r5
	bl	_Func_79358
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	ldr	r6, =0x101
	cmp	r3, #0
	bne	.Lb5724
	b	.Lb583e
.Lb5724:
	mov	r3, #1
	neg	r3, r3
	mov	r0, r5
	mov	r8, r3
	bl	_Func_79374
	ldr	r2, =ewram_46b
	mov	r3, #0x55
	mov	r9, r2
	neg	r3, r3
	add	r3, r9
	ldr	r5, =iwram_1b04
	mov	r7, #0
	mov	r11, r3
.Lb5740:
	mov	r0, #0x20
	bl	_Func_79374
	mov	r0, #1
	bl	Func_30f8
	b	.Lb579a
.Lb574e:
	ldr	r3, [r5]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lb575c
	bl	Func_b5534
.Lb575c:
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lb576a
	bl	Func_c2a08
.Lb576a:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lb577a
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb5784
.Lb577a:
	mov	r3, #1
	mov	r10, r3
	mov	r3, #5
	mov	r2, r9
	strb	r3, [r2]
.Lb5784:
	cmp	r7, r8
	beq	.Lb5794
	bl	_Func_77d38
	mov	r0, r7
	bl	Func_b5368
	mov	r8, r7
.Lb5794:
	mov	r0, #1
	bl	Func_30f8
.Lb579a:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57a6
	add	r6, #1
.Lb57a6:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57b2
	sub	r6, #1
.Lb57b2:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57be
	sub	r6, #0xa
.Lb57be:
	ldr	r3, [r5]
	mov	r1, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.Lb57ca
	add	r6, #0xa
.Lb57ca:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57d8
	add	r7, #1
.Lb57d8:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb57e6
	sub	r7, #1
.Lb57e6:
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb574e
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	and	r3, r1
	cmp	r3, #0
	beq	.Lb5802
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_Func_79358
.Lb5802:
	mov	r0, #0
	bl	_Func_77428
	ldr	r3, =0x1d
	mov	r2, r11
	strh	r3, [r2]
	cmp	r6, #0x1c
	bne	.Lb581a
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_79358
.Lb581a:
	mov	r0, #0xb1
	lsl	r0, #1
	bl	_Func_79358
	mov	r0, r6
	bl	Func_b63c8
	bl	Func_479c
	bl	Func_4760
	bl	Func_40e8
	bl	Func_4858
	bl	Func_403c
	b	.Lb5740
.Lb583e:
	mov	r0, #0xb1
	lsl	r0, #1
	bl	_Func_79358
	ldr	r0, =0x101
	bl	Func_b63c8
	b	.Lb56f6
.func_end Func_b56e0


.thumb_func_start Func_b5864
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e80
	mov	r2, r3
	ldr	r6, [r3]
	sub	r3, #0xc
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0x44
	ldrb	r3, [r3]
	add	r2, #0x80
	sub	sp, #0x10
	ldr	r7, [r2]
	cmp	r3, #0
	beq	.Lb58ca
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb58a8
	mov	r2, r1
	add	r2, #0x51
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r2, #0xc0
	lsl	r3, #24
	lsl	r2, #21
	cmp	r3, r2
	bls	.Lb58ca
	mov	r2, r1
	add	r2, #0x52
	mov	r3, #1
	b	.Lb58c8
.Lb58a8:
	ldr	r3, =REG_SIOCNT
	mov	r2, r1
	ldr	r3, [r3]
	add	r2, #0x50
	lsl	r3, #26
	ldrb	r2, [r2]
	lsr	r3, #30
	cmp	r2, r3
	beq	.Lb58c2
	mov	r2, r1
	add	r2, #0x52
	mov	r3, #1
	strb	r3, [r2]
.Lb58c2:
	mov	r2, r1
	add	r2, #0x51
	mov	r3, #0
.Lb58c8:
	strb	r3, [r2]
.Lb58ca:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.Lb58ee
	ldr	r3, [r7]
	ldrh	r1, [r6, #0x36]
	sub	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r2, r3
	cmp	r3, #0
	bge	.Lb58e2
	add	r2, #0xf
.Lb58e2:
	asr	r3, r2, #4
	add	r3, r1, r3
	strh	r3, [r6, #0x36]
	ldr	r3, [r7, #4]
	sub	r3, #1
	str	r3, [r7, #4]
.Lb58ee:
	ldr	r3, [r6, #0x1c]
	mov	r5, r6
	add	r5, #0xc
	cmp	r3, #0
	beq	.Lb58fa
	mov	r5, r3
.Lb58fa:
	bl	Func_49ac
	mov	r0, r5
	bl	Func_4cb4
	mov	r3, #0x36
	ldrsh	r0, [r6, r3]
	bl	Func_4c1c
	mov	r2, #0x34
	ldrsh	r0, [r6, r2]
	bl	Func_4bd4
	mov	r3, #0
	add	r0, sp, #4
	str	r3, [r0]
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x20]
	mov	r1, r6
	str	r3, [r0, #8]
	ldr	r3, =Func_9c0
	bl	_call_via_r3
	ldr	r3, [r7, #0x14]
	cmp	r3, #0
	bne	.Lb5942
	mov	r1, #0xf0
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r1, #15
	str	r3, [sp]
	mov	r0, r1
	mov	r2, #0
	mov	r3, #0
	bl	Func_c0a24
.Lb5942:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b5864

.thumb_func_start Func_b595c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	sub	sp, #0x10
	mov	r7, r0
	mov	r10, r3
	bl	_Func_198dc
	mov	r6, sp
	mov	r0, r6
	bl	Func_b6ae0
	mov	r5, #0
	cmp	r7, #0
	beq	.Lb59aa
	sub	r3, r7, #1
	mov	r8, r3
.Lb5984:
	ldrh	r0, [r6]
	mov	r1, #1
	add	r6, #2
	bl	_Func_19908
	cmp	r5, r8
	bne	.Lb599a
	ldr	r0, =0x811
	bl	_Func_175a0
	b	.Lb59a0
.Lb599a:
	ldr	r0, =0x810
	bl	_Func_175a0
.Lb59a0:
	add	r5, #1
	bl	Func_bb65c
	cmp	r5, r7
	bne	.Lb5984
.Lb59aa:
	bl	_Func_174d8
	mov	r3, r10
	add	r3, #0x45
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lb59d0
	bl	_Func_198dc
	mov	r0, #0
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x812
	bl	_Func_175a0
	bl	Func_bb65c
	b	.Lb59ea
.Lb59d0:
	cmp	r3, #2
	bne	.Lb59ea
	bl	_Func_198dc
	mov	r0, #0
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x813
	bl	_Func_175a0
	bl	Func_bb65c
.Lb59ea:
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b595c

	.section .rodata

.Lc3f34:
	.incrom 0xc3f34, 0xc5938
