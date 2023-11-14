	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_3650
	push	{r5, lr}
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
	ldr	r3, =iwram_1cb0
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L367e
	ldr	r0, =ewram_2220
	ldr	r1, =ewram_2020
	ldr	r5, =iwram_1f64
	bl	Func_6088
	strh	r0, [r5]
	bl	Func_655c
.L367e:
	bl	_Func_f91e8
	bl	Func_3adc
	ldr	r5, =iwram_1e44
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L36bc
	ldr	r3, =iwram_1d18
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L36a8
	ldr	r2, =iwram_1e50
	mov	r1, #0xe0
	add	r2, #0xd0
	ldr	r0, [r2]
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000100
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L36a8:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_1ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_3a7c
	mov	r3, #0
	strb	r3, [r5]
.L36bc:
	ldr	r1, =iwram_1cfc
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L36cc
	mov	r3, #0
	str	r3, [r1]
	bl	_call_via_r2
.L36cc:
	mov	r0, #0x90
	lsl	r0, #3
	bl	Func_4420
	ldr	r3, =REG_KEYINPUT
	ldrh	r2, [r3]
	ldr	r3, .L3708	@ 0x3ff
	ldr	r4, =iwram_1ae8
	mov	r0, r3
	eor	r0, r2
	ldr	r3, [r4]
	mov	r2, r0
	bic	r2, r3
	ldr	r3, =iwram_1c94
	ldr	r1, =iwram_1af8
	str	r2, [r3]
	ldr	r3, [r1]
	orr	r3, r2
	str	r3, [r1]
	str	r0, [r4]
	cmp	r0, #0
	bne	.L3768
	ldr	r3, =iwram_1b00
	mov	r2, #0x13
	str	r2, [r3]
	ldr	r3, =iwram_1b04
	ldr	r1, =iwram_1d0c
	str	r0, [r3]
	b	.L3792

	.align	2, 0
.L3708:
	.word	0x3ff
	.pool

.L3768:
	ldr	r1, =iwram_1d0c
	ldr	r2, =0xffff
	ldr	r3, [r1]
	eor	r3, r2
	ldr	r2, [r4]
	and	r2, r3
	cmp	r2, #0
	beq	.L3786
	ldr	r3, =iwram_1b00
	mov	r2, #1
	neg	r2, r2
	str	r2, [r3]
	ldr	r3, =iwram_1b04
	str	r0, [r3]
	b	.L3792
.L3786:
	ldr	r2, =iwram_1b00
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L3792
	sub	r3, #1
	str	r3, [r2]
.L3792:
	str	r0, [r1]
	ldr	r2, =iwram_1800
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	ldr	r2, =iwram_1ccc
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r2, =iwram_1d28
	ldr	r3, .L37b4	@ 1
	strh	r3, [r2]
	bl	Func_6fc
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L37b4:
	.word 1
.func_end Func_3650

.thumb_func_start Func_37d4
	push	{lr}
	cmp	r0, #4
	bls	.L37dc
	mov	r0, #0
.L37dc:
	mov	r3, #0x98
	mov	r2, r0
	mul	r2, r3
	ldr	r0, =Func_404
	ldr	r3, =REG_DMA3SAD
	add	r0, r2, r0
	ldr	r1, =Label_1348
	ldr	r2, =0x84000026
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Func_37d4

.thumb_func_start Func_3808
	bx	lr
.func_end Func_3808

.thumb_func_start Func_380c
	bx	lr
.func_end Func_380c

.thumb_func_start Func_3810
	push	{lr}
	ldr	r3, =ewram_2000
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L3826
	ldr	r2, =0xc3ff
	ldr	r3, =REG_KEYCNT
	strh	r2, [r3]
	ldr	r2, =iwram_1cb8
	mov	r3, #1
	strb	r3, [r2]
.L3826:
	pop	{r0}
	bx	r0
.func_end Func_3810

.thumb_func_start Func_383c
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L386a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r3]
.L386a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_383c

.thumb_func_start Func_387c
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L38aa
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L38aa:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_387c

.thumb_func_start Func_38bc
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L38ea
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xc0
	lsl	r2, #10
	str	r2, [r3]
.L38ea:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_38bc

.thumb_func_start Func_38fc
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L392a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xa0
	lsl	r2, #11
	str	r2, [r3]
.L392a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_38fc

.thumb_func_start Func_393c
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L396a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xc0
	lsl	r2, #11
	str	r2, [r3]
.L396a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_393c

.thumb_func_start Func_397c
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L39aa
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xe0
	lsl	r2, #11
	str	r2, [r3]
.L39aa:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_397c

.thumb_func_start Func_39bc
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L39ea
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0x90
	lsl	r2, #12
	str	r2, [r3]
.L39ea:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_39bc

.thumb_func_start Func_39fc
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L3a2a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xa0
	lsl	r2, #12
	str	r2, [r3]
.L3a2a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_39fc

.thumb_func_start Func_3a3c
	push	{r5, r6, lr}
	ldr	r4, =ewram_2090
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L3a6a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0xb0
	lsl	r2, #12
	str	r2, [r3]
.L3a6a:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_3a3c

.thumb_func_start Func_3a7c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r6, =ewram_2090
	ldrh	r5, [r6]
	mov	r7, sp
	cmp	r5, #0
	beq	.L3abc
	ldr	r2, =0x68
	mov	r1, #0
	lsr	r2, #2
	lsl	r3, r2, #2
	mov	r10, r1
	mov	r4, #0x84
	mov	r1, sp
	sub	r1, r3
	lsl	r4, #24
	mov	r8, sp
	ldr	r3, =REG_DMA3SAD
	mov	sp, r1
	ldr	r0, =Func_2cf4
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	mov	r1, r5
	bl	_call_via_sp
	mov	r3, r10
	strh	r3, [r6]
	mov	sp, r8
.L3abc:
	mov	sp, r7
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_3a7c
