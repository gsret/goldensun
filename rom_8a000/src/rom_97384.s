	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_97384
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0x9a
	ldr	r5, [r3, #0x14]
	lsl	r2, #5
	ldr	r4, [r3]
	add	r0, r5, r2
	ldr	r2, =0x776
	ldr	r3, =REG_DMA3SAD
	add	r1, r4, r2
	ldr	r2, =0x84000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0xcb8
	add	r3, r4, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L973bc
	mov	r2, #0xe0
	lsl	r2, #4
	add	r0, r5, r2
	ldr	r2, =0x236
	ldr	r3, =REG_DMA3SAD
	add	r1, r4, r2
	ldr	r2, =0x84000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L973bc:
	mov	r2, #0xe0
	lsl	r2, #4
	add	r0, r5, r2
	mov	r2, #0xe0
	lsl	r2, #2
	add	r1, r5, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x840002a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1e40
	mov	r0, #0xa4
	ldr	r5, [r3]
	lsl	r0, #1
	mov	r3, #7
	and	r5, r3
	bl	_Func_79338
	cmp	r0, #0
	beq	.L973e6
	mov	r5, #0
.L973e6:
	ldr	r0, =0x149
	bl	_Func_79338
	cmp	r0, #0
	beq	.L973f2
	mov	r5, #1
.L973f2:
	mov	r0, #0xa5
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L97400
	mov	r5, #2
.L97400:
	ldr	r0, =0x14b
	bl	_Func_79338
	cmp	r0, #0
	beq	.L9740c
	mov	r5, #3
.L9740c:
	mov	r0, #0xa6
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L9741a
	mov	r5, #4
.L9741a:
	ldr	r0, =0x14d
	bl	_Func_79338
	cmp	r0, #0
	beq	.L97426
	mov	r5, #5
.L97426:
	mov	r0, #0xa7
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.L97434
	mov	r5, #6
.L97434:
	ldr	r0, =0x14f
	bl	_Func_79338
	cmp	r0, #0
	beq	.L97440
	mov	r5, #7
.L97440:
	ldr	r3, =.La0108
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	mov	r1, #1
	bl	Func_91200
	mov	r0, #8
	bl	Func_91254
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_97384

.thumb_func_start Func_9748c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =0x236
	ldr	r5, [r3]
	add	r6, r5, r2
	mov	r0, r6
	mov	r1, #2
	bl	Func_91200
	ldr	r3, =0xcb8
	add	r5, r3
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L974b4
	ldr	r0, =0x10001
	mov	r1, #1
	bl	Func_91200
	b	.L974bc
.L974b4:
	mov	r0, r6
	mov	r1, #1
	bl	Func_91200
.L974bc:
	mov	r0, #8
	bl	Func_91254
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_9748c

.thumb_func_start Func_974d8
	push	{r5, r6, lr}
	ldr	r2, =iwram_1ebc
	mov	r1, #0xcf
	ldr	r3, [r2]
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	sp, #0xc
	mov	r6, r0
	cmp	r3, #3
	bne	.L97504
	mov	r5, sp
	mov	r1, r5
	bl	Func_5268
	ldr	r3, [r5]
	lsl	r3, #16
	str	r3, [r6]
	ldr	r3, [r5, #4]
	lsl	r3, #16
	b	.L97528
.L97504:
	mov	r3, r2
	sub	r3, #0x4c
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0xe4
	add	r2, #0xe8
	ldr	r1, [r3]
	ldr	r0, [r2]
	ldr	r3, =0xffff0000
	and	r1, r3
	and	r0, r3
	ldr	r3, [r6]
	sub	r3, r1
	ldr	r2, [r6, #4]
	str	r3, [r6]
	ldr	r3, [r6, #8]
	sub	r3, r2
	sub	r3, r0
.L97528:
	str	r3, [r6, #8]
	mov	r3, #0
	str	r3, [r6, #4]
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_974d8

.thumb_func_start Func_97540
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r1
	mov	r1, #0xa6
	lsl	r1, #2
	mov	r6, r0
	mov	r0, #0x16
	sub	sp, #4
	bl	Func_48f4
	mov	r5, r0
	bl	Func_97384
	mov	r3, #0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850000a6
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1e40
	ldr	r0, [r3]
	mov	r1, #0xb4
	lsl	r1, #1
	lsl	r0, #1
	bl	Func_b50_from_thumb
	ldr	r2, =0x28e
	add	r3, r5, r2
	strh	r0, [r3]
	bl	Func_978c4
	ldr	r2, =0x28d
	add	r3, r5, r2
	sub	r2, #1
	mov	r0, #0
	ldrsb	r0, [r3, r0]
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	sub	r2, #1
	lsl	r3, #5
	lsl	r0, #10
	orr	r0, r3
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	orr	r0, r3
	mov	r3, #0x80
	lsl	r3, #14
	orr	r0, r3
	mov	r1, #1
	bl	Func_91200
	mov	r0, #8
	bl	Func_91254
	mov	r2, #0xa4
	lsl	r2, #2
	add	r3, r5, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r5, r2
	mov	r2, r8
	strh	r2, [r3]
	mov	r3, #0xa5
	lsl	r3, #2
	add	r5, r3
	mov	r3, #8
	strb	r3, [r5]
	bl	Func_97a7c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_97644
	bl	Func_41d8
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_97540

.thumb_func_start Func_97608
	push	{r5, lr}
	ldr	r3, =iwram_1ea8
	ldr	r5, [r3]
	bl	Func_97adc
	ldr	r0, =Func_97644
	bl	Func_4278
	mov	r3, #0xa4
	lsl	r3, #2
	add	r5, r3
	ldrh	r0, [r5]
	bl	Func_92054
	mov	r1, #1
	bl	Func_8e0b0
	bl	Func_9748c
	mov	r0, #0x16
	bl	Func_2dd8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_97608

.thumb_func_start Func_97644
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ea8
	mov	r0, #0xa5
	ldr	r7, [r3]
	lsl	r0, #2
	add	r1, r7, r0
	ldrb	r2, [r1]
	mov	r3, r2
	sub	sp, #0x18
	cmp	r3, #0
	beq	.L97670
	add	r3, #0xff
	strb	r3, [r1]
	b	.L97856

	.pool_aligned

.L97670:
	ldr	r1, =0x28a
	add	r3, r7, r1
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #4
	add	r3, r2
	lsl	r3, #2
	add	r6, r7, r3
	mov	r5, #0
.L97688:
	mov	r2, #0xa2
	lsl	r2, #2
	add	r3, r7, r2
	ldrh	r0, [r3]
	lsl	r3, r5, #3
	add	r0, r3
	mov	r1, #0xa0
	lsl	r0, #16
	bl	Func_b60_from_thumb
	bl	Func_2322
	add	r5, #1
	asr	r0, #14
	strh	r0, [r6]
	add	r6, #2
	cmp	r5, #0x9f
	bls	.L97688
	mov	r3, #0xa2
	lsl	r3, #2
	add	r2, r7, r3
	ldrh	r3, [r2]
	ldr	r4, =0x28a
	add	r3, #4
	strh	r3, [r2]
	add	r1, r7, r4
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	cmp	r3, #0
	beq	.L97704
	ldr	r0, =0x28d
	mov	r1, #0xa3
	add	r3, r7, r0
	lsl	r1, #2
	mov	r0, #0
	ldrsb	r0, [r3, r0]
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r2, =0x28b
	lsl	r3, #5
	lsl	r0, #10
	orr	r0, r3
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	orr	r0, r3
	mov	r3, #0x80
	lsl	r3, #14
	orr	r0, r3
	mov	r1, #1
	bl	Func_91200
	mov	r0, #1
	bl	Func_91254
	bl	Func_978c4
.L97704:
	mov	r4, #0xa4
	lsl	r4, #2
	add	r3, r7, r4
	ldrh	r0, [r3]
	bl	Func_92054
	mov	r1, #0
	bl	Func_8e0b0
	ldr	r0, =0x295
	add	r3, r7, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L97728
	cmp	r3, #8
	beq	.L97728
	cmp	r3, #0x10
	bne	.L97806
.L97728:
	mov	r1, #0xa4
	lsl	r1, #2
	add	r5, r7, r1
	ldrh	r0, [r5]
	bl	Func_92054
	ldr	r2, =0x292
	add	r2, r7
	mov	r6, r0
	ldrh	r0, [r2]
	mov	r11, r2
	bl	Func_92054
	mov	r9, r0
	cmp	r6, #0
	beq	.L97806
	cmp	r0, #0
	beq	.L97806
	add	r3, sp, #0xc
	mov	r10, r3
	ldr	r3, [r6, #8]
	mov	r4, r10
	str	r3, [r4]
	ldrh	r0, [r5]
	bl	Func_8d394
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	bl	_Func_185008
	mov	r2, #8
	ldrsb	r2, [r0, r2]
	ldr	r3, [r6, #0xc]
	lsl	r2, #16
	ldr	r5, =0xfffe0000
	add	r3, r2
	add	r3, r5
	mov	r2, r10
	str	r3, [r2, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r2, #8]
	mov	r4, r9
	ldr	r3, [r4, #8]
	mov	r1, r11
	ldrh	r0, [r1]
	mov	r8, sp
	str	r3, [sp]
	bl	Func_8d394
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	bl	_Func_185008
	mov	r4, r9
	mov	r3, #8
	ldrsb	r3, [r0, r3]
	ldr	r2, [r4, #0xc]
	lsl	r3, #16
	add	r2, r3
	mov	r0, r8
	add	r2, r5
	str	r2, [r0, #4]
	ldr	r3, [r4, #0x10]
	str	r3, [r0, #8]
	mov	r4, r8
	ldr	r0, =0x119
	ldr	r1, [r4]
	bl	_Func_c150
	mov	r6, r0
	cmp	r6, #0
	beq	.L97806
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	ldr	r5, [r6, #0x50]
	strb	r3, [r2]
	ldr	r3, =0xa3d7
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r2, r8
	mov	r1, r10
	ldr	r3, [r2, #8]
	ldr	r0, [r1, #8]
	ldr	r1, [r1]
	sub	r0, r3
	ldr	r3, [r2]
	sub	r1, r3
	bl	Func_44d0
	ldr	r3, =Func_97a54
	ldr	r2, .L97814	@ 0
	str	r3, [r6, #0x6c]
	mov	r3, r5
	add	r3, #0x26
	strb	r2, [r3]
	mov	r3, #0xd
	ldrb	r2, [r5, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strh	r0, [r6, #6]
	strb	r3, [r5, #9]
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	_Func_d14c
.L97806:
	ldr	r4, =0x295
	add	r5, r7, r4
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	bne	.L97844
	b	.L9783c

	.align	2, 0
.L97814:
	.word	0
	.pool

.L9783c:
	mov	r0, #0x82
	bl	_Func_f9080
	ldrb	r2, [r5]
.L97844:
	add	r3, r2, #1
	mov	r0, #0xf0
	strb	r3, [r5]
	lsl	r0, #22
	lsl	r3, #24
	cmp	r3, r0
	bls	.L97856
	mov	r3, #0
	strb	r3, [r5]
.L97856:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_97644

.thumb_func_start Func_97868
	push	{lr}
	ldr	r3, =iwram_1ea8
	mov	r2, #0xa5
	ldr	r4, [r3]
	lsl	r2, #2
	add	r3, r4, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L978a8
	sub	r2, #0xa
	add	r3, r4, r2
	ldrb	r3, [r3]
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #4
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	lsl	r0, #2
	ldrh	r2, [r3, #0xa]
	add	r0, r4, r0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0xa2600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L978a8:
	pop	{r0}
	bx	r0
.func_end Func_97868

.thumb_func_start Func_978c4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ea8
	ldr	r2, =0x28e
	ldr	r5, [r3]
	add	r6, r5, r2
	ldrh	r0, [r6]
	sub	sp, #0xc
	mov	r7, #0
	lsl	r0, #16
	add	r1, sp, #8
	add	r2, sp, #4
	mov	r3, sp
	str	r7, [sp, #8]
	str	r7, [sp, #4]
	str	r7, [sp]
	bl	Func_97948
	ldr	r3, [sp, #8]
	ldr	r2, =0x28b
	asr	r3, #18
	add	r4, r5, r2
	add	r3, #4
	strb	r3, [r4]
	ldr	r3, [sp, #4]
	add	r2, #1
	asr	r3, #18
	add	r0, r5, r2
	add	r3, #4
	strb	r3, [r0]
	ldr	r3, [sp]
	add	r2, #1
	asr	r3, #18
	add	r5, r2
	add	r3, #4
	strb	r3, [r5]
	ldrh	r3, [r6]
	add	r3, #4
	strh	r3, [r6]
	mov	r2, #0x1f
	ldrb	r1, [r4]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r4]
	ldrb	r1, [r0]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r0]
	ldrb	r3, [r5]
	and	r2, r3
	strb	r2, [r5]
	mov	r2, #0xb4
	ldrh	r3, [r6]
	lsl	r2, #1
	cmp	r3, r2
	bcc	.L97934
	strh	r7, [r6]
.L97934:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_978c4

.thumb_func_start Func_97948
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r9, r3
	mov	r6, #0xf8
	mov	r3, #0xf0
	lsl	r6, #13
	mov	r5, r0
	lsl	r3, #15
	mov	r8, r1
	mov	r10, r2
	add	r0, r5, r3
	mov	r2, r6
	mov	r1, #0
	bl	Func_979a4
	mov	r3, r8
	str	r0, [r3]
	mov	r2, r6
	mov	r0, r5
	mov	r1, #0
	bl	Func_979a4
	mov	r3, r10
	str	r0, [r3]
	ldr	r3, =0xff880000
	add	r5, r3
	mov	r0, r5
	mov	r1, #0
	mov	r2, r6
	bl	Func_979a4
	mov	r3, r9
	str	r0, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_97948

.thumb_func_start Func_979a4
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r1, #0xb4
	lsl	r1, #17
	mov	r5, r2
	bl	Func_97a10
	ldr	r2, =0x3bffff
	mov	r4, r0
	cmp	r4, r2
	bgt	.L979c2
	ldr	r3, =Func_888
	mov	r0, r5
	mov	r1, r4
	b	.L979e0
.L979c2:
	ldr	r1, =0xffc40000
	add	r3, r4, r1
	mov	r1, #0xf0
	lsl	r1, #15
	mov	r0, r5
	cmp	r3, r1
	bcc	.L979f4
	ldr	r1, =0xff4c0000
	add	r3, r4, r1
	cmp	r3, r2
	bhi	.L979f2
	mov	r1, #0xf0
	lsl	r1, #16
	ldr	r3, =Func_888
	sub	r1, r4
	.align	2, 0
.L979e0:
	mov	r12, pc
	bx	r3
	mov	r1, r0
	mov	r0, #0xf0
	ldr	r3, =Func_8ac
	lsl	r0, #14
	bl	_call_via_r3
	b	.L979f4
.L979f2:
	mov	r0, r6
.L979f4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_979a4

.thumb_func_start Func_97a10
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.L97a42
	mov	r3, #0xf0
	lsl	r3, #24
	and	r3, r5
	cmp	r3, #0
	beq	.L97a28
	neg	r5, r5
.L97a28:
	mov	r1, r6
	ldr	r3, =Func_8ac
	mov	r0, r5
	bl	_call_via_r3
	ldr	r3, =0xffff0000
	ldr	r4, =Func_888
	and	r0, r3
	mov	r1, r5
	.call_via r4
	sub	r0, r6, r0
.L97a42:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_97a10

.thumb_func_start Func_97a54
	push	{lr}
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L97a72
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L97a72
	ldr	r3, [r0, #0x40]
	cmp	r3, r2
	bne	.L97a72
	ldr	r1, =.La0128
	bl	_Func_c2d8
.L97a72:
	pop	{r0}
	bx	r0
.func_end Func_97a54

.thumb_func_start Func_97a7c
	push	{lr}
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xea4
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	ldr	r2, .L97ac4	@ 0x739c
	ldr	r3, =0x50001e2
	strh	r2, [r3]
	add	r3, #4
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, #0x90
	add	r3, #2
	strh	r2, [r3]
	lsl	r1, #3
	ldr	r0, =Func_97868
	bl	Func_41d8
	b	.L97ad8

	.align	2, 0
.L97ac4:
	.word	0x739c
	.pool

.L97ad8:
	pop	{r0}
	bx	r0
.func_end Func_97a7c

.thumb_func_start Func_97adc
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e8c
	ldr	r0, =Func_97868
	ldr	r5, [r3]
	bl	Func_4278
	ldr	r2, =0x50001e2
	ldr	r3, .L97b1c	@ 0x7fff
	ldr	r6, .L97b20	@ 0
	strh	r3, [r2]
	ldr	r3, =0x50001e6
	strh	r6, [r3]
	ldr	r3, .L97b24	@ 0x294a
	add	r2, #0x14
	strh	r3, [r2]
	ldr	r3, .L97b28	@ 0x5294
	add	r2, #2
	strh	r3, [r2]
	ldr	r1, =0x205
	ldr	r3, =ewram_240
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	bl	_Func_1ccc0
	ldr	r3, =0xea4
	add	r5, r3
	strb	r6, [r5]
	b	.L97b4c

	.align	2, 0
.L97b1c:
	.word	0x7fff
.L97b20:
	.word	0
.L97b24:
	.word	0x294a
.L97b28:
	.word	0x5294
	.pool

.L97b4c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_97adc

	.section .rodata

.La0108:
	.incrom 0xa0108, 0xa0128
.La0128:
	.incrom 0xa0128, 0xa012c
