	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_f6008
	push	{lr}
	ldr	r3, =0x40
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, =ewram_240
	ldr	r2, =iwram_1cb4
	ldr	r3, [r3, #4]
	mov	r0, #9
	str	r3, [r2]
	bl	_Func_f9080
	bl	Func_f7460
	mov	r0, #0
	b	.Lf6034

	.pool_aligned

.Lf6034:
	pop	{r1}
	bx	r1
.func_end Func_f6008

.thumb_func_start Func_f6038
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	cmp	r3, #0
	ble	.Lf6094
	mov	r1, #0x1f
	mov	r8, r1
	mov	r2, #0xf8
	mov	r1, #0xf8
	lsl	r2, #2
	lsl	r1, #7
	mov	r14, r2
	mov	r12, r1
	mov	r0, r3
.Lf605a:
	ldrh	r4, [r7]
	mov	r2, r8
	mov	r3, r4
	and	r3, r2
	mov	r1, r14
	mov	r2, r4
	and	r2, r1
	mul	r3, r5
	mov	r1, r12
	mul	r2, r5
	and	r1, r4
	mul	r1, r5
	lsr	r4, r3, #16
	mov	r3, r8
	and	r4, r3
	lsr	r2, #16
	mov	r3, r14
	and	r2, r3
	orr	r4, r2
	lsr	r1, #16
	mov	r2, r12
	and	r1, r2
	orr	r4, r1
	sub	r0, #1
	strh	r4, [r6]
	add	r7, #2
	add	r6, #2
	cmp	r0, #0
	bne	.Lf605a
.Lf6094:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f6038

.thumb_func_start Func_f60a0
	push	{r5, lr}
	ldr	r0, =iwram_1eec
	ldr	r2, =0x7824
	ldr	r5, [r0]
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lf6116
	sub	r2, #0xa4
	add	r3, r5, r2
	ldr	r3, [r3]
	ldr	r4, [r0, #4]
	cmp	r3, #1
	beq	.Lf60c2
	cmp	r3, #2
	beq	.Lf60e2
	b	.Lf6106
.Lf60c2:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r1, =0x6003500
	ldr	r2, =0x84002000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0x7784
	mov	r1, #0x80
	add	r3, r5, r2
	ldr	r2, [r3]
	mov	r0, r4
	ldr	r3, =Func_8d8
	lsl	r1, #8
	bl	_call_via_r3
	b	.Lf6106
.Lf60e2:
	ldr	r2, =0x7784
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #0x32
	bne	.Lf60fa
	mov	r2, #0x80
	ldr	r1, =0x6003500
	lsl	r2, #8
	mov	r0, r4
	bl	Func_567c
	b	.Lf6106
.Lf60fa:
	mov	r2, #0x80
	ldr	r1, =0x6003500
	lsl	r2, #8
	mov	r0, r4
	bl	Func_562c
.Lf6106:
	ldr	r3, =0x7824
	add	r2, r5, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, =0x7820
	add	r2, r5, r3
	mov	r3, #1
	b	.Lf611e
.Lf6116:
	ldr	r3, =0x7820
	add	r2, r5, r3
	ldr	r3, [r2]
	add	r3, #1
.Lf611e:
	str	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_f60a0

.thumb_func_start Func_f6148
	push	{r5, r6, r7, lr}
	ldr	r5, =0x5000140
	ldr	r7, .Lf617c	@ 0x1f
	mov	r6, #0
.Lf6150:
	ldrh	r2, [r5]
	lsl	r3, r2, #16
	lsr	r0, r3, #26
	and	r0, r7
	lsr	r1, r3, #21
	mov	r4, #0x1f
	and	r1, r7
	and	r4, r2
	sub	r0, #1
	sub	r1, #1
	sub	r4, #1
	cmp	r0, #0
	bge	.Lf616c
	mov	r0, #0
.Lf616c:
	cmp	r1, #0
	bge	.Lf6172
	mov	r1, #0
.Lf6172:
	cmp	r4, #0
	bge	.Lf6184
	mov	r4, #0
	b	.Lf6184

	.align	2, 0
.Lf617c:
	.word	0x1f
	.pool

.Lf6184:
	lsl	r3, r0, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r4
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	cmp	r6, #0x10
	bne	.Lf6150
	ldr	r5, =0x5000202
	ldr	r7, .Lf61c8	@ 0x1f
	mov	r6, #0
.Lf619c:
	ldrh	r2, [r5]
	lsl	r3, r2, #16
	lsr	r0, r3, #26
	and	r0, r7
	lsr	r1, r3, #21
	mov	r4, #0x1f
	and	r1, r7
	and	r4, r2
	sub	r0, #1
	sub	r1, #1
	sub	r4, #1
	cmp	r0, #0
	bge	.Lf61b8
	mov	r0, #0
.Lf61b8:
	cmp	r1, #0
	bge	.Lf61be
	mov	r1, #0
.Lf61be:
	cmp	r4, #0
	bge	.Lf61d0
	mov	r4, #0
	b	.Lf61d0

	.align	2, 0
.Lf61c8:
	.word	0x1f
	.pool

.Lf61d0:
	lsl	r3, r0, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r4
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	cmp	r6, #0xef
	bne	.Lf619c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f6148

.thumb_func_start Func_f61e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0xa0
	lsl	r1, #19
	sub	sp, #0x80
	mov	r8, r1
	bl	Func_2f40
	ldr	r3, =REG_DMA3SAD
	mov	r1, sp
	ldr	r2, =0x84000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0
	mov	r3, #0x1f
	ldr	r7, .Lf6218	@ 0x1f
	mov	r14, r2
	mov	r10, r3
	mov	r12, sp
	mov	r6, #0
	b	.Lf6224

	.align	2, 0
.Lf6218:
	.word	0x1f
	.pool

.Lf6224:
	mov	r1, r8
	ldrh	r3, [r1]
	mov	r5, r10
	mov	r1, r12
	and	r5, r3
	lsl	r3, #16
	lsr	r2, r3, #21
	lsr	r0, r3, #26
	ldrh	r3, [r6, r1]
	mov	r1, r10
	and	r1, r3
	lsl	r3, #16
	lsr	r4, r3, #21
	lsr	r3, #26
	and	r2, r7
	and	r0, r7
	and	r4, r7
	and	r3, r7
	cmp	r5, r1
	bge	.Lf6250
	add	r5, #1
	b	.Lf6256
.Lf6250:
	cmp	r5, r1
	ble	.Lf6256
	sub	r5, #1
.Lf6256:
	cmp	r2, r4
	bge	.Lf625e
	add	r2, #1
	b	.Lf6264
.Lf625e:
	cmp	r2, r4
	ble	.Lf6264
	sub	r2, #1
.Lf6264:
	cmp	r0, r3
	bge	.Lf626c
	add	r0, #1
	b	.Lf6272
.Lf626c:
	cmp	r0, r3
	ble	.Lf6272
	sub	r0, #1
.Lf6272:
	lsl	r2, #5
	lsl	r3, r0, #10
	orr	r3, r2
	orr	r3, r5
	mov	r2, r12
	strh	r3, [r6, r2]
	mov	r3, #1
	add	r14, r3
	mov	r1, #2
	mov	r2, r14
	add	r6, #2
	add	r8, r1
	cmp	r2, #0x40
	bne	.Lf6224
	mov	r0, sp
	ldr	r3, =REG_DMA3SAD
	add	r0, #2
	ldr	r1, =0x5000002
	ldr	r2, =0x8000003f
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #0x80
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f61e8

.thumb_func_start Func_f62b8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r4, r3
	ldr	r3, =iwram_1ef0
	ldr	r3, [r3]
	mov	r7, r1
	sub	r6, r2, r0
	mov	r1, #0x80
	mov	r10, r2
	sub	sp, #4
	mov	r8, r0
	sub	r5, r4, r7
	mov	r9, r1
	mov	r11, r3
	mov	r2, r6
	cmp	r6, #0
	bge	.Lf62e6
	neg	r2, r6
.Lf62e6:
	mov	r3, r5
	cmp	r5, #0
	bge	.Lf62ee
	neg	r3, r5
.Lf62ee:
	cmp	r2, r3
	bge	.Lf6396
	cmp	r5, #0
	bge	.Lf630a
	mov	r12, r8
	mov	r8, r10
	mov	r10, r12
	mov	r12, r7
	mov	r2, r10
	mov	r7, r4
	mov	r3, r8
	mov	r4, r12
	sub	r6, r2, r3
	sub	r5, r4, r7
.Lf630a:
	lsl	r0, r6, #8
	cmp	r6, #0
	bge	.Lf6318
	mov	r1, r8
	mov	r2, r10
	sub	r3, r1, r2
	lsl	r0, r3, #8
.Lf6318:
	cmp	r5, #0
	blt	.Lf632a
	mov	r1, r5
	str	r4, [sp]
	bl	Func_af0_from_thumb
	mov	r12, r0
	ldr	r4, [sp]
	b	.Lf6336
.Lf632a:
	sub	r1, r7, r4
	str	r4, [sp]
	bl	Func_af0_from_thumb
	ldr	r4, [sp]
	mov	r12, r0
.Lf6336:
	mov	r0, r7
	mov	r1, r8
	cmp	r0, r4
	beq	.Lf6426
	mov	r3, #0x80
	ldr	r7, =0xfffffeff
	lsl	r3, #1
	mov	r5, #7
	mov	r14, r3
	mov	r8, r7
.Lf634a:
	lsr	r2, r0, #3
	lsr	r3, r1, #3
	lsl	r2, #5
	add	r2, r3
	mov	r3, r0
	and	r3, r5
	lsl	r2, #3
	add	r2, r3
	mov	r3, r1
	and	r3, r5
	lsl	r2, #3
	mov	r7, r11
	add	r2, r3
	ldrb	r3, [r7, r2]
	ldr	r7, [sp, #0x24]
	cmp	r3, r7
	bge	.Lf6370
	mov	r3, r11
	strb	r7, [r3, r2]
.Lf6370:
	add	r9, r12
	mov	r3, r9
	mov	r7, r14
	and	r3, r7
	cmp	r3, #0
	beq	.Lf638e
	cmp	r6, #0
	ble	.Lf6384
	add	r1, #1
	b	.Lf6386
.Lf6384:
	sub	r1, #1
.Lf6386:
	mov	r2, r9
	mov	r3, r8
	and	r2, r3
	mov	r9, r2
.Lf638e:
	add	r0, #1
	cmp	r0, r4
	bne	.Lf634a
	b	.Lf6426
.Lf6396:
	cmp	r6, #0
	bge	.Lf63ae
	mov	r12, r8
	mov	r8, r10
	mov	r10, r12
	mov	r12, r7
	mov	r1, r10
	mov	r7, r4
	mov	r2, r8
	mov	r4, r12
	sub	r6, r1, r2
	sub	r5, r4, r7
.Lf63ae:
	lsl	r0, r5, #8
	cmp	r5, #0
	bge	.Lf63b8
	sub	r3, r7, r4
	lsl	r0, r3, #8
.Lf63b8:
	cmp	r6, #0
	blt	.Lf63c0
	mov	r1, r6
	b	.Lf63c6
.Lf63c0:
	mov	r3, r8
	mov	r6, r10
	sub	r1, r3, r6
.Lf63c6:
	bl	Func_af0_from_thumb
	mov	r12, r0
	mov	r0, r8
	mov	r1, r7
	cmp	r0, r10
	beq	.Lf6426
	ldr	r2, =0xfffffeff
	mov	r7, #0x80
	mov	r4, #7
	lsl	r7, #1
	mov	r14, r2
.Lf63de:
	lsr	r2, r1, #3
	lsr	r3, r0, #3
	lsl	r2, #5
	add	r2, r3
	mov	r3, r1
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	mov	r3, r0
	and	r3, r4
	lsl	r2, #3
	mov	r6, r11
	add	r2, r3
	ldrb	r3, [r6, r2]
	ldr	r6, [sp, #0x24]
	cmp	r3, r6
	bge	.Lf6404
	mov	r3, r11
	strb	r6, [r3, r2]
.Lf6404:
	add	r9, r12
	mov	r3, r9
	and	r3, r7
	cmp	r3, #0
	beq	.Lf6420
	cmp	r5, #0
	ble	.Lf6416
	add	r1, #1
	b	.Lf6418
.Lf6416:
	sub	r1, #1
.Lf6418:
	mov	r6, r9
	mov	r2, r14
	and	r6, r2
	mov	r9, r6
.Lf6420:
	add	r0, #1
	cmp	r0, r10
	bne	.Lf63de
.Lf6426:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f62b8

.thumb_func_start Func_f6440
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f04
	ldr	r7, [r3]
	sub	r3, #0x18
	ldr	r3, [r3]
	mov	r1, #0x80
	sub	sp, #0x28
	lsl	r1, #3
	mov	r0, #0
	str	r3, [sp, #0x24]
	str	r1, [sp, #0x1c]
	str	r0, [sp, #0x20]
	bl	Func_4458
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldrh	r2, [r3, #0xa]
	mov	r2, #0x9b
	lsl	r2, #3
	add	r0, r7, r2
	ldr	r1, =REG_BLDY
	ldr	r2, =0xa2600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1ae8
	mov	r5, r7
	ldr	r4, [r3]
	add	r5, #0x9c
	ldrh	r0, [r5]
	lsl	r4, #16
	ldr	r1, [r3]
	mov	r6, r7
	lsr	r3, r4, #16
	bic	r3, r0
	add	r6, #0xa0
	strh	r3, [r6]
	mov	r3, #0x9e
	add	r3, r7
	mov	r2, #0xf0
	mov	r8, r3
	and	r1, r2
	mov	r0, r8
	strh	r1, [r0]
	ldrh	r3, [r5]
	and	r2, r3
	cmp	r2, r1
	bne	.Lf650c
	mov	r1, r7
	add	r1, #0xa2
	ldrh	r2, [r1]
	mov	r3, r2
	cmp	r3, #0xc
	bls	.Lf64ca
	mov	r3, #0xc
	strh	r3, [r1]
	ldr	r2, .Lf64e8	@ 0xc
.Lf64ca:
	mov	r3, r2
	cmp	r3, #0
	bne	.Lf64d6
	mov	r3, #4
	strh	r3, [r1]
	b	.Lf6514
.Lf64d6:
	ldr	r0, =0xffff
	add	r3, r2, r0
	strh	r3, [r1]
	add	r1, sp, #0x20
	ldrh	r1, [r1]
	mov	r2, r8
	strh	r1, [r2]
	b	.Lf6514

	.align	2, 0
.Lf64e8:
	.word	0xc
	.pool

.Lf650c:
	mov	r2, r7
	add	r2, #0xa2
	mov	r3, #0xc
	strh	r3, [r2]
.Lf6514:
	lsr	r3, r4, #16
	strh	r3, [r5]
	ldr	r3, =iwram_1d20
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #0
	beq	.Lf6526
	bl	.Lf6dc2
.Lf6526:
	mov	r2, r7
	add	r2, #0x8c
	str	r2, [sp, #0xc]
	str	r2, [sp, #0x18]
	ldr	r5, [r2]
	cmp	r5, #0
	beq	.Lf6536
	b	.Lf6670
.Lf6536:
	mov	r0, #0xe4
	bl	_Func_78b60
	mov	r3, #0x98
	add	r3, r7
	ldr	r1, =0x4cc
	mov	r9, r0
	ldr	r0, [r3]
	mov	r11, r3
	mov	r4, r9
	add	r5, r7, r1
	mov	r3, r10
	sub	r0, r4, r0
	ldr	r2, [r5]
	mov	r1, #2
	str	r3, [sp]
	mov	r3, #0x40
	bl	_Func_1ea08
	mov	r4, r11
	mov	r3, #8
	ldr	r2, [r5]
	ldr	r0, [r4]
	mov	r1, #2
	str	r3, [sp]
	mov	r3, #0x40
	bl	_Func_1ea08
	ldrh	r2, [r6]
	mov	r3, #2
	and	r3, r2
	mov	r8, r11
	cmp	r3, #0
	beq	.Lf65a4
	ldr	r0, [sp, #0xc]
	ldr	r2, =ewram_24c
	mov	r1, #0x90
	mov	r3, #0xa
	lsl	r1, #1
	str	r3, [r0]
	add	r2, r1
	mov	r3, #0xfe
	strb	r3, [r2]
	mov	r2, #0x99
	lsl	r2, #3
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r1, #1
	bl	_Func_16418
	mov	r3, #0x94
	add	r3, r7
	mov	r8, r3
	bl	.Lf6e26
.Lf65a4:
	mov	r3, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lf65ca
	mov	r4, r11
	ldr	r3, [r4]
	cmp	r3, #3
	bgt	.Lf65c4
	cmp	r9, r3
	ble	.Lf65c4
	add	r3, #1
	str	r3, [r4]
	mov	r0, #0x6f
	bl	_Func_f9080
	b	.Lf65ca
.Lf65c4:
	mov	r0, #0x71
	bl	_Func_f9080
.Lf65ca:
	ldrh	r2, [r6]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf65fa
	mov	r0, r8
	ldr	r3, [r0]
	cmp	r3, #1
	ble	.Lf65f4
	sub	r3, #1
	str	r3, [r0]
	mov	r0, #0x6f
	bl	_Func_f9080
	b	.Lf65fa

	.pool_aligned

.Lf65f4:
	mov	r0, #0x71
	bl	_Func_f9080
.Lf65fa:
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lf6634	@ 0x3fd0
	strh	r3, [r2]
	ldr	r3, .Lf6638	@ 0x10
	add	r2, #2
	strh	r3, [r2]
	mov	r1, #1
	ldrh	r2, [r6]
	mov	r3, r1
	and	r3, r2
	cmp	r3, #0
	bne	.Lf6614
	b	.Lf6dd2
.Lf6614:
	ldr	r2, [sp, #0x18]
	str	r1, [r2]
	ldr	r3, [sp, #0x24]
	ldr	r4, =0x778c
	mov	r0, #0x99
	add	r2, r3, r4
	lsl	r0, #3
	mov	r3, #0
	str	r3, [r2]
	add	r3, r7, r0
	ldr	r0, [r3]
	bl	_Func_16418
	mov	r1, r8
	ldr	r3, [r1]
	b	.Lf6644

	.align	2, 0
.Lf6634:
	.word	0x3fd0
.Lf6638:
	.word	0x10
	.pool

.Lf6644:
	mov	r5, #0
	cmp	r3, #0
	beq	.Lf665a
.Lf664a:
	mov	r0, #0xe4
	bl	_Func_789dc
	mov	r2, r8
	ldr	r3, [r2]
	add	r5, #1
	cmp	r5, r3
	bne	.Lf664a
.Lf665a:
	ldr	r4, =0x4cc
	add	r3, r7, r4
	ldr	r0, [r3]
	mov	r1, #1
	bl	_Func_16418
	mov	r0, #0x98
	lsl	r0, #1
	bl	_Func_f9080
	b	.Lf6dd2
.Lf6670:
	cmp	r5, #5
	beq	.Lf6676
	b	.Lf691c
.Lf6676:
	mov	r4, r7
	mov	r1, #0
	add	r4, #0xa8
	mov	r9, r1
	mov	r1, r4
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	ldrb	r3, [r7, #0x19]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lf66a0
	mov	r2, r7
	add	r2, #0x19
.Lf6692:
	add	r5, #1
	cmp	r5, #5
	beq	.Lf66a4
	add	r2, #0x1c
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.Lf6692
.Lf66a0:
	cmp	r5, #5
	bne	.Lf66a8
.Lf66a4:
	mov	r2, #1
	mov	r9, r2
.Lf66a8:
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf675a
	mov	r2, #0
	str	r2, [r1]
	ldr	r4, [sp, #0x24]
	ldr	r0, =0x778c
	add	r3, r4, r0
	str	r2, [r3]
	mov	r1, #0x94
	add	r1, r7
	ldr	r3, [r1]
	mov	r8, r1
	mov	r10, r8
	cmp	r3, #4
	bne	.Lf66f4
	mov	r3, r7
	add	r3, #0x90
	str	r2, [r1]
	str	r2, [r3]
	ldr	r3, [sp, #0x18]
	str	r2, [r3]
	mov	r2, r7
	mov	r6, #0
	mov	r0, #0
	mov	r1, #0xff
	add	r2, #0x18
.Lf66e2:
	ldrb	r3, [r2, #2]
	add	r6, #1
	orr	r3, r1
	strb	r0, [r2, #1]
	strb	r3, [r2, #2]
	add	r2, #0x1c
	cmp	r6, #5
	bne	.Lf66e2
	b	.Lf67ac
.Lf66f4:
	mov	r5, r7
	add	r5, #0x90
	ldr	r3, [r5]
	cmp	r3, #4
	bgt	.Lf671a
	ldr	r0, =0x131
	bl	_Func_f9080
	ldr	r2, [r5]
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #2
	add	r3, #0x18
	add	r3, r7, r3
	ldrb	r2, [r3, #1]
	mov	r1, #1
	eor	r2, r1
	strb	r2, [r3, #1]
	b	.Lf67ac
.Lf671a:
	mov	r4, r9
	cmp	r4, #0
	bne	.Lf6752
	mov	r0, #0x98
	lsl	r0, #1
	bl	_Func_f9080
	ldr	r0, [sp, #0x18]
	mov	r1, r9
	mov	r3, #1
	mov	r2, r7
	str	r3, [r0]
	mov	r6, #0
	str	r1, [r5]
	add	r2, #0x18
	mov	r1, #0xff
.Lf673a:
	ldrb	r3, [r2, #2]
	add	r6, #1
	orr	r3, r1
	strb	r3, [r2, #2]
	add	r2, #0x1c
	cmp	r6, #5
	bne	.Lf673a
	mov	r2, r10
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	b	.Lf67ac
.Lf6752:
	mov	r0, #0x71
	bl	_Func_f9080
	b	.Lf67ac
.Lf675a:
	mov	r3, r8
	ldrh	r2, [r3]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lf6780
	mov	r5, r7
	add	r5, #0x90
	ldr	r0, [r5]
	mov	r1, #6
	add	r0, #1
	bl	Func_b1c_from_thumb
	str	r0, [r5]
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r4, r8
	ldrh	r2, [r4]
.Lf6780:
	mov	r3, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lf67a6
	mov	r5, r7
	add	r5, #0x90
	ldr	r0, [r5]
	mov	r1, #6
	add	r0, #5
	bl	Func_b1c_from_thumb
	str	r0, [r5]
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #0x94
	add	r0, r7
	mov	r8, r0
	b	.Lf67ac
.Lf67a6:
	mov	r1, #0x94
	add	r1, r7
	mov	r8, r1
.Lf67ac:
	ldr	r2, [sp, #0x18]
	ldr	r2, [r2]
	mov	r10, r2
	cmp	r2, #5
	beq	.Lf67b8
	b	.Lf6906
.Lf67b8:
	mov	r3, r7
	add	r3, #0x90
	ldr	r2, [r3]
	cmp	r2, #5
	bne	.Lf6870
	mov	r3, r9
	cmp	r3, #0
	beq	.Lf682c
	mov	r4, #0xc3
	lsl	r4, #3
	add	r6, r7, r4
	ldr	r2, [r6]
	sub	r3, r2, #1
	cmp	r3, #1
	bls	.Lf6808
	mov	r0, #0x99
	lsl	r0, #3
	add	r5, r7, r0
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Func_16418
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x13
	mov	r3, #4
	mov	r0, #0xb
	bl	_Func_162d4
	mov	r1, r0
	str	r1, [r5]
	mov	r3, #0
	ldr	r0, =0x912
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r1, #0x98
	mov	r3, #1
	b	.Lf6868
.Lf6808:
	cmp	r2, #1
	beq	.Lf680e
	b	.Lf6dda
.Lf680e:
	mov	r2, #0x99
	lsl	r2, #3
	add	r3, r7, r2
	ldr	r1, [r3]
	ldr	r0, =0x913
	mov	r3, #8
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r3, #2
	str	r3, [r6]
	mov	r3, #0x98
	add	r3, r7
	mov	r11, r3
	b	.Lf6e26
.Lf682c:
	mov	r4, #0xc3
	lsl	r4, #3
	add	r6, r7, r4
	ldr	r3, [r6]
	cmp	r3, #3
	beq	.Lf6864
	mov	r0, #0x99
	lsl	r0, #3
	add	r5, r7, r0
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Func_16418
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0xe
	mov	r3, #3
	mov	r0, #0x10
	bl	_Func_162d4
	mov	r1, r0
	str	r1, [r5]
	ldr	r0, =0x90f
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
.Lf6864:
	mov	r1, #0x98
	mov	r3, #3
.Lf6868:
	add	r1, r7
	str	r3, [r6]
	mov	r11, r1
	b	.Lf6e26
.Lf6870:
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #2
	add	r3, r7
	ldrb	r3, [r3, #0x19]
	cmp	r3, #0
	bne	.Lf68c2
	mov	r2, #0xc3
	lsl	r2, #3
	add	r6, r7, r2
	ldr	r3, [r6]
	cmp	r3, #4
	beq	.Lf68b6
	mov	r3, #0x99
	lsl	r3, #3
	add	r5, r7, r3
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Func_16418
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x17
	bl	_Func_162d4
	mov	r1, r0
	str	r1, [r5]
	ldr	r0, =0x90d
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
.Lf68b6:
	mov	r4, #0x98
	mov	r3, #4
	add	r4, r7
	str	r3, [r6]
	mov	r11, r4
	b	.Lf6e26
.Lf68c2:
	mov	r0, #0xc3
	lsl	r0, #3
	add	r6, r7, r0
	ldr	r3, [r6]
	cmp	r3, #5
	beq	.Lf68fa
	mov	r1, #0x99
	lsl	r1, #3
	add	r5, r7, r1
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Func_16418
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x17
	bl	_Func_162d4
	mov	r1, r0
	str	r1, [r5]
	ldr	r0, =0x90e
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
.Lf68fa:
	mov	r3, #0x98
	mov	r2, r10
	add	r3, r7
	str	r2, [r6]
	mov	r11, r3
	b	.Lf6e26
.Lf6906:
	mov	r4, #0x99
	lsl	r4, #3
	add	r3, r7, r4
	ldr	r0, [r3]
	mov	r1, #1
	bl	_Func_16418
	mov	r0, #0x98
	add	r0, r7
	mov	r11, r0
	b	.Lf6e26
.Lf691c:
	cmp	r5, #2
	bne	.Lf6998
	mov	r4, r7
	add	r4, #0xa8
	ldr	r3, [r4]
	mov	r1, #0
	add	r3, #1
	str	r3, [r4]
	str	r1, [sp, #0x1c]
	cmp	r3, #0x3c
	beq	.Lf6934
	b	.Lf6de2
.Lf6934:
	ldr	r2, [sp, #0xc]
	mov	r3, #3
	str	r3, [r2]
	mov	r0, #0x5d
	str	r4, [sp, #8]
	bl	_Func_f9080
	ldr	r3, [sp, #0x1c]
	ldr	r4, [sp, #8]
	ldr	r2, =REG_BLDCNT
	str	r3, [r4]
	ldr	r3, .Lf6968	@ 0x3f44
	strh	r3, [r2]
	ldr	r3, .Lf696c	@ 0x1010
	add	r2, #2
	strh	r3, [r2]
	ldr	r4, [sp, #0x24]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r3, r4, r0
	str	r5, [r3]
	add	r2, r4, r1
	mov	r3, #0x4b
	str	r3, [r2]
	b	.Lf6de2

	.align	2, 0
.Lf6968:
	.word	0x3f44
.Lf696c:
	.word	0x1010
	.pool

.Lf6998:
	cmp	r5, #3
	bne	.Lf69c4
	mov	r4, r7
	add	r4, #0xa8
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	mov	r4, #0
	str	r4, [sp, #0x1c]
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lf69b6
	b	.Lf6df0
.Lf69b6:
	ldr	r0, [sp, #0xc]
	mov	r3, #0xa
	str	r3, [r0]
	mov	r0, #0x70
	bl	_Func_f9080
	b	.Lf6dfe
.Lf69c4:
	cmp	r5, #0xb
	bne	.Lf6a16
	mov	r3, #0xc3
	lsl	r3, #3
	add	r5, r7, r3
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lf69ea
	mov	r4, #0x99
	mov	r3, #1
	lsl	r4, #3
	str	r3, [r5]
	add	r3, r7, r4
	ldr	r1, [r3]
	ldr	r0, =0x90c
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
.Lf69ea:
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lf69f6
	b	.Lf6dfe
.Lf69f6:
	ldr	r0, [sp, #0xc]
	mov	r3, #5
	mov	r1, r10
	str	r3, [r0]
	str	r1, [r5]
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r2, #0x99
	lsl	r2, #3
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r1, #1
	bl	_Func_16418
	b	.Lf6e0c
.Lf6a16:
	cmp	r5, #0x14
	bne	.Lf6a4e
	mov	r4, r7
	add	r4, #0xa8
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	cmp	r3, #0x2d
	beq	.Lf6a2a
	b	.Lf6e0c
.Lf6a2a:
	ldr	r0, [sp, #0xc]
	mov	r1, #0x98
	mov	r2, #0x94
	mov	r3, #0xa
	add	r1, r7
	add	r2, r7
	str	r3, [r0]
	b	.Lf6e06
.Lf6a3a:
	bl	Func_4458
	mov	r3, #3
	and	r0, r3
	add	r0, #4
	strb	r0, [r5, #2]
	ldr	r0, =0x133
	bl	_Func_f9080
	b	.Lf6adc
.Lf6a4e:
	cmp	r5, #0xa
	bne	.Lf6a54
	b	.Lf6e1a
.Lf6a54:
	mov	r4, r7
	add	r4, #0xa8
	str	r4, [sp, #0x14]
	ldr	r3, [r4]
	cmp	r3, #4
	bne	.Lf6a8a
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x11
	mov	r2, #0xc
	mov	r3, #3
	mov	r0, #0x12
	str	r4, [sp, #8]
	bl	_Func_162d4
	mov	r1, r0
	mov	r0, #0x99
	lsl	r0, #3
	add	r3, r7, r0
	str	r1, [r3]
	ldr	r0, =0x90a
	mov	r3, #0
	mov	r2, #0
	bl	_Func_1e7c0
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
.Lf6a8a:
	cmp	r3, #0x10
	bne	.Lf6a9c
	mov	r0, #0x99
	lsl	r0, #1
	str	r4, [sp, #8]
	bl	_Func_f9080
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
.Lf6a9c:
	cmp	r3, #0x38
	ble	.Lf6adc
	ldr	r3, =0x778c
	ldr	r2, [sp, #0x24]
	add	r1, r2, r3
	ldr	r3, [r1]
	cmp	r3, #0x1f
	bgt	.Lf6ab8
	ldrh	r2, [r6]
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf6adc
.Lf6ab8:
	mov	r4, r10
	mov	r2, #1
	mov	r5, r7
	str	r4, [r1]
	mov	r6, #0
	neg	r2, r2
	add	r5, #0x18
.Lf6ac6:
	ldrb	r3, [r5, #1]
	cmp	r3, #0
	bne	.Lf6ad4
	mov	r3, #2
	ldrsb	r3, [r5, r3]
	cmp	r3, r2
	beq	.Lf6a3a
.Lf6ad4:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #5
	bne	.Lf6ac6
.Lf6adc:
	mov	r2, r7
	mov	r6, #0
	add	r2, #0x18
.Lf6ae2:
	mov	r3, #2
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2, #2]
	cmp	r3, #0
	ble	.Lf6af0
	sub	r3, r1, #1
	strb	r3, [r2, #2]
.Lf6af0:
	add	r6, #1
	add	r2, #0x1c
	cmp	r6, #5
	bne	.Lf6ae2
	mov	r2, r7
	mov	r1, #0
	mov	r6, #0
	mov	r4, #0xf
	add	r2, #0x18
	mov	r0, #0
.Lf6b04:
	ldrb	r3, [r2, #1]
	cmp	r3, #1
	beq	.Lf6b1a
	mov	r3, #2
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	bne	.Lf6b1c
	ldr	r3, [r0, r7]
	and	r3, r4
	cmp	r3, #8
	bne	.Lf6b1c
.Lf6b1a:
	add	r1, #1
.Lf6b1c:
	add	r6, #1
	add	r2, #0x1c
	add	r0, #0x1c
	cmp	r6, #5
	bne	.Lf6b04
	cmp	r1, #5
	beq	.Lf6b2c
	b	.Lf6d5c
.Lf6b2c:
	mov	r0, #0
	mov	r1, #0x98
	mov	r2, #0xac
	add	r1, r7
	add	r2, r7
	str	r0, [sp, #0x10]
	mov	r10, r0
	mov	r11, r1
	mov	r8, r2
.Lf6b3e:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0]
	mov	r1, r11
	ldr	r2, [r1]
	mov	r9, r3
	mov	r3, #3
	mov	r4, #1
	sub	r3, r2
	neg	r4, r4
	cmp	r10, r3
	ble	.Lf6bf0
	add	r3, r2, #3
	cmp	r10, r3
	bge	.Lf6bf0
	mov	r6, #0
	mov	r5, #0
.Lf6b60:
	mov	r2, r10
	cmp	r2, #0
	bne	.Lf6b76
	ldr	r0, [r5, r7]
	cmp	r0, #0
	bge	.Lf6b6e
	add	r0, #0xf
.Lf6b6e:
	asr	r0, #4
	sub	r0, r6, r0
	add	r0, #0x16
	b	.Lf6b9e
.Lf6b76:
	mov	r3, r10
	cmp	r3, #6
	bne	.Lf6b8e
	ldr	r0, [r5, r7]
	neg	r3, r6
	cmp	r0, #0
	bge	.Lf6b86
	add	r0, #0xf
.Lf6b86:
	asr	r0, #4
	sub	r0, r3, r0
	add	r0, #0x1a
	b	.Lf6b9e
.Lf6b8e:
	ldr	r0, [r5, r7]
	cmp	r0, #0
	bge	.Lf6b96
	add	r0, #0xf
.Lf6b96:
	mov	r1, r10
	asr	r0, #4
	sub	r0, r1, r0
	add	r0, #0x15
.Lf6b9e:
	mov	r1, #0x15
	str	r4, [sp, #8]
	bl	Func_b1c_from_thumb
	add	r0, r5
	add	r0, #4
	ldrb	r3, [r7, r0]
	ldr	r4, [sp, #8]
	cmp	r3, #5
	beq	.Lf6bc6
	mov	r2, #1
	neg	r2, r2
	cmp	r4, r2
	bne	.Lf6bbe
	mov	r4, r3
	b	.Lf6bc6
.Lf6bbe:
	cmp	r4, r3
	beq	.Lf6bc6
	mov	r3, #1
	mov	r9, r3
.Lf6bc6:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #5
	bne	.Lf6b60
	mov	r0, r9
	cmp	r0, #0
	bne	.Lf6bf0
	mov	r3, #1
	mov	r1, r8
	str	r3, [r1]
	ldr	r3, [sp, #0x10]
	mov	r0, #0x90
	lsl	r0, #1
	add	r2, r3, r0
	ldr	r3, =.Lf870c
	ldr	r1, =ewram_24c
	ldrb	r3, [r3, r4]
	strb	r3, [r1, r2]
	ldr	r2, [sp, #0x10]
	add	r2, #1
	str	r2, [sp, #0x10]
.Lf6bf0:
	mov	r4, #1
	add	r10, r4
	mov	r3, #4
	mov	r0, r10
	add	r8, r3
	cmp	r0, #7
	bne	.Lf6b3e
	ldr	r1, [sp, #0x14]
	mov	r5, #0
	str	r5, [r1]
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	beq	.Lf6c52
	mov	r3, #0x90
	sub	r4, #2
	ldr	r0, =ewram_24c
	lsl	r3, #1
	add	r2, r3
	mov	r3, r4
	strb	r3, [r0, r2]
	ldr	r1, [sp, #0x18]
	mov	r3, #2
	str	r3, [r1]
	mov	r0, #0xab
	bl	_Func_f9080
	mov	r4, #0xef
	ldr	r3, [sp, #0x24]
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x7784
	add	r3, r0, r1
	str	r5, [r3]
	mov	r2, #0x99
	ldr	r3, =REG_BLDCNT
	lsl	r2, #3
	strh	r5, [r3]
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r1, #1
	bl	_Func_16418
	mov	r3, #0x94
	add	r3, r7
	mov	r8, r3
	b	.Lf6d68
.Lf6c52:
	ldr	r4, [sp, #0x18]
	mov	r3, #0xb
	str	r3, [r4]
	mov	r0, #0xc3
	mov	r2, #0x99
	ldr	r1, [sp, #0x10]
	lsl	r2, #3
	lsl	r0, #3
	add	r5, r7, r2
	add	r3, r7, r0
	str	r1, [r3]
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Func_16418
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0x18
	mov	r3, #4
	mov	r0, #3
	bl	_Func_162d4
	mov	r1, r0
	str	r1, [r5]
	mov	r3, #0
	ldr	r0, =0x90b
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r3, #0x94
	add	r3, r7
	mov	r8, r3
	mov	r5, r8
	ldr	r3, [r5]
	cmp	r3, #4
	bne	.Lf6d68
	mov	r0, #0xe4
	bl	_Func_78b60
	cmp	r0, #0
	ble	.Lf6cae
	ldr	r4, [sp, #0x18]
	mov	r3, #0x14
	str	r3, [r4]
	b	.Lf6cb4
.Lf6cae:
	ldr	r1, [sp, #0x18]
	mov	r3, #0x14
	str	r3, [r1]
.Lf6cb4:
	mov	r2, r11
	ldr	r3, [r2]
	cmp	r3, r0
	ble	.Lf6cbe
	str	r0, [r2]
.Lf6cbe:
	mov	r3, r7
	mov	r2, #0
	add	r3, #0x90
	str	r2, [r5]
	str	r2, [r3]
	mov	r2, r7
	mov	r6, #0
	mov	r0, #0
	mov	r1, #0xff
	add	r2, #0x18
.Lf6cd2:
	ldrb	r3, [r2, #2]
	add	r6, #1
	orr	r3, r1
	strb	r0, [r2, #1]
	strb	r3, [r2, #2]
	add	r2, #0x1c
	cmp	r6, #5
	bne	.Lf6cd2
	ldr	r3, [sp, #0x24]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x7784
	mov	r2, #0
	add	r3, r0, r1
	str	r2, [r3]
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x12
	bl	_Func_162d4
	ldr	r2, =0x4cc
	ldr	r5, =0x905
	mov	r1, r0
	add	r6, r7, r2
	mov	r0, r5
	str	r1, [r6]
	mov	r2, #0
	mov	r3, #8
	sub	r5, #1
	bl	_Func_1e7c0
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	b	.Lf6d68

	.pool_aligned

.Lf6d5c:
	mov	r3, #0x98
	mov	r4, #0x94
	add	r3, r7
	add	r4, r7
	mov	r11, r3
	mov	r8, r4
.Lf6d68:
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0]
	cmp	r3, #1
	bne	.Lf6dac
	mov	r6, #0
	mov	r1, r7
.Lf6d74:
	ldrb	r3, [r1, #0x19]
	cmp	r3, #0
	bne	.Lf6da4
	mov	r3, #0x1a
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.Lf6d86
	ldr	r3, [r1]
	b	.Lf6d92
.Lf6d86:
	ldr	r2, [r1]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #8
	beq	.Lf6d98
	mov	r3, r2
.Lf6d92:
	add	r3, #8
	str	r3, [r1]
	mov	r2, r3
.Lf6d98:
	mov	r3, #0xa8
	lsl	r3, #1
	cmp	r2, r3
	bne	.Lf6da4
	mov	r3, #0
	str	r3, [r1]
.Lf6da4:
	add	r6, #1
	add	r1, #0x1c
	cmp	r6, #5
	bne	.Lf6d74
.Lf6dac:
	ldr	r4, [sp, #0x24]
	ldr	r0, =0x778c
	add	r3, r4, r0
	ldr	r2, [r3]
	add	r2, #1
	str	r2, [r3]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	b	.Lf6e26
.Lf6dc2:
	mov	r2, r7
	mov	r3, #0x98
	mov	r4, #0x94
	add	r2, #0x8c
	add	r3, r7
	add	r4, r7
	str	r2, [sp, #0xc]
	b	.Lf6e14
.Lf6dd2:
	mov	r0, #0x94
	add	r0, r7
	mov	r8, r0
	b	.Lf6e26
.Lf6dda:
	mov	r1, #0x98
	add	r1, r7
	mov	r11, r1
	b	.Lf6e26
.Lf6de2:
	mov	r2, #0x98
	mov	r3, #0x94
	add	r2, r7
	add	r3, r7
	mov	r11, r2
	mov	r8, r3
	b	.Lf6e26
.Lf6df0:
	mov	r4, #0x98
	mov	r0, #0x94
	add	r4, r7
	add	r0, r7
	mov	r11, r4
	mov	r8, r0
	b	.Lf6e26
.Lf6dfe:
	mov	r1, #0x98
	mov	r2, #0x94
	add	r1, r7
	add	r2, r7
.Lf6e06:
	mov	r11, r1
	mov	r8, r2
	b	.Lf6e26
.Lf6e0c:
	mov	r3, #0x98
	mov	r4, #0x94
	add	r3, r7
	add	r4, r7
.Lf6e14:
	mov	r11, r3
	mov	r8, r4
	b	.Lf6e26
.Lf6e1a:
	mov	r0, #0x98
	mov	r1, #0x94
	add	r0, r7
	add	r1, r7
	mov	r11, r0
	mov	r8, r1
.Lf6e26:
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	cmp	r3, #5
	bne	.Lf6eb2
	mov	r3, r7
	add	r3, #0x90
	ldr	r1, [r3]
	lsl	r3, r1, #3
	add	r3, r1
	mov	r4, r7
	lsl	r3, #2
	add	r4, #0xa8
	mov	r5, r3
	ldr	r3, [r4]
	mov	r2, #0xf
	and	r3, r2
	add	r5, #0x24
	mov	r6, #0x80
	mov	r0, #0
	cmp	r3, #7
	bgt	.Lf6e52
	mov	r0, #1
.Lf6e52:
	cmp	r1, #5
	bne	.Lf6e5a
	mov	r5, #0xd0
	mov	r6, #0x20
.Lf6e5a:
	mov	r3, r5
	ldr	r4, [sp, #0x1c]
	sub	r3, #0xc
	lsl	r3, #16
	orr	r3, r4
	mov	r4, r6
	add	r4, #8
	ldr	r2, =0x80006000
	orr	r3, r4
	orr	r3, r2
	mov	r1, #0xc8
	str	r3, [r7, r1]
	lsl	r1, r0, #4
	mov	r0, #0xac
	lsl	r0, #2
	add	r1, r0
	mov	r3, #0xcc
	str	r1, [r7, r3]
	mov	r3, r5
	ldr	r2, [sp, #0x1c]
	add	r3, #0xc
	lsl	r3, #16
	orr	r3, r2
	ldr	r2, =0x90006000
	orr	r3, r4
	orr	r3, r2
	mov	r0, #0xd0
	str	r3, [r7, r0]
	mov	r3, #0xd4
	str	r1, [r7, r3]
	ldr	r4, [sp, #0x1c]
	lsl	r3, r5, #16
	ldr	r2, =0x80002000
	orr	r3, r4
	orr	r3, r6
	orr	r3, r2
	mov	r1, #0xd8
	str	r3, [r7, r1]
	mov	r3, #0xf8
	mov	r2, #0xdc
	lsl	r3, #1
	mov	r0, #3
	str	r3, [r7, r2]
	str	r0, [sp, #0x20]
.Lf6eb2:
	ldr	r1, [sp, #0xc]
	ldr	r3, [r1]
	cmp	r3, #3
	bne	.Lf6f7e
	ldr	r3, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	ldr	r2, =.Lf8712
	mov	r14, r3
	mov	r1, #0xcc
	lsl	r3, r0, #3
	mov	r4, r7
	add	r1, r3
	mov	r5, r3
	mov	r6, #0
	add	r4, #0xa8
	mov	r10, r2
	mov	r12, r1
	add	r5, #0xc8
.Lf6ed6:
	mov	r0, #0xe1
	lsl	r0, #7
	add	r0, r14
	mov	r3, #2
	ldrsh	r2, [r0, r3]
	ldr	r1, [sp, #0x1c]
	lsl	r2, #16
	orr	r2, r1
	mov	r1, #6
	ldrsh	r3, [r0, r1]
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0xff
	and	r3, r1
	orr	r2, r3
	mov	r3, #0x80
	lsl	r3, #24
	orr	r2, r3
	str	r2, [r7, r5]
	mov	r2, r10
	ldrb	r3, [r2, r6]
	mov	r1, #0xdc
	lsl	r3, #4
	lsl	r1, #2
	mov	r2, #0xf0
	lsl	r2, #8
	add	r3, r1
	orr	r3, r2
	mov	r2, r12
	str	r3, [r7, r2]
	ldr	r2, [r0, #0x10]
	ldr	r3, [r0, #4]
	add	r3, r2
	str	r3, [r0, #4]
	mov	r3, #0x80
	lsl	r3, #7
	add	r2, r3
	str	r2, [r0, #0x10]
	ldr	r3, [r4]
	mov	r2, r3
	cmp	r3, #0
	bge	.Lf6f2e
	add	r2, #0xff
.Lf6f2e:
	asr	r2, #8
	lsl	r2, #8
	sub	r2, r3, r2
	lsl	r3, r6, #2
	add	r3, #0xc8
	cmp	r2, r3
	bne	.Lf6f46
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x10]
	mov	r3, #0
	str	r3, [r0, #0x18]
.Lf6f46:
	mov	r2, #0x80
	ldr	r3, [r0, #4]
	lsl	r2, #15
	cmp	r3, r2
	ble	.Lf6f68
	ldr	r1, [r0, #0x18]
	str	r2, [r0, #4]
	cmp	r1, #1
	bgt	.Lf6f64
	ldr	r3, [r0, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r0, #0x10]
.Lf6f64:
	add	r3, r1, #1
	str	r3, [r0, #0x18]
.Lf6f68:
	ldr	r1, [sp, #0x20]
	mov	r0, #8
	add	r1, #1
	mov	r2, #0x1c
	add	r6, #1
	add	r12, r0
	add	r5, #8
	str	r1, [sp, #0x20]
	add	r14, r2
	cmp	r6, #8
	bne	.Lf6ed6
.Lf6f7e:
	ldr	r3, =0x80006000
	ldr	r0, [sp, #0x20]
	mov	r9, r3
	lsl	r3, r0, #3
	ldr	r4, =.Lf8728
	mov	r1, r3
	mov	r0, r3
	mov	r2, #0x9c
	mov	r3, #0x9d
	add	r1, #0xcc
	lsl	r2, #3
	lsl	r3, #3
	ldr	r6, =.Lf871a
	mov	r12, r4
	mov	r5, #0
	mov	r4, r1
	add	r0, #0xc8
	mov	r10, r2
	mov	r14, r3
.Lf6fa4:
	ldrb	r3, [r6]
	ldr	r2, [sp, #0x1c]
	lsl	r3, #16
	orr	r3, r2
	mov	r2, r12
	ldrb	r2, [r2]
	str	r2, [sp, #4]
	mov	r2, #1
	add	r12, r2
	ldr	r2, [sp, #4]
	orr	r3, r2
	mov	r2, r9
	orr	r3, r2
	add	r6, #1
	str	r3, [r7, r0]
	cmp	r5, #3
	bgt	.Lf6fcc
	mov	r3, r10
	str	r3, [r7, r4]
	b	.Lf6fd0
.Lf6fcc:
	mov	r2, r14
	str	r2, [r7, r1]
.Lf6fd0:
	ldr	r3, [sp, #0x20]
	add	r5, #1
	add	r3, #1
	add	r1, #8
	add	r4, #8
	add	r0, #8
	str	r3, [sp, #0x20]
	cmp	r5, #0xe
	bne	.Lf6fa4
	lsl	r3, #3
	ldr	r4, =0x8000207c
	mov	r0, #0x19
	mov	r1, r3
	mov	r2, r3
	mov	r5, #0x80
	add	r0, r7
	add	r1, #0xcc
	add	r2, #0xc8
	mov	r14, r4
	mov	r6, #0
	lsl	r5, #14
	mov	r12, r0
	mov	r4, r1
	mov	r9, r2
.Lf7000:
	mov	r3, r12
	ldrb	r3, [r3]
	mov	r10, r3
	mov	r0, #0x1c
	mov	r3, r10
	add	r12, r0
	cmp	r3, #0
	bne	.Lf7024
	ldr	r3, [sp, #0x1c]
	mov	r0, r14
	orr	r3, r5
	orr	r3, r0
	mov	r0, r9
	str	r3, [r7, r0]
	mov	r3, #0x8c
	lsl	r3, #3
	str	r3, [r7, r4]
	b	.Lf7034
.Lf7024:
	ldr	r3, [sp, #0x1c]
	mov	r0, r14
	orr	r3, r5
	orr	r3, r0
	str	r3, [r7, r2]
	mov	r3, #0x90
	lsl	r3, #3
	str	r3, [r7, r1]
.Lf7034:
	mov	r3, #8
	ldr	r0, [sp, #0x20]
	add	r9, r3
	mov	r3, #0x90
	add	r0, #1
	lsl	r3, #14
	add	r6, #1
	add	r1, #8
	add	r2, #8
	add	r4, #8
	str	r0, [sp, #0x20]
	add	r5, r3
	cmp	r6, #5
	bne	.Lf7000
	ldr	r1, [sp, #0x20]
	ldr	r4, =0x80006003
	lsl	r3, r1, #3
	mov	r2, r3
	mov	r0, #0x80
	lsl	r0, #3
	mov	r10, r4
	mov	r5, #0x80
	add	r2, #0xcc
	add	r3, #0xc8
	mov	r4, #0x84
	mov	r12, r0
	mov	r6, #0
	lsl	r5, #14
	mov	r0, r2
	mov	r9, r3
	mov	r14, r8
	lsl	r4, #2
.Lf7074:
	ldr	r3, [sp, #0x1c]
	mov	r1, r10
	orr	r3, r5
	orr	r3, r1
	mov	r1, r9
	str	r3, [r7, r1]
	mov	r1, r14
	ldr	r3, [r1]
	cmp	r6, r3
	bne	.Lf7092
	mov	r3, r4
	mov	r1, r12
	orr	r3, r1
	str	r3, [r7, r0]
	b	.Lf70a0
.Lf7092:
	mov	r1, #0x88
	lsl	r1, #2
	lsl	r3, r6, #5
	add	r3, r1
	mov	r1, r12
	orr	r3, r1
	str	r3, [r7, r2]
.Lf70a0:
	mov	r3, #8
	ldr	r1, [sp, #0x20]
	add	r9, r3
	mov	r3, #0x80
	add	r1, #1
	lsl	r3, #13
	add	r6, #1
	add	r2, #8
	add	r0, #8
	str	r1, [sp, #0x20]
	add	r5, r3
	add	r4, #0x20
	cmp	r6, #5
	bne	.Lf7074
	lsl	r3, r1, #3
	mov	r4, #0
	mov	r10, r4
	mov	r0, r3
	mov	r4, r3
	mov	r5, #5
	add	r4, #0xcc
	add	r0, #0xc8
	mov	r1, r3
.Lf70ce:
	mov	r3, r10
	mov	r2, #1
	and	r2, r3
	mov	r3, #0x81
	lsl	r2, #3
	lsl	r3, #2
	sub	r3, r2
	ldr	r2, =0x1ff
	and	r3, r2
	ldr	r2, [sp, #0x1c]
	lsl	r3, #16
	orr	r3, r2
	ldr	r2, =0x80002000
	orr	r3, r5
	orr	r3, r2
	str	r3, [r7, r0]
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #3
	sub	r3, r2
	cmp	r10, r3
	ble	.Lf7130
	add	r3, r2, #3
	cmp	r10, r3
	bge	.Lf7130
	mov	r3, #0xba
	lsl	r3, #3
	str	r3, [r7, r4]
	b	.Lf713a

	.pool_aligned

.Lf7130:
	mov	r2, r1
	mov	r3, #0xa2
	add	r2, #0xcc
	lsl	r3, #3
	str	r3, [r7, r2]
.Lf713a:
	ldr	r2, [sp, #0x20]
	mov	r3, #1
	add	r2, #1
	add	r10, r3
	str	r2, [sp, #0x20]
	mov	r2, r10
	add	r4, #8
	add	r0, #8
	add	r1, #8
	add	r5, #0x10
	cmp	r2, #7
	bne	.Lf70ce
	mov	r3, #0xa0
	lsl	r3, #14
	mov	r6, #0
	mov	r11, r3
	mov	r5, r7
.Lf715c:
	ldr	r0, [sp, #0x20]
	mov	r4, #0
	lsl	r3, r0, #3
	mov	r1, #0xcc
	mov	r10, r4
	add	r1, r3
	mov	r4, r3
	mov	r9, r11
	mov	r8, r1
	add	r4, #0xc8
.Lf7170:
	mov	r2, r10
	lsl	r1, r2, #4
	ldr	r2, [r5]
	mov	r3, r2
	cmp	r2, #0
	bge	.Lf717e
	add	r3, #0xf
.Lf717e:
	asr	r3, #4
	lsl	r3, #4
	sub	r3, r2, r3
	add	r3, r1, r3
	mov	r0, r9
	add	r3, #4
	ldr	r2, =0x80006000
	orr	r3, r0
	orr	r3, r2
	str	r3, [r7, r4]
	ldr	r0, [r5]
	cmp	r0, #0
	bge	.Lf719a
	add	r0, #0xf
.Lf719a:
	mov	r1, r10
	asr	r0, #4
	sub	r0, r1, r0
	add	r0, #0x15
	mov	r1, #0x15
	str	r4, [sp, #8]
	bl	Func_b1c_from_thumb
	add	r0, #4
	ldrb	r3, [r5, r0]
	mov	r2, #0x80
	lsl	r2, #4
	lsl	r3, #4
	orr	r3, r2
	mov	r2, r8
	str	r3, [r7, r2]
	ldr	r0, [sp, #0x20]
	mov	r1, #1
	ldr	r4, [sp, #8]
	add	r10, r1
	mov	r3, #8
	add	r0, #1
	mov	r2, r10
	add	r8, r3
	add	r4, #8
	str	r0, [sp, #0x20]
	cmp	r2, #7
	bne	.Lf7170
	mov	r3, #0x80
	lsl	r3, #14
	add	r6, #1
	add	r11, r3
	add	r5, #0x1c
	cmp	r6, #5
	bne	.Lf715c
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0]
	mov	r4, #0x28
	cmp	r3, #1
	bne	.Lf7216
	mov	r3, r7
	add	r3, #0xa8
	ldr	r0, [r3]
	cmp	r0, #0x2f
	bgt	.Lf7200
	ldr	r3, =0x2aa
	mul	r0, r3
	bl	Func_2322
	lsl	r0, #6
	b	.Lf7210
.Lf7200:
	cmp	r0, #0x37
	bgt	.Lf7216
	ldr	r1, =0xfffd0000
	lsl	r0, #12
	add	r0, r1
	bl	Func_2322
	lsl	r0, #2
.Lf7210:
	asr	r0, #16
	mov	r4, r0
	add	r4, #0x28
.Lf7216:
	ldr	r3, [sp, #0x20]
	ldr	r0, [sp, #0x1c]
	lsl	r2, r3, #3
	ldr	r3, =0x80d06000
	orr	r4, r0
	orr	r4, r3
	mov	r1, r2
	mov	r3, #0xa0
	add	r1, #0xc8
	add	r2, #0xcc
	lsl	r3, #3
	str	r4, [r7, r1]
	str	r3, [r7, r2]
	ldr	r1, [sp, #0x20]
	add	r1, #1
	lsl	r3, r1, #3
	mov	r6, r3
	add	r6, #0xcc
	mov	r4, r6
	mov	r0, r4
	str	r1, [sp, #0x20]
	mov	r2, #0xc
	mov	r1, r0
	add	r3, #0xc8
	mov	r5, #0
	mov	r8, r2
	mov	r14, r1
	mov	r12, r3
.Lf724e:
	ldr	r3, [sp, #0x1c]
	mov	r2, r8
	orr	r3, r2
	ldr	r2, =0x80ce6000
	orr	r3, r2
	mov	r2, r12
	str	r3, [r7, r2]
	cmp	r5, #0
	bne	.Lf726a
	mov	r3, #0xa8
	lsl	r3, #3
	mov	r2, r14
	str	r3, [r7, r2]
	b	.Lf7294
.Lf726a:
	cmp	r5, #1
	bne	.Lf7276
	mov	r3, #0xaa
	lsl	r3, #3
	str	r3, [r7, r1]
	b	.Lf7294
.Lf7276:
	cmp	r5, #6
	bne	.Lf7282
	mov	r3, #0xae
	lsl	r3, #3
	str	r3, [r7, r0]
	b	.Lf7294
.Lf7282:
	cmp	r5, #7
	bne	.Lf728e
	mov	r3, #0xb0
	lsl	r3, #3
	str	r3, [r7, r4]
	b	.Lf7294
.Lf728e:
	mov	r3, #0xac
	lsl	r3, #3
	str	r3, [r7, r6]
.Lf7294:
	ldr	r2, [sp, #0x20]
	mov	r3, #8
	add	r14, r3
	add	r12, r3
	add	r2, #1
	mov	r3, #0x10
	add	r5, #1
	add	r6, #8
	add	r4, #8
	add	r0, #8
	add	r1, #8
	str	r2, [sp, #0x20]
	add	r8, r3
	cmp	r5, #8
	bne	.Lf724e
	cmp	r2, #0x80
	beq	.Lf72d4
	lsl	r3, r2, #3
	mov	r2, r3
	ldr	r0, =0x40f02000
	mov	r1, #0
	add	r2, #0xcc
	add	r3, #0xc8
.Lf72c2:
	str	r0, [r7, r3]
	str	r1, [r7, r2]
	ldr	r4, [sp, #0x20]
	add	r4, #1
	add	r2, #8
	add	r3, #8
	str	r4, [sp, #0x20]
	cmp	r4, #0x80
	bne	.Lf72c2
.Lf72d4:
	ldr	r0, [sp, #0x20]
	mov	r4, #0x84
	lsl	r2, r0, #1
	lsl	r4, #24
	mov	r0, r7
	mov	r1, #0xe0
	ldr	r3, =REG_DMA3SAD
	add	r0, #0xc8
	lsl	r1, #19
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f6440

.thumb_func_start Func_f731c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f04
	ldr	r1, [r3]
	sub	r3, #0x18
	ldr	r3, [r3]
	mov	r2, #0x80
	mov	r10, r3
	ldr	r3, =ewram_10018
	mov	r8, r1
	sub	sp, #4
	mov	r5, #0
	mov	r6, #0
	mov	r1, #0
	lsl	r2, #4
.Lf733e:
	add	r6, #1
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r6, r2
	bne	.Lf733e
	mov	r2, #0xe1
	lsl	r2, #7
	ldr	r0, =0xffe00000
	ldr	r1, =.Lf8736
	ldr	r7, =0xfff80000
	mov	r6, #0
	mov	r4, #0
	add	r2, r10
.Lf7358:
	mov	r3, r5
	add	r3, #0x18
	lsl	r3, #16
	str	r3, [r2]
	ldrb	r3, [r1]
	add	r6, #1
	str	r0, [r2, #4]
	str	r4, [r2, #0x10]
	str	r4, [r2, #0x18]
	add	r1, #1
	add	r5, r3
	add	r0, r7
	add	r2, #0x1c
	cmp	r6, #8
	bne	.Lf7358
	mov	r3, #0x9b
	lsl	r3, #3
	ldr	r2, .Lf73b4	@ 0
	mov	r6, #0
	add	r3, r8
.Lf7380:
	add	r6, #1
	strh	r2, [r3]
	add	r3, #2
	cmp	r6, #0xa0
	bne	.Lf7380
	ldr	r7, =0x506
	mov	r6, #0
	add	r7, r8
.Lf7390:
	ldr	r3, =0x199
	mov	r5, r6
	mul	r5, r3
	mov	r0, r5
	bl	Func_231c
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r3, #15
	strh	r3, [r7]
	mov	r0, r5
	bl	Func_231c
	mov	r2, #0x6e
	sub	r2, r6
	mov	r3, #0x9b
	lsl	r3, #3
	b	.Lf73d4

	.align	2, 0
.Lf73b4:
	.word	0
	.pool

.Lf73d4:
	lsl	r2, #1
	add	r2, r3
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r3, #15
	mov	r1, r8
	add	r6, #1
	add	r7, #2
	strh	r3, [r1, r2]
	cmp	r6, #0x28
	bne	.Lf7390
	mov	r3, r8
	mov	r2, #0
	add	r3, #0x94
	str	r2, [r3]
	mov	r1, #0xef
	sub	r3, #8
	str	r2, [r3]
	lsl	r1, #7
	add	r3, #4
	str	r2, [r3]
	add	r1, r10
	mov	r3, #1
	str	r3, [r1]
	ldr	r3, =0x7784
	add	r3, r10
	str	r2, [r3]
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x12
	bl	_Func_162d4
	ldr	r6, =0x4cc
	ldr	r5, =0x905
	mov	r1, r0
	add	r6, r8
	str	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #8
	sub	r5, #1
	bl	_Func_1e7c0
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f731c

.thumb_func_start Func_f7460
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =0x60e
	mov	r0, #0x29
	sub	sp, #0x74
	bl	Func_48b0
	mov	r1, #0x80
	str	r0, [sp, #0x2c]
	lsl	r1, #8
	mov	r0, #0x28
	bl	Func_48b0
	ldr	r1, =0x782c
	str	r0, [sp, #0x28]
	mov	r0, #0x27
	bl	Func_48f4
	ldr	r1, =0x61c
	str	r0, [sp, #0x24]
	mov	r0, #0x2d
	bl	Func_48f4
	str	r0, [sp, #0x20]
	ldr	r0, =0xc
	ldr	r5, =ewram_24c
	bl	Func_2f3c
	mov	r0, #0x90
	lsl	r0, #1
	add	r5, r0
	mov	r3, #0xff
	strb	r3, [r5]
	ldr	r2, [sp, #0x20]
	mov	r3, #0
	add	r2, #0xa2
	strh	r3, [r2]
	ldr	r1, [sp, #0x20]
	mov	r3, #1
	add	r1, #0x98
	str	r1, [sp, #0x1c]
	str	r3, [r1]
	bl	Func_40e8
	ldr	r5, .Lf74dc	@ 0
	ldr	r3, =iwram_1d18
	mov	r0, #0
	strb	r5, [r3]
	ldr	r1, =0x6002800
	ldr	r7, .Lf74e0	@ 0xa1a6
	ldr	r4, .Lf74e4	@ 0xa1a8
	mov	r8, r0
	mov	r6, #0
.Lf74d4:
	mov	r2, #0
	mov	r10, r2
	b	.Lf7504

	.align	2, 0
.Lf74dc:
	.word	0
.Lf74e0:
	.word	0xa1a6
.Lf74e4:
	.word	0xa1a8
	.pool

.Lf7504:
	mov	r3, r10
	sub	r3, #5
	cmp	r3, #0x13
	bhi	.Lf751c
	cmp	r6, #2
	ble	.Lf751c
	cmp	r6, #0xd
	bgt	.Lf751c
	mov	r2, r8
	add	r3, r2, r1
	strh	r7, [r3]
	b	.Lf7534
.Lf751c:
	mov	r3, r10
	cmp	r3, #0x1d
	ble	.Lf752a
	mov	r2, r8
	add	r3, r2, r1
	strh	r5, [r3]
	b	.Lf7534
.Lf752a:
	mov	r3, r8
	add	r2, r3, r1
	add	r3, r0, r4
	strh	r3, [r2]
	add	r0, #1
.Lf7534:
	mov	r2, #1
	add	r10, r2
	mov	r3, #2
	mov	r2, r10
	add	r8, r3
	cmp	r2, #0x20
	bne	.Lf7504
	add	r6, #1
	cmp	r6, #0x14
	bne	.Lf74d4
	ldr	r0, =0x76
	bl	Func_2f40
	ldr	r1, [sp, #0x2c]
	bl	Func_5340
	ldr	r0, =0x3f
	bl	Func_2f40
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, =0x5000140
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r4, #0x20
	mov	r0, r4
	ldr	r1, =ewram_10000
	bl	Func_5340
	ldr	r0, =ewram_10000
	mov	r3, #0
	ldr	r7, =0x600b500
	mov	r8, r3
	mov	r6, #0
	mov	r5, #0
	mov	r12, r0
.Lf757e:
	mov	r1, #0
	lsl	r3, r5, #6
	mov	r2, r12
	mov	r10, r1
	add	r4, r3, r2
.Lf7588:
	mov	r3, r10
	sub	r3, #5
	cmp	r3, #0x13
	bhi	.Lf7598
	cmp	r6, #2
	ble	.Lf7598
	cmp	r6, #0xd
	ble	.Lf75aa
.Lf7598:
	mov	r2, r8
	add	r1, r2, r7
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x20
	add	r8, r3
.Lf75aa:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r4, #0x20
	cmp	r1, #0x1e
	bne	.Lf7588
	add	r6, #1
	add	r5, #0xf
	cmp	r6, #0x14
	bne	.Lf757e
	mov	r1, #0xc0
	ldr	r3, =Func_8d4
	ldr	r0, =0x6002d00
	lsl	r1, #2
	bl	_call_via_r3
	ldr	r3, .Lf75f4	@ 0xbf
	mov	r2, #0
	mov	r4, #2
	ldr	r5, =0x6003000
	mov	r8, r2
	mov	r6, #0
	mov	r12, r3
	neg	r4, r4
	mov	r0, #0
.Lf75dc:
	mov	r7, #0
	mov	r2, r0
	mov	r10, r7
	mov	r1, r4
	add	r2, #0x94
.Lf75e6:
	cmp	r1, #0xe
	bls	.Lf7620
	mov	r7, r8
	add	r3, r7, r5
	mov	r7, r12
	strh	r7, [r3]
	b	.Lf7626

	.align	2, 0
.Lf75f4:
	.word	0xbf
	.pool

.Lf7620:
	mov	r7, r8
	add	r3, r7, r5
	strh	r2, [r3]
.Lf7626:
	mov	r3, #1
	add	r10, r3
	mov	r7, #2
	mov	r3, r10
	add	r2, #1
	add	r8, r7
	cmp	r3, #0x20
	bne	.Lf75e6
	add	r6, #1
	add	r4, #1
	add	r0, #0x20
	cmp	r6, #0x14
	bne	.Lf75dc
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Lf7674	@ 0x509
	strh	r3, [r2]
	ldr	r3, .Lf7678	@ 0x680
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =iwram_1ad0
	mov	r1, #0
	strh	r1, [r3]
	strh	r1, [r3, #2]
	strh	r1, [r3, #4]
	strh	r1, [r3, #6]
	strh	r1, [r3, #8]
	strh	r1, [r3, #0xa]
	ldr	r3, .Lf767c	@ 0x3737
	add	r2, #0x3c
	strh	r3, [r2]
	ldr	r3, .Lf7680	@ 0x2727
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, .Lf7684	@ 0x3f44
	add	r2, #6
	strh	r3, [r2]
	ldr	r3, .Lf7688	@ 0x1010
	add	r2, #2
	b	.Lf7694

	.align	2, 0
.Lf7674:
	.word	0x509
.Lf7678:
	.word	0x680
.Lf767c:
	.word	0x3737
.Lf7680:
	.word	0x2727
.Lf7684:
	.word	0x3f44
.Lf7688:
	.word	0x1010
	.pool

.Lf7694:
	strh	r3, [r2]
	ldr	r3, =REG_BG1HOFS
	ldr	r2, .Lf76d0	@ 0xff60
	strh	r1, [r3]
	add	r3, #4
	strh	r1, [r3]
	sub	r3, #2
	strh	r2, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r0, =REG_WIN0H
	ldr	r3, .Lf76d4	@ 0x28c8
	ldr	r4, =REG_WIN0V
	strh	r3, [r0]
	ldr	r2, .Lf76d8	@ 0xf0
	ldr	r3, .Lf76dc	@ 0x1878
	strh	r3, [r4]
	strh	r2, [r0]
	ldr	r3, =REG_WIN1H
	ldr	r0, .Lf76e0	@ 0xa0
	strh	r0, [r4]
	strh	r2, [r3]
	add	r3, #4
	strh	r0, [r3]
	ldr	r7, [sp, #0x24]
	ldr	r2, [sp, #0x20]
	mov	r0, #0x80
	lsl	r0, #2
	b	.Lf76f4

	.align	2, 0
.Lf76d0:
	.word	0xff60
.Lf76d4:
	.word	0x28c8
.Lf76d8:
	.word	0xf0
.Lf76dc:
	.word	0x1878
.Lf76e0:
	.word	0xa0
	.pool

.Lf76f4:
	add	r0, r7, r0
	add	r2, #0x8c
	str	r0, [sp, #0x18]
	str	r2, [sp, #0x14]
	str	r1, [r2]
	ldr	r3, [sp, #0x20]
	add	r3, #0x90
	str	r1, [r3]
	ldr	r3, [sp, #0x20]
	ldr	r0, =0x778c
	add	r3, #0x94
	str	r1, [r3]
	add	r3, r7, r0
	str	r1, [r3]
	ldr	r2, [sp, #0x20]
	add	r2, #0xa8
	str	r2, [sp, #0x10]
	str	r1, [r2]
	ldr	r0, =0x8f
	bl	Func_2f40
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0x5000080
	ldr	r3, .Lf7760	@ 0x2f8b
	strh	r3, [r2]
	ldr	r3, .Lf7764	@ 0x5bf6
	add	r2, #2
	strh	r3, [r2]
	ldr	r0, =0x40
	bl	Func_2f40
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, =0x5000200
	ldr	r2, =0x84000078
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xf0
	lsl	r3, #1
	add	r4, r3
	mov	r0, r4
	ldr	r1, =ewram_10000
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_10000
	ldr	r1, =0x6010000
	ldr	r2, =0x84001b30
	b	.Lf7794

	.align	2, 0
.Lf7760:
	.word	0x2f8b
.Lf7764:
	.word	0x5bf6
	.pool

.Lf7794:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x41
	bl	Func_2f40
	ldr	r3, =REG_DMA3SAD
	mov	r4, r0
	ldr	r1, =0x50003e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r4, #0x20
	mov	r0, r4
	ldr	r1, =ewram_10000
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_10000
	ldr	r1, =0x6016e00
	ldr	r2, =0x84000480
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	_Func_15f30
	bl	Func_f731c
	mov	r7, #0
	mov	r10, r7
	ldr	r7, [sp, #0x20]
.Lf77ce:
	mov	r3, #8
	str	r3, [r7]
	mov	r3, #0
	strb	r3, [r7, #0x19]
	mov	r3, #0xff
	strb	r3, [r7, #0x1a]
	mov	r6, #0
	add	r5, r7, #4
.Lf77de:
	bl	Func_4458
	mov	r1, #5
	bl	Func_b50_from_thumb
	add	r6, #1
	strb	r0, [r5]
	add	r5, #1
	cmp	r6, #0x15
	bne	.Lf77de
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r7, #0x1c
	cmp	r1, #5
	bne	.Lf77ce
	ldr	r3, [sp, #0x20]
	mov	r2, #0
	add	r7, sp, #0x54
	mov	r10, r2
	mov	r4, r7
	mov	r9, r3
.Lf780a:
	mov	r0, #0
	mov	r8, r0
	mov	r5, #0
.Lf7810:
	str	r4, [sp, #8]
	bl	Func_4458
	mov	r1, #0x15
	bl	Func_b50_from_thumb
	mov	r1, r8
	str	r0, [r5, r7]
	mov	r6, #0
	ldr	r4, [sp, #8]
	cmp	r1, #0
	beq	.Lf786c
	ldr	r3, [r7]
	cmp	r0, r3
	bne	.Lf7854
	mov	r2, #1
	neg	r2, r2
	sub	r5, #4
	add	r8, r2
	b	.Lf786c

	.pool_aligned

.Lf7854:
	add	r6, #1
	cmp	r6, r8
	beq	.Lf786c
	lsl	r3, r6, #2
	ldr	r2, [r5, r4]
	ldr	r3, [r4, r3]
	cmp	r2, r3
	bne	.Lf7854
	mov	r3, #1
	neg	r3, r3
	sub	r5, #4
	add	r8, r3
.Lf786c:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #4
	cmp	r1, #8
	bne	.Lf7810
	mov	r6, #0
	mov	r1, r7
.Lf787c:
	mov	r2, r6
	cmp	r6, #5
	ble	.Lf7884
	mov	r2, #5
.Lf7884:
	ldmia	r1!, {r3}
	mov	r0, r9
	add	r3, #4
	add	r6, #1
	strb	r2, [r0, r3]
	cmp	r6, #8
	bne	.Lf787c
	mov	r2, #1
	add	r10, r2
	mov	r1, #0x1c
	mov	r3, r10
	add	r9, r1
	cmp	r3, #5
	bne	.Lf780a
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	_Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #8
	str	r3, [sp, #0x30]
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r3, [sp]
	bl	_Func_ed408
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r7, sp
	add	r7, #0x30
	str	r7, [sp, #0xc]
	mov	r1, #0x80
	str	r3, [r7, #4]
	ldr	r0, [sp, #0x28]
	ldr	r3, =Func_8d8
	lsl	r1, #8
	mov	r2, #0
	bl	_call_via_r3
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [sp, #0x28]
	ldr	r1, =0x6003500
	ldr	r2, =0x84002000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0xa0
	lsl	r0, #19
	ldr	r1, [sp, #0x24]
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, [sp, #0x18]
	ldr	r0, =0x5000200
	ldr	r2, =0x84000080
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r5, #0x80
	lsl	r5, #1
	ldr	r1, =0x5000200
	ldr	r0, [sp, #0x18]
	mov	r2, #0
	mov	r3, r5
	bl	Func_f6038
	mov	r1, #0xa0
	mov	r2, #0
	mov	r3, r5
	lsl	r1, #19
	ldr	r0, [sp, #0x24]
	bl	Func_f6038
	mov	r2, #0x80
	ldr	r3, .Lf795c	@ 0x3740
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #0xe4
	bl	_Func_78b60
	cmp	r0, #1
	bne	.Lf7982
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0x12
	mov	r3, #3
	mov	r0, #6
	bl	_Func_162d4
	mov	r2, #0x99
	mov	r1, r0
	ldr	r0, [sp, #0x20]
	lsl	r2, #3
	add	r3, r0, r2
	str	r1, [r3]
	ldr	r0, =0x909
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	b	.Lf7980

	.align	2, 0
.Lf795c:
	.word	0x3740
	.pool

.Lf7980:
	b	.Lf79b8
.Lf7982:
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0x1a
	mov	r3, #4
	mov	r0, #2
	bl	_Func_162d4
	mov	r7, #0x99
	ldr	r3, [sp, #0x20]
	ldr	r5, =0x908
	lsl	r7, #3
	mov	r1, r0
	add	r6, r3, r7
	mov	r0, r5
	str	r1, [r6]
	mov	r2, #0
	mov	r3, #0
	add	r5, #1
	bl	_Func_1e7c0
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_1e7c0
.Lf79b8:
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x7824
	mov	r5, #0x90
	add	r2, r0, r1
	mov	r3, #0
	lsl	r5, #3
	str	r3, [r2]
	mov	r1, r5
	ldr	r0, =Func_f6440
	bl	Func_41d8
	ldr	r0, =Func_f60a0
	mov	r1, r5
	bl	Func_41d8
	ldr	r7, [sp, #0x14]
	ldr	r3, [r7]
	mov	r2, #0
	mov	r11, r2
	cmp	r3, #0xa
	bne	.Lf79e4
	b	.Lf7d26
.Lf79e4:
	mov	r0, r11
	cmp	r0, #0x10
	bgt	.Lf7a0a
	mov	r6, #0x80
	lsl	r5, r0, #12
	lsl	r6, #1
	ldr	r1, =0x5000200
	mov	r2, r5
	mov	r3, r6
	ldr	r0, [sp, #0x18]
	bl	Func_f6038
	mov	r1, #0xa0
	ldr	r0, [sp, #0x24]
	lsl	r1, #19
	mov	r2, r5
	mov	r3, r6
	bl	Func_f6038
.Lf7a0a:
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	cmp	r3, #3
	beq	.Lf7a14
	b	.Lf7b98
.Lf7a14:
	mov	r0, r11
	mov	r1, #0x50
	bl	Func_b1c_from_thumb
	cmp	r0, #0xf
	bgt	.Lf7a28
	ldr	r0, =0x91
	bl	Func_f61e8
	b	.Lf7a52
.Lf7a28:
	cmp	r0, #0x1f
	bgt	.Lf7a34
	ldr	r0, =0x93
	bl	Func_f61e8
	b	.Lf7a52
.Lf7a34:
	cmp	r0, #0x2f
	bgt	.Lf7a40
	ldr	r0, =0xb4
	bl	Func_f61e8
	b	.Lf7a52
.Lf7a40:
	cmp	r0, #0x3f
	bgt	.Lf7a4c
	ldr	r0, =0xa0
	bl	Func_f61e8
	b	.Lf7a52
.Lf7a4c:
	ldr	r0, =0x8f
	bl	Func_f61e8
.Lf7a52:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	cmp	r3, #0xf
	bgt	.Lf7a62
	bl	Func_f6148
	ldr	r7, [sp, #0x10]
	ldr	r3, [r7]
.Lf7a62:
	cmp	r3, #0x10
	ble	.Lf7b00
	mov	r3, #7
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	bne	.Lf7b00
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	mov	r5, r3
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	mov	r1, r3
	mov	r2, r11
	add	r5, #0x38
	add	r1, #0x30
	cmp	r2, #0
	bge	.Lf7a90
	add	r2, #7
.Lf7a90:
	mov	r3, #3
	asr	r2, #3
	and	r2, r3
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =ewram_10000
	lsl	r3, #10
	add	r7, r3, r2
	lsl	r5, #16
	mov	r3, #0
	lsl	r1, #16
	mov	r8, r3
	mov	r9, r5
	mov	r10, r1
.Lf7aac:
	bl	Func_4458
	mov	r5, #0xff
	and	r5, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	mov	r1, r10
	mov	r0, r9
	str	r1, [r7, #4]
	str	r0, [r7]
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x40
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x10
	str	r3, [r7, #0x18]
	mov	r2, #1
	mov	r3, #0x80
	add	r8, r2
	lsl	r3, #1
	add	r7, #0x1c
	cmp	r8, r3
	bne	.Lf7aac
.Lf7b00:
	mov	r7, #0
	mov	r8, r7
	ldr	r7, =ewram_10000
.Lf7b06:
	ldr	r0, [r7, #0x18]
	cmp	r0, #0
	ble	.Lf7b8a
	ldr	r3, [r7]
	ldr	r1, =0xffffff
	sub	r0, #1
	str	r0, [r7, #0x18]
	cmp	r3, r1
	bhi	.Lf7b5c
	ldr	r6, [r7, #4]
	ldr	r2, =0x7fffff
	cmp	r6, r2
	bgt	.Lf7b5c
	cmp	r6, #0
	blt	.Lf7b5c
	mov	r1, #0xc
	asr	r5, r3, #16
	bl	Func_af0_from_thumb
	add	r0, #1
	lsl	r4, r0, #1
	mov	r3, r8
	ldr	r1, =.Lf86f8
	mov	r2, #1
	and	r2, r3
	asr	r6, #16
	sub	r3, r4, #2
	ldrh	r1, [r1, r3]
	sub	r5, r0
	ldr	r3, [sp, #0x2c]
	sub	r6, r0
	str	r4, [sp]
	ldr	r0, [sp, #0xc]
	str	r4, [sp, #4]
	lsl	r2, #2
	ldr	r4, [r2, r0]
	add	r1, r3, r1
	ldr	r0, [sp, #0x28]
	mov	r3, r6
	mov	r2, r5
	bl	_call_via_r4
	ldr	r3, [r7]
.Lf7b5c:
	ldr	r2, [r7, #0xc]
	add	r3, r2
	str	r3, [r7]
	ldr	r1, [r7, #0x10]
	ldr	r3, [r7, #4]
	add	r3, r1
	str	r3, [r7, #4]
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	cmp	r3, #0
	bge	.Lf7b76
	add	r3, #0x3f
.Lf7b76:
	asr	r3, #6
	str	r3, [r7, #0xc]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r3, #2
	cmp	r3, #0
	bge	.Lf7b86
	add	r3, #0x3f
.Lf7b86:
	asr	r3, #6
	str	r3, [r7, #0x10]
.Lf7b8a:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r7, #0x1c
	cmp	r8, r2
	bne	.Lf7b06
.Lf7b98:
	ldr	r7, [sp, #0x14]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lf7ba6
	cmp	r3, #2
	beq	.Lf7ba6
	b	.Lf7d08
.Lf7ba6:
	mov	r0, #0
	add	r5, sp, #0x38
	mov	r8, r0
	mov	r2, #0
	mov	r3, r5
.Lf7bb0:
	mov	r1, #1
	add	r8, r1
	mov	r7, r8
	stmia	r3!, {r2}
	cmp	r7, #7
	bne	.Lf7bb0
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.Lf7c28
	mov	r2, #1
	str	r2, [r5, #0xc]
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r1]
	cmp	r3, #1
	ble	.Lf7bd6
	str	r2, [r5, #0x10]
	str	r2, [r5, #8]
	ldr	r3, [r1]
.Lf7bd6:
	cmp	r3, #2
	ble	.Lf7be2
	str	r2, [r5, #0x14]
	str	r2, [r5, #4]
	ldr	r7, [sp, #0x1c]
	ldr	r3, [r7]
.Lf7be2:
	cmp	r3, #3
	ble	.Lf7c4c
	str	r2, [r5, #0x18]
	str	r2, [r5]
	b	.Lf7c4c

	.pool_aligned

.Lf7c28:
	mov	r3, r11
	mov	r0, r8
	and	r3, r0
	cmp	r3, #3
	bgt	.Lf7c4c
	ldr	r2, [sp, #0x20]
	mov	r1, #0
	mov	r8, r1
	mov	r0, r5
	add	r2, #0xac
.Lf7c3c:
	ldmia	r2!, {r3}
	str	r3, [r1, r0]
	mov	r3, #1
	add	r8, r3
	mov	r7, r8
	add	r1, #4
	cmp	r7, #7
	bne	.Lf7c3c
.Lf7c4c:
	mov	r0, #0
	mov	r8, r0
.Lf7c50:
	mov	r2, #1
	mov	r1, r8
	eor	r2, r1
	neg	r3, r2
	orr	r3, r2
	lsr	r6, r3, #31
	mov	r3, #0x41
	sub	r6, r3, r6
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.Lf7c76
	mov	r3, r8
	add	r3, #0x13
	mov	r0, #0x14
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_f62b8
.Lf7c76:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.Lf7c8c
	mov	r3, r8
	add	r3, #0x23
	mov	r0, #0x1c
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_f62b8
.Lf7c8c:
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	beq	.Lf7ca2
	mov	r3, r8
	add	r3, #0x33
	mov	r0, #0x14
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_f62b8
.Lf7ca2:
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	beq	.Lf7cb8
	mov	r3, r8
	add	r3, #0x43
	mov	r0, #0x1c
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_f62b8
.Lf7cb8:
	ldr	r3, [r5, #0x14]
	cmp	r3, #0
	beq	.Lf7cce
	mov	r3, r8
	add	r3, #0x53
	mov	r0, #0x14
	mov	r1, r3
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_f62b8
.Lf7cce:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lf7ce6
	mov	r1, r8
	mov	r3, r8
	add	r1, #5
	add	r3, #0x5b
	mov	r0, #0x1c
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_f62b8
.Lf7ce6:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	beq	.Lf7cfe
	mov	r1, r8
	mov	r3, r8
	add	r1, #0x61
	add	r3, #0xb
	mov	r0, #0x1c
	mov	r2, #0xc8
	str	r6, [sp]
	bl	Func_f62b8
.Lf7cfe:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #3
	bne	.Lf7c50
.Lf7d08:
	ldr	r7, [sp, #0x24]
	ldr	r0, =0x7824
	mov	r2, #1
	add	r3, r7, r0
	str	r2, [r3]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	mov	r1, #1
	add	r11, r1
	cmp	r3, #0xa
	beq	.Lf7d26
	b	.Lf79e4
.Lf7d26:
	mov	r3, #0
	mov	r6, #0x80
	mov	r8, r3
	lsl	r6, #1
.Lf7d2e:
	mov	r7, r8
	mov	r5, #0x80
	lsl	r3, r7, #12
	lsl	r5, #9
	sub	r5, r3
	ldr	r0, [sp, #0x18]
	ldr	r1, =0x5000200
	mov	r2, r5
	mov	r3, r6
	bl	Func_f6038
	mov	r1, #0xa0
	lsl	r1, #19
	ldr	r0, [sp, #0x24]
	mov	r2, r5
	mov	r3, r6
	bl	Func_f6038
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0x11
	bne	.Lf7d2e
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_f60a0
	bl	Func_4278
	ldr	r0, =Func_f6440
	bl	Func_4278
	mov	r0, #0x2d
	bl	Func_2dd8
	mov	r0, #0x28
	bl	Func_2dd8
	mov	r0, #0x27
	bl	Func_2dd8
	mov	r0, #0x29
	bl	Func_2dd8
	add	sp, #0x74
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f7460

.thumb_func_start Func_f7db4
	push	{lr}
	ldr	r3, =ewram_4c00
	ldr	r3, [r3]
	ldr	r0, =0x3ff
	mov	r2, #0
	mov	r1, #0
	add	r3, #4
.Lf7dc2:
	str	r2, [r3, #4]
	add	r2, #1
	str	r1, [r3]
	add	r3, #0xc
	cmp	r2, r0
	ble	.Lf7dc2
	ldr	r3, =ewram_4c00
	mov	r2, #0xc0
	ldr	r3, [r3]
	lsl	r2, #6
	add	r3, r2
	mov	r1, #0
	mov	r2, #0xff
.Lf7ddc:
	sub	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #0
	bge	.Lf7ddc
	pop	{r0}
	bx	r0
.func_end Func_f7db4

.thumb_func_start Func_f7df0
	push	{r5, lr}
	ldr	r3, =ewram_4c00
	lsl	r1, r0, #1
	ldr	r4, [r3]
	ldr	r3, =0x3404
	add	r1, r0
	lsl	r0, #2
	add	r0, r3
	ldr	r2, [r4, r0]
	mov	r0, #0xc0
	lsl	r2, #2
	lsl	r1, #2
	add	r3, r4, r2
	lsl	r0, #6
	add	r3, r0
	add	r5, r1, #4
	str	r3, [r4, r5]
	add	r2, r0
	ldr	r3, [r4, r2]
	str	r3, [r4, r1]
	add	r3, r4, r1
	str	r3, [r4, r2]
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.Lf7e24
	str	r3, [r2, #4]
.Lf7e24:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_f7df0

.thumb_func_start Func_f7e34
	push	{lr}
	ldr	r3, =ewram_4c00
	ldr	r1, [r3]
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	add	r4, r3, #4
	ldr	r0, [r1, r4]
	cmp	r0, #0
	beq	.Lf7e56
	ldr	r2, [r1, r3]
	cmp	r2, #0
	beq	.Lf7e50
	str	r0, [r2, #4]
.Lf7e50:
	ldr	r2, [r1, r4]
	ldr	r3, [r1, r3]
	str	r3, [r2]
.Lf7e56:
	pop	{r0}
	bx	r0
.func_end Func_f7e34

.thumb_func_start Func_f7e60
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r6, #0
	mov	r10, r0
	mov	r11, r2
	cmp	r6, r8
	bge	.Lf7ed8
	ldr	r0, =0x3ff
	mov	r7, #0x92
	lsl	r7, #1
	mov	r9, r0
	add	r7, r10
.Lf7e84:
	mov	r3, r9
	mov	r0, r7
	mov	r2, r10
	and	r0, r3
	add	r5, r2, r6
	bl	Func_f7e34
	ldr	r3, =ewram_4c00
	ldr	r0, =0x4438
	ldr	r1, [r3]
	add	r3, r1, r0
	ldr	r2, [r3]
	mov	r0, r11
	ldrb	r4, [r0, r2]
	add	r2, #1
	ldr	r0, =0x4440
	str	r2, [r3]
	add	r3, r1, r0
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.Lf7ec0
	mov	r2, r9
	and	r5, r2
	ldr	r0, =0x3404
	lsl	r3, r5, #2
	mov	r2, #1
	add	r3, r0
	neg	r2, r2
	str	r2, [r1, r3]
	b	.Lf7ed8
.Lf7ec0:
	mov	r0, r9
	and	r0, r5
	ldr	r2, =0x3404
	lsl	r3, r0, #2
	add	r3, r2
	str	r4, [r1, r3]
	add	r6, #1
	bl	Func_f7df0
	add	r7, #1
	cmp	r6, r8
	blt	.Lf7e84
.Lf7ed8:
	add	r6, #1
	cmp	r6, r8
	bge	.Lf7f0a
	ldr	r3, =0x3ff
	ldr	r0, =ewram_4c00
	mov	r7, #1
	mov	r11, r3
	mov	r9, r0
	neg	r7, r7
.Lf7eea:
	mov	r2, r10
	add	r5, r2, r6
	mov	r3, r11
	and	r5, r3
	mov	r0, r5
	bl	Func_f7e34
	mov	r0, r9
	ldr	r2, =0x3404
	ldr	r3, [r0]
	lsl	r5, #2
	add	r5, r2
	add	r6, #1
	str	r7, [r3, r5]
	cmp	r6, r8
	blt	.Lf7eea
.Lf7f0a:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_f7e60

.thumb_func_start Func_f7f30
	push	{r5, r6, lr}
	ldr	r3, =ewram_4c00
	ldr	r1, =0x4404
	ldr	r2, [r3]
	add	r3, r2, r1
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, #0
	cmp	r3, #0
	beq	.Lf7f64
	ldr	r3, =0x443c
	add	r4, r2, r3
	sub	r3, #0x34
	add	r5, r2, r1
	add	r1, r2, r3
.Lf7f4e:
	ldrb	r3, [r1]
	ldr	r2, [r4]
	strb	r3, [r6, r2]
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	ldr	r3, [r5]
	add	r0, #1
	add	r1, #1
	cmp	r0, r3
	bne	.Lf7f4e
.Lf7f64:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_f7f30

.thumb_func_start Func_f7f78
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	ldr	r5, =ewram_4c00
	ldr	r3, =ewram_10000
	str	r0, [sp, #0x28]
	mov	r0, #0
	str	r1, [sp, #0x24]
	str	r0, [sp, #0x20]
	str	r3, [r5]
	mov	r6, r2
	bl	Func_f7db4
	ldr	r2, [r5]
	ldr	r1, =0x4440
	add	r3, r2, r1
	str	r6, [r3]
	ldr	r6, =0x4434
	ldr	r4, [sp, #0x20]
	ldr	r7, =0x4438
	add	r3, r2, r6
	ldr	r0, =0x443c
	str	r4, [r3]
	add	r3, r2, r7
	str	r4, [r3]
	add	r3, r2, r0
	str	r4, [r3]
	mov	r3, #0xd0
	lsl	r3, #6
	ldr	r4, =0x4408
	add	r7, sp, #0x20
	add	r1, r2, r3
	ldrb	r7, [r7]
	mov	r3, #0x80
	str	r3, [r1]
	sub	r0, #0x38
	add	r3, r2, r4
	strb	r7, [r3]
	add	r2, r0
	mov	r3, #1
	str	r3, [r2]
	mov	r1, #0xa8
	lsl	r1, #2
	ldr	r2, [sp, #0x28]
	mov	r0, #0
	bl	Func_f7e60
	ldr	r2, [r5]
	ldr	r3, [r2, r6]
	ldr	r1, =0x3404
	lsl	r3, #2
	add	r3, r1
	ldr	r3, [r2, r3]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	bne	.Lf7ff6
	b	.Lf868a
.Lf7ff6:
	ldr	r0, =ewram_4c00
	ldr	r4, =0x4434
	ldr	r1, [r0]
	add	r3, r1, r4
	ldr	r3, [r3]
	ldr	r5, =0x4430
	mov	r12, r3
	add	r2, r1, r5
	mov	r3, #1
	str	r3, [r2]
	mov	r7, r12
	ldr	r2, =0x3404
	lsl	r3, r7, #2
	add	r3, r2
	mov	r4, #1
	ldr	r3, [r1, r3]
	neg	r4, r4
	cmp	r3, r4
	bne	.Lf801e
	b	.Lf816e
.Lf801e:
	mov	r5, #0xc0
	lsl	r3, #2
	lsl	r5, #6
	add	r3, r5
	ldr	r6, [r1, r3]
	mov	r3, #0x88
	lsl	r3, #1
	ldr	r7, =0x3ff
	add	r3, r12
	cmp	r3, r7
	ble	.Lf80d4
	cmp	r6, #0
	bne	.Lf803a
	b	.Lf816e
.Lf803a:
	ldr	r2, [r6, #8]
	mov	r0, r12
	ldr	r1, =0x3ff
	sub	r7, r0, r2
	and	r7, r1
	sub	r3, r7, #1
	cmp	r3, #0x3e
	bhi	.Lf80cc
	ldr	r3, =ewram_4c00
	ldr	r0, =0x3ff
	mov	r5, r2
	mov	r2, r12
	add	r2, #1
	ldr	r1, [r3]
	mov	r14, r3
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, #1
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	mov	r4, #1
	cmp	r2, r1
	bne	.Lf80ae
.Lf807c:
	ldr	r1, =0x10f
	add	r4, #1
	cmp	r4, r1
	bgt	.Lf80ae
	mov	r2, r14
	mov	r3, r12
	ldr	r1, [r2]
	add	r2, r3, r4
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, r4
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	cmp	r2, r1
	beq	.Lf807c
.Lf80ae:
	ldr	r5, =ewram_4c00
	ldr	r0, =0x4430
	ldr	r2, [r5]
	add	r1, r2, r0
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf80cc
	ldr	r5, =0x442c
	add	r3, r2, r5
	str	r7, [r3]
	mov	r7, #0x88
	lsl	r7, #1
	str	r4, [r1]
	cmp	r4, r7
	beq	.Lf816e
.Lf80cc:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf803a
	b	.Lf816e
.Lf80d4:
	cmp	r6, #0
	beq	.Lf816e
	mov	r2, r12
	ldr	r4, =0x3408
	lsl	r3, r2, #2
	ldr	r0, =0x3ff
	ldr	r1, =ewram_4c00
	add	r4, r3, r4
	mov	r2, r3
	str	r4, [sp, #8]
	mov	r9, r0
	mov	r10, r1
	mov	r11, r2
.Lf80ee:
	ldr	r0, [r6, #8]
	mov	r7, r12
	sub	r5, r7, r0
	mov	r1, r9
	and	r5, r1
	sub	r3, r5, #1
	cmp	r3, #0x3e
	bhi	.Lf8168
	mov	r2, r10
	mov	r7, r9
	add	r3, r0, #1
	ldr	r1, [r2]
	and	r3, r7
	ldr	r2, =0x3404
	lsl	r3, #2
	ldr	r7, [sp, #8]
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r7]
	mov	r4, #1
	cmp	r2, r3
	bne	.Lf814a
	ldr	r1, =ewram_4c00
	mov	r7, r0
	ldr	r2, =0x3ff
	ldr	r0, =0x3408
	mov	r8, r1
	mov	r14, r2
	add	r0, r11
.Lf8128:
	ldr	r3, =0x10f
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	bgt	.Lf814a
	mov	r2, r8
	ldr	r1, [r2]
	add	r3, r7, r4
	mov	r2, r14
	and	r3, r2
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r0]
	cmp	r2, r3
	beq	.Lf8128
.Lf814a:
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r7, =0x4430
	add	r1, r2, r7
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf8168
	ldr	r0, =0x442c
	add	r3, r2, r0
	str	r5, [r3]
	str	r4, [r1]
	mov	r1, #0x88
	lsl	r1, #1
	cmp	r4, r1
	beq	.Lf816e
.Lf8168:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf80ee
.Lf816e:
	ldr	r2, [sp, #0x20]
	cmp	r2, #0
	beq	.Lf8176
	b	.Lf84fe
.Lf8176:
	ldr	r3, =ewram_4c00
	ldr	r4, =0x4430
	ldr	r2, [r3]
	add	r1, r2, r4
	ldr	r5, [r1]
	str	r5, [sp, #0x1c]
	cmp	r5, #1
	bgt	.Lf8188
	b	.Lf85ee
.Lf8188:
	ldr	r7, =0x442c
	add	r3, r2, r7
	ldr	r3, [r3]
	ldr	r0, =0x4434
	str	r3, [sp, #0x18]
	str	r5, [sp, #0x14]
	add	r3, r2, r0
	ldr	r3, [r3]
	ldr	r4, =0x3ff
	add	r3, #1
	and	r3, r4
	mov	r12, r3
	mov	r5, r12
	mov	r3, #1
	ldr	r7, =0x3404
	str	r3, [r1]
	lsl	r3, r5, #2
	add	r3, r7
	mov	r0, #1
	ldr	r3, [r2, r3]
	neg	r0, r0
	cmp	r3, r0
	bne	.Lf81b8
	b	.Lf833e
.Lf81b8:
	mov	r1, #0xc0
	lsl	r3, #2
	lsl	r1, #6
	add	r3, r1
	ldr	r6, [r2, r3]
	mov	r3, #0x88
	lsl	r3, #1
	add	r3, r12
	cmp	r3, r4
	ble	.Lf82a4
	cmp	r6, #0
	bne	.Lf81d2
	b	.Lf833e
.Lf81d2:
	ldr	r2, [r6, #8]
	mov	r3, r12
	ldr	r4, =0x3ff
	sub	r7, r3, r2
	and	r7, r4
	sub	r3, r7, #1
	cmp	r3, #0x3e
	bhi	.Lf8266
	ldr	r5, =ewram_4c00
	mov	r14, r5
	mov	r5, r2
	mov	r2, r14
	ldr	r1, [r2]
	ldr	r0, =0x3ff
	mov	r2, r12
	add	r2, #1
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, #1
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	mov	r4, #1
	cmp	r2, r1
	bne	.Lf8248
.Lf8216:
	ldr	r1, =0x10f
	add	r4, #1
	cmp	r4, r1
	bgt	.Lf8248
	mov	r2, r14
	mov	r3, r12
	ldr	r1, [r2]
	add	r2, r3, r4
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, r4
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	cmp	r2, r1
	beq	.Lf8216
.Lf8248:
	ldr	r5, =ewram_4c00
	ldr	r0, =0x4430
	ldr	r2, [r5]
	add	r1, r2, r0
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf8266
	ldr	r5, =0x442c
	add	r3, r2, r5
	str	r7, [r3]
	mov	r7, #0x88
	lsl	r7, #1
	str	r4, [r1]
	cmp	r4, r7
	beq	.Lf833e
.Lf8266:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf81d2
	b	.Lf833e

	.pool_aligned

.Lf82a4:
	cmp	r6, #0
	beq	.Lf833e
	mov	r2, r12
	ldr	r4, =0x3408
	lsl	r3, r2, #2
	ldr	r0, =0x3ff
	ldr	r1, =ewram_4c00
	add	r4, r3, r4
	mov	r2, r3
	str	r4, [sp, #4]
	mov	r9, r0
	mov	r10, r1
	mov	r11, r2
.Lf82be:
	ldr	r0, [r6, #8]
	mov	r7, r12
	sub	r5, r7, r0
	mov	r1, r9
	and	r5, r1
	sub	r3, r5, #1
	cmp	r3, #0x3e
	bhi	.Lf8338
	mov	r2, r10
	mov	r7, r9
	add	r3, r0, #1
	ldr	r1, [r2]
	and	r3, r7
	ldr	r2, =0x3404
	lsl	r3, #2
	ldr	r7, [sp, #4]
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r7]
	mov	r4, #1
	cmp	r2, r3
	bne	.Lf831a
	ldr	r1, =ewram_4c00
	mov	r7, r0
	ldr	r2, =0x3ff
	ldr	r0, =0x3408
	mov	r8, r1
	mov	r14, r2
	add	r0, r11
.Lf82f8:
	ldr	r3, =0x10f
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	bgt	.Lf831a
	mov	r2, r8
	ldr	r1, [r2]
	add	r3, r7, r4
	mov	r2, r14
	and	r3, r2
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r0]
	cmp	r2, r3
	beq	.Lf82f8
.Lf831a:
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r7, =0x4430
	add	r1, r2, r7
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf8338
	ldr	r0, =0x442c
	add	r3, r2, r0
	str	r5, [r3]
	str	r4, [r1]
	mov	r1, #0x88
	lsl	r1, #1
	cmp	r4, r1
	beq	.Lf833e
.Lf8338:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf82be
.Lf833e:
	ldr	r3, =ewram_4c00
	ldr	r4, =0x4430
	ldr	r2, [r3]
	add	r1, r2, r4
	ldr	r3, [r1]
	cmp	r3, #2
	bgt	.Lf834e
	b	.Lf84ea
.Lf834e:
	ldr	r5, =0x4434
	add	r3, #1
	str	r3, [sp, #0xc]
	add	r3, r2, r5
	ldr	r3, [r3]
	ldr	r7, [sp, #0x1c]
	add	r3, r7
	mov	r12, r3
	ldr	r3, =0x3ff
	mov	r0, r12
	and	r0, r3
	ldr	r4, =0x3404
	mov	r3, #1
	str	r3, [r1]
	lsl	r3, r0, #2
	add	r3, r4
	mov	r5, #1
	ldr	r3, [r2, r3]
	neg	r5, r5
	mov	r12, r0
	cmp	r3, r5
	bne	.Lf837c
	b	.Lf84ce
.Lf837c:
	mov	r7, #0xc0
	lsl	r3, #2
	lsl	r7, #6
	add	r3, r7
	ldr	r6, [r2, r3]
	mov	r3, #0x88
	lsl	r3, #1
	ldr	r0, =0x3ff
	add	r3, r12
	cmp	r3, r0
	ble	.Lf8434
	cmp	r6, #0
	bne	.Lf8398
	b	.Lf84ce
.Lf8398:
	ldr	r2, [r6, #8]
	ldr	r3, =0x3ff
	mov	r1, r12
	sub	r7, r1, r2
	and	r7, r3
	sub	r3, r7, #1
	cmp	r3, #0x3e
	bhi	.Lf842c
	ldr	r5, =ewram_4c00
	mov	r14, r5
	mov	r5, r2
	mov	r2, r14
	ldr	r1, [r2]
	ldr	r0, =0x3ff
	mov	r2, r12
	add	r2, #1
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, #1
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	mov	r4, #1
	cmp	r2, r1
	bne	.Lf840e
.Lf83dc:
	ldr	r1, =0x10f
	add	r4, #1
	cmp	r4, r1
	bgt	.Lf840e
	mov	r2, r14
	mov	r3, r12
	ldr	r1, [r2]
	add	r2, r3, r4
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, r4
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	cmp	r2, r1
	beq	.Lf83dc
.Lf840e:
	ldr	r5, =ewram_4c00
	ldr	r0, =0x4430
	ldr	r2, [r5]
	add	r1, r2, r0
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf842c
	ldr	r5, =0x442c
	add	r3, r2, r5
	str	r7, [r3]
	mov	r7, #0x88
	lsl	r7, #1
	str	r4, [r1]
	cmp	r4, r7
	beq	.Lf84ce
.Lf842c:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf8398
	b	.Lf84ce
.Lf8434:
	cmp	r6, #0
	beq	.Lf84ce
	mov	r2, r12
	ldr	r4, =0x3408
	lsl	r3, r2, #2
	ldr	r0, =0x3ff
	ldr	r1, =ewram_4c00
	add	r4, r3, r4
	mov	r2, r3
	str	r4, [sp]
	mov	r9, r0
	mov	r10, r1
	mov	r11, r2
.Lf844e:
	ldr	r0, [r6, #8]
	mov	r7, r12
	sub	r5, r7, r0
	mov	r1, r9
	and	r5, r1
	sub	r3, r5, #1
	cmp	r3, #0x3e
	bhi	.Lf84c8
	mov	r2, r10
	mov	r7, r9
	add	r3, r0, #1
	ldr	r1, [r2]
	and	r3, r7
	ldr	r2, =0x3404
	lsl	r3, #2
	ldr	r7, [sp]
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r7]
	mov	r4, #1
	cmp	r2, r3
	bne	.Lf84aa
	ldr	r1, =ewram_4c00
	mov	r7, r0
	ldr	r2, =0x3ff
	ldr	r0, =0x3408
	mov	r8, r1
	mov	r14, r2
	add	r0, r11
.Lf8488:
	ldr	r3, =0x10f
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	bgt	.Lf84aa
	mov	r2, r8
	ldr	r1, [r2]
	add	r3, r7, r4
	mov	r2, r14
	and	r3, r2
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r0]
	cmp	r2, r3
	beq	.Lf8488
.Lf84aa:
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r7, =0x4430
	add	r1, r2, r7
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf84c8
	ldr	r0, =0x442c
	add	r3, r2, r0
	str	r5, [r3]
	str	r4, [r1]
	mov	r1, #0x88
	lsl	r1, #1
	cmp	r4, r1
	beq	.Lf84ce
.Lf84c8:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf844e
.Lf84ce:
	ldr	r2, =ewram_4c00
	ldr	r4, =0x4430
	ldr	r3, [r2]
	add	r3, r4
	ldr	r3, [r3]
	ldr	r5, [sp, #0x1c]
	ldr	r7, [sp, #0xc]
	add	r3, r5
	str	r3, [sp, #0x10]
	cmp	r7, r3
	blt	.Lf84ea
	mov	r0, #1
	str	r0, [sp, #0x14]
	str	r0, [sp, #0x20]
.Lf84ea:
	ldr	r1, =ewram_4c00
	ldr	r4, =0x442c
	ldr	r2, [r1]
	ldr	r5, [sp, #0x18]
	add	r3, r2, r4
	str	r5, [r3]
	ldr	r7, =0x4430
	ldr	r0, [sp, #0x14]
	add	r2, r7
	str	r0, [r2]
.Lf84fe:
	ldr	r1, =ewram_4c00
	ldr	r2, =0x4430
	ldr	r5, [r1]
	add	r6, r5, r2
	ldr	r3, [r6]
	cmp	r3, #1
	ble	.Lf85ee
	mov	r3, #0
	ldr	r4, =0x4408
	mov	r7, #0xd0
	str	r3, [sp, #0x20]
	lsl	r7, #6
	add	r1, r5, r4
	add	r3, r5, r7
	ldr	r3, [r3]
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
	ldr	r0, [r6]
	cmp	r0, #0x10
	bgt	.Lf8594
	ldr	r1, =0x442c
	add	r3, r5, r1
	ldr	r2, [r3]
	ldr	r3, .Lf8564	@ 0xfffff000
	lsl	r1, r2, #4
	and	r1, r3
	mov	r3, #0xff
	and	r2, r3
	orr	r1, r2
	sub	r3, r0, #1
	ldr	r2, .Lf8568	@ 0xf00
	lsl	r3, #8
	and	r3, r2
	ldr	r2, =0x4404
	add	r0, r5, r2
	ldr	r2, [r0]
	orr	r1, r3
	lsl	r1, #16
	ldr	r7, =0x4408
	add	r3, r2, r4
	add	r2, #1
	asr	r4, r1, #16
	lsr	r1, #24
	strb	r1, [r5, r3]
	str	r2, [r0]
	add	r3, r2, r7
	add	r2, #1
	strb	r4, [r5, r3]
	str	r2, [r0]
	b	.Lf8618

	.align	2, 0
.Lf8564:
	.word	0xfffff000
.Lf8568:
	.word	0xf00
	.pool

.Lf8594:
	ldr	r0, =0x442c
	add	r3, r5, r0
	ldr	r1, [r3]
	ldr	r2, .Lf85d8	@ 0xfffff000
	lsl	r3, r1, #4
	and	r3, r2
	mov	r2, #0xff
	and	r1, r2
	orr	r3, r1
	ldr	r1, =0x4404
	lsl	r3, #16
	add	r0, r5, r1
	ldr	r2, [r0]
	asr	r4, r3, #16
	ldr	r3, =0x4408
	ldr	r7, =0x4408
	add	r1, r2, r3
	add	r2, #1
	lsr	r3, r4, #8
	strb	r3, [r5, r1]
	add	r3, r2, r7
	add	r1, r2, #1
	str	r2, [r0]
	strb	r4, [r5, r3]
	str	r1, [r0]
	ldr	r3, =0x4409
	add	r2, r3
	ldr	r3, [r6]
	add	r1, #1
	sub	r3, #0x11
	strb	r3, [r5, r2]
	str	r1, [r0]
	b	.Lf85ec

	.align	2, 0
.Lf85d8:
	.word	0xfffff000
	.pool

.Lf85ec:
	b	.Lf8618
.Lf85ee:
	ldr	r4, =ewram_4c00
	ldr	r5, =0x4404
	ldr	r2, [r4]
	add	r4, r2, r5
	add	r5, #0x30
	ldr	r1, [r4]
	ldr	r7, =0x4408
	add	r3, r2, r5
	ldr	r3, [r3]
	add	r0, r1, r7
	ldr	r7, =0x3404
	lsl	r3, #2
	add	r3, r7
	ldr	r3, [r2, r3]
	strb	r3, [r2, r0]
	ldr	r0, =0x4430
	add	r1, #1
	add	r2, r0
	mov	r3, #1
	str	r1, [r4]
	str	r3, [r2]
.Lf8618:
	ldr	r7, =ewram_4c00
	ldr	r5, =0x4434
	ldr	r3, [r7]
	ldr	r6, =0x4430
	ldr	r0, [r3, r5]
	mov	r1, #0xa8
	lsl	r1, #2
	add	r0, r1
	ldr	r2, [sp, #0x28]
	ldr	r1, [r3, r6]
	bl	Func_f7e60
	ldr	r1, [r7]
	add	r5, r1, r5
	ldr	r2, [r1, r6]
	ldr	r3, [r5]
	add	r3, r2
	ldr	r2, =0x3ff
	and	r3, r2
	str	r3, [r5]
	mov	r3, #0xd0
	lsl	r3, #6
	add	r1, r3
	ldr	r3, [r1]
	asr	r5, r3, #1
	str	r5, [r1]
	cmp	r5, #0
	bne	.Lf8670
	ldr	r0, [sp, #0x24]
	bl	Func_f7f30
	ldr	r2, [r7]
	mov	r4, #0xd0
	lsl	r4, #6
	add	r1, r2, r4
	mov	r3, #0x80
	ldr	r0, =0x4408
	str	r3, [r1]
	ldr	r1, =0x4404
	add	r3, r2, r0
	strb	r5, [r3]
	add	r2, r1
	mov	r3, #1
	str	r3, [r2]
.Lf8670:
	ldr	r2, [r7]
	ldr	r4, =0x4434
	add	r3, r2, r4
	ldr	r3, [r3]
	ldr	r5, =0x3404
	lsl	r3, #2
	add	r3, r5
	mov	r7, #1
	ldr	r3, [r2, r3]
	neg	r7, r7
	cmp	r3, r7
	beq	.Lf868a
	b	.Lf7ff6
.Lf868a:
	ldr	r6, =ewram_4c00
	ldr	r0, =0x4408
	ldr	r4, [r6]
	mov	r2, #0xd0
	lsl	r2, #6
	add	r1, r4, r0
	add	r3, r4, r2
	ldr	r3, [r3]
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =0x4404
	add	r1, r4, r3
	ldr	r3, [r1]
	mov	r5, #0
	add	r2, r3, r0
	add	r3, #1
	strb	r5, [r4, r2]
	add	r0, r3, r0
	str	r3, [r1]
	add	r3, #1
	strb	r5, [r4, r0]
	str	r3, [r1]
	ldr	r0, [sp, #0x24]
	bl	Func_f7f30
	ldr	r3, [r6]
	ldr	r4, =0x443c
	add	r3, r4
	ldr	r0, [r3]
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f7f78

	.section .rodata

.Lf86f8:
	.incrom	0xf86f8, 0xf870c
.Lf870c:
	.incrom 0xf870c, 0xf8712
.Lf8712:
	.incrom 0xf8712, 0xf871a
.Lf871a:
	.incrom 0xf871a, 0xf8728
.Lf8728:
	.incrom 0xf8728, 0xf8736
.Lf8736:
	.incrom 0xf8736, 0xf873e
