	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_1219c
	push	{lr}
	ldr	r3, [r0]
	cmp	r3, #0
	bge	.L121a8
	ldr	r2, =0xffff
	add	r3, r2
.L121a8:
	asr	r4, r3, #16
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #4]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L121b8
	ldr	r3, =0xffff
	add	r0, r3
.L121b8:
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	asr	r0, #16
	cmp	r3, #0
	bne	.L121c6
	mov	r0, #0
	b	.L121f6
.L121c6:
	mov	r2, #0xc8
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	mov	r3, r4
	cmp	r3, #0
	bge	.L121d6
	add	r3, #0xf
.L121d6:
	asr	r4, r3, #4
	cmp	r0, #0
	bge	.L121de
	add	r0, #0xf
.L121de:
	asr	r3, r0, #4
	lsl	r3, #7
	add	r3, r4, r3
	lsl	r3, #2
	add	r1, r3
	ldrb	r3, [r1, #2]
	mov	r2, #0xff
	eor	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	sub	r0, #1
.L121f6:
	pop	{r1}
	bx	r1
.func_end Func_1219c

.thumb_func_start Func_12204
	push	{r5, lr}
	ldr	r4, [r0, #8]
	ldr	r3, [r0]
	asr	r2, r4, #17
	asr	r1, r3, #17
	mov	r3, r2
	cmp	r2, #0
	bge	.L12216
	add	r3, r2, #7
.L12216:
	asr	r3, #3
	mov	r5, #0x3f
	and	r3, r5
	lsl	r0, r3, #6
	mov	r3, r1
	cmp	r1, #0
	bge	.L12226
	add	r3, r1, #7
.L12226:
	asr	r3, #3
	and	r3, r5
	add	r5, r0, r3
	lsr	r3, r4, #31
	add	r3, r2, r3
	asr	r3, #1
	mov	r2, #3
	and	r3, r2
	lsl	r0, r3, #1
	mov	r3, r1
	cmp	r1, #0
	bge	.L12240
	add	r3, r1, #3
.L12240:
	mov	r2, #1
	asr	r3, #2
	and	r3, r2
	ldr	r2, =0x6005000
	add	r4, r0, r3
	add	r3, r5, r2
	ldrb	r3, [r3]
	ldr	r2, =ewram_2c800
	lsl	r3, #3
	add	r3, r4
	add	r3, r2
	ldrb	r2, [r3]
	cmp	r2, #0
	beq	.L1226e
	mov	r3, #2
	and	r3, r1
	lsr	r0, r2, #4
	cmp	r3, #0
	bne	.L1226a
	mov	r0, #0xf
	and	r0, r2
.L1226a:
	cmp	r0, #0
	bne	.L12296
.L1226e:
	ldr	r2, =0x6004000
	add	r3, r5, r2
	ldrb	r3, [r3]
	ldr	r2, =ewram_2c000
	lsl	r3, #3
	add	r3, r4
	add	r3, r2
	ldrb	r2, [r3]
	cmp	r2, #0
	beq	.L12294
	mov	r3, #2
	and	r3, r1
	lsr	r0, r2, #4
	cmp	r3, #0
	bne	.L12290
	mov	r0, #0xf
	and	r0, r2
.L12290:
	cmp	r0, #0
	bne	.L12296
.L12294:
	mov	r0, #7
.L12296:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_12204

.thumb_func_start Func_122ac
	push	{lr}
	mov	r0, r1
	bl	Func_12204
	sub	r0, #5
	cmp	r0, #7
	bhi	.L122be
	mov	r0, #0
	b	.L122c2
.L122be:
	mov	r0, #1
	neg	r0, r0
.L122c2:
	pop	{r1}
	bx	r1
.func_end Func_122ac

.thumb_func_start Func_122c8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	bl	Func_12204
	ldr	r3, [r5]
	mov	r7, r0
	mov	r4, #0
	cmp	r3, #0
	bge	.L122e0
	ldr	r2, =0x1fffff
	add	r3, r2
.L122e0:
	ldr	r0, [r5, #8]
	asr	r2, r3, #21
	mov	r1, #0x1f
	and	r2, r1
	cmp	r0, #0
	bge	.L122f0
	ldr	r3, =0x1fffff
	add	r0, r3
.L122f0:
	asr	r3, r0, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r2, =ewram_20000
	lsl	r3, #2
	add	r0, r3, r2
	ldrb	r2, [r0, #3]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1230a
	mov	r4, #0x10
.L1230a:
	ldr	r3, [r0]
	lsl	r3, #1
	lsr	r3, #25
	str	r3, [r6]
	cmp	r3, #0x15
	bne	.L12318
	mov	r4, #0x20
.L12318:
	ldr	r3, =.L1353c
	add	r2, r4, r7
	ldrb	r0, [r3, r2]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_122c8

.thumb_func_start Func_12330
	push	{lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	cmp	r0, #0
	blt	.L1233c
	str	r0, [r3, #4]
.L1233c:
	cmp	r1, #0
	blt	.L12342
	str	r1, [r3, #8]
.L12342:
	cmp	r2, #0
	blt	.L12348
	str	r2, [r3, #0xc]
.L12348:
	pop	{r0}
	bx	r0
.func_end Func_12330

.thumb_func_start Func_12350
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e70
	ldr	r5, [r3]
	ldr	r3, [r5, #4]
	mov	r6, #0
	b	.L1236e
.L1235c:
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0x96
	add	r6, #1
	lsl	r3, #1
	cmp	r6, r3
	bge	.L12378
	ldr	r3, [r5, #4]
.L1236e:
	cmp	r3, #0xff
	bgt	.L1235c
	ldr	r3, [r5, #8]
	cmp	r3, #0xff
	bgt	.L1235c
.L12378:
	mov	r3, #0
	str	r3, [r5, #0xc]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_12350

.thumb_func_start Func_12388
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r6, =ewram_1c000
	mov	r8, r0
	mov	r10, r1
	ldr	r5, =0x27c
	mov	r0, #0x31
	mov	r1, r5
	bl	Func_48b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_9e7c
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1e50
	mov	r1, #0x80
	lsl	r1, #5
	add	r6, r1
	add	r3, #0xc4
	ldr	r4, [r3]
	ldr	r2, =ewram_3c000
	mov	r0, r8
	mov	r1, r10
	mov	r3, r6
	bl	_call_via_r4
	mov	r0, #0x31
	bl	Func_2dd8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_12388

.thumb_func_start Func_123f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r0, [sp, #0xc]
	ldr	r3, [r1]
	add	r0, sp, #0x1c
	mov	r7, r2
	mov	r2, #0
	str	r2, [r0, #4]
	str	r3, [r0]
	ldr	r3, [r1, #8]
	add	r1, sp, #0x10
	str	r3, [r0, #8]
	ldr	r3, =Func_9c0
	bl	_call_via_r3
	mov	r2, sp
	add	r2, #0x10
	str	r2, [sp]
	ldr	r3, =Func_888
	ldr	r0, [r2, #8]
	ldr	r1, [sp, #0xc]
	.call_via r3
	ldr	r2, [sp]
	ldr	r3, [r2, #4]
	sub	r0, r3, r0
	str	r0, [sp, #8]
	ldr	r3, =iwram_1ce0
	mov	r9, r3
	ldr	r3, [r3]
	mov	r2, #0
	neg	r3, r3
	str	r3, [sp, #4]
	mov	r11, r2
	b	.L1244c
.L12448:
	ldr	r3, =iwram_1ce0
	mov	r9, r3
.L1244c:
	mov	r2, r9
	ldr	r1, [r2, #0x10]
	mov	r3, r11
	ldr	r2, =Func_8ac
	sub	r1, r3
	lsl	r1, #16
	mov	r10, r2
	ldr	r0, [sp, #4]
	bl	_call_via_r10
	ldr	r3, [sp, #0xc]
	mov	r8, r0
	sub	r0, r3
	cmp	r0, #0
	bne	.L1246c
	mov	r0, #1
.L1246c:
	ldr	r1, [sp, #8]
	bl	_call_via_r10
	mov	r5, r0
	cmp	r5, #0
	bge	.L124d8
	mov	r1, #0x80
	ldr	r6, =Func_888
	neg	r0, r5
	lsl	r1, #8
	.call_via r6
	mov	r2, r9
	mov	r1, r0
	ldr	r0, [r2]
	bl	_call_via_r10
	mov	r1, r8
	str	r0, [r7]
	mov	r0, r5
	.call_via r6
	ldr	r3, [sp]
	ldr	r1, [r3, #8]
	ldr	r3, [r3, #4]
	sub	r1, r5
	asr	r1, #4
	sub	r5, r0, r3
	asr	r5, #4
	mov	r0, r1
	.call_via r6
	mov	r3, r0
	mov	r1, r5
	mov	r0, r5
	.call_via r6
	add	r3, r0
	ldr	r2, =Func_948
	mov	r0, r3
	bl	_call_via_r2
	lsl	r0, #12
	cmp	r5, #0
	bge	.L124ca
	neg	r0, r0
.L124ca:
	mov	r1, #0x80
	lsl	r1, #8
	.call_via r6
	str	r0, [r7, #4]
	b	.L124de
.L124d8:
	mov	r3, #0
	str	r3, [r7]
	str	r3, [r7, #4]
.L124de:
	mov	r2, #1
	mov	r3, #0
	add	r11, r2
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	mov	r3, r11
	add	r7, #0x14
	cmp	r3, #0x9f
	ble	.L12448
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_123f4

.thumb_func_start Func_12518
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x40
	mov	r0, #0x90
	mov	r1, #0x60
	mov	r2, #1
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	mov	r3, #0
	mov	r1, #0xa0
	mov	r0, #9
	mov	r10, r3
	str	r2, [sp, #0x10]
	str	r2, [sp, #0xc]
	bl	Func_48f4
	ldr	r2, =iwram_1c90
	str	r0, [sp, #8]
	add	r4, sp, #0x1c
	mov	r0, r10
	mov	r3, #3
	strb	r3, [r2]
	str	r0, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r1, [sp, #8]
	ldr	r2, =0x85000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r10
	str	r1, [r4]
	mov	r0, r4
	add	r1, sp, #0x20
	ldr	r2, =0x85000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	bl	Func_12af8
	add	r2, sp, #0x20
	mov	r8, r2
	ldr	r1, .L125ac	@ 1
	mov	r7, #0
	mov	r2, #1
	mov	r3, r8
.L12580:
	add	r7, #1
	strh	r2, [r3, #2]
	strb	r1, [r3, #5]
	strh	r0, [r3]
	add	r3, #8
	cmp	r7, #3
	bls	.L12580
	mov	r3, #1
	mov	r0, r8
	ldr	r2, =iwram_1f54
	strb	r3, [r0, #4]
	mov	r3, #2
	strb	r3, [r2]
	ldr	r2, =REG_BLDCNT
	ldr	r3, .L125b0	@ 0x3f42
	strh	r3, [r2]
	ldr	r3, .L125b4	@ 0x1e0
	mov	r2, #0xa0
	lsl	r2, #19
	strh	r3, [r2]
	b	.L125d0

	.align	2, 0
.L125ac:
	.word	1
.L125b0:
	.word	0x3f42
.L125b4:
	.word	0x1e0
	.pool

.L125d0:
	mov	r2, #0x80
	ldr	r3, =0x1140
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_3bb4
.L125de:
	bl	Func_4858
	bl	Func_40e8
	mov	r1, #0xa0
	mov	r0, #9
	bl	Func_48f4
	str	r0, [sp, #8]
	bl	Func_403c
	mov	r0, #2
	bl	Func_c004
	mov	r0, r8
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r1, =ewram_10000
	mov	r3, #0
	mov	r0, #0
	bl	Func_b6b8
	mov	r2, r8
	b	.L12618

	.pool_aligned

.L12618:
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	bl	_Func_185008
	ldrb	r3, [r0, #4]
	cmp	r3, #0x14
	bne	.L12638
	mov	r0, r8
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r1, =ewram_18000
	add	r2, #1
	mov	r0, #1
	mov	r3, #0
	bl	Func_b6b8
.L12638:
	mov	r7, #0
	mov	r6, r8
.L1263c:
	mov	r1, #0
	ldrsh	r0, [r6, r1]
	bl	_Func_185008
	ldrb	r3, [r0, #4]
	mov	r5, #0
	cmp	r3, #0x14
	bne	.L12656
	mov	r3, #1
	and	r3, r7
	cmp	r3, #0
	beq	.L12656
	mov	r5, #1
.L12656:
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	lsl	r3, r5, #12
	add	r0, r5
	add	r0, r3
	bl	Func_bc70
	mov	r3, #8
	ldrsh	r1, [r6, r3]
	mov	r5, r0
	bl	Func_b8ac
	mov	r0, #0x10
	ldrsh	r1, [r6, r0]
	mov	r0, r5
	bl	Func_b8ac
	mov	r0, r5
	mov	r2, #0x18
	ldrsh	r1, [r6, r2]
	bl	Func_b8ac
	add	r3, sp, #0xc
	ldrb	r3, [r3]
	add	r5, #0x26
	add	r7, #1
	strb	r3, [r5]
	cmp	r7, #9
	bls	.L1263c
	mov	r6, r8
	mov	r7, #0
	mov	r5, r8
	add	r6, #4
	mov	r2, #4
.L1269a:
	mov	r0, r8
	ldrb	r3, [r2, r0]
	cmp	r3, #0
	beq	.L126ac
	mov	r1, #1
	ldrsb	r1, [r6, r1]
	mov	r0, r7
	str	r2, [sp, #4]
	b	.L126b2
.L126ac:
	mov	r0, r7
	mov	r1, #8
	str	r2, [sp, #4]
.L126b2:
	bl	Func_12d48
	ldr	r2, [sp, #4]
	mov	r1, #6
	ldrsb	r1, [r5, r1]
	mov	r0, r7
	str	r2, [sp, #4]
	bl	Func_12d20
	mov	r3, #2
	ldrsh	r1, [r5, r3]
	mov	r0, r7
	bl	Func_12d70
	ldr	r2, [sp, #4]
	add	r7, #1
	add	r5, #8
	add	r6, #8
	add	r2, #8
	cmp	r7, #3
	bls	.L1269a
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #8]
	bl	Func_12b2c
	mov	r1, #0xc8
	ldr	r0, =Func_12e28
	lsl	r1, #4
	bl	Func_41d8
.L126f0:
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =iwram_1ae8
	ldr	r1, =iwram_1b04
	mov	r11, r0
	mov	r9, r1
.L126fe:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L1275e
	mov	r0, r11
	ldr	r2, [r0]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.L1271c
	ldr	r1, [sp, #0x18]
	sub	r1, #1
	str	r1, [sp, #0x18]
.L1271c:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.L1272e
	ldr	r0, [sp, #0x18]
	add	r0, #1
	str	r0, [sp, #0x18]
.L1272e:
	mov	r1, r11
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L12740
	ldr	r2, [sp, #0x14]
	sub	r2, #1
	str	r2, [sp, #0x14]
.L12740:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L12752
	ldr	r0, [sp, #0x14]
	add	r0, #1
	str	r0, [sp, #0x14]
.L12752:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #8]
	bl	Func_12b2c
	b	.L127be
.L1275e:
	ldr	r1, =iwram_1b04
	ldr	r3, [r1]
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L1277c
	mov	r0, #1
	neg	r0, r0
	add	r10, r0
	mov	r2, r10
	mov	r3, #3
	and	r2, r3
	mov	r10, r2
.L1277c:
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L12792
	mov	r3, #1
	add	r10, r3
	mov	r0, r10
	mov	r3, #3
	and	r0, r3
	mov	r10, r0
.L12792:
	ldr	r2, [r1]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.L127a6
	ldr	r2, [sp, #0x10]
	mov	r3, #3
	sub	r2, #1
	and	r2, r3
	str	r2, [sp, #0x10]
.L127a6:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.L127be
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	ldr	r0, [sp, #0x10]
	mov	r3, #3
	and	r0, r3
	str	r0, [sp, #0x10]
.L127be:
	ldr	r3, =iwram_1c94
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L127e8
	ldr	r3, =iwram_1e60
	ldr	r1, [sp, #0xc]
	ldr	r2, [r3]
	mov	r3, #1
	eor	r1, r3
	str	r1, [sp, #0xc]
	mov	r7, #0
	add	r2, #0x26
.L127da:
	add	r3, sp, #0xc
	ldrb	r3, [r3]
	add	r7, #1
	strb	r3, [r2]
	add	r2, #0x38
	cmp	r7, #9
	bls	.L127da
.L127e8:
	ldr	r0, [sp, #0x10]
	cmp	r0, #1
	beq	.L1287c
	cmp	r0, #1
	bcc	.L12800
	cmp	r0, #2
	bne	.L127f8
	b	.L12954
.L127f8:
	cmp	r0, #3
	bne	.L127fe
	b	.L129ca
.L127fe:
	b	.L12a46
.L12800:
	mov	r1, r10
	cmp	r1, #1
	bne	.L12808
	b	.L12a46
.L12808:
	ldr	r1, =iwram_1b04
	mov	r3, #0x80
	ldr	r2, [r1]
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L12840
	mov	r2, r10
	mov	r3, r8
	lsl	r6, r2, #3
	add	r2, r3, r6
	ldrh	r3, [r2, #2]
	sub	r3, #1
	strh	r3, [r2, #2]
	lsl	r3, #16
	mov	r1, #0
	cmp	r3, #0
	bge	.L1282e
	strh	r1, [r2, #2]
.L1282e:
	mov	r0, r10
	cmp	r0, #0
	beq	.L12836
	b	.L126f0
.L12836:
	mov	r1, r8
	ldrh	r3, [r1, #2]
	mov	r2, r8
	strh	r3, [r2, #0xa]
	b	.L126f0
.L12840:
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L1284e
	b	.L12a46
.L1284e:
	mov	r3, r10
	lsl	r6, r3, #3
	mov	r0, r8
	add	r2, r0, r6
	ldrh	r3, [r2, #2]
	mov	r1, #0xc6
	add	r3, #1
	strh	r3, [r2, #2]
	lsl	r1, #15
	lsl	r3, #16
	cmp	r3, r1
	ble	.L1286a
	mov	r3, #0x63
	strh	r3, [r2, #2]
.L1286a:
	mov	r2, r10
	cmp	r2, #0
	beq	.L12872
	b	.L126f0
.L12872:
	mov	r0, r8
	ldrh	r3, [r0, #2]
	mov	r1, r8
	strh	r3, [r1, #0xa]
	b	.L126f0
.L1287c:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	mov	r1, #0
	mov	r4, #1
	cmp	r2, #0
	beq	.L1288e
	mov	r4, #0xa
.L1288e:
	mov	r0, r9
	ldr	r2, [r0]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L128c0
	mov	r7, #0
	cmp	r1, r4
	bcs	.L128be
	mov	r1, r10
	mov	r6, r8
	lsl	r5, r1, #3
.L128a8:
	mov	r1, #1
	ldrsh	r0, [r6, r5]
	neg	r1, r1
	str	r4, [sp]
	bl	Func_12af8
	ldr	r4, [sp]
	add	r7, #1
	strh	r0, [r6, r5]
	cmp	r7, r4
	bcc	.L128a8
.L128be:
	mov	r1, #1
.L128c0:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L128f0
	mov	r7, #0
	cmp	r7, r4
	bcs	.L128ee
	mov	r0, r10
	mov	r6, r8
	lsl	r5, r0, #3
.L128da:
	ldrsh	r0, [r6, r5]
	mov	r1, #1
	str	r4, [sp]
	bl	Func_12af8
	ldr	r4, [sp]
	add	r7, #1
	strh	r0, [r6, r5]
	cmp	r7, r4
	bcc	.L128da
.L128ee:
	mov	r1, #1
.L128f0:
	cmp	r1, #0
	bne	.L128f6
	b	.L12a46
.L128f6:
	mov	r2, r10
	cmp	r2, #0
	bne	.L128fe
	b	.L125de
.L128fe:
	lsl	r6, r2, #3
	add	r5, r6, #4
	mov	r0, r8
	ldrb	r3, [r0, r5]
	cmp	r3, #0
	bne	.L1290c
	b	.L126f0
.L1290c:
	ldrsh	r1, [r0, r6]
	add	r5, r8
	mov	r0, r10
	bl	Func_12de8
	mov	r1, #1
	ldrsb	r1, [r5, r1]
	mov	r0, r10
	bl	Func_12d48
	mov	r1, #2
	ldrsb	r1, [r5, r1]
	mov	r0, r10
	bl	Func_12d20
	mov	r0, r8
	add	r3, r0, r6
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, r10
	bl	Func_12d70
	b	.L126f0

	.pool_aligned

.L12954:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	mov	r1, #0
	cmp	r2, #0
	beq	.L12980
	mov	r0, r10
	lsl	r6, r0, #3
	add	r3, r6, #4
	mov	r1, r8
	add	r2, r1, r3
	ldrb	r3, [r2, #1]
	sub	r3, #1
	strb	r3, [r2, #1]
	lsl	r3, #24
	cmp	r3, #0
	bge	.L1297e
	mov	r3, #3
	strb	r3, [r2, #1]
.L1297e:
	mov	r1, #1
.L12980:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L129ae
	mov	r0, r10
	lsl	r6, r0, #3
	add	r3, r6, #4
	mov	r1, r8
	add	r2, r1, r3
	ldrb	r3, [r2, #1]
	mov	r0, #0xc0
	add	r3, #1
	strb	r3, [r2, #1]
	lsl	r0, #18
	lsl	r3, #24
	mov	r1, #0
	cmp	r3, r0
	ble	.L129ac
	strb	r1, [r2, #1]
.L129ac:
	mov	r1, #1
.L129ae:
	cmp	r1, #0
	beq	.L12a46
	mov	r1, r10
	lsl	r6, r1, #3
	add	r2, r6, #4
	mov	r0, r8
	ldrb	r3, [r0, r2]
	cmp	r3, #0
	bne	.L129c2
	b	.L126f0
.L129c2:
	add	r3, r0, r2
	mov	r1, #1
	ldrsb	r1, [r3, r1]
	b	.L12ab0
.L129ca:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	mov	r1, #0
	cmp	r2, #0
	beq	.L129f6
	mov	r0, r10
	lsl	r6, r0, #3
	add	r3, r6, #4
	mov	r1, r8
	add	r2, r1, r3
	ldrb	r3, [r2, #2]
	sub	r3, #1
	strb	r3, [r2, #2]
	lsl	r3, #24
	cmp	r3, #0
	bge	.L129f4
	mov	r3, #0xf
	strb	r3, [r2, #2]
.L129f4:
	mov	r1, #1
.L129f6:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L12a24
	mov	r0, r10
	lsl	r6, r0, #3
	add	r3, r6, #4
	mov	r1, r8
	add	r2, r1, r3
	ldrb	r3, [r2, #2]
	mov	r0, #0xf0
	add	r3, #1
	strb	r3, [r2, #2]
	lsl	r0, #20
	lsl	r3, #24
	mov	r1, #0
	cmp	r3, r0
	ble	.L12a22
	strb	r1, [r2, #2]
.L12a22:
	mov	r1, #1
.L12a24:
	cmp	r1, #0
	beq	.L12a46
	mov	r1, r10
	lsl	r6, r1, #3
	add	r2, r6, #4
	mov	r0, r8
	ldrb	r3, [r0, r2]
	cmp	r3, #0
	bne	.L12a38
	b	.L126f0
.L12a38:
	add	r3, r0, r2
	mov	r1, #2
	ldrsb	r1, [r3, r1]
	mov	r0, r10
	bl	Func_12d20
	b	.L126f0
.L12a46:
	mov	r1, r9
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L12ab8
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.L12a8e
	mov	r3, r10
	cmp	r3, #1
	beq	.L12ab8
	lsl	r6, r3, #3
	add	r3, r6, #4
	mov	r0, r8
	ldrb	r3, [r0, r3]
	cmp	r3, #0
	bne	.L12a6c
	b	.L126f0
.L12a6c:
	add	r3, r0, r6
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, r10
	bl	Func_12d70
	mov	r3, r10
	cmp	r3, #0
	beq	.L12a80
	b	.L126f0
.L12a80:
	mov	r2, r8
	mov	r0, #0xa
	ldrsh	r1, [r2, r0]
	mov	r0, #1
	bl	Func_12d70
	b	.L126f0
.L12a8e:
	mov	r3, r10
	cmp	r3, #0
	beq	.L12ab8
	lsl	r3, #3
	add	r1, r3, #4
	mov	r0, r8
	ldrb	r2, [r0, r1]
	mov	r3, #1
	eor	r2, r3
	strb	r2, [r0, r1]
	cmp	r2, #0
	beq	.L12aae
	add	r3, r0, r1
	mov	r1, #1
	ldrsb	r1, [r3, r1]
	b	.L12ab0
.L12aae:
	mov	r1, #8
.L12ab0:
	mov	r0, r10
	bl	Func_12d48
	b	.L126f0
.L12ab8:
	mov	r1, r9
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	beq	.L12ae2
	bl	Func_40e8
	mov	r2, r11
	ldr	r3, [r2]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L12ad8
	ldr	r0, =0x11
	b	.L12ada
.L12ad8:
	ldr	r0, =0x12
.L12ada:
	ldr	r1, =Exports_185000
	bl	Func_2f0c
	b	.L125de
.L12ae2:
	mov	r0, #1
	bl	Func_30f8
	b	.L126fe
.func_end Func_12518

.thumb_func_start Func_12af8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
.L12afe:
	add	r5, r6
	cmp	r5, #0
	bge	.L12b0a
	mov	r5, #0x80
	lsl	r5, #2
	b	.L12afe
.L12b0a:
	mov	r3, #0x80
	lsl	r3, #2
	cmp	r5, r3
	blt	.L12b18
	mov	r5, #1
	neg	r5, r5
	b	.L12afe
.L12b18:
	mov	r0, r5
	bl	_Func_185008
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.L12afe
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_12af8

.thumb_func_start Func_12b2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e60
	ldr	r3, [r3]
	ldr	r3, [r3, #0x28]
	ldrb	r4, [r3, #4]
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r7, r2
	mov	r2, #2
	and	r3, r2
	sub	sp, #4
	mov	r5, #0
	cmp	r3, #0
	beq	.L12b5c
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	lsl	r3, #24
	asr	r5, r3, #16
.L12b5c:
	cmp	r4, #6
	beq	.L12c0c
	cmp	r4, #6
	bhi	.L12b72
	cmp	r4, #4
	beq	.L12c0c
	cmp	r4, #4
	bhi	.L12bca
	cmp	r4, #3
	beq	.L12b8a
	b	.L12cae
.L12b72:
	cmp	r4, #0x14
	beq	.L12c44
	cmp	r4, #0x14
	bhi	.L12b80
	cmp	r4, #8
	beq	.L12bca
	b	.L12cae
.L12b80:
	cmp	r4, #0x2c
	beq	.L12bca
	cmp	r4, #0x58
	beq	.L12bca
	b	.L12cae
.L12b8a:
	lsl	r0, #16
	mov	r8, r0
	lsl	r6, r1, #16
	mov	r4, #5
.L12b92:
	lsl	r5, #16
	mov	r3, #0
	mov	r2, r8
	lsr	r5, #16
	mov	r0, #0xe0
	str	r2, [r7]
	str	r3, [r7, #4]
	str	r6, [r7, #8]
	mov	r1, r5
	mov	r2, r7
	lsl	r0, #14
	str	r4, [sp]
	bl	Func_447c
	ldr	r3, =0x2aaa
	ldr	r4, [sp]
	add	r5, r3
	lsl	r5, #16
	sub	r4, #1
	add	r7, #0x10
	asr	r5, #16
	cmp	r4, #0
	bge	.L12b92
	mov	r4, #6
.L12bc2:
	add	r4, #1
	cmp	r4, #9
	ble	.L12bc2
	b	.L12cf8
.L12bca:
	lsl	r0, #16
	mov	r8, r0
	lsl	r6, r1, #16
	mov	r4, #7
.L12bd2:
	lsl	r5, #16
	mov	r3, #0
	mov	r2, r8
	lsr	r5, #16
	mov	r0, #0xe0
	str	r2, [r7]
	str	r3, [r7, #4]
	str	r6, [r7, #8]
	mov	r1, r5
	mov	r2, r7
	lsl	r0, #14
	str	r4, [sp]
	bl	Func_447c
	mov	r3, #0x80
	lsl	r3, #6
	ldr	r4, [sp]
	add	r5, r3
	lsl	r5, #16
	sub	r4, #1
	add	r7, #0x10
	asr	r5, #16
	cmp	r4, #0
	bge	.L12bd2
	mov	r4, #8
.L12c04:
	add	r4, #1
	cmp	r4, #9
	ble	.L12c04
	b	.L12cf8
.L12c0c:
	lsl	r0, #16
	mov	r4, #0
	mov	r8, r0
	lsl	r6, r1, #16
.L12c14:
	lsl	r5, #16
	mov	r3, #0
	mov	r2, r8
	lsr	r5, #16
	mov	r0, #0xe0
	str	r2, [r7]
	str	r3, [r7, #4]
	str	r6, [r7, #8]
	mov	r1, r5
	mov	r2, r7
	lsl	r0, #14
	str	r4, [sp]
	bl	Func_447c
	ldr	r3, =0x1999
	ldr	r4, [sp]
	add	r5, r3
	lsl	r5, #16
	add	r4, #1
	add	r7, #0x10
	asr	r5, #16
	cmp	r4, #9
	ble	.L12c14
	b	.L12cf8
.L12c44:
	mov	r2, #0x80
	lsl	r3, r5, #16
	lsl	r2, #23
	add	r3, r2
	asr	r5, r3, #16
	mov	r3, #0xa0
	mov	r4, #0
	lsl	r0, #16
	lsl	r1, #16
	lsl	r3, #14
	mov	r10, r0
	mov	r11, r4
	mov	r8, r1
	mov	r9, r3
	mov	r6, r7
.L12c62:
	mov	r2, r10
	lsl	r5, #16
	str	r2, [r6]
	mov	r3, r11
	lsr	r5, #16
	mov	r2, r8
	str	r3, [r6, #4]
	str	r2, [r6, #8]
	mov	r1, r5
	mov	r2, r7
	mov	r0, r9
	str	r4, [sp]
	bl	Func_447c
	mov	r3, r10
	str	r3, [r6, #0x10]
	mov	r3, r11
	str	r3, [r6, #0x14]
	mov	r2, r7
	mov	r3, r8
	add	r2, #0x10
	str	r3, [r6, #0x18]
	mov	r1, r5
	mov	r0, r9
	bl	Func_447c
	mov	r2, #0x80
	lsl	r2, #8
	ldr	r4, [sp]
	add	r5, r2
	lsl	r5, #16
	add	r4, #1
	add	r6, #0x20
	add	r7, #0x20
	asr	r5, #16
	cmp	r4, #1
	ble	.L12c62
	b	.L12cf8
.L12cae:
	mov	r2, #0x80
	lsl	r3, r5, #16
	lsl	r2, #22
	add	r3, r2
	lsl	r0, #16
	asr	r5, r3, #16
	mov	r8, r0
	lsl	r6, r1, #16
	mov	r4, #3
.L12cc0:
	mov	r3, r8
	lsl	r5, #16
	str	r3, [r7]
	lsr	r5, #16
	mov	r3, #0
	mov	r0, #0xe0
	mov	r2, r7
	str	r3, [r7, #4]
	str	r6, [r7, #8]
	mov	r1, r5
	lsl	r0, #14
	str	r4, [sp]
	bl	Func_447c
	mov	r2, #0x80
	lsl	r2, #7
	ldr	r4, [sp]
	add	r5, r2
	lsl	r5, #16
	sub	r4, #1
	add	r7, #0x10
	asr	r5, #16
	cmp	r4, #0
	bge	.L12cc0
	mov	r4, #5
.L12cf2:
	sub	r4, #1
	cmp	r4, #0
	bge	.L12cf2
.L12cf8:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_12b2c

.thumb_func_start Func_12d20
	push	{lr}
	ldr	r3, =iwram_1e60
	ldr	r2, [r3]
	mov	r3, #3
	and	r3, r0
	lsl	r3, #2
	mov	r4, r3
	add	r4, #0x28
	mov	r0, #9
.L12d32:
	ldr	r3, [r2, r4]
	sub	r0, #1
	strb	r1, [r3, #5]
	add	r2, #0x38
	cmp	r0, #0
	bge	.L12d32
	pop	{r0}
	bx	r0
.func_end Func_12d20

.thumb_func_start Func_12d48
	push	{lr}
	ldr	r3, =iwram_1e60
	ldr	r2, [r3]
	mov	r3, #3
	and	r3, r0
	lsl	r3, #2
	mov	r4, r3
	add	r4, #0x28
	mov	r0, #9
.L12d5a:
	ldr	r3, [r2, r4]
	sub	r0, #1
	strb	r1, [r3, #6]
	add	r2, #0x38
	cmp	r0, #0
	bge	.L12d5a
	pop	{r0}
	bx	r0
.func_end Func_12d48

.thumb_func_start Func_12d70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e60
	ldr	r6, [r3]
	mov	r3, #3
	and	r3, r0
	lsl	r3, #2
	add	r3, #0x28
	sub	sp, #8
	mov	r7, #0
	mov	r8, r3
	mov	r4, #0
.L12d8a:
	mov	r3, r8
	ldr	r5, [r6, r3]
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	beq	.L12dd0
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_Func_185008
	ldrb	r3, [r0, #5]
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r1, r3
	bge	.L12dc6
	ldrb	r3, [r0, #4]
	ldr	r2, [r5, #0xc]
	strb	r3, [r5, #4]
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	str	r3, [r5, #0x10]
	lsl	r3, r7, #4
	strh	r3, [r5, #2]
	mov	r3, #0x10
	strb	r3, [r5, #0x15]
	mov	r3, #0xff
	strb	r4, [r5, #0x14]
	strb	r4, [r5, #0x17]
	strb	r3, [r5, #0x16]
.L12dc6:
	ldrb	r3, [r0, #7]
	mov	r2, r6
	add	r2, #0x23
	strb	r3, [r2]
	strh	r4, [r6, #0x1e]
.L12dd0:
	add	r7, #1
	add	r6, #0x38
	cmp	r7, #9
	ble	.L12d8a
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_12d70

.thumb_func_start Func_12de8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e60
	mov	r7, r1
	mov	r5, r0
	mov	r0, r7
	ldr	r6, [r3]
	bl	_Func_185008
	mov	r3, #3
	and	r3, r5
	lsl	r3, #2
	add	r3, #0x28
	mov	r8, r3
	mov	r5, #9
.L12e08:
	mov	r3, r8
	ldr	r0, [r6, r3]
	sub	r5, #1
	strh	r7, [r0]
	bl	Func_b868
	add	r6, #0x38
	cmp	r5, #0
	bge	.L12e08
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_12de8

.thumb_func_start Func_12e28
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1e60
	ldr	r1, [r2]
	ldr	r3, [r1, #0x28]
	ldrb	r0, [r3, #4]
	ldr	r3, =.L13584
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	sub	sp, #0xc
	mov	r8, r1
	mov	r6, #0
	str	r3, [sp, #4]
	str	r4, [sp, #8]
	ldr	r1, [r2, #0x14]
	cmp	r0, #6
	beq	.L12e8c
	cmp	r0, #6
	bhi	.L12e6c
	cmp	r0, #4
	beq	.L12e8c
	cmp	r0, #4
	bhi	.L12e82
	mov	r5, #0
	ldr	r3, =0x2aaa
	mov	r4, #6
	cmp	r0, #3
	beq	.L12ea6
	b	.L12e9c
.L12e6c:
	cmp	r0, #0x14
	beq	.L12e94
	cmp	r0, #0x14
	bhi	.L12e7a
	cmp	r0, #8
	beq	.L12e82
	b	.L12e9c
.L12e7a:
	cmp	r0, #0x2c
	beq	.L12e82
	cmp	r0, #0x58
	bne	.L12e9c
.L12e82:
	mov	r3, #0x80
	mov	r5, #0
	lsl	r3, #6
	mov	r4, #8
	b	.L12ea6
.L12e8c:
	mov	r5, #0
	ldr	r3, =0x1999
	mov	r4, #0xa
	b	.L12ea6
.L12e94:
	mov	r5, #0
	mov	r3, #0
	ldr	r6, =0xffff8000
	b	.L12ea4
.L12e9c:
	mov	r5, #0x80
	mov	r3, #0x80
	lsl	r5, #6
	lsl	r3, #7
.L12ea4:
	mov	r4, #4
.L12ea6:
	mov	r7, #0
	cmp	r7, r4
	bcs	.L12efa
	lsl	r3, #16
	mov	r2, #4
	mov	r9, r3
	lsl	r3, r6, #16
	add	r2, sp
	lsr	r3, #16
	mov	r11, r2
	mov	r10, r3
	mov	r6, r1
.L12ebe:
	lsl	r5, #16
	lsr	r5, #16
	mov	r3, r5
	mov	r0, r8
	mov	r1, r6
	mov	r2, r11
	str	r4, [sp]
	bl	Func_b168
	mov	r3, #0x38
	mov	r1, r9
	add	r8, r3
	lsr	r3, r1, #16
	add	r5, r3
	mov	r3, #1
	lsl	r5, #16
	and	r3, r7
	asr	r5, #16
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.L12ef2
	lsl	r3, r5, #16
	lsr	r3, #16
	add	r3, r10
	lsl	r3, #16
	asr	r5, r3, #16
.L12ef2:
	add	r7, #1
	add	r6, #0x10
	cmp	r7, r4
	bcc	.L12ebe
.L12efa:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_12e28

	.section .rodata

.L1353c:
	.incrom 0x1353c, 0x13584
.L13584:
	.incrom 0x13584, 0x1358c
