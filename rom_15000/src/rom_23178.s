	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_23178
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x160
	str	r0, [sp, #0x5c]
	str	r2, [sp, #0x54]
	str	r1, [sp, #0x58]
	ldr	r5, =iwram_1e8c
	mov	r3, #1
	ldr	r1, [r5]
	mov	r0, #0x80
	mov	r2, #1
	neg	r3, r3
	lsl	r0, #2
	str	r1, [sp, #0x50]
	mov	r10, r2
	str	r3, [sp, #0x44]
	bl	Func_40b4
	mov	r4, #0
	str	r0, [sp, #0x34]
	ldr	r0, [sp, #0x44]
	str	r4, [sp, #0x30]
	bl	_Func_7a5bc
	str	r0, [sp, #0x2c]
	add	r5, #0xa8
	ldr	r5, [r5]
	ldr	r0, [r5, #0x44]
	mov	r1, r10
	str	r1, [r5, #0x48]
	cmp	r0, #0
	beq	.L231ca
	bl	Func_16418
	ldr	r2, [sp, #0x30]
	str	r2, [r5, #0x44]
.L231ca:
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r6, #4
	mov	r2, #0
	add	r3, sp, #0x64
.L231d6:
	sub	r6, #1
	strb	r2, [r3]
	sub	r3, #1
	cmp	r6, #0
	bge	.L231d6
	mov	r3, #0
	add	r2, sp, #0x60
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	str	r3, [r2, #0x10]
	mov	r0, #0x80
	bl	Func_40b4
	mov	r3, #0x8e
	mov	r4, #0x88
	lsl	r3, #1
	lsl	r4, #1
	add	r3, sp
	add	r4, sp
	mov	r1, #1
	neg	r1, r1
	str	r0, [sp, #0x40]
	str	r3, [sp, #0x10]
	str	r4, [sp, #0x14]
	mov	r8, r1
	mov	r5, r4
	mov	r7, r3
	mov	r6, #0xa
.L2320e:
	mov	r0, #0x80
	bl	Func_40b4
	sub	r6, #1
	mov	r2, r8
	strb	r2, [r5]
	stmia	r7!, {r0}
	add	r5, #1
	cmp	r6, #0
	bge	.L2320e
	ldr	r3, [sp, #0x58]
	cmp	r3, #0
	beq	.L23258
	ldr	r4, [sp, #0x5c]
	ldrh	r3, [r4]
	mov	r6, #0
	cmp	r3, #0xff
	beq	.L23258
	cmp	r3, #0xfe
	beq	.L2323c
	ldr	r1, [sp, #0x54]
	cmp	r3, r1
	beq	.L23256
.L2323c:
	add	r6, #1
	cmp	r6, #5
	bgt	.L23258
	ldr	r2, [sp, #0x5c]
	lsl	r3, r6, #1
	ldrh	r3, [r3, r2]
	cmp	r3, #0xff
	beq	.L23258
	cmp	r3, #0xfe
	beq	.L2323c
	ldr	r4, [sp, #0x54]
	cmp	r3, r4
	bne	.L2323c
.L23256:
	str	r6, [sp, #0x44]
.L23258:
	mov	r3, #6
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	str	r1, [sp, #0x38]
	str	r1, [sp, #0x3c]
	bl	Func_162d4
	mov	r3, #0xa
	str	r0, [sp, #0x4c]
	str	r3, [sp]
	mov	r1, #0xe
	mov	r2, #0x1e
	mov	r3, #6
	mov	r0, #0
	bl	Func_162d4
	str	r0, [sp, #0x48]
	bl	Func_1e318
	mov	r3, #0xaa
	mov	r4, #0xa4
	mov	r2, sp
	lsl	r3, #1
	lsl	r4, #1
	mov	r1, sp
	add	r2, #0x80
	add	r3, sp
	add	r4, sp
	add	r1, #0x8c
	str	r2, [sp, #0x1c]
	str	r3, [sp, #8]
	str	r4, [sp, #0xc]
	str	r1, [sp, #0x18]
.L232a0:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	ldr	r2, [sp, #0x1c]
	str	r3, [sp, #0x28]
	ldr	r3, =0x80000400
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r1, [sp, #0x34]
	ldr	r0, [sp, #0x54]
	bl	Func_21b80
	ldr	r3, .L232f0	@ 0x3ff
	and	r0, r3
	ldr	r3, [sp, #0x1c]
	ldrh	r2, [r3, #8]
	ldr	r3, =0xfffffc00
	ldr	r4, [sp, #0x1c]
	and	r3, r2
	orr	r3, r0
	strh	r3, [r4, #8]
	ldrh	r2, [r4, #6]
	ldr	r3, =0xfffffe00
	and	r3, r2
	ldr	r2, .L232f4	@ 8
	ldr	r1, [sp, #0x1c]
	orr	r3, r2
	strh	r3, [r1, #6]
	ldrb	r2, [r1, #9]
	mov	r3, #0x18
	strb	r3, [r1, #4]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xe0
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r0, [sp, #0x1c]
	mov	r1, #0xf0
	b	.L2330c

	.align	2, 0
.L232f0:
	.word	0x3ff
.L232f4:
	.word	8
	.pool

.L2330c:
	bl	Func_3dec
	ldr	r3, [sp, #0x68]
	cmp	r3, #0x15
	bhi	.L23378
	ldr	r2, =.L23320
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L23320:
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23378
	.word	.L23390
	.word	.L23390
	.word	.L23390
	.word	.L23390
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
	.word	.L2339c
.L23378:
	mov	r3, #0
	add	r2, sp, #0x60
	str	r3, [r2, #0x10]
	ldr	r3, [sp, #0x2c]
	cmp	r3, #0
	beq	.L2338a
	mov	r3, #9
	str	r3, [r2, #0x14]
	b	.L233a6
.L2338a:
	mov	r3, #7
	str	r3, [r2, #0x14]
	b	.L233a6
.L23390:
	add	r2, sp, #0x60
	mov	r3, #1
	str	r3, [r2, #0x10]
	mov	r3, #4
	str	r3, [r2, #0x14]
	b	.L233a6
.L2339c:
	add	r2, sp, #0x60
	mov	r3, #2
	str	r3, [r2, #0x10]
	ldr	r4, [sp, #0x30]
	str	r4, [r2, #0x14]
.L233a6:
	ldr	r1, [sp, #0x4c]
	ldr	r3, [sp, #0x4c]
	ldrh	r0, [r1, #0xc]
	ldrh	r2, [r3, #8]
	mov	r4, #0xf
	ldrh	r1, [r1, #0xe]
	ldrh	r3, [r3, #0xa]
	str	r4, [sp]
	bl	Func_22768
	ldr	r4, [sp, #0x30]
	cmp	r4, #0
	bne	.L233c2
	b	.L234ce
.L233c2:
	add	r6, sp, #0x60
	ldr	r3, [r6, #0x10]
	cmp	r3, #1
	bhi	.L23458
	ldr	r1, [sp, #0x28]
	ldrsb	r5, [r6, r3]
	mov	r3, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.L233ee
	mov	r2, #0
	mov	r0, #0x6f
	str	r2, [sp, #0x28]
	bl	_Func_f9080
	ldr	r3, [r6, #0x14]
	add	r5, #1
	cmp	r5, r3
	blt	.L234c8
	ldr	r3, [r6, #0x10]
	mov	r5, #0
	b	.L2340e
.L233ee:
	ldr	r4, [sp, #0x28]
	mov	r3, #0x40
	and	r3, r4
	cmp	r3, #0
	beq	.L2341a
	mov	r1, #0
	mov	r0, #0x6f
	sub	r5, #1
	str	r1, [sp, #0x28]
	bl	_Func_f9080
	cmp	r5, #0
	bge	.L234c8
	ldr	r3, [r6, #0x14]
	sub	r5, r3, #1
	ldr	r3, [r6, #0x10]
.L2340e:
	cmp	r3, #1
	bne	.L234c8
	mov	r3, #2
	str	r3, [r6, #0x10]
	ldrsb	r5, [r6, r3]
	b	.L234c8
.L2341a:
	ldr	r2, [sp, #0x28]
	mov	r3, #0x31
	and	r3, r2
	cmp	r3, #0
	beq	.L234c8
	mov	r3, #0
	mov	r0, #0x6f
	str	r3, [sp, #0x28]
	bl	_Func_f9080
	ldr	r1, [r6, #0x10]
	mov	r3, #2
	eor	r1, r3
	str	r1, [r6, #0x10]
	ldr	r0, =iwram_1b04
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L23446
	ldrsb	r5, [r6, r1]
	b	.L234c8
.L23446:
	ldr	r2, [r0]
	mov	r3, #0x20
	ldr	r5, [sp, #0x30]
	and	r2, r3
	sub	r5, #1
	cmp	r2, #0
	bne	.L234c8
	mov	r5, #0
	b	.L234c8
.L23458:
	cmp	r3, #2
	bne	.L234ce
	ldrsb	r5, [r6, r3]
	ldr	r2, [r6, #0x14]
	cmp	r5, r2
	blt	.L23466
	sub	r5, r2, #1
.L23466:
	cmp	r5, #0
	bge	.L23474
	mov	r3, #0
	str	r3, [r6, #0x10]
	mov	r5, #0
	ldrsb	r5, [r6, r5]
	b	.L234c8
.L23474:
	ldr	r4, [sp, #0x28]
	mov	r3, #0x10
	and	r3, r4
	cmp	r3, #0
	beq	.L2348c
	mov	r1, #0
	add	r5, #1
	str	r1, [sp, #0x28]
	cmp	r5, r2
	blt	.L234a6
	str	r1, [r6, #0x10]
	b	.L234a2
.L2348c:
	ldr	r2, [sp, #0x28]
	mov	r3, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L234ae
	mov	r3, #0
	sub	r5, #1
	str	r3, [sp, #0x28]
	cmp	r5, #0
	bge	.L234a6
	str	r3, [r6, #0x10]
.L234a2:
	mov	r5, #0
	ldrsb	r5, [r6, r5]
.L234a6:
	mov	r0, #0x6f
	bl	_Func_f9080
	b	.L234c8
.L234ae:
	ldr	r4, [sp, #0x28]
	mov	r3, #0xc1
	and	r3, r4
	cmp	r3, #0
	beq	.L234c8
	mov	r1, #0
	str	r1, [sp, #0x28]
	mov	r0, #0x6f
	str	r1, [r6, #0x10]
	mov	r5, #0
	ldrsb	r5, [r6, r5]
	bl	_Func_f9080
.L234c8:
	add	r2, sp, #0x60
	ldr	r3, [r2, #0x10]
	strb	r5, [r2, r3]
.L234ce:
	add	r0, sp, #0x60
	ldr	r2, [r0, #0x10]
	cmp	r2, #0
	bne	.L23512
	ldr	r3, [sp, #0x2c]
	ldrsb	r2, [r0, r2]
	cmp	r3, #0
	bne	.L234e0
	add	r2, #9
.L234e0:
	ldr	r3, =.L37328
	lsl	r2, #3
	add	r2, r3
	ldrb	r3, [r2]
	str	r3, [r0, #8]
	ldrb	r3, [r2, #1]
	str	r3, [r0, #0x18]
	ldrb	r3, [r2, #2]
	str	r3, [r0, #0x1c]
	ldr	r4, [sp, #0x4c]
	ldrb	r3, [r2, #3]
	ldrh	r0, [r4, #0xc]
	ldrh	r1, [r4, #0xe]
	add	r0, r3
	ldrb	r3, [r2, #4]
	add	r1, r3
	mov	r3, #0xe
	ldrb	r2, [r2, #5]
	add	r0, #1
	str	r3, [sp]
	add	r1, #1
	mov	r3, #1
	bl	Func_22768
	b	.L23544
.L23512:
	cmp	r2, #1
	bne	.L2352c
	ldrsb	r3, [r0, r2]
	ldr	r1, =.L373a8
	b	.L23534

	.pool_aligned

.L2352c:
	cmp	r2, #2
	bne	.L23544
	ldrsb	r3, [r0, r2]
	ldr	r1, =.L373b8
.L23534:
	lsl	r3, #2
	ldrb	r2, [r1, r3]
	add	r3, r1
	str	r2, [r0, #8]
	ldrb	r2, [r3, #1]
	ldrb	r3, [r3, #2]
	str	r2, [r0, #0x18]
	str	r3, [r0, #0x1c]
.L23544:
	add	r2, sp, #0x60
	ldr	r3, [r2, #0xc]
	ldr	r1, [r2, #8]
	cmp	r3, r1
	beq	.L23554
	str	r1, [r2, #0xc]
	mov	r1, #2
	mov	r10, r1
.L23554:
	ldr	r3, [r2, #0x18]
	lsl	r3, #3
	str	r3, [sp, #0x38]
	ldr	r3, [r2, #0x1c]
	ldr	r0, [sp, #0x54]
	lsl	r3, #3
	str	r3, [sp, #0x3c]
	bl	_Func_b7dd0
	ldr	r3, [r0]
	ldr	r4, [sp, #8]
	ldr	r2, [r3, #0x50]
	ldr	r3, =0xc0002400
	mov	r7, #0
	str	r3, [r4, #4]
	str	r7, [r4, #8]
	ldr	r1, =0x3ff
	ldrh	r2, [r2, #8]
	ldr	r5, =0xfffffc00
	mov	r8, r1
	ldrh	r1, [r4, #8]
	mov	r3, r5
	lsl	r2, #22
	lsr	r2, #22
	and	r3, r1
	orr	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	ldr	r3, [sp, #8]
	ldr	r6, =0xfffffe00
	ldrh	r2, [r3, #6]
	mov	r3, r6
	and	r3, r2
	ldr	r2, .L235cc	@ 0xac
	ldr	r4, [sp, #8]
	orr	r3, r2
	strh	r3, [r4, #6]
	mov	r3, #0x38
	strb	r3, [r4, #4]
	ldr	r0, [sp, #8]
	mov	r1, #0xf0
	bl	Func_3dec
	ldr	r3, =0x40000400
	ldr	r1, [sp, #0xc]
	str	r3, [r1, #4]
	str	r7, [r1, #8]
	ldr	r0, [sp, #0x40]
	ldr	r1, =Data_310a4
	bl	Func_40d0
	ldr	r4, [sp, #0xc]
	ldrh	r3, [r4, #8]
	mov	r2, r8
	and	r2, r0
	and	r5, r3
	mov	r1, r4
	orr	r5, r2
	strh	r5, [r1, #8]
	b	.L235ec

	.align	2, 0
.L235cc:
	.word	0xac
	.pool

.L235ec:
	ldr	r3, [sp, #0x4c]
	ldr	r0, =iwram_1e40
	ldrh	r2, [r3, #0xc]
	ldr	r3, [r0]
	ldr	r4, [sp, #0x38]
	mov	r1, #4
	and	r3, r1
	lsl	r2, #3
	add	r2, r4, r2
	lsr	r3, #2
	ldr	r4, [sp, #0xc]
	sub	r2, r3
	ldr	r3, .L23640	@ 0x1ff
	add	r2, #0x10
	and	r2, r3
	ldrh	r3, [r4, #6]
	and	r6, r3
	orr	r6, r2
	mov	r2, r4
	strh	r6, [r2, #6]
	ldr	r3, [sp, #0x4c]
	ldrh	r2, [r3, #0xe]
	ldr	r3, [r0]
	ldr	r4, [sp, #0x3c]
	and	r3, r1
	lsl	r2, #3
	add	r2, r4, r2
	lsr	r3, #2
	ldr	r1, [sp, #0xc]
	sub	r2, r3
	add	r2, #0x10
	strb	r2, [r1, #4]
	mov	r3, #0x3f
	ldrb	r2, [r1, #7]
	neg	r3, r3
	and	r3, r2
	mov	r2, #0x10
	orr	r3, r2
	strb	r3, [r1, #7]
	ldr	r0, [sp, #0xc]
	b	.L23648

	.align	2, 0
.L23640:
	.word	0x1ff
	.pool

.L23648:
	mov	r1, #0xf1
	bl	Func_3dec
	mov	r2, r10
	cmp	r2, #0
	bne	.L23656
	b	.L23cfa
.L23656:
	ldr	r0, [sp, #0x54]
	bl	_Func_77394
	mov	r9, r0
	bl	Func_1e318
	bl	Func_16738
	mov	r3, #1
	mov	r4, r10
	and	r3, r4
	cmp	r3, #0
	bne	.L23672
	b	.L23b42
.L23672:
	ldr	r0, [sp, #0x4c]
	bl	Func_16498
	ldr	r1, [sp, #0x48]
	ldr	r3, [sp, #0x48]
	ldrh	r0, [r1, #0xc]
	ldrh	r2, [r3, #8]
	ldrh	r1, [r1, #0xe]
	ldrh	r3, [r3, #0xa]
	str	r7, [sp]
	bl	Func_17248
	mov	r3, #0xe
	str	r3, [sp]
	ldr	r0, [sp, #0x4c]
	mov	r1, #0
	mov	r2, #0xe
	mov	r3, #0x1d
	bl	Func_1e41c
	mov	r0, r9
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e8b0
	ldr	r0, =.L373d8
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x38
	mov	r3, #0
	bl	Func_1e8b0
	mov	r4, r9
	ldr	r2, [sp, #0x4c]
	ldrb	r0, [r4, #0xf]
	mov	r1, #2
	mov	r3, #0x48
	str	r7, [sp]
	bl	Func_1ea08
	ldr	r7, =0x8ba
	ldr	r1, [sp, #0x4c]
	mov	r0, r7
	mov	r2, #0
	mov	r3, #8
	bl	Func_1e7c0
	mov	r3, #0x92
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	mov	r3, #8
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #8
	mov	r3, #0x28
	bl	Func_1ea08
	ldr	r0, =.L373dc
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x28
	mov	r3, #0x18
	bl	Func_1e8b0
	mov	r3, #0x18
	mov	r2, r9
	mov	r1, #0x38
	ldrsh	r0, [r2, r1]
	mov	r8, r3
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #4
	mov	r3, #0x38
	bl	Func_1ea08
	ldr	r5, =.L373e0
	ldr	r1, [sp, #0x4c]
	mov	r0, r5
	mov	r2, #0x58
	mov	r3, #0x18
	bl	Func_1e8b0
	mov	r1, r9
	mov	r2, r8
	mov	r4, #0x34
	ldrsh	r0, [r1, r4]
	mov	r3, #0x60
	str	r2, [sp]
	mov	r1, #4
	ldr	r2, [sp, #0x4c]
	bl	Func_1ea08
	mov	r3, #0x20
	ldr	r1, [sp, #0x4c]
	ldr	r0, =.L373e4
	mov	r2, #0x28
	bl	Func_1e8b0
	mov	r4, r9
	ldr	r2, [sp, #0x4c]
	mov	r3, #0x3a
	ldrsh	r0, [r4, r3]
	mov	r6, #0x20
	mov	r1, #4
	mov	r3, #0x38
	str	r6, [sp]
	bl	Func_1ea08
	mov	r0, r5
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x58
	mov	r3, #0x20
	bl	Func_1e8b0
	mov	r2, r9
	mov	r1, #0x36
	ldrsh	r0, [r2, r1]
	mov	r3, #0x60
	ldr	r2, [sp, #0x4c]
	mov	r1, #4
	str	r6, [sp]
	bl	Func_1ea08
	mov	r0, r7
	ldr	r1, [sp, #0x4c]
	sub	r0, #0xa
	mov	r2, #0x88
	mov	r3, #0x10
	bl	Func_1e7c0
	mov	r3, r9
	ldrh	r0, [r3, #0x3c]
	mov	r3, #0x10
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #3
	mov	r3, #0xb8
	bl	Func_1ea08
	mov	r0, r7
	ldr	r1, [sp, #0x4c]
	sub	r0, #9
	mov	r2, #0x88
	mov	r3, #0x18
	bl	Func_1e7c0
	mov	r4, r9
	mov	r1, r8
	ldrh	r0, [r4, #0x3e]
	ldr	r2, [sp, #0x4c]
	str	r1, [sp]
	mov	r3, #0xb8
	mov	r1, #3
	bl	Func_1ea08
	mov	r0, r7
	ldr	r1, [sp, #0x4c]
	sub	r0, #8
	mov	r2, #0x88
	mov	r3, #0x20
	bl	Func_1e7c0
	mov	r3, r9
	add	r3, #0x40
	ldr	r2, [sp, #0x4c]
	ldrh	r0, [r3]
	mov	r1, #3
	mov	r3, #0xb8
	str	r6, [sp]
	bl	Func_1ea08
	sub	r0, r7, #7
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x88
	mov	r3, #0x28
	bl	Func_1e7c0
	mov	r3, r9
	add	r3, #0x42
	ldrb	r0, [r3]
	mov	r3, #0x28
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #3
	mov	r3, #0xb8
	bl	Func_1ea08
	ldr	r3, =0x129
	add	r3, r9
	ldrb	r0, [r3]
	ldr	r3, =0x741
	mov	r2, #0
	add	r0, r3
	ldr	r1, [sp, #0x4c]
	mov	r3, #0x30
	bl	Func_1e7c0
	ldr	r2, [sp, #0x2c]
	cmp	r2, #0
	beq	.L2380e
	sub	r0, r7, #1
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	mov	r3, #0x48
	bl	Func_1e7c0
.L2380e:
	ldr	r1, [sp, #0x4c]
	sub	r0, r7, #5
	mov	r2, #0
	mov	r3, #0x50
	bl	Func_1e7c0
	sub	r0, r7, #4
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	mov	r3, #0x58
	bl	Func_1e7c0
	mov	r6, #0x8c
	sub	r0, r7, #3
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	mov	r3, #0x60
	bl	Func_1e7c0
	lsl	r6, #1
	mov	r3, #0x48
	mov	r1, #0x28
	mov	r2, #7
	mov	r4, #0
	mov	r11, r3
	mov	r8, r1
	add	r6, r9
	mov	r7, #0x30
	mov	r10, r2
.L23848:
	ldr	r1, [sp, #0x2c]
	mov	r3, #1
	cmp	r1, #0
	beq	.L23852
	mov	r3, #0
.L23852:
	ldr	r2, =0x5001
	add	r1, r4, r2
	mov	r2, #0
	add	r3, #8
	str	r2, [sp]
	ldr	r0, [sp, #0x4c]
	mov	r2, r10
	lsl	r5, r4, #2
	str	r4, [sp, #4]
	bl	Func_19000
	ldr	r3, [sp, #0x2c]
	ldr	r4, [sp, #4]
	cmp	r3, #0
	beq	.L238a0
	mov	r1, r11
	ldr	r2, [sp, #0x4c]
	ldrb	r0, [r6, #4]
	mov	r3, r8
	str	r1, [sp]
	mov	r1, #1
	bl	Func_1ea08
	ldr	r0, =.L373e0
	ldr	r1, [sp, #0x4c]
	mov	r2, r7
	mov	r3, #0x48
	bl	Func_1e8b0
	mov	r2, r11
	mov	r3, r7
	ldrb	r0, [r6]
	add	r3, #8
	str	r2, [sp]
	mov	r1, #1
	ldr	r2, [sp, #0x4c]
	bl	Func_1ea08
	ldr	r4, [sp, #4]
.L238a0:
	mov	r1, r4
	ldr	r0, [sp, #0x54]
	str	r4, [sp, #4]
	bl	_Func_7987c
	mov	r3, #0x50
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r1, #2
	mov	r3, r7
	bl	Func_1ea08
	add	r5, #0x48
	mov	r3, r9
	ldrsh	r0, [r3, r5]
	mov	r3, #0x58
	ldr	r2, [sp, #0x4c]
	str	r3, [sp]
	mov	r1, #3
	mov	r3, r8
	bl	Func_1ea08
	add	r5, r9
	mov	r3, #0x60
	mov	r2, #2
	ldrsh	r0, [r5, r2]
	mov	r1, #3
	str	r3, [sp]
	ldr	r2, [sp, #0x4c]
	mov	r3, r8
	bl	Func_1ea08
	ldr	r4, [sp, #4]
	mov	r3, #0x20
	mov	r1, #4
	add	r4, #1
	add	r8, r3
	add	r6, #1
	add	r7, #0x20
	add	r10, r1
	cmp	r4, #3
	ble	.L23848
	mov	r4, r9
	mov	r2, #0x38
	ldrsh	r3, [r4, r2]
	mov	r6, #0
	cmp	r3, #0
	bne	.L23908
	ldr	r1, [sp, #0x14]
	mov	r3, #0x10
	strb	r3, [r1]
	mov	r6, #1
.L23908:
	ldr	r3, [sp, #0x14]
	add	r2, r6, r3
	b	.L23aa0

	.pool_aligned

.L23930:
	ldr	r1, =0x131
	add	r1, r9
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.L23942
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23942:
	cmp	r6, #7
	ble	.L23948
	b	.L23ad4
.L23948:
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #2
	bne	.L23956
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23956:
	cmp	r6, #7
	ble	.L2395c
	b	.L23ad4
.L2395c:
	ldr	r3, =0x13d
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2396e
	mov	r3, #4
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L2396e:
	cmp	r6, #7
	ble	.L23974
	b	.L23ad4
.L23974:
	ldr	r3, =0x13b
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23986
	mov	r3, #3
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23986:
	cmp	r6, #7
	ble	.L2398c
	b	.L23ad4
.L2398c:
	mov	r3, #0x9e
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L239a0
	mov	r3, #5
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L239a0:
	cmp	r6, #7
	ble	.L239a6
	b	.L23ad4
.L239a6:
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L239ba
	mov	r3, #7
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L239ba:
	cmp	r6, #7
	ble	.L239c0
	b	.L23ad4
.L239c0:
	mov	r3, #0x9c
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L239d4
	mov	r3, #6
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L239d4:
	cmp	r6, #7
	bgt	.L23ad4
	mov	r3, #0x99
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23a0a
	ldr	r3, =0x133
	add	r3, r9
	ldrb	r1, [r3]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L239fc
	mov	r3, #9
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L239fc:
	lsl	r3, r1, #24
	cmp	r3, #0
	bge	.L23a0a
	mov	r3, #0xa
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a0a:
	cmp	r6, #7
	bgt	.L23ad4
	mov	r3, #0x9a
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23a40
	ldr	r3, =0x135
	add	r3, r9
	ldrb	r1, [r3]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L23a32
	mov	r3, #0xb
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a32:
	lsl	r3, r1, #24
	cmp	r3, #0
	bge	.L23a40
	mov	r3, #0xc
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a40:
	cmp	r6, #7
	bgt	.L23ad4
	mov	r3, #0x9b
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23a76
	ldr	r3, =0x137
	add	r3, r9
	ldrb	r1, [r3]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L23a68
	mov	r3, #0xd
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a68:
	lsl	r3, r1, #24
	cmp	r3, #0
	bge	.L23a76
	mov	r3, #0xe
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a76:
	cmp	r6, #7
	bgt	.L23ad4
	ldr	r3, =0x147
	add	r3, r9
	ldrb	r1, [r3]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L23a92
	mov	r3, #0x11
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23a92:
	lsl	r3, r1, #24
	cmp	r3, #0
	bge	.L23ad4
	mov	r3, #0x12
	strb	r3, [r2]
	add	r6, #1
	b	.L23ad4
.L23aa0:
	mov	r3, #0x98
	lsl	r3, #1
	add	r3, r9
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L23ab8
	mov	r3, #0xf
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23ab8:
	cmp	r6, #7
	bgt	.L23ad4
	ldr	r3, =0x141
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23ace
	mov	r3, #8
	strb	r3, [r2]
	add	r6, #1
	add	r2, #1
.L23ace:
	cmp	r6, #7
	bgt	.L23ad4
	b	.L23930
.L23ad4:
	cmp	r6, #0
	ble	.L23af6
	ldr	r7, [sp, #0x10]
	ldr	r5, [sp, #0x14]
	mov	r4, r6
.L23ade:
	ldrb	r0, [r5]
	lsl	r0, #24
	asr	r0, #24
	ldmia	r7!, {r1}
	str	r4, [sp, #4]
	bl	Func_21ab0
	ldr	r4, [sp, #4]
	sub	r4, #1
	add	r5, #1
	cmp	r4, #0
	bne	.L23ade
.L23af6:
	cmp	r6, #0
	bne	.L23b00
	ldr	r4, [sp, #0x14]
	strb	r6, [r4]
	mov	r6, #1
.L23b00:
	cmp	r6, #0xa
	bgt	.L23b1c
	ldr	r3, [sp, #0x14]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r2
	add	r2, r6, r3
	mov	r3, #0xb
	sub	r4, r3, r6
.L23b12:
	sub	r4, #1
	strb	r1, [r2]
	add	r2, #1
	cmp	r4, #0
	bne	.L23b12
.L23b1c:
	str	r6, [sp, #0x30]
	ldr	r4, [sp, #0x14]
	mov	r3, #0
	ldrsb	r3, [r4, r3]
	cmp	r3, #0
	bne	.L23b42
	mov	r2, r9
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	beq	.L23b36
	ldr	r0, =0x8bd
	b	.L23b38
.L23b36:
	ldr	r0, =0x8be
.L23b38:
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x70
	mov	r3, #0
	bl	Func_1e7c0
.L23b42:
	mov	r0, #0x80
	lsl	r0, #1
	bl	Func_4938
	ldr	r3, [sp, #0x68]
	str	r0, [sp, #0x24]
	cmp	r3, #0xd
	bhi	.L23b54
	b	.L23c94
.L23b54:
	ldr	r4, [sp, #0x14]
	sub	r3, #0xe
	ldrsb	r3, [r4, r3]
	str	r3, [sp, #0x20]
	cmp	r3, #0
	bne	.L23b6e
	mov	r2, r9
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.L23b6e
	mov	r3, #0x10
	str	r3, [sp, #0x20]
.L23b6e:
	mov	r4, #0xa6
	lsl	r4, #1
	mov	r8, r4
	mov	r0, r8
	bl	Func_4938
	mov	r4, #0
	str	r4, [sp, #4]
	mov	r1, r9
	mov	r2, r8
	ldr	r3, =Func_1af8
	mov	r6, r0
	bl	_call_via_r3
	ldr	r3, =0x133
	ldr	r4, [sp, #4]
	mov	r5, r9
	add	r5, #0x40
	add	r3, r9
	mov	r1, r9
	mov	r2, r9
	ldrh	r1, [r1, #0x3c]
	ldrh	r2, [r2, #0x3e]
	ldrh	r7, [r5]
	strb	r4, [r3]
	ldr	r3, =0x135
	add	r3, r9
	strb	r4, [r3]
	ldr	r3, =0x147
	add	r3, r9
	strb	r4, [r3]
	ldr	r0, [sp, #0x54]
	mov	r10, r1
	mov	r11, r2
	bl	_Func_77428
	mov	r1, r9
	ldrh	r3, [r1, #0x3c]
	mov	r2, r10
	sub	r2, r3
	ldrh	r3, [r1, #0x3e]
	mov	r1, r11
	sub	r1, r3
	ldrh	r3, [r5]
	mov	r10, r2
	mov	r11, r1
	mov	r2, r8
	mov	r1, r6
	sub	r7, r3
	mov	r0, r9
	ldr	r3, =Func_1af8
	bl	_call_via_r3
	mov	r0, r6
	bl	Func_2df0
	ldr	r3, [sp, #0x20]
	sub	r3, #8
	ldr	r4, [sp, #4]
	cmp	r3, #0xa
	bhi	.L23c4e
	ldr	r2, =.L23bf0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L23bf0:
	.word	.L23c1c
	.word	.L23c24
	.word	.L23c28
	.word	.L23c2e
	.word	.L23c32
	.word	.L23c40
	.word	.L23c40
	.word	.L23c4e
	.word	.L23c4e
	.word	.L23c38
	.word	.L23c3c
.L23c1c:
	ldr	r3, =0x141
	add	r3, r9
	ldrb	r4, [r3]
	b	.L23c4e
.L23c24:
	mov	r4, r10
	b	.L23c4e
.L23c28:
	mov	r1, r10
	neg	r4, r1
	b	.L23c4e
.L23c2e:
	mov	r4, r11
	b	.L23c4e
.L23c32:
	mov	r2, r11
	neg	r4, r2
	b	.L23c4e
.L23c38:
	mov	r4, r7
	b	.L23c4e
.L23c3c:
	neg	r4, r7
	b	.L23c4e
.L23c40:
	ldr	r3, =0x137
	add	r3, r9
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r4, r3, #2
.L23c4e:
	mov	r0, r4
	mov	r1, #5
	bl	Func_19908
	ldr	r0, =0x8d2
	ldr	r3, [sp, #0x20]
	ldr	r1, [sp, #0x24]
	add	r0, r3, r0
	b	.L23cbe

	.pool_aligned

.L23c94:
	cmp	r3, #2
	bne	.L23ccc
	mov	r4, r9
	ldrb	r3, [r4, #0xf]
	cmp	r3, #0x62
	bhi	.L23ccc
	mov	r1, r3
	add	r1, #1
	ldr	r0, [sp, #0x54]
	bl	_Func_79008
	mov	r3, #0x92
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	mov	r1, #5
	sub	r0, r3
	bl	Func_19908
	ldr	r0, =0x8bf
	ldr	r1, [sp, #0x24]
.L23cbe:
	mov	r2, #0x80
	bl	Func_1965c
	b	.L23cda

	.pool_aligned

.L23ccc:
	ldr	r0, [sp, #0x68]
	ldr	r3, =0x8c0
	ldr	r1, [sp, #0x24]
	add	r0, r3
	mov	r2, #0x80
	bl	Func_1965c
.L23cda:
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x48]
	mov	r2, #0
	mov	r3, #4
	bl	Func_17aa4
	ldr	r0, [sp, #0x24]
	bl	Func_2df0
	ldr	r4, =0xea3
	ldr	r3, [sp, #0x50]
	add	r2, r3, r4
	mov	r3, #1
	mov	r1, #0
	strb	r3, [r2]
	mov	r10, r1
.L23cfa:
	ldr	r1, =iwram_1b10
	ldr	r5, [sp, #0x18]
	ldr	r7, [sp, #0x10]
	mov	r6, #0
	mov	r8, r1
	mov	r4, #0x70
.L23d06:
	ldr	r3, =0x40000400
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	ldmia	r7!, {r3}
	lsl	r3, #2
	add	r3, r8
	ldrh	r2, [r3, #2]
	ldr	r1, .L23d44	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r2, #17
	lsr	r2, #22
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #8]
	ldr	r3, .L23d48	@ 0x1ff
	mov	r1, r4
	and	r1, r3
	ldr	r2, .L23d4c	@ 0xfffffe00
	ldrh	r3, [r5, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r5, #6]
	ldr	r2, [sp, #0x4c]
	ldrh	r3, [r2, #0xe]
	lsl	r3, #3
	add	r3, #8
	strb	r3, [r5, #4]
	ldr	r1, [sp, #0x14]
	ldrsb	r3, [r1, r6]
	b	.L23d60

	.align	2, 0
.L23d44:
	.word	0xfffffc00
.L23d48:
	.word	0x1ff
.L23d4c:
	.word	0xfffffe00
	.pool

.L23d60:
	cmp	r3, #0
	ble	.L23d70
	mov	r0, r5
	mov	r1, #0xf0
	str	r4, [sp, #4]
	bl	Func_3dec
	ldr	r4, [sp, #4]
.L23d70:
	add	r6, #1
	add	r4, #0xf
	add	r5, #0xc
	cmp	r6, #0xa
	ble	.L23d06
	ldr	r3, =iwram_1f34
	ldr	r3, [r3]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	beq	.L23e00
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L23e00
	ldr	r2, [sp, #0x58]
	cmp	r2, #0
	beq	.L23df6
	mov	r3, #0x80
	ldr	r4, [sp, #0x28]
	lsl	r3, #1
	and	r3, r4
	cmp	r3, #0
	beq	.L23dc6
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	cmp	r1, r2
	blt	.L23db0
	mov	r2, #0
	str	r2, [sp, #0x44]
.L23db0:
	ldr	r4, [sp, #0x44]
	ldr	r1, [sp, #0x5c]
	lsl	r3, r4, #1
	ldrh	r3, [r3, r1]
	mov	r2, #1
	mov	r0, #0x6f
	str	r3, [sp, #0x54]
	mov	r10, r2
	bl	_Func_f9080
	b	.L23df6
.L23dc6:
	mov	r3, #0x80
	ldr	r4, [sp, #0x28]
	lsl	r3, #2
	and	r3, r4
	cmp	r3, #0
	beq	.L23df6
	ldr	r1, [sp, #0x44]
	sub	r1, #1
	str	r1, [sp, #0x44]
	cmp	r1, #0
	bge	.L23de2
	ldr	r2, [sp, #0x58]
	sub	r2, #1
	str	r2, [sp, #0x44]
.L23de2:
	ldr	r4, [sp, #0x44]
	ldr	r1, [sp, #0x5c]
	lsl	r3, r4, #1
	ldrh	r3, [r3, r1]
	mov	r2, #1
	mov	r0, #0x6f
	str	r3, [sp, #0x54]
	mov	r10, r2
	bl	_Func_f9080
.L23df6:
	mov	r0, #1
	bl	Func_30f8
	bl	.L232a0
.L23e00:
	ldr	r5, [sp, #0x10]
	mov	r6, #0xa
.L23e04:
	ldmia	r5!, {r0}
	sub	r6, #1
	bl	Func_3f3c
	cmp	r6, #0
	bge	.L23e04
	ldr	r0, [sp, #0x34]
	bl	Func_3f3c
	ldr	r0, [sp, #0x40]
	bl	Func_3f3c
	mov	r0, #1
	bl	Func_30f8
	bl	Func_1e318
	mov	r1, #1
	ldr	r0, [sp, #0x4c]
	bl	Func_16418
	mov	r1, #1
	ldr	r0, [sp, #0x48]
	bl	Func_16418
	ldr	r5, =iwram_1e74
	ldr	r3, [r5]
	add	r3, #0x41
	ldrb	r0, [r3]
	add	r5, #0xc0
	bl	Func_1f200
	ldr	r2, [r5]
	mov	r3, #0
	str	r3, [r2, #0x48]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	add	sp, #0x160
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_23178

.thumb_func_start Func_23e70
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xe0
	str	r0, [sp, #0x4c]
	ldr	r5, =iwram_1e8c
	mov	r3, #1
	ldr	r1, [r5]
	mov	r2, #0
	neg	r3, r3
	mov	r0, #0x80
	str	r1, [sp, #0x48]
	str	r2, [sp, #0x44]
	str	r3, [sp, #0x40]
	bl	Func_40b4
	str	r0, [sp, #0x3c]
	mov	r0, #0xa8
	lsl	r0, #1
	bl	Func_4970
	ldr	r2, [sp, #0x40]
	mov	r1, #0
	mov	r3, #0x2a
	mov	r6, #0
	str	r0, [sp, #0x38]
	str	r1, [sp, #0x34]
	str	r2, [sp, #0x30]
	str	r3, [sp]
	mov	r1, #4
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	str	r6, [sp, #0x28]
	str	r6, [sp, #0x20]
	str	r6, [sp, #0x50]
	str	r6, [sp, #0x1c]
	str	r6, [sp, #0x18]
	bl	Func_162d4
	str	r0, [sp, #0x2c]
	mov	r0, #1
	bl	Func_1e3c8
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #9
	mov	r2, #9
	mov	r3, #0xb
	mov	r0, #0x15
	bl	Func_162d4
	mov	r9, r0
	add	r5, #0xa8
	ldr	r3, [r5]
	ldr	r1, [r3, #0x34]
	ldr	r2, [r3, #0x30]
	ldr	r3, [r3, #0x38]
	mov	r11, r1
	mov	r10, r2
	str	r3, [sp, #0x24]
	ldr	r0, [sp, #0x4c]
	bl	_Func_77394
	add	r0, #0xf8
	mov	r7, #0
	mov	r8, r0
.L23efe:
	ldr	r1, [sp, #0x34]
	ldr	r2, [sp, #0x38]
	lsl	r3, r1, #2
	mov	r6, #0
	add	r5, r3, r2
.L23f08:
	mov	r1, r8
	mov	r2, #1
	ldr	r3, [r1, #0x10]
	lsl	r2, r6
	and	r3, r2
	cmp	r3, #0
	beq	.L23f24
	lsl	r3, r7, #8
	orr	r3, r6
	stmia	r5!, {r3}
	ldr	r2, [sp, #0x34]
	add	r2, #1
	str	r2, [sp, #0x34]
	b	.L23fba
.L23f24:
	mov	r1, r8
	ldr	r3, [r1]
	and	r3, r2
	cmp	r3, #0
	beq	.L23fba
	ldr	r2, [sp, #0x4c]
	mov	r0, #0
	cmp	r2, #7
	bls	.L23f38
	mov	r0, #1
.L23f38:
	bl	_Func_77330
	mov	r2, #0x84
	mov	r3, r0
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	mov	r1, #0
	add	r0, #8
	mov	r4, #0
	cmp	r1, r3
	bge	.L23f94
	ldrb	r3, [r0, #2]
	ldr	r2, [sp, #0x4c]
	cmp	r3, r2
	bne	.L23f64
	ldrb	r3, [r0]
	cmp	r3, r7
	bne	.L23f64
	ldrb	r3, [r0, #1]
	cmp	r3, r6
	beq	.L23f8e
.L23f64:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r0, r2
	ldr	r3, [r3]
	add	r1, #1
	cmp	r1, r3
	bge	.L23f92
	lsl	r4, r1, #2
	add	r2, r0, r4
	ldrb	r3, [r2, #2]
	mov	r12, r3
	ldr	r3, [sp, #0x4c]
	cmp	r12, r3
	bne	.L23f64
	ldrb	r3, [r2]
	cmp	r3, r7
	bne	.L23f64
	ldrb	r3, [r2, #1]
	cmp	r3, r6
	bne	.L23f64
	b	.L23f94
.L23f8e:
	mov	r4, #0
	b	.L23f94
.L23f92:
	lsl	r4, r1, #2
.L23f94:
	lsl	r2, r7, #8
	mov	r3, #0x80
	lsl	r3, #9
	orr	r2, r6
	orr	r2, r3
	str	r2, [r5]
	add	r3, r0, r4
	ldrb	r3, [r3, #3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L23fb2
	lsl	r3, #17
	orr	r2, r3
	str	r2, [r5]
.L23fb2:
	ldr	r1, [sp, #0x34]
	add	r1, #1
	str	r1, [sp, #0x34]
	add	r5, #4
.L23fba:
	add	r6, #1
	cmp	r6, #0x13
	ble	.L23f08
	mov	r2, #4
	add	r7, #1
	add	r8, r2
	cmp	r7, #3
	ble	.L23efe
	ldr	r3, [sp, #0x34]
	ldr	r1, [sp, #0x38]
	lsl	r2, r3, #2
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r2, r1]
	ldr	r3, [sp, #0x48]
	ldr	r1, =0xea3
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, sp
	add	r2, #0xd4
	str	r2, [sp, #4]
	ldr	r1, [sp, #0x48]
	ldr	r2, =0xea3
	mov	r3, sp
	add	r3, #0x54
	add	r2, r1, r2
	str	r3, [sp, #0xc]
	str	r2, [sp, #8]
.L23ff4:
	ldr	r3, [sp, #0x30]
	cmp	r11, r3
	bne	.L24008
	ldr	r1, [sp, #0x40]
	cmp	r10, r1
	bne	.L24008
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L24008
	b	.L24328
.L24008:
	mov	r3, r11
	ldr	r1, [sp, #0x38]
	add	r3, r10
	lsl	r3, #2
	ldr	r5, [r3, r1]
	ldr	r3, [sp, #0x48]
	ldr	r1, =0xea6
	mov	r2, #0
	str	r2, [sp, #0x28]
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r9
	ldrh	r0, [r2, #0xc]
	ldrh	r1, [r2, #0xe]
	ldr	r2, [sp, #0x40]
	lsl	r3, r2, #1
	add	r1, r3
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r3, #0xf
	add	r1, #1
	str	r3, [sp]
	add	r0, #1
	sub	r2, #2
	mov	r3, #1
	bl	Func_22768
	ldr	r1, [sp, #0x20]
	cmp	r1, #0
	beq	.L24064
	ldr	r0, [sp, #0x2c]
	mov	r1, #1
	bl	Func_16418
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x1e
	mov	r3, #4
	bl	Func_162d4
	str	r0, [sp, #0x2c]
	bl	Func_16738
.L24064:
	ldr	r3, [sp, #0x34]
	mov	r2, #0
	str	r2, [sp, #0x1c]
	cmp	r3, #0
	bne	.L24070
	b	.L241a0
.L24070:
	bl	Func_198dc
	mov	r1, #0
	str	r1, [sp, #0x18]
	ldr	r0, =iwram_1f34
	ldr	r3, [r0]
	mov	r2, #0xe4
	ldr	r3, [r3, r2]
	ldr	r1, [sp, #0x1c]
	cmp	r3, r5
	bne	.L2408c
	mov	r2, #1
	str	r2, [sp, #0x18]
	b	.L240a2
.L2408c:
	add	r1, #1
	cmp	r1, #7
	bgt	.L240a2
	ldr	r3, [r0]
	lsl	r2, r1, #2
	add	r2, #0xe4
	ldr	r3, [r3, r2]
	cmp	r3, r5
	bne	.L2408c
	mov	r3, #1
	str	r3, [sp, #0x18]
.L240a2:
	ldr	r1, [sp, #0x18]
	cmp	r1, #0
	beq	.L240ca
	ldr	r6, [sp, #0xc]
	mov	r2, #0x34
	ldr	r0, =0x8ef
	mov	r1, r6
	bl	Func_1965c
	ldr	r2, [sp, #0x44]
	cmp	r2, #0
	beq	.L241ac
	mov	r0, r2
	mov	r1, #1
	bl	Func_16418
	mov	r3, #0
	str	r3, [sp, #0x44]
	str	r3, [sp, #0x20]
	b	.L241ac
.L240ca:
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r5
	cmp	r3, #0
	beq	.L2414c
	mov	r0, #0xf8
	lsl	r0, #14
	and	r0, r5
	cmp	r0, #0
	beq	.L2411e
	lsr	r0, #17
	mov	r1, #5
	bl	Func_19908
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r5
	lsr	r3, #8
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0xff
	and	r5, r3
	ldr	r6, [sp, #0xc]
	ldr	r3, =0x666
	lsl	r0, #2
	add	r0, r5
	mov	r1, r6
	add	r0, r3
	mov	r2, #0x34
	bl	Func_1965c
	ldr	r1, [sp, #0x44]
	cmp	r1, #0
	beq	.L241ac
	mov	r0, r1
	mov	r1, #1
	bl	Func_16418
	mov	r2, #0
	str	r2, [sp, #0x44]
	str	r2, [sp, #0x20]
	b	.L241ac
.L2411e:
	add	r3, sp, #0x50
	str	r3, [sp]
	ldr	r1, [sp, #0x4c]
	mov	r2, r5
	ldr	r3, [sp, #0x20]
	ldr	r0, [sp, #0x44]
	bl	Func_22b44
	ldr	r6, [sp, #0xc]
	str	r0, [sp, #0x44]
	mov	r1, r6
	ldr	r0, =0x899
	mov	r2, #0x34
	bl	Func_1965c
	mov	r3, #0xf0
	lsl	r3, #4
	and	r5, r3
	lsr	r3, r5, #8
	mov	r1, #1
	lsl	r1, r3
	str	r1, [sp, #0x28]
	b	.L241ac
.L2414c:
	add	r3, sp, #0x50
	mov	r2, r5
	str	r3, [sp]
	ldr	r1, [sp, #0x4c]
	ldr	r3, [sp, #0x20]
	ldr	r0, [sp, #0x44]
	bl	Func_22b44
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r5
	lsr	r3, #8
	str	r0, [sp, #0x44]
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0xff
	and	r5, r3
	lsl	r0, #2
	ldr	r3, =0x666
	ldr	r6, [sp, #0xc]
	add	r0, r5
	add	r0, r3
	mov	r1, r6
	mov	r2, #0x34
	bl	Func_1965c
	b	.L241ac

	.pool_aligned

.L241a0:
	ldr	r6, [sp, #0xc]
	ldr	r0, =0x8ed
	mov	r1, r6
	mov	r2, #0x34
	bl	Func_1965c
.L241ac:
	ldr	r2, [sp, #0x48]
	ldr	r3, =0xea6
	mov	r1, #0
	add	r5, r2, r3
	strb	r1, [r5]
	ldr	r2, [sp, #0x20]
	cmp	r2, #0
	bne	.L241e0
	mov	r3, #1
	strb	r3, [r5]
	ldr	r0, [sp, #0x2c]
	mov	r1, #1
	bl	Func_16418
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r0, #0
	mov	r3, #4
	mov	r1, #4
	mov	r2, #0x1e
	bl	Func_162d4
	str	r0, [sp, #0x2c]
	add	r3, sp, #0x20
	ldrb	r3, [r3]
	strb	r3, [r5]
.L241e0:
	ldr	r1, [sp, #0x2c]
	mov	r2, #0
	mov	r0, r6
	mov	r3, #4
	bl	Func_17aa4
	ldr	r2, [sp, #0x30]
	mov	r1, r10
	str	r1, [sp, #0x40]
	cmp	r11, r2
	beq	.L242ae
	mov	r0, r9
	bl	Func_16498
	mov	r1, r11
	ldr	r2, [sp, #0x38]
	lsl	r3, r1, #2
	add	r3, r2
	mov	r1, #0x80
	ldr	r6, [r3]
	lsl	r1, #24
	mov	r7, #0
	cmp	r6, r1
	beq	.L242a8
	mov	r8, r3
.L24212:
	mov	r2, #0xf0
	lsl	r2, #4
	mov	r1, r6
	and	r1, r2
	ldr	r3, =0x5001
	lsr	r1, #8
	add	r1, r3
	mov	r2, #0
	lsl	r3, r7, #1
	mov	r0, r9
	str	r2, [sp]
	bl	Func_19000
	mov	r3, #0xf8
	lsl	r3, #14
	and	r3, r6
	cmp	r3, #0
	beq	.L2423e
	mov	r0, #4
	bl	Func_1e71c
	b	.L2424e
.L2423e:
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r6
	cmp	r3, #0
	beq	.L2424e
	mov	r0, #2
	bl	Func_1e71c
.L2424e:
	mov	r1, #0xf0
	lsl	r1, #4
	mov	r3, r6
	and	r3, r1
	lsr	r3, #8
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0xff
	and	r3, r6
	lsl	r0, #2
	add	r0, r3
	ldr	r3, =0x45f
	lsl	r5, r7, #4
	add	r0, r3
	mov	r1, r9
	mov	r2, #8
	mov	r3, r5
	bl	Func_1e7c0
	mov	r0, #0xf8
	lsl	r0, #14
	and	r0, r6
	cmp	r0, #0
	beq	.L2428c
	lsr	r0, #17
	mov	r1, #1
	mov	r2, r9
	mov	r3, #0x30
	str	r5, [sp]
	bl	Func_1e9d4
.L2428c:
	mov	r0, #0xf
	add	r7, #1
	bl	Func_1e71c
	cmp	r7, #4
	bgt	.L242a8
	mov	r2, #4
	add	r8, r2
	mov	r3, r8
	mov	r1, #0x80
	ldr	r6, [r3]
	lsl	r1, #24
	cmp	r6, r1
	bne	.L24212
.L242a8:
	mov	r12, r11
	mov	r2, r12
	str	r2, [sp, #0x30]
.L242ae:
	ldr	r1, [sp, #0x34]
	cmp	r1, #5
	ble	.L242f8
	mov	r7, #0
	add	r1, #4
	mov	r8, r1
	b	.L242ea
.L242bc:
	ldr	r2, =0xf301
	mov	r0, r11
	mov	r1, #5
	add	r6, r7, r2
	bl	Func_af0_from_thumb
	cmp	r7, r0
	bne	.L242d0
	ldr	r3, =0xf30b
	add	r6, r7, r3
.L242d0:
	mov	r1, r9
	ldrh	r2, [r1, #8]
	sub	r2, r5
	add	r2, r7
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	mov	r0, r9
	mov	r1, r6
	sub	r3, #1
	bl	Func_19000
	add	r7, #1
.L242ea:
	mov	r0, r8
	mov	r1, #5
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r7, r5
	blt	.L242bc
.L242f8:
	mov	r1, r9
	ldrh	r0, [r1, #0xc]
	mov	r2, r10
	ldrh	r1, [r1, #0xe]
	lsl	r3, r2, #1
	add	r1, r3
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r3, #0xe
	add	r1, #1
	sub	r2, #2
	str	r3, [sp]
	add	r0, #1
	mov	r3, #1
	bl	Func_22768
	ldr	r1, [sp, #8]
	mov	r3, #1
	strb	r3, [r1]
	ldr	r2, [sp, #0x48]
	ldr	r1, =0xea6
	add	r3, r2, r1
	mov	r2, #0
	strb	r2, [r3]
.L24328:
	ldr	r3, [sp, #0x34]
	cmp	r3, #5
	ble	.L24412
	mov	r7, #0
	add	r3, #4
	mov	r8, r3
	b	.L2438a
.L24336:
	ldr	r3, =iwram_1ae8
	mov	r2, #0x80
	ldr	r3, [r3]
	ldr	r1, =0xf301
	lsl	r2, #1
	and	r3, r2
	add	r6, r7, r1
	cmp	r3, #0
	bne	.L24354
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L24364
.L24354:
	mov	r0, r11
	mov	r1, #5
	bl	Func_af0_from_thumb
	cmp	r7, r0
	bne	.L24364
	ldr	r2, =0xf30b
	add	r6, r7, r2
.L24364:
	mov	r3, r9
	mov	r1, #5
	mov	r0, r8
	ldrh	r5, [r3, #8]
	bl	Func_af0_from_thumb
	sub	r5, r0
	add	r5, r7
	mov	r1, #0
	sub	r5, #2
	mov	r3, #1
	str	r1, [sp]
	mov	r0, r9
	mov	r1, r6
	mov	r2, r5
	neg	r3, r3
	bl	Func_19000
	add	r7, #1
.L2438a:
	mov	r0, r8
	mov	r1, #5
	bl	Func_af0_from_thumb
	cmp	r7, r0
	blt	.L24336
	ldr	r3, =iwram_1ae8
	ldr	r5, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r5, r3
	cmp	r5, #0
	bne	.L243d0
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r3, #1
	sub	r2, r0
	sub	r2, #3
	mov	r0, r9
	ldr	r1, =0xf334
	neg	r3, r3
	str	r5, [sp]
	bl	Func_19000
	mov	r1, r9
	ldrh	r2, [r1, #8]
	mov	r3, #1
	sub	r2, #2
	mov	r0, r9
	ldr	r1, =0xf335
	neg	r3, r3
	str	r5, [sp]
	bl	Func_19000
	b	.L243fe
.L243d0:
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r1, #0
	sub	r2, r0
	mov	r3, #1
	sub	r2, #3
	str	r1, [sp]
	mov	r0, r9
	ldr	r1, =0xf011
	neg	r3, r3
	bl	Func_19000
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r1, #0
	mov	r3, #1
	str	r1, [sp]
	sub	r2, #2
	mov	r0, r9
	ldr	r1, =0xf012
	neg	r3, r3
	bl	Func_19000
.L243fe:
	mov	r2, r9
	ldrh	r3, [r2, #0xe]
	ldr	r1, [sp, #8]
	sub	r3, #1
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.L24412:
	ldr	r3, =iwram_1c94
	ldr	r1, [r3]
	ldr	r3, =iwram_1b04
	ldr	r0, =iwram_1f34
	ldr	r7, [r3]
	ldr	r3, =iwram_1ae8
	ldr	r2, [r0]
	ldr	r3, [r3]
	mov	r8, r3
	mov	r3, r2
	add	r3, #0xd8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2444a
	add	r2, #0xdc
	ldr	r3, [r2]
	mov	r1, #0
	mov	r7, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.L24446
	mov	r3, #0x3c
	str	r3, [r2]
	mov	r7, #1
	mov	r1, #1
	b	.L2444a
.L24446:
	sub	r3, #1
	str	r3, [r2]
.L2444a:
	ldr	r2, [r0]
	ldr	r3, [r2, #0x4c]
	cmp	r3, #0
	beq	.L2445a
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	beq	.L24466
.L2445a:
	mov	r0, #0x71
	mov	r6, #1
	bl	_Func_f9080
	neg	r6, r6
	b	.L248a0
.L24466:
	mov	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.L2451c
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	beq	.L244d6
	mov	r3, r11
	add	r3, r10
	ldr	r1, [sp, #0x38]
	lsl	r3, #2
	ldr	r0, [r3, r1]
	mov	r6, #0xf8
	lsl	r6, #14
	mov	r5, r0
	and	r5, r6
	cmp	r5, #0
	bne	.L244a0
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	bne	.L244ce
	mov	r1, r11
	mov	r3, r10
	str	r1, [r2, #0x34]
	str	r3, [r2, #0x30]
	ldr	r1, [sp, #0x24]
	mov	r6, r0
	str	r1, [r2, #0x38]
	b	.L248a0
.L244a0:
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.L244ce
	and	r5, r6
	bl	Func_16738
	bl	Func_198dc
	lsr	r0, r5, #17
	mov	r1, #5
	bl	Func_19908
	mov	r2, #0x34
	ldr	r1, [sp, #0xc]
	ldr	r0, =0x898
	bl	Func_1965c
	mov	r2, #0
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x2c]
	mov	r3, #4
	bl	Func_17aa4
.L244ce:
	mov	r0, #0x72
	bl	_Func_f9080
	b	.L2451c
.L244d6:
	mov	r6, #1
	neg	r6, r6
	b	.L248a0

	.pool_aligned

.L2451c:
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	bne	.L24524
	b	.L24766
.L24524:
	mov	r3, #0x80
	and	r3, r7
	cmp	r3, #0
	beq	.L24550
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #5
	beq	.L24546
	mov	r3, r11
	ldr	r1, [sp, #0x34]
	add	r3, r10
	cmp	r3, r1
	bne	.L2454a
.L24546:
	mov	r2, #0
	mov	r10, r2
.L2454a:
	mov	r3, r10
	str	r3, [sp, #0x24]
	b	.L24766
.L24550:
	mov	r3, #0x40
	and	r3, r7
	cmp	r3, #0
	beq	.L24590
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #1
	neg	r1, r1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0
	bge	.L2458a
	ldr	r0, [sp, #0x34]
	mov	r1, #5
	sub	r0, #1
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	cmp	r11, r3
	bne	.L24586
	ldr	r1, [sp, #0x34]
	mov	r2, r11
	sub	r3, r1, r2
	sub	r3, #1
	b	.L24588
.L24586:
	mov	r3, #4
.L24588:
	mov	r10, r3
.L2458a:
	mov	r1, r10
	str	r1, [sp, #0x24]
	b	.L24766
.L24590:
	mov	r3, #0x80
	lsl	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L24694
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	beq	.L24622
	ldr	r0, [sp, #0x50]
	mov	r5, #0
	cmp	r5, r0
	bge	.L245e6
.L245aa:
	ldr	r3, =iwram_1e40
	ldr	r2, =0xf301
	ldr	r3, [r3]
	add	r1, r5, r2
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L245c8
	ldr	r3, [sp, #0x20]
	sub	r3, #1
	cmp	r5, r3
	bne	.L245c8
	ldr	r3, [sp, #0x20]
	ldr	r2, =0xf30a
	add	r1, r3, r2
.L245c8:
	ldr	r3, [sp, #0x44]
	ldrh	r2, [r3, #8]
	sub	r2, r0
	add	r2, r5
	mov	r3, #0
	str	r3, [sp]
	ldr	r0, [sp, #0x44]
	sub	r2, #2
	sub	r3, #1
	bl	Func_19000
	ldr	r0, [sp, #0x50]
	add	r5, #1
	cmp	r5, r0
	blt	.L245aa
.L245e6:
	ldr	r1, [sp, #0x44]
	ldrh	r2, [r1, #8]
	mov	r3, #0
	sub	r2, r0
	str	r3, [sp]
	mov	r0, r1
	sub	r2, #3
	ldr	r1, =0xf334
	sub	r3, #1
	bl	Func_19000
	ldr	r1, [sp, #0x44]
	ldrh	r2, [r1, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r1
	sub	r2, #2
	ldr	r1, =0xf335
	sub	r3, #1
	bl	Func_19000
	ldr	r1, [sp, #0x44]
	ldrh	r2, [r1, #0xe]
	ldr	r1, [sp, #8]
	lsr	r2, #2
	mov	r3, #2
	lsl	r3, r2
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
.L24622:
	ldr	r2, [sp, #0x20]
	cmp	r2, #0
	bne	.L24642
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	beq	.L24644
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	beq	.L2463a
	mov	r0, r3
	bl	Func_164ac
.L2463a:
	mov	r1, #1
	str	r1, [sp, #0x20]
	str	r1, [sp, #0x1c]
	b	.L24766
.L24642:
	ldr	r0, [sp, #0x50]
.L24644:
	ldr	r2, [sp, #0x20]
	cmp	r2, r0
	ble	.L2464c
	str	r0, [sp, #0x20]
.L2464c:
	ldr	r3, [sp, #0x20]
	cmp	r3, #0
	bne	.L24654
	b	.L24766
.L24654:
	mov	r3, #0x10
	and	r3, r7
	cmp	r3, #0
	beq	.L24672
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r1, [sp, #0x20]
	ldr	r3, [sp, #0x50]
	add	r1, #1
	str	r1, [sp, #0x20]
	cmp	r1, r3
	ble	.L2468e
	mov	r2, #1
	b	.L2468c
.L24672:
	mov	r3, #0x20
	and	r3, r7
	cmp	r3, #0
	beq	.L24766
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r1, [sp, #0x20]
	sub	r1, #1
	str	r1, [sp, #0x20]
	cmp	r1, #0
	bgt	.L2468e
	ldr	r2, [sp, #0x50]
.L2468c:
	str	r2, [sp, #0x20]
.L2468e:
	mov	r3, #1
	str	r3, [sp, #0x1c]
	b	.L24766
.L24694:
	ldr	r1, [sp, #0x20]
	cmp	r1, #0
	beq	.L246b0
	ldr	r2, [sp, #0x44]
	cmp	r2, #0
	beq	.L246a6
	mov	r0, r2
	bl	Func_164ac
.L246a6:
	mov	r3, #0
	mov	r1, #1
	str	r3, [sp, #0x20]
	str	r1, [sp, #0x1c]
	b	.L24766
.L246b0:
	mov	r3, #0x10
	and	r3, r7
	cmp	r3, #0
	beq	.L24708
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r3, r11
	ldr	r2, [sp, #0x34]
	add	r3, #5
	cmp	r3, r2
	blt	.L246dc
	mov	r3, r11
	cmp	r3, #0
	beq	.L24766
	ldr	r2, [sp, #0x24]
	mov	r1, #0
	mov	r11, r1
	mov	r10, r2
	b	.L24766
.L246dc:
	ldr	r0, [sp, #0x34]
	mov	r11, r3
	ldr	r3, [sp, #0x24]
	sub	r0, #1
	mov	r1, #5
	mov	r10, r3
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	cmp	r11, r3
	bne	.L24766
	ldr	r1, [sp, #0x34]
	mov	r2, r11
	sub	r3, r1, r2
	sub	r3, #1
	mov	r10, r3
	ldr	r3, [sp, #0x24]
	cmp	r10, r3
	ble	.L24766
	mov	r10, r3
	b	.L24766
.L24708:
	mov	r3, #0x20
	and	r3, r7
	cmp	r3, #0
	beq	.L24766
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r1, r11
	cmp	r1, #0
	beq	.L24740
	mov	r2, #5
	ldr	r3, [sp, #0x24]
	neg	r2, r2
	add	r11, r2
	mov	r10, r3
	b	.L24766

	.pool_aligned

.L24740:
	ldr	r0, [sp, #0x34]
	mov	r1, #5
	sub	r0, #1
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	ldr	r1, [sp, #0x24]
	add	r3, r0
	mov	r11, r3
	mov	r10, r1
	cmp	r3, #0
	beq	.L24766
	ldr	r2, [sp, #0x34]
	sub	r3, r2, r3
	sub	r3, #1
	mov	r10, r3
	cmp	r10, r1
	ble	.L24766
	mov	r10, r1
.L24766:
	mov	r1, r9
	ldrh	r3, [r1, #0xc]
	lsl	r3, #3
	mov	r2, r10
	sub	r3, #2
	str	r3, [sp, #0x10]
	lsl	r3, r2, #1
	ldrh	r2, [r1, #0xe]
	add	r3, r2
	lsl	r3, #3
	add	r3, #0x14
	ldr	r1, [sp, #4]
	str	r3, [sp, #0x14]
	mov	r3, #0x80
	lsl	r3, #23
	mov	r2, #0
	str	r3, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [sp, #0x3c]
	ldr	r1, =Data_310a4
	bl	Func_40d0
	ldr	r3, .L247c8	@ 0x3ff
	ldr	r1, [sp, #4]
	and	r0, r3
	ldr	r2, .L247cc	@ 0xfffffc00
	ldrh	r3, [r1, #8]
	ldr	r6, =iwram_1e40
	and	r3, r2
	orr	r3, r0
	mov	r2, r1
	strh	r3, [r2, #8]
	ldr	r2, [r6]
	mov	r5, #4
	ldr	r3, [sp, #0x10]
	and	r2, r5
	ldr	r1, =0xfffa
	lsr	r2, #1
	add	r2, r3, r2
	add	r2, r1
	ldr	r3, .L247d0	@ 0x1ff
	ldr	r1, [sp, #4]
	and	r2, r3
	ldrh	r3, [r1, #6]
	ldr	r1, .L247d4	@ 0xfffffe00
	and	r3, r1
	orr	r3, r2
	b	.L247e4

	.align	2, 0
.L247c8:
	.word	0x3ff
.L247cc:
	.word	0xfffffc00
.L247d0:
	.word	0x1ff
.L247d4:
	.word	0xfffffe00
	.pool

.L247e4:
	ldr	r2, [sp, #4]
	strh	r3, [r2, #6]
	ldr	r3, [r6]
	ldr	r1, [sp, #0x14]
	and	r3, r5
	lsr	r3, #2
	sub	r3, r1, r3
	add	r3, #0xf8
	strb	r3, [r2, #4]
	ldr	r2, [sp, #0x34]
	cmp	r2, #0
	beq	.L24804
	ldr	r0, [sp, #4]
	mov	r1, #0xf2
	bl	Func_3dec
.L24804:
	ldr	r3, =iwram_1e90
	ldr	r3, [r3]
	ldrh	r2, [r3, #0xc]
	ldr	r6, [r6]
	ldr	r7, [r3]
	mov	r3, #2
	and	r3, r2
	and	r6, r5
	cmp	r3, #0
	beq	.L24858
	mov	r5, #0
.L2481a:
	neg	r3, r6
	orr	r3, r6
	lsr	r3, #31
	mov	r2, r3
	mov	r3, #0xf
	sub	r2, r3, r2
	ldr	r1, [sp, #0x28]
	mov	r3, #1
	lsl	r3, r5
	and	r3, r1
	cmp	r3, #0
	bne	.L24834
	mov	r2, #0xf
.L24834:
	ldr	r3, =.L373e7
	ldrh	r0, [r7, #0xc]
	ldrb	r3, [r3, r5]
	add	r0, r3
	ldr	r3, =.L373eb
	ldrh	r1, [r7, #0xe]
	ldrb	r3, [r3, r5]
	add	r1, r3
	str	r2, [sp]
	add	r0, #1
	add	r1, #1
	mov	r2, #2
	mov	r3, #2
	add	r5, #1
	bl	Func_22768
	cmp	r5, #3
	ble	.L2481a
.L24858:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L2487e
	ldr	r5, =.L37308
	mov	r2, #0x20
	mov	r1, r5
	ldr	r6, =Func_1af8
	ldr	r0, =0x6006500
	bl	_call_via_r6
	ldr	r0, =0x6006520
	mov	r1, r5
	mov	r2, #0x20
	bl	_call_via_r6
	b	.L24896
.L2487e:
	ldr	r3, =Func_8d8
	mov	r1, #0x20
	ldr	r2, =0x44444444
	ldr	r0, =0x6006500
	bl	_call_via_r3
	ldr	r3, =Func_1af8
	ldr	r0, =0x6006520
	ldr	r1, =.L37308
	mov	r2, #0x20
	bl	_call_via_r3
.L24896:
	mov	r0, #1
	bl	Func_30f8
	bl	.L23ff4
.L248a0:
	ldr	r3, =iwram_1e90
	ldr	r1, [r3]
	ldrh	r2, [r1, #0xc]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L248c4
	ldr	r3, [r1]
	ldrh	r0, [r3, #0xc]
	ldrh	r1, [r3, #0xe]
	mov	r3, #0xf
	str	r3, [sp]
	add	r0, #1
	add	r1, #1
	mov	r2, #4
	mov	r3, #4
	bl	Func_22768
.L248c4:
	ldr	r0, [sp, #0x3c]
	bl	Func_3f3c
	mov	r1, #1
	ldr	r0, [sp, #0x2c]
	bl	Func_16418
	mov	r1, #1
	ldr	r0, [sp, #0x44]
	bl	Func_16418
	mov	r1, #1
	mov	r0, r9
	bl	Func_16418
	bl	Func_1e318
	mov	r0, #0
	bl	Func_1e3c8
	ldr	r0, [sp, #0x38]
	bl	Func_2df0
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r6
	add	sp, #0xe0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_23e70

.thumb_func_start Func_24934
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x174
	str	r2, [sp, #0x54]
	ldr	r5, =iwram_1e8c
	ldr	r0, [r5]
	mov	r1, #1
	str	r0, [sp, #0x48]
	neg	r1, r1
	mov	r0, #0x80
	str	r1, [sp, #0x44]
	mov	r9, r1
	bl	Func_40b4
	lsl	r0, #16
	asr	r0, #16
	mov	r3, #0x2a
	str	r0, [sp, #0x40]
	str	r3, [sp]
	mov	r1, #4
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	bl	Func_162d4
	mov	r6, #6
	str	r0, [sp, #0x3c]
	mov	r1, #8
	mov	r2, #0xa
	mov	r3, #3
	mov	r0, #0x14
	str	r6, [sp]
	bl	Func_162d4
	mov	r2, #0
	str	r0, [sp, #0x38]
	str	r2, [sp, #0x34]
	add	r5, #0xa8
	ldr	r3, [r5]
	ldr	r0, [r3, #0x34]
	ldr	r1, [r3, #0x30]
	ldr	r3, [r3, #0x38]
	mov	r11, r0
	mov	r10, r1
	str	r3, [sp, #0x30]
	str	r6, [sp]
	mov	r2, #0x11
	mov	r3, #9
	mov	r0, #0xd
	mov	r1, #0xb
	bl	Func_162d4
	mov	r2, #0x9c
	lsl	r2, #1
	add	r2, sp
	ldr	r3, =0xfffffe00
	mov	r7, #0x80
	str	r0, [sp, #0x4c]
	str	r2, [sp, #0x1c]
	mov	r4, #0
	mov	r12, r3
	mov	r5, r2
	lsl	r7, #23
	mov	r6, #0
.L249be:
	lsl	r0, r4, #1
	str	r7, [r5, #4]
	str	r6, [r5, #8]
	ldr	r1, [sp, #0x4c]
	ldrh	r2, [r1, #0xc]
	ldr	r3, .L249fc	@ 0x1ff
	lsl	r2, #3
	ldrh	r1, [r5, #6]
	add	r2, #8
	and	r2, r3
	mov	r3, r12
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	ldr	r2, [sp, #0x4c]
	ldrh	r3, [r2, #0xe]
	add	r0, r3
	lsl	r0, #3
	add	r0, #4
	add	r4, #1
	strb	r0, [r5, #4]
	add	r5, #0xc
	cmp	r4, #3
	ble	.L249be
	ldr	r3, =0xfffffc00
	ldr	r7, [sp, #0x1c]
	mov	r5, #8
	add	r6, sp, #0x60
	mov	r8, r3
	mov	r4, #3
	b	.L24a0c

	.align	2, 0
.L249fc:
	.word	0x1ff
	.pool

.L24a0c:
	mov	r0, #0x80
	str	r4, [sp, #4]
	bl	Func_40b4
	mov	r1, #1
	neg	r1, r1
	stmia	r6!, {r0}
	bl	Func_40d0
	ldr	r3, =0x3ff
	and	r0, r3
	ldrh	r3, [r5, r7]
	mov	r1, r8
	ldr	r4, [sp, #4]
	and	r3, r1
	orr	r3, r0
	sub	r4, #1
	strh	r3, [r5, r7]
	add	r5, #0xc
	cmp	r4, #0
	bge	.L24a0c
	b	.L24a3c

	.pool_aligned

.L24a3c:
	mov	r2, #0x8a
	lsl	r2, #1
	add	r2, sp
	mov	r8, r2
	mov	r0, r8
	bl	_Func_7977c
	str	r0, [sp, #0x50]
	mov	r7, #0
	mov	r3, r0
	sub	r3, #1
	str	r3, [sp, #0x14]
	cmp	r3, #0
	blt	.L24aa0
	mov	r0, sp
	add	r0, #0xf0
	mov	r5, r3
	str	r0, [sp, #0x20]
	add	r5, r8
.L24a62:
	ldrb	r6, [r5]
	mov	r0, r6
	bl	_Func_797d4
	ldr	r1, [sp, #0x54]
	add	r0, #4
	ldrb	r2, [r0]
	ldrb	r3, [r1]
	mov	r4, #0
	cmp	r2, r3
	bhi	.L24a8a
.L24a78:
	add	r4, #1
	cmp	r4, #3
	bgt	.L24a8a
	add	r0, #1
	add	r1, #1
	ldrb	r2, [r0]
	ldrb	r3, [r1]
	cmp	r2, r3
	bls	.L24a78
.L24a8a:
	cmp	r4, #4
	bne	.L24a98
	ldr	r2, [sp, #0x20]
	mov	r3, #0x20
	strb	r6, [r2, r7]
	strb	r3, [r5]
	add	r7, #1
.L24a98:
	sub	r5, #1
	cmp	r5, r8
	bge	.L24a62
	b	.L24aa6
.L24aa0:
	mov	r3, sp
	add	r3, #0xf0
	str	r3, [sp, #0x20]
.L24aa6:
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	ble	.L24ac8
	ldr	r2, [sp, #0x20]
	add	r1, r7, r2
	ldr	r2, [sp, #0x50]
	mov	r0, r8
.L24ab4:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0x20
	beq	.L24ac2
	strb	r3, [r1]
	add	r7, #1
	add	r1, #1
.L24ac2:
	sub	r2, #1
	cmp	r2, #0
	bne	.L24ab4
.L24ac8:
	ldr	r0, [sp, #0x20]
	mov	r3, #0x20
	strb	r3, [r0, r7]
	mov	r1, #0xb4
	ldr	r3, [sp, #0x40]
	lsl	r1, #1
	mov	r2, r10
	add	r1, sp
	lsl	r2, #1
	lsl	r3, #16
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x10]
	str	r3, [sp, #0xc]
.L24ae2:
	cmp	r11, r9
	bne	.L24aee
	ldr	r0, [sp, #0x44]
	cmp	r10, r0
	bne	.L24aee
	b	.L24d90
.L24aee:
	ldr	r1, [sp, #0x48]
	ldr	r2, =0xea6
	mov	r0, #1
	add	r3, r1, r2
	strb	r0, [r3]
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x44]
	ldrh	r0, [r1, #0xc]
	ldrh	r1, [r1, #0xe]
	lsl	r3, r2, #1
	add	r1, r3
	ldr	r3, [sp, #0x4c]
	ldrh	r2, [r3, #8]
	mov	r3, #0xf
	str	r3, [sp]
	sub	r2, #2
	add	r1, #1
	mov	r3, #1
	add	r0, #1
	bl	Func_22768
	bl	Func_16738
	mov	r3, r11
	ldr	r1, [sp, #0x20]
	add	r3, r10
	ldrb	r0, [r1, r3]
	bl	_Func_797d4
	mov	r6, r0
	ldrh	r0, [r6]
	ldr	r3, =0x53a
	add	r5, sp, #0x70
	add	r0, r3
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_1965c
	mov	r2, #0
	ldr	r1, [sp, #0x3c]
	mov	r3, #4
	mov	r0, r5
	bl	Func_17aa4
	mov	r3, #0
	mov	r2, r10
	str	r3, [sp, #0x34]
	str	r2, [sp, #0x44]
	mov	r1, #1
	mov	r2, #0
	add	r6, #4
.L24b54:
	ldrb	r3, [r6]
	add	r6, #1
	cmp	r3, #0
	beq	.L24b66
	ldr	r0, [sp, #0x34]
	mov	r3, r1
	lsl	r3, r2
	orr	r0, r3
	str	r0, [sp, #0x34]
.L24b66:
	add	r2, #1
	cmp	r2, #3
	ble	.L24b54
	cmp	r11, r9
	bne	.L24b72
	b	.L24d06
.L24b72:
	ldr	r0, [sp, #0x4c]
	bl	Func_16498
	mov	r5, #0
	mov	r7, #0
	mov	r6, #1
.L24b7e:
	ldr	r2, =0x5001
	ldr	r0, [sp, #0x38]
	add	r1, r5, r2
	mov	r3, #0
	lsl	r2, r5, #1
	str	r7, [sp]
	bl	Func_19000
	ldr	r3, [sp, #0x54]
	ldrb	r1, [r3, r5]
	mov	r2, r6
	add	r1, #0x30
	ldr	r0, [sp, #0x38]
	mov	r3, #0
	add	r5, #1
	str	r7, [sp]
	add	r6, #2
	bl	Func_18efc
	cmp	r5, #3
	ble	.L24b7e
	ldr	r0, [sp, #0x20]
	mov	r1, r11
	ldrb	r6, [r0, r1]
	mov	r4, #0
	cmp	r6, #0x20
	bne	.L24bb6
	b	.L24ce8
.L24bb6:
	mov	r2, sp
	add	r2, #0x58
	str	r2, [sp, #8]
.L24bbc:
	mov	r0, r6
	str	r4, [sp, #4]
	bl	_Func_797d4
	str	r0, [sp, #0x24]
	mov	r1, r0
	ldr	r0, [sp, #0x54]
	add	r1, #4
	ldrb	r2, [r1]
	ldrb	r3, [r0]
	mov	r7, #0
	ldr	r4, [sp, #4]
	cmp	r2, r3
	bhi	.L24bea
.L24bd8:
	add	r7, #1
	cmp	r7, #3
	bgt	.L24bea
	add	r1, #1
	add	r0, #1
	ldrb	r2, [r1]
	ldrb	r3, [r0]
	cmp	r2, r3
	bls	.L24bd8
.L24bea:
	mov	r3, #4
	eor	r3, r7
	ldr	r2, [sp, #0x24]
	neg	r5, r3
	orr	r5, r3
	ldr	r0, .L24c28	@ 0x3fff
	ldrh	r3, [r2]
	mov	r1, #1
	and	r0, r3
	add	r2, sp, #0x60
	lsl	r3, r4, #2
	lsr	r5, #31
	add	r2, r3
	str	r1, [sp]
	ldr	r3, [sp, #8]
	sub	r5, r1, r5
	mov	r1, #0
	str	r4, [sp, #4]
	bl	Func_1a3d0
	ldr	r4, [sp, #4]
	lsl	r3, r4, #1
	add	r1, r3, r4
	ldr	r2, [sp, #0x1c]
	mov	r8, r3
	lsl	r1, #2
	ldr	r3, .L24c2c	@ 0x3ff
	ldr	r0, [sp, #0x58]
	add	r1, #8
	and	r0, r3
	b	.L24c3c

	.align	2, 0
.L24c28:
	.word	0x3fff
.L24c2c:
	.word	0x3ff
	.pool

.L24c3c:
	ldrh	r3, [r2, r1]
	ldr	r2, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	ldr	r0, [sp, #0x1c]
	strh	r3, [r0, r1]
	cmp	r5, #0
	bne	.L24c54
	mov	r0, #2
	bl	Func_1e71c
	ldr	r4, [sp, #4]
.L24c54:
	mov	r0, r6
	str	r4, [sp, #4]
	bl	_Func_797d4
	ldr	r3, =0x333
	ldr	r4, [sp, #4]
	ldrh	r0, [r0]
	ldr	r1, [sp, #0x4c]
	add	r0, r3
	mov	r2, #0x10
	lsl	r3, r4, #4
	bl	Func_1e7c0
	mov	r1, #0
	ldr	r6, [sp, #0x24]
	lsl	r3, r1, #1
	b	.L24c80

	.pool_aligned

.L24c80:
	mov	r5, r3
	ldr	r4, [sp, #4]
	mov	r7, #0
	mov	r9, r1
	add	r6, #4
	add	r5, #0xd
.L24c8c:
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.L24cbc
	ldr	r2, =0x5001
	mov	r3, r9
	add	r1, r7, r2
	str	r3, [sp]
	ldr	r0, [sp, #0x4c]
	mov	r2, r5
	mov	r3, r8
	str	r4, [sp, #4]
	bl	Func_19000
	ldrb	r1, [r6]
	mov	r0, r9
	add	r2, r5, #1
	str	r0, [sp]
	add	r1, #0x30
	ldr	r0, [sp, #0x4c]
	mov	r3, r8
	bl	Func_18efc
	ldr	r4, [sp, #4]
	add	r5, #2
.L24cbc:
	add	r7, #1
	add	r6, #1
	cmp	r7, #3
	ble	.L24c8c
	mov	r0, #0xf
	str	r4, [sp, #4]
	bl	Func_1e71c
	ldr	r4, [sp, #4]
	add	r3, sp, #0x5c
	mov	r1, #1
	strb	r1, [r3, r4]
	add	r4, #1
	cmp	r4, #3
	bgt	.L24d04
	mov	r2, r11
	ldr	r0, [sp, #0x20]
	add	r3, r2, r4
	ldrb	r6, [r0, r3]
	cmp	r6, #0x20
	beq	.L24ce8
	b	.L24bbc
.L24ce8:
	cmp	r4, #3
	bgt	.L24d04
	add	r2, sp, #0x174
	ldr	r0, =0xfffffee8
	add	r3, r4, r2
	add	r2, r3, r0
	mov	r3, #4
	mov	r1, #0
	sub	r4, r3, r4
.L24cfa:
	sub	r4, #1
	strb	r1, [r2]
	add	r2, #1
	cmp	r4, #0
	bne	.L24cfa
.L24d04:
	mov	r9, r11
.L24d06:
	ldr	r1, [sp, #0x50]
	cmp	r1, #4
	ble	.L24d60
	mov	r4, #0
	mov	r5, r1
	add	r5, #3
	b	.L24d50

	.pool_aligned

.L24d1c:
	ldr	r2, =0xf301
	mov	r3, r11
	add	r1, r4, r2
	cmp	r3, #0
	bge	.L24d28
	add	r3, #3
.L24d28:
	asr	r3, #2
	cmp	r4, r3
	bne	.L24d32
	ldr	r3, =0xf30b
	add	r1, r4, r3
.L24d32:
	ldr	r3, [sp, #0x4c]
	ldrh	r2, [r3, #8]
	sub	r2, r0
	mov	r0, #0
	add	r2, r4
	str	r0, [sp]
	mov	r0, r3
	mov	r3, #1
	sub	r2, #2
	neg	r3, r3
	str	r4, [sp, #4]
	bl	Func_19000
	ldr	r4, [sp, #4]
	add	r4, #1
.L24d50:
	mov	r3, r5
	cmp	r5, #0
	bge	.L24d5a
	ldr	r3, [sp, #0x50]
	add	r3, #6
.L24d5a:
	asr	r0, r3, #2
	cmp	r4, r0
	blt	.L24d1c
.L24d60:
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x10]
	ldrh	r0, [r1, #0xc]
	ldr	r3, [sp, #0x4c]
	ldrh	r1, [r1, #0xe]
	add	r1, r2
	ldrh	r2, [r3, #8]
	mov	r3, #0xe
	add	r0, #1
	add	r1, #1
	sub	r2, #2
	str	r3, [sp]
	mov	r3, #1
	bl	Func_22768
	ldr	r1, =0xea3
	ldr	r0, [sp, #0x48]
	mov	r2, #1
	add	r3, r0, r1
	add	r1, #3
	strb	r2, [r3]
	add	r3, r0, r1
	mov	r2, #0
	strb	r2, [r3]
.L24d90:
	ldr	r6, [sp, #0x1c]
	mov	r4, #0
	add	r5, sp, #0x5c
.L24d96:
	ldrb	r3, [r5]
	add	r5, #1
	cmp	r3, #0
	beq	.L24daa
	mov	r0, r6
	mov	r1, #0xf0
	str	r4, [sp, #4]
	bl	Func_3dec
	ldr	r4, [sp, #4]
.L24daa:
	add	r4, #1
	add	r6, #0xc
	cmp	r4, #3
	ble	.L24d96
	ldr	r0, [sp, #0x4c]
	ldrh	r3, [r0, #0xc]
	lsl	r3, #3
	sub	r3, #2
	ldr	r1, [sp, #0x10]
	str	r3, [sp, #0x28]
	ldrh	r3, [r0, #0xe]
	add	r3, r1, r3
	lsl	r3, #3
	add	r3, #0x14
	ldr	r2, [sp, #0x18]
	str	r3, [sp, #0x2c]
	mov	r3, #0x80
	lsl	r3, #23
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r1, [sp, #0xc]
	lsr	r0, r1, #16
	ldr	r1, =Data_310a4
	bl	Func_40d0
	ldr	r3, .L24e10	@ 0x3ff
	ldr	r2, [sp, #0x18]
	and	r0, r3
	ldrh	r3, [r2, #8]
	ldr	r2, .L24e14	@ 0xfffffc00
	ldr	r1, =iwram_1e40
	and	r3, r2
	orr	r3, r0
	ldr	r0, [sp, #0x18]
	ldr	r2, [r1]
	strh	r3, [r0, #8]
	mov	r0, #4
	ldr	r3, [sp, #0x28]
	and	r2, r0
	ldr	r1, =0xfffc
	lsr	r2, #1
	add	r2, r3, r2
	add	r2, r1
	ldr	r3, .L24e18	@ 0x1ff
	ldr	r1, [sp, #0x18]
	and	r2, r3
	ldrh	r3, [r1, #6]
	ldr	r1, .L24e1c	@ 0xfffffe00
	and	r3, r1
	b	.L24e38

	.align	2, 0
.L24e10:
	.word	0x3ff
.L24e14:
	.word	0xfffffc00
.L24e18:
	.word	0x1ff
.L24e1c:
	.word	0xfffffe00
	.pool

.L24e38:
	orr	r3, r2
	ldr	r1, =iwram_1e40
	ldr	r2, [sp, #0x18]
	strh	r3, [r2, #6]
	ldr	r3, [r1]
	ldr	r2, [sp, #0x2c]
	and	r3, r0
	lsr	r3, #2
	ldr	r0, [sp, #0x18]
	sub	r3, r2, r3
	add	r3, #0xf8
	strb	r3, [r0, #4]
	mov	r1, #0xf2
	ldr	r0, [sp, #0x18]
	bl	Func_3dec
	ldr	r1, =iwram_1e40
	ldr	r6, [r1]
	mov	r3, #8
	and	r6, r3
	mov	r5, #0
.L24e62:
	neg	r3, r6
	orr	r3, r6
	lsr	r3, #31
	mov	r2, r3
	mov	r3, #0xf
	sub	r2, r3, r2
	ldr	r0, [sp, #0x34]
	mov	r3, #1
	lsl	r3, r5
	and	r3, r0
	cmp	r3, #0
	bne	.L24e7c
	mov	r2, #0xf
.L24e7c:
	ldr	r1, [sp, #0x38]
	ldrh	r0, [r1, #0xc]
	lsl	r3, r5, #1
	ldrh	r1, [r1, #0xe]
	add	r0, r3
	str	r2, [sp]
	add	r0, #1
	add	r1, #1
	mov	r2, #2
	mov	r3, #1
	add	r5, #1
	bl	Func_22768
	cmp	r5, #3
	ble	.L24e62
	ldr	r2, [sp, #0x50]
	cmp	r2, #4
	ble	.L24f48
	mov	r4, #0
	mov	r5, r2
	add	r5, #3
	b	.L24ef2
.L24ea8:
	ldr	r3, =0xf301
	ldr	r0, =iwram_1e40
	add	r1, r4, r3
	ldr	r3, [r0]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L24eca
	mov	r3, r11
	cmp	r3, #0
	bge	.L24ec0
	add	r3, #3
.L24ec0:
	asr	r3, #2
	cmp	r4, r3
	bne	.L24eca
	ldr	r2, =0xf30b
	add	r1, r4, r2
.L24eca:
	ldr	r0, [sp, #0x4c]
	mov	r2, r5
	ldrh	r3, [r0, #8]
	cmp	r5, #0
	bge	.L24ed8
	ldr	r2, [sp, #0x50]
	add	r2, #6
.L24ed8:
	asr	r2, #2
	sub	r2, r3, r2
	add	r2, r4
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	ldr	r0, [sp, #0x4c]
	sub	r3, #1
	str	r4, [sp, #4]
	bl	Func_19000
	ldr	r4, [sp, #4]
	add	r4, #1
.L24ef2:
	mov	r3, r5
	cmp	r5, #0
	bge	.L24efc
	ldr	r3, [sp, #0x50]
	add	r3, #6
.L24efc:
	asr	r2, r3, #2
	cmp	r4, r2
	blt	.L24ea8
	ldr	r0, [sp, #0x4c]
	ldrh	r3, [r0, #8]
	mov	r5, #1
	neg	r5, r5
	sub	r2, r3, r2
	mov	r1, #0
	str	r1, [sp]
	ldr	r0, [sp, #0x4c]
	mov	r3, r5
	sub	r2, #3
	ldr	r1, =0xf334
	bl	Func_19000
	ldr	r3, [sp, #0x4c]
	ldrh	r2, [r3, #8]
	mov	r0, #0
	str	r0, [sp]
	sub	r2, #2
	mov	r0, r3
	ldr	r1, =0xf335
	mov	r3, r5
	bl	Func_19000
	ldr	r2, [sp, #0x48]
	ldr	r3, =0xea3
	ldr	r0, [sp, #0x4c]
	add	r1, r2, r3
	ldrh	r3, [r0, #0xe]
	sub	r3, #1
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.L24f48:
	ldr	r3, =iwram_1f34
	ldr	r2, [r3]
	mov	r1, r11
	mov	r3, r10
	str	r1, [r2, #0x34]
	str	r3, [r2, #0x30]
	ldr	r0, [sp, #0x30]
	str	r0, [r2, #0x38]
	ldr	r3, =iwram_1c94
	ldr	r1, [r3]
	ldr	r3, =iwram_1b04
	ldr	r0, [r3]
	mov	r3, r2
	add	r3, #0xd8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24f84
	add	r2, #0xdc
	ldr	r3, [r2]
	mov	r0, #0
	mov	r1, #0
	cmp	r3, #0
	bne	.L24f80
	mov	r3, #0x78
	str	r3, [r2]
	mov	r0, #1
	mov	r1, #1
	b	.L24f84
.L24f80:
	sub	r3, #1
	str	r3, [r2]
.L24f84:
	mov	r3, r1
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L24f98
	mov	r3, r11
	ldr	r0, [sp, #0x20]
	add	r3, r10
	ldrb	r6, [r0, r3]
	b	.L25106
.L24f98:
	ldr	r3, =iwram_1f34
	ldr	r3, [r3]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	beq	.L24faa
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	beq	.L24fb6
.L24faa:
	mov	r0, #0x71
	mov	r6, #1
	bl	_Func_f9080
	neg	r6, r6
	b	.L25106
.L24fb6:
	mov	r3, #0x80
	and	r3, r0
	cmp	r3, #0
	beq	.L24fe6
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #4
	beq	.L24fd8
	mov	r3, r11
	ldr	r0, [sp, #0x50]
	add	r3, r10
	cmp	r3, r0
	bne	.L24fdc
.L24fd8:
	mov	r1, #0
	mov	r10, r1
.L24fdc:
	mov	r3, r10
	mov	r2, r10
	lsl	r3, #1
	str	r2, [sp, #0x30]
	b	.L250fc
.L24fe6:
	mov	r3, #0x40
	and	r3, r0
	cmp	r3, #0
	beq	.L2502c
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #1
	neg	r0, r0
	add	r10, r0
	mov	r1, r10
	cmp	r1, #0
	bge	.L25022
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	bge	.L2500a
	ldr	r3, [sp, #0x50]
	add	r3, #2
.L2500a:
	asr	r3, #2
	lsl	r3, #2
	cmp	r11, r3
	bne	.L2501e
	ldr	r2, [sp, #0x50]
	mov	r0, r11
	sub	r3, r2, r0
	sub	r3, #1
	mov	r10, r3
	b	.L25022
.L2501e:
	mov	r1, #3
	mov	r10, r1
.L25022:
	mov	r3, r10
	mov	r2, r10
	lsl	r3, #1
	str	r2, [sp, #0x30]
	b	.L250fc
.L2502c:
	mov	r3, #0x10
	and	r3, r0
	cmp	r3, #0
	beq	.L2508a
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r3, r11
	ldr	r0, [sp, #0x50]
	add	r3, #4
	cmp	r3, r0
	blt	.L2505e
	mov	r1, r11
	cmp	r1, #0
	beq	.L250fe
	ldr	r3, [sp, #0x30]
	mov	r10, r3
	mov	r0, r10
	mov	r2, #0
	lsl	r0, #1
	mov	r11, r2
	str	r0, [sp, #0x10]
	b	.L250fe
.L2505e:
	mov	r11, r3
	ldr	r1, [sp, #0x30]
	ldr	r3, [sp, #0x14]
	mov	r10, r1
	cmp	r3, #0
	bge	.L2506e
	ldr	r3, [sp, #0x50]
	add	r3, #2
.L2506e:
	asr	r3, #2
	lsl	r3, #2
	cmp	r11, r3
	bne	.L250e0
	ldr	r2, [sp, #0x50]
	mov	r0, r11
	sub	r3, r2, r0
	sub	r3, #1
	ldr	r1, [sp, #0x30]
	mov	r10, r3
	cmp	r10, r1
	ble	.L250e8
	mov	r10, r1
	b	.L250f0
.L2508a:
	mov	r3, #0x20
	and	r3, r0
	cmp	r3, #0
	beq	.L250fe
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r3, r11
	cmp	r3, #0
	beq	.L250b4
	ldr	r1, [sp, #0x30]
	mov	r10, r1
	mov	r0, #4
	mov	r2, r10
	neg	r0, r0
	lsl	r2, #1
	add	r11, r0
	str	r2, [sp, #0x10]
	b	.L250fe
.L250b4:
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	bge	.L250be
	ldr	r3, [sp, #0x50]
	add	r3, #2
.L250be:
	asr	r3, #2
	lsl	r3, #2
	mov	r11, r3
	ldr	r3, [sp, #0x30]
	mov	r0, r11
	mov	r10, r3
	cmp	r0, #0
	beq	.L250f0
	ldr	r1, [sp, #0x50]
	sub	r3, r1, r0
	sub	r3, #1
	ldr	r2, [sp, #0x30]
	mov	r10, r3
	cmp	r10, r2
	ble	.L250f8
	mov	r10, r2
	b	.L250f8
.L250e0:
	mov	r0, r10
	lsl	r0, #1
	str	r0, [sp, #0x10]
	b	.L250fe
.L250e8:
	mov	r1, r10
	lsl	r1, #1
	str	r1, [sp, #0x10]
	b	.L250fe
.L250f0:
	mov	r2, r10
	lsl	r2, #1
	str	r2, [sp, #0x10]
	b	.L250fe
.L250f8:
	mov	r3, r10
	lsl	r3, #1
.L250fc:
	str	r3, [sp, #0x10]
.L250fe:
	mov	r0, #1
	bl	Func_30f8
	b	.L24ae2
.L25106:
	mov	r0, #1
	bl	Func_30f8
	mov	r4, #3
	add	r5, sp, #0x60
.L25110:
	ldmia	r5!, {r0}
	str	r4, [sp, #4]
	bl	Func_3f3c
	ldr	r4, [sp, #4]
	sub	r4, #1
	cmp	r4, #0
	bge	.L25110
	ldr	r1, [sp, #0xc]
	lsr	r0, r1, #16
	bl	Func_3f3c
	mov	r1, #1
	ldr	r0, [sp, #0x38]
	bl	Func_16418
	mov	r1, #1
	ldr	r0, [sp, #0x3c]
	bl	Func_16418
	mov	r1, #1
	ldr	r0, [sp, #0x4c]
	bl	Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r6
	add	sp, #0x174
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_24934

.thumb_func_start Func_25180
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r0
	mov	r0, #1
	cmp	r6, #0
	beq	.L251cc
	mov	r0, r6
	bl	_Func_78414
	mov	r5, r0
	ldrb	r3, [r5, #0xc]
	mov	r0, #1
	cmp	r3, #3
	beq	.L251cc
	ldrh	r3, [r5, #0x28]
	cmp	r3, #0
	beq	.L251cc
	ldrb	r3, [r5, #2]
	cmp	r3, #0
	beq	.L251b8
	mov	r0, r7
	mov	r1, r6
	bl	_Func_7842c
	cmp	r0, #0
	bne	.L251b8
	mov	r0, #1
	b	.L251cc
.L251b8:
	ldrh	r0, [r5, #0x28]
	bl	_Func_78b9c
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	mov	r0, #2
	cmp	r3, #0
	beq	.L251cc
	mov	r0, #0
.L251cc:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_25180

.thumb_func_start Func_251d4
	mov	r3, r0
	ldr	r0, =0x3ff
	mov	r2, #0xc0
	and	r1, r0
	and	r0, r3
	lsl	r2, #19
	lsl	r0, #5
	lsl	r1, #5
	add	r0, r2
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_251d4

.thumb_func_start Func_25200
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x130
	str	r0, [sp, #0x50]
	str	r2, [sp, #0x48]
	str	r1, [sp, #0x4c]
	ldr	r5, =iwram_1e8c
	mov	r2, #1
	ldr	r1, [r5]
	neg	r2, r2
	mov	r0, #0x80
	str	r1, [sp, #0x44]
	str	r2, [sp, #0x40]
	str	r2, [sp, #0x3c]
	bl	Func_40b4
	mov	r3, #0x2a
	str	r0, [sp, #0x38]
	str	r3, [sp]
	mov	r1, #5
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	bl	Func_162d4
	mov	r3, #0
	str	r0, [sp, #0x34]
	str	r3, [sp, #0x30]
	add	r5, #0xa8
	ldr	r3, [r5]
	ldr	r1, [r3, #0x34]
	ldr	r2, [r3, #0x30]
	ldr	r3, [r3, #0x38]
	mov	r9, r1
	mov	r8, r2
	str	r3, [sp, #0x2c]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #9
	mov	r3, #0xb
	mov	r0, #0xf
	mov	r2, #0xf
	bl	Func_162d4
	mov	r3, sp
	add	r3, #0x54
	ldr	r1, =0xfffffe00
	mov	r6, #0x80
	str	r3, [sp, #0x10]
	mov	r11, r0
	mov	r7, #0
	mov	r12, r1
	mov	r4, r3
	lsl	r6, #23
	mov	r5, #0
.L25278:
	lsl	r0, r7, #1
	str	r6, [r4, #4]
	str	r5, [r4, #8]
	mov	r3, r11
	ldrh	r2, [r3, #0xc]
	ldr	r3, .L252b8	@ 0x1ff
	lsl	r2, #3
	ldrh	r1, [r4, #6]
	add	r2, #8
	and	r2, r3
	mov	r3, r12
	and	r3, r1
	orr	r3, r2
	mov	r1, r11
	strh	r3, [r4, #6]
	ldrh	r3, [r1, #0xe]
	add	r0, r3
	lsl	r0, #3
	add	r0, #4
	add	r7, #1
	strb	r0, [r4, #4]
	add	r4, #0xc
	cmp	r7, #4
	ble	.L25278
	mov	r2, sp
	add	r2, #0x90
	ldr	r3, =0xfffffc00
	str	r2, [sp, #0x1c]
	ldr	r6, [sp, #0x10]
	str	r2, [sp, #8]
	mov	r5, #8
	b	.L252c8

	.align	2, 0
.L252b8:
	.word	0x1ff
	.pool

.L252c8:
	mov	r10, r3
	mov	r7, #4
.L252cc:
	mov	r0, #0x80
	bl	Func_40b4
	ldr	r2, [sp, #8]
	stmia	r2!, {r0}
	mov	r1, r2
	str	r1, [sp, #8]
	mov	r1, #1
	neg	r1, r1
	bl	Func_40d0
	ldr	r3, =0x3ff
	and	r0, r3
	ldrh	r3, [r5, r6]
	mov	r1, r10
	and	r3, r1
	orr	r3, r0
	sub	r7, #1
	strh	r3, [r5, r6]
	add	r5, #0xc
	cmp	r7, #0
	bge	.L252cc
	ldr	r5, =0xf018
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #2
	bl	Func_251d4
	mov	r0, r5
	ldr	r1, =0x201
	bl	Func_251d4
	add	r5, #1
	mov	r1, #0x84
	lsl	r1, #2
	mov	r0, r5
	b	.L25324

	.pool_aligned

.L25324:
	bl	Func_251d4
	ldr	r1, =0x211
	mov	r0, r5
	bl	Func_251d4
	mov	r2, #0x92
	lsl	r2, #1
	mov	r3, r8
	mov	r1, sp
	add	r2, sp
	lsl	r3, #1
	add	r1, #0xa4
	str	r2, [sp, #0x18]
	str	r3, [sp, #0x14]
	str	r1, [sp, #0x20]
.L25344:
	ldr	r2, [sp, #0x40]
	cmp	r9, r2
	bne	.L25352
	ldr	r3, [sp, #0x3c]
	cmp	r8, r3
	bne	.L25352
	b	.L2552c
.L25352:
	ldr	r1, [sp, #0x44]
	ldr	r3, =0xea6
	add	r2, r1, r3
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [sp, #0x3c]
	mov	r1, r11
	ldrh	r0, [r1, #0xc]
	ldrh	r1, [r1, #0xe]
	lsl	r3, r2, #1
	add	r1, r3
	mov	r3, r11
	ldrh	r2, [r3, #8]
	mov	r3, #0xf
	add	r1, #1
	str	r3, [sp]
	add	r0, #1
	sub	r2, #2
	mov	r3, #1
	bl	Func_22768
	bl	Func_16738
	ldr	r1, [sp, #0x48]
	cmp	r1, #0
	beq	.L253d0
	mov	r3, r9
	add	r3, r8
	ldr	r2, [sp, #0x4c]
	lsl	r3, #1
	add	r5, r3, r2
	ldrh	r1, [r5]
	ldr	r0, [sp, #0x50]
	bl	Func_25180
	cmp	r0, #2
	bne	.L253a4
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8ee
	mov	r1, r5
	b	.L253b2
.L253a4:
	ldrh	r3, [r5]
	ldr	r0, .L253bc	@ 0x1ff
	ldr	r5, [sp, #0x20]
	and	r0, r3
	ldr	r3, =0x75
	mov	r1, r5
	add	r0, r3
.L253b2:
	mov	r2, #0x34
	bl	Func_1965c
	b	.L253dc

	.align	2, 0
.L253bc:
	.word	0x1ff
	.pool

.L253d0:
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8e5
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_1965c
.L253dc:
	ldr	r1, [sp, #0x34]
	mov	r3, #4
	mov	r0, r5
	mov	r2, #0
	bl	Func_17aa4
	ldr	r1, [sp, #0x40]
	mov	r3, r8
	str	r3, [sp, #0x3c]
	cmp	r9, r1
	beq	.L254b2
	mov	r0, r11
	bl	Func_16498
	mov	r2, r9
	ldr	r1, [sp, #0x4c]
	lsl	r3, r2, #1
	add	r3, r1
	ldrh	r5, [r3]
	mov	r7, #0
	cmp	r5, #0
	beq	.L254ac
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x10]
	mov	r6, r3
	mov	r3, #8
	str	r3, [sp, #0xc]
	str	r1, [sp, #4]
	mov	r10, r2
.L25416:
	mov	r0, r5
	bl	_Func_78414
	mov	r0, #0xf
	bl	Func_1e71c
	mov	r1, r5
	ldr	r0, [sp, #0x50]
	bl	Func_25180
	cmp	r0, #0
	beq	.L2543c
	mov	r0, #4
	bl	Func_1e71c
	b	.L2544c

	.pool_aligned

.L2543c:
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r5
	cmp	r3, #0
	beq	.L2544c
	mov	r0, #2
	bl	Func_1e71c
.L2544c:
	ldr	r0, =0x1ff
	ldr	r3, =0x182
	and	r0, r5
	add	r0, r3
	mov	r1, r11
	lsl	r3, r7, #4
	mov	r2, #0x10
	bl	Func_1e7c0
	mov	r0, #0xf
	bl	Func_1e71c
	ldr	r3, [sp, #4]
	ldmia	r3!, {r1}
	mov	r0, r5
	mov	r2, r3
	str	r2, [sp, #4]
	bl	Func_21af0
	ldr	r3, .L2549c	@ 0x3ff
	ldr	r1, [sp, #0xc]
	mov	r2, r10
	and	r0, r3
	ldrh	r3, [r1, r2]
	ldr	r2, .L254a0	@ 0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r2, r10
	strh	r3, [r1, r2]
	add	r7, #1
	add	r1, #0xc
	str	r1, [sp, #0xc]
	cmp	r7, #4
	bgt	.L254ac
	add	r6, #2
	ldrh	r5, [r6]
	cmp	r5, #0
	bne	.L25416
	b	.L254ac

	.align	2, 0
.L2549c:
	.word	0x3ff
.L254a0:
	.word	0xfffffc00
	.pool

.L254ac:
	mov	r3, r9
	str	r7, [sp, #0x30]
	str	r3, [sp, #0x40]
.L254b2:
	ldr	r1, [sp, #0x48]
	cmp	r1, #5
	ble	.L254fc
	mov	r7, #0
	add	r1, #4
	mov	r10, r1
	b	.L254ee
.L254c0:
	ldr	r2, =0xf301
	mov	r0, r9
	mov	r1, #5
	add	r6, r7, r2
	bl	Func_af0_from_thumb
	cmp	r7, r0
	bne	.L254d4
	ldr	r3, =0xf30b
	add	r6, r7, r3
.L254d4:
	mov	r1, r11
	ldrh	r2, [r1, #8]
	sub	r2, r5
	add	r2, r7
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	mov	r0, r11
	mov	r1, r6
	sub	r3, #1
	bl	Func_19000
	add	r7, #1
.L254ee:
	mov	r0, r10
	mov	r1, #5
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r7, r5
	blt	.L254c0
.L254fc:
	mov	r1, r11
	ldrh	r0, [r1, #0xc]
	ldr	r2, [sp, #0x14]
	ldrh	r1, [r1, #0xe]
	mov	r3, r11
	add	r1, r2
	ldrh	r2, [r3, #8]
	mov	r3, #0xe
	add	r1, #1
	sub	r2, #2
	str	r3, [sp]
	add	r0, #1
	mov	r3, #1
	bl	Func_22768
	ldr	r3, =0xea3
	ldr	r1, [sp, #0x44]
	add	r2, r1, r3
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, =0xea6
	add	r3, r1, r2
	mov	r1, #0
	strb	r1, [r3]
.L2552c:
	ldr	r2, [sp, #0x48]
	cmp	r2, #5
	ble	.L255e4
	mov	r7, #0
	add	r2, #4
	mov	r10, r2
	b	.L25592

	.pool_aligned

.L2554c:
	ldr	r3, =0xf301
	ldr	r1, =iwram_1e40
	add	r6, r7, r3
	ldr	r3, [r1]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L2556c
	mov	r0, r9
	mov	r1, #5
	bl	Func_af0_from_thumb
	cmp	r7, r0
	bne	.L2556c
	ldr	r2, =0xf30b
	add	r6, r7, r2
.L2556c:
	mov	r3, r11
	mov	r1, #5
	mov	r0, r10
	ldrh	r5, [r3, #8]
	bl	Func_af0_from_thumb
	sub	r5, r0
	add	r5, r7
	mov	r1, #0
	sub	r5, #2
	mov	r3, #1
	str	r1, [sp]
	mov	r0, r11
	mov	r1, r6
	mov	r2, r5
	neg	r3, r3
	bl	Func_19000
	add	r7, #1
.L25592:
	mov	r0, r10
	mov	r1, #5
	bl	Func_af0_from_thumb
	cmp	r7, r0
	blt	.L2554c
	mov	r3, r11
	ldrh	r2, [r3, #8]
	mov	r5, #1
	neg	r5, r5
	sub	r2, r0
	mov	r1, #0
	str	r1, [sp]
	mov	r0, r11
	mov	r3, r5
	sub	r2, #3
	ldr	r1, =0xf334
	bl	Func_19000
	mov	r3, r11
	ldrh	r2, [r3, #8]
	mov	r1, #0
	str	r1, [sp]
	sub	r2, #2
	mov	r0, r11
	ldr	r1, =0xf335
	mov	r3, r5
	bl	Func_19000
	ldr	r2, [sp, #0x44]
	ldr	r3, =0xea3
	add	r1, r2, r3
	mov	r2, r11
	ldrh	r3, [r2, #0xe]
	sub	r3, #1
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.L255e4:
	ldr	r3, [sp, #0x30]
	cmp	r3, #0
	ble	.L255fe
	ldr	r5, [sp, #0x10]
	mov	r7, r3
.L255ee:
	mov	r0, r5
	mov	r1, #0xf0
	sub	r7, #1
	bl	Func_3dec
	add	r5, #0xc
	cmp	r7, #0
	bne	.L255ee
.L255fe:
	mov	r1, r11
	ldrh	r3, [r1, #0xc]
	lsl	r3, #3
	sub	r3, #2
	ldr	r2, [sp, #0x14]
	str	r3, [sp, #0x24]
	ldrh	r3, [r1, #0xe]
	add	r3, r2, r3
	lsl	r3, #3
	add	r3, #0x14
	ldr	r1, [sp, #0x18]
	str	r3, [sp, #0x28]
	mov	r3, #0x80
	lsl	r3, #23
	mov	r2, #0
	str	r3, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [sp, #0x38]
	ldr	r1, =Data_310a4
	bl	Func_40d0
	ldr	r3, .L2565c	@ 0x3ff
	ldr	r1, [sp, #0x18]
	and	r0, r3
	ldr	r2, .L25660	@ 0xfffffc00
	ldrh	r3, [r1, #8]
	and	r3, r2
	orr	r3, r0
	mov	r2, r1
	strh	r3, [r2, #8]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r0, #4
	ldr	r1, [sp, #0x24]
	and	r2, r0
	ldr	r3, =0xfffc
	lsr	r2, #1
	add	r2, r1, r2
	add	r2, r3
	ldr	r1, [sp, #0x18]
	ldr	r3, .L25664	@ 0x1ff
	and	r2, r3
	ldrh	r3, [r1, #6]
	ldr	r1, .L25668	@ 0xfffffe00
	and	r3, r1
	b	.L2568c

	.align	2, 0
.L2565c:
	.word	0x3ff
.L25660:
	.word	0xfffffc00
.L25664:
	.word	0x1ff
.L25668:
	.word	0xfffffe00
	.pool


.L2568c:
	orr	r3, r2
	ldr	r1, =iwram_1e40
	ldr	r2, [sp, #0x18]
	strh	r3, [r2, #6]
	ldr	r3, [r1]
	ldr	r2, [sp, #0x28]
	and	r3, r0
	lsr	r3, #2
	sub	r3, r2, r3
	ldr	r1, [sp, #0x18]
	add	r3, #0xf8
	strb	r3, [r1, #4]
	ldr	r2, [sp, #0x48]
	cmp	r2, #0
	beq	.L256b2
	ldr	r0, [sp, #0x18]
	mov	r1, #0xf2
	bl	Func_3dec
.L256b2:
	ldr	r3, =iwram_1f34
	ldr	r1, [r3]
	mov	r2, r8
	mov	r3, r9
	str	r3, [r1, #0x34]
	str	r2, [r1, #0x30]
	ldr	r3, [sp, #0x2c]
	str	r3, [r1, #0x38]
	ldr	r0, =iwram_1c94
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L25754
	ldr	r1, [sp, #0x48]
	cmp	r1, #0
	beq	.L2574c
	mov	r2, r9
	add	r2, r8
	ldr	r1, [sp, #0x4c]
	lsl	r3, r2, #1
	add	r5, r3, r1
	ldrh	r0, [r5]
	mov	r7, #0x80
	mov	r10, r2
	lsl	r7, #3
	bl	_Func_78414
	ldrh	r2, [r5]
	mov	r3, r7
	and	r3, r2
	mov	r6, #0
	cmp	r3, #0
	bne	.L25706
	ldrh	r1, [r5]
	ldr	r0, [sp, #0x50]
	bl	Func_25180
	mov	r6, r0
	cmp	r6, #0
	bne	.L25706
	b	.L258c8
.L25706:
	mov	r0, #0x72
	bl	_Func_f9080
	cmp	r6, #2
	bne	.L25716
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8ee
	b	.L25724
.L25716:
	ldrh	r2, [r5]
	mov	r3, r7
	and	r3, r2
	cmp	r3, #0
	beq	.L2572e
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8ec
.L25724:
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_1965c
	b	.L2573a
.L2572e:
	ldr	r5, [sp, #0x20]
	ldr	r0, =0x8eb
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_1965c
.L2573a:
	bl	Func_16738
	mov	r0, r5
	ldr	r1, [sp, #0x34]
	mov	r2, #0
	mov	r3, #4
	bl	Func_17aa4
	b	.L25772
.L2574c:
	mov	r2, #1
	neg	r2, r2
	mov	r10, r2
	b	.L258c8
.L25754:
	ldr	r3, [r1, #0x4c]
	cmp	r3, #0
	beq	.L25764
	ldr	r3, [r0]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L25772
.L25764:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r3, #1
	neg	r3, r3
	mov	r10, r3
	b	.L258c8
.L25772:
	ldr	r1, [sp, #0x48]
	cmp	r1, #0
	bne	.L2577a
	b	.L258c0
.L2577a:
	ldr	r1, =iwram_1b04
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L257b0
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #5
	beq	.L257a0
	mov	r3, r9
	ldr	r1, [sp, #0x48]
	add	r3, r8
	cmp	r3, r1
	bne	.L257a4
.L257a0:
	mov	r2, #0
	mov	r8, r2
.L257a4:
	mov	r1, r8
	mov	r3, r8
	lsl	r1, #1
	str	r3, [sp, #0x2c]
	str	r1, [sp, #0x14]
	b	.L258c0
.L257b0:
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L257f6
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bge	.L257ec
	ldr	r0, [sp, #0x48]
	mov	r1, #5
	sub	r0, #1
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	cmp	r9, r3
	bne	.L257e8
	ldr	r1, [sp, #0x48]
	mov	r2, r9
	sub	r3, r1, r2
	sub	r3, #1
	b	.L257ea
.L257e8:
	mov	r3, #4
.L257ea:
	mov	r8, r3
.L257ec:
	mov	r2, r8
	mov	r1, r8
	lsl	r2, #1
	str	r1, [sp, #0x2c]
	b	.L258be
.L257f6:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L25854
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r3, r9
	ldr	r1, [sp, #0x48]
	add	r3, #5
	cmp	r3, r1
	blt	.L25828
	mov	r2, r9
	cmp	r2, #0
	beq	.L258c0
	ldr	r1, [sp, #0x2c]
	mov	r8, r1
	mov	r2, r8
	mov	r3, #0
	lsl	r2, #1
	mov	r9, r3
	b	.L258be
.L25828:
	ldr	r0, [sp, #0x48]
	mov	r9, r3
	ldr	r3, [sp, #0x2c]
	sub	r0, #1
	mov	r1, #5
	mov	r8, r3
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	cmp	r9, r3
	bne	.L258ba
	ldr	r1, [sp, #0x48]
	mov	r2, r9
	sub	r3, r1, r2
	sub	r3, #1
	mov	r8, r3
	ldr	r3, [sp, #0x2c]
	cmp	r8, r3
	ble	.L258aa
	mov	r8, r3
	b	.L258b2
.L25854:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L258c0
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	mov	r2, r9
	cmp	r2, #0
	beq	.L2587e
	ldr	r1, [sp, #0x2c]
	mov	r8, r1
	mov	r3, #5
	mov	r2, r8
	neg	r3, r3
	lsl	r2, #1
	add	r9, r3
	b	.L258be
.L2587e:
	ldr	r0, [sp, #0x48]
	mov	r1, #5
	sub	r0, #1
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	mov	r9, r3
	ldr	r3, [sp, #0x2c]
	mov	r1, r9
	mov	r8, r3
	cmp	r1, #0
	beq	.L258b2
	ldr	r2, [sp, #0x48]
	sub	r3, r2, r1
	sub	r3, #1
	mov	r8, r3
	ldr	r3, [sp, #0x2c]
	cmp	r8, r3
	ble	.L258ba
	mov	r8, r3
	b	.L258b2
.L258aa:
	mov	r3, r8
	lsl	r3, #1
	str	r3, [sp, #0x14]
	b	.L258c0
.L258b2:
	mov	r1, r8
	lsl	r1, #1
	str	r1, [sp, #0x14]
	b	.L258c0
.L258ba:
	mov	r2, r8
	lsl	r2, #1
.L258be:
	str	r2, [sp, #0x14]
.L258c0:
	mov	r0, #1
	bl	Func_30f8
	b	.L25344
.L258c8:
	ldr	r0, [sp, #0x34]
	mov	r1, #1
	bl	Func_16418
	mov	r1, #1
	mov	r0, r11
	bl	Func_16418
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, [sp, #0x38]
	bl	Func_3f3c
	ldr	r5, [sp, #0x1c]
	mov	r7, #4
.L258e8:
	ldmia	r5!, {r0}
	sub	r7, #1
	bl	Func_3f3c
	cmp	r7, #0
	bge	.L258e8
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r10
	add	sp, #0x130
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_25200

.thumb_func_start Func_2592c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x12c
	str	r1, [sp, #0x48]
	str	r2, [sp, #0x44]
	ldr	r5, =iwram_1e8c
	mov	r6, r0
	ldr	r0, [r5]
	mov	r1, #1
	str	r0, [sp, #0x40]
	neg	r1, r1
	mov	r0, #0x80
	str	r1, [sp, #0x38]
	mov	r9, r1
	bl	Func_40b4
	str	r0, [sp, #0x34]
	mov	r0, r6
	bl	_Func_77394
	mov	r3, #0x2a
	str	r0, [sp, #0x30]
	str	r3, [sp]
	mov	r1, #5
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	bl	Func_162d4
	mov	r2, #5
	str	r0, [sp, #0x2c]
	str	r2, [sp, #0x28]
	add	r5, #0xa8
	ldr	r3, [r5]
	ldr	r0, [r3, #0x34]
	str	r0, [sp, #0x3c]
	ldr	r1, [r3, #0x30]
	ldr	r3, [r3, #0x38]
	mov	r10, r1
	str	r3, [sp, #0x24]
	mov	r3, #6
	str	r3, [sp]
	mov	r2, #0x15
	mov	r3, #0xb
	mov	r0, #9
	mov	r1, #9
	bl	Func_162d4
	mov	r2, sp
	add	r2, #0x50
	ldr	r3, =0xfffffe00
	mov	r6, #0x80
	str	r2, [sp, #0xc]
	mov	r11, r0
	mov	r7, #0
	mov	r12, r3
	mov	r4, r2
	lsl	r6, #23
	mov	r5, #0
.L259ac:
	lsl	r0, r7, #1
	str	r6, [r4, #4]
	str	r5, [r4, #8]
	mov	r1, r11
	ldrh	r2, [r1, #0xc]
	ldr	r3, .L259ec	@ 0x1ff
	lsl	r2, #3
	ldrh	r1, [r4, #6]
	add	r2, #8
	and	r2, r3
	mov	r3, r12
	and	r3, r1
	orr	r3, r2
	mov	r2, r11
	strh	r3, [r4, #6]
	ldrh	r3, [r2, #0xe]
	add	r0, r3
	lsl	r0, #3
	add	r0, #4
	add	r7, #1
	strb	r0, [r4, #4]
	add	r4, #0xc
	cmp	r7, #4
	ble	.L259ac
	mov	r3, sp
	add	r3, #0x8c
	ldr	r0, =0xfffffc00
	str	r3, [sp, #8]
	ldr	r6, [sp, #0xc]
	str	r3, [sp, #4]
	mov	r5, #8
	b	.L259fc

	.align	2, 0
.L259ec:
	.word	0x1ff
	.pool

.L259fc:
	mov	r8, r0
	mov	r7, #4
.L25a00:
	mov	r0, #0x80
	bl	Func_40b4
	ldr	r2, [sp, #4]
	stmia	r2!, {r0}
	mov	r1, r2
	str	r1, [sp, #4]
	mov	r1, #1
	neg	r1, r1
	bl	Func_40d0
	ldr	r3, =0x3ff
	and	r0, r3
	ldrh	r3, [r5, r6]
	mov	r1, r8
	and	r3, r1
	orr	r3, r0
	sub	r7, #1
	strh	r3, [r5, r6]
	add	r5, #0xc
	cmp	r7, #0
	bge	.L25a00
	ldr	r5, =0xf018
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #2
	bl	Func_251d4
	mov	r0, r5
	ldr	r1, =0x201
	bl	Func_251d4
	add	r5, #1
	mov	r1, #0x84
	lsl	r1, #2
	mov	r0, r5
	b	.L25a58

	.pool_aligned

.L25a58:
	bl	Func_251d4
	ldr	r1, =0x211
	mov	r0, r5
	bl	Func_251d4
	mov	r2, #0x90
	lsl	r2, #1
	mov	r3, r10
	add	r2, sp
	lsl	r3, #1
	str	r2, [sp, #0x18]
	str	r3, [sp, #0x14]
.L25a72:
	ldr	r0, [sp, #0x3c]
	cmp	r0, r9
	bne	.L25a80
	ldr	r1, [sp, #0x38]
	cmp	r10, r1
	bne	.L25a80
	b	.L25cd6
.L25a80:
	ldr	r3, [sp, #0x40]
	ldr	r0, =0xea6
	add	r2, r3, r0
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [sp, #0x38]
	mov	r1, r11
	ldrh	r0, [r1, #0xc]
	ldrh	r1, [r1, #0xe]
	lsl	r3, r2, #1
	add	r1, r3
	mov	r3, r11
	ldrh	r2, [r3, #8]
	mov	r3, #0xf
	str	r3, [sp]
	add	r0, #1
	add	r1, #1
	sub	r2, #2
	mov	r3, #1
	bl	Func_22768
	bl	Func_16738
	ldr	r0, [sp, #0x44]
	cmp	r0, #0
	beq	.L25ae4
	ldr	r3, [sp, #0x3c]
	ldr	r1, [sp, #0x48]
	add	r3, r10
	lsl	r3, #1
	ldrh	r3, [r3, r1]
	ldr	r0, .L25ad4	@ 0x3fff
	and	r0, r3
	ldr	r3, =0x53a
	add	r5, sp, #0xa0
	add	r0, r3
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_1965c
	b	.L25af0

	.align	2, 0
.L25ad4:
	.word	0x3fff
	.pool

.L25ae4:
	add	r5, sp, #0xa0
	ldr	r0, =0x8e7
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_1965c
.L25af0:
	mov	r2, #0
	mov	r3, #4
	mov	r0, r5
	ldr	r1, [sp, #0x2c]
	bl	Func_17aa4
	ldr	r3, [sp, #0x3c]
	mov	r2, r10
	str	r2, [sp, #0x38]
	cmp	r3, r9
	bne	.L25b08
	b	.L25c5c
.L25b08:
	mov	r0, r11
	bl	Func_16498
	ldr	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x48]
	lsl	r3, r0, #1
	ldrh	r5, [r3, r1]
	mov	r7, #0
	cmp	r5, #0
	bne	.L25b1e
	b	.L25c56
.L25b1e:
	mov	r2, sp
	add	r2, #0x4c
	str	r2, [sp, #0x10]
.L25b24:
	mov	r0, r5
	bl	_Func_78b9c
	mov	r8, r0
	mov	r0, #0
	str	r0, [sp]
	lsl	r3, r7, #1
	mov	r0, r11
	ldr	r1, =0xf01f
	mov	r2, #0xb
	mov	r9, r3
	bl	Func_19000
	mov	r1, #0
	str	r1, [sp]
	mov	r0, r11
	ldr	r1, =0xf01e
	mov	r2, #0xc
	mov	r3, r9
	bl	Func_19000
	ldr	r3, [sp, #8]
	ldr	r0, =0x3fff
	lsl	r2, r7, #2
	add	r2, r3, r2
	mov	r3, #1
	and	r0, r5
	str	r3, [sp]
	mov	r1, #0
	ldr	r3, [sp, #0x10]
	bl	Func_1a3d0
	mov	r0, r9
	add	r1, r0, r7
	ldr	r2, [sp, #0xc]
	ldr	r3, .L25b94	@ 0x3ff
	lsl	r1, #2
	ldr	r0, [sp, #0x4c]
	add	r1, #8
	and	r0, r3
	ldrh	r3, [r2, r1]
	ldr	r2, .L25b98	@ 0xfffffc00
	and	r3, r2
	orr	r3, r0
	ldr	r0, [sp, #0xc]
	strh	r3, [r0, r1]
	mov	r1, r8
	ldrb	r2, [r1, #1]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	bne	.L25bac
	mov	r0, #4
	bl	Func_1e71c
	b	.L25bd4

	.align	2, 0
.L25b94:
	.word	0x3ff
.L25b98:
	.word	0xfffffc00
	.pool

.L25bac:
	ldr	r1, [sp, #0x30]
	mov	r3, r8
	ldrb	r2, [r3, #9]
	mov	r0, #0x3a
	ldrsh	r3, [r1, r0]
	cmp	r2, r3
	ble	.L25bc2
	mov	r0, #2
	bl	Func_1e71c
	b	.L25bd4
.L25bc2:
	ldr	r2, [sp, #0x30]
	ldr	r0, =0x13d
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L25bd4
	mov	r0, #9
	bl	Func_1e71c
.L25bd4:
	ldr	r1, [sp, #0x40]
	ldr	r2, =0xea7
	ldr	r0, =0x333
	add	r6, r1, r2
	add	r0, r5, r0
	mov	r3, #5
	lsl	r5, r7, #4
	strb	r3, [r6]
	mov	r1, r11
	mov	r2, #0x10
	mov	r3, r5
	bl	Func_1e7c0
	mov	r3, r8
	ldrb	r0, [r3, #9]
	mov	r1, #2
	mov	r3, #0x68
	mov	r2, r11
	str	r5, [sp]
	bl	Func_1e9d4
	mov	r0, #0xf
	bl	Func_1e71c
	mov	r3, #0xf
	mov	r0, r8
	strb	r3, [r6]
	ldrb	r3, [r0, #2]
	cmp	r3, #4
	beq	.L25c24
	ldr	r2, =0x5001
	mov	r1, r3
	mov	r3, #0
	add	r1, r2
	str	r3, [sp]
	mov	r0, r11
	mov	r2, #0xf
	mov	r3, r9
	bl	Func_19000
.L25c24:
	mov	r0, r8
	ldrb	r3, [r0, #8]
	cmp	r3, #0xff
	bne	.L25c30
	mov	r3, #0xb
	b	.L25c32
.L25c30:
	sub	r3, #1
.L25c32:
	mov	r1, #0
	str	r1, [sp]
	mov	r0, r11
	mov	r1, #0x10
	mov	r2, r9
	add	r7, #1
	bl	Func_218dc
	cmp	r7, #4
	bgt	.L25c56
	ldr	r2, [sp, #0x3c]
	ldr	r0, [sp, #0x48]
	add	r3, r2, r7
	lsl	r3, #1
	ldrh	r5, [r3, r0]
	cmp	r5, #0
	beq	.L25c56
	b	.L25b24
.L25c56:
	ldr	r1, [sp, #0x3c]
	str	r7, [sp, #0x28]
	mov	r9, r1
.L25c5c:
	ldr	r2, [sp, #0x44]
	cmp	r2, #5
	ble	.L25ca6
	mov	r7, #0
	add	r2, #4
	mov	r8, r2
	b	.L25c98
.L25c6a:
	ldr	r3, =0xf301
	ldr	r0, [sp, #0x3c]
	mov	r1, #5
	add	r6, r7, r3
	bl	Func_af0_from_thumb
	cmp	r7, r0
	bne	.L25c7e
	ldr	r0, =0xf30b
	add	r6, r7, r0
.L25c7e:
	mov	r1, r11
	ldrh	r2, [r1, #8]
	sub	r2, r5
	add	r2, r7
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	mov	r0, r11
	mov	r1, r6
	sub	r3, #1
	bl	Func_19000
	add	r7, #1
.L25c98:
	mov	r0, r8
	mov	r1, #5
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r7, r5
	blt	.L25c6a
.L25ca6:
	mov	r1, r11
	ldrh	r0, [r1, #0xc]
	ldr	r2, [sp, #0x14]
	ldrh	r1, [r1, #0xe]
	mov	r3, r11
	add	r1, r2
	ldrh	r2, [r3, #8]
	mov	r3, #0xe
	add	r0, #1
	add	r1, #1
	sub	r2, #2
	str	r3, [sp]
	mov	r3, #1
	bl	Func_22768
	ldr	r1, =0xea3
	ldr	r0, [sp, #0x40]
	mov	r3, #1
	add	r2, r0, r1
	strb	r3, [r2]
	ldr	r2, =0xea6
	add	r3, r0, r2
	mov	r0, #0
	strb	r0, [r3]
.L25cd6:
	ldr	r1, [sp, #0x44]
	cmp	r1, #5
	ble	.L25d98
	mov	r7, #0
	add	r1, #4
	mov	r8, r1
	b	.L25d48

	.pool_aligned

.L25d04:
	ldr	r0, =iwram_1e40
	ldr	r2, =0xf301
	ldr	r3, [r0]
	add	r6, r7, r2
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L25d24
	ldr	r0, [sp, #0x3c]
	mov	r1, #5
	bl	Func_af0_from_thumb
	cmp	r7, r0
	bne	.L25d24
	ldr	r1, =0xf30b
	add	r6, r7, r1
.L25d24:
	mov	r2, r11
	mov	r1, #5
	mov	r0, r8
	ldrh	r5, [r2, #8]
	bl	Func_af0_from_thumb
	sub	r5, r0
	add	r5, r7
	mov	r3, #0
	sub	r5, #2
	str	r3, [sp]
	mov	r0, r11
	mov	r1, r6
	mov	r2, r5
	sub	r3, #1
	bl	Func_19000
	add	r7, #1
.L25d48:
	mov	r0, r8
	mov	r1, #5
	bl	Func_af0_from_thumb
	cmp	r7, r0
	blt	.L25d04
	mov	r1, r11
	ldrh	r2, [r1, #8]
	mov	r5, #1
	neg	r5, r5
	sub	r2, r0
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r11
	mov	r3, r5
	sub	r2, #3
	ldr	r1, =0xf334
	bl	Func_19000
	mov	r0, r11
	ldrh	r2, [r0, #8]
	mov	r1, #0
	str	r1, [sp]
	sub	r2, #2
	ldr	r1, =0xf335
	mov	r3, r5
	bl	Func_19000
	ldr	r2, [sp, #0x40]
	ldr	r3, =0xea3
	mov	r0, r11
	add	r1, r2, r3
	ldrh	r3, [r0, #0xe]
	sub	r3, #1
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.L25d98:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0
	ble	.L25db2
	ldr	r5, [sp, #0xc]
	mov	r7, r1
.L25da2:
	mov	r0, r5
	mov	r1, #0xf0
	sub	r7, #1
	bl	Func_3dec
	add	r5, #0xc
	cmp	r7, #0
	bne	.L25da2
.L25db2:
	mov	r2, r11
	ldrh	r3, [r2, #0xc]
	lsl	r3, #3
	sub	r3, #4
	ldr	r0, [sp, #0x14]
	str	r3, [sp, #0x1c]
	ldrh	r3, [r2, #0xe]
	add	r3, r0, r3
	lsl	r3, #3
	add	r3, #0x14
	ldr	r1, [sp, #0x18]
	str	r3, [sp, #0x20]
	mov	r3, #0x80
	lsl	r3, #23
	mov	r2, #0
	str	r3, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [sp, #0x34]
	ldr	r1, =Data_310a4
	bl	Func_40d0
	ldr	r3, .L25e10	@ 0x3ff
	ldr	r1, [sp, #0x18]
	and	r0, r3
	ldr	r2, .L25e14	@ 0xfffffc00
	ldrh	r3, [r1, #8]
	and	r3, r2
	orr	r3, r0
	mov	r2, r1
	strh	r3, [r2, #8]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r0, #4
	and	r2, r0
	ldr	r1, [sp, #0x1c]
	ldr	r3, =0xfffc
	lsr	r2, #1
	add	r2, r1, r2
	add	r2, r3
	ldr	r1, [sp, #0x18]
	ldr	r3, .L25e18	@ 0x1ff
	and	r2, r3
	ldrh	r3, [r1, #6]
	ldr	r1, .L25e1c	@ 0xfffffe00
	and	r3, r1
	b	.L25e40

	.align	2, 0
.L25e10:
	.word	0x3ff
.L25e14:
	.word	0xfffffc00
.L25e18:
	.word	0x1ff
.L25e1c:
	.word	0xfffffe00
	.pool

.L25e40:
	orr	r3, r2
	ldr	r1, =iwram_1e40
	ldr	r2, [sp, #0x18]
	strh	r3, [r2, #6]
	ldr	r3, [r1]
	ldr	r2, [sp, #0x20]
	and	r3, r0
	lsr	r3, #2
	sub	r3, r2, r3
	ldr	r0, [sp, #0x18]
	add	r3, #0xf8
	strb	r3, [r0, #4]
	ldr	r1, [sp, #0x44]
	cmp	r1, #0
	beq	.L25e66
	ldr	r0, [sp, #0x18]
	mov	r1, #0xf2
	bl	Func_3dec
.L25e66:
	ldr	r3, =iwram_1f34
	ldr	r2, [sp, #0x3c]
	ldr	r1, [r3]
	mov	r3, r10
	str	r2, [r1, #0x34]
	str	r3, [r1, #0x30]
	ldr	r0, [sp, #0x24]
	str	r0, [r1, #0x38]
	ldr	r0, =iwram_1c94
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L25eaa
	ldr	r1, [sp, #0x44]
	cmp	r1, #0
	beq	.L25ea4
	ldr	r6, [sp, #0x3c]
	ldr	r2, [sp, #0x48]
	add	r6, r10
	lsl	r3, r6, #1
	ldrh	r0, [r3, r2]
	bl	_Func_78b9c
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L25ea2
	b	.L2602a
.L25ea2:
	b	.L25ec6
.L25ea4:
	mov	r6, #1
	neg	r6, r6
	b	.L2602a
.L25eaa:
	ldr	r3, [r1, #0x4c]
	cmp	r3, #0
	beq	.L25eba
	ldr	r3, [r0]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L25ec6
.L25eba:
	mov	r0, #0x71
	mov	r6, #1
	bl	_Func_f9080
	neg	r6, r6
	b	.L2602a
.L25ec6:
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	bne	.L25ece
	b	.L26022
.L25ece:
	ldr	r1, =iwram_1b04
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L25f04
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	cmp	r1, #5
	beq	.L25ef4
	ldr	r3, [sp, #0x3c]
	ldr	r2, [sp, #0x44]
	add	r3, r10
	cmp	r3, r2
	bne	.L25ef8
.L25ef4:
	mov	r3, #0
	mov	r10, r3
.L25ef8:
	mov	r1, r10
	mov	r0, r10
	lsl	r1, #1
	str	r0, [sp, #0x24]
	str	r1, [sp, #0x14]
	b	.L26022
.L25f04:
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L25f4e
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0
	bge	.L25f42
	ldr	r0, [sp, #0x44]
	mov	r1, #5
	sub	r0, #1
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, [sp, #0x3c]
	cmp	r0, r3
	bne	.L25f3e
	ldr	r1, [sp, #0x44]
	sub	r3, r1, r0
	sub	r3, #1
	mov	r10, r3
	b	.L25f42
.L25f3e:
	mov	r2, #4
	mov	r10, r2
.L25f42:
	mov	r0, r10
	mov	r3, r10
	lsl	r0, #1
	str	r3, [sp, #0x24]
	str	r0, [sp, #0x14]
	b	.L26022
.L25f4e:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L25fae
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	ldr	r3, [sp, #0x3c]
	ldr	r1, [sp, #0x44]
	add	r3, #5
	cmp	r3, r1
	blt	.L25f82
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0
	beq	.L26022
	ldr	r0, [sp, #0x24]
	mov	r10, r0
	mov	r1, r10
	mov	r3, #0
	lsl	r1, #1
	str	r3, [sp, #0x3c]
	str	r1, [sp, #0x14]
	b	.L26022
.L25f82:
	ldr	r0, [sp, #0x44]
	ldr	r2, [sp, #0x24]
	sub	r0, #1
	mov	r1, #5
	str	r3, [sp, #0x3c]
	mov	r10, r2
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, [sp, #0x3c]
	cmp	r0, r3
	bne	.L26004
	ldr	r1, [sp, #0x44]
	sub	r3, r1, r0
	sub	r3, #1
	ldr	r2, [sp, #0x24]
	mov	r10, r3
	cmp	r10, r2
	ble	.L2600c
	mov	r10, r2
	b	.L2601c
.L25fae:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L26022
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_352c
	ldr	r0, [sp, #0x3c]
	cmp	r0, #0
	beq	.L25fd8
	ldr	r1, [sp, #0x24]
	mov	r10, r1
	mov	r2, r10
	sub	r0, #5
	lsl	r2, #1
	str	r0, [sp, #0x3c]
	str	r2, [sp, #0x14]
	b	.L26022
.L25fd8:
	ldr	r0, [sp, #0x44]
	mov	r1, #5
	sub	r0, #1
	bl	Func_af0_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	str	r3, [sp, #0x3c]
	ldr	r0, [sp, #0x3c]
	ldr	r3, [sp, #0x24]
	mov	r10, r3
	cmp	r0, #0
	beq	.L26014
	ldr	r1, [sp, #0x44]
	sub	r3, r1, r0
	sub	r3, #1
	ldr	r2, [sp, #0x24]
	mov	r10, r3
	cmp	r10, r2
	ble	.L2601c
	mov	r10, r2
	b	.L2601c
.L26004:
	mov	r0, r10
	lsl	r0, #1
	str	r0, [sp, #0x14]
	b	.L26022
.L2600c:
	mov	r1, r10
	lsl	r1, #1
	str	r1, [sp, #0x14]
	b	.L26022
.L26014:
	mov	r2, r10
	lsl	r2, #1
	str	r2, [sp, #0x14]
	b	.L26022
.L2601c:
	mov	r3, r10
	lsl	r3, #1
	str	r3, [sp, #0x14]
.L26022:
	mov	r0, #1
	bl	Func_30f8
	b	.L25a72
.L2602a:
	ldr	r0, [sp, #0x2c]
	mov	r1, #1
	bl	Func_16418
	mov	r0, r11
	mov	r1, #1
	bl	Func_16418
	mov	r0, #1
	bl	Func_30f8
	ldr	r5, [sp, #8]
	mov	r7, #4
.L26044:
	ldmia	r5!, {r0}
	sub	r7, #1
	bl	Func_3f3c
	cmp	r7, #0
	bge	.L26044
	ldr	r0, [sp, #0x34]
	bl	Func_3f3c
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r6
	add	sp, #0x12c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_2592c

.thumb_func_start Func_26080
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x144
	str	r2, [sp, #0x54]
	str	r3, [sp, #0x50]
	ldr	r5, =iwram_1e74
	mov	r10, r0
	ldr	r0, [r5]
	ldr	r2, =0xffff
	str	r0, [sp, #0x4c]
	mov	r0, #0x80
	mov	r8, r1
	lsl	r0, #1
	mov	r1, #0
	str	r1, [sp, #0x40]
	str	r2, [sp, #0x38]
	bl	Func_40b4
	ldr	r4, [sp, #0x54]
	mov	r3, #0
	str	r0, [sp, #0x34]
	mov	r9, r3
	cmp	r4, #0
	bne	.L260be
	mov	r6, #1
	str	r6, [sp, #0x54]
.L260be:
	mov	r7, r8
	cmp	r7, #2
	beq	.L260c8
	cmp	r7, #4
	bne	.L260d4
.L260c8:
	mov	r3, r5
	add	r3, #0xc0
	ldr	r2, [r3]
	mov	r3, #2
	neg	r3, r3
	b	.L260dc
.L260d4:
	mov	r3, r5
	add	r3, #0xc0
	ldr	r2, [r3]
	mov	r3, #0x10
.L260dc:
	str	r3, [r2, #0x28]
	mov	r0, sp
	add	r0, #0xd4
	mov	r3, sp
	str	r0, [sp, #0x24]
	mov	r2, #0
	mov	r7, #5
	add	r3, #0xea
.L260ec:
	sub	r7, #1
	strb	r2, [r3]
	sub	r3, #4
	cmp	r7, #0
	bge	.L260ec
	mov	r1, #1
	neg	r1, r1
	mov	r2, r8
	str	r1, [sp, #0x44]
	cmp	r2, #2
	bne	.L2613e
	ldr	r4, [sp, #0x4c]
	mov	r3, #0x58
	ldrsh	r3, [r4, r3]
	mov	r7, #0
	cmp	r3, #0xff
	beq	.L26194
	mov	r6, #0x9a
	lsl	r6, #1
	ldr	r0, [sp, #0x40]
	add	r6, sp
	mov	r2, r4
	lsl	r3, r0, #1
	str	r6, [sp, #0x1c]
	add	r2, #0x58
	add	r1, r3, r6
.L26120:
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldr	r3, [sp, #0x40]
	add	r7, #1
	add	r3, #1
	add	r1, #2
	str	r3, [sp, #0x40]
	add	r2, #2
	cmp	r7, #5
	bgt	.L261b8
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	cmp	r3, #0xff
	bne	.L26120
	b	.L261b8
.L2613e:
	mov	r5, r8
	cmp	r5, #4
	bne	.L26158
	mov	r6, #0x9a
	lsl	r6, #1
	add	r6, sp
	mov	r7, r10
	mov	r0, r6
	mov	r1, #1
	str	r6, [sp, #0x1c]
	strh	r7, [r0]
	str	r1, [sp, #0x40]
	b	.L261b8
.L26158:
	ldr	r1, [sp, #0x4c]
	mov	r3, #0x64
	add	r1, #2
	ldrsh	r3, [r1, r3]
	mov	r7, #0
	cmp	r3, #0xff
	beq	.L261b0
	mov	r3, #0x9a
	lsl	r3, #1
	add	r3, sp
	str	r3, [sp, #0x1c]
	ldr	r4, [sp, #0x40]
	ldr	r5, [sp, #0x1c]
	lsl	r3, r4, #1
	mov	r0, #0x64
	add	r2, r3, r5
.L26178:
	ldrh	r3, [r1, r0]
	strh	r3, [r2]
	ldr	r6, [sp, #0x40]
	add	r7, #1
	add	r6, #1
	add	r2, #2
	str	r6, [sp, #0x40]
	add	r0, #2
	cmp	r7, #5
	bgt	.L261b8
	ldrsh	r3, [r1, r0]
	cmp	r3, #0xff
	bne	.L26178
	b	.L261b8
.L26194:
	mov	r5, #0x9a
	lsl	r5, #1
	add	r5, sp
	str	r5, [sp, #0x1c]
	b	.L261b8
.L2619e:
	ldr	r6, [sp, #0x1c]
	mov	r7, r11
	ldrh	r6, [r6, r7]
	mov	r10, r6
	b	.L262b6

	.pool_aligned

.L261b0:
	mov	r0, #0x9a
	lsl	r0, #1
	add	r0, sp
	str	r0, [sp, #0x1c]
.L261b8:
	ldr	r1, [sp, #0x40]
	ldr	r3, =0xff
	ldr	r4, [sp, #0x1c]
	lsl	r2, r1, #1
	mov	r5, r8
	strh	r3, [r4, r2]
	str	r1, [sp, #0x3c]
	cmp	r5, #2
	beq	.L261cc
	b	.L262e0
.L261cc:
	ldr	r6, [sp, #0x54]
	cmp	r6, #0xff
	beq	.L262b6
	ldr	r7, [sp, #0x50]
	cmp	r7, #0
	beq	.L262b6
	mov	r5, #0
	mov	r7, #0
	cmp	r5, r1
	bge	.L262b6
	ldr	r4, =0xffff
	mov	r6, #0
	b	.L261f0

	.pool_aligned

.L261f0:
	ldr	r0, [sp, #0x1c]
	ldrh	r3, [r6, r0]
	mov	r11, r6
	cmp	r3, #0xfe
	beq	.L262ac
	mov	r0, r3
	str	r4, [sp, #8]
	bl	_Func_77394
	ldr	r2, [sp, #0x50]
	mov	r1, r0
	ldr	r4, [sp, #8]
	cmp	r2, #4
	beq	.L26240
	cmp	r2, #4
	bhi	.L26216
	cmp	r2, #3
	beq	.L26234
	b	.L262a6
.L26216:
	ldr	r3, [sp, #0x50]
	cmp	r3, #5
	beq	.L26222
	cmp	r3, #6
	beq	.L26264
	b	.L262a6
.L26222:
	mov	r0, #0x38
	ldrsh	r3, [r1, r0]
	cmp	r3, #0
	bne	.L262a6
	ldr	r1, [sp, #0x1c]
	ldrh	r1, [r6, r1]
	mov	r7, #1
	mov	r10, r1
	b	.L262a6
.L26234:
	ldr	r2, =0x131
	add	r3, r1, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	b	.L262a0
.L26240:
	mov	r0, #0x9c
	lsl	r0, #1
	add	r3, r1, r0
	ldr	r3, [r3]
	ldr	r2, =0xff0000ff
	and	r3, r2
	cmp	r3, #0
	bne	.L262a4
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	and	r3, r4
	cmp	r3, #0
	bne	.L262a4
	add	r0, #9
	add	r3, r1, r0
	b	.L2629e
.L26264:
	mov	r2, #0x9c
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	ldr	r2, =0xff0000ff
	and	r3, r2
	cmp	r3, #0
	bne	.L262a4
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r1, r0
	ldrh	r3, [r3]
	and	r3, r4
	cmp	r3, #0
	bne	.L262a4
	ldr	r2, =0x141
	add	r3, r1, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L262a4
	sub	r0, #0xb
	add	r3, r1, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L262a4
	sub	r2, #1
	add	r3, r1, r2
.L2629e:
	ldrb	r3, [r3]
.L262a0:
	cmp	r3, #0
	beq	.L262a6
.L262a4:
	mov	r7, #1
.L262a6:
	cmp	r7, #0
	beq	.L262ac
	b	.L2619e
.L262ac:
	ldr	r3, [sp, #0x40]
	add	r5, #1
	add	r6, #2
	cmp	r5, r3
	blt	.L261f0
.L262b6:
	ldr	r4, [sp, #0x40]
	mov	r5, #0
	cmp	r5, r4
	bge	.L262d8
	ldr	r6, [sp, #0x1c]
	ldrh	r3, [r6]
	cmp	r3, r10
	beq	.L262d8
	mov	r2, r6
.L262c8:
	ldr	r7, [sp, #0x40]
	add	r5, #1
	cmp	r5, r7
	bge	.L262d8
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, r10
	bne	.L262c8
.L262d8:
	ldr	r0, [sp, #0x40]
	cmp	r5, r0
	beq	.L262e0
	str	r5, [sp, #0x44]
.L262e0:
	ldr	r1, [sp, #0x44]
	cmp	r1, #0
	bge	.L26308
	ldr	r3, [sp, #0x40]
	sub	r3, #1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp, #0x44]
	b	.L26308
.L262f4:
	ldr	r2, [sp, #0x44]
	ldr	r4, [sp, #0x40]
	add	r3, r2, r4
	sub	r3, #1
	mov	r0, r3
	mov	r1, r4
	str	r3, [sp, #0x44]
	bl	Func_b1c_from_thumb
	str	r0, [sp, #0x44]
.L26308:
	ldr	r5, [sp, #0x44]
	lsl	r5, #1
	str	r5, [sp, #0x18]
	ldr	r6, [sp, #0x1c]
	ldrh	r3, [r6, r5]
	cmp	r3, #0xfe
	beq	.L262f4
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L26336
	mov	r7, r8
	cmp	r7, #1
	bne	.L26336
	ldrh	r0, [r6, r5]
	bl	_Func_77394
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	beq	.L262f4
.L26336:
	mov	r2, r8
	cmp	r2, #2
	beq	.L26354
	add	r5, sp, #0xc8
	mov	r0, r10
	mov	r1, r5
	bl	_Func_b84c0
	ldr	r4, [sp, #0x24]
	mov	r3, #8
	strb	r3, [r4, #2]
	ldr	r3, [r5]
	strb	r3, [r4]
	mov	r3, #0x80
	strb	r3, [r4, #1]
.L26354:
	mov	r3, #0x4a
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0x1e
	mov	r3, #4
	bl	Func_162d4
	mov	r6, #0x98
	mov	r5, sp
	mov	r7, sp
	add	r5, #0xec
	add	r6, sp
	add	r7, #0x58
	str	r0, [sp, #0x48]
	str	r5, [sp, #0x20]
	mov	r11, r6
	str	r7, [sp, #0x14]
	b	.L2638e

	.pool_aligned

.L26388:
	ldr	r0, [sp, #0x44]
	lsl	r0, #1
	str	r0, [sp, #0x18]
.L2638e:
	mov	r1, #0
	str	r1, [sp, #0x30]
	ldr	r3, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r1, r11
	ldrh	r0, [r2, r3]
	bl	_Func_b84c0
	ldr	r3, =0x40002000
	ldr	r4, [sp, #0x20]
	str	r3, [r4, #4]
	ldr	r5, [sp, #0x30]
	str	r5, [r4, #8]
	ldr	r5, =iwram_1e40
	ldr	r1, [r5]
	mov	r3, #0x1f
	lsr	r1, #2
	and	r1, r3
	ldr	r3, =Data_346f8
	lsl	r1, #8
	add	r1, r3
	ldr	r0, [sp, #0x34]
	bl	Func_40d0
	ldr	r3, .L263e4	@ 0x3ff
	ldr	r6, [sp, #0x20]
	and	r0, r3
	ldrh	r2, [r6, #8]
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	ldr	r0, [r5]
	mov	r7, r6
	strh	r3, [r7, #8]
	lsl	r0, #12
	bl	Func_2322
	cmp	r0, #0
	bge	.L263fc
	ldr	r1, =0x7fff
	add	r0, r1
	b	.L263fc

	.align	2, 0
.L263e4:
	.word	0x3ff
	.pool

.L263fc:
	mov	r4, r11
	ldr	r3, [r4, #4]
	asr	r2, r0, #15
	add	r0, r3, r2
	str	r0, [r4, #4]
	ldr	r5, [sp, #0x24]
	mov	r1, #1
	ldrb	r2, [r5, #2]
	mov	r3, r1
	and	r3, r2
	cmp	r3, #0
	beq	.L2644e
	ldr	r4, [r4]
	ldrb	r3, [r5]
	add	r3, r4, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r1, r3, #1
	ldrb	r3, [r5, #1]
	add	r3, r0, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r0, r3, #1
	sub	r3, r4, r1
	cmp	r3, #0
	blt	.L26436
	cmp	r3, #7
	ble	.L2643c
	b	.L26440
.L26436:
	sub	r3, r1, r4
	cmp	r3, #7
	bgt	.L26440
.L2643c:
	mov	r6, #1
	str	r6, [sp, #0x30]
.L26440:
	mov	r7, r11
	str	r1, [r7]
	ldr	r2, [sp, #0x24]
	str	r0, [r7, #4]
	strb	r1, [r2]
	strb	r0, [r2, #1]
	b	.L26486
.L2644e:
	mov	r4, #0xc0
	lsl	r3, r2, #24
	lsl	r4, #18
	cmp	r3, r4
	bhi	.L26468
	mov	r5, r11
	ldr	r6, [sp, #0x24]
	ldr	r3, [r5]
	str	r0, [r5, #4]
	strb	r3, [r6]
	strb	r0, [r6, #1]
	strb	r1, [r6, #2]
	b	.L26486
.L26468:
	ldr	r7, [sp, #0x24]
	ldrb	r3, [r7]
	mov	r0, r11
	str	r3, [r0]
	ldrb	r3, [r7, #1]
	str	r3, [r0, #4]
	mov	r3, r2
	add	r3, #0xfc
	mov	r2, #0xc0
	strb	r3, [r7, #2]
	lsl	r2, #18
	lsl	r3, #24
	cmp	r3, r2
	bhi	.L26486
	strb	r1, [r7, #2]
.L26486:
	mov	r3, r11
	ldr	r2, [r3]
	ldr	r4, [sp, #0x20]
	ldr	r3, =0x1ff
	sub	r2, #8
	ldrh	r1, [r4, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	mov	r5, r4
	mov	r6, r11
	strh	r3, [r5, #6]
	ldr	r3, [r6, #4]
	sub	r3, #0x10
	strb	r3, [r5, #4]
	ldr	r0, [sp, #0x20]
	mov	r1, #0xf0
	bl	Func_3dec
	ldr	r7, [sp, #0x54]
	cmp	r7, #0xff
	bne	.L264d8
	ldr	r2, =0xffff0000
	ldr	r3, [sp, #0x58]
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #1
	b	.L264cc

	.pool_aligned

.L264cc:
	orr	r3, r2
	ldr	r2, =0xffff
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #17
	b	.L264ea
.L264d8:
	ldr	r2, =0xffff0000
	ldr	r3, [sp, #0x58]
	and	r3, r2
	mov	r2, #0xb0
	orr	r3, r2
	ldr	r2, =0xffff
	and	r3, r2
	mov	r2, #0xb0
	lsl	r2, #16
.L264ea:
	orr	r3, r2
	str	r3, [sp, #0x58]
	ldr	r0, [sp, #0x14]
	ldr	r3, =0xffff0000
	ldr	r2, [r0, #4]
	and	r2, r3
	str	r2, [r0, #4]
	ldr	r0, [sp, #0x14]
	bl	Func_3d28
	ldr	r1, [sp, #0x38]
	mov	r3, #1
	and	r3, r1
	str	r0, [sp, #0x2c]
	cmp	r3, #0
	bne	.L2650c
	b	.L26b96
.L2650c:
	mov	r2, #0
	str	r2, [sp, #0x40]
	ldr	r1, [sp, #0x24]
	mov	r0, #0xfd
	mov	r7, #5
.L26516:
	ldrb	r2, [r1, #2]
	mov	r3, r0
	and	r3, r2
	sub	r7, #1
	strb	r3, [r1, #2]
	add	r1, #4
	cmp	r7, #0
	bge	.L26516
	ldr	r3, [sp, #0x54]
	mov	r7, #0
	cmp	r7, r3
	bcs	.L265f4
	ldr	r6, [sp, #0x40]
	add	r4, sp, #0xac
	add	r0, sp, #0x144
	ldr	r1, [sp, #0x40]
	add	r3, r6, r0
	mov	r10, r4
	ldr	r5, [sp, #0x1c]
	ldr	r4, [sp, #0x24]
	mov	r6, r3
	mov	r2, r10
	lsl	r3, r1, #1
	mov	r14, r5
	mov	r0, r4
	add	r5, r3, r2
	mov	r3, #0xfe
	sub	r6, #0xa0
	mov	r8, r3
	add	r0, #0x18
.L26552:
	ldr	r1, [sp, #0x44]
	ldr	r2, [sp, #0x3c]
	add	r3, r1, r7
	cmp	r3, r2
	bge	.L26592
	lsl	r3, #1
	mov	r1, r14
	ldrh	r2, [r1, r3]
	mov	r3, r2
	cmp	r3, #0xfe
	beq	.L26592
	ldrb	r3, [r4, #2]
	strh	r2, [r5]
	mov	r2, #2
	orr	r2, r3
	mov	r3, #0
	orr	r2, r3
	mov	r3, #3
	ldrsb	r3, [r4, r3]
	strb	r2, [r4, #2]
	cmp	r3, r7
	beq	.L26586
	mov	r1, r8
	and	r2, r1
	strb	r2, [r4, #2]
	strb	r7, [r4, #3]
.L26586:
	strb	r7, [r6]
	ldr	r2, [sp, #0x40]
	add	r2, #1
	str	r2, [sp, #0x40]
	add	r6, #1
	add	r5, #2
.L26592:
	cmp	r7, #0
	beq	.L265de
	ldr	r1, [sp, #0x44]
	sub	r3, r1, r7
	cmp	r3, #0
	blt	.L265de
	lsl	r3, #1
	mov	r1, r14
	ldrh	r2, [r1, r3]
	mov	r3, r2
	cmp	r3, #0xfe
	beq	.L265de
	strh	r2, [r5]
	mov	r2, #6
	ldrb	r3, [r0, #2]
	sub	r2, r7
	mov	r12, r2
	mov	r2, #2
	orr	r2, r3
	mov	r3, #0
	orr	r2, r3
	mov	r3, #3
	ldrsb	r3, [r0, r3]
	neg	r1, r7
	strb	r2, [r0, #2]
	cmp	r3, r1
	beq	.L265d0
	mov	r3, r8
	and	r2, r3
	strb	r2, [r0, #2]
	strb	r1, [r0, #3]
.L265d0:
	mov	r1, r12
	strb	r1, [r6]
	ldr	r2, [sp, #0x40]
	add	r2, #1
	str	r2, [sp, #0x40]
	add	r6, #1
	add	r5, #2
.L265de:
	ldr	r3, [sp, #0x54]
	add	r7, #1
	add	r4, #4
	sub	r0, #4
	cmp	r7, r3
	bcc	.L26552
	b	.L265f8

	.pool_aligned

.L265f4:
	add	r4, sp, #0xac
	mov	r10, r4
.L265f8:
	ldr	r1, [sp, #0x24]
	mov	r4, #2
	mov	r0, #6
	mov	r7, #5
.L26600:
	ldrb	r2, [r1, #2]
	mov	r3, r4
	and	r3, r2
	cmp	r3, #0
	bne	.L2660c
	strb	r0, [r1, #3]
.L2660c:
	sub	r7, #1
	add	r1, #4
	cmp	r7, #0
	bge	.L26600
	ldr	r5, [sp, #0x40]
	ldr	r2, =0xff
	lsl	r3, r5, #1
	mov	r6, r10
	strh	r2, [r6, r3]
	mov	r0, r10
	mov	r1, #1
	bl	_Func_c10e8
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x18]
	ldrh	r3, [r7, r0]
	cmp	r3, #7
	bls	.L26632
	b	.L26a84
.L26632:
	ldr	r1, [sp, #0x54]
	cmp	r1, #0xff
	bne	.L2663a
	b	.L26b8c
.L2663a:
	ldr	r2, [sp, #0x50]
	cmp	r2, #0
	bne	.L26642
	b	.L26b8c
.L26642:
	b	.L26648

	.pool_aligned
.L26648:
	mov	r0, r3
	bl	_Func_77394
	ldr	r3, [sp, #0x18]
	mov	r6, r0
	mov	r1, r11
	ldrh	r0, [r7, r3]
	bl	_Func_b84c0
	mov	r4, r9
	cmp	r4, #0
	beq	.L26668
	mov	r0, r9
	mov	r1, #1
	bl	Func_16418
.L26668:
	ldr	r3, [sp, #0x50]
	sub	r3, #1
	cmp	r3, #6
	bls	.L26672
	b	.L26b8c
.L26672:
	ldr	r2, =.L2667c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2667c:
	.word	.L266c8
	.word	.L2671e
	.word	.L267b4
	.word	.L267f8
	.word	.L26780
	.word	.L2691c
	.word	.L26698
.L26698:
	mov	r5, r11
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L266a2
	add	r3, #7
.L266a2:
	asr	r3, #3
	sub	r0, r3, #4
	add	r3, #4
	cmp	r3, #0x1d
	ble	.L266ae
	mov	r0, #0x16
.L266ae:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #9
	mov	r3, #3
	bl	Func_162d4
	mov	r9, r0
	mov	r0, #2
	bl	Func_1e71c
	ldr	r0, =0x8ac
	b	.L26a72
.L266c8:
	mov	r7, r11
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L266d2
	add	r3, #7
.L266d2:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #6
	cmp	r3, #0x1d
	ble	.L266de
	mov	r0, #0x11
.L266de:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #0xd
	mov	r3, #3
	bl	Func_162d4
	mov	r9, r0
	mov	r1, r9
	ldr	r0, =.L373dc
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e8b0
	mov	r5, #0
	mov	r1, #0x38
	ldrsh	r0, [r6, r1]
	mov	r2, r9
	mov	r1, #4
	mov	r3, #0x10
	str	r5, [sp]
	bl	Func_1ea08
	mov	r2, #0x30
	ldr	r0, =.L373e0
	mov	r1, r9
	mov	r3, #0
	bl	Func_1e8b0
	mov	r2, #0x34
	ldrsh	r0, [r6, r2]
	b	.L26772
.L2671e:
	mov	r4, r11
	ldr	r3, [r4]
	cmp	r3, #0
	bge	.L26728
	add	r3, #7
.L26728:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #6
	cmp	r3, #0x1d
	ble	.L26734
	mov	r0, #0x11
.L26734:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #0xd
	mov	r3, #3
	bl	Func_162d4
	mov	r9, r0
	mov	r1, r9
	ldr	r0, =.L373e4
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e8b0
	mov	r5, #0x3a
	ldrsh	r0, [r6, r5]
	mov	r1, #4
	mov	r5, #0
	mov	r2, r9
	mov	r3, #0x10
	str	r5, [sp]
	bl	Func_1ea08
	ldr	r0, =.L373e0
	mov	r1, r9
	mov	r2, #0x30
	mov	r3, #0
	bl	Func_1e8b0
	mov	r7, #0x36
	ldrsh	r0, [r6, r7]
.L26772:
	mov	r1, #4
	mov	r2, r9
	mov	r3, #0x38
	str	r5, [sp]
	bl	Func_1ea08
	b	.L26b8c
.L26780:
	mov	r0, r11
	ldr	r3, [r0]
	cmp	r3, #0
	bge	.L2678a
	add	r3, #7
.L2678a:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #5
	cmp	r3, #0x1d
	ble	.L26796
	mov	r0, #0x12
.L26796:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r3, #3
	mov	r2, #0xc
	bl	Func_162d4
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	mov	r9, r0
	cmp	r3, #0
	beq	.L267b0
	b	.L26a6a
.L267b0:
	ldr	r0, =0x8ab
	b	.L267ec
.L267b4:
	mov	r2, r11
	ldr	r3, [r2]
	cmp	r3, #0
	bge	.L267be
	add	r3, #7
.L267be:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #5
	cmp	r3, #0x1d
	ble	.L267ca
	mov	r0, #0x12
.L267ca:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #8
	mov	r3, #3
	mov	r2, #0xc
	bl	Func_162d4
	ldr	r4, =0x131
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r0
	cmp	r3, #0
	bne	.L267ea
	b	.L26a6a
.L267ea:
	ldr	r0, =0x8a4
.L267ec:
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e7c0
	b	.L26b8c
.L267f8:
	mov	r0, #0x9c
	lsl	r0, #1
	add	r7, r6, r0
	ldrb	r3, [r7]
	mov	r5, #0
	cmp	r3, #0
	beq	.L26808
	mov	r5, #1
.L26808:
	ldr	r1, =0x13b
	add	r1, r6
	ldrb	r3, [r1]
	mov	r8, r1
	cmp	r3, #0
	beq	.L26816
	add	r5, #1
.L26816:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r2, r6
	ldrb	r3, [r2]
	mov	r10, r2
	cmp	r3, #0
	beq	.L26826
	add	r5, #1
.L26826:
	ldr	r3, =0x13d
	add	r3, r6, r3
	str	r3, [sp, #0x28]
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26834
	add	r5, #1
.L26834:
	ldr	r4, =0x141
	add	r6, r4
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.L26840
	add	r5, #1
.L26840:
	cmp	r5, #0
	bne	.L26846
	mov	r5, #1
.L26846:
	mov	r3, #9
	sub	r1, r3, r5
	cmp	r1, #3
	bgt	.L26850
	mov	r1, #4
.L26850:
	mov	r0, r11
	ldr	r3, [r0]
	cmp	r3, #0
	bge	.L2685a
	add	r3, #7
.L2685a:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #9
	cmp	r3, #0x1d
	ble	.L26866
	mov	r0, #0xe
.L26866:
	mov	r2, #6
	add	r3, r5, #2
	str	r2, [sp]
	mov	r2, #0x10
	bl	Func_162d4
	ldrb	r3, [r7]
	mov	r9, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L2688a
	ldr	r0, =0x8a5
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e7c0
	mov	r5, #1
.L2688a:
	mov	r1, r8
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.L268a0
	lsl	r3, r5, #3
	ldr	r0, =0x8a6
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L268a0:
	mov	r2, r10
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L268b6
	lsl	r3, r5, #3
	ldr	r0, =0x8a7
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L268b6:
	ldr	r4, [sp, #0x28]
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L268cc
	lsl	r3, r5, #3
	ldr	r0, =0x8a8
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L268cc:
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.L268d4
	b	.L26a64
.L268d4:
	lsl	r3, r5, #3
	ldr	r0, =0x8a9
	b	.L26a5a

	.pool_aligned

.L2691c:
	ldr	r7, =0x131
	add	r3, r6, r7
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r5, #0
	cmp	r3, #0
	beq	.L2692e
	mov	r5, #1
.L2692e:
	mov	r0, #0x9c
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2693c
	add	r5, #1
.L2693c:
	ldr	r1, =0x13b
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26948
	add	r5, #1
.L26948:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26956
	add	r5, #1
.L26956:
	ldr	r4, =0x13d
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26962
	add	r5, #1
.L26962:
	ldr	r7, =0x141
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2696e
	add	r5, #1
.L2696e:
	mov	r0, #0xa0
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2697c
	add	r5, #1
.L2697c:
	cmp	r5, #0
	bne	.L26982
	mov	r5, #1
.L26982:
	mov	r3, #9
	sub	r1, r3, r5
	cmp	r1, #3
	bgt	.L2698c
	mov	r1, #4
.L2698c:
	mov	r2, r11
	ldr	r3, [r2]
	cmp	r3, #0
	bge	.L26996
	add	r3, #7
.L26996:
	asr	r3, #3
	sub	r0, r3, #7
	add	r3, #9
	cmp	r3, #0x1d
	ble	.L269a2
	mov	r0, #0xe
.L269a2:
	mov	r2, #6
	add	r3, r5, #2
	str	r2, [sp]
	mov	r2, #0x10
	bl	Func_162d4
	ldr	r4, =0x131
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L269ce
	ldr	r0, =0x8a4
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e7c0
	mov	r5, #1
.L269ce:
	mov	r7, #0x9c
	lsl	r7, #1
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L269e8
	lsl	r3, r5, #3
	ldr	r0, =0x8a5
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L269e8:
	ldr	r0, =0x13b
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a00
	lsl	r3, r5, #3
	ldr	r0, =0x8a6
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L26a00:
	mov	r1, #0x9e
	lsl	r1, #1
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a1a
	lsl	r3, r5, #3
	ldr	r0, =0x8a7
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L26a1a:
	ldr	r2, =0x13d
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a32
	lsl	r3, r5, #3
	ldr	r0, =0x8a8
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L26a32:
	ldr	r4, =0x141
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a4a
	lsl	r3, r5, #3
	ldr	r0, =0x8a9
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L26a4a:
	mov	r7, #0xa0
	lsl	r7, #1
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26a64
	lsl	r3, r5, #3
	ldr	r0, =0x8aa
.L26a5a:
	mov	r1, r9
	mov	r2, #0
	bl	Func_1e7c0
	add	r5, #1
.L26a64:
	cmp	r5, #0
	beq	.L26a6a
	b	.L26b8c
.L26a6a:
	mov	r0, #2
	bl	Func_1e71c
	ldr	r0, =0x8a3
.L26a72:
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e7c0
	mov	r0, #0xf
	bl	Func_1e71c
	b	.L26b8c
.L26a84:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0xff
	bne	.L26a8c
	b	.L26b8c
.L26a8c:
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x18]
	ldrh	r0, [r1, r2]
	bl	_Func_77394
	ldr	r3, [sp, #0x1c]
	ldr	r4, [sp, #0x18]
	add	r5, sp, #0x6c
	mov	r8, r0
	mov	r1, r5
	ldrh	r0, [r3, r4]
	bl	_Func_b84c0
	ldr	r3, =iwram_1e40
	ldr	r0, [r3]
	lsl	r0, #12
	bl	Func_2322
	cmp	r0, #0
	bge	.L26ab8
	ldr	r6, =0x7fff
	add	r0, r6
.L26ab8:
	ldr	r2, [r5, #4]
	asr	r3, r0, #15
	add	r2, r3
	mov	r3, #0x94
	str	r2, [r5, #4]
	lsl	r3, #1
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0x7d
	beq	.L26ad6
	cmp	r3, #0x7a
	beq	.L26ad6
	mov	r7, #0
	add	r6, sp, #0x78
	b	.L26af2
.L26ad6:
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r8
	ldrb	r3, [r3]
	ldr	r0, =0x80e
	cmp	r3, #0x7d
	bne	.L26ae6
	add	r0, #1
.L26ae6:
	add	r6, sp, #0x78
	mov	r1, r6
	mov	r2, #0xe
	bl	Func_1965c
	b	.L26b4a
.L26af2:
	cmp	r7, #0xd
	bgt	.L26b44
	mov	r0, r8
	ldrb	r3, [r0, r7]
	lsl	r2, r7, #1
	strh	r3, [r6, r2]
	add	r7, #1
	cmp	r3, #0
	bne	.L26af2
	b	.L26b46

	.pool_aligned

.L26b44:
	lsl	r2, r7, #1
.L26b46:
	ldr	r3, =0
	strh	r3, [r6, r2]
.L26b4a:
	mov	r0, r6
	bl	Func_17a64
	lsr	r2, r0, #31
	ldr	r3, [r5]
	add	r2, r0, r2
	asr	r2, #1
	sub	r3, r2
	sub	r3, #8
	str	r3, [r5]
	add	r3, r0
	cmp	r3, #0xe0
	ble	.L26b6a
	mov	r3, #0xe0
	sub	r3, r0
	str	r3, [r5]
.L26b6a:
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L26b7c
	mov	r3, #0
	str	r3, [r5]
	b	.L26b7c

	.pool_aligned

.L26b7c:
	bl	Func_1671c
	ldr	r2, [r5]
	mov	r0, r6
	ldr	r1, [sp, #0x48]
	mov	r3, #4
	bl	Func_17aa4
.L26b8c:
	ldr	r1, [sp, #0x38]
	mov	r3, #2
	neg	r3, r3
	and	r1, r3
	str	r1, [sp, #0x38]
.L26b96:
	ldr	r2, [sp, #0x30]
	cmp	r2, #0
	bne	.L26b9e
	b	.L26cdc
.L26b9e:
	ldr	r3, [sp, #0x40]
	mov	r7, #1
	cmp	r7, r3
	blt	.L26ba8
	b	.L26cdc
.L26ba8:
	mov	r5, sp
	add	r5, #0xa4
	mov	r6, #0x60
	mov	r4, #0xac
	str	r5, [sp, #0x10]
	add	r6, sp
	ldr	r5, [sp, #0x20]
	mov	r0, #2
	add	r4, sp
	mov	r8, r6
	str	r0, [sp, #0xc]
	mov	r10, r4
	add	r5, #0xc
	mov	r4, r8
.L26bc4:
	ldr	r1, [sp, #0x10]
	ldrb	r3, [r1, r7]
	ldr	r2, [sp, #0x24]
	lsl	r3, #2
	add	r3, r2, r3
	str	r3, [sp, #4]
	ldr	r3, [sp, #0xc]
	mov	r6, r10
	mov	r1, r4
	ldrh	r0, [r3, r6]
	str	r4, [sp, #8]
	bl	_Func_b84c0
	ldr	r3, =iwram_1e40
	ldr	r0, [r3]
	lsl	r0, #12
	bl	Func_2322
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bge	.L26bf2
	ldr	r1, =0x7fff
	add	r0, r1
.L26bf2:
	ldr	r3, [r4, #4]
	asr	r2, r0, #15
	add	r3, r2
	str	r3, [r4, #4]
	ldr	r2, [sp, #0x20]
	mov	r14, r5
	mov	r12, r2
	mov	r3, r14
	mov	r6, r12
	ldmia	r6!, {r0, r1, r2}
	stmia	r3!, {r0, r1, r2}
	ldr	r3, [sp, #4]
	mov	r1, #1
	ldrb	r2, [r3, #2]
	mov	r3, r1
	and	r3, r2
	cmp	r3, #0
	beq	.L26c3a
	ldr	r6, [sp, #4]
	ldr	r1, [r4]
	ldrb	r3, [r6]
	add	r1, r3
	lsr	r3, r1, #31
	ldrb	r2, [r6, #1]
	add	r1, r3
	ldr	r3, [r4, #4]
	add	r3, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r1, #1
	asr	r3, #1
	str	r1, [r4]
	strb	r1, [r6]
	str	r3, [r4, #4]
	strb	r3, [r6, #1]
	b	.L26c50
.L26c3a:
	ldrh	r3, [r5, #6]
	ldrb	r2, [r5, #4]
	ldr	r0, [sp, #4]
	lsl	r3, #23
	lsr	r3, #23
	add	r2, #8
	strb	r1, [r0, #2]
	str	r3, [r4]
	strb	r3, [r0]
	str	r2, [r4, #4]
	strb	r2, [r0, #1]
.L26c50:
	ldrb	r2, [r5, #5]
	mov	r1, #0xd
	neg	r1, r1
	mov	r3, r1
	mov	r0, r2
	mov	r2, r8
	and	r0, r3
	ldr	r1, [r2]
	mov	r3, #4
	orr	r0, r3
	ldr	r3, .L26c8c	@ 0x1ff
	sub	r1, #8
	and	r1, r3
	ldr	r2, .L26c90	@ 0xfffffe00
	ldrh	r3, [r5, #6]
	and	r3, r2
	orr	r3, r1
	mov	r6, r8
	strh	r3, [r5, #6]
	ldr	r3, [r6, #4]
	sub	r3, #0xc
	strb	r0, [r5, #5]
	strb	r3, [r5, #4]
	ldr	r1, [sp, #0x54]
	cmp	r1, #0xff
	bne	.L26c9c
	mov	r2, #4
	neg	r2, r2
	and	r0, r2
	b	.L26ca6

	.align	2, 0
.L26c8c:
	.word	0x1ff
.L26c90:
	.word	0xfffffe00
	.pool

.L26c9c:
	mov	r3, #4
	neg	r3, r3
	and	r0, r3
	mov	r3, #1
	orr	r0, r3
.L26ca6:
	strb	r0, [r5, #5]
	ldr	r2, [sp, #0x2c]
	mov	r3, #0x1f
	mov	r6, #0x3f
	and	r2, r3
	neg	r6, r6
	ldrb	r3, [r5, #7]
	mov	r1, r6
	lsl	r2, #1
	and	r3, r1
	orr	r3, r2
	mov	r0, r5
	strb	r3, [r5, #7]
	mov	r1, #0xf0
	str	r4, [sp, #8]
	bl	Func_3dec
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x40]
	add	r0, #2
	add	r7, #1
	add	r5, #0xc
	str	r0, [sp, #0xc]
	ldr	r4, [sp, #8]
	cmp	r7, r1
	bge	.L26cdc
	b	.L26bc4
.L26cdc:
	ldr	r3, =iwram_1c94
	ldr	r6, [r3]
	ldr	r3, =iwram_1b04
	ldr	r5, [r3]
	ldr	r3, =iwram_1f34
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0xd8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L26d0c
	add	r2, #0xdc
	ldr	r3, [r2]
	mov	r5, #0
	mov	r6, #0
	cmp	r3, #0
	bne	.L26d08
	mov	r3, #0x3c
	str	r3, [r2]
	mov	r5, #1
	mov	r6, #1
	b	.L26d0c
.L26d08:
	sub	r3, #1
	str	r3, [r2]
.L26d0c:
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L26d8e
	ldr	r2, [sp, #0x1c]
	ldr	r3, [sp, #0x18]
	mov	r5, #0
	ldrh	r4, [r2, r3]
	ldr	r7, [sp, #0x4c]
	str	r5, [sp, #0x38]
	mov	r3, #0x58
	ldrsh	r3, [r7, r3]
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	cmp	r3, #0xff
	beq	.L26d54
	cmp	r3, r4
	bne	.L26d38
	mov	r0, #0x80
	lsl	r0, #1
	b	.L26d54
.L26d38:
	add	r1, #1
	cmp	r1, #5
	bgt	.L26d54
	lsl	r3, r1, #1
	ldr	r5, [sp, #0x4c]
	add	r3, #0x58
	ldrsh	r3, [r5, r3]
	cmp	r3, #0xff
	beq	.L26d54
	cmp	r3, r4
	bne	.L26d38
	mov	r0, #0x80
	lsl	r0, #1
	orr	r0, r1
.L26d54:
	cmp	r0, #0
	bge	.L26d8a
	ldr	r2, [sp, #0x4c]
	add	r2, #0x66
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	mov	r5, #0xc0
	mov	r1, #0
	lsl	r5, #1
	cmp	r3, #0xff
	beq	.L26d8a
	cmp	r3, r4
	bne	.L26d72
	mov	r0, r5
	b	.L26d8a
.L26d72:
	add	r1, #1
	add	r2, #2
	cmp	r1, #5
	bgt	.L26d8a
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	cmp	r3, #0xff
	beq	.L26d8a
	cmp	r3, r4
	bne	.L26d72
	mov	r0, r5
	orr	r0, r1
.L26d8a:
	str	r0, [sp, #0x44]
	b	.L26df6
.L26d8e:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0xff
	beq	.L26df6
	mov	r3, #0x90
	and	r3, r5
	cmp	r3, #0
	beq	.L26dc4
	mov	r0, #0x6f
	bl	_Func_f9080
.L26da2:
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	mov	r0, r1
	ldr	r1, [sp, #0x3c]
	bl	Func_b1c_from_thumb
	str	r0, [sp, #0x44]
	ldr	r4, [sp, #0x1c]
	lsl	r2, r0, #1
	ldrh	r3, [r4, r2]
	cmp	r3, #0xfe
	beq	.L26da2
	ldr	r7, [sp, #0x38]
	mov	r3, #1
	orr	r7, r3
	str	r7, [sp, #0x38]
.L26dc4:
	mov	r3, #0x60
	and	r3, r5
	cmp	r3, #0
	beq	.L26df6
	mov	r0, #0x6f
	bl	_Func_f9080
.L26dd2:
	ldr	r0, [sp, #0x44]
	ldr	r1, [sp, #0x3c]
	add	r3, r0, r1
	sub	r3, #1
	mov	r0, r3
	str	r3, [sp, #0x44]
	bl	Func_b1c_from_thumb
	str	r0, [sp, #0x44]
	ldr	r2, [sp, #0x1c]
	lsl	r3, r0, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0xfe
	beq	.L26dd2
	ldr	r4, [sp, #0x38]
	mov	r3, #1
	orr	r4, r3
	str	r4, [sp, #0x38]
.L26df6:
	ldr	r3, =iwram_1f34
	ldr	r3, [r3]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	beq	.L26e08
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.L26e16
.L26e08:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r5, #1
	neg	r5, r5
	str	r5, [sp, #0x44]
	b	.L26e26
.L26e16:
	mov	r0, #1
	bl	Func_30f8
	ldr	r6, [sp, #0x38]
	cmp	r6, #0
	beq	.L26e26
	bl	.L26388
.L26e26:
	mov	r0, #1
	bl	Func_30f8
	mov	r7, r9
	ldr	r0, [sp, #0x34]
	bl	Func_3f3c
	cmp	r7, #0
	beq	.L26e40
	mov	r0, r9
	mov	r1, #1
	bl	Func_16418
.L26e40:
	ldr	r0, [sp, #0x48]
	mov	r1, #1
	bl	Func_16418
	mov	r1, #0
	ldr	r0, [sp, #0x1c]
	bl	_Func_c10e8
	ldr	r3, =iwram_1f34
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x28]
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, [sp, #0x44]
	add	sp, #0x144
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_26080

.thumb_func_start Func_26e80
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f34
	ldr	r7, [r3]
	sub	sp, #8
	cmp	r7, #0
	bne	.L26e8e
	b	.L26f8e
.L26e8e:
	ldr	r0, [r7, #0x28]
	ldr	r5, [r7, #0x2c]
	cmp	r0, r5
	beq	.L26eb4
	sub	r6, r0, r5
	mov	r0, r6
	mov	r1, #3
	bl	Func_af0_from_thumb
	cmp	r0, #0
	bne	.L26eac
	sub	r0, #1
	cmp	r6, #0
	blt	.L26eac
	mov	r0, #1
.L26eac:
	add	r0, r5, r0
	str	r0, [r7, #0x2c]
	bl	_Func_b8fd4
.L26eb4:
	mov	r5, r7
	mov	r6, r7
	add	r5, #0x24
	mov	r2, #2
.L26ebc:
	ldrb	r3, [r5]
	add	r5, #1
	cmp	r3, #0
	beq	.L26ed0
	mov	r0, r6
	mov	r1, #0xf0
	str	r2, [sp, #4]
	bl	Func_3dec
	ldr	r2, [sp, #4]
.L26ed0:
	sub	r2, #1
	add	r6, #0xc
	cmp	r2, #0
	bge	.L26ebc
	ldr	r0, =0x6006680
	bl	Func_219c8
	ldr	r3, [r7, #0x50]
	cmp	r3, #0
	beq	.L26f8e
	ldr	r3, =iwram_1e74
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0x52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L26f0e
	mov	r3, #0
	str	r3, [r7, #0x4c]
	b	.L26f8e
.L26ef8:
	ldrh	r3, [r2, #0xc]
	cmp	r3, #0x56
	bne	.L26f34
	ldrh	r3, [r2, #0xe]
	cmp	r3, #0x53
	bne	.L26f34
	mov	r3, #0xe1
	lsl	r3, #2
	str	r3, [r7, #0x4c]
	mov	r6, r3
	b	.L26f34
.L26f0e:
	ldr	r6, [r7, #0x4c]
	cmp	r6, #0
	bge	.L26f38
	mov	r3, r2
	add	r3, #0x50
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2024
	lsl	r2, #3
	add	r2, r3
	ldrh	r3, [r2, #8]
	cmp	r3, #0x45
	bne	.L26f34
	ldrh	r3, [r2, #0xa]
	cmp	r3, #0x44
	beq	.L26ef8
.L26f34:
	cmp	r6, #0
	blt	.L26f8e
.L26f38:
	ldr	r3, [r7, #0x44]
	cmp	r3, #0
	bne	.L26f4c
	ldr	r3, [r7, #0x48]
	cmp	r3, #0
	bne	.L26f4c
	bl	Func_21c34
	ldr	r6, [r7, #0x4c]
	str	r0, [r7, #0x44]
.L26f4c:
	cmp	r6, #0
	ble	.L26f56
	sub	r3, r6, #1
	str	r3, [r7, #0x4c]
	mov	r6, r3
.L26f56:
	cmp	r6, #0
	blt	.L26f8e
	mov	r0, r6
	add	r0, #0x3b
	mov	r1, #0x3c
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r5, #0
	beq	.L26f7a
	lsl	r3, r5, #4
	sub	r3, r5
	lsl	r3, #2
	cmp	r3, r6
	bne	.L26f7a
	mov	r0, #0x6c
	bl	_Func_f9080
.L26f7a:
	ldr	r2, [r7, #0x44]
	cmp	r2, #0
	beq	.L26f8e
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #2
	mov	r3, #0x10
	bl	Func_1ea08
.L26f8e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_26e80

.thumb_func_start Func_26fa8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e74
	ldr	r1, =0x22b
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	add	r3, r1
	ldrb	r3, [r3]
	sub	sp, #0x84
	cmp	r3, #2
	beq	.L26fce
	cmp	r3, #2
	ble	.L26fce
	mov	r1, #1
	mov	r8, r1
	cmp	r3, #4
	ble	.L26fd2
.L26fce:
	mov	r3, #0
	mov	r8, r3
.L26fd2:
	mov	r1, r8
	cmp	r1, #0
	bne	.L26ff0
	mov	r3, r2
	add	r3, #0x43
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L26fea
	mov	r3, #1
	mov	r8, r3
.L26fea:
	mov	r1, r8
	cmp	r1, #0
	beq	.L27042
.L26ff0:
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r3, #4
	mov	r1, #7
	mov	r2, #0x1e
	mov	r0, #0
	bl	Func_162d4
	mov	r10, r0
	bl	Func_16738
	add	r5, sp, #4
	mov	r1, r5
	mov	r2, #0x34
	ldr	r0, =0x845
	bl	Func_1965c
	mov	r0, r5
	mov	r1, r10
	mov	r2, #0
	mov	r3, #4
	bl	Func_17aa4
	ldr	r7, =iwram_1c94
	ldr	r5, =iwram_1f34
	mov	r6, #3
.L27024:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r7]
	and	r3, r6
	cmp	r3, #0
	bne	.L2703a
	ldr	r3, [r5]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	bne	.L27024
.L2703a:
	mov	r0, r10
	mov	r1, #1
	bl	Func_16418
.L27042:
	mov	r0, r8
	add	sp, #0x84
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_26fa8

.thumb_func_start Func_2706c
	push	{r5, lr}
	ldrb	r3, [r0, #1]
	mov	r2, #0xf
	and	r2, r3
	mov	r5, #0
	cmp	r2, #1
	bne	.L2707c
	mov	r5, #1
.L2707c:
	cmp	r2, #0xb
	bne	.L27082
	mov	r5, #2
.L27082:
	ldrb	r3, [r0, #3]
	cmp	r3, #3
	bne	.L2708a
	mov	r5, #3
.L2708a:
	cmp	r3, #4
	bne	.L27090
	mov	r5, #4
.L27090:
	cmp	r3, #0x40
	bne	.L27096
	mov	r5, #6
.L27096:
	ldrb	r0, [r0, #3]
	bl	_Func_79ef8
	cmp	r0, #0
	beq	.L270a2
	mov	r5, #5
.L270a2:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_2706c

.thumb_func_start Func_270ac
	push	{r5, lr}
	mov	r5, r9
	push	{r5}
	sub	sp, #8
	mov	r5, sp
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r3, #0xff
	strh	r3, [r5]
	bl	Func_2281c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c10e8
	add	sp, #8
	pop	{r3}
	mov	r9, r3
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_270ac

.thumb_func_start Func_270d8
	push	{r5, r6, lr}
	mov	r6, r9
	push	{r6}
	sub	sp, #0x84
	mov	r2, r9
	mov	r6, sp
	add	r3, sp, #0x80
	mov	r5, r2
	str	r2, [r3]
	mov	r1, r6
	mov	r2, #0x34
	sub	r5, #8
	ldr	r0, =0x80d
	bl	Func_1965c
	ldr	r3, [r5]
	mov	r0, r6
	ldr	r1, [r3, #0x44]
	mov	r2, #0
	mov	r3, #4
	bl	Func_17aa4
	add	sp, #0x84
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_270d8

.thumb_func_start Func_27114
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x64
	str	r0, [sp, #0x58]
	mov	r0, #0x80
	lsl	r0, #1
	str	r0, [sp, #0x44]
	mov	r0, #0x80
	str	r1, [sp, #0x54]
	lsl	r0, #3
	mov	r1, #0
	str	r2, [sp, #0x50]
	str	r1, [sp, #0x3c]
	str	r1, [sp, #0x38]
	bl	Func_40b4
	str	r0, [sp, #0x34]
	mov	r0, #0x80
	lsl	r0, #2
	bl	Func_40b4
	mov	r1, #0x82
	str	r0, [sp, #0x30]
	lsl	r1, #1
	mov	r0, #0x39
	bl	Func_48f4
	mov	r2, sp
	add	r2, #0x5c
	str	r2, [sp, #0x24]
	str	r0, [r2]
	mov	r1, #0
	ldr	r0, [sp, #0x34]
	bl	Func_21c64
	ldr	r0, =0x6006000
	bl	Func_21a18
	ldr	r0, =0x6006680
	bl	Func_219c8
	bl	Func_21848
	ldr	r3, =iwram_1e74
	ldr	r2, [sp, #0x24]
	ldr	r0, [r3]
	ldr	r3, [r2]
	mov	r1, #0x80
	lsl	r1, #24
	add	r3, #0xe4
	mov	r2, #7
.L27184:
	sub	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #0
	bge	.L27184
	ldr	r2, [sp, #0x24]
	ldr	r3, [r2]
	mov	r1, #0
	add	r3, #0x24
	mov	r2, #2
.L27196:
	sub	r2, #1
	strb	r1, [r3]
	add	r3, #1
	cmp	r2, #0
	bge	.L27196
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	str	r3, [r1, #0x28]
	str	r3, [r1, #0x2c]
	str	r3, [r1, #0x3c]
	str	r3, [r1, #0x40]
	str	r3, [r1, #0x50]
	str	r3, [r1, #0x48]
	str	r3, [r1, #0x44]
	str	r2, [r1, #0x4c]
	mov	r3, r0
	add	r3, #0x44
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2729e
	mov	r3, #1
	ldr	r2, =ewram_2224
	str	r3, [r1, #0x50]
	ldr	r3, .L271e4	@ 0x56
	strh	r3, [r2, #8]
	ldr	r3, .L271e8	@ 0x53
	strh	r3, [r2, #0xa]
	strh	r3, [r2, #0xc]
	ldr	r3, .L271ec	@ 0x54
	mov	r5, #0
	strh	r3, [r2, #0xe]
	mov	r7, r0
	mov	r6, r0
	add	r7, #0x50
	add	r6, #0x52
	b	.L2727a

	.align	2, 0
.L271e4:
	.word	0x56
.L271e8:
	.word	0x53
.L271ec:
	.word	0x54
	.pool

.L27200:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L27220
	add	r5, #1
	cmp	r5, #0x18
	ble	.L27274
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0x50]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	str	r0, [r3, #0x50]
	b	.L2729e
.L27220:
	ldrh	r2, [r1, #8]
	mov	r3, r2
	mov	r5, #0
	cmp	r3, #0x56
	bne	.L2723c
	ldrh	r3, [r1, #0xa]
	cmp	r3, #0x53
	bne	.L2723c
	ldrh	r3, [r1, #0xc]
	cmp	r3, #0x53
	bne	.L2723c
	ldrh	r3, [r1, #0xe]
	cmp	r3, #0x54
	beq	.L2729e
.L2723c:
	mov	r3, r2
	cmp	r3, #0x45
	bne	.L27254
	ldrh	r3, [r1, #0xa]
	cmp	r3, #0x44
	bne	.L27254
	ldrh	r3, [r1, #0xc]
	cmp	r3, #0x56
	bne	.L27254
	ldrh	r3, [r1, #0xe]
	cmp	r3, #0x53
	beq	.L2729e
.L27254:
	ldrh	r3, [r1]
	cmp	r3, #0x45
	bne	.L2726c
	ldrh	r3, [r1, #2]
	cmp	r3, #0x58
	bne	.L2726c
	ldrh	r3, [r1, #4]
	cmp	r3, #0x45
	bne	.L2726c
	ldrh	r3, [r1, #6]
	cmp	r3, #0x43
	beq	.L27274
.L2726c:
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #0x50]
	b	.L27296
.L27274:
	mov	r0, #1
	bl	Func_30f8
.L2727a:
	ldrb	r2, [r7]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldrb	r0, [r6]
	ldr	r3, =ewram_2024
	lsl	r2, #3
	add	r1, r2, r3
	cmp	r0, #0
	beq	.L27200
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x50]
.L27296:
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	mov	r2, #0
	str	r2, [r3, #0x50]
.L2729e:
	mov	r1, #0xc8
	ldr	r0, =Func_26e80
	lsl	r1, #4
	bl	Func_41d8
.L272a8:
	add	r1, sp, #0x64
	mov	r9, r1
	bl	Func_270ac
	ldr	r2, [sp, #0x24]
	ldr	r0, [r2]
	mov	r3, r0
	add	r3, #0x26
	mov	r1, #0
	strb	r1, [r3]
	mov	r2, r0
	mov	r3, #1
	neg	r3, r3
	add	r2, #0xe0
	str	r3, [r2]
	mov	r3, r0
	add	r3, #0xd8
	mov	r0, #0xb7
	str	r1, [r3]
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L272ea
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r1, r2
	mov	r3, #1
	add	r1, #0xd8
	str	r3, [r1]
	add	r2, #0xdc
	mov	r3, #0x3c
	str	r3, [r2]
.L272ea:
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	ble	.L272fa
	mov	r0, #0
	bl	Func_21e6c
	mov	r6, r0
	b	.L272fc
.L272fa:
	mov	r6, #0xe
.L272fc:
	cmp	r6, #7
	bne	.L27340
	mov	r0, #0xc
	bl	Func_4938
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	mov	r6, r0
	cmp	r3, #0
	beq	.L2731e
	ldr	r3, =iwram_1ae8
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	mov	r0, #2
	cmp	r2, #0
	bne	.L27320
.L2731e:
	mov	r0, #1
.L27320:
	mov	r1, r6
	bl	_Func_b6c08
	mov	r5, r0
	mov	r0, #1
	bl	Func_30f8
	ldrh	r2, [r6]
	mov	r0, r6
	mov	r1, r5
	bl	Func_23178
	mov	r0, r6
	bl	Func_2df0
	b	.L272a8
.L27340:
	cmp	r6, #4
	bne	.L27376
	bl	Func_26fa8
	cmp	r0, #0
	bne	.L272a8
	ldr	r2, [sp, #0x58]
	mov	r1, #1
	str	r2, [sp, #0x4c]
	str	r1, [sp, #0x50]
	ldr	r1, [sp, #0x54]
	ldrh	r3, [r1]
	strh	r3, [r2]
	ldr	r1, [sp, #0x4c]
	ldr	r3, =0x7ffe
	strh	r3, [r1, #4]
	ldr	r2, [sp, #0x4c]
	mov	r3, #0x63
	strh	r3, [r2, #6]
	ldr	r3, [sp, #0x4c]
	strh	r0, [r3, #8]
	ldr	r0, [sp, #0x4c]
	mov	r3, #0x80
	lsl	r3, #1
	strh	r3, [r0, #0xa]
	bl	.L28020
.L27376:
	cmp	r6, #0xe
	beq	.L2737e
	bl	.L28020
.L2737e:
	mov	r0, #0x9a
	bl	_Func_f9080
	ldr	r2, [sp, #0x50]
	mov	r1, #0
	str	r1, [sp, #0x2c]
	cmp	r1, r2
	blt	.L27392
	bl	.L28020
.L27392:
	mov	r3, sp
	add	r3, #0x60
	str	r1, [sp, #0x1c]
	str	r1, [sp, #0x18]
	str	r1, [sp, #0x20]
	str	r3, [sp, #0x14]
.L2739e:
	ldr	r0, [sp, #0x2c]
	cmp	r0, #0
	bne	.L273cc
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	mov	r0, #0
	add	r1, #0x54
	bl	_Func_be0b4
	b	.L273e6

	.pool_aligned

.L273cc:
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r0]
	add	r3, r1, r3
	mov	r2, r3
	add	r2, #0x50
	mov	r1, #3
.L273da:
	ldrb	r3, [r2]
	sub	r1, #1
	strb	r3, [r2, #4]
	add	r2, #1
	cmp	r1, #0
	bge	.L273da
.L273e6:
	ldr	r3, [sp, #0x18]
	ldr	r2, [sp, #0x58]
	add	r2, r3
	str	r2, [sp, #0x4c]
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x54]
	ldrh	r0, [r0, r1]
	str	r0, [sp, #0x40]
	bl	_Func_77394
	ldr	r3, =iwram_1f34
	str	r0, [sp, #0x48]
	ldr	r5, [r3]
	ldr	r2, [sp, #0x40]
	mov	r3, r5
	add	r3, #0xe0
	str	r2, [r3]
	mov	r2, #0
	ldr	r3, =0x80000400
	str	r2, [r5, #0x40]
	add	r5, #0x18
	str	r3, [r5, #4]
	str	r2, [r5, #8]
	ldr	r0, [sp, #0x48]
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r0, r1
	ldrb	r0, [r3]
	ldr	r1, [sp, #0x30]
	bl	Func_21b80
	ldr	r3, .L27460	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	ldrh	r2, [r5, #6]
	ldr	r3, =0xfffffe00
	and	r3, r2
	strh	r3, [r5, #6]
	ldrb	r2, [r5, #9]
	mov	r3, #0x80
	strb	r3, [r5, #4]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xe0
	orr	r3, r2
	strb	r3, [r5, #9]
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r3, #1
	add	r2, #0x26
	strb	r3, [r2]
.L27454:
	bl	Func_1e318
	ldr	r5, =iwram_1f34
	ldr	r1, [r5]
	b	.L27474

	.align	2, 0
.L27460:
	.word	0x3ff
	.pool

.L27474:
	mov	r3, r1
	add	r3, #0x24
	mov	r7, #0
	strb	r7, [r3]
	ldr	r2, [sp, #0x1c]
	mov	r3, #0x80
	add	r2, #0xe4
	lsl	r3, #24
	str	r3, [r1, r2]
	add	r1, sp, #0x40
	ldr	r2, [sp, #0x14]
	ldrh	r1, [r1]
	strh	r1, [r2]
	ldr	r2, [sp, #0x14]
	mov	r3, #0xff
	ldr	r0, =0
	strh	r3, [r2, #2]
	mov	r1, #1
	mov	r8, r0
	ldr	r0, [sp, #0x14]
	bl	_Func_c10e8
	ldr	r0, [sp, #0x14]
	bl	Func_2281c
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #1
	bl	Func_21e6c
	mov	r6, r0
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #2
	neg	r3, r3
	cmp	r6, r3
	bne	.L27506
	b	.L274c8

	.pool_aligned

.L274c8:
	mov	r0, #0xc
	bl	Func_4938
	mov	r5, r0
	mov	r1, r5
	mov	r0, #1
	bl	_Func_b6c08
	mov	r6, r0
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	mov	r1, r8
	add	r3, #0x26
	strb	r1, [r3]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r5
	ldr	r2, [sp, #0x40]
	mov	r1, r6
	bl	Func_23178
	ldr	r2, [sp, #0x24]
	ldr	r3, [r2]
	mov	r2, #1
	add	r3, #0x26
	strb	r2, [r3]
	mov	r0, r5
	bl	Func_2df0
	b	.L2739e
.L27506:
	ldr	r0, [sp, #0x14]
	mov	r1, #0
	bl	_Func_c10e8
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L27532
	ldr	r0, [sp, #0x2c]
	cmp	r0, #0
	bne	.L27520
	bl	.L28014
.L27520:
	sub	r0, #1
	lsl	r1, r0, #2
	lsl	r2, r0, #4
	lsl	r3, r0, #1
	str	r0, [sp, #0x2c]
	str	r1, [sp, #0x1c]
	str	r2, [sp, #0x18]
	str	r3, [sp, #0x20]
	b	.L2739e
.L27532:
	ldr	r5, [r5]
	ldr	r3, [r5, #0x4c]
	cmp	r3, #0
	bne	.L2753c
	mov	r6, #3
.L2753c:
	ldr	r3, =0x80002400
	str	r7, [r5, #8]
	str	r3, [r5, #4]
	ldr	r0, [sp, #0x34]
	mov	r1, r6
	bl	Func_21c64
	ldr	r3, .L27568	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	cmp	r6, #0xf
	bne	.L2757c
	ldrh	r3, [r5, #6]
	ldr	r2, =0xfffffe00
	and	r2, r3
	ldr	r3, .L2756c	@ 0x80
	b	.L27584

	.align	2, 0
.L27568:
	.word	0x3ff
.L2756c:
	.word	0x80
	.pool

.L2757c:
	ldrh	r3, [r5, #6]
	ldr	r2, =0xfffffe00
	and	r2, r3
	ldr	r3, .L275a8	@ 0x60
.L27584:
	orr	r2, r3
	strh	r2, [r5, #6]
	mov	r3, #0x88
	strb	r3, [r5, #4]
	ldr	r0, [sp, #0x24]
	ldr	r2, [r0]
	mov	r3, #1
	add	r2, #0x24
	strb	r3, [r2]
	cmp	r6, #0x10
	bls	.L2759e
	bl	.L27f82
.L2759e:
	ldr	r2, =.L275b8
	lsl	r3, r6, #2
	ldr	r3, [r3, r2]
	b	.L275b4

	.align	2, 0
.L275a8:
	.word	0x60
	.pool

.L275b4:
	mov	pc, r3
	.align	2, 0
.L275b8:
	.word	.L275fc
	.word	.L27670
	.word	.L27d6a
	.word	.L27f7e
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27f82
	.word	.L27b5c
	.word	.L278e4
.L275fc:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x11
	mov	r2, #0xb
	mov	r3, #3
	mov	r0, #0xb
	bl	Func_162d4
	mov	r11, r0
	mov	r1, r11
	ldr	r0, =0x1f
	mov	r2, #0x10
	mov	r3, #0
	bl	Func_1e7c0
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #6]
	and	r3, r2
	ldr	r2, .L27654	@ 0x40
	orr	r3, r2
	strh	r3, [r1, #6]
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r3, #0
	ldr	r0, [sp, #0x40]
	mov	r1, #1
	mov	r2, #1
	bl	Func_26080
	mov	r1, #1
	mov	r6, r0
	mov	r0, r11
	bl	Func_16418
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L27650
	b	.L27454
.L27650:
	b	.L27660

	.align	2, 0
.L27654:
	.word	0x40
	.pool

.L27660:
	ldr	r1, [sp, #0x4c]
	mov	r0, #0
	mov	r3, #1
	str	r0, [sp, #0x3c]
	str	r6, [sp, #0x44]
	strh	r3, [r1, #0xc]
	bl	.L27f82
.L27670:
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r6, #0
	ldr	r3, =iwram_1f34
	ldr	r3, [r3]
	str	r6, [r3, #0x34]
	str	r6, [r3, #0x30]
	str	r6, [r3, #0x38]
.L27682:
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	mov	r3, #0x96
	add	r3, r1
	ldrh	r2, [r1, #6]
	mov	r8, r3
	ldr	r3, =0xfffffe00
	and	r3, r2
	ldr	r2, .L276bc	@ 0x30
	orr	r3, r2
	strh	r3, [r1, #6]
	ldr	r2, [sp, #0x48]
	mov	r3, #0x58
	ldrh	r3, [r2, r3]
	ldr	r2, =0x3fff
	mov	r0, #0x74
	mov	r5, r2
	add	r0, r1
	and	r5, r3
	mov	r10, r0
	mov	r4, #0
	mov	r1, #0
	cmp	r5, #0
	beq	.L27700
	ldr	r7, [sp, #0x48]
	mov	r6, r8
	add	r7, #0x58
	mov	r9, r2
	b	.L276cc

	.align	2, 0
.L276bc:
	.word	0x30
	.pool

.L276cc:
	mov	r0, r5
	str	r1, [sp, #0x10]
	str	r4, [sp, #4]
	bl	_Func_78b9c
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	ldr	r1, [sp, #0x10]
	ldr	r4, [sp, #4]
	cmp	r3, #0
	beq	.L276ee
	mov	r3, r10
	strb	r1, [r3, r4]
	strh	r5, [r6]
	add	r4, #1
	add	r6, #2
.L276ee:
	add	r1, #1
	cmp	r1, #0x20
	beq	.L27700
	add	r7, #4
	ldrh	r3, [r7]
	mov	r5, r9
	and	r5, r3
	cmp	r5, #0
	bne	.L276cc
.L27700:
	mov	r3, #0
	mov	r0, r10
	strb	r3, [r0, r4]
	ldr	r3, =0
	lsl	r2, r4, #1
	mov	r1, r8
	strh	r3, [r2, r1]
	ldr	r0, [sp, #0x40]
	mov	r2, r4
	bl	Func_2592c
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	bne	.L27722
	b	.L27454
.L27722:
	mov	r0, r10
	ldrb	r3, [r0, r6]
	ldr	r1, [sp, #0x48]
	lsl	r3, #2
	add	r3, #0x58
	ldrh	r3, [r1, r3]
	ldr	r2, =0x3fff
	and	r2, r3
	mov	r0, r2
	str	r2, [sp, #0x38]
	bl	_Func_78b9c
	mov	r6, r0
	ldr	r0, [sp, #0x24]
	b	.L27748

	.pool_aligned

.L27748:
	ldrb	r3, [r6, #8]
	ldr	r5, [r0]
	mov	r0, #0x80
	mov	r8, r3
	bl	Func_40b4
	ldr	r3, =iwram_1e8c
	ldr	r7, [r3]
	mov	r3, #6
	str	r3, [sp]
	mov	r10, r0
	mov	r1, #0x11
	mov	r2, #0x12
	mov	r3, #3
	mov	r0, #8
	bl	Func_162d4
	ldr	r1, [sp, #0x24]
	mov	r11, r0
	ldr	r0, [r1]
	ldr	r1, =0xfffffe00
	ldrh	r2, [r0, #6]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .L277ac	@ 0x28
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r3, =0x40000400
	add	r5, #0xc
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	mov	r3, r11
	ldrh	r2, [r3, #0xc]
	ldr	r3, .L277b0	@ 0x1ff
	lsl	r2, #3
	add	r2, #8
	and	r2, r3
	ldrh	r3, [r5, #6]
	mov	r0, r11
	and	r1, r3
	ldrh	r3, [r0, #0xe]
	lsl	r3, #3
	orr	r1, r2
	add	r3, #4
	strh	r1, [r5, #6]
	strb	r3, [r5, #4]
	mov	r1, r10
	b	.L277c0

	.align	2, 0
.L277ac:
	.word	0x28
.L277b0:
	.word	0x1ff
	.pool

.L277c0:
	ldr	r0, [sp, #0x38]
	bl	Func_21b30
	ldr	r3, =0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	ldr	r1, [sp, #0x24]
	ldr	r2, [r1]
	mov	r3, #1
	add	r2, #0x25
	strb	r3, [r2]
	ldr	r3, =0xea7
	add	r2, r7, r3
	mov	r3, #5
	strb	r3, [r2]
	ldr	r1, [sp, #0x48]
	ldrb	r2, [r6, #9]
	mov	r0, #0x3a
	ldrsh	r3, [r1, r0]
	cmp	r2, r3
	ble	.L27808
	mov	r0, #2
	bl	Func_1e71c
	b	.L2781a

	.pool_aligned

.L27808:
	ldr	r2, [sp, #0x48]
	ldr	r0, =0x13d
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2781a
	mov	r0, #9
	bl	Func_1e71c
.L2781a:
	ldr	r1, [sp, #0x38]
	ldr	r0, =0x333
	mov	r2, #0x10
	add	r0, r1, r0
	mov	r3, #0
	mov	r1, r11
	bl	Func_1e7c0
	mov	r5, #0
	ldrb	r0, [r6, #9]
	mov	r1, #2
	mov	r2, r11
	mov	r3, #0x68
	str	r5, [sp]
	bl	Func_1e9d4
	ldr	r3, =0xea7
	add	r2, r7, r3
	mov	r3, #0xf
	strb	r3, [r2]
	mov	r0, #0xf
	bl	Func_1e71c
	ldr	r1, =0xf01f
	mov	r0, r11
	mov	r2, #0xb
	mov	r3, #0
	str	r5, [sp]
	bl	Func_19000
	mov	r3, #0
	ldr	r1, =0xf01e
	mov	r0, r11
	mov	r2, #0xc
	str	r5, [sp]
	bl	Func_19000
	ldrb	r3, [r6, #2]
	cmp	r3, #4
	beq	.L2787c
	ldr	r0, =0x5001
	mov	r1, r3
	add	r1, r0
	mov	r2, #0xf
	mov	r0, r11
	mov	r3, #0
	str	r5, [sp]
	bl	Func_19000
.L2787c:
	ldr	r2, [sp, #0x4c]
	mov	r1, r8
	strh	r1, [r2, #0xc]
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r0, r6
	bl	Func_2706c
	ldrb	r1, [r6]
	mov	r3, r0
	mov	r2, r8
	ldr	r0, [sp, #0x40]
	bl	Func_26080
	mov	r6, r0
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	ldr	r5, .L278c8	@ 0
	add	r3, #0x25
	strb	r5, [r3]
	mov	r0, r10
	bl	Func_3f3c
	mov	r1, #1
	mov	r0, r11
	bl	Func_16418
	mov	r1, #1
	neg	r1, r1
	cmp	r6, r1
	bne	.L278be
	b	.L27682
.L278be:
	mov	r2, #1
	str	r2, [sp, #0x3c]
.L278c2:
	str	r6, [sp, #0x44]
	b	.L27f82

	.align	2, 0
.L278c8:
	.word	0
	.pool

.L278e4:
	mov	r0, #0x70
	bl	_Func_f9080
	ldr	r3, =iwram_1f34
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x34]
	str	r3, [r2, #0x30]
	str	r3, [r2, #0x38]
.L278f6:
	ldr	r3, [sp, #0x24]
	ldr	r1, [r3]
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #6]
	and	r3, r2
	ldr	r2, .L27934	@ 0x50
	orr	r3, r2
	strh	r3, [r1, #6]
	ldr	r0, [sp, #0x14]
	bl	Func_2281c
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x1c]
	ldr	r2, [r0]
	add	r2, r1
	add	r2, #0x54
	mov	r1, #0
	mov	r0, #0
	bl	Func_24934
	mov	r6, r0
	ldr	r0, [sp, #0x14]
	bl	Func_2281c
	mov	r2, #1
	neg	r2, r2
	cmp	r6, r2
	bne	.L27930
	b	.L27454
.L27930:
	b	.L27940

	.align	2, 0
.L27934:
	.word	0x50
	.pool

.L27940:
	mov	r3, #6
	mov	r0, #1
	str	r3, [sp, #0x3c]
	str	r6, [sp, #0x38]
	bl	Func_30f8
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	mov	r0, r6
	add	r3, #0xc
	mov	r8, r3
	bl	_Func_797d4
	mov	r9, r0
	ldrh	r0, [r0]
	bl	_Func_78b9c
	mov	r10, r0
	mov	r0, #0x80
	bl	Func_40b4
	ldr	r1, [sp, #0x3c]
	str	r0, [sp, #0x28]
	str	r1, [sp]
	mov	r2, #0x11
	mov	r1, #0x11
	mov	r3, #3
	mov	r0, #0xa
	bl	Func_162d4
	ldr	r2, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	ldr	r3, [r2]
	mov	r1, r9
	add	r1, #4
	add	r4, #0x54
	ldrb	r2, [r1]
	ldrb	r3, [r3, r4]
	mov	r11, r0
	mov	r7, #0
	cmp	r2, r3
	bhi	.L279ae
	ldr	r5, [sp, #0x24]
	mov	r0, r1
	mov	r1, r4
.L2799a:
	add	r7, #1
	add	r1, #1
	cmp	r7, #3
	bgt	.L279ae
	ldr	r3, [r5]
	add	r0, #1
	ldrb	r2, [r0]
	ldrb	r3, [r3, r1]
	cmp	r2, r3
	bls	.L2799a
.L279ae:
	mov	r3, #4
	eor	r3, r7
	neg	r2, r3
	orr	r2, r3
	ldr	r3, [sp, #0x24]
	ldr	r0, [r3]
	ldr	r1, =0xfffffe00
	lsr	r4, r2, #31
	ldrh	r2, [r0, #6]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .L279f8	@ 0x38
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r3, =0x40000400
	mov	r0, r8
	mov	r5, #1
	str	r3, [r0, #4]
	mov	r3, #0
	sub	r4, r5, r4
	str	r3, [r0, #8]
	mov	r3, r11
	ldrh	r2, [r3, #0xc]
	ldr	r3, .L279fc	@ 0x1ff
	lsl	r2, #3
	add	r2, #8
	and	r2, r3
	ldrh	r3, [r0, #6]
	and	r1, r3
	orr	r1, r2
	strh	r1, [r0, #6]
	mov	r1, r11
	ldrh	r3, [r1, #0xe]
	lsl	r3, #3
	mov	r2, r9
	b	.L27a08

	.align	2, 0
.L279f8:
	.word	0x38
.L279fc:
	.word	0x1ff
	.pool

.L27a08:
	add	r3, #4
	strb	r3, [r0, #4]
	ldrh	r3, [r2]
	ldr	r0, =0x3fff
	ldr	r1, [sp, #0x28]
	and	r0, r3
	str	r4, [sp, #4]
	bl	Func_21b30
	ldr	r3, .L27a50	@ 0x3ff
	and	r0, r3
	mov	r3, r8
	ldrh	r2, [r3, #8]
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r0, r8
	strh	r3, [r0, #8]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	ldr	r4, [sp, #4]
	add	r3, #0x25
	strb	r5, [r3]
	cmp	r4, #0
	bne	.L27a42
	mov	r0, #2
	bl	Func_1e71c
	ldr	r4, [sp, #4]
.L27a42:
	mov	r0, r6
	str	r4, [sp, #4]
	bl	_Func_797d4
	ldr	r3, =0x333
	ldrh	r0, [r0]
	b	.L27a60

	.align	2, 0
.L27a50:
	.word	0x3ff
	.pool

.L27a60:
	mov	r2, #0x10
	add	r0, r3
	mov	r1, r11
	mov	r3, #0
	bl	Func_1e7c0
	mov	r2, #0
	lsl	r3, r2, #1
	mov	r6, r9
	mov	r5, r3
	ldr	r4, [sp, #4]
	mov	r7, #0
	mov	r8, r2
	add	r6, #4
	add	r5, #0xd
.L27a7e:
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.L27aae
	ldr	r3, =0x5001
	mov	r0, r8
	add	r1, r7, r3
	str	r0, [sp]
	mov	r2, r5
	mov	r0, r11
	mov	r3, #0
	str	r4, [sp, #4]
	bl	Func_19000
	ldrb	r1, [r6]
	mov	r3, r8
	add	r2, r5, #1
	str	r3, [sp]
	add	r1, #0x30
	mov	r0, r11
	mov	r3, #0
	bl	Func_18efc
	ldr	r4, [sp, #4]
	add	r5, #2
.L27aae:
	add	r7, #1
	add	r6, #1
	cmp	r7, #3
	ble	.L27a7e
	cmp	r4, #0
	beq	.L27ac8
	mov	r0, #0x70
	bl	_Func_f9080
	b	.L27ace

	.pool_aligned

.L27ac8:
	mov	r0, #0x72
	bl	_Func_f9080
.L27ace:
	mov	r0, r10
	bl	Func_2706c
	mov	r3, r0
	mov	r0, r10
	ldrb	r1, [r0]
	ldrb	r2, [r0, #8]
	ldr	r0, [sp, #0x40]
	bl	Func_26080
	mov	r1, r10
	ldrb	r3, [r1, #8]
	mov	r6, r0
	ldr	r0, [sp, #0x4c]
	strh	r3, [r0, #0xc]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	ldr	r2, =0
	add	r3, #0x25
	strb	r2, [r3]
	ldr	r0, [sp, #0x28]
	bl	Func_3f3c
	mov	r0, r11
	mov	r1, #1
	bl	Func_16418
	mov	r2, #1
	neg	r2, r2
	cmp	r6, r2
	bne	.L27b0e
	b	.L278f6
.L27b0e:
	b	.L27b14

	.pool_aligned

.L27b14:
	ldr	r3, [sp, #0x24]
	ldr	r2, [sp, #0x1c]
	mov	r0, #0
	mov	r14, r0
	add	r2, #0x54
	mov	r0, r9
	ldr	r1, [r3]
	add	r0, #4
	mov	r5, r2
	mov	r12, r3
	ldrb	r4, [r0]
	ldrb	r3, [r1, r5]
	mov	r7, #0
	cmp	r4, r3
	bls	.L27b38
	mov	r2, r14
	strb	r2, [r1, r5]
	b	.L278c2
.L27b38:
	sub	r3, r4
	add	r7, #1
	strb	r3, [r1, r5]
	add	r0, #1
	add	r2, #1
	cmp	r7, #3
	ble	.L27b48
	b	.L278c2
.L27b48:
	mov	r3, r12
	ldr	r1, [r3]
	mov	r5, r2
	ldrb	r4, [r0]
	ldrb	r3, [r1, r5]
	cmp	r4, r3
	bls	.L27b38
	mov	r0, r14
	strb	r0, [r1, r5]
	b	.L278c2
.L27b5c:
	mov	r0, #0x70
	bl	_Func_f9080
	ldr	r3, =iwram_1f34
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x34]
	str	r3, [r2, #0x30]
	str	r3, [r2, #0x38]
.L27b6e:
	ldr	r2, [sp, #0x24]
	ldr	r0, =0xfffffe00
	ldr	r1, [r2]
	mov	r10, r0
	ldrh	r3, [r1, #6]
	mov	r2, r10
	and	r2, r3
	ldr	r3, .L27bb4	@ 0x90
	orr	r2, r3
	strh	r2, [r1, #6]
	ldr	r7, =iwram_1f34
	ldr	r5, [sp, #0x1c]
	ldr	r2, [r7]
	mov	r3, #0x80
	lsl	r3, #24
	add	r5, #0xe4
	str	r3, [r2, r5]
	mov	r1, #1
	ldr	r0, [sp, #0x40]
	bl	Func_23e70
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	mov	r8, r1
	ldr	r3, [sp, #0x4c]
	neg	r0, r0
	mov	r2, r8
	mov	r9, r0
	strh	r2, [r3, #0xc]
	cmp	r6, r9
	bne	.L27bb2
	bl	.L27454
.L27bb2:
	b	.L27bc0

	.align	2, 0
.L27bb4:
	.word	0x90
	.pool

.L27bc0:
	mov	r1, #5
	str	r1, [sp, #0x3c]
	str	r6, [sp, #0x38]
	ldr	r3, [r7]
	str	r6, [r3, r5]
	ldr	r2, [sp, #0x38]
	mov	r3, #0xf
	asr	r7, r2, #8
	mov	r4, #0xff
	and	r4, r2
	and	r7, r3
	mov	r2, r4
	ldr	r0, [sp, #0x40]
	mov	r1, r7
	str	r4, [sp, #4]
	bl	_Func_7a2bc
	mov	r5, r0
	ldr	r4, [sp, #4]
	cmp	r5, #0
	beq	.L27cd4
	mov	r1, r4
	mov	r0, r7
	bl	_Func_7a5b0
	bl	_Func_78b9c
	mov	r3, #6
	mov	r5, r0
	ldrb	r6, [r5, #8]
	mov	r1, #0x11
	str	r3, [sp]
	mov	r2, #0xa
	mov	r3, #3
	mov	r0, #0xb
	bl	Func_162d4
	ldr	r3, [sp, #0x24]
	ldr	r1, [r3]
	ldrh	r2, [r1, #6]
	mov	r3, r10
	and	r3, r2
	ldr	r2, =0x40
	mov	r11, r0
	ldr	r0, =0x5001
	orr	r3, r2
	strh	r3, [r1, #6]
	mov	r2, r8
	add	r1, r7, r0
	mov	r3, #0
	mov	r0, r11
	str	r2, [sp]
	bl	Func_19000
	lsl	r0, r7, #2
	ldr	r4, [sp, #4]
	add	r0, r7
	ldr	r3, =0x45f
	lsl	r0, #2
	add	r0, r4
	mov	r1, r11
	mov	r2, #0x10
	add	r0, r3
	mov	r3, #0
	bl	Func_1e7c0
	ldr	r3, [sp, #0x4c]
	mov	r0, #1
	strh	r6, [r3, #0xc]
	bl	Func_30f8
	mov	r0, #0x70
	b	.L27c60

	.pool_aligned

.L27c60:
	bl	_Func_f9080
	mov	r0, r5
	bl	Func_2706c
	mov	r2, r6
	mov	r3, r0
	ldrb	r1, [r5]
	ldr	r0, [sp, #0x40]
	bl	Func_26080
	mov	r6, r0
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	add	r3, #0xd8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L27cbc
	ldr	r0, =0xc4e
	mov	r1, #0xf
	mov	r2, #8
	bl	Func_21e48
	mov	r5, r0
	b	.L27c98
.L27c92:
	mov	r0, #1
	bl	Func_30f8
.L27c98:
	bl	Func_17364
	cmp	r0, #0
	beq	.L27c92
	mov	r1, #1
	mov	r0, r5
	bl	Func_16418
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	mov	r2, r1
	add	r2, #0xd8
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	add	r1, #0xdc
	mov	r3, #0x2d
	str	r3, [r1]
.L27cbc:
	mov	r0, r11
	mov	r1, #1
	bl	Func_16418
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L27cce
	b	.L27b6e
.L27cce:
	b	.L278c2

	.pool_aligned

.L27cd4:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x11
	mov	r2, #0xa
	mov	r3, #3
	mov	r0, #0xb
	str	r4, [sp, #4]
	bl	Func_162d4
	mov	r11, r0
	ldr	r0, [sp, #0x24]
	ldr	r1, [r0]
	ldrh	r2, [r1, #6]
	mov	r3, r10
	and	r3, r2
	ldr	r2, =0x40
	orr	r3, r2
	strh	r3, [r1, #6]
	mov	r0, #2
	bl	Func_1e71c
	ldr	r2, =0x5001
	mov	r0, r11
	add	r1, r7, r2
	mov	r3, #0
	mov	r2, #0
	str	r5, [sp]
	bl	Func_19000
	lsl	r0, r7, #2
	ldr	r4, [sp, #4]
	add	r0, r7
	ldr	r3, =0x45f
	lsl	r0, #2
	add	r0, r4
	mov	r1, r11
	mov	r2, #0x10
	add	r0, r3
	mov	r3, #0
	bl	Func_1e7c0
	mov	r0, #0xf
	bl	Func_1e71c
	ldr	r0, [sp, #0x4c]
	b	.L27d3c

	.pool_aligned

.L27d3c:
	mov	r3, #1
	strh	r3, [r0, #0xc]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r1, #4
	ldr	r0, [sp, #0x40]
	mov	r2, #0
	mov	r3, #7
	bl	Func_26080
	mov	r1, #1
	mov	r6, r0
	mov	r0, r11
	bl	Func_16418
	cmp	r6, r9
	bne	.L27d68
	b	.L27b6e
.L27d68:
	b	.L278c2
.L27d6a:
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r6, #0
	ldr	r3, =iwram_1f34
	ldr	r3, [r3]
	str	r6, [r3, #0x34]
	str	r6, [r3, #0x30]
	str	r6, [r3, #0x38]
.L27d7c:
	ldr	r2, [sp, #0x24]
	ldr	r1, [r2]
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #6]
	and	r3, r2
	ldr	r2, .L27db0	@ 0x60
	orr	r3, r2
	strh	r3, [r1, #6]
	mov	r3, #0x74
	add	r3, r1
	add	r1, #0x96
	mov	r10, r1
	ldr	r1, [sp, #0x48]
	mov	r9, r3
	mov	r3, #0xd8
	ldrh	r5, [r1, r3]
	mov	r0, #0
	mov	r8, r0
	mov	r4, #0
	cmp	r5, #0
	beq	.L27df0
	mov	r3, r1
	add	r3, #0xd8
	mov	r7, r9
	mov	r6, r10
	b	.L27dbc

	.align	2, 0
.L27db0:
	.word	0x60
	.pool

.L27dbc:
	mov	r0, r5
	str	r3, [sp, #8]
	str	r4, [sp, #4]
	bl	_Func_78414
	mov	r1, r5
	ldr	r0, [sp, #0x40]
	bl	Func_25180
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #4]
	cmp	r0, #0
	bne	.L27de2
	mov	r2, #1
	strh	r5, [r6]
	add	r8, r2
	strb	r4, [r7]
	add	r6, #2
	add	r7, #1
.L27de2:
	add	r4, #1
	cmp	r4, #0xf
	beq	.L27df0
	add	r3, #2
	ldrh	r5, [r3]
	cmp	r5, #0
	bne	.L27dbc
.L27df0:
	ldr	r0, [sp, #0x48]
	mov	r3, #0xd8
	ldrh	r5, [r0, r3]
	mov	r4, #0
	cmp	r5, #0
	beq	.L27e40
	mov	r1, r8
	mov	r2, r0
	mov	r7, r8
	lsl	r3, r1, #1
	mov	r0, r10
	add	r2, #0xd8
	add	r7, r9
	add	r6, r3, r0
.L27e0c:
	mov	r0, r5
	str	r2, [sp, #0xc]
	str	r4, [sp, #4]
	bl	_Func_78414
	mov	r1, r5
	ldr	r0, [sp, #0x40]
	bl	Func_25180
	ldr	r2, [sp, #0xc]
	ldr	r4, [sp, #4]
	cmp	r0, #0
	beq	.L27e32
	mov	r1, #1
	strh	r5, [r6]
	add	r8, r1
	strb	r4, [r7]
	add	r6, #2
	add	r7, #1
.L27e32:
	add	r4, #1
	cmp	r4, #0xf
	beq	.L27e40
	add	r2, #2
	ldrh	r5, [r2]
	cmp	r5, #0
	bne	.L27e0c
.L27e40:
	mov	r2, r8
	ldr	r1, =0
	lsl	r3, r2, #1
	mov	r0, r10
	strh	r1, [r3, r0]
	ldr	r0, [sp, #0x40]
	mov	r1, r10
	bl	Func_25200
	mov	r7, #1
	mov	r6, r0
	neg	r7, r7
	cmp	r6, r7
	bne	.L27e60
	bl	.L27454
.L27e60:
	b	.L27e68

	.pool_aligned

.L27e68:
	mov	r2, r9
	ldrb	r6, [r2, r6]
	ldr	r3, [sp, #0x48]
	str	r6, [sp, #0x38]
	lsl	r6, #1
	add	r6, #0xd8
	ldrh	r0, [r3, r6]
	bl	_Func_78414
	ldrh	r0, [r0, #0x28]
	bl	_Func_78b9c
	mov	r8, r0
	ldrb	r0, [r0, #8]
	ldr	r1, [sp, #0x24]
	mov	r10, r0
	mov	r0, #0x80
	ldr	r5, [r1]
	bl	Func_40b4
	mov	r3, #6
	str	r3, [sp]
	mov	r9, r0
	mov	r1, #0x11
	mov	r2, #0xf
	mov	r3, #3
	mov	r0, #9
	bl	Func_162d4
	ldr	r2, [sp, #0x24]
	mov	r11, r0
	ldr	r0, [r2]
	ldr	r1, =0xfffffe00
	ldrh	r2, [r0, #6]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .L27ee0	@ 0x30
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r3, =0x40000400
	add	r5, #0xc
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	mov	r0, r11
	ldrh	r3, [r0, #0xc]
	ldr	r4, .L27ee4	@ 0x1ff
	ldrh	r2, [r5, #6]
	lsl	r3, #3
	add	r3, #8
	and	r3, r4
	and	r1, r2
	orr	r1, r3
	ldrh	r3, [r0, #0xe]
	lsl	r3, #3
	add	r3, #4
	strb	r3, [r5, #4]
	strh	r1, [r5, #6]
	ldr	r1, [sp, #0x48]
	b	.L27ef0

	.align	2, 0
.L27ee0:
	.word	0x30
.L27ee4:
	.word	0x1ff
	.pool

.L27ef0:
	ldrh	r0, [r1, r6]
	mov	r1, r9
	str	r4, [sp, #4]
	bl	Func_21af0
	ldr	r3, =0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r3, #1
	add	r2, #0x25
	strb	r3, [r2]
	ldr	r1, [sp, #0x48]
	ldr	r4, [sp, #4]
	ldrh	r0, [r1, r6]
	ldr	r3, =0x182
	and	r0, r4
	mov	r1, r11
	add	r0, r3
	mov	r2, #0x18
	mov	r3, #0
	bl	Func_1e7c0
	ldr	r3, [sp, #0x4c]
	mov	r2, r10
	strh	r2, [r3, #0xc]
	mov	r0, #0x70
	b	.L27f40

	.pool_aligned

.L27f40:
	bl	_Func_f9080
	mov	r0, r8
	bl	Func_2706c
	mov	r3, r0
	mov	r0, r8
	ldrb	r1, [r0]
	mov	r2, r10
	ldr	r0, [sp, #0x40]
	bl	Func_26080
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	mov	r2, #0
	add	r3, #0x25
	mov	r6, r0
	strb	r2, [r3]
	mov	r0, r9
	bl	Func_3f3c
	mov	r0, r11
	mov	r1, #1
	bl	Func_16418
	cmp	r6, r7
	bne	.L27f78
	b	.L27d7c
.L27f78:
	mov	r3, #2
	str	r3, [sp, #0x3c]
	b	.L278c2
.L27f7e:
	mov	r0, #3
	str	r0, [sp, #0x3c]
.L27f82:
	mov	r0, #0x6e
	bl	_Func_f9080
	add	r1, sp, #0x40
	ldrh	r1, [r1]
	ldr	r2, [sp, #0x4c]
	strh	r1, [r2]
	ldr	r5, [sp, #0x48]
	add	r5, #0x40
	ldrh	r6, [r5]
	cmp	r6, #0
	beq	.L27fa6
	bl	Func_4458
	ldrh	r3, [r5]
	mul	r3, r0
	lsr	r3, #20
	add	r6, r3
.L27fa6:
	ldr	r2, [sp, #0x4c]
	strh	r6, [r2, #4]
	ldr	r3, [sp, #0x2c]
	cmp	r3, #0
	beq	.L27fce
	ldr	r1, [sp, #0x54]
	ldr	r0, [sp, #0x20]
	add	r3, r0, r1
	sub	r2, r3, #2
	ldrh	r1, [r3]
	ldrh	r3, [r2]
	cmp	r1, r3
	bne	.L27fce
	lsl	r2, r6, #16
	asr	r3, r2, #16
	lsr	r2, #31
	add	r3, r2
	ldr	r2, [sp, #0x4c]
	asr	r3, #1
	strh	r3, [r2, #4]
.L27fce:
	ldr	r1, [sp, #0x4c]
	mov	r0, #4
	ldrsh	r3, [r1, r0]
	cmp	r3, #0
	bge	.L27fe0
	mov	r3, #0xfa
	lsl	r3, #3
	mov	r2, r1
	strh	r3, [r2, #4]
.L27fe0:
	add	r3, sp, #0x3c
	ldrh	r3, [r3]
	ldr	r0, [sp, #0x4c]
	strh	r3, [r0, #6]
	add	r0, sp, #0x38
	ldrh	r0, [r0]
	ldr	r1, [sp, #0x4c]
	strh	r0, [r1, #8]
	add	r1, sp, #0x44
	ldrh	r1, [r1]
	ldr	r2, [sp, #0x4c]
	strh	r1, [r2, #0xa]
	ldr	r2, [sp, #0x2c]
	add	r2, #1
	lsl	r3, r2, #2
	str	r3, [sp, #0x1c]
	ldr	r3, [sp, #0x50]
	lsl	r0, r2, #4
	lsl	r1, r2, #1
	str	r2, [sp, #0x2c]
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x20]
	cmp	r2, r3
	bge	.L28014
	bl	.L2739e
.L28014:
	ldr	r0, [sp, #0x2c]
	ldr	r1, [sp, #0x50]
	cmp	r0, r1
	bge	.L28020
	bl	.L272a8
.L28020:
	ldr	r2, [sp, #0x24]
	ldr	r0, [r2]
	ldr	r3, [r0, #0x50]
	cmp	r3, #0
	beq	.L2803c
	ldr	r2, =ewram_2224
	ldr	r3, .L28060	@ 0x45
	strh	r3, [r2, #8]
	ldr	r3, .L28064	@ 0x44
	strh	r3, [r2, #0xa]
	ldr	r3, .L28068	@ 0x56
	strh	r3, [r2, #0xc]
	ldr	r3, .L2806c	@ 0x53
	strh	r3, [r2, #0xe]
.L2803c:
	ldr	r0, [r0, #0x44]
	cmp	r0, #0
	beq	.L28048
	mov	r1, #1
	bl	Func_16418
.L28048:
	ldr	r0, [sp, #0x30]
	bl	Func_3f3c
	ldr	r0, [sp, #0x34]
	bl	Func_3f3c
	ldr	r0, =Func_26e80
	bl	Func_4278
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	b	.L28078

	.align	2, 0
.L28060:
	.word	0x45
.L28064:
	.word	0x44
.L28068:
	.word	0x56
.L2806c:
	.word	0x53
	.pool

.L28078:
	ldr	r3, [r2, #0x50]
	cmp	r3, #0
	beq	.L28166
	ldr	r3, =iwram_1e74
	ldr	r5, [r3]
	ldr	r3, [r2, #0x44]
	mov	r6, #0
	cmp	r3, #0
	bne	.L280b8
	mov	r7, r5
	add	r7, #0x52
	ldrb	r3, [r7]
	cmp	r3, #0
	bne	.L280bc
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r2, #0x1e
	mov	r1, #0x10
	mov	r3, #4
	mov	r0, #0
	bl	Func_162d4
	ldr	r1, [sp, #0x24]
	ldr	r3, [r1]
	str	r0, [r3, #0x44]
	bl	Func_16738
	add	r2, sp, #0x64
	mov	r9, r2
	bl	Func_270d8
	b	.L280c4
.L280b8:
	mov	r7, r5
	add	r7, #0x52
.L280bc:
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x44]
.L280c4:
	add	r5, #0x50
	ldrb	r2, [r5]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2024
	lsl	r2, #3
	add	r1, r2, r3
	ldrb	r3, [r7]
	cmp	r3, #0
	beq	.L280e4
	mov	r0, #1
	neg	r0, r0
	str	r0, [sp, #0x50]
	b	.L28156
.L280e4:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L280fe
	add	r6, #1
	cmp	r6, #0x18
	ble	.L28134
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x50]
	b	.L28156
.L280fe:
	ldrh	r2, [r1, #8]
	mov	r3, r2
	mov	r6, #0
	cmp	r3, #0x45
	bne	.L2811a
	ldrh	r3, [r1, #0xa]
	cmp	r3, #0x44
	bne	.L2811a
	ldrh	r3, [r1, #0xc]
	cmp	r3, #0x56
	bne	.L2811a
	ldrh	r3, [r1, #0xe]
	cmp	r3, #0x53
	beq	.L28156
.L2811a:
	mov	r3, r2
	cmp	r3, #0x56
	bne	.L28132
	ldrh	r3, [r1, #0xa]
	cmp	r3, #0x53
	bne	.L28132
	ldrh	r3, [r1, #0xc]
	cmp	r3, #0x53
	bne	.L28132
	ldrh	r3, [r1, #0xe]
	cmp	r3, #0x54
	beq	.L28134
.L28132:
	mov	r6, #1
.L28134:
	mov	r0, #1
	bl	Func_30f8
	ldrb	r2, [r5]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2024
	lsl	r2, #3
	add	r1, r2, r3
	ldrb	r3, [r7]
	cmp	r3, #0
	beq	.L280e4
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #0x50]
.L28156:
	ldr	r0, [sp, #0x24]
	ldr	r3, [r0]
	ldr	r0, [r3, #0x44]
	cmp	r0, #0
	beq	.L28166
	mov	r1, #1
	bl	Func_16418
.L28166:
	mov	r0, #0
	bl	_Func_b8fd4
	mov	r0, #0x39
	bl	Func_2dd8
	ldr	r0, [sp, #0x50]
	add	sp, #0x64
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_27114

.thumb_func_start Func_28194
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1f38
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0x1f
	lsl	r3, #1
	ldr	r1, =Data_366f8
	and	r3, r2
	lsl	r3, #1
	ldrh	r7, [r1, r3]
	ldr	r0, =0xffffff00
	add	r3, r7, r0
	sub	sp, #0xc
	mov	r6, r8
	cmp	r3, #0
	bge	.L281c4
	mov	r3, r7
	sub	r3, #0xfd
.L281c4:
	mov	r1, #0x98
	asr	r3, #2
	lsl	r1, #1
	ldr	r4, =0xffff0000
	add	r7, r3, r1
	ldr	r3, [sp, #4]
	lsl	r1, r7, #16
	and	r3, r4
	ldr	r2, =0xffff
	lsr	r1, #16
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp, #4]
	add	r0, sp, #4
	ldr	r3, [r0, #4]
	and	r3, r4
	str	r3, [r0, #4]
	bl	Func_3d28
	mov	r2, #0x8e
	add	r2, r8
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r5, #0
	mov	r9, r0
	mov	r10, r2
	cmp	r5, r3
	bcs	.L282bc
	ldr	r4, =iwram_1b10
.L28202:
	mov	r0, #0xc
	ldrsh	r2, [r6, r0]
	cmp	r2, #0
	beq	.L282ae
	mov	r3, r8
	add	r3, #0x8c
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r5, r3
	bne	.L28282
	lsl	r3, r7, #3
	sub	r3, r7
	cmp	r3, #0
	bge	.L28222
	ldr	r0, =0x1ff
	add	r3, r0
.L28222:
	asr	r3, #9
	add	r3, r2, r3
	mov	r2, #0xe
	ldrsh	r1, [r6, r2]
	sub	r3, #0x14
	mov	r12, r3
	cmp	r1, #0
	beq	.L28246
	lsl	r3, r7, #1
	add	r3, r7
	cmp	r3, #0
	bge	.L2823c
	add	r3, #0xff
.L2823c:
	asr	r3, #8
	add	r3, r1, r3
	mov	r1, r3
	sub	r1, #0x14
	b	.L2825a
.L28246:
	lsl	r3, r7, #4
	sub	r3, r7
	cmp	r3, #0
	bge	.L28250
	add	r3, #0xff
.L28250:
	asr	r3, #8
	mov	r1, r3
	sub	r1, #0x1e
	mov	r3, #0xff
	and	r1, r3
.L2825a:
	mov	r0, r6
	mov	r3, #0
	mov	r2, r9
	stmia	r0!, {r3}
	lsl	r3, r2, #25
	orr	r3, r1
	mov	r1, r12
	lsl	r2, r1, #16
	orr	r3, r2
	ldr	r2, =0x80002300
	orr	r3, r2
	stmia	r0!, {r3}
	ldrh	r3, [r6, #0x12]
	lsl	r3, #2
	add	r3, r4
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	str	r3, [r0]
	mov	r1, #0xf6
	b	.L282a4
.L28282:
	mov	r0, r6
	mov	r3, #0xe
	ldrsh	r1, [r6, r3]
	mov	r3, #0
	stmia	r0!, {r3}
	lsl	r3, r2, #16
	orr	r1, r3
	ldr	r3, =0x80002000
	orr	r1, r3
	ldrh	r3, [r6, #0x12]
	lsl	r3, #2
	add	r3, r4
	ldrh	r3, [r3, #2]
	stmia	r0!, {r1}
	lsr	r3, #5
	str	r3, [r0]
	mov	r1, #0xf5
.L282a4:
	mov	r0, r6
	str	r4, [sp]
	bl	Func_3dec
	ldr	r4, [sp]
.L282ae:
	mov	r1, r10
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	add	r5, #1
	add	r6, #0x14
	cmp	r5, r3
	bcc	.L28202
.L282bc:
	mov	r3, r8
	add	r3, #0x94
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L283ae
	ldr	r3, =iwram_1ecc
	ldr	r1, [r3]
	cmp	r1, #0
	bne	.L282d2
	b	.L28488
.L282d2:
	mov	r0, r10
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	cmp	r3, #0
	bne	.L282de
	b	.L28488
.L282de:
	ldr	r2, =0x539
	add	r3, r1, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r1, r3
	mov	r3, #0x8c
	add	r3, r8
	mov	r4, #0
	ldrsh	r2, [r3, r4]
	mov	r14, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	mov	r10, r1
	mov	r1, r3
	lsl	r4, r7, #1
	mov	r2, r8
	add	r1, #0xc
	ldrsh	r0, [r2, r1]
	mov	r12, r4
	add	r3, r4, r7
	ldr	r4, =0xfffff4ff
	lsl	r3, #2
	add	r2, r3, r4
	cmp	r2, #0
	bge	.L2831e
	add	r4, #0xff
	add	r2, r3, r4
.L2831e:
	asr	r2, #8
	sub	r3, r0, r2
	lsl	r3, #8
	add	r2, r0, r2
	add	r3, r2
	mov	r2, r8
	mov	r0, r3
	add	r3, r2, r1
	mov	r4, #2
	ldrsh	r3, [r3, r4]
	ldr	r1, =0xffffe0ff
	lsl	r2, r7, #5
	mov	r4, r3
	add	r3, r2, r1
	add	r0, #0x17
	add	r4, #0x18
	cmp	r3, #0
	bge	.L28346
	ldr	r1, =0xffffe2fe
	add	r3, r2, r1
.L28346:
	asr	r3, #9
	add	r3, r4, r3
	mov	r1, r10
	add	r4, r3, #1
	mov	r5, #0x18
	add	r1, #0x66
	cmp	r5, r4
	bcs	.L2836a
	mov	r6, #0xff
.L28358:
	ldrh	r2, [r1]
	mov	r3, r6
	and	r3, r2
	orr	r3, r0
	add	r5, #1
	strh	r3, [r1]
	add	r1, #4
	cmp	r5, r4
	bcc	.L28358
.L2836a:
	mov	r3, r8
	mov	r1, r14
	mov	r2, #0xc
	ldrsh	r0, [r3, r2]
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	cmp	r3, #0
	bne	.L28390
	mov	r2, r12
	add	r3, r2, r7
	ldr	r4, =0xfffff4ff
	lsl	r1, r3, #2
	add	r3, r1, r4
	cmp	r3, #0
	bge	.L2838c
	ldr	r2, =0xfffff5fe
	add	r3, r1, r2
.L2838c:
	asr	r3, #8
	sub	r0, r3
.L28390:
	mov	r1, r10
	lsl	r0, #8
	add	r1, #6
	mov	r5, #0
	mov	r4, #0xff
.L2839a:
	ldrh	r2, [r1]
	mov	r3, r4
	and	r3, r2
	orr	r3, r0
	add	r5, #1
	strh	r3, [r1]
	add	r1, #4
	cmp	r5, #0x17
	bls	.L2839a
	b	.L28488
.L283ae:
	ldr	r3, =iwram_1ecc
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L28488
	mov	r0, r10
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	cmp	r3, #0
	beq	.L28488
	ldr	r2, =0x539
	add	r3, r1, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r1, r3
	mov	r3, #0x8c
	add	r3, r8
	mov	r4, #0
	ldrsh	r2, [r3, r4]
	mov	r12, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	mov	r14, r1
	mov	r1, r3
	mov	r2, r8
	add	r1, #0xc
	lsl	r6, r7, #1
	ldrsh	r0, [r2, r1]
	ldr	r4, =0xfffff4ff
	add	r3, r6, r7
	lsl	r2, r3, #2
	add	r3, r2, r4
	cmp	r3, #0
	bge	.L283fe
	add	r4, #0xff
	add	r3, r2, r4
.L283fe:
	asr	r3, #8
	sub	r2, r0, r3
	lsl	r2, #8
	add	r3, r0, r3
	add	r2, r3
	mov	r0, r2
	mov	r2, r8
	add	r3, r2, r1
	mov	r4, #2
	ldrsh	r2, [r3, r4]
	ldr	r4, =0xffffe0ff
	lsl	r1, r7, #5
	add	r3, r1, r4
	add	r0, #0x17
	cmp	r3, #0
	bge	.L28422
	ldr	r4, =0xffffe2fe
	add	r3, r1, r4
.L28422:
	asr	r3, #9
	sub	r3, r2, r3
	sub	r2, r3, #1
	lsl	r3, r2, #2
	add	r3, r14
	mov	r5, r2
	add	r1, r3, #6
	cmp	r5, #0x87
	bhi	.L28448
	mov	r4, #0xff
.L28436:
	ldrh	r2, [r1]
	mov	r3, r4
	and	r3, r2
	orr	r3, r0
	add	r5, #1
	strh	r3, [r1]
	add	r1, #4
	cmp	r5, #0x87
	bls	.L28436
.L28448:
	mov	r2, r8
	mov	r1, #0xc
	ldrsh	r0, [r2, r1]
	mov	r1, r12
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	cmp	r3, #0
	bne	.L2846c
	add	r3, r6, r7
	ldr	r2, =0xfffff4ff
	lsl	r1, r3, #2
	add	r3, r1, r2
	cmp	r3, #0
	bge	.L28468
	ldr	r4, =0xfffff5fe
	add	r3, r1, r4
.L28468:
	asr	r3, #8
	sub	r0, r3
.L2846c:
	ldr	r1, =0x226
	lsl	r0, #8
	add	r1, r14
	mov	r5, #0x88
	mov	r4, #0xff
.L28476:
	ldrh	r2, [r1]
	mov	r3, r4
	and	r3, r2
	orr	r3, r0
	add	r5, #1
	strh	r3, [r1]
	add	r1, #4
	cmp	r5, #0x9f
	bls	.L28476
.L28488:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_28194

.thumb_func_start Func_284dc
	push	{r5, lr}
	mov	r1, #0x98
	mov	r0, #0x3a
	sub	sp, #4
	bl	Func_48f4
	mov	r3, #0
	mov	r5, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000026
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =0xc76
	ldr	r0, =Func_28194
	bl	Func_41d8
	mov	r0, r5
	add	sp, #4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_284dc

.thumb_func_start Func_2851c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f38
	ldr	r5, [r3]
	ldr	r0, =Func_28194
	bl	Func_4278
	ldr	r0, [r5, #0x78]
	cmp	r0, #0
	beq	.L28534
	mov	r1, #2
	bl	Func_16418
.L28534:
	mov	r2, r5
	add	r2, #0x8e
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	mov	r6, #0
	cmp	r6, r3
	bge	.L28558
	mov	r7, r2
	add	r5, #0x12
.L28546:
	ldrh	r0, [r5]
	bl	Func_3f3c
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	add	r6, #1
	add	r5, #0x14
	cmp	r6, r3
	blt	.L28546
.L28558:
	mov	r0, #0x3a
	bl	Func_2dd8
	mov	r0, #1
	bl	Func_30f8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_2851c

.thumb_func_start Func_28574
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f38
	ldr	r3, [r3]
	mov	r1, #0x8c
	mov	r8, r3
	add	r1, r8
	mov	r10, r1
	mov	r2, r10
	mov	r3, #0x92
	add	r3, r8
	strh	r0, [r2]
	mov	r11, r3
.L28598:
	mov	r1, r8
	ldr	r0, [r1, #0x78]
	bl	Func_16478
	mov	r3, r11
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.L285c0
	mov	r2, r10
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	add	r0, r3
	b	.L285d0
.L285b4:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r0, #1
	neg	r0, r0
	b	.L2867e
.L285c0:
	mov	r0, r10
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r1, r8
	add	r3, #0x84
	ldrb	r2, [r1, r3]
	ldr	r3, =0x1f
	add	r0, r2, r3
.L285d0:
	mov	r2, r8
	ldr	r1, [r2, #0x78]
	mov	r3, #0
	mov	r2, #0
	bl	Func_1e7c0
	mov	r3, #0x8e
	add	r3, r8
	ldr	r7, =iwram_1c94
	mov	r6, r10
	mov	r9, r3
.L285e6:
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [r7]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L28672
	ldr	r2, [r7]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	bne	.L285b4
	ldr	r2, [r7]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	bne	.L285b4
	ldr	r1, =iwram_1b04
	ldr	r2, [r1]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	bne	.L28620
	ldr	r5, [r1]
	mov	r3, #0x40
	and	r5, r3
	cmp	r5, #0
	beq	.L2863e
.L28620:
	mov	r0, #0x6f
	bl	_Func_f9080
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
	lsl	r3, #16
	cmp	r3, #0
	bge	.L28598
	mov	r0, r9
	ldrh	r3, [r0]
	mov	r1, r10
	sub	r3, #1
	strh	r3, [r1]
	b	.L28598
.L2863e:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	bne	.L28652
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L285e6
.L28652:
	mov	r0, #0x6f
	bl	_Func_f9080
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	mov	r1, r9
	lsl	r3, #16
	mov	r0, #0
	ldrsh	r2, [r1, r0]
	asr	r3, #16
	cmp	r3, r2
	blt	.L28598
	mov	r2, r10
	strh	r5, [r2]
	b	.L28598
.L28672:
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r1, r10
	mov	r3, #0
	ldrsh	r0, [r1, r3]
.L2867e:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_28574

.thumb_func_start Func_286a0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f38
	ldr	r6, [r3]
	mov	r5, r6
	mov	r2, #1
	mov	r3, #0xc
	add	r5, #0x8c
	mov	r7, r1
	mov	r9, r2
	mov	r10, r3
	strh	r0, [r5]
	cmp	r7, r0
	bge	.L286ca
	sub	r2, #2
	mov	r9, r2
.L286ca:
	mov	r8, r0
	mov	r3, #0x92
	add	r3, r6
	mov	r11, r3
	b	.L286e6
.L286d4:
	ldrh	r3, [r5]
	add	r3, r9
	strh	r3, [r5]
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #0
	mov	r10, r2
	add	r8, r9
.L286e6:
	ldr	r0, [r6, #0x78]
	bl	Func_16478
	mov	r2, r11
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	cmp	r0, #0
	beq	.L286fe
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	add	r0, r3
	b	.L2870a
.L286fe:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	add	r3, #0x84
	ldrb	r2, [r6, r3]
	ldr	r3, =0x1f
	add	r0, r2, r3
.L2870a:
	mov	r3, #0
	ldr	r1, [r6, #0x78]
	mov	r2, #0
	bl	Func_1e7c0
	mov	r3, #0
	ldrsh	r1, [r5, r3]
	sub	r3, r1, r7
	ldr	r0, =.L373ef
	mov	r2, r3
	cmp	r3, #0
	bge	.L28724
	sub	r2, r7, r1
.L28724:
	ldrb	r0, [r0, r2]
	add	r0, r10
	bl	Func_30f8
	cmp	r8, r7
	bne	.L286d4
	mov	r0, #0x30
	bl	Func_30f8
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r0, r7
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_286a0

.thumb_func_start Func_2875c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r3, #0x80
	lsl	r3, #3
	mov	r8, r3
	mov	r10, r0
	mov	r0, r8
	mov	r5, r1
	bl	Func_4938
	mov	r6, r0
	ldr	r0, =0xf1
	bl	Func_2f40
	lsl	r5, #1
	ldrh	r3, [r5, r0]
	mov	r1, r6
	add	r0, r3
	bl	Func_53e8
	mov	r0, r10
	mov	r1, r8
	mov	r2, r6
	bl	Func_3fa4
	mov	r0, r6
	bl	Func_2df0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_2875c

.thumb_func_start Func_287a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f38
	ldr	r3, [r3]
	mov	r8, r3
	mov	r2, r8
	add	r2, #0x8e
	mov	r1, #0
	ldrsh	r7, [r2, r1]
	mov	r10, r0
	ldrh	r3, [r2]
	cmp	r7, #5
	bgt	.L287f8
	add	r3, #1
	strh	r3, [r2]
	bl	Func_4080
	mov	r1, r10
	mov	r6, r0
	lsl	r5, r7, #2
	bl	Func_2875c
	lsl	r3, r7, #1
	add	r5, r7
	add	r3, r7
	lsl	r5, #2
	lsl	r3, #3
	add	r5, r8
	add	r3, #0x20
	strh	r3, [r5, #0xc]
	mov	r3, #0x88
	strh	r3, [r5, #0xe]
	mov	r3, r7
	add	r3, #0x84
	mov	r1, r10
	mov	r2, r8
	strh	r6, [r5, #0x12]
	strb	r1, [r2, r3]
.L287f8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_287a8

.thumb_func_start Func_28808
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1f38
	ldr	r7, [r3]
	mov	r3, #0x90
	add	r3, r7
	mov	r8, r3
	mov	r3, r7
	mov	r10, r0
	add	r1, #2
	mov	r5, r8
	add	r3, #0x92
	strh	r1, [r5]
	mov	r6, r10
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	mov	r1, #0x8e
	add	r1, r7
	mov	r2, #0
	ldrsh	r6, [r1, r2]
	mov	r9, r1
	mov	r1, r8
	mov	r3, #0
	ldrsh	r0, [r1, r3]
	mov	r1, #3
	lsl	r0, #1
	sub	sp, #4
	bl	Func_af0_from_thumb
	lsl	r5, r6, #1
	add	r5, r6
	add	r5, r0
	lsr	r3, r5, #31
	add	r5, r3
	asr	r5, #1
	mov	r3, #0xf
	mov	r1, #0
	sub	r0, r3, r5
	cmp	r1, r6
	bge	.L2887e
	mov	r2, r10
	lsl	r4, r2, #3
	mov	r12, r9
	mov	r2, r7
.L28868:
	lsl	r3, r0, #3
	strh	r3, [r2, #0xc]
	strh	r4, [r2, #0xe]
	mov	r6, r12
	mov	r5, #0
	ldrsh	r3, [r6, r5]
	add	r1, #1
	add	r0, #3
	add	r2, #0x14
	cmp	r1, r3
	blt	.L28868
.L2887e:
	mov	r3, r8
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, r10
	mov	r3, #3
	bl	Func_162d4
	str	r0, [r7, #0x78]
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_28808

.thumb_func_start Func_288a8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	ldr	r1, =iwram_1f38
	ldr	r5, [r1]
	mov	r1, #0x90
	add	r1, r5
	mov	r14, r1
	add	r2, #2
	mov	r4, r14
	strh	r2, [r4]
	mov	r2, r5
	add	r2, #0x92
	strh	r3, [r2]
	mov	r3, r5
	add	r3, #0x94
	strh	r6, [r3]
	mov	r7, #0x8e
	add	r7, r5
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	mov	r1, #0
	sub	sp, #4
	mov	r12, r7
	cmp	r1, r3
	bge	.L288fc
	lsl	r3, r6, #3
	mov	r8, r3
	mov	r2, r5
.L288e4:
	lsl	r3, r0, #3
	mov	r4, r8
	strh	r4, [r2, #0xe]
	strh	r3, [r2, #0xc]
	mov	r4, r12
	mov	r7, #0
	ldrsh	r3, [r4, r7]
	add	r1, #1
	add	r0, #3
	add	r2, #0x14
	cmp	r1, r3
	blt	.L288e4
.L288fc:
	mov	r1, r14
	mov	r3, #2
	mov	r7, #0
	ldrsh	r2, [r1, r7]
	str	r3, [sp]
	mov	r1, r6
	mov	r3, #3
	bl	Func_162d4
	str	r0, [r5, #0x78]
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_288a8

.thumb_func_start Func_28920
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #1
	neg	r0, r0
	mov	r6, #0
	bl	_Func_7a5bc
	cmp	r0, #0
	bne	.L28934
	mov	r6, #1
.L28934:
	lsl	r3, r6, #1
	add	r3, r6
	ldr	r2, =.L37403
	lsl	r7, r3, #1
	add	r3, r5, r7
	ldrsb	r3, [r2, r3]
	sub	r5, r3, #1
	cmp	r5, #0
	bge	.L28948
	mov	r5, #0
.L28948:
	bl	Func_284dc
	mov	r0, #1
	bl	Func_287a8
	cmp	r6, #0
	bne	.L2895c
	mov	r0, #0xf
	bl	Func_287a8
.L2895c:
	mov	r0, #2
	bl	Func_287a8
	mov	r0, #7
	bl	Func_287a8
	mov	r0, #0x11
	mov	r1, #7
	mov	r2, #0
	bl	Func_28808
	mov	r0, r5
	bl	Func_28574
	mov	r5, r0
	bl	Func_2851c
	cmp	r5, #0
	blt	.L2898a
	add	r3, r5, r7
	ldr	r2, =.L373f7
	add	r3, #1
	ldrsb	r5, [r2, r3]
.L2898a:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_28920

.thumb_func_start Func_2899c
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r0
	bl	Func_1c2d0
	bl	Func_284dc
	mov	r0, #1
	bl	Func_287a8
	mov	r0, #0xf
	bl	Func_287a8
	mov	r0, #2
	bl	Func_287a8
	mov	r0, #7
	bl	Func_287a8
	mov	r2, #0
	mov	r0, #0x11
	mov	r1, #7
	bl	Func_28808
	sub	r1, r6, #1
	mov	r0, r5
	bl	Func_286a0
	mov	r6, r0
	bl	Func_2851c
	bl	Func_1c2e4
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_2899c

.thumb_func_start Func_289e8
	push	{r5, r6, lr}
	mov	r6, #0
	mov	r5, #0
	bl	Func_1f77c
	cmp	r0, #0
	bge	.L289fc
	mov	r0, #1
	neg	r0, r0
	b	.L28a96
.L289fc:
	cmp	r0, #0
	bne	.L28a04
	mov	r0, #0
	b	.L28a96
.L28a04:
	cmp	r0, #3
	bne	.L28a0c
	mov	r6, #1
	b	.L28a1e
.L28a0c:
	cmp	r0, #0x67
	bne	.L28a14
	mov	r6, #2
	b	.L28a1e
.L28a14:
	cmp	r0, #0x64
	ble	.L28a1c
	mov	r6, #3
	b	.L28a1e
.L28a1c:
	mov	r5, #1
.L28a1e:
	bl	Func_284dc
	cmp	r6, #0
	beq	.L28a2a
	cmp	r6, #3
	bne	.L28a30
.L28a2a:
	mov	r0, #0x15
	bl	Func_287a8
.L28a30:
	cmp	r6, #1
	bhi	.L28a3a
	mov	r0, #0x16
	bl	Func_287a8
.L28a3a:
	cmp	r6, #0
	beq	.L28a42
	cmp	r6, #3
	bne	.L28a48
.L28a42:
	mov	r0, #0x17
	bl	Func_287a8
.L28a48:
	mov	r0, #0x18
	bl	Func_287a8
	ldr	r3, =ewram_200c
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L28a5e
	mov	r0, #0x1d
	bl	Func_287a8
.L28a5e:
	ldr	r3, =ewram_2010
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L28a6e
	mov	r0, #0x1e
	bl	Func_287a8
.L28a6e:
	mov	r0, #0x11
	mov	r1, #7
	mov	r2, #0
	bl	Func_28808
	mov	r0, r5
	bl	Func_28574
	mov	r5, r0
	bl	Func_2851c
	cmp	r5, #0
	blt	.L28a94
	lsl	r3, r6, #1
	add	r3, r6
	ldr	r2, =.L3740f
	lsl	r3, #1
	add	r3, r5, r3
	ldrsb	r5, [r2, r3]
.L28a94:
	mov	r0, r5
.L28a96:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_289e8

.thumb_func_start Func_28aa8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f38
	ldr	r6, [r3]
	mov	r0, r6
	mov	r5, r6
	add	r5, #0x8c
	add	r0, #0x96
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	sub	sp, #4
	ldrh	r1, [r5]
	cmp	r2, r3
	beq	.L28b70
	strh	r1, [r0]
	mov	r3, #0x50
	ldr	r0, [r6, #0x7c]
	mov	r2, #0x28
	str	r3, [sp]
	mov	r1, #8
	mov	r3, #0x90
	bl	Func_164d4
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #1
	beq	.L28b2a
	cmp	r3, #1
	bgt	.L28b54
	cmp	r3, #0
	bne	.L28b54
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	bl	Func_1e7c0
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x30
	bl	Func_1e7c0
	add	r0, r5, #2
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x38
	bl	Func_1e7c0
	add	r0, r5, #3
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x40
	add	r5, #4
	bl	Func_1e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x48
	bl	Func_1e7c0
	b	.L28b70
.L28b2a:
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	bl	Func_1e7c0
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x30
	add	r5, #2
	bl	Func_1e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x38
	bl	Func_1e7c0
	b	.L28b70
.L28b54:
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	add	r5, #1
	bl	Func_1e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x30
	bl	Func_1e7c0
.L28b70:
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_28aa8

.thumb_func_start Func_28b80
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f38
	ldr	r6, [r3]
	mov	r0, r6
	mov	r5, r6
	add	r5, #0x8c
	add	r0, #0x96
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	ldrh	r1, [r5]
	cmp	r2, r3
	beq	.L28bf2
	strh	r1, [r0]
	ldr	r0, [r6, #0x7c]
	bl	Func_16478
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L28bca
	ldr	r5, =0xc71
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #4
	add	r5, #1
	bl	Func_1e74c
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #0x10
	bl	Func_1e74c
	b	.L28bf2
.L28bca:
	ldr	r5, =0xc73
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #4
	bl	Func_1e74c
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #2
	bl	Func_1e74c
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x1c
	bl	Func_1e74c
.L28bf2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_28b80

.thumb_func_start Func_28c04
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r0
	sub	sp, #4
	bl	Func_284dc
	ldr	r3, =iwram_1f38
	ldr	r7, [r3]
	mov	r3, r10
	cmp	r3, #0
	bne	.L28c2c
	mov	r0, #0x2c
	bl	Func_287a8
	mov	r0, #0x2d
	bl	Func_287a8
	b	.L28c3e
.L28c2c:
	mov	r0, #0x2e
	bl	Func_287a8
	mov	r0, #0x2f
	bl	Func_287a8
	mov	r0, #0x30
	bl	Func_287a8
.L28c3e:
	mov	r0, #0x11
	mov	r1, #7
	mov	r2, #0
	bl	Func_28808
	mov	r3, r10
	cmp	r3, #0
	beq	.L28cbc
	ldr	r1, =0xc76
	ldr	r0, =Func_28aa8
	bl	Func_41d8
	ldr	r3, =0xffff
	mov	r2, r7
	add	r2, #0x96
	strh	r3, [r2]
	mov	r6, #2
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #4
	mov	r0, #7
	str	r6, [sp]
	bl	Func_162d4
	ldr	r5, =0xc77
	mov	r3, #0x80
	mov	r1, r0
	add	r3, r7
	str	r1, [r3]
	mov	r0, r5
	mov	r2, #0
	mov	r8, r3
	mov	r3, #4
	bl	Func_1e74c
	mov	r1, #4
	mov	r2, #0x19
	mov	r3, #0xc
	mov	r0, #3
	str	r6, [sp]
	bl	Func_162d4
	mov	r1, r0
	str	r1, [r7, #0x7c]
	add	r0, r5, #1
	mov	r2, #8
	mov	r3, #0
	bl	Func_1e74c
	add	r0, r5, #2
	ldr	r1, [r7, #0x7c]
	mov	r2, #8
	mov	r3, #0xb
	add	r5, #3
	bl	Func_1e74c
	ldr	r1, [r7, #0x7c]
	mov	r0, r5
	mov	r2, #8
	mov	r3, #0x16
	bl	Func_1e74c
	b	.L28d00
.L28cbc:
	ldr	r1, =0xc76
	ldr	r0, =Func_28b80
	bl	Func_41d8
	ldr	r3, =0xffff
	mov	r2, r7
	add	r2, #0x96
	strh	r3, [r2]
	mov	r5, #2
	mov	r1, #0
	mov	r2, #0x12
	mov	r3, #4
	mov	r0, #6
	str	r5, [sp]
	bl	Func_162d4
	mov	r3, #0x80
	mov	r1, r0
	add	r3, r7
	str	r1, [r3]
	ldr	r0, .L28d70	@ 0xc76
	mov	r2, #2
	mov	r8, r3
	mov	r3, #4
	bl	Func_1e74c
	mov	r0, #1
	mov	r1, #5
	mov	r2, #0x1c
	mov	r3, #7
	str	r5, [sp]
	bl	Func_162d4
	str	r0, [r7, #0x7c]
.L28d00:
	mov	r0, #0
	bl	Func_28574
	mov	r3, r10
	mov	r5, r0
	cmp	r3, #0
	beq	.L28d16
	ldr	r0, =Func_28aa8
	bl	Func_4278
	b	.L28d1c
.L28d16:
	ldr	r0, =Func_28b80
	bl	Func_4278
.L28d1c:
	mov	r3, r8
	ldr	r0, [r3]
	bl	Func_16478
	ldr	r0, [r7, #0x7c]
	bl	Func_16478
	mov	r3, r8
	ldr	r0, [r3]
	mov	r1, #2
	bl	Func_16418
	mov	r1, #2
	ldr	r0, [r7, #0x7c]
	bl	Func_16418
	mov	r0, #1
	bl	Func_30f8
	bl	Func_2851c
	mov	r0, r5
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.pool_aligned
.L28d70:
	.word	0xc76
.func_end Func_28c04

.thumb_func_start Func_28d74
	push	{r5, lr}
	mov	r5, r0
	bl	Func_284dc
	mov	r0, #0x11
	bl	Func_287a8
	mov	r0, #0x12
	bl	Func_287a8
	mov	r0, #0x13
	bl	Func_287a8
	mov	r0, #0x14
	bl	Func_287a8
	mov	r1, #7
	mov	r2, #0
	mov	r0, #0x11
	bl	Func_28808
	mov	r0, r5
	bl	Func_28574
	mov	r5, r0
	bl	Func_2851c
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_28d74

.thumb_func_start Func_28db4
	push	{r5, lr}
	mov	r5, r0
	bl	Func_284dc
	mov	r0, #0x19
	bl	Func_287a8
	mov	r0, #0x1a
	bl	Func_287a8
	mov	r0, #0x1b
	bl	Func_287a8
	mov	r0, #0x1c
	bl	Func_287a8
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0x11
	bl	Func_28808
	mov	r0, r5
	bl	Func_28574
	mov	r5, r0
	bl	Func_2851c
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_28db4

.thumb_func_start Func_28df4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r2
	mov	r6, r3
	mov	r3, #0
	mov	r7, r0
	mov	r10, r1
	mov	r8, r3
	bl	Func_284dc
	cmp	r5, #0
	bne	.L28e12
	mov	r5, #3
.L28e12:
	cmp	r7, #0
	beq	.L28e1a
	mov	r3, #0x11
	mov	r8, r3
.L28e1a:
	mov	r0, #5
	bl	Func_287a8
	mov	r0, #6
	bl	Func_287a8
	mov	r1, r5
	mov	r2, r10
	mov	r0, r8
	bl	Func_28808
	mov	r0, r6
	bl	Func_28574
	mov	r6, r0
	bl	Func_2851c
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L28e46
	mov	r6, #1
.L28e46:
	mov	r0, r6
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_28df4

.thumb_func_start Func_28e54
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =0x24
	mov	r7, r2
	mov	r6, r1
	mov	r8, r3
	mov	r5, r0
	bl	Func_284dc
	mov	r0, #5
	bl	Func_287a8
	mov	r0, #6
	bl	Func_287a8
	mov	r3, r8
	mov	r1, r6
	mov	r2, #3
	mov	r0, r5
	bl	Func_288a8
	mov	r0, r7
	bl	Func_28574
	mov	r7, r0
	bl	Func_2851c
	mov	r3, #1
	neg	r3, r3
	cmp	r7, r3
	bne	.L28e96
	mov	r7, #1
.L28e96:
	mov	r0, r7
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_28e54

.thumb_func_start Func_28ea8
	push	{r5, lr}
	mov	r5, r0
	bl	Func_284dc
	mov	r0, #0x20
	bl	Func_287a8
	mov	r0, #0x21
	bl	Func_287a8
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0x11
	bl	Func_28808
	mov	r0, r5
	bl	Func_28574
	mov	r5, r0
	bl	Func_2851c
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_28ea8

.thumb_func_start Func_28edc
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_28f98
	bl	Func_41d8
	pop	{r0}
	bx	r0
.func_end Func_28edc

.thumb_func_start Func_28ef0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r5, r1
	lsl	r5, #16
	asr	r5, #16
	mov	r6, r0
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	mov	r0, r5
	sub	sp, #4
	mov	r9, r2
	bl	_Func_8b158
	ldr	r3, =0x99b
	mov	r10, r0
	mov	r0, r6
	add	r10, r3
	bl	Func_16478
	mov	r2, #0xe
	str	r2, [sp]
	mov	r8, r2
	mov	r0, r5
	mov	r2, r6
	mov	r3, #0
	mov	r1, #3
	bl	Func_1e9a0
	mov	r2, r9
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r3, r8
	str	r3, [sp]
	mov	r2, r6
	mov	r1, #3
	mov	r3, #0x52
	bl	Func_1e9a0
	ldr	r2, =.L37428
	mov	r8, r2
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0x4a
	mov	r3, #0
	bl	Func_1e858
	ldr	r3, =0xa07
	add	r5, r3
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e74c
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0x4a
	mov	r3, #0xe
	bl	Func_1e858
	mov	r0, r10
	mov	r1, r6
	mov	r2, #0x52
	mov	r3, #0
	bl	Func_1e74c
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_28ef0

.thumb_func_start Func_28f98
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x18
	add	r1, sp, #8
	mov	r9, r1
	mov	r7, #0
	mov	r2, r9
	strh	r7, [r2]
	mov	r1, #0xe4
	ldr	r2, =ewram_240
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	mov	r1, #0xe5
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0xa
	add	r1, sp
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r10, r1
	mov	r2, r10
	strh	r3, [r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r3, #5
	mov	r2, #0x1e
	mov	r0, #0
	bl	Func_162d4
	mov	r2, r10
	mov	r1, r6
	mov	r7, r0
	bl	Func_28ef0
	add	r3, sp, #0xc
	mov	r8, r3
	add	r1, sp, #4
	mov	r0, r8
	bl	Func_1c0dc
	ldr	r2, =iwram_1ae8
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L2900a
	mov	r5, r2
.L28ffe:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L28ffe
.L2900a:
	mov	r1, r6
	mov	r0, r7
	mov	r2, r10
	mov	r3, r9
	bl	Func_29094
	mov	r1, #1
	lsl	r0, #16
	asr	r5, r0, #16
	neg	r1, r1
	cmp	r5, r1
	bne	.L29040
	ldr	r0, [sp, #4]
	bl	Func_1c17c
	mov	r0, r7
	mov	r1, #2
	bl	Func_16418
	mov	r3, r10
	mov	r0, r6
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_Func_91e3c
	mov	r0, r5
	b	.L2907a
.L29040:
	mov	r1, #2
	neg	r1, r1
	cmp	r5, r1
	bne	.L2905a
	ldr	r0, [sp, #4]
	bl	Func_1c17c
	mov	r0, r7
	mov	r1, #2
	bl	Func_16418
	mov	r0, r5
	b	.L2907a
.L2905a:
	mov	r1, r9
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	lsl	r2, r3, #3
	sub	r2, r3
	lsl	r2, #1
	mov	r0, r8
	add	r2, #0x3c
	mov	r1, #0x4a
	bl	Func_1c154
	mov	r0, #1
	mov	r6, r5
	bl	Func_30f8
	b	.L2900a
.L2907a:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_28f98

.thumb_func_start Func_29094
	push	{r5, r6, r7, lr}
	ldr	r6, =iwram_1b04
	mov	r7, r0
	mov	r0, r3
	ldr	r3, [r6]
	mov	r4, r2
	mov	r2, #1
	lsl	r1, #16
	and	r3, r2
	asr	r5, r1, #16
	cmp	r3, #0
	beq	.L290b2
	mov	r0, #1
	neg	r0, r0
	b	.L291dc
.L290b2:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L290c2
	mov	r0, #2
	neg	r0, r0
	b	.L291dc
.L290c2:
	ldr	r3, [r6]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	bne	.L290d6
	ldr	r1, [r6]
	mov	r3, #0x40
	and	r1, r3
	cmp	r1, #0
	beq	.L290e0
.L290d6:
	ldrh	r3, [r0]
	ldr	r2, .L290f8	@ 1
	eor	r3, r2
	strh	r3, [r0]
	b	.L291da
.L290e0:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L29114
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L29100
	add	r3, r5, #1
	b	.L29160

	.align	2, 0
.L290f8:
	.word	1
	.pool

.L29100:
	ldrh	r3, [r4]
	mov	r2, #0xc6
	add	r3, #1
	strh	r3, [r4]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	ble	.L29184
	strh	r1, [r4]
	b	.L29184
.L29114:
	ldr	r3, [r6]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L29146
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	bne	.L2912e
	sub	r3, r5, #1
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L2913e
.L2912e:
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	lsl	r3, #16
	cmp	r3, #0
	bge	.L2913e
	ldr	r3, =0x63
	strh	r3, [r4]
.L2913e:
	cmp	r5, #0
	bge	.L2918a
	mov	r5, #0xc8
	b	.L2918a
.L29146:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L29196
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L2916c
	strh	r3, [r4]
	mov	r3, r5
	add	r3, #0xa
.L29160:
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L29184

	.pool_aligned

.L2916c:
	ldrh	r2, [r4]
	mov	r3, r2
	add	r3, #0xa
	mov	r1, #0xc6
	strh	r3, [r4]
	lsl	r1, #15
	lsl	r3, #16
	cmp	r3, r1
	ble	.L29184
	mov	r3, r2
	sub	r3, #0x59
	strh	r3, [r4]
.L29184:
	cmp	r5, #0xc8
	ble	.L2918a
	mov	r5, #0
.L2918a:
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	Func_28ef0
	b	.L291da
.L29196:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L291da
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.L291b6
	strh	r3, [r4]
	mov	r3, r5
	sub	r3, #0xa
	lsl	r3, #16
	asr	r5, r3, #16
	b	.L291ca
.L291b6:
	ldrh	r2, [r4]
	mov	r3, r2
	sub	r3, #0xa
	strh	r3, [r4]
	lsl	r3, #16
	cmp	r3, #0
	bge	.L291ca
	mov	r3, r2
	add	r3, #0x59
	strh	r3, [r4]
.L291ca:
	cmp	r5, #0
	bge	.L291d0
	mov	r5, #0xc8
.L291d0:
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	Func_28ef0
.L291da:
	mov	r0, r5
.L291dc:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_29094

.thumb_func_start Func_291e4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	mov	r3, #8
	str	r3, [sp, #4]
	add	r6, sp, #0xc
	mov	r5, #0
	mov	r3, #2
	str	r5, [sp, #0xc]
	mov	r2, #0x1c
	str	r5, [r6, #4]
	mov	r1, #0
	str	r3, [sp]
	mov	r0, #1
	mov	r3, #0x14
	bl	Func_162d4
	ldr	r1, [sp, #4]
	mov	r5, r0
	bl	Func_292c4
	add	r7, sp, #0x14
	add	r1, sp, #8
	mov	r0, r7
	bl	Func_1c0dc
	add	r3, sp, #4
	mov	r8, r3
	b	.L2923e
.L29220:
	cmp	r0, #1
	bne	.L2922c
	ldr	r1, [sp, #4]
	mov	r0, r5
	bl	Func_292c4
.L2922c:
	ldr	r1, [sp, #0xc]
	ldr	r2, [r6, #4]
	lsl	r1, #3
	lsl	r2, #3
	add	r1, #0x3a
	add	r2, #0x14
	mov	r0, r7
	bl	Func_1c154
.L2923e:
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r5
	mov	r1, r8
	mov	r2, r6
	bl	Func_2938c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L29220
	ldr	r0, [sp, #8]
	bl	Func_1c17c
	mov	r0, r5
	mov	r1, #2
	bl	Func_16418
	mov	r0, #0
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_291e4

.thumb_func_start Func_29274
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r5, r2
	cmp	r1, #5
	bls	.L29280
	mov	r1, #5
.L29280:
	mov	r2, #0
	cmp	r1, #0
	beq	.L292a4
	mov	r6, #0xf
	mov	r4, sp
.L2928a:
	mov	r3, r0
	and	r3, r6
	cmp	r3, #9
	bhi	.L29296
	add	r3, #0x30
	b	.L29298
.L29296:
	add	r3, #0x37
.L29298:
	strb	r3, [r4]
	add	r2, #1
	lsr	r0, #4
	add	r4, #1
	cmp	r2, r1
	bne	.L2928a
.L292a4:
	sub	r2, r1, #1
	cmp	r2, #0
	blt	.L292bc
	mov	r3, sp
	add	r1, r2, r3
	mov	r12, r3
.L292b0:
	ldrb	r3, [r1]
	sub	r1, #1
	strb	r3, [r5]
	add	r5, #1
	cmp	r1, r12
	bge	.L292b0
.L292bc:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_29274

.thumb_func_start Func_292c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r0
	sub	sp, #0x24
	mov	r5, r1
	bl	Func_16478
	mov	r1, r10
	mov	r2, #0x30
	mov	r3, #0
	ldr	r0, =.L3742c
	bl	Func_1e940
	add	r2, sp, #8
	mov	r8, r2
	mov	r2, sp
	mov	r1, #0
	mov	r3, #0x1c
	add	r2, #0x21
	str	r1, [sp, #4]
	add	r3, sp
	mov	r1, #0x10
	str	r2, [sp]
	lsl	r7, r5, #8
	mov	r11, r3
	mov	r9, r1
.L29302:
	mov	r3, r11
.L29304:
	mov	r1, #0
	strb	r1, [r3]
	ldr	r2, [sp]
	add	r3, #1
	cmp	r3, r2
	bne	.L29304
	mov	r0, r7
	mov	r1, #3
	mov	r2, r11
	bl	Func_29274
	mov	r0, r11
	mov	r1, r10
	mov	r2, #0
	mov	r3, r9
	bl	Func_1e940
	ldr	r0, =.L37428
	mov	r1, r10
	mov	r2, #0x20
	mov	r3, r9
	bl	Func_1e940
	mov	r6, r8
	mov	r5, r8
	add	r6, #0xf
.L29338:
	mov	r0, r7
	bl	_Func_79338
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	add	r3, #0x30
	strb	r3, [r5]
	add	r5, #1
	add	r7, #1
	cmp	r5, r6
	ble	.L29338
	mov	r3, #0x10
	mov	r2, #0
	mov	r1, r8
	strb	r2, [r1, r3]
	mov	r0, r8
	mov	r3, r9
	mov	r1, r10
	mov	r2, #0x30
	bl	Func_1e940
	ldr	r1, [sp, #4]
	mov	r3, #8
	add	r1, #1
	add	r9, r3
	str	r1, [sp, #4]
	cmp	r1, #0x10
	bne	.L29302
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_292c4

.thumb_func_start Func_2938c
	push    {r5, r6, lr}
	ldr	r6, =iwram_1b04
	ldr	r3, [r6]
	mov	r5, r2
	mov	r2, #1
	and	r3, r2
	add	r4, r5, #4
	cmp	r3, #0
	beq	.L293c6
	ldr	r3, [r1]
	ldr	r2, [r4]
	lsl	r3, #4
	add	r3, r2
	ldr	r2, [r5]
	lsl	r3, #4
	add	r5, r3, r2
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	beq	.L293be
	mov	r0, r5
	bl	_Func_79374
	b	.L294bc
.L293be:
	mov	r0, r5
	bl	_Func_79358
	b	.L294bc
.L293c6:
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L293dc
	ldr	r3, [r6]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L293e2
.L293dc:
	mov	r0, #1
	neg	r0, r0
	b	.L294c2
.L293e2:
	ldr	r0, [r6]
	mov	r3, #0x40
	and	r0, r3
	cmp	r0, #0
	beq	.L293fc
	ldr	r3, [r4]
	sub	r3, #1
	str	r3, [r4]
	cmp	r3, #0
	bge	.L294c0
	mov	r3, #0xf
	str	r3, [r4]
	b	.L294c0
.L293fc:
	ldr	r3, [r6]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L29414
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	cmp	r3, #0xf
	ble	.L294c0
	str	r0, [r4]
	b	.L294c0
.L29414:
	ldr	r0, [r6]
	mov	r3, #0x20
	and	r0, r3
	cmp	r0, #0
	beq	.L2942e
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0
	bge	.L294c0
	mov	r3, #0xf
	str	r3, [r5]
	b	.L294c0
.L2942e:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L29446
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0xf
	ble	.L294c0
	str	r0, [r5]
	b	.L294c0
.L29446:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L29462
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L29462
	ldr	r3, [r1]
	sub	r3, #0xa
	b	.L29498
.L29462:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L29488
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L29488
	ldr	r3, [r1]
	add	r3, #0xa
	str	r3, [r1]
	cmp	r3, #0xf
	ble	.L294bc
	mov	r3, #0
	str	r3, [r1]
	b	.L294bc
.L29488:
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #2
	and	r0, r3
	cmp	r0, #0
	beq	.L294a4
	ldr	r3, [r1]
	sub	r3, #1
.L29498:
	str	r3, [r1]
	cmp	r3, #0
	bge	.L294bc
	mov	r3, #0xf
	str	r3, [r1]
	b	.L294bc
.L294a4:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L294c0
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0xf
	ble	.L294bc
	str	r0, [r1]
.L294bc:
	mov	r0, #1
	b	.L294c2
.L294c0:
	mov	r0, #0
.L294c2:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_2938c

.thumb_func_start Func_294d0
	bx	lr
.func_end Func_294d0

.thumb_func_start Func_294d4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r1
	mov	r8, r0
	lsl	r0, r5, #2
	add	r0, r5
	mov	r6, r2
	lsl	r0, #2
	add	r0, r6
	add	r0, #0x30
	bl	_Func_79358
	mov	r0, r8
	mov	r1, r5
	mov	r2, r6
	bl	_Func_7a1b4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_294d4

.thumb_func_start Func_29504
	push	{r5, r6, lr}
.L29506:
	bl	Func_1db70
	mov	r6, #1
	mov	r5, r0
	neg	r6, r6
	mov	r0, r6
	cmp	r5, r6
	beq	.L29544
	cmp	r5, #0
	bne	.L29524
	bl	Func_207c4
	cmp	r0, r6
	bne	.L29542
	b	.L29506
.L29524:
	cmp	r5, #1
	bne	.L29536
	ldr	r0, =0xc2a
	mov	r1, #1
	bl	Func_1776c
	ldr	r3, =iwram_1cc8
	strb	r5, [r3]
	b	.L29542
.L29536:
	cmp	r5, #2
	bne	.L29542
	bl	Func_1d4cc
	cmp	r0, r6
	beq	.L29506
.L29542:
	mov	r0, #0
.L29544:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_29504

.thumb_func_start Func_29554
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r2, #1
	mov	r1, #0
	str	r2, [sp, #4]
	ldr	r3, =iwram_1e68
	mov	r10, r1
	mov	r11, r1
	mov	r9, r1
	add	r1, sp, #4
	ldr	r3, [r3]
	ldrh	r1, [r1]
	mov	r0, #1
	strh	r1, [r3, #4]
	bl	Func_30f8
.L29580:
	ldr	r2, =iwram_1b04
	ldr	r3, [r2]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L29596
	mov	r3, #1
	mov	r1, #1
	neg	r3, r3
	str	r1, [sp, #4]
	add	r11, r3
.L29596:
	ldr	r2, =iwram_1b04
	ldr	r3, [r2]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L295a8
	mov	r3, #1
	str	r3, [sp, #4]
	add	r11, r3
.L295a8:
	ldr	r1, =iwram_1b04
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L295c0
	mov	r2, #1
	mov	r3, #1
	neg	r2, r2
	str	r3, [sp, #4]
	add	r9, r2
.L295c0:
	ldr	r1, =iwram_1b04
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L295d4
	mov	r2, #1
	str	r2, [sp, #4]
	add	r9, r2
.L295d4:
	ldr	r1, =iwram_1b04
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L295e2
	b	.L2973c
.L295e2:
	ldr	r3, [r1]
	mov	r5, #2
	and	r3, r5
	cmp	r3, #0
	beq	.L295ee
	b	.L2973c
.L295ee:
	ldr	r2, [sp, #4]
	cmp	r2, #0
	bne	.L295f6
	b	.L29734
.L295f6:
	mov	r2, r11
	mov	r3, #0
	add	r2, #8
	str	r3, [sp, #4]
	mov	r3, r2
	cmp	r2, #0
	bge	.L29608
	mov	r3, r11
	add	r3, #0xf
.L29608:
	asr	r3, #3
	lsl	r3, #3
	mov	r0, r9
	sub	r2, r3
	mov	r1, #3
	add	r0, #3
	mov	r11, r2
	bl	Func_b1c_from_thumb
	mov	r1, #2
	mov	r9, r0
	mov	r0, r10
	bl	Func_16418
	mov	r1, #0
	mov	r0, #0xa
	mov	r2, #0x12
	mov	r3, #0xc
	str	r5, [sp]
	bl	Func_162d4
	mov	r1, r9
	mov	r10, r0
	cmp	r1, #0
	bne	.L2963e
	ldr	r0, =.L37440
	b	.L29646
.L2963e:
	mov	r2, r9
	cmp	r2, #1
	bne	.L29652
	ldr	r0, =.L37448
.L29646:
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e940
	b	.L2965e
.L29652:
	ldr	r0, =.L37450
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e940
.L2965e:
	ldr	r0, =.L37458
	mov	r1, r10
	mov	r2, #0
	mov	r3, #8
	bl	Func_1e940
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r11
	mov	r1, #0
	mov	r2, r10
	mov	r3, #0x28
	bl	Func_1ea08
	mov	r1, r11
	lsl	r1, #5
	mov	r8, r1
	mov	r2, #8
	str	r2, [sp]
	mov	r0, r8
	mov	r1, #3
	mov	r2, r10
	mov	r3, #0x40
	bl	Func_1ea08
	ldr	r0, =.L37460
	mov	r1, r10
	mov	r2, #0x58
	mov	r3, #8
	bl	Func_1e940
	mov	r3, #8
	mov	r0, r8
	str	r3, [sp]
	add	r0, #0x1f
	mov	r1, #3
	mov	r2, r10
	mov	r3, #0x60
	bl	Func_1ea08
	mov	r5, #0
.L296b0:
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0xc]
	mov	r2, r5
	cmp	r5, #0
	bge	.L296be
	add	r2, r5, #7
.L296be:
	asr	r2, #3
	lsl	r3, r2, #3
	lsl	r2, #4
	sub	r3, r5, r3
	mov	r6, r2
	mov	r1, r9
	lsl	r7, r3, #4
	add	r6, #0x10
	cmp	r1, #0
	bne	.L296e4
	mov	r2, r8
	add	r0, r2, r5
	str	r1, [sp]
	add	r2, sp, #0xc
	mov	r1, #1
	add	r3, sp, #8
	bl	Func_19fcc
	b	.L296fc
.L296e4:
	mov	r3, r9
	cmp	r3, #1
	bne	.L2970e
	mov	r1, r8
	mov	r3, #0
	add	r0, r1, r5
	str	r3, [sp]
	mov	r1, #1
	add	r2, sp, #0xc
	add	r3, sp, #8
	bl	Func_1a404
.L296fc:
	mov	r1, #0x80
	ldr	r0, [sp, #0xc]
	lsl	r1, #23
	mov	r2, r10
	mov	r3, r7
	str	r6, [sp]
	bl	Func_1eadc
	b	.L2972e
.L2970e:
	bl	Func_4080
	mov	r1, #0
	mov	r2, r0
	mov	r0, r5
	str	r2, [sp, #0xc]
	bl	Func_1a2ec
	mov	r1, #0x80
	ldr	r0, [sp, #0xc]
	lsl	r1, #23
	mov	r2, r10
	mov	r3, r7
	str	r6, [sp]
	bl	Func_1eadc
.L2972e:
	add	r5, #1
	cmp	r5, #0x1f
	ble	.L296b0
.L29734:
	mov	r0, #1
	bl	Func_30f8
	b	.L29580
.L2973c:
	mov	r0, r10
	mov	r1, #2
	bl	Func_16418
	ldr	r3, =iwram_1e68
	ldr	r2, [r3]
	mov	r3, #0
	mov	r0, #0
	strh	r3, [r2, #4]
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_29554

.thumb_func_start Func_2977c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	sub	sp, #0x18
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r1, #0
	mov	r2, #0xa
	mov	r11, r3
	mov	r0, #0
	mov	r3, #5
	bl	Func_19da8
	mov	r3, #2
	mov	r2, #0xe
	str	r0, [sp, #0xc]
	str	r3, [sp]
	mov	r1, #0xa
	mov	r3, #3
	mov	r0, #0xa
	bl	Func_162d4
	mov	r7, r0
	ldr	r0, =Data_367e4
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	mov	r2, #1
	neg	r2, r2
	mov	r1, #0
	cmp	r3, r2
	beq	.L297d6
	mov	r12, r2
	mov	r2, r0
.L297ca:
	add	r2, #4
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	add	r1, #1
	cmp	r3, r12
	bne	.L297ca
.L297d6:
	ldr	r0, =Data_3680c
	mov	r8, r1
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	beq	.L297f6
	mov	r12, r2
	mov	r2, r0
.L297ea:
	add	r2, #4
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	add	r1, #1
	cmp	r3, r12
	bne	.L297ea
.L297f6:
	add	r1, r8
	mov	r10, r1
	ldr	r6, =iwram_1b04
	mov	r1, #2
	mov	r9, r1
.L29800:
	ldr	r3, [r6]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L29810
	mov	r2, #1
	str	r2, [sp, #8]
	sub	r5, #1
.L29810:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L29820
	mov	r3, #1
	str	r3, [sp, #8]
	add	r5, #1
.L29820:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L29832
	mov	r0, #1
	str	r0, [sp, #8]
	sub	r5, #0xa
.L29832:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L29844
	mov	r1, #1
	str	r1, [sp, #8]
	add	r5, #0xa
.L29844:
	ldr	r3, [r6]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L298ce
	ldr	r3, [r6]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	bne	.L298ce
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L298c6
	mov	r0, #0
	mov	r1, r10
	str	r0, [sp, #8]
	add	r0, r5, r1
	bl	Func_b1c_from_thumb
	mov	r5, r0
	mov	r0, r7
	bl	Func_16478
	cmp	r5, r8
	bge	.L29880
	ldr	r2, =Data_367e4
	lsl	r3, r5, #2
	add	r3, #2
	ldrsh	r0, [r2, r3]
	b	.L29890
.L29880:
	mov	r0, r8
	sub	r2, r5, r0
	ldr	r3, =Data_3680c
	lsl	r2, #2
	add	r2, #2
	ldrsh	r3, [r3, r2]
	mov	r0, r3
	add	r0, #0x80
.L29890:
	ldr	r1, =0x12f2
	mov	r2, r11
	ldrh	r3, [r2, r1]
	mov	r2, #0xf
	str	r3, [sp, #0x14]
	mov	r3, #1
	str	r2, [sp]
	str	r3, [sp, #4]
	add	r2, sp, #0x14
	add	r3, sp, #0x10
	mov	r1, #0
	bl	Func_1a4fc
	mov	r3, #0
	mov	r0, r5
	mov	r1, #2
	mov	r2, r7
	str	r3, [sp]
	bl	Func_1ea08
	ldr	r0, =0xdd2
	mov	r1, r7
	add	r0, r5, r0
	mov	r2, #0x18
	mov	r3, #0
	bl	Func_1e7c0
.L298c6:
	mov	r0, #1
	bl	Func_30f8
	b	.L29800
.L298ce:
	mov	r0, r7
	mov	r1, #2
	bl	Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_2977c

	.section .rodata

.L37308:
	.incrom 0x37308, 0x37328
.L37328:
	.incrom 0x37328, 0x373a8
.L373a8:
	.incrom 0x373a8, 0x373b8
.L373b8:
	.incrom 0x373b8, 0x373d8
.L373d8:
	.incrom 0x373d8, 0x373dc
.L373dc:
	.incrom 0x373dc, 0x373e0
.L373e0:
	.incrom 0x373e0, 0x373e4
.L373e4:
	.incrom 0x373e4, 0x373e7
.L373e7:
	.incrom 0x373e7, 0x373eb
.L373eb:
	.incrom 0x373eb, 0x373ef
.L373ef:
	.incrom 0x373ef, 0x373f7
.L373f7:
	.incrom 0x373f7, 0x37403
.L37403:
	.incrom 0x37403, 0x3740f
.L3740f:
	.incrom 0x3740f, 0x37428
.L37428:
	.incrom 0x37428, 0x3742c
.L3742c:
	.incrom 0x3742c, 0x37440
.L37440:
	.incrom 0x37440, 0x37448
.L37448:
	.incrom 0x37448, 0x37450
.L37450:
	.incrom 0x37450, 0x37458
.L37458:
	.incrom 0x37458, 0x37460
.L37460:
	.incrom 0x37460, 0x3842c
