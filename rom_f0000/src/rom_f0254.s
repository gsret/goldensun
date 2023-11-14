	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_f0254
	push	{r5, lr}
	sub	sp, #4
	cmp	r0, #0
	bne	.Lf0268
	mov	r1, #0xc0
	mov	r5, #0xa0
	ldr	r3, =0x1010101
	lsl	r1, #19
	lsl	r5, #19
	b	.Lf026e
.Lf0268:
	ldr	r3, =0x81818181
	ldr	r1, =0x6008000
	ldr	r5, =0x5000100
.Lf026e:
	mov	r4, sp
	str	r3, [r4]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85001e00
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0
	str	r3, [r4]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_f0254

.thumb_func_start Func_f02b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r1
	cmp	r0, #0
	bne	.Lf02c6
	mov	r0, r5
	bl	Func_f0254
	b	.Lf0348
.Lf02c6:
	bl	Func_2f40
	mov	r6, r0
	cmp	r5, #0
	bne	.Lf02de
	mov	r3, #0xa0
	mov	r2, #0
	mov	r7, #0xc0
	lsl	r3, #19
	mov	r8, r2
	lsl	r7, #19
	b	.Lf02e6
.Lf02de:
	ldr	r2, =0x80808080
	ldr	r3, =0x5000100
	ldr	r7, =0x6008000
	mov	r8, r2
.Lf02e6:
	mov	r10, r3
	ldr	r5, =0x230
	mov	r0, #0x31
	mov	r1, r5
	bl	Func_48b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_f0024
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1e50
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, #0xc4
	mov	r1, r7
	add	r0, r6, r2
	ldr	r3, [r3]
	mov	r2, r8
	bl	_call_via_r3
	mov	r0, #0x31
	bl	Func_2dd8
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lf0346
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r1
	add	r3, #4
	add	r2, #1
	stmia	r3!, {r6}
	strh	r2, [r1]
	mov	r2, r10
	stmia	r3!, {r2}
	ldr	r2, =0x84000040
	str	r2, [r3]
.Lf0346:
	strh	r4, [r0]
.Lf0348:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f02b0

.thumb_func_start Func_f037c
	push	{lr}
	mov	r2, #0x80
	ldr	r1, =0x1ff01ff
	lsl	r2, #9
	mov	r3, #0x1f
.Lf0386:
	sub	r3, #1
	stmia	r0!, {r1}
	cmp	r3, #0
	bge	.Lf0386
	ldr	r4, =0x20002
	mov	r3, #0xef
.Lf0392:
	sub	r3, #1
	stmia	r0!, {r2}
	add	r2, r4
	cmp	r3, #0
	bge	.Lf0392
	mov	r3, #0x2f
.Lf039e:
	sub	r3, #1
	stmia	r0!, {r1}
	cmp	r3, #0
	bge	.Lf039e
	mov	r2, #0
	mov	r3, #0xbf
.Lf03aa:
	sub	r3, #1
	stmia	r0!, {r2}
	cmp	r3, #0
	bge	.Lf03aa
	pop	{r0}
	bx	r0
.func_end Func_f037c

.thumb_func_start Func_f03c0
	push	{lr}
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lf03de
	ldr	r2, =iwram_1ad0
	ldr	r1, =0xffff
	ldrh	r3, [r2, #8]
	add	r3, r1
	strh	r3, [r2, #8]
	ldrh	r3, [r2, #0xc]
	add	r3, r1
	strh	r3, [r2, #0xc]
.Lf03de:
	pop	{r0}
	bx	r0
.func_end Func_f03c0

.thumb_func_start Func_f03f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1d18
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, =iwram_1f58
	strb	r2, [r3]
	ldr	r3, =iwram_1ac4
	strb	r2, [r3]
	ldr	r3, =iwram_1d08
	strb	r2, [r3]
	bl	Func_40e8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_f03c0
	bl	Func_41d8
	mov	r3, #0x40
	mov	r5, #0x80
	lsl	r5, #19
	strh	r3, [r5]
	ldr	r0, =0x6007800
	bl	Func_f037c
	ldr	r0, =0x600f800
	bl	Func_f037c
	mov	r0, #0
	bl	Func_f0254
	mov	r0, #1
	bl	Func_f0254
	ldr	r2, =0x1f8a
	ldr	r3, =REG_BG2CNT
	strh	r2, [r3]
	ldr	r2, =0xf83
	add	r3, #2
	strh	r2, [r3]
	mov	r3, #0xe2
	lsl	r3, #5
	strh	r3, [r5]
	ldr	r2, =0x2844
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	bl	Func_f0678
	mov	r0, #0x96
	lsl	r0, #1
	bl	Func_30f8
	mov	r1, #0
	mov	r8, r1
	ldr	r3, =REG_BLDALPHA
	ldr	r1, =.Lf0a5c
	mov	r2, #1
	mov	r11, r2
	mov	r10, r3
	mov	r9, r1
.Lf0472:
	mov	r3, r11
	mov	r5, r8
	and	r5, r3
	mov	r2, r9
	mov	r1, r5
	ldr	r0, [r2]
	eor	r1, r3
	bl	Func_f02b0
	mov	r7, r5
	mov	r5, #0xf0
	mov	r6, #1
	lsl	r5, #4
.Lf048c:
	cmp	r7, #0
	beq	.Lf049e
	mov	r1, #0x10
	sub	r2, r1, r6
	lsl	r3, r6, #8
	orr	r3, r2
	mov	r2, r10
	strh	r3, [r2]
	b	.Lf04a6
.Lf049e:
	mov	r3, r5
	orr	r3, r6
	mov	r1, r10
	strh	r3, [r1]
.Lf04a6:
	mov	r0, #4
	bl	Func_30f8
	ldr	r2, =0xffffff00
	add	r6, #1
	add	r5, r2
	cmp	r6, #0x10
	ble	.Lf048c
	ldr	r0, =0x10b
	bl	Func_30f8
	mov	r1, #1
	add	r8, r1
	mov	r3, #4
	mov	r2, r8
	add	r9, r3
	cmp	r2, #0x20
	bls	.Lf0472
	ldr	r3, =REG_BLDCNT
	mov	r2, #0
	strh	r2, [r3]
	mov	r2, #0x82
	lsl	r2, #5
	sub	r3, #0x50
	strh	r2, [r3]
	bl	Func_479c
	bl	Func_4760
	ldr	r2, =iwram_1d18
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f03f0

.thumb_func_start Func_f0538
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_4c00
	ldrh	r3, [r3]
	mov	r4, #7
	and	r4, r3
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	bge	.Lf0552
	add	r2, #7
.Lf0552:
	ldr	r3, .Lf0588	@ 0x1f
	asr	r2, #3
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r1, r3, #3
	ldr	r3, =ewram_4c0c
	ldr	r3, [r3]
	mov	r0, r3
	neg	r3, r4
	add	r3, #0x10
	ldr	r2, =0x40004000
	mov	r14, r3
	mov	r3, #0xc0
	lsl	r3, #2
	mov	r7, #0x80
	add	r0, #0xc0
	mov	r6, #0
	mov	r10, r2
	mov	r8, r3
	lsl	r7, #14
.Lf057c:
	mov	r5, #0xc0
	mov	r12, r14
	lsl	r5, #13
	mov	r4, #5
	b	.Lf0598

	.align	2, 0
.Lf0588:
	.word	0x1f
	.pool

.Lf0598:
	mov	r3, r12
	mov	r2, r10
	orr	r3, r5
	orr	r3, r2
	mov	r2, r0
	stmia	r2!, {r3}
	str	r1, [r2]
	add	r1, #4
	add	r0, #8
	cmp	r1, r8
	bne	.Lf05b0
	mov	r1, #0
.Lf05b0:
	sub	r4, #1
	add	r5, r7
	cmp	r4, #0
	bge	.Lf0598
	mov	r3, #8
	add	r6, #1
	add	r14, r3
	cmp	r6, #0xf
	ble	.Lf057c
	ldr	r2, =ewram_4c0c
	mov	r1, #0xe0
	ldr	r0, [r2]
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000100
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =ewram_4c04
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lf05f0
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lf05f0
	ldr	r2, =ewram_4c00
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lf05f0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f0538

.thumb_func_start Func_f0614
	push	{r5, r6, lr}
	ldr	r5, =ewram_4c04
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	bne	.Lf0662
	ldr	r3, =ewram_4c00
	mov	r6, #0
	ldrsh	r2, [r3, r6]
	ldrh	r4, [r3]
	mov	r3, r2
	cmp	r2, #0
	bge	.Lf0630
	add	r3, r2, #7
.Lf0630:
	ldr	r0, =ewram_4c08
	asr	r1, r3, #3
	mov	r6, #0
	ldrsh	r3, [r0, r6]
	cmp	r3, #0
	bge	.Lf063e
	add	r3, #7
.Lf063e:
	asr	r3, #3
	cmp	r1, r3
	beq	.Lf0662
	ldr	r2, =.Lf1220
	lsl	r3, r1, #2
	strh	r4, [r0]
	ldr	r0, [r2, r3]
	mov	r3, r1
	mov	r2, #0x1f
	add	r3, #0x10
	and	r3, r2
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #3
	mov	r2, #1
	bl	Func_f07f0
	strh	r0, [r5]
.Lf0662:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_f0614

.thumb_func_start Func_f0678
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x80
	lsl	r0, #3
	sub	sp, #4
	bl	Func_4970
	ldr	r5, =ewram_4c0c
	mov	r4, sp
	mov	r3, #0
	str	r0, [r5]
	str	r3, [r4]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x6010000
	ldr	r2, =0x85001800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x11111111
	mov	r0, r4
	str	r3, [r4]
	ldr	r1, =0x6016000
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, [r5]
	mov	r1, #0xc0
	ldr	r0, =0x80004000
	mov	r6, #0
	lsl	r1, #2
.Lf06ba:
	lsl	r2, r6, #21
	mov	r3, r5
	orr	r2, r0
	stmia	r3!, {r2}
	add	r6, #1
	str	r1, [r3]
	add	r5, #8
	cmp	r6, #7
	bls	.Lf06ba
	mov	r1, #0xc0
	ldr	r0, =0x80004088
	mov	r6, #0
	lsl	r1, #2
.Lf06d4:
	lsl	r2, r6, #21
	mov	r3, r5
	orr	r2, r0
	stmia	r3!, {r2}
	add	r6, #1
	str	r1, [r3]
	add	r5, #8
	cmp	r6, #7
	bls	.Lf06d4
	mov	r1, #0xc0
	ldr	r0, =0x40004098
	mov	r6, #0
	lsl	r1, #2
.Lf06ee:
	lsl	r2, r6, #21
	mov	r3, r5
	orr	r2, r0
	stmia	r3!, {r2}
	add	r6, #1
	str	r1, [r3]
	add	r5, #8
	cmp	r6, #7
	bls	.Lf06ee
	mov	r2, #0x10
	mov	r14, r2
	ldr	r3, =0x40004000
	mov	r2, #0x80
	lsl	r2, #14
	mov	r6, #0
	mov	r7, #0
	mov	r10, r3
	mov	r8, r2
.Lf0712:
	mov	r0, #0xc0
	add	r3, r7, r6
	mov	r4, #0
	mov	r12, r14
	lsl	r0, #13
	lsl	r1, r3, #3
.Lf071e:
	mov	r3, r12
	orr	r3, r0
	mov	r2, r10
	orr	r3, r2
	mov	r2, r5
	stmia	r2!, {r3}
	add	r4, #1
	str	r1, [r2]
	add	r5, #8
	add	r0, r8
	add	r1, #4
	cmp	r4, #5
	bls	.Lf071e
	mov	r3, #8
	add	r6, #1
	add	r14, r3
	add	r7, #2
	cmp	r6, #0xf
	bls	.Lf0712
	mov	r2, #0xc0
	ldr	r1, =0xc000c0
	mov	r6, #0
	lsl	r2, #2
.Lf074c:
	mov	r3, r5
	stmia	r3!, {r1}
	add	r6, #1
	str	r2, [r3]
	add	r5, #8
	cmp	r6, #7
	bls	.Lf074c
	ldr	r2, .Lf0784	@ 0
	ldr	r3, =ewram_4c00
	strh	r2, [r3]
	ldr	r3, =ewram_4c08
	strh	r2, [r3]
	ldr	r3, =ewram_4c04
	mov	r1, #0x90
	strh	r2, [r3]
	lsl	r1, #3
	ldr	r0, =Func_f0538
	bl	Func_41d8
	mov	r1, #0xc8
	ldr	r0, =Func_f0614
	lsl	r1, #4
	bl	Func_41d8
	ldr	r7, =.Lf1220
	mov	r6, #0
	mov	r5, #0
	b	.Lf07d0

	.align	2, 0
.Lf0784:
	.word	0
	.pool

.Lf07d0:
	mov	r1, r5
	ldr	r0, [r7]
	mov	r2, #1
	add	r6, #1
	bl	Func_f07f0
	add	r5, #0x18
	cmp	r6, #0x1f
	bls	.Lf07d0
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f0678

.thumb_func_start Func_f07f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, #0x90
	lsl	r6, #4
	sub	sp, #0x2c
	mov	r10, r0
	mov	r0, r6
	str	r1, [sp, #8]
	mov	r7, r2
	bl	Func_4970
	mov	r1, #0
	mov	r2, #0xc0
	mov	r3, r10
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r9, r2
	cmp	r3, #0
	bne	.Lf0826
	mov	r0, #1
	neg	r0, r0
	b	.Lf0a16
.Lf0826:
	mov	r5, #0x80
	lsl	r5, #2
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lf0848
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #4]
	mov	r1, r6
	mov	r2, #0
	bl	_call_via_r3
	mov	r0, r5
	bl	_Func_79358
	b	.Lf086e
.Lf0848:
	ldr	r4, [sp, #4]
	mov	r5, #0x80
	lsl	r5, #4
	mov	r2, #0x80
	add	r1, r4, r5
	ldr	r3, =Func_1af8
	lsl	r2, #1
	mov	r0, r4
	bl	_call_via_r3
	mov	r2, #0x80
	ldr	r1, [sp, #4]
	lsl	r2, #1
	add	r0, r1, r2
	ldr	r3, =Func_8d8
	mov	r1, r5
	mov	r2, #0
	bl	_call_via_r3
.Lf086e:
	mov	r4, r10
	ldrb	r0, [r4]
	mov	r3, #0
	mov	r8, r3
	add	r4, #1
	cmp	r0, #0
	beq	.Lf0892
	ldr	r2, =.Lf11bd
.Lf087e:
	cmp	r0, #0x1f
	bls	.Lf088a
	mov	r3, r0
	sub	r3, #0x20
	ldrb	r3, [r2, r3]
	add	r8, r3
.Lf088a:
	ldrb	r0, [r4]
	add	r4, #1
	cmp	r0, #0
	bne	.Lf087e
.Lf0892:
	cmp	r7, #2
	bne	.Lf08a0
	mov	r4, r9
	mov	r1, r8
	sub	r4, r1
	str	r4, [sp]
	b	.Lf08b2
.Lf08a0:
	cmp	r7, #1
	bne	.Lf08b2
	mov	r2, r9
	mov	r4, r8
	sub	r3, r2, r4
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.Lf08b2:
	mov	r4, r10
	ldrb	r0, [r4]
	mov	r1, #0
	add	r4, #1
	mov	r8, r1
	mov	r10, r4
	cmp	r0, #0
	beq	.Lf0938
.Lf08c2:
	cmp	r0, #0x1f
	bls	.Lf092c
	mov	r2, #0x20
	neg	r2, r2
	add	r2, r0
	ldr	r1, =.Lf1770
	lsl	r3, r2, #3
	add	r4, r1, r3
	mov	r14, r2
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	add	r3, r2, r1
	mov	r2, r8
	add	r1, r3, r2
	mov	r3, #0
	mov	r12, r3
	mov	r2, #1
	mov	r3, #0xf
	mov	r11, r2
	mov	r9, r3
.Lf08ea:
	ldr	r3, =0x101
	ldrb	r7, [r4]
	mov	r6, #0x80
	add	r4, #1
	mov	r5, #7
	add	r2, r1, r3
.Lf08f6:
	mov	r3, r7
	and	r3, r6
	cmp	r3, #0
	beq	.Lf0906
	mov	r3, r11
	strb	r3, [r2]
	mov	r3, r9
	strb	r3, [r1]
.Lf0906:
	sub	r5, #1
	add	r2, #1
	add	r1, #1
	lsr	r6, #1
	cmp	r5, #0
	bge	.Lf08f6
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	add	r1, #0xf8
	cmp	r3, #7
	ble	.Lf08ea
	mov	r3, #1
	cmp	r0, #0x1f
	bls	.Lf092a
	ldr	r4, =.Lf11bd
	mov	r1, r14
	ldrb	r3, [r4, r1]
.Lf092a:
	add	r8, r3
.Lf092c:
	mov	r2, r10
	ldrb	r0, [r2]
	mov	r3, #1
	add	r10, r3
	cmp	r0, #0
	bne	.Lf08c2
.Lf0938:
	mov	r4, #0x18
	mov	r2, #0x60
	mov	r10, r4
	ldr	r4, [sp, #4]
	mov	r8, r2
	mov	r6, #0x80
	mov	r3, #7
	mov	r2, #0xc0
	mov	r1, r4
	mov	r7, #0x60
	lsl	r6, #1
	mov	r12, r3
	mov	r14, r2
.Lf0952:
	cmp	r7, #0
	beq	.Lf0970
	mov	r5, r8
	mov	r2, r4
.Lf095a:
	ldrb	r3, [r2, #1]
	ldrb	r0, [r2]
	lsl	r3, #4
	orr	r0, r3
	sub	r5, #1
	strb	r0, [r1]
	add	r2, #2
	add	r4, #2
	add	r1, #1
	cmp	r5, #0
	bne	.Lf095a
.Lf0970:
	sub	r3, r1, r7
	mov	r2, r14
	add	r1, r3, r6
	sub	r3, r4, r2
	add	r4, r3, r6
	mov	r3, #1
	neg	r3, r3
	add	r12, r3
	mov	r2, r12
	cmp	r2, #0
	bge	.Lf0952
	mov	r3, r10
	cmp	r3, #0
	beq	.Lf0a0e
	ldr	r4, [sp, #8]
	ldr	r0, [sp, #4]
	lsl	r1, r4, #5
	mov	r12, r10
.Lf0994:
	ldr	r3, =0x6010000
	ldr	r4, =0x6010004
	add	r2, r1, r3
	ldr	r3, [r0]
	str	r3, [r2]
	add	r2, r1, r4
	mov	r4, #0x80
	lsl	r4, #1
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0x80
	str	r3, [r2]
	ldr	r3, =0x6010008
	lsl	r4, #2
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xc0
	str	r3, [r2]
	ldr	r3, =0x601000c
	lsl	r4, #2
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0x80
	str	r3, [r2]
	ldr	r3, =0x6010010
	lsl	r4, #3
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xa0
	str	r3, [r2]
	ldr	r3, =0x6010014
	lsl	r4, #3
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xc0
	str	r3, [r2]
	ldr	r3, =0x6010018
	lsl	r4, #3
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xe0
	str	r3, [r2]
	ldr	r3, =0x601001c
	lsl	r4, #3
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	str	r3, [r2]
	mov	r2, #1
	neg	r2, r2
	add	r12, r2
	mov	r3, r12
	add	r1, #0x20
	add	r0, #4
	cmp	r3, #0
	bne	.Lf0994
.Lf0a0e:
	ldr	r0, [sp, #4]
	bl	Func_2df0
	mov	r0, #0
.Lf0a16:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f07f0

	.section .rodata

.Lf0a5c:
	.incrom 0xf0a5c, 0xf11bd
.Lf11bd:
	.incrom 0xf11bd, 0xf1220
.Lf1220:
	.incrom 0xf1220, 0xf1770
.Lf1770:
	.incrom 0xf1770, 0xf1a64
