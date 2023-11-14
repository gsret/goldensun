	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_944ec
	ldr	r3, =iwram_1ed8
	mov	r2, #0xf0
	ldr	r0, [r3]
	lsl	r2, #4
	add	r3, r0, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #7
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r1, =REG_BG1HOFS
	ldrh	r2, [r3, #0xa]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldr	r2, =0xa6600003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_944ec

.thumb_func_start Func_94544
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ed8
	ldr	r7, [r3]
	ldr	r3, =iwram_1ad0
	mov	r4, #0xe
	ldrsh	r2, [r3, r4]
	sub	sp, #0x18
	mov	r1, #0xc
	ldrsh	r0, [r3, r1]
	str	r2, [sp, #0x14]
	mov	r2, #0xa
	ldrsh	r1, [r3, r2]
	mov	r12, r0
	mov	r5, #8
	ldrsh	r0, [r3, r5]
	str	r1, [sp, #0x10]
	mov	r2, #6
	ldrsh	r5, [r3, r2]
	mov	r4, #4
	ldrsh	r1, [r3, r4]
	mov	r4, #0xf0
	str	r5, [sp, #0xc]
	lsl	r4, #4
	add	r3, r7, r4
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	mov	r5, #0xf1
	lsl	r3, #7
	lsl	r5, #4
	add	r4, r7, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r2, =0xf02
	mov	r14, r3
	add	r3, r7, r2
	ldrh	r2, [r3]
	ldr	r3, [sp, #0x14]
	lsl	r3, #16
	str	r3, [sp, #8]
	sub	r5, #8
	lsr	r3, #16
	add	r2, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r6, r3
	mul	r6, r2
	mov	r2, r14
	cmp	r2, #0
	bne	.L945ce
	mov	r5, #0
	mov	r3, r4
.L945bc:
	mov	r4, r12
	add	r5, #1
	strh	r4, [r3]
	strh	r0, [r3, #4]
	strh	r1, [r3, #8]
	add	r3, #0xc
	cmp	r5, #0xa0
	bne	.L945bc
	b	.L9462c
.L945ce:
	ldr	r5, =0xf18
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r2, r12
	mov	r8, r3
	lsl	r3, r2, #16
	lsl	r1, #16
	lsl	r2, r0, #16
	lsr	r3, #16
	ldr	r0, =Func_888
	lsr	r2, #16
	lsr	r1, #16
	str	r3, [sp, #4]
	mov	r5, #0
	mov	r10, r0
	mov	r11, r2
	mov	r9, r1
.L945f0:
	mov	r2, #0xff
	asr	r3, r6, #16
	and	r3, r2
	ldr	r1, =.L9ed84
	lsl	r3, #1
	ldrsh	r0, [r1, r3]
	mov	r1, r8
	.call_via r10
	cmp	r0, #0
	bge	.L9460a
	add	r0, #0xff
.L9460a:
	lsl	r3, r0, #8
	ldr	r0, [sp, #4]
	lsr	r3, #16
	add	r2, r0, r3
	mov	r1, r11
	strh	r2, [r4]
	add	r4, #4
	add	r2, r1, r3
	strh	r2, [r4]
	add	r3, r9
	add	r4, #4
	add	r5, #1
	strh	r3, [r4]
	add	r6, r14
	add	r4, #4
	cmp	r5, #0xa0
	bne	.L945f0
.L9462c:
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	ldr	r5, =0xf14
	lsl	r3, #7
	add	r3, r7, r3
	add	r4, r3, #2
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r0, =0xf02
	mov	r14, r3
	ldr	r1, [sp, #8]
	add	r3, r7, r0
	ldrh	r2, [r3]
	sub	r5, #8
	lsr	r3, r1, #16
	add	r2, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r0, r14
	mov	r6, r3
	mul	r6, r2
	cmp	r0, #0
	bne	.L94686
	mov	r5, #0
	mov	r3, r4
.L9466a:
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	add	r4, sp, #0xc
	ldrh	r1, [r1]
	ldrh	r2, [r2]
	ldrh	r4, [r4]
	add	r5, #1
	strh	r1, [r3]
	strh	r2, [r3, #4]
	strh	r4, [r3, #8]
	add	r3, #0xc
	cmp	r5, #0xa0
	bne	.L9466a
	b	.L946e4
.L94686:
	ldr	r5, =0xf1c
	ldr	r1, [sp, #0xc]
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r0, [sp, #0x10]
	lsl	r2, r1, #16
	ldr	r1, [sp, #8]
	mov	r8, r3
	lsr	r1, #16
	lsl	r3, r0, #16
	ldr	r0, =Func_888
	lsr	r3, #16
	lsr	r2, #16
	str	r1, [sp]
	mov	r5, #0
	mov	r10, r0
	mov	r11, r3
	mov	r9, r2
.L946aa:
	asr	r3, r6, #16
	mov	r2, #0xff
	and	r3, r2
	ldr	r2, =.L9ed84
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r8
	.call_via r10
	cmp	r0, #0
	bge	.L946c2
	add	r0, #0xff
.L946c2:
	lsl	r3, r0, #8
	ldr	r0, [sp]
	lsr	r3, #16
	add	r2, r0, r3
	mov	r1, r11
	strh	r2, [r4]
	add	r4, #4
	add	r2, r1, r3
	strh	r2, [r4]
	add	r3, r9
	add	r4, #4
	add	r5, #1
	strh	r3, [r4]
	add	r6, r14
	add	r4, #4
	cmp	r5, #0xa0
	bne	.L946aa
.L946e4:
	ldr	r3, =0xf02
	add	r2, r7, r3
	ldrh	r3, [r2]
	mov	r4, #0xf0
	add	r3, #1
	strh	r3, [r2]
	lsl	r4, #4
	add	r1, r7, r4
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_94544

.thumb_func_start Func_94730
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r1, #0xf2
	mov	r5, r0
	lsl	r1, #4
	mov	r0, #0x22
	sub	sp, #4
	mov	r8, r2
	mov	r7, r3
	bl	Func_48f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850003c8
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	mov	r1, r3
	lsl	r2, #24
.L94762:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L94762
	ldr	r2, =0xf01
	add	r3, r4, r2
	add	r2, #7
	strb	r5, [r3]
	add	r3, r4, r2
	str	r6, [r3]
	ldr	r3, =0xf0c
	add	r2, r4, r3
	ldr	r3, [sp, #0x18]
	str	r3, [r2]
	ldr	r2, =0xf18
	add	r3, r4, r2
	str	r7, [r3]
	ldr	r3, =0xf1c
	add	r2, r4, r3
	ldr	r3, [sp, #0x20]
	str	r3, [r2]
	mov	r2, #0xf1
	lsl	r2, #4
	add	r3, r4, r2
	mov	r2, r8
	str	r2, [r3]
	ldr	r3, =0xf14
	add	r2, r4, r3
	ldr	r3, [sp, #0x1c]
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_94544
	bl	Func_41d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_944ec
	bl	Func_41d8
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_94730

.thumb_func_start Func_947e4
	push	{lr}
	ldr	r0, =Func_944ec
	bl	Func_4278
	ldr	r0, =Func_94544
	bl	Func_4278
	ldr	r2, =REG_DMA0SAD
	ldr	r3, =0xc5ff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldr	r3, =0x7fff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldrh	r3, [r2, #0xa]
	pop	{r0}
	bx	r0
.func_end Func_947e4

.thumb_func_start Func_94820
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r0, [r3]
	ldr	r3, [r3, #0x54]
	mov	r10, r0
	mov	r8, r3
	mov	r3, r10
	add	r3, #0xe4
	ldr	r1, [r3]
	sub	sp, #0xc
	str	r1, [sp, #8]
	ldr	r3, [r3, #4]
	mov	r7, r8
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0x3f
	add	r7, #8
	mov	r9, r2
	mov	r11, r3
.L94852:
	ldrh	r3, [r7, #0x1c]
	ldr	r1, =0xffff
	add	r3, r1
	mov	r2, r1
	and	r2, r3
	strh	r3, [r7, #0x1c]
	cmp	r2, r1
	bne	.L94864
	b	.L94984
.L94864:
	mov	r0, #0xb3
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L94876
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
.L94876:
	ldrh	r2, [r7, #0x1c]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, =.L9ef84
	lsl	r3, #1
	add	r4, r3, r2
	ldr	r5, [sp, #8]
	ldr	r3, [r7, #0xc]
	sub	r2, r3, r5
	cmp	r2, #0
	bge	.L94890
	ldr	r0, =0xffff
	add	r2, r0
.L94890:
	mov	r1, #0
	ldrsh	r3, [r4, r1]
	asr	r2, #16
	add	r1, r2, r3
	ldr	r2, [r7, #0x10]
	ldr	r3, [r7, #0x14]
	sub	r3, r2
	ldr	r2, [sp, #4]
	sub	r3, r2
	add	r4, #2
	cmp	r3, #0
	bge	.L948ac
	ldr	r5, =0xffff
	add	r3, r5
.L948ac:
	mov	r0, #0
	ldrsh	r2, [r4, r0]
	asr	r3, #16
	add	r0, r3, r2
	mov	r3, r1
	add	r3, #0x10
	add	r4, #2
	cmp	r3, #0xff
	bhi	.L94946
	mov	r2, #0x20
	neg	r2, r2
	cmp	r0, r2
	blt	.L94946
	cmp	r0, #0x9f
	bgt	.L94946
	mov	r5, #0xd
	ldrb	r2, [r7, #9]
	neg	r5, r5
	mov	r3, r5
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	ldr	r3, .L9490c	@ 0x1ff
	strb	r2, [r7, #9]
	and	r1, r3
	ldr	r2, .L94910	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #6]
	strb	r0, [r7, #4]
	mov	r0, r8
	ldrh	r3, [r4]
	ldr	r1, [r0, #4]
	add	r1, r3
	ldr	r3, .L94914	@ 0x3ff
	ldr	r2, .L94918	@ 0xfffffc00
	and	r1, r3
	ldrh	r3, [r7, #8]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #8]
	add	r4, #2
	ldrb	r2, [r4]
	ldrb	r1, [r7, #5]
	mov	r3, r11
	b	.L94928

	.align	2, 0
.L9490c:
	.word	0x1ff
.L94910:
	.word	0xfffffe00
.L94914:
	.word	0x3ff
.L94918:
	.word	0xfffffc00
	.pool

.L94928:
	lsl	r2, #6
	and	r3, r1
	orr	r3, r2
	strb	r3, [r7, #5]
	ldrb	r1, [r7, #7]
	ldrb	r2, [r4, #2]
	mov	r3, r11
	and	r3, r1
	lsl	r2, #6
	orr	r3, r2
	strb	r3, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_3dec
.L94946:
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L94984
	mov	r1, r10
	ldr	r6, [r1]
	bl	Func_4458
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r1, r3, r5
	str	r1, [sp]
	bl	Func_4458
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	ldr	r1, [sp]
	add	r0, r3, r5
	str	r1, [r7, #0xc]
	str	r0, [r7, #0x14]
	asr	r2, r0, #16
	asr	r1, #16
	mov	r0, #0
	bl	_Func_11f54
	mov	r3, #0x10
	lsl	r0, #16
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
.L94984:
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L94992
	b	.L94852
.L94992:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_94820

.thumb_func_start Func_949a8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ec8
	mov	r1, #0xfc
	ldr	r6, [r3]
	lsl	r1, #5
	add	r5, r6, r1
	ldr	r7, [r3, #8]
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	blt	.L94aa2
	mov	r0, #0xb3
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L949ce
	mov	r3, #0x80
	strh	r3, [r5]
.L949ce:
	ldrh	r3, [r5]
	sub	r2, r3, #1
	lsl	r3, #16
	asr	r3, #16
	strh	r2, [r5]
	cmp	r3, #0xb
	bhi	.L94aa2
	ldr	r2, =.L949e4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L949e4:
	.word	.L94a14
	.word	.L94a86
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94a62
	.word	.L94a86
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94a62
	.word	.L94a86
.L94a14:
	ldr	r1, =0x1f82
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L94a62
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r2, #0x64
	mul	r2, r0
	lsl	r3, r5, #1
	add	r3, r5
	lsl	r3, #3
	add	r3, r5
	lsl	r3, #4
	lsr	r2, #16
	lsr	r3, #16
	mov	r1, #0xfc
	sub	r3, r2
	lsl	r1, #5
	add	r2, r6, r1
	add	r3, #0x96
	strh	r3, [r2]
	ldr	r2, =0x1f84
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L94a5c
	mov	r0, #0xac
	bl	_Func_f9080
	b	.L94a62
.L94a5c:
	mov	r0, #0xab
	bl	_Func_f9080
.L94a62:
	mov	r0, r6
	mov	r1, #1
	bl	Func_91200
	mov	r2, #0xa8
	lsl	r2, #5
	add	r0, r6, r2
	mov	r2, #0xc4
	lsl	r2, #5
	add	r1, r7, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x840002a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x2a01
	add	r2, r7, r3
	mov	r3, #0xc
	b	.L94a98
.L94a86:
	mov	r3, #0xa8
	lsl	r3, #4
	add	r0, r6, r3
	mov	r1, #1
	bl	Func_91200
	ldr	r1, =0x2a01
	mov	r3, #1
	add	r2, r7, r1
.L94a98:
	strb	r3, [r2]
	ldr	r2, =0x2a02
	mov	r1, #0
	add	r3, r7, r2
	strb	r1, [r3]
.L94aa2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_949a8

.thumb_func_start Func_94ac8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x82
	lsl	r1, #3
	mov	r0, #0x1d
	sub	sp, #8
	bl	Func_48f4
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r5, r0
	mov	r0, #0xaa
	mov	r8, r3
	bl	Func_91ff0
	mov	r6, #0
	mov	r7, r5
	add	r0, sp, #4
	add	r7, #8
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000104
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	Func_48f4
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =Data_9ff58
	bl	Func_53e8
	bl	Func_4080
	mov	r1, #0xc0
	str	r0, [r5]
	lsl	r1, #2
	mov	r2, r6
	bl	Func_3fa4
	str	r0, [r5, #4]
	mov	r0, #0xe
	bl	Func_2dd8
	mov	r5, #0
.L94b2c:
	mov	r4, #0
	mov	r6, r7
	stmia	r6!, {r4}
	ldr	r3, =0x40000400
	stmia	r6!, {r3}
	mov	r3, #0xd4
	lsl	r3, #8
	str	r3, [r6]
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r2, [r3, #8]
	mov	r0, #0
	str	r1, [r7, #0xc]
	str	r2, [r7, #0x14]
	asr	r1, #16
	asr	r2, #16
	str	r4, [sp]
	bl	_Func_11f54
	ldr	r2, .L94b8c	@ 0xf
	mov	r3, r5
	and	r3, r2
	lsl	r0, #16
	add	r3, #1
	add	r5, #1
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	ldr	r4, [sp]
	add	r7, #0x20
	cmp	r5, #0x1f
	bls	.L94b2c
	ldr	r3, =REG_BLDCNT
	mov	r2, #0xfc
	lsl	r2, #6
	strh	r2, [r3]
	ldr	r2, =0x1008
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r4, [r3]
	ldr	r0, =Func_94820
	mov	r1, #0xc8
	lsl	r1, #4
	bl	Func_41d8
	add	sp, #8
	b	.L94bb0

	.align	2, 0
.L94b8c:
	.word	0xf
	.pool

.L94bb0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_94ac8

.thumb_func_start Func_94bbc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ec4
	ldr	r0, [r3]
	sub	r3, #0x54
	ldr	r3, [r3]
	sub	sp, #0x10
	mov	r1, #0
	mov	r9, r0
	ldr	r2, =0xfffffc00
	mov	r7, r9
	str	r3, [sp, #0xc]
	str	r1, [sp, #8]
	str	r1, [sp, #4]
	add	r7, #8
	mov	r11, r2
.L94be6:
	ldrh	r3, [r7, #0x1c]
	ldr	r2, =0xffff
	add	r1, r3, r2
	mov	r3, r1
	and	r3, r2
	strh	r1, [r7, #0x1c]
	cmp	r3, r2
	bne	.L94bf8
	b	.L94d2c
.L94bf8:
	ldr	r3, [sp, #0xc]
	add	r3, #0xe4
	ldr	r6, [r3]
	ldr	r3, [r3, #4]
	mov	r0, #0xb3
	mov	r8, r3
	lsl	r3, r1, #16
	asr	r3, #16
	lsl	r0, #1
	mov	r10, r3
	bl	_Func_79338
	cmp	r0, #0
	beq	.L94c20
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.L94c20:
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r3, #1
	ldr	r1, [r7, #0xc]
	and	r0, r3
	and	r3, r5
	add	r3, r0
	sub	r1, r6
	lsr	r3, #1
	asr	r1, #16
	add	r1, r3
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #0x10]
	mov	r0, r10
	sub	r2, r3
	mov	r3, r8
	sub	r2, r3
	lsl	r3, r0, #16
	sub	r4, r1, #1
	asr	r2, #16
	lsr	r3, #16
	add	r1, #0xf
	sub	r0, r2, r3
	cmp	r1, #0xff
	bhi	.L94d28
	mov	r1, #0x20
	neg	r1, r1
	cmp	r0, r1
	blt	.L94d28
	cmp	r0, #0x9f
	bgt	.L94d28
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0x3b
	bhi	.L94c82
	mov	r2, r9
	ldr	r3, [r2, #4]
	ldr	r1, =0x3ff
	ldrh	r2, [r7, #8]
	add	r3, #0x10
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	ldr	r3, [r7, #0x18]
	add	r3, #3
	b	.L94c9c
.L94c82:
	cmp	r3, #0x59
	bhi	.L94ca2
	mov	r2, r9
	ldr	r3, [r2, #4]
	ldr	r1, =0x3ff
	ldrh	r2, [r7, #8]
	add	r3, #8
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	ldr	r3, [r7, #0x18]
	add	r3, #1
.L94c9c:
	strh	r2, [r7, #8]
	str	r3, [r7, #0x18]
	b	.L94cb4
.L94ca2:
	mov	r3, r9
	ldr	r2, [r3, #4]
	ldr	r1, =0x3ff
	ldrh	r3, [r7, #8]
	and	r2, r1
	mov	r1, r11
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #8]
.L94cb4:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.L94cd6
	ldrh	r2, [r7, #8]
	lsl	r3, r2, #22
	ldr	r1, =0x3ff
	lsr	r3, #22
	add	r3, #4
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	strh	r2, [r7, #8]
.L94cd6:
	ldr	r3, .L94d0c	@ 0x1ff
	ldr	r2, .L94d10	@ 0xfffffe00
	and	r4, r3
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r4
	strh	r3, [r7, #6]
	ldr	r3, [r7, #0x18]
	asr	r3, #2
	sub	r3, r0, r3
	ldrb	r1, [r7, #5]
	mov	r2, #0x3f
	strb	r3, [r7, #4]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]
	and	r2, r3
	mov	r3, #0x40
	orr	r2, r3
	strb	r2, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_3dec
	b	.L94d2c

	.align	2, 0
.L94d0c:
	.word	0x1ff
.L94d10:
	.word	0xfffffe00
	.pool

.L94d28:
	mov	r3, #0
	strh	r3, [r7, #0x1c]
.L94d2c:
	ldr	r2, [sp, #8]
	cmp	r2, #7
	bhi	.L94d7c
	ldrh	r3, [r7, #0x1c]
	mov	r8, r3
	cmp	r3, #0
	bne	.L94d7c
	ldr	r0, [sp, #0xc]
	ldr	r6, [r0]
	bl	Func_4458
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r4, r3, r5
	str	r4, [sp]
	bl	Func_4458
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	ldr	r4, [sp]
	add	r0, r3, r5
	asr	r2, r0, #16
	str	r0, [r7, #0x14]
	asr	r1, r4, #16
	str	r4, [r7, #0xc]
	mov	r0, #0
	bl	_Func_11f54
	mov	r3, #0x78
	lsl	r0, #16
	mov	r1, r8
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	str	r1, [r7, #0x18]
	ldr	r2, [sp, #8]
	add	r2, #1
	str	r2, [sp, #8]
.L94d7c:
	ldr	r3, [sp, #4]
	add	r3, #1
	str	r3, [sp, #4]
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L94d8a
	b	.L94be6
.L94d8a:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_94bbc

.thumb_func_start Func_94da0
	push	{r5, r6, r7, lr}
	mov	r1, #0x82
	lsl	r1, #3
	mov	r0, #0x1d
	sub	sp, #4
	bl	Func_48f4
	mov	r5, r0
	mov	r7, r5
	mov	r1, #0
	mov	r0, sp
	str	r1, [r0]
	add	r7, #8
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000104
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	Func_48f4
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =Data_a001e
	bl	Func_53e8
	bl	Func_4080
	mov	r1, #0xc0
	str	r0, [r5]
	lsl	r1, #2
	mov	r2, r6
	bl	Func_3fa4
	str	r0, [r5, #4]
	mov	r0, #0xe
	bl	Func_2dd8
	mov	r5, #0
.L94df2:
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r1, r7
	mov	r6, #0
	stmia	r1!, {r6}
	ldr	r2, [r3]
	ldr	r3, =0x40000400
	stmia	r1!, {r3}
	mov	r3, #0xd4
	lsl	r3, #8
	str	r3, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #8]
	mov	r0, #0
	str	r1, [r7, #0xc]
	str	r2, [r7, #0x14]
	asr	r1, #16
	asr	r2, #16
	bl	_Func_11f54
	ldr	r2, .L94e50	@ 0xf
	mov	r3, r5
	and	r3, r2
	lsl	r0, #16
	add	r3, #1
	add	r5, #1
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	add	r7, #0x20
	cmp	r5, #0x1f
	bls	.L94df2
	ldr	r3, =REG_BLDCNT
	mov	r2, #0xfc
	lsl	r2, #6
	strh	r2, [r3]
	ldr	r2, =0x1008
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	ldr	r0, =Func_94bbc
	mov	r1, #0xc8
	lsl	r1, #4
	bl	Func_41d8
	add	sp, #4
	b	.L94e74

	.align	2, 0
.L94e50:
	.word	0xf
	.pool

.L94e74:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_94da0

.thumb_func_start Func_94e7c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ec4
	ldr	r0, [r3]
	sub	sp, #0x1c
	mov	r1, #0
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	sub	r3, #0x54
	ldr	r3, [r3]
	str	r3, [sp, #0xc]
	add	r3, #0xe4
	mov	r7, r0
	str	r3, [sp, #8]
	str	r1, [sp, #4]
	str	r1, [sp]
	str	r1, [sp, #0x10]
	add	r7, #8
	mov	r9, r1
	mov	r11, r1
	mov	r8, r1
.L94eb0:
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L94eb8
	b	.L94fc8
.L94eb8:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #8]
	ldr	r2, [r2]
	ldr	r3, [r3, #4]
	mov	r0, #0xb3
	lsl	r0, #1
	mov	r8, r2
	mov	r10, r3
	bl	_Func_79338
	cmp	r0, #0
	beq	.L94ed6
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
.L94ed6:
	ldrh	r3, [r7, #0x1c]
	ldr	r2, =.L9f024
	lsr	r3, #1
	lsl	r3, #2
	add	r6, r3, r2
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r3, #1
	ldr	r2, [r7, #0xc]
	and	r0, r3
	mov	r1, r8
	and	r3, r5
	sub	r2, r1
	add	r3, r0
	asr	r2, #16
	lsr	r3, #1
	add	r1, r2, r3
	sub	r2, r1, #1
	mov	r11, r2
	ldr	r3, [r7, #0x14]
	ldr	r2, [r7, #0x10]
	mov	r0, r10
	sub	r3, r2
	sub	r3, r0
	cmp	r3, #0
	bge	.L94f14
	ldr	r2, =0xffff
	add	r3, r2
.L94f14:
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	asr	r3, #16
	add	r3, r2
	mov	r8, r3
	mov	r3, r1
	add	r3, #0xf
	add	r6, #2
	cmp	r3, #0xff
	bhi	.L94fb2
	mov	r1, #0x20
	neg	r1, r1
	cmp	r8, r1
	blt	.L94fb2
	mov	r2, r8
	cmp	r2, #0x9f
	bgt	.L94fb2
	ldr	r3, [sp, #0x18]
	ldr	r1, [r3, #4]
	ldrh	r3, [r6]
	add	r1, r3
	ldr	r3, .L94f70	@ 0x3ff
	ldr	r2, .L94f74	@ 0xfffffc00
	and	r1, r3
	ldrh	r3, [r7, #8]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #8]
	ldr	r3, .L94f78	@ 0x1ff
	mov	r1, r11
	and	r1, r3
	ldr	r2, .L94f7c	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	ldrb	r2, [r7, #5]
	mov	r1, #0x3f
	strh	r3, [r7, #6]
	mov	r3, r1
	and	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]
	and	r1, r3
	mov	r3, #0x40
	b	.L94f8c

	.align	2, 0
.L94f70:
	.word	0x3ff
.L94f74:
	.word	0xfffffc00
.L94f78:
	.word	0x1ff
.L94f7c:
	.word	0xfffffe00
	.pool

.L94f8c:
	orr	r1, r3
	ldr	r3, =iwram_1e40
	mov	r0, r8
	ldr	r3, [r3]
	ldr	r2, .L94fbc	@ 1
	strb	r0, [r7, #4]
	mov	r0, #0x3f
	neg	r0, r0
	lsr	r3, #1
	and	r3, r2
	mov	r2, r0
	lsl	r3, #4
	and	r1, r2
	orr	r1, r3
	strb	r1, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_3dec
.L94fb2:
	ldrh	r3, [r7, #0x1c]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r7, #0x1c]
	b	.L94fc8

	.align	2, 0
.L94fbc:
	.word	1
	.pool

.L94fc8:
	ldr	r2, [sp, #0x14]
	cmp	r2, #3
	bhi	.L95078
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L95078
	ldr	r0, [sp, #0x18]
	ldr	r1, =0x40c
	add	r3, r0, r1
	ldr	r5, [r3]
	cmp	r5, #0
	bne	.L95078
	mov	r2, r9
	cmp	r2, #0
	beq	.L95020
	ldr	r3, [sp, #4]
	str	r3, [r7, #0xc]
	ldr	r0, [sp]
	mov	r3, r8
	mov	r2, r11
	asr	r1, r2, #16
	str	r0, [r7, #0x14]
	asr	r2, r3, #16
	mov	r0, #0
	bl	_Func_11f54
	ldr	r3, .L95018	@ 0x3e
	lsl	r0, #16
	str	r0, [r7, #0x10]
	mov	r0, r9
	sub	r3, r0
	strh	r3, [r7, #0x1c]
	str	r5, [r7, #0x18]
	ldr	r1, [sp, #0x14]
	mov	r2, #4
	add	r1, #1
	str	r1, [sp, #0x14]
	add	r9, r2
	b	.L95078

	.align	2, 0
.L95018:
	.word	0x3e
	.pool

.L95020:
	bl	Func_4458
	mov	r3, #0xff
	and	r0, r3
	cmp	r0, #0
	bne	.L95078
	ldr	r3, [sp, #0xc]
	ldr	r6, [r3]
	bl	Func_4458
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r3, r5
	str	r3, [sp, #4]
	bl	Func_4458
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	add	r3, r5
	ldr	r0, [sp, #4]
	str	r3, [sp]
	mov	r2, r11
	str	r3, [r7, #0x14]
	mov	r3, r8
	asr	r1, r2, #16
	str	r0, [r7, #0xc]
	asr	r2, r3, #16
	mov	r0, #0
	bl	_Func_11f54
	lsl	r0, #16
	str	r0, [r7, #0x10]
	mov	r3, #0x1e
	mov	r0, r9
	strh	r3, [r7, #0x1c]
	str	r0, [r7, #0x18]
	ldr	r1, [sp, #0x14]
	add	r1, #1
	mov	r2, #4
	str	r1, [sp, #0x14]
	mov	r9, r2
.L95078:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L95086
	b	.L94eb0
.L95086:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_94e7c

.thumb_func_start Func_9509c
	push	{r5, r6, r7, lr}
	mov	r1, #0x82
	lsl	r1, #3
	mov	r0, #0x1d
	sub	sp, #4
	bl	Func_48f4
	mov	r5, r0
	mov	r7, r5
	mov	r1, #0
	mov	r0, sp
	str	r1, [r0]
	add	r7, #8
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000104
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	Func_48f4
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =Data_a00b8
	bl	Func_53e8
	bl	Func_4080
	mov	r1, #0x80
	mov	r2, r6
	str	r0, [r5]
	lsl	r1, #2
	bl	Func_3fa4
	str	r0, [r5, #4]
	mov	r0, #0xe
	bl	Func_2dd8
	mov	r5, #0
	mov	r6, #0
.L950f0:
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r1, r7
	stmia	r1!, {r6}
	ldr	r2, [r3]
	ldr	r3, =0x40000400
	stmia	r1!, {r3}
	mov	r3, #0xd4
	lsl	r3, #8
	str	r3, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #8]
	asr	r1, #16
	str	r6, [r7, #0xc]
	str	r6, [r7, #0x14]
	asr	r2, #16
	mov	r0, #0
	bl	_Func_11f54
	ldr	r2, .L9513c	@ 0xf
	mov	r3, r5
	and	r3, r2
	lsl	r0, #16
	add	r3, #1
	add	r5, #1
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	add	r7, #0x20
	cmp	r5, #0x1f
	bls	.L950f0
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_94e7c
	bl	Func_41d8
	add	sp, #4
	b	.L95158

	.align	2, 0
.L9513c:
	.word	0xf
	.pool

.L95158:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9509c

.thumb_func_start Func_95160
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	sub	sp, #4
	bl	Func_48f4
	ldr	r3, =iwram_1ed0
	ldr	r3, [r3]
	mov	r5, r0
	mov	r8, r3
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850007e2
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	ldr	r0, =0x10003
	bl	Func_90a5c
	mov	r3, #0xa8
	lsl	r3, #4
	add	r6, r5, r3
	mov	r1, r8
	mov	r2, r6
	mov	r3, #1
	ldr	r0, =0x10005
	bl	Func_90a5c
	mov	r3, #0xa8
	lsl	r3, #5
	add	r2, r5, r3
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0xc
	bl	Func_9088c
	mov	r3, #0xe0
	lsl	r3, #4
	add	r8, r3
	mov	r2, r8
	mov	r0, r5
	mov	r1, #0
	mov	r3, #1
	bl	Func_90a5c
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r5, r3
	mov	r3, #0x96
	lsl	r3, #2
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0xc8
	add	r5, r3
	mov	r3, #1
	strh	r3, [r5]
	lsl	r1, #4
	ldr	r0, =Func_949a8
	bl	Func_41d8
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_95160

.thumb_func_start Func_95214
	push	{lr}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	bl	Func_48f4
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r0, r3
	ldr	r3, =0x7fff
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0
	add	r0, r3
	strh	r1, [r0]
	pop	{r0}
	bx	r0
.func_end Func_95214

.thumb_func_start Func_95240
	push	{lr}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	bl	Func_48f4
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r0, r3
	mov	r3, #0xc
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0
	add	r0, r3
	strh	r1, [r0]
	pop	{r0}
	bx	r0
.func_end Func_95240

.thumb_func_start Func_95268
	push	{lr}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	bl	Func_48f4
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r0, r3
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r3, =0x1f82
	add	r0, r3
	mov	r3, #1
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end Func_95268

.thumb_func_start Func_95290
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r10, r1
	mov	r0, #0x1e
	ldr	r1, =0x1f88
	sub	sp, #4
	bl	Func_48f4
	ldr	r3, =iwram_1ed0
	ldr	r3, [r3]
	mov	r5, r0
	mov	r8, r3
	mov	r0, sp
	mov	r3, #0
	mov	r9, r3
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850007e2
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r8
	mov	r2, r5
	mov	r0, r6
	mov	r3, #1
	bl	Func_90a5c
	mov	r3, #0xa8
	lsl	r3, #4
	add	r6, r5, r3
	mov	r1, r8
	mov	r2, r6
	mov	r0, r10
	mov	r3, #1
	bl	Func_90a5c
	mov	r3, #0xa8
	lsl	r3, #5
	add	r2, r5, r3
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0xc
	bl	Func_9088c
	mov	r3, #0xe0
	lsl	r3, #4
	add	r8, r3
	mov	r2, r8
	mov	r0, r5
	mov	r1, #0
	mov	r3, #1
	bl	Func_90a5c
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r5, r3
	mov	r3, #0x78
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0xc8
	add	r5, r3
	mov	r3, r9
	strh	r3, [r5]
	lsl	r1, #4
	ldr	r0, =Func_949a8
	bl	Func_41d8
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_95290

.thumb_func_start Func_95348
	ldr	r4, [r0, #0x68]
	ldr	r1, [r0, #8]
	ldr	r3, [r4, #8]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #8]
	ldr	r1, [r0, #0xc]
	ldr	r3, [r4, #0xc]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #0xc]
	ldr	r1, [r0, #0x10]
	ldr	r3, [r4, #0x10]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #0x10]
	bx	lr
.func_end Func_95348

.thumb_func_start Func_9537c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r10, r0
	bl	Func_92054
	ldr	r3, =ewram_240
	mov	r6, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	Func_92054
	mov	r1, #0x80
	ldrh	r3, [r0, #6]
	lsl	r1, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r1, r3
	mov	r11, r1
	bl	Func_916b0
	mov	r0, #0xa
	bl	Func_30f8
	mov	r0, #0xad
	bl	_Func_f9080
	mov	r1, #1
	mov	r0, r10
	bl	Func_925cc
	mov	r5, #0x80
	mov	r0, #0xaf
	bl	_Func_f9080
	lsl	r5, #8
	mov	r1, #1
	mov	r0, r10
	bl	Func_925cc
	add	r5, r11
	mov	r0, #0x14
	bl	Func_30f8
	mov	r1, r5
	mov	r2, #0
	mov	r0, r10
	bl	Func_92adc
	mov	r0, #0xa
	bl	Func_30f8
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	strh	r5, [r6, #6]
	mov	r0, r10
	bl	Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r5, #0x80
	mov	r2, r6
	strb	r3, [r0]
	add	r2, #0x55
	mov	r3, #2
	lsl	r5, #13
	str	r2, [sp, #4]
	mov	r1, r5
	strb	r3, [r2]
	mov	r0, r6
	mov	r2, r11
	bl	Func_96bec
	mov	r0, #0x98
	bl	_Func_f9080
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	Func_92560
	mov	r0, r6
	bl	_Func_ca6c
	mov	r1, r5
	mov	r2, r11
	mov	r0, r6
	bl	Func_96bec
	mov	r0, #0x98
	bl	_Func_f9080
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	Func_92560
	mov	r0, r6
	bl	_Func_ca6c
	mov	r1, r5
	mov	r2, r11
	mov	r0, r6
	bl	Func_96bec
	mov	r0, #0x98
	bl	_Func_f9080
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	Func_92560
	mov	r0, r6
	bl	_Func_ca6c
	mov	r0, #0x14
	bl	Func_30f8
	ldr	r3, [r6, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r2, #9
	mov	r8, r0
	str	r2, [sp, #8]
	cmp	r0, #0x5a
	bne	.L9549c
	mov	r3, #2
	str	r3, [sp, #8]
.L9549c:
	mov	r0, r8
	cmp	r0, #0x5c
	bne	.L954a6
	mov	r1, #0xa
	str	r1, [sp, #8]
.L954a6:
	mov	r2, r8
	cmp	r2, #0x5b
	bne	.L954b0
	mov	r3, #9
	str	r3, [sp, #8]
.L954b0:
	mov	r1, sp
	mov	r0, #0
	add	r1, #0x10
	str	r0, [sp, #0xc]
	str	r1, [sp]
	mov	r9, r6
	mov	r7, #0
.L954be:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, r8
	bl	_Func_c150
	ldr	r2, [sp]
	mov	r5, r0
	lsl	r3, r7, #2
	str	r5, [r2, r3]
	cmp	r5, #0
	beq	.L95536
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r5
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =Func_95348
	str	r3, [r5, #0x6c]
	ldr	r1, [r5, #0x50]
	ldrh	r3, [r6, #6]
	mov	r0, #0xd
	strh	r3, [r5, #6]
	neg	r0, r0
	ldrb	r3, [r1, #9]
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	ldr	r1, [sp, #8]
	mov	r0, r5
	bl	_Func_c598
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c528
	ldr	r0, [r5, #0x50]
	ldr	r1, [sp, #0xc]
	bl	Func_96c48
	mov	r1, r9
	str	r0, [sp, #0xc]
	str	r1, [r5, #0x68]
	mov	r9, r5
.L95536:
	add	r7, #1
	cmp	r7, #7
	ble	.L954be
	mov	r2, #0x80
	mov	r1, #0x80
	lsl	r2, #8
	add	r2, r11
	lsl	r1, #15
	mov	r0, r6
	bl	Func_96bec
	mov	r0, #0x88
	bl	_Func_f9080
	mov	r0, r10
	mov	r1, #0xc
	mov	r2, #0
	bl	Func_92560
	mov	r0, #0x18
	bl	Func_30f8
	ldr	r2, [sp, #4]
	mov	r3, #0
	strb	r3, [r2]
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x40]
	str	r3, [r6, #0x3c]
	mov	r0, r6
	mov	r1, #0
	bl	_Func_c300
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	bl	Func_91750
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9537c

.thumb_func_start Func_955b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	ldr	r3, =iwram_1ebc
	mov	r0, #0xb7
	lsl	r0, #1
	mov	r5, r1
	mov	r8, r2
	ldr	r7, [r3]
	bl	_Func_79338
	cmp	r0, #0
	beq	.L955e2
	lsl	r0, r5, #2
	add	r0, r5
	lsl	r0, #2
	add	r0, r8
	mov	r2, #0
	add	r0, #0x30
	mov	r10, r2
	bl	_Func_79358
	b	.L955ec
.L955e2:
	mov	r0, r5
	mov	r1, r8
	bl	_Func_7a0f4
	mov	r10, r0
.L955ec:
	mov	r3, r10
	cmp	r3, #0
	blt	.L9566e
	bl	Func_916b0
	bl	Func_8c44c
	mov	r2, #1
	neg	r2, r2
	cmp	r6, r2
	beq	.L9565c
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L95614
	bl	Func_8b8e8
.L95614:
	cmp	r5, #0
	bne	.L95620
	mov	r0, r6
	bl	Func_96140
	b	.L95642
.L95620:
	cmp	r5, #1
	bne	.L9562c
	mov	r0, r6
	bl	Func_965a8
	b	.L95642
.L9562c:
	cmp	r5, #2
	bne	.L95638
	mov	r0, r6
	bl	Func_95dd0
	b	.L95642
.L95638:
	cmp	r5, #3
	bne	.L95642
	mov	r0, r6
	bl	Func_95a44
.L95642:
	lsl	r3, r6, #2
	add	r3, #0x14
	mov	r2, #0
	str	r2, [r7, r3]
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L9565c
	bl	Func_8b98c
.L9565c:
	mov	r0, r10
	mov	r1, r5
	mov	r2, r8
	bl	_Func_21228
	bl	Func_8c4c0
	bl	Func_91750
.L9566e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_955b0

.thumb_func_start Func_95680
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r5, =ewram_240
	mov	r0, #0x8d
	lsl	r0, #2
	add	r3, r5, r0
	ldrh	r2, [r3]
	mov	r1, #0
	ldrsh	r7, [r3, r1]
	mov	r3, #0xf0
	lsl	r3, #8
	and	r7, r3
	ldr	r3, =0xfff
	mov	r10, r3
	mov	r0, r10
	and	r0, r2
	mov	r10, r0
	ldr	r0, =0x109
	bl	_Func_79338
	cmp	r0, #0
	beq	.L9574c
	cmp	r7, #0
	bne	.L9574c
	ldr	r3, =0x7ff
	mov	r7, #0x80
	mov	r1, r10
	lsl	r7, #4
	and	r7, r1
	and	r1, r3
	ldr	r3, =0xfffffed4
	mov	r10, r1
	add	r3, r10
	cmp	r3, #0x50
	bhi	.L9574c
	ldr	r2, =0x236
	add	r3, r5, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	ble	.L9574c
	sub	r2, #0x42
	mov	r1, #8
	add	r2, r5
	mov	r8, r1
	mov	r9, r2
.L956e2:
	mov	r0, r8
	bl	Func_8d394
	mov	r5, r0
	cmp	r5, #0
	beq	.L95742
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	ldr	r2, =0xfffffed4
	sub	r3, #0x30
	add	r2, r10
	cmp	r3, r2
	bne	.L95742
	mov	r0, r8
	bl	Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L95742
	cmp	r7, #0
	bne	.L95722
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #3
	str	r7, [r6, #0x14]
	strb	r3, [r2]
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	bl	_Func_d130
	b	.L9573a
.L95722:
	mov	r1, r9
	ldr	r0, [r1]
	bl	Func_8ba1c
	ldr	r3, [r0, #0x10]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r0, =0xffe00000
	add	r3, r0
	mov	r0, r6
	bl	_Func_d130
.L9573a:
	mov	r0, r6
	mov	r1, #1
	bl	_Func_c300
.L95742:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x41
	ble	.L956e2
.L9574c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_95680

.thumb_func_start Func_95778
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r1, =ewram_240
	mov	r0, #0x8d
	lsl	r0, #2
	add	r7, r1, r0
	mov	r3, #0
	ldrsh	r5, [r7, r3]
	ldrh	r2, [r7]
	mov	r3, #0xf0
	ldr	r6, =0xfff
	lsl	r3, #8
	mov	r0, r8
	and	r5, r3
	and	r6, r2
	cmp	r0, #0
	bne	.L957ec
	cmp	r5, #0
	bne	.L957cc
	ldr	r3, =0x7ff
	ldr	r2, =0xfffffed4
	and	r6, r3
	add	r3, r6, r2
	cmp	r3, #0x50
	bhi	.L95860
	ldr	r0, =0x236
	add	r3, r1, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, #0
	ble	.L957c0
	ldr	r3, =0x3e7
	cmp	r2, r3
	bne	.L95860
.L957c0:
	mov	r0, r6
	sub	r0, #0xac
	bl	_Func_79358
	strh	r5, [r7]
	b	.L95860
.L957cc:
	mov	r0, #0x80
	lsl	r0, #5
	cmp	r5, r0
	bne	.L95860
	ldr	r2, =0x236
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.L957e6
	mov	r0, r6
	bl	_Func_79358
.L957e6:
	mov	r1, r8
	strh	r1, [r7]
	b	.L95860
.L957ec:
	cmp	r5, #0
	bne	.L95856
	ldr	r2, =0x7ff
	ldr	r0, =0xfffffed4
	and	r6, r2
	add	r3, r6, r0
	cmp	r3, #0x50
	bhi	.L95856
	and	r6, r2
	ldr	r2, =0x236
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	ble	.L95856
	ldr	r1, =0xfffffed4
	add	r5, r6, r1
	mov	r0, r5
	mov	r1, #0x14
	bl	Func_af0_from_thumb
	mov	r1, #0x14
	mov	r8, r0
	mov	r0, r5
	bl	Func_b1c_from_thumb
	mov	r5, #8
	mov	r7, r0
	b	.L95828
.L95826:
	add	r5, #1
.L95828:
	cmp	r5, #0x41
	bgt	.L95854
	mov	r0, r5
	bl	Func_8d394
	cmp	r0, #0
	beq	.L95826
	mov	r2, #2
	ldrsh	r3, [r0, r2]
	ldr	r0, =0xfffffed4
	sub	r3, #0x30
	add	r2, r6, r0
	cmp	r3, r2
	bne	.L95826
	mov	r0, #0x28
	bl	Func_30f8
	mov	r1, r8
	mov	r0, r5
	mov	r2, r7
	bl	Func_955b0
.L95854:
	ldr	r1, =ewram_240
.L95856:
	mov	r3, #0x8d
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, #0
	strh	r3, [r2]
.L95860:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_95778

.thumb_func_start Func_95884
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r5, r3
	add	r5, #0x58
	mov	r6, #0x17
.L95890:
	mov	r0, r5
	sub	r6, #1
	bl	Func_9b804
	add	r5, #0x48
	cmp	r6, #0
	bge	.L95890
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_95884

.thumb_func_start Func_958a8
	push	{lr}
	mov	r1, #0xe4
	lsl	r1, #3
	mov	r0, #0x38
	sub	sp, #4
	bl	Func_48b0
	mov	r3, #0
	mov	r1, r0
	mov	r0, sp
	str	r3, [r0]
	ldr	r2, =0x850001c8
	ldr	r3, =REG_DMA3SAD
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_95884
	bl	Func_41d8
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_958a8

.thumb_func_start Func_958e4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f30
	ldr	r0, =Func_95884
	ldr	r5, [r3]
	bl	Func_4278
	mov	r6, r5
	add	r6, #0x9d
	add	r5, #0x58
	mov	r7, #0x17
.L958f8:
	ldrb	r3, [r6]
	lsl	r3, #24
	add	r6, #0x48
	cmp	r3, #0
	beq	.L95908
	mov	r0, r5
	bl	Func_9bb34
.L95908:
	sub	r7, #1
	add	r5, #0x48
	cmp	r7, #0
	bge	.L958f8
	mov	r0, #0x38
	bl	Func_2dd8
	mov	r0, #1
	bl	Func_30f8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_958e4

.thumb_func_start Func_9592c
	ldrh	r3, [r0, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r3, r2
	strh	r3, [r0, #6]
	bx	lr
.func_end Func_9592c

.thumb_func_start Func_95938
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	mov	r5, r0
	lsl	r1, #1
	add	r3, r1
	mov	r7, r5
	ldr	r0, [r3]
	add	r7, #0x40
	sub	sp, #0xc
	bl	Func_92054
	mov	r2, #0
	ldrsb	r2, [r7, r2]
	cmp	r2, #0
	bne	.L95976
	ldrh	r3, [r5, #0x3c]
	add	r3, #1
	strh	r3, [r5, #0x3c]
	ldrh	r3, [r5, #0x3e]
	add	r3, #1
	strh	r3, [r5, #0x3e]
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0x3c
	bne	.L95a12
	strh	r2, [r5, #0x38]
.L9596e:
	ldrb	r3, [r7]
	add	r3, #1
	strb	r3, [r7]
	b	.L95a12
.L95976:
	cmp	r2, #1
	bne	.L9598e
	ldrh	r3, [r5, #0x3e]
	add	r3, #1
	strh	r3, [r5, #0x3e]
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0x28
	bne	.L95a12
	mov	r3, #0
	strh	r3, [r5, #0x38]
	b	.L9596e
.L9598e:
	cmp	r2, #2
	bne	.L959ea
	ldrh	r3, [r5, #0x3e]
	add	r3, #1
	strh	r3, [r5, #0x3e]
	ldr	r3, [r0, #8]
	mov	r6, sp
	str	r3, [r6]
	mov	r1, #0xa0
	ldr	r3, [r0, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_974d8
	ldr	r3, [r6]
	ldr	r2, [r5, #0x14]
	sub	r3, r2
	cmp	r3, #0
	bge	.L959be
	add	r3, #7
.L959be:
	asr	r3, #3
	add	r3, r2, r3
	str	r3, [r5, #0x14]
	ldr	r2, [r5, #0x18]
	ldr	r3, [r6, #8]
	sub	r3, r2
	cmp	r3, #0
	bge	.L959d0
	add	r3, #7
.L959d0:
	asr	r3, #3
	add	r3, r2, r3
	str	r3, [r5, #0x18]
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0x28
	bne	.L95a14
	mov	r3, #0
	strh	r3, [r5, #0x38]
	ldrb	r3, [r7]
	add	r3, #1
	strb	r3, [r7]
	b	.L95a14
.L959ea:
	cmp	r2, #3
	bne	.L95a08
	ldrh	r3, [r5, #0x3c]
	sub	r3, #1
	strh	r3, [r5, #0x3c]
	ldrh	r3, [r5, #0x3e]
	add	r3, #1
	strh	r3, [r5, #0x3e]
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0x3c
	bne	.L95a12
	mov	r3, #0
	strh	r3, [r5, #0x38]
	b	.L9596e
.L95a08:
	cmp	r2, #4
	bne	.L95a12
	mov	r0, r5
	bl	Func_9bb34
.L95a12:
	mov	r6, sp
.L95a14:
	ldr	r3, [r5, #0x14]
	str	r3, [r6]
	ldr	r3, [r5, #0x18]
	str	r3, [r6, #8]
	mov	r2, #0x3c
	ldrsh	r0, [r5, r2]
	mov	r3, #0x3e
	ldrsh	r1, [r5, r3]
	lsl	r0, #16
	lsl	r1, #11
	mov	r2, r6
	bl	Func_447c
	ldr	r3, [r6]
	str	r3, [r5, #4]
	ldr	r3, [r6, #8]
	add	sp, #0xc
	str	r3, [r5, #8]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_95938

.thumb_func_start Func_95a44
	push	{r5, r6, r7, lr}
	sub	sp, #0xc
	mov	r6, r0
	bl	Func_92054
	mov	r7, r0
	cmp	r7, #0
	bne	.L95a56
	b	.L95b6e
.L95a56:
	bl	Func_958a8
	ldr	r3, =iwram_1f30
	ldr	r0, =0x20118c
	ldr	r5, [r3]
	bl	_Func_b0840
	mov	r0, #0xad
	bl	_Func_f9080
	mov	r0, r6
	mov	r1, #1
	bl	Func_925cc
	mov	r0, #0xae
	bl	_Func_f9080
	mov	r0, r6
	mov	r1, #1
	bl	Func_925cc
	mov	r0, #0xaf
	bl	_Func_f9080
	mov	r1, #1
	mov	r0, r6
	bl	Func_925cc
	mov	r0, #0x14
	bl	Func_30f8
	mov	r0, #0x8c
	bl	_Func_f9080
	ldr	r3, =Func_9592c
	mov	r0, #0x28
	str	r3, [r7, #0x6c]
	bl	Func_30f8
	mov	r0, #0x99
	bl	_Func_f9080
	mov	r1, #0xc
	mov	r2, #0x16
	mov	r0, r6
	bl	Func_92560
	ldr	r3, [r7, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_974d8
	mov	r0, r7
	bl	_Func_c0f4
	mov	r0, #0xa4
	bl	_Func_f9080
	add	r5, #0x58
	mov	r7, #0x17
.L95ad8:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_9ba90
	mov	r0, r5
	ldr	r1, =Func_95938
	bl	Func_9ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_9ba70
	bl	Func_4458
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	_Func_b684
	bl	Func_4458
	mov	r1, #3
	bl	Func_b60_from_thumb
	mov	r3, #0x80
	lsl	r3, #9
	add	r0, r3
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	sub	r7, #1
	mov	r0, #1
	bl	Func_30f8
	add	r5, #0x48
	cmp	r7, #0
	bge	.L95ad8
	mov	r0, #0x3c
	bl	Func_30f8
	ldr	r5, =ewram_240
	mov	r3, #0xfa
	lsl	r3, #1
	add	r5, r3
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	ldr	r0, [r5]
	bl	Func_92adc
	mov	r0, #0x14
	bl	Func_30f8
	ldr	r0, [r5]
	bl	Func_92054
	mov	r1, #0x1c
	bl	_Func_c300
	mov	r0, #0x28
	bl	Func_30f8
	mov	r0, #0xa4
	bl	_Func_f9080
	mov	r0, #0x64
	bl	Func_30f8
	bl	_Func_b0894
	bl	Func_958e4
.L95b6e:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_95a44

.thumb_func_start Func_95b8c
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #2
	ldr	r1, =.L9f0a4
	and	r3, r2
	lsl	r3, #2
	ldr	r3, [r3, r1]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	bx	lr
.func_end Func_95b8c

.thumb_func_start Func_95bac
	push	{lr}
	mov	r1, r0
	add	r1, #0x64
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	lsl	r2, r3, #2
	add	r2, r3
	ldrh	r3, [r0, #6]
	lsl	r2, #4
	mov	r4, #0x80
	add	r3, r2
	lsl	r4, #5
	add	r3, r4
	strh	r3, [r0, #6]
	cmp	r2, r4
	bcs	.L95bd2
	ldrh	r3, [r1]
	add	r3, #1
	strh	r3, [r1]
.L95bd2:
	pop	{r0}
	bx	r0
.func_end Func_95bac

.thumb_func_start Func_95bd8
	push	{lr}
	ldr	r1, =0xfffffe40
	ldr	r3, [r0, #0x1c]
	ldr	r2, [r0, #0x18]
	add	r3, r1
	add	r2, r1
	str	r3, [r0, #0x1c]
	mov	r1, #0x80
	ldrh	r3, [r0, #6]
	lsl	r1, #6
	add	r3, r1
	strh	r3, [r0, #6]
	mov	r3, #0xc0
	lsl	r3, #6
	str	r2, [r0, #0x18]
	cmp	r2, r3
	bge	.L95bfe
	bl	_Func_c0f4
.L95bfe:
	pop	{r0}
	bx	r0
.func_end Func_95bd8

.thumb_func_start Func_95c08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	Func_92054
	mov	r2, #0x40
	add	r2, r7
	mov	r6, #0
	ldrsb	r6, [r2, r6]
	mov	r9, r0
	mov	r10, r2
	cmp	r6, #0
	bne	.L95cc2
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #0x18]
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	mov	r8, sp
	str	r2, [sp]
	str	r3, [sp, #8]
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	lsl	r1, r5, #1
	lsl	r3, r0, #1
	add	r3, r0
	add	r1, r5
	lsl	r1, #11
	lsl	r3, #11
	lsr	r3, #16
	lsr	r1, #16
	sub	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0xf0
	add	r1, r3
	lsl	r0, #15
	mov	r2, r8
	bl	Func_447c
	mov	r1, r8
	ldr	r3, [r1]
	str	r3, [r7, #0xc]
	ldr	r3, [r1, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	strb	r6, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	mov	r1, r9
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, [r1, #0x50]
	ldr	r0, [r7]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r0, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #9]
	mov	r3, r7
	add	r3, #0x47
	strb	r6, [r3]
	strh	r6, [r7, #0x38]
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L95db6
	mov	r0, #0x86
	bl	_Func_f9080
	b	.L95db6
.L95cc2:
	cmp	r6, #1
	bne	.L95ce4
	mov	r2, #0x38
	ldrsh	r3, [r7, r2]
	cmp	r3, #3
	bne	.L95d8e
	ldr	r1, [r7]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, r7
	strb	r3, [r1, #9]
	add	r2, #0x47
	mov	r3, #4
	strb	r3, [r2]
	b	.L95d8e
.L95ce4:
	cmp	r6, #2
	bne	.L95d22
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L95db6
	ldr	r3, [r7, #4]
	str	r3, [r7, #0x14]
	ldr	r3, [r7, #8]
	ldr	r1, [r7]
	str	r3, [r7, #0x18]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, r7
	add	r2, #0x47
	strb	r3, [r1, #9]
	mov	r3, #4
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x44
	strb	r0, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r3, #0x28
	strh	r3, [r7, #0x3a]
	b	.L95db6
.L95d22:
	cmp	r6, #3
	bne	.L95d8a
	mov	r1, #1
	mov	r8, r1
	mov	r3, r7
	add	r3, #0x44
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, [r7, #0x14]
	str	r3, [r7, #4]
	ldr	r3, [r7, #0x18]
	str	r3, [r7, #8]
	mov	r1, r9
	ldr	r3, [r1, #8]
	mov	r5, sp
	str	r3, [r5]
	mov	r2, #0xa0
	ldr	r3, [r1, #0xc]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r1, #0x10]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	Func_974d8
	bl	Func_4458
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r1, r10
	ldrb	r3, [r1]
	add	r3, #1
	strb	r3, [r1]
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L95db6
	mov	r0, #0x91
	bl	_Func_f9080
	b	.L95db6
.L95d8a:
	cmp	r6, #4
	bne	.L95da2
.L95d8e:
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L95db6
	mov	r1, r10
	ldrb	r3, [r1]
	sub	r3, #1
	strb	r3, [r1]
	b	.L95db6
.L95da2:
	cmp	r6, #5
	bne	.L95db6
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L95db6
	mov	r0, r7
	bl	Func_9bb34
.L95db6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_95c08

.thumb_func_start Func_95dd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0xc
	mov	r6, r0
	bl	Func_92054
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	Func_92054
	mov	r8, r0
	cmp	r5, #0
	bne	.L95df8
	b	.L95f72
.L95df8:
	bl	Func_958a8
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r0, =0x201090
	mov	r10, r3
	bl	_Func_b0840
	mov	r0, #0x1e
	bl	Func_30f8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, r6
	bl	Func_92adc
	mov	r0, #0x14
	bl	Func_30f8
	mov	r0, #0xad
	bl	_Func_f9080
	mov	r0, r6
	mov	r1, #1
	bl	Func_925cc
	mov	r0, #0xae
	bl	_Func_f9080
	mov	r0, r6
	mov	r1, #1
	bl	Func_925cc
	mov	r0, #0xaf
	bl	_Func_f9080
	mov	r1, #1
	mov	r0, r6
	bl	Func_925cc
	mov	r0, #0x14
	bl	Func_30f8
	mov	r0, #0x8c
	bl	_Func_f9080
	ldr	r3, =Func_95bac
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, #0x50
	bl	Func_30f8
	ldr	r3, =Func_95bd8
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #3
	bl	_Func_c300
	ldr	r3, [r5, #8]
	mov	r7, sp
	str	r3, [r7]
	ldr	r3, [r5, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	bl	Func_974d8
	mov	r5, r10
	add	r5, #0x58
	mov	r6, #0x17
.L95e8e:
	mov	r1, #0x8e
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_9ba90
	mov	r0, r5
	ldr	r1, =Func_95c08
	bl	Func_9ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_9ba70
	ldr	r0, [r5]
	mov	r1, #0xa
	bl	_Func_b684
	bl	Func_4458
	mov	r1, #3
	bl	Func_b60_from_thumb
	mov	r3, #0x80
	lsl	r3, #9
	add	r0, r3
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	sub	r6, #1
	mov	r0, #1
	bl	Func_30f8
	add	r5, #0x48
	cmp	r6, #0
	bge	.L95e8e
	mov	r0, #0x3c
	bl	Func_30f8
	ldr	r5, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r2
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	ldr	r0, [r5]
	bl	Func_92adc
	mov	r0, #0x14
	bl	Func_30f8
	ldr	r0, [r5]
	bl	Func_92054
	mov	r1, #0x1c
	bl	_Func_c300
	mov	r0, #0x14
	bl	Func_30f8
	mov	r2, r10
	mov	r1, #2
	add	r2, #0x98
	mov	r6, #0x17
.L95f10:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L95f1a
	strb	r1, [r2]
.L95f1a:
	sub	r6, #1
	add	r2, #0x48
	cmp	r6, #0
	bge	.L95f10
	mov	r0, #0x3c
	bl	Func_30f8
	ldr	r3, =Func_95b8c
	mov	r2, r8
	str	r3, [r2, #0x6c]
	mov	r0, #0x64
	bl	Func_30f8
	mov	r2, r10
	mov	r1, #5
	add	r2, #0x98
	mov	r6, #0x17
.L95f3c:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L95f46
	strb	r1, [r2]
.L95f46:
	sub	r6, #1
	add	r2, #0x48
	cmp	r6, #0
	bge	.L95f3c
	mov	r0, #0xa
	bl	Func_30f8
	mov	r5, #0
	mov	r3, r8
	str	r5, [r3, #0x6c]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r8
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r0, #0x1e
	bl	Func_30f8
	bl	_Func_b0894
	bl	Func_958e4
.L95f72:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_95dd0

.thumb_func_start Func_95f9c
	push	{lr}
	ldr	r1, =0xfffffc00
	ldr	r3, [r0, #0x1c]
	ldr	r2, [r0, #0x18]
	add	r3, r1
	add	r2, r1
	str	r3, [r0, #0x1c]
	mov	r1, #0x80
	ldrh	r3, [r0, #6]
	lsl	r1, #6
	add	r3, r1
	strh	r3, [r0, #6]
	mov	r3, #0xc0
	lsl	r3, #6
	str	r2, [r0, #0x18]
	cmp	r2, r3
	bge	.L95fc2
	bl	_Func_c0f4
.L95fc2:
	pop	{r0}
	bx	r0
.func_end Func_95f9c

.thumb_func_start Func_95fcc
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	Func_92054
	mov	r3, r7
	add	r3, #0x64
	ldrh	r1, [r3]
	sub	r1, #1
	strh	r1, [r3]
	mov	r6, r0
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	str	r3, [r5, #8]
	ldr	r3, =0x6666
	asr	r1, #16
	mov	r0, r1
	mul	r0, r3
	mov	r3, r7
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	lsl	r1, #11
	add	r1, r3
	mov	r2, r5
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r7, #8]
	ldr	r3, [r5, #8]
	ldr	r2, [r7, #0xc]
	str	r3, [r7, #0x10]
	ldr	r3, =0xffff0000
	add	r2, r3
	str	r2, [r7, #0xc]
	mov	r1, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r1, #13
	add	r3, r1
	cmp	r2, r3
	bge	.L96034
	mov	r0, r7
	bl	_Func_c0f4
.L96034:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_95fcc

.thumb_func_start Func_96048
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	Func_92054
	mov	r3, #0x40
	add	r3, r7
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r10, r3
	mov	r8, r2
	cmp	r2, #0
	bne	.L960fa
	ldr	r3, [r0, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r0, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #8]
	bl	Func_4458
	lsl	r5, r0, #2
	add	r5, r0
	mov	r3, #0xa0
	lsl	r3, #12
	lsl	r5, #1
	add	r5, r3
	bl	Func_4458
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	Func_447c
	mov	r0, r6
	bl	Func_974d8
	ldr	r2, [r6]
	str	r2, [r7, #0x14]
	ldr	r3, [r6, #8]
	mov	r0, #0xf0
	mov	r1, #0xc0
	str	r3, [r7, #0x18]
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	lsl	r0, #15
	str	r2, [r6]
	lsl	r1, #8
	mov	r2, r6
	str	r3, [r6, #8]
	bl	Func_447c
	ldr	r3, [r6]
	str	r3, [r7, #0xc]
	ldr	r3, [r6, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x24]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	mov	r2, r8
	strb	r2, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9612a
	mov	r0, #0x90
	bl	_Func_f9080
	b	.L9612a
.L960fa:
	mov	r3, r8
	cmp	r3, #1
	bne	.L96114
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L9612a
	mov	r2, r10
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	b	.L9612a
.L96114:
	mov	r3, r8
	cmp	r3, #2
	bne	.L9612a
	mov	r0, r7
	bl	Func_9ba34
	cmp	r0, #0
	bne	.L9612a
	mov	r0, r7
	bl	Func_9bb34
.L9612a:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_96048

.thumb_func_start Func_96140
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =ewram_240
	mov	r5, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r7, r3, r0
	ldr	r0, [r7]
	sub	sp, #0xc
	bl	Func_92054
	mov	r10, r0
	mov	r0, r5
	bl	Func_92054
	mov	r6, r0
	cmp	r6, #0
	bne	.L9616c
	b	.L963fa
.L9616c:
	bl	Func_958a8
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r0, =0x201204
	mov	r9, r3
	bl	_Func_b0840
	mov	r0, #0x1e
	bl	Func_30f8
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, #0x98
	bl	_Func_f9080
	mov	r0, r5
	mov	r1, #4
	mov	r2, #0xf
	bl	Func_92560
	mov	r0, #0x98
	bl	_Func_f9080
	mov	r1, #4
	mov	r2, #0xf
	mov	r0, r5
	bl	Func_92560
	mov	r0, #0x1e
	bl	Func_30f8
	ldr	r3, =Func_9592c
	mov	r0, #0x99
	str	r3, [r6, #0x6c]
	bl	_Func_f9080
	mov	r0, r5
	mov	r1, #8
	mov	r2, #0x16
	bl	Func_92560
	mov	r0, #0x8c
	bl	_Func_f9080
	mov	r5, #0x80
	ldr	r1, =0x14ccc
	lsl	r5, #9
	mov	r2, r5
	mov	r0, r1
	bl	_Func_12330
	ldr	r3, =Func_95f9c
	mov	r0, r6
	str	r3, [r6, #0x6c]
	mov	r1, #3
	bl	_Func_c300
	mov	r0, #0x5a
	bl	Func_30f8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	ldr	r0, [r7]
	bl	Func_92adc
	mov	r0, #0x14
	bl	Func_30f8
	ldr	r0, [r7]
	bl	Func_92054
	mov	r1, #0x1c
	bl	_Func_c300
	mov	r0, #0x1e
	bl	Func_30f8
	ldr	r1, =0x19999
	mov	r2, r5
	mov	r0, r1
	bl	_Func_12330
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #0xc]
	str	r3, [sp, #4]
	mov	r8, sp
	ldr	r3, [r6, #0x10]
	mov	r0, r8
	str	r3, [sp, #8]
	bl	Func_974d8
	mov	r5, r9
	add	r5, #0x58
	mov	r7, #0x17
	mov	r6, r8
.L96234:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_9ba90
	mov	r0, r5
	ldr	r1, =Func_96048
	bl	Func_9ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_9ba70
	ldr	r0, [r5]
	mov	r1, #0xb
	bl	_Func_b684
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x28]
	bl	Func_4458
	mov	r2, #0xc0
	lsl	r2, #9
	add	r0, r2
	str	r0, [r5, #0x2c]
	sub	r7, #1
	mov	r0, #1
	bl	Func_30f8
	add	r5, #0x48
	cmp	r7, #0
	bge	.L96234
	mov	r0, #0x8c
	bl	Func_30f8
	mov	r2, r9
	mov	r1, #2
	add	r2, #0x98
	mov	r7, #0x17
.L96288:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L96292
	strb	r1, [r2]
.L96292:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.L96288
	mov	r0, #0x14
	bl	Func_30f8
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	bl	_Func_12330
	mov	r0, #0x1e
	bl	Func_30f8
	ldr	r3, .L962bc	@ 0
	mov	r7, #0
	mov	r5, r8
	mov	r9, r3
	b	.L962e0

	.align	2, 0
.L962bc:
	.word	0
	.pool

.L962e0:
	mov	r0, r10
	ldr	r1, [r0, #8]
	str	r1, [r5]
	mov	r3, #0xf0
	ldr	r2, [r0, #0xc]
	lsl	r3, #15
	add	r2, r3
	str	r2, [r5, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x8e
	str	r3, [r5, #8]
	lsl	r0, #1
	bl	Func_96c80
	mov	r6, r0
	cmp	r6, #0
	beq	.L96348
	bl	Func_4458
	mov	r1, #3
	bl	Func_b60_from_thumb
	mov	r2, #0x80
	lsl	r2, #9
	add	r0, r2
	mov	r2, r6
	add	r2, #0x64
	mov	r3, #0x64
	str	r0, [r6, #0x1c]
	str	r0, [r6, #0x18]
	mov	r1, #0x18
	strh	r3, [r2]
	lsl	r0, r7, #16
	bl	Func_af0_from_thumb
	mov	r3, r6
	add	r3, #0x66
	strh	r0, [r3]
	ldr	r3, =Func_95fcc
	str	r3, [r6, #0x6c]
	mov	r3, r6
	add	r3, #0x55
	mov	r0, r9
	strb	r0, [r3]
	mov	r1, #7
	mov	r0, r6
	bl	_Func_c300
	mov	r0, r6
	mov	r1, #0xb
	bl	_Func_c598
.L96348:
	add	r7, #1
	cmp	r7, #0x17
	ble	.L962e0
	mov	r0, #0x64
	bl	Func_30f8
	mov	r0, #0x90
	lsl	r0, #1
	bl	_Func_f9080
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0x97
	bl	_Func_f9080
	mov	r2, r10
	ldr	r3, [r2, #8]
	mov	r0, r8
	str	r3, [r0]
	ldr	r3, [r2, #0xc]
	mov	r2, #0x90
	lsl	r2, #13
	add	r3, r2
	str	r3, [r0, #4]
	mov	r0, r10
	ldr	r3, [r0, #0x10]
	mov	r2, r8
	mov	r7, #0
	mov	r5, r8
	str	r3, [r2, #8]
	b	.L963d4
.L96388:
	ldr	r3, =0x9999
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldr	r3, [r6, #0xc]
	str	r3, [r6, #0x14]
	bl	Func_4458
	ldr	r3, =0x16666
	add	r0, r3
	str	r0, [r6, #0x30]
	bl	Func_4458
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #14
	mov	r0, r6
	bl	Func_96bec
	mov	r0, r6
	mov	r1, #0xb
	bl	_Func_c598
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #8
	strh	r3, [r2]
	mov	r0, r6
	ldr	r1, =Data_9f0b0
	bl	_Func_c2d8
	add	r7, #1
.L963d4:
	cmp	r7, #7
	bgt	.L963ec
	mov	r0, #0x8e
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	lsl	r0, #1
	bl	Func_96c80
	mov	r6, r0
	cmp	r6, #0
	bne	.L96388
.L963ec:
	mov	r0, #0xf
	bl	Func_30f8
	bl	_Func_b0894
	bl	Func_958e4
.L963fa:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_96140

.thumb_func_start Func_9641c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	Func_92054
	mov	r2, #0x40
	add	r2, r7
	mov	r1, #0
	ldrsb	r1, [r2, r1]
	mov	r5, r0
	mov	r8, r2
	ldrb	r3, [r2]
	mov	r10, r1
	cmp	r1, #0
	bne	.L964d0
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	bl	Func_4458
	ldr	r3, [r5, #0xc]
	lsl	r2, r0, #2
	add	r2, r0
	add	r3, r2
	mov	r2, #0xf0
	lsl	r2, #12
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_974d8
	bl	Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r3, #0x80
	lsl	r3, #10
	lsl	r5, #1
	add	r5, r3
	bl	Func_4458
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	Func_447c
	ldr	r2, [r6]
	str	r2, [r7, #0xc]
	ldr	r1, =0xff9c0000
	ldr	r3, [r6, #8]
	mov	r5, #0xc0
	str	r3, [r7, #0x10]
	lsl	r5, #10
	add	r3, r1
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	str	r5, [r7, #0x24]
	bl	Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	add	r3, r5
	str	r3, [r7, #0x20]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x28]
	str	r3, [r7, #0x2c]
	mov	r3, r7
	add	r3, #0x42
	mov	r2, r10
	strb	r2, [r3]
	mov	r2, r7
	mov	r3, #1
	add	r2, #0x41
	strb	r3, [r2]
	mov	r1, r8
	ldrb	r3, [r1]
	add	r3, #1
	strb	r3, [r1]
	b	.L9655a
.L964d0:
	sub	r3, #1
	mov	r2, #0x80
	lsl	r3, #24
	lsl	r2, #17
	cmp	r3, r2
	bhi	.L9654e
	mov	r0, r7
	bl	Func_9ba34
	mov	r6, r0
	cmp	r6, #0
	bne	.L9655a
	ldr	r3, [r7, #4]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #8]
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r1, r0
	mov	r0, #0xc0
	mov	r2, r5
	lsl	r0, #12
	bl	Func_447c
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r3, r7
	add	r3, #0x41
	strb	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x1c]
	str	r6, [r7, #0x24]
	bl	Func_4458
	ldr	r3, =0x23333
	add	r0, r3
	mov	r3, #0x80
	lsl	r3, #8
	str	r0, [r7, #0x20]
	str	r3, [r7, #0x28]
	str	r3, [r7, #0x2c]
	mov	r0, #0x8f
	bl	_Func_f9080
	mov	r1, r8
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1]
	cmp	r3, #1
	bne	.L96542
	sub	r3, r2, #1
	strb	r3, [r1]
	b	.L96548
.L96542:
	add	r3, r2, #1
	mov	r2, r8
	strb	r3, [r2]
.L96548:
	mov	r3, #6
	strh	r3, [r7, #0x3a]
	b	.L9655a
.L9654e:
	mov	r3, r10
	cmp	r3, #3
	bne	.L9655a
	mov	r0, r7
	bl	Func_9bb34
.L9655a:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9641c

.thumb_func_start Func_96574
	ldr	r4, [r0, #0x68]
	ldr	r1, [r0, #8]
	ldr	r3, [r4, #8]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #8]
	ldr	r1, [r0, #0xc]
	ldr	r3, [r4, #0xc]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #0xc]
	ldr	r1, [r0, #0x10]
	ldr	r3, [r4, #0x10]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #0x10]
	bx	lr
.func_end Func_96574

.thumb_func_start Func_965a8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x34
	mov	r5, r0
	bl	Func_92054
	mov	r6, r0
	cmp	r6, #0
	bne	.L965c6
	b	.L967be
.L965c6:
	bl	Func_958a8
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r0, =0x204084
	str	r3, [sp, #4]
	bl	_Func_b0840
	mov	r0, #0x1e
	bl	Func_30f8
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, #0xad
	bl	_Func_f9080
	mov	r1, #1
	mov	r0, r5
	bl	Func_925cc
	mov	r0, #0xaf
	bl	_Func_f9080
	mov	r1, #1
	mov	r0, r5
	bl	Func_925cc
	mov	r0, #0x14
	bl	Func_30f8
	mov	r0, #0x98
	bl	_Func_f9080
	mov	r1, #3
	mov	r2, #0xe
	mov	r0, r5
	bl	Func_92560
	mov	r0, #0x98
	bl	_Func_f9080
	mov	r1, #5
	mov	r2, #0x10
	mov	r0, r5
	bl	Func_92560
	mov	r0, #0x98
	bl	_Func_f9080
	mov	r1, #7
	mov	r2, #0x12
	mov	r0, r5
	bl	Func_92560
	mov	r0, #0x14
	bl	Func_30f8
	ldr	r3, [r6, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r9, r1
	add	r1, sp, #0x14
	mov	r3, #0
	str	r1, [sp]
	mov	r10, r3
	mov	r8, r6
	mov	r11, r1
	mov	r7, #7
.L96654:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, r9
	bl	_Func_c150
	ldr	r3, [sp]
	mov	r5, r0
	stmia	r3!, {r5}
	mov	r2, r3
	str	r2, [sp]
	cmp	r5, #0
	beq	.L966be
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r5
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =Func_96574
	str	r3, [r5, #0x6c]
	ldrh	r3, [r6, #6]
	mov	r1, #9
	strh	r3, [r5, #6]
	bl	_Func_c598
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c528
	mov	r1, r10
	ldr	r0, [r5, #0x50]
	bl	Func_96c48
	mov	r1, r8
	str	r1, [r5, #0x68]
	mov	r10, r0
	mov	r8, r5
.L966be:
	sub	r7, #1
	cmp	r7, #0
	bge	.L96654
	mov	r2, r10
	ldrb	r2, [r2, #0x1c]
	mov	r0, #0x99
	mov	r8, r2
	bl	_Func_f9080
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r7, #0xe
.L966da:
	ldr	r3, [r6, #0xc]
	mov	r1, #0x80
	lsl	r1, #12
	add	r3, r1
	str	r3, [r6, #0xc]
	mov	r0, #1
	sub	r7, #1
	bl	Func_30f8
	cmp	r7, #0
	bge	.L966da
	mov	r0, r6
	bl	_Func_c0f4
	mov	r5, r11
	mov	r7, #7
.L966fa:
	ldmia	r5!, {r0}
	sub	r7, #1
	bl	_Func_c0f4
	cmp	r7, #0
	bge	.L966fa
	mov	r2, r8
	cmp	r2, #0x60
	beq	.L96712
	mov	r0, r8
	bl	Func_3f3c
.L96712:
	mov	r0, #0xa
	bl	Func_30f8
	ldr	r5, =ewram_240
	mov	r3, #0xfa
	lsl	r3, #1
	add	r5, r3
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	ldr	r0, [r5]
	bl	Func_92adc
	mov	r0, #0x14
	bl	Func_30f8
	ldr	r0, [r5]
	bl	Func_92054
	mov	r1, #0x1c
	bl	_Func_c300
	mov	r0, #0x14
	bl	Func_30f8
	ldr	r3, [r6, #8]
	add	r5, sp, #8
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	Func_974d8
	ldr	r6, [sp, #4]
	mov	r7, #0x17
	add	r6, #0x58
.L9675e:
	ldr	r2, [r5]
	ldr	r3, [r5, #8]
	mov	r0, r6
	mov	r1, #0xf0
	bl	Func_9ba90
	mov	r0, r6
	ldr	r1, =Func_9641c
	bl	Func_9ba7c
	mov	r0, r6
	mov	r1, #7
	bl	Func_9ba70
	ldr	r0, [r6]
	mov	r1, #9
	bl	_Func_b684
	sub	r7, #1
	mov	r0, #1
	bl	Func_30f8
	add	r6, #0x48
	cmp	r7, #0
	bge	.L9675e
	mov	r0, #0x78
	bl	Func_30f8
	ldr	r2, [sp, #4]
	mov	r1, #2
	add	r2, #0x98
	mov	r7, #0x17
.L9679e:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L967a8
	strb	r1, [r2]
.L967a8:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.L9679e
	mov	r0, #0x32
	bl	Func_30f8
	bl	_Func_b0894
	bl	Func_958e4
.L967be:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_965a8

.thumb_func_start Func_967e4
	push	{lr}
	cmp	r0, #0
	bne	.L967f0
	bl	Func_96810
	b	.L9680c
.L967f0:
	cmp	r0, #1
	bne	.L967fa
	bl	Func_96960
	b	.L9680c
.L967fa:
	cmp	r0, #2
	bne	.L96804
	bl	Func_96ab0
	b	.L9680c
.L96804:
	cmp	r0, #3
	bne	.L9680c
	bl	Func_96af0
.L9680c:
	pop	{r0}
	bx	r0
.func_end Func_967e4

.thumb_func_start Func_96810
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r5, [r3]
	mov	r2, #0x1e
	ldrsh	r6, [r5, r2]
	sub	r3, #0x74
	ldr	r1, [r3]
	mov	r3, #0x1a
	ldrsh	r7, [r5, r3]
	sub	r3, r6, #1
	cmp	r3, #0xf
	bls	.L9682e
	b	.L9693e
.L9682e:
	ldr	r2, =.L96838
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L96838:
	.word	.L96878
	.word	.L9690c
	.word	.L968a2
	.word	.L9688a
	.word	.L96890
	.word	.L9689c
	.word	.L9687e
	.word	.L96928
	.word	.L968b4
	.word	.L9692e
	.word	.L96884
	.word	.L968a8
	.word	.L968ae
	.word	.L96896
	.word	.L96934
	.word	.L9693a
.L96878:
	bl	Func_9802c
	b	.L9693e
.L9687e:
	bl	Func_98954
	b	.L9693e
.L96884:
	bl	Func_9a294
	b	.L9693e
.L9688a:
	bl	Func_98cd8
	b	.L9693e
.L96890:
	bl	Func_999f0
	b	.L9693e
.L96896:
	bl	Func_9a8c4
	b	.L9693e
.L9689c:
	bl	Func_99160
	b	.L9693e
.L968a2:
	bl	Func_994d0
	b	.L9693e
.L968a8:
	bl	Func_985fc
	b	.L9693e
.L968ae:
	bl	Func_9ae64
	b	.L9693e
.L968b4:
	ldr	r2, =0x24a
	ldr	r5, =ewram_240
	add	r7, r5, r2
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L968ce
	bl	Func_9ade8
	ldr	r3, =0xffff
	strh	r3, [r7]
.L968ce:
	mov	r3, #0xfa
	lsl	r3, #1
	add	r3, r5
	ldr	r0, [r3]
	mov	r1, r6
	mov	r8, r3
	bl	Func_8df1c
	bl	Func_9ae3c
	mov	r5, r0
	bl	Func_8d5a4
	cmp	r0, #0
	beq	.L96906
	mov	r2, r8
	ldr	r0, [r2]
	mov	r1, r5
	bl	Func_970f8
	mov	r0, r5
	bl	Func_9ab98
	mov	r0, r5
	bl	Func_9ad90
	strh	r5, [r7]
	b	.L9693e
.L96906:
	bl	Func_9abb4
	b	.L9693e
.L9690c:
	ldr	r2, =0xcb8
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L9691c
	bl	Func_984c0
.L9691c:
	mov	r3, #0x18
	ldrsh	r0, [r5, r3]
	mov	r1, r7
	bl	Func_97540
	b	.L9693e
.L96928:
	bl	Func_983a0
	b	.L9693e
.L9692e:
	bl	Func_99838
	b	.L9693e
.L96934:
	bl	Func_9b208
	b	.L9693e
.L9693a:
	bl	Func_9b698
.L9693e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_96810

.thumb_func_start Func_96960
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f30
	ldr	r6, [r3]
	mov	r2, #0x1e
	ldrsh	r1, [r6, r2]
	sub	r3, #0x74
	mov	r2, r6
	ldr	r0, [r3]
	add	r2, #0x20
	mov	r3, #0x1a
	ldrsh	r5, [r6, r3]
	sub	r1, #1
	mov	r3, #0
	strb	r3, [r2]
	cmp	r1, #0xf
	bls	.L96982
	b	.L96a92
.L96982:
	ldr	r2, =.L9698c
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L9698c:
	.word	.L96a02
	.word	.L969cc
	.word	.L96a64
	.word	.L96a1a
	.word	.L96a22
	.word	.L96a2a
	.word	.L96a0a
	.word	.L96a7c
	.word	.L96a3a
	.word	.L96a82
	.word	.L96a12
	.word	.L96a32
	.word	.L96a74
	.word	.L96a6c
	.word	.L96a88
	.word	.L96a8e
.L969cc:
	ldr	r1, =0xcb8
	add	r3, r0, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L969dc
	bl	Func_984c0
.L969dc:
	ldr	r1, =0x24a
	ldr	r3, =ewram_240
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r1, #0x1a
	ldrsh	r3, [r6, r1]
	cmp	r2, r3
	beq	.L969f6
	ldr	r3, [r6, #0x14]
	mov	r2, #1
	add	r3, #0x5b
	strb	r2, [r3]
.L969f6:
	mov	r2, #0x18
	ldrsh	r0, [r6, r2]
	mov	r1, r5
	bl	Func_97540
	b	.L96a92
.L96a02:
	mov	r0, r5
	bl	Func_97c3c
	b	.L96a92
.L96a0a:
	mov	r0, r5
	bl	Func_98848
	b	.L96a92
.L96a12:
	mov	r0, r5
	bl	Func_99da4
	b	.L96a92
.L96a1a:
	mov	r0, r5
	bl	Func_98ccc
	b	.L96a92
.L96a22:
	mov	r0, r5
	bl	Func_999e4
	b	.L96a92
.L96a2a:
	mov	r0, r5
	bl	Func_99128
	b	.L96a92
.L96a32:
	mov	r0, r5
	bl	Func_985a8
	b	.L96a92
.L96a3a:
	ldr	r3, =ewram_240
	ldr	r1, =0x24a
	add	r6, r3, r1
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L96a54
	bl	Func_9ade8
	ldr	r3, =0xffff
	strh	r3, [r6]
.L96a54:
	mov	r0, r5
	bl	Func_9ad90
	strh	r5, [r6]
	mov	r0, r5
	bl	Func_9ab98
	b	.L96a92
.L96a64:
	mov	r0, r5
	bl	Func_994c0
	b	.L96a92
.L96a6c:
	mov	r0, r5
	bl	Func_9a8b8
	b	.L96a92
.L96a74:
	mov	r0, r5
	bl	Func_9ae58
	b	.L96a92
.L96a7c:
	bl	Func_983a0
	b	.L96a92
.L96a82:
	bl	Func_99838
	b	.L96a92
.L96a88:
	bl	Func_9b208
	b	.L96a92
.L96a8e:
	bl	Func_9b698
.L96a92:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_96960

.thumb_func_start Func_96ab0
	push	{r5, lr}
	ldr	r3, =iwram_1f30
	ldr	r5, [r3]
	mov	r1, #0x1e
	ldrsh	r3, [r5, r1]
	cmp	r3, #2
	bne	.L96adc
	bl	Func_97608
	ldr	r2, =0x24a
	ldr	r3, =ewram_240
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r1, #0x1a
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	beq	.L96adc
	ldr	r3, [r5, #0x14]
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
.L96adc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_96ab0

.thumb_func_start Func_96af0
	push	{lr}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r2, #0x1e
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	beq	.L96b14
	cmp	r3, #0xa
	bhi	.L96b08
	cmp	r3, #8
	beq	.L96b0e
	b	.L96b1e
.L96b08:
	cmp	r3, #0x10
	beq	.L96b1a
	b	.L96b1e
.L96b0e:
	bl	Func_984c0
	b	.L96b1e
.L96b14:
	bl	Func_99738
	b	.L96b1e
.L96b1a:
	bl	Func_9b648
.L96b1e:
	pop	{r0}
	bx	r0
.func_end Func_96af0

.thumb_func_start Func_96b28
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r2
	mov	r0, r1
	cmp	r5, #0
	beq	.L96b7c
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L96b60
	mov	r2, #0x80
	lsl	r2, #9
	cmp	r3, r2
	bge	.L96b5a
	bl	Func_916b0
	ldr	r0, [r5, #8]
	bl	Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	Func_92f84
	bl	Func_91750
	b	.L96b60
.L96b5a:
	mov	r1, r6
	bl	_call_via_r3
.L96b60:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L96b7c
	bl	Func_916b0
	ldr	r0, =0x927
	mov	r1, #1
	bl	_Func_1776c
	bl	Func_91750
.L96b7c:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_96b28

.thumb_func_start Func_96b88
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	cmp	r2, #1
	bne	.L96bda
	ldr	r0, [r0, #0x50]
	mov	r8, r0
	cmp	r0, #0
	beq	.L96bda
	ldrb	r3, [r0, #0x1d]
	and	r3, r2
	cmp	r3, #0
	bne	.L96bda
	mov	r3, r8
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L96bd2
	ldr	r1, =iwram_1e40
	mov	r7, r8
	mov	r10, r1
	add	r7, #0x28
	mov	r6, r3
.L96bbe:
	mov	r2, r10
	ldr	r0, [r2]
	mov	r1, #6
	bl	Func_b50_from_thumb
	ldmia	r7!, {r5}
	sub	r6, #1
	strb	r0, [r5, #5]
	cmp	r6, #0
	bne	.L96bbe
.L96bd2:
	mov	r2, r8
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L96bda:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_96b88

.thumb_func_start Func_96bec
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	mov	r0, r1
	mov	r1, r2
	cmp	r6, #0
	beq	.L96c1a
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r2, r5
	str	r3, [r5, #8]
	bl	Func_447c
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	mov	r0, r6
	bl	_Func_d14c
.L96c1a:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_96bec

.thumb_func_start Func_96c24
	push	{lr}
	mov	r2, #0x80
	ldr	r1, =iwram_1810
	mov	r0, #0
	lsl	r2, #2
.L96c2e:
	ldrb	r3, [r1]
	add	r1, #1
	cmp	r3, #0xff
	bne	.L96c38
	add	r0, #1
.L96c38:
	sub	r2, #1
	cmp	r2, #0
	bne	.L96c2e
	pop	{r1}
	bx	r1
.func_end Func_96c24

.thumb_func_start Func_96c48
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0
	cmp	r5, #0
	beq	.L96c78
	cmp	r6, #0
	bne	.L96c62
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	b	.L96c76
.L96c62:
	ldrb	r0, [r5, #0x1c]
	bl	Func_3f3c
	ldrb	r3, [r6, #0x1c]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	mov	r5, r6
.L96c76:
	mov	r0, r5
.L96c78:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_96c48

.thumb_func_start Func_96c80
	push	{r5, r6, lr}
	ldr	r4, =iwram_1f30
	ldr	r6, [r4]
	bl	_Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L96cce
	mov	r3, r5
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L96ca2
	bl	_Func_c0f4
	mov	r0, #0
	b	.L96cd0
.L96ca2:
	ldr	r3, [r6, #0x10]
	ldr	r3, [r3, #0x14]
	mov	r2, r5
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #4
	strb	r3, [r2]
	sub	r2, #0x32
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0x11
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #0
	bl	_Func_c528
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c300
.L96cce:
	mov	r0, r5
.L96cd0:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_96c80

	.section .rodata

.L9ed84:
	.incrom 0x9ed84, 0x9ef84
.L9ef84:
	.incrom 0x9ef84, 0x9f024
.L9f024:
	.incrom 0x9f024, 0x9f0a4
.L9f0a4:
	.incrom 0x9f0a4, 0x9f0b0
