	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_a7380
	push	{r5, r6, r7, lr}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	Func_48b0
	ldr	r3, =iwram_1e68
	ldr	r2, [r3]
	mov	r3, #1
	mov	r7, r0
	mov	r1, #0
	strh	r3, [r2, #4]
	mov	r0, #0
	mov	r3, #0x14
	mov	r2, #0x1e
	bl	_Func_170f8
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	bl	Func_a1090
	mov	r2, #0x82
	lsl	r2, #2
	add	r0, r7, r2
	bl	_Func_796c4
	ldr	r2, =0x219
	add	r3, r7, r2
	strb	r0, [r3]
	mov	r1, #3
	mov	r0, #0
	mov	r2, #0
	mov	r3, #7
	bl	Func_a8034
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #5
	mov	r0, #0xd
	bl	_Func_162d4
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	str	r0, [r3]
	mov	r0, #0xa9
	lsl	r0, #1
	ldr	r1, .La7424	@ 0x1e
	mov	r2, #7
	add	r3, r7, r0
.La73ee:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La73ee
	mov	r3, #0x88
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #3
	strh	r3, [r2]
	bl	Func_a7440
	mov	r6, r0
	ldr	r0, [r7, #0x24]
	bl	_Func_164ac
	bl	Func_a34c0
	ldr	r3, =iwram_1e68
	ldr	r3, [r3]
	mov	r5, #0
	strh	r5, [r3, #4]
	mov	r0, #1
	bl	Func_30f8
	b	.La7430

	.align	2, 0
.La7424:
	.word	0x1e
	.pool

.La7430:
	mov	r0, #0x37
	bl	Func_2dd8
	mov	r0, r6
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a7380

.thumb_func_start Func_a7440
	push	{r5, lr}
	ldr	r3, =iwram_1f2c
	ldr	r5, [r3]
	mov	r2, #0
	mov	r1, #0xba
	lsl	r1, #1
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, #0
	bl	Func_a77a4
	mov	r3, #1
	neg	r3, r3
	mov	r2, r0
	cmp	r0, r3
	beq	.La7466
	ldr	r1, =0x21a
	add	r3, r5, r1
	ldrb	r2, [r3]
.La7466:
	mov	r0, r2
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_a7440

.thumb_func_start Func_a7478
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	Func_48b0
	mov	r7, r0
	mov	r0, #0x40
	bl	Func_4970
	mov	r6, #0x80
	lsl	r6, #6
	mov	r9, r0
	mov	r0, r6
	bl	Func_4970
	ldr	r3, =iwram_1e68
	ldr	r2, [r3]
	mov	r3, #1
	mov	r1, #0
	strh	r3, [r2, #4]
	mov	r11, r0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_Func_170f8
	mov	r0, #1
	bl	Func_30f8
	bl	Func_a1070
	mov	r0, #0
	bl	Func_a1090
	mov	r0, #0x88
	lsl	r0, #2
	mov	r2, #0x82
	add	r3, r7, r0
	lsl	r2, #2
	mov	r5, #0
	strh	r5, [r3]
	add	r0, r7, r2
	bl	_Func_796c4
	ldr	r2, =0x219
	add	r3, r7, r2
	strb	r0, [r3]
	mov	r1, #3
	mov	r3, #7
	mov	r0, #0
	mov	r2, #0
	bl	Func_a8034
	mov	r1, #0xa0
	lsl	r1, #19
	mov	r2, #0x40
	ldr	r5, =Func_1af8
	mov	r0, r9
	bl	_call_via_r5
	mov	r0, #0xe
	bl	Func_a2144
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	lsl	r1, #19
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001c8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #4
	ldr	r0, =0x5000200
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r6
	ldr	r1, =0x6004000
	mov	r0, r11
	bl	_call_via_r5
	ldr	r3, =Func_8d8
	mov	r1, r6
	ldr	r2, =0x33333333
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #1
	bl	_Func_1e3c8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #5
	mov	r0, #0xd
	bl	_Func_162d4
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	str	r0, [r3]
	mov	r0, #0xa9
	lsl	r0, #1
	ldr	r1, .La75a0	@ 0x1e
	mov	r2, #7
	add	r3, r7, r0
.La7570:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7570
	mov	r0, #1
	neg	r0, r0
	bl	_Func_7a5bc
	cmp	r0, #0
	beq	.La7594
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r1, #0
	bl	Func_ad274
.La7594:
	mov	r2, #0x8d
	lsl	r2, #2
	ldr	r0, .La75a4	@ 0x80
	add	r3, r7, r2
	b	.La75d8

	.align	2, 0
.La75a0:
	.word	0x1e
.La75a4:
	.word	0x80
	.pool

.La75d8:
	mov	r1, #0x82
	mov	r2, #3
.La75dc:
	sub	r2, #1
	strh	r1, [r3]
	strh	r0, [r3, #8]
	add	r1, #0x20
	add	r3, #2
	cmp	r2, #0
	bge	.La75dc
	ldr	r0, =0x6002500
	bl	_Func_219c8
	bl	Func_a2474
	mov	r2, #0
	mov	r0, #0x88
	mov	r8, r2
	lsl	r0, #2
	add	r3, r7, r0
	mov	r0, r8
	strh	r0, [r3]
	bl	Func_a76d0
	mov	r10, r0
	bl	Func_a2490
	ldr	r0, [r7, #0x24]
	bl	_Func_164ac
	bl	Func_ad318
	bl	Func_a1050
	mov	r3, #0x14
	mov	r1, #0
	mov	r2, #0x1e
	mov	r0, #0
	bl	_Func_170f8
	mov	r0, #1
	bl	Func_30f8
	bl	_Func_1e318
	mov	r0, #0
	bl	_Func_1e3c8
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0xa0
	ldr	r5, =Func_1af8
	mov	r1, r9
	mov	r2, #0x40
	lsl	r0, #19
	bl	_call_via_r5
	mov	r2, #0x80
	mov	r1, r11
	lsl	r2, #6
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r0, r11
	bl	Func_2df0
	mov	r0, r9
	bl	Func_2df0
	ldr	r5, =iwram_1e8c
	ldr	r6, =0xea6
	ldr	r2, [r5]
	mov	r3, #1
	strb	r3, [r2, r6]
	bl	Func_a34c0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_Func_170f8
	mov	r0, #0x37
	bl	Func_2dd8
	mov	r3, r5
	sub	r3, #0x24
	ldr	r3, [r3]
	mov	r2, r8
	strh	r2, [r3, #4]
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_Func_16178
	ldr	r3, [r5]
	mov	r0, #0
	add	r3, r6
	strb	r0, [r3]
	add	sp, #4
	mov	r0, r10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a7478

.thumb_func_start Func_a76d0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	mov	r5, #0
	mov	r2, #0xd
	ldr	r7, [r3]
	mov	r8, r5
	mov	r6, #0
	mov	r10, r2
	b	.La776e
.La76e8:
	cmp	r5, #1
	beq	.La7722
	cmp	r5, #1
	bgt	.La76f6
	cmp	r5, #0
	beq	.La7700
	b	.La776a
.La76f6:
	cmp	r5, #2
	beq	.La773a
	cmp	r5, #3
	beq	.La7754
	b	.La776a
.La7700:
	mov	r2, #0xba
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, r8
	strh	r2, [r3]
	mov	r0, #0
	bl	Func_a77a4
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.La771e
	mov	r2, #1
	mov	r6, r0
	mov	r8, r2
.La771e:
	mov	r5, #1
	b	.La776e
.La7722:
	ldr	r3, [r7, #0x14]
	mov	r2, r10
	strb	r2, [r3, #5]
	bl	Func_a8114
	mov	r6, r0
	mvn	r2, r6
	neg	r3, r2
	orr	r3, r2
	lsr	r5, r3, #31
	lsl	r5, #1
	b	.La776e
.La773a:
	ldr	r3, [r7, #0x14]
	mov	r2, r10
	strb	r2, [r3, #5]
	bl	Func_a90bc
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	mov	r5, #0
	cmp	r6, r3
	beq	.La776e
	mov	r5, #3
	b	.La776e
.La7754:
	ldr	r3, [r7, #0x14]
	mov	r2, r10
	strb	r2, [r3, #5]
	bl	Func_a96d8
	mov	r6, r0
	mvn	r2, r6
	neg	r3, r2
	orr	r3, r2
	lsr	r5, r3, #31
	b	.La776e
.La776a:
	mov	r3, #1
	mov	r8, r3
.La776e:
	mov	r2, r8
	cmp	r2, #0
	bne	.La7780
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.La76e8
.La7780:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.La7790
	mov	r6, #1
	neg	r6, r6
.La7790:
	mov	r0, r6
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a76d0

.thumb_func_start Func_a77a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0x1c
	add	r2, r0
	ldr	r3, =iwram_1f2c
	lsl	r0, #2
	mov	r10, r0
	ldr	r5, [r3]
	mov	r3, r10
	add	r3, #0x14
	ldr	r0, [r5, r3]
	mov	r6, #0
	mov	r3, #1
	strb	r3, [r0, #5]
	strh	r6, [r0, #0xc]
	ldr	r0, [r5, #0x10]
	sub	sp, #4
	mov	r8, r2
	ldrsb	r7, [r5, r2]
	bl	_Func_16498
	mov	r0, #0xb9
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.La77ee
	mov	r3, #3
	ldr	r0, [r5, #0x10]
	mov	r1, #9
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #9
	bl	_Func_1e41c
.La77ee:
	mov	r3, #1
	neg	r3, r3
	cmp	r7, r3
	bne	.La77fe
	ldr	r3, .La7820	@ 0
	mov	r2, r8
	strb	r3, [r5, r2]
	b	.La780c
.La77fe:
	lsl	r0, r7, #1
	add	r0, r7
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_a1ac0
.La780c:
	mov	r2, #0x88
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r3, [r3]
	cmp	r3, #3
	bne	.La7828
	bl	Func_a7d68
	b	.La782c

	.align	2, 0
.La7820:
	.word	0
	.pool

.La7828:
	bl	Func_a7a34
.La782c:
	mov	r6, r0
	mov	r3, r10
	add	r3, #0x14
	ldr	r0, [r5, r3]
	bl	Func_a17c4
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a77a4

.thumb_func_start Func_a7850
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	sub	sp, #0x1c
	str	r3, [sp, #0x18]
	bl	Func_a9d84
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r1, #0x86
	ldr	r0, [sp, #0x18]
	lsl	r1, #1
	add	r5, r0, r1
	ldr	r0, [r5]
	bl	_Func_16498
	ldr	r1, [r5]
	ldr	r0, =0xb17
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_1e7c0
	ldr	r2, [sp, #0x18]
	ldr	r3, [r2, #0x14]
	mov	r2, #0xd
	strb	r2, [r3, #5]
	ldr	r0, [sp, #0x18]
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r3, [r3]
	mov	r0, #1
	strb	r2, [r3, #5]
	bl	Func_30f8
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x18]
	ldr	r2, [r2, #0x24]
	mov	r0, #0xa2
	mov	r1, #0x8d
	lsl	r0, #1
	lsl	r1, #2
	ldr	r5, .La78c4	@ 0x46
	ldr	r4, .La78c8	@ 0x1e
	mov	r10, r2
	add	r2, r3, r0
	add	r3, r1
	mov	r0, #0x20
	mov	r1, #3
	b	.La78d4

	.align	2, 0
.La78c4:
	.word	0x46
.La78c8:
	.word	0x1e
	.pool

.La78d4:
	sub	r1, #1
	strh	r0, [r3]
	strh	r5, [r3, #8]
	add	r0, #0x38
	strh	r4, [r2]
	add	r3, #2
	add	r2, #2
	cmp	r1, #0
	bge	.La78d4
	mov	r0, r10
	bl	_Func_16498
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #0xb
	mov	r3, #0x1c
	bl	_Func_1e41c
	mov	r1, #0x86
	ldr	r2, [sp, #0x18]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0x60
	ldr	r1, [r3]
	neg	r2, r2
	ldr	r0, =0xb18
	mov	r3, #0x84
	bl	_Func_1e74c
	mov	r2, #0
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
	str	r2, [sp, #4]
	mov	r9, r2
.La791c:
	ldr	r3, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0xc]
	mov	r2, #0x18
	mov	r5, r3
	str	r3, [sp, #0x14]
	str	r0, [sp, #0x10]
	mov	r6, #0
	mov	r11, r1
	mov	r8, r2
	add	r5, #0x30
.La7932:
	ldr	r3, [sp, #0x14]
	mov	r0, r5
	add	r7, r3, r6
	bl	_Func_79338
	cmp	r0, #0
	beq	.La7964
	mov	r2, #0
	str	r2, [sp]
	ldr	r1, =0x1001
	ldr	r2, [sp, #0x10]
	add	r3, r6, #3
	mov	r0, r10
	add	r1, r9
	add	r2, #1
	bl	_Func_19000
	ldr	r0, =0x45f
	mov	r2, r11
	add	r0, r7, r0
	mov	r1, r10
	add	r2, #0x10
	mov	r3, r8
	bl	_Func_1e7c0
.La7964:
	mov	r0, #8
	add	r6, #1
	add	r8, r0
	add	r5, #1
	cmp	r6, #6
	ble	.La7932
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	mov	r0, #1
	add	r1, #0x38
	add	r9, r0
	str	r1, [sp, #0xc]
	add	r2, #7
	add	r3, #0x14
	mov	r1, r9
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	cmp	r1, #3
	ble	.La791c
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xea3
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	ldr	r6, =iwram_1c94
	mov	r5, #7
.La799c:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La79b6
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.La799c
.La79b6:
	ldr	r3, [sp, #0x18]
	ldr	r0, [r3, #0x24]
	bl	_Func_16498
	mov	r1, #0x86
	ldr	r0, [sp, #0x18]
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r0, [r3]
	bl	_Func_164ac
	mov	r1, #0x8d
	ldr	r2, [sp, #0x18]
	lsl	r1, #2
	ldr	r0, .La79dc	@ 0x80
	add	r3, r2, r1
	mov	r1, #0x82
	mov	r2, #3
	b	.La79f8

	.align	2, 0
.La79dc:
	.word	0x80
	.pool

.La79f8:
	sub	r2, #1
	strh	r1, [r3]
	strh	r0, [r3, #8]
	add	r1, #0x20
	add	r3, #2
	cmp	r2, #0
	bge	.La79f8
	ldr	r2, [sp, #0x18]
	ldr	r3, [r2, #0x14]
	mov	r2, #1
	strb	r2, [r3, #5]
	ldr	r0, [sp, #0x18]
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r3, [r3]
	mov	r0, #0x71
	strb	r2, [r3, #5]
	bl	_Func_f9080
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a7850

.thumb_func_start Func_a7a34
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r1, #0x1c
	ldrsb	r1, [r3, r1]
	mov	r2, #0x1e
	ldrsb	r2, [r3, r2]
	mov	r8, r3
	sub	sp, #0xc
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r10, r1
	mov	r3, #0x88
	mov	r1, #0
	str	r1, [sp, #4]
	lsl	r3, #2
	add	r3, r8
	ldrh	r3, [r3]
	mov	r11, r2
	mov	r1, #0x82
	mov	r2, r10
	lsl	r1, #2
	lsl	r7, r2, #1
	mov	r9, r3
	mov	r2, r8
	add	r3, r7, r1
	ldrh	r0, [r2, r3]
	bl	_Func_77394
	mov	r3, #0x8d
	lsl	r3, #2
	ldr	r0, .La7ab0	@ 0x80
	add	r3, r8
	mov	r1, #0x82
	mov	r2, #3
.La7a86:
	sub	r2, #1
	strh	r1, [r3]
	strh	r0, [r3, #8]
	add	r1, #0x20
	add	r3, #2
	cmp	r2, #0
	bge	.La7a86
	mov	r0, #0xe
	bl	Func_a2144
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	lsl	r1, #19
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001c8
	ldr	r2, =0x80000001
	b	.La7acc

	.align	2, 0
.La7ab0:
	.word	0x80
	.pool

.La7acc:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #4
	ldr	r0, =0x5000200
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.La7d26
.La7ae6:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.La7bac
	mov	r1, #0
	mov	r5, #0x86
	str	r1, [sp, #8]
	lsl	r5, #1
	add	r5, r8
	ldr	r0, [r5]
	bl	_Func_16498
	ldr	r6, =0xb0d
	ldr	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	mov	r0, #0x30
	bl	_Func_79338
	cmp	r0, #0
	beq	.La7b20
	ldr	r1, [r5]
	ldr	r0, =0xb16
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_1e7c0
.La7b20:
	ldr	r1, [r5]
	sub	r0, r6, #3
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
	mov	r0, r10
	mov	r1, r11
	add	r0, r11
	bl	Func_b1c_from_thumb
	mov	r2, #0x82
	lsl	r2, #2
	lsl	r7, r0, #1
	add	r5, r7, r2
	mov	r3, r8
	mov	r10, r0
	ldrh	r0, [r3, r5]
	bl	_Func_77394
	mov	r0, r9
	mov	r1, #3
	add	r0, #3
	bl	Func_b1c_from_thumb
	mov	r1, r8
	mov	r9, r0
	ldrh	r0, [r1, r5]
	mov	r1, r9
	bl	Func_a8088
	mov	r2, r8
	ldrh	r1, [r2, r5]
	mov	r0, r8
	bl	Func_a1804
	mov	r3, #0xa9
	lsl	r3, #1
	ldr	r1, .La7b8c	@ 0x1e
	mov	r6, r7
	mov	r2, #7
	add	r3, r8
.La7b74:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7b74
	mov	r3, #0xa2
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, .La7b90	@ 0x1a
	mov	r1, r8
	strh	r3, [r1, r2]
	b	.La7bb0

	.align	2, 0
.La7b8c:
	.word	0x1e
.La7b90:
	.word	0x1a
	.pool

.La7bac:
	mov	r2, r10
	lsl	r7, r2, #1
.La7bb0:
	mov	r3, r10
	add	r0, r7, r3
	lsl	r0, #3
	mov	r1, #0x10
	sub	r0, #0xa
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La7bdc
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r1, #1
	str	r1, [sp, #4]
	b	.La7d38
.La7bdc:
	ldr	r6, [r1]
	mov	r3, #2
	and	r6, r3
	cmp	r6, #0
	beq	.La7bf4
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #4]
	b	.La7d38
.La7bf4:
	ldr	r7, =iwram_1b04
	mov	r3, #0x80
	ldr	r5, [r7]
	lsl	r3, #1
	and	r5, r3
	cmp	r5, #0
	beq	.La7c58
	mov	r0, r10
	mov	r1, #1
	bl	Func_a7f44
	cmp	r0, #0
	beq	.La7cb6
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r3, #1
	add	r10, r3
	bl	Func_a195c
	mov	r1, r8
	ldr	r0, [r1, #0x10]
	mov	r2, #2
	mov	r1, #2
	mov	r3, #8
	str	r6, [sp]
	bl	Func_a1870
	mov	r3, #0xa9
	lsl	r3, #1
	ldr	r1, .La7c4c	@ 0x1e
	mov	r2, #7
	add	r3, r8
.La7c36:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7c36
	mov	r2, r10
	mov	r3, #0xa2
	lsl	r3, #1
	lsl	r7, r2, #1
	b	.La7cac

	.align	2, 0
.La7c4c:
	.word	0x1e
	.pool

.La7c58:
	ldr	r2, [r7]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La7ccc
	mov	r0, r10
	mov	r1, #0
	bl	Func_a7f44
	cmp	r0, #0
	beq	.La7cb6
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	bl	Func_a195c
	mov	r3, r8
	ldr	r0, [r3, #0x10]
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	Func_a1870
	mov	r3, #0xa9
	lsl	r3, #1
	ldr	r1, =0x1e
	mov	r2, #7
	add	r3, r8
.La7c9a:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7c9a
	mov	r1, r10
	mov	r3, #0xa2
	lsl	r7, r1, #1
	lsl	r3, #1
.La7cac:
	add	r2, r7, r3
	ldr	r3, =0x1a
	mov	r1, r8
	strh	r3, [r1, r2]
	b	.La7cbc
.La7cb6:
	mov	r0, #0x72
	bl	_Func_f9080
.La7cbc:
	mov	r0, #1
	bl	Func_30f8
	b	.La7d26

	.pool_aligned

.La7ccc:
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	beq	.La7cea
	mov	r0, #0x30
	bl	_Func_79338
	cmp	r0, #0
	beq	.La7cea
	bl	Func_a7850
	mov	r2, #1
	str	r2, [sp, #8]
	b	.La7d26
.La7cea:
	ldr	r2, [r7]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.La7d0a
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, r11
	cmp	r3, #1
	ble	.La7d0a
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	str	r2, [sp, #8]
	add	r10, r1
.La7d0a:
	ldr	r2, [r7]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.La7d26
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, r11
	cmp	r3, #1
	ble	.La7d26
	mov	r1, #1
	str	r1, [sp, #8]
	add	r10, r1
.La7d26:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La7d34
	b	.La7ae6
.La7d34:
	mov	r2, r10
	lsl	r7, r2, #1
.La7d38:
	mov	r1, r8
	mov	r3, r10
	strb	r3, [r1, #0x1c]
	mov	r3, #0x82
	lsl	r3, #2
	add	r2, r7, r3
	ldrh	r3, [r1, r2]
	str	r3, [r1, #8]
	ldr	r3, =0x21a
	ldrh	r2, [r1, r2]
	add	r3, r8
	strb	r2, [r3]
	ldr	r0, [sp, #4]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a7a34

.thumb_func_start Func_a7d68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r7, [r3]
	mov	r0, #0x1c
	ldrsb	r0, [r7, r0]
	sub	sp, #8
	mov	r2, #1
	mov	r8, r0
	mov	r0, #0x88
	mov	r1, #0x1e
	ldrsb	r1, [r7, r1]
	lsl	r0, #2
	str	r2, [sp, #4]
	add	r3, r7, r0
	ldrh	r3, [r3]
	mov	r9, r1
	mov	r1, r8
	str	r3, [sp]
	lsl	r1, #1
	mov	r3, #0x82
	mov	r10, r1
	lsl	r3, #2
	add	r3, r10
	ldrh	r0, [r7, r3]
	bl	_Func_77394
	mov	r2, #0x86
	lsl	r2, #1
	add	r6, r7, r2
	ldr	r0, [r6]
	bl	_Func_16498
	ldr	r5, =0xc05
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	add	r5, #1
	bl	_Func_1e7c0
	mov	r3, #0x10
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r3, #0xe4
	lsl	r3, #1
	add	r3, r7
	mov	r11, r3
.La7dd8:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.La7e84
	mov	r1, #0
	mov	r0, r8
	str	r1, [sp, #4]
	add	r0, r9
	mov	r1, r9
	bl	Func_b1c_from_thumb
	mov	r8, r0
	mov	r2, r8
	lsl	r2, #1
	mov	r5, #0x82
	mov	r10, r2
	lsl	r5, #2
	add	r5, r10
	ldrh	r0, [r7, r5]
	bl	_Func_77394
	ldr	r0, [sp]
	mov	r1, #3
	add	r0, #3
	bl	Func_b1c_from_thumb
	str	r0, [sp]
	ldr	r1, [sp]
	ldrh	r0, [r7, r5]
	bl	Func_a8088
	ldrh	r1, [r7, r5]
	mov	r0, r7
	bl	Func_a1804
	mov	r0, #0xa9
	lsl	r0, #1
	ldr	r1, .La7e58	@ 0x1e
	mov	r6, r10
	mov	r2, #7
	add	r3, r7, r0
.La7e28:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7e28
	mov	r1, #0xa2
	lsl	r1, #1
	ldr	r3, .La7e5c	@ 0x1a
	add	r2, r6, r1
	strh	r3, [r7, r2]
	mov	r2, #0x82
	lsl	r2, #2
	add	r3, r6, r2
	ldrh	r0, [r7, r3]
	bl	_Func_77394
	mov	r2, #0
	mov	r1, r11
	bl	Func_a68ec
	mov	r1, #0x86
	lsl	r1, #2
	b	.La7e68

	.align	2, 0
.La7e58:
	.word	0x1e
.La7e5c:
	.word	0x1a
	.pool

.La7e68:
	add	r3, r7, r1
	strb	r0, [r3]
	mov	r0, r11
	bl	Func_a68a8
	mov	r0, #0x60
	mov	r1, #0x60
	mov	r2, #8
	bl	Func_a9b94
	mov	r0, r11
	bl	Func_a3d24
	b	.La7e8a
.La7e84:
	mov	r2, r8
	lsl	r2, #1
	mov	r10, r2
.La7e8a:
	mov	r0, r10
	add	r0, r8
	lsl	r0, #3
	mov	r1, #0x10
	sub	r0, #0xa
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La7eb4
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r0, #1
	b	.La7f0e
.La7eb4:
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La7eca
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r0, #1
	neg	r0, r0
	b	.La7f0e
.La7eca:
	ldr	r5, =iwram_1b04
	ldr	r2, [r5]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.La7eec
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, r9
	cmp	r3, #1
	ble	.La7eec
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	str	r1, [sp, #4]
	add	r8, r0
.La7eec:
	ldr	r2, [r5]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	bne	.La7ef8
	b	.La7dd8
.La7ef8:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, r9
	cmp	r2, #1
	bgt	.La7f06
	b	.La7dd8
.La7f06:
	mov	r3, #1
	add	r8, r3
	str	r3, [sp, #4]
	b	.La7dd8
.La7f0e:
	mov	r1, r8
	mov	r2, #0x82
	strb	r1, [r7, #0x1c]
	lsl	r2, #2
	add	r2, r10
	ldrh	r3, [r7, r2]
	str	r3, [r7, #8]
	ldr	r1, =0x21a
	ldrh	r2, [r7, r2]
	add	r3, r7, r1
	strb	r2, [r3]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a7d68

.thumb_func_start Func_a7f44
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	ldr	r2, =0x219
	mov	r8, r3
	add	r2, r8
	ldrb	r3, [r2]
	sub	sp, #0x38
	cmp	r3, #1
	bls	.La7f6a
	cmp	r1, #1
	bne	.La7f6e
	ldrb	r3, [r2]
	sub	r3, #1
	cmp	r0, r3
	bne	.La7f72
.La7f6a:
	mov	r0, #0
	b	.La801e
.La7f6e:
	cmp	r0, #0
	beq	.La7f6a
.La7f72:
	mov	r7, sp
	mov	r2, #0
	add	r3, sp, #0x34
	mov	r12, r7
.La7f7a:
	str	r2, [r3]
	sub	r3, #4
	cmp	r3, r12
	bge	.La7f7a
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r6, #0
	cmp	r6, r3
	bge	.La7fa8
	ldr	r5, =0x219
	mov	r2, #0x82
	lsl	r2, #2
	add	r5, r8
	mov	r4, r7
	add	r2, r8
.La7f9a:
	ldrh	r3, [r2]
	stmia	r4!, {r3}
	ldrb	r3, [r5]
	add	r6, #1
	add	r2, #2
	cmp	r6, r3
	blt	.La7f9a
.La7fa8:
	cmp	r1, #1
	bne	.La7fb2
	lsl	r3, r0, #2
	add	r1, r3, #4
	b	.La7fb6
.La7fb2:
	lsl	r3, r0, #2
	sub	r1, r3, #4
.La7fb6:
	ldr	r6, [r7, r3]
	ldr	r2, [r7, r1]
	str	r2, [r7, r3]
	str	r6, [r7, r1]
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r6, #0
	cmp	r6, r3
	bge	.La7fe8
	ldr	r2, =0x219
	mov	r5, #0x82
	add	r2, r8
	lsl	r5, #2
	mov	r10, r2
	add	r5, r8
.La7fd6:
	ldrh	r0, [r5]
	bl	_Func_79664
	mov	r2, r10
	ldrb	r3, [r2]
	add	r6, #1
	add	r5, #2
	cmp	r6, r3
	blt	.La7fd6
.La7fe8:
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r6, #0
	cmp	r6, r3
	bge	.La800c
	ldr	r3, =0x219
	add	r3, r8
	mov	r10, r3
	mov	r5, r7
.La7ffc:
	ldmia	r5!, {r0}
	bl	_Func_7961c
	mov	r2, r10
	ldrb	r3, [r2]
	add	r6, #1
	cmp	r6, r3
	blt	.La7ffc
.La800c:
	mov	r0, #0x82
	lsl	r0, #2
	add	r0, r8
	bl	_Func_796c4
	ldr	r3, =0x219
	add	r3, r8
	strb	r0, [r3]
	mov	r0, #1
.La801e:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a7f44

.thumb_func_start Func_a8034
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f2c
	ldr	r6, [r3]
	mov	r0, r6
	sub	sp, #4
	bl	Func_a1814
	mov	r5, #0
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	Func_a1870
	mov	r2, #0x88
	lsl	r2, #1
	add	r3, r6, r2
	add	r2, #1
	str	r5, [r6, #0x28]
	str	r5, [r6, #0x24]
	str	r5, [r6, #0x2c]
	str	r5, [r6, #0x20]
	strb	r5, [r3]
	add	r3, r6, r2
	strb	r5, [r3]
	mov	r3, #0x89
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #8
	strb	r3, [r2]
	ldr	r3, =0x113
	add	r2, r6, r3
	mov	r3, #2
	strb	r3, [r2]
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_a8034

.thumb_func_start Func_a8088
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	ldr	r6, [r3]
	ldr	r5, [r6, #0x24]
	mov	r7, r0
	sub	sp, #8
	mov	r0, #0
	cmp	r5, #0
	bne	.La80b4
	mov	r3, #0xf
	mov	r5, r6
	add	r5, #0x24
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0
	mov	r2, #5
	mov	r3, #0x1e
	bl	Func_a10d0
	ldr	r5, [r5]
.La80b4:
	cmp	r0, #0
	beq	.La80fc
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, r5
	mov	r0, r7
	mov	r1, #0
	bl	_Func_1ec6c
	mov	r2, #0xbe
	lsl	r2, #1
	add	r3, r6, r2
	str	r0, [r3]
	add	r2, #0xa4
	mov	r3, #0xf0
	strb	r3, [r0, #0xf]
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, #3
	bne	.La80e8
	mov	r0, r6
	mov	r1, r5
	bl	Func_a33d4
.La80e8:
	mov	r0, r5
	bl	Func_a9cf8
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, r5
	mov	r1, r7
	bl	Func_a8604
	b	.La8106
.La80fc:
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	bl	Func_a8604
.La8106:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a8088

.thumb_func_start Func_a8114
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	sub	sp, #0x28
	mov	r0, #0
	ldr	r7, [r3]
	mov	r10, r0
	str	r0, [sp, #0x1c]
	mov	r8, r0
	sub	r0, #1
	bl	_Func_7a5bc
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	str	r3, [sp, #0xc]
	mov	r3, #5
	str	r3, [sp]
	mov	r0, r7
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x1e
	add	r0, #0x2c
	bl	Func_a10d0
	ldr	r0, =Func_a19a0
	bl	Func_4278
	ldr	r0, =0x242
	ldr	r1, .La8184	@ 0x68
	mov	r2, #3
	add	r3, r7, r0
.La8162:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La8162
	mov	r1, #0
	mov	r0, #0xa
	str	r1, [sp, #0x10]
	neg	r0, r0
	mov	r1, #0x58
	bl	Func_a1ac0
	ldr	r2, =0x21a
	add	r2, r7, r2
	str	r2, [sp, #8]
	b	.La8406

	.align	2, 0
.La8184:
	.word	0x68
	.pool

.La8198:
	ldr	r3, [sp, #8]
	ldrb	r0, [r3]
	bl	_Func_77394
	ldr	r2, [sp, #8]
	ldr	r0, [r7, #0x24]
	ldrb	r1, [r2]
	mov	r2, #1
	bl	Func_a8604
	mov	r3, #0x20
	ldr	r0, [sp, #8]
	add	r3, sp
	mov	r11, r3
	ldrb	r2, [r0]
	mov	r1, #1
	mov	r0, r11
	bl	Func_a8b10
	lsl	r0, #24
	mov	r1, #0
	lsr	r2, r0, #24
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x18]
	cmp	r0, #0
	bne	.La81f2
	mov	r3, #1
	str	r3, [sp, #0x18]
	b	.La81f6
.La81d2:
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r0, #1
	str	r0, [sp, #0x10]
	str	r0, [sp, #0x1c]
	b	.La8406
.La81e0:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r2, #1
	mov	r1, #1
	neg	r2, r2
	str	r1, [sp, #0x10]
	str	r2, [sp, #0x1c]
	b	.La8406
.La81f2:
	mov	r3, #1
	str	r3, [sp, #0x14]
.La81f6:
	mov	r0, #1
	mov	r9, r0
	b	.La83f8
.La81fc:
	mov	r1, r9
	cmp	r1, #0
	beq	.La82ba
	mov	r2, #0
	ldr	r0, [sp, #0x18]
	mov	r9, r2
	mov	r2, r10
	add	r2, #2
	lsl	r3, r0, #24
	asr	r1, r3, #24
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r3, #1
	sub	r2, r3
	mov	r10, r2
	cmp	r2, #0
	bne	.La8256
	mov	r2, r8
	add	r0, r2, r1
	bl	Func_b1c_from_thumb
	mov	r8, r0
	ldr	r0, [r7, #0x2c]
	bl	_Func_16498
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	bne	.La8286
	ldr	r5, =0xb06
	mov	r6, #0x18
	neg	r6, r6
	ldr	r1, [r7, #0x24]
	mov	r0, r5
	mov	r2, #0x50
	mov	r3, r6
	bl	_Func_1e7c0
	ldr	r1, [r7, #0x24]
	add	r0, r5, #1
	mov	r2, #0
	mov	r3, r6
	bl	_Func_1e7c0
	b	.La8286
.La8256:
	ldr	r0, [r7, #0x2c]
	bl	_Func_16498
	ldr	r0, [sp, #0xc]
	cmp	r0, #0
	beq	.La827a
	mov	r2, r8
	add	r2, #8
	mov	r3, r2
	cmp	r2, #0
	bge	.La8270
	mov	r3, r8
	add	r3, #0xf
.La8270:
	asr	r3, #3
	lsl	r3, #3
	sub	r2, r3
	mov	r8, r2
	b	.La8286
.La827a:
	mov	r0, r8
	add	r0, #7
	mov	r1, #7
	bl	Func_b1c_from_thumb
	mov	r8, r0
.La8286:
	mov	r1, r8
	mov	r2, r11
	mov	r3, #0
	mov	r0, r10
	bl	Func_a847c
	ldr	r0, [r7, #0x2c]
	bl	_Func_164ac
	mov	r0, #1
	bl	Func_30f8
	mov	r1, r10
	cmp	r1, #0
	bne	.La82b0
	ldr	r0, [r7, #0x2c]
	mov	r1, r8
	mov	r2, r11
	bl	Func_a8508
	b	.La82ba
.La82b0:
	ldr	r0, [r7, #0x2c]
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	bl	Func_a8578
.La82ba:
	ldr	r2, [r7, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r2, r10
	cmp	r2, #0
	bne	.La82d6
	mov	r3, r8
	lsl	r1, r3, #4
	mov	r0, #0xa
	add	r1, #0x58
	neg	r0, r0
	bl	Func_a1a40
	b	.La82f4
.La82d6:
	mov	r0, r8
	cmp	r0, #3
	bgt	.La82e8
	lsl	r1, r0, #3
	add	r1, #0x30
	mov	r0, #0x18
	bl	Func_a1a40
	b	.La82f4
.La82e8:
	mov	r2, r8
	lsl	r1, r2, #3
	add	r1, #0x50
	mov	r0, #0x30
	bl	Func_a1a40
.La82f4:
	mov	r0, #1
	bl	Func_30f8
	ldr	r5, =iwram_1b04
	ldr	r2, [r5]
	mov	r3, #0xf0
	and	r2, r3
	cmp	r2, #0
	beq	.La8312
	mov	r0, r10
	mov	r1, r8
	mov	r2, r11
	mov	r3, #1
	bl	Func_a847c
.La8312:
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La8320
	b	.La81d2
.La8320:
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La832c
	b	.La81e0
.La832c:
	ldr	r2, [r5]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.La8346
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #1
	mov	r3, #1
	neg	r0, r0
	mov	r9, r3
	add	r8, r0
.La8346:
	ldr	r2, [r5]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.La835c
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #1
	mov	r9, r1
	add	r8, r1
.La835c:
	ldr	r2, [r5]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.La8372
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	mov	r9, r2
	add	r10, r2
.La8372:
	ldr	r2, [r5]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.La838c
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #1
	mov	r3, #1
	neg	r0, r0
	mov	r9, r3
	add	r10, r0
.La838c:
	ldr	r3, [r5]
	mov	r6, #0x80
	lsl	r6, #1
	and	r3, r6
	cmp	r3, #0
	bne	.La83a4
	ldr	r2, [r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La83f8
.La83a4:
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r3, [r5]
	and	r3, r6
	mov	r0, #0x1c
	ldrsb	r0, [r7, r0]
	cmp	r3, #0
	beq	.La83ba
	add	r0, #1
	b	.La83bc
.La83ba:
	sub	r0, #1
.La83bc:
	ldr	r1, =0x219
	add	r3, r7, r1
	ldrb	r1, [r3]
	add	r0, r1
	bl	Func_b1c_from_thumb
	mov	r3, #0x82
	lsl	r2, r0, #1
	lsl	r3, #2
	add	r2, r3
	ldrh	r3, [r7, r2]
	str	r3, [r7, #8]
	ldr	r1, [sp, #8]
	ldrh	r3, [r7, r2]
	strb	r3, [r1]
	strb	r0, [r7, #0x1c]
	mov	r0, r7
	ldrh	r1, [r7, r2]
	bl	Func_a1804
	b	.La8406

	.pool_aligned

.La83f8:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La8406
	b	.La81fc
.La8406:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.La841a
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La841a
	b	.La8198
.La841a:
	ldr	r0, [r7, #0x2c]
	bl	_Func_164ac
	ldr	r0, [r7, #0x2c]
	bl	_Func_16498
	mov	r3, #0x60
	ldr	r0, [r7, #0x24]
	mov	r2, #0x38
	str	r3, [sp]
	mov	r1, #0x40
	mov	r3, #0xe0
	bl	_Func_164d4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_a19a0
	bl	Func_41d8
	ldr	r1, =0x242
	ldr	r3, .La844c	@ 0x80
	mov	r2, #3
	add	r0, r7, r1
	b	.La8458

	.align	2, 0
.La844c:
	.word	0x80
	.pool

.La8458:
	sub	r2, #1
	strh	r3, [r0]
	sub	r0, #2
	cmp	r2, #0
	bge	.La8458
	bl	Func_a9d84
	ldr	r0, [sp, #0x1c]
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a8114

.thumb_func_start Func_a847c
	push	{r5, r6, r7, lr}
	mov	r12, r3
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	sub	sp, #8
	mov	r14, r3
	cmp	r0, #0
	bne	.La84c0
	lsl	r3, r1, #1
	add	r5, r3, #5
	ldrb	r3, [r2]
	mov	r7, #0
	mov	r6, #5
	mov	r4, #0
	mov	r0, #0
	cmp	r3, #0
	beq	.La84aa
	cmp	r1, #0
	bne	.La84a8
	ldr	r3, =.Laf2fc
	ldrb	r6, [r3]
	b	.La84d2
.La84a8:
	add	r4, #1
.La84aa:
	add	r0, #1
	cmp	r0, #4
	bgt	.La84d2
	ldrb	r3, [r2, r0]
	cmp	r3, #0
	beq	.La84aa
	cmp	r1, r4
	bne	.La84a8
	ldr	r3, =.Laf2fc
	ldrb	r6, [r3, r0]
	b	.La84d2
.La84c0:
	cmp	r1, #3
	bgt	.La84cc
	mov	r5, r1
	mov	r7, #5
	mov	r6, #0xd
	b	.La84d2
.La84cc:
	add	r5, r1, #4
	mov	r7, #8
	mov	r6, #0x14
.La84d2:
	mov	r1, #1
	mov	r2, r12
	mov	r3, r1
	eor	r3, r2
	neg	r2, r3
	orr	r2, r3
	lsr	r2, #31
	mov	r3, #0xf
	sub	r3, r2
	mov	r2, r14
	ldr	r0, [r2, #0x24]
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r2, r5
	mov	r3, r6
	bl	Func_a2268
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a847c

.thumb_func_start Func_a8508
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r0
	mov	r9, r1
	mov	r10, r2
	mov	r7, #0
	mov	r6, #0
.La851c:
	mov	r2, r10
	ldrb	r3, [r2, r6]
	cmp	r3, #0
	beq	.La854c
	cmp	r9, r7
	bne	.La854a
	ldr	r3, =0xbdc
	lsl	r5, r6, #1
	add	r5, r3
	mov	r3, #1
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0
	neg	r3, r3
	add	r5, #1
	bl	_Func_1e74c
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0xf
	bl	_Func_1e74c
.La854a:
	add	r7, #1
.La854c:
	add	r6, #1
	cmp	r6, #4
	ble	.La851c
	cmp	r7, #0
	bne	.La8562
	ldr	r0, =0xbda
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e74c
.La8562:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a8508

.thumb_func_start Func_a8578
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r8, r0
	mov	r7, r1
	ldr	r3, [r3]
	cmp	r2, #0
	bne	.La8590
	cmp	r7, #3
	ble	.La8590
	add	r7, #1
.La8590:
	cmp	r7, #1
	bne	.La85c4
	ldr	r2, =0x21a
	add	r6, r3, r2
	ldrb	r0, [r6]
	bl	_Func_77394
	mov	r5, r0
	ldrb	r3, [r5, #0xf]
	cmp	r3, #0x63
	bne	.La85aa
	mov	r7, #8
	b	.La85c4
.La85aa:
	ldrb	r1, [r5, #0xf]
	ldrb	r0, [r6]
	add	r1, #1
	bl	_Func_79008
	mov	r2, #0x92
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r3, [r3]
	mov	r1, #5
	sub	r0, r3
	bl	_Func_19908
.La85c4:
	mov	r0, #0x80
	lsl	r0, #1
	bl	Func_4938
	mov	r5, r0
	ldr	r0, =0xbe6
	mov	r1, r5
	add	r0, r7, r0
	mov	r2, #0x80
	bl	_Func_1965c
	mov	r3, #1
	mov	r0, r5
	neg	r3, r3
	mov	r1, r8
	mov	r2, #0
	bl	_Func_17aa4
	mov	r0, r5
	bl	Func_2df0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a8578

	.section .rodata

.Laf2fc:
	.incrom 0xaf2fc, 0xaf304
