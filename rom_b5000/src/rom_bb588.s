	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_bb588
	push	{r5, lr}
	mov	r5, r0
	bl	_Func_77394
	ldr	r4, =0x12f
	mov	r1, r0
	mov	r2, #3
	mov	r0, #0
	add	r3, r1, r4
.Lbb59a:
	sub	r2, #1
	strb	r0, [r3]
	sub	r3, #1
	cmp	r2, #0
	bge	.Lbb59a
	ldr	r0, =0x131
	mov	r4, #0x99
	mov	r3, #0
	add	r2, r1, r0
	lsl	r4, #1
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r2, r1, r4
	strb	r3, [r2]
	mov	r0, r5
	bl	_Func_77428
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_bb588

.thumb_func_start Func_bb65c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	b	.Lbb674
.Lbb66e:
	mov	r0, #1
	bl	Func_30f8
.Lbb674:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lbb66e
	mov	r0, #0x80
	add	r7, sp, #4
	bl	Func_40b4
	mov	r1, #0
	str	r1, [sp]
	mov	r11, r0
.Lbb68a:
	ldr	r2, =iwram_1e40
	ldr	r5, [r2]
	mov	r3, #7
	lsr	r5, #2
	and	r5, r3
	ldr	r3, =Data_c3734
	lsl	r5, #7
	add	r5, r3
	ldr	r3, =iwram_1ee4
	ldr	r3, [r3]
	ldr	r6, =REG_WINOUT
	ldr	r1, [r3]
	ldr	r3, [r3, #4]
	mov	r0, r6
	mov	r10, r1
	mov	r1, #4
	mov	r8, r2
	mov	r9, r3
	bl	Func_39fc
	mov	r0, r6
	mov	r1, #0x10
	bl	Func_393c
	mov	r2, #0x10
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	mov	r3, #0xa4
	lsl	r3, #8
	str	r3, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #8]
	mov	r1, r5
	mov	r0, r11
	bl	Func_40d0
	ldr	r3, .Lbb704	@ 0x3ff
	ldr	r2, .Lbb708	@ 0xfffffc00
	and	r0, r3
	ldrh	r3, [r7, #8]
	and	r3, r2
	mov	r2, r10
	orr	r3, r0
	ldrh	r1, [r2, #0xc]
	mov	r2, r9
	strh	r3, [r7, #8]
	ldrh	r3, [r2, #4]
	lsl	r1, #3
	lsr	r3, #8
	add	r1, r3
	ldr	r3, .Lbb70c	@ 0x1ff
	add	r1, #4
	and	r1, r3
	ldr	r2, .Lbb710	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #6]
	mov	r3, r8
	b	.Lbb728

	.align	2, 0
.Lbb704:
	.word	0x3ff
.Lbb708:
	.word	0xfffffc00
.Lbb70c:
	.word	0x1ff
.Lbb710:
	.word	0xfffffe00
	.pool

.Lbb728:
	ldr	r0, [r3]
	lsl	r0, #12
	bl	Func_2322
	cmp	r0, #0
	bge	.Lbb738
	ldr	r1, =0x7fff
	add	r0, r1
.Lbb738:
	mov	r1, r10
	ldrh	r3, [r1, #0xe]
	asr	r2, r0, #15
	lsl	r3, #3
	mov	r1, r9
	add	r2, r3
	ldrh	r3, [r1, #6]
	lsr	r3, #8
	add	r3, r2
	add	r3, #6
	strb	r3, [r7, #4]
	mov	r1, #0xf0
	mov	r0, r7
	bl	Func_3dec
	ldr	r1, =iwram_1ae8
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lbb78a
	ldr	r3, =iwram_1c94
	ldr	r2, =0x303
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	bne	.Lbb78a
	ldr	r3, [sp]
	cmp	r3, #0xf
	ble	.Lbb77c
	ldr	r3, [r1]
	and	r3, r2
	cmp	r3, #0
	bne	.Lbb78a
.Lbb77c:
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp]
	add	r1, #1
	str	r1, [sp]
	b	.Lbb68a
.Lbb78a:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, r11
	bl	Func_3f3c
	mov	r0, #1
	bl	Func_30f8
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bb65c

.thumb_func_start Func_bb7c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0
	sub	sp, #0x14
	mov	r6, r1
	bl	_Func_21bc8
	mov	r11, r0
	str	r5, [sp]
	str	r6, [sp, #4]
	b	.Lbb7e8
.Lbb7e2:
	mov	r0, #1
	bl	Func_30f8
.Lbb7e8:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lbb7e2
	mov	r0, #0x80
	add	r5, sp, #8
	bl	Func_40b4
	mov	r2, sp
	ldrh	r2, [r2]
	ldr	r3, =iwram_1e40
	mov	r9, r2
	ldr	r7, =REG_WINOUT
	mov	r2, #4
	mov	r6, r0
	mov	r10, r3
	mov	r8, r2
.Lbb80a:
	mov	r0, r7
	mov	r1, #4
	bl	Func_39fc
	mov	r0, r7
	mov	r1, #0x10
	bl	Func_393c
	mov	r2, #0x10
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #23
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	mov	r1, r11
	mov	r0, r6
	bl	Func_40d0
	ldr	r3, .Lbb868	@ 0x3ff
	ldr	r2, .Lbb86c	@ 0xfffffc00
	and	r0, r3
	ldrh	r3, [r5, #8]
	and	r3, r2
	orr	r3, r0
	mov	r2, r10
	strh	r3, [r5, #8]
	ldr	r3, [r2]
	mov	r2, r8
	and	r3, r2
	lsr	r3, #1
	ldr	r2, =0xfffc
	add	r3, r9
	add	r3, r2
	ldr	r2, .Lbb870	@ 0x1ff
	ldr	r1, .Lbb874	@ 0xfffffe00
	and	r3, r2
	ldrh	r2, [r5, #6]
	and	r2, r1
	orr	r2, r3
	strh	r2, [r5, #6]
	mov	r2, r10
	ldr	r3, [r2]
	mov	r2, r8
	b	.Lbb888

	.align	2, 0
.Lbb868:
	.word	0x3ff
.Lbb86c:
	.word	0xfffffc00
.Lbb870:
	.word	0x1ff
.Lbb874:
	.word	0xfffffe00
	.pool

.Lbb888:
	and	r3, r2
	ldr	r2, [sp, #4]
	lsr	r3, #2
	sub	r3, r2, r3
	add	r3, #0xf8
	strb	r3, [r5, #4]
	mov	r0, r5
	mov	r1, #0xf0
	bl	Func_3dec
	ldr	r3, =iwram_1c94
	ldr	r2, =0x303
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	bne	.Lbb8b0
	mov	r0, #1
	bl	Func_30f8
	b	.Lbb80a
.Lbb8b0:
	mov	r0, r6
	bl	Func_3f3c
	mov	r0, #1
	bl	Func_30f8
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bb7c0

.thumb_func_start Func_bb8d8
	ldr	r3, =iwram_1ee4
	ldr	r2, [r3]
	mov	r3, #1
	str	r3, [r2, #8]
	bx	lr
.func_end Func_bb8d8

.thumb_func_start Func_bb8e8
	push	{r5, lr}
	mov	r5, r0
	bl	_Func_77394
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lbb922
	mov	r1, #0
	bl	_Func_782a0
	mov	r0, r5
	bl	Func_bac6c
	mov	r0, r5
	bl	Func_b7e60
	mov	r0, r5
	bl	Func_b7dd0
	mov	r5, r0
	ldr	r0, [r5]
	bl	_Func_c0f4
	mov	r3, #0
	str	r3, [r5]
	strh	r3, [r5, #0x28]
.Lbb922:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_bb8e8

.thumb_func_start Func_bb928
	mov	r3, #0xb6
	lsl	r3, #1
	add	r0, r3
	ldr	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	str	r3, [r0]
	bx	lr
.func_end Func_bb928

.thumb_func_start Func_bb938
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e74
	mov	r2, #0xd7
	ldr	r3, [r3]
	lsl	r2, #3
	add	r6, r3, r2
	ldr	r2, =0x7fc
	add	r3, r2
	ldr	r3, [r3]
	mov	r7, #0
	cmp	r7, r3
	blt	.Lbb952
	b	.Lbba98
.Lbb952:
	ldrb	r3, [r6, r7]
	cmp	r3, #0xd
	bls	.Lbb95a
	b	.Lbba88
.Lbb95a:
	ldr	r2, =.Lbb964
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbb964:
	.word	.Lbb9b6
	.word	.Lbb9c4
	.word	.Lbb9d2
	.word	.Lbb9de
	.word	.Lbb9fa
	.word	.Lbba12
	.word	.Lbb9f0
	.word	.Lbba0c
	.word	.Lbba22
	.word	.Lbba42
	.word	.Lbba62
	.word	.Lbba70
	.word	.Lbb9aa
	.word	.Lbb99c
.Lbb99c:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r1, [r6, r3]
	mov	r0, r6
	bl	Func_bb928
	b	.Lbba88
.Lbb9aa:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	bl	Func_bb8e8
	b	.Lbba88
.Lbb9b6:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	mov	r1, #1
	bl	_Func_19908
	b	.Lbba88
.Lbb9c4:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	mov	r1, #5
	bl	_Func_19908
	b	.Lbba88
.Lbb9d2:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	ldr	r3, =0x1ff
	mov	r1, #2
	b	.Lbb9e8
.Lbb9de:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	ldr	r3, =0x3fff
	mov	r1, #4
.Lbb9e8:
	and	r0, r3
	bl	_Func_19908
	b	.Lbba88
.Lbb9f0:
	ldr	r3, =iwram_1ee4
	ldr	r2, [r3]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.Lbba88
.Lbb9fa:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	cmp	r0, #0
	blt	.Lbba08
	bl	_Func_175a0
.Lbba08:
	bl	Func_bb65c
.Lbba0c:
	bl	_Func_198dc
	b	.Lbba88
.Lbba12:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	cmp	r0, #0
	blt	.Lbba0c
	bl	_Func_175a0
	b	.Lbba0c
.Lbba22:
	mov	r2, #0xb4
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r0, [r3]
	cmp	r0, #0
	ble	.Lbba32
	bl	_Func_f9080
.Lbba32:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	mov	r1, #0
	mov	r2, #0
	bl	Func_babdc
	b	.Lbba88
.Lbba42:
	mov	r2, #0xb6
	lsl	r2, #1
	lsl	r5, r7, #2
	add	r5, #0x40
	add	r3, r6, r2
	ldr	r1, [r3]
	ldr	r0, [r6, r5]
	bl	Func_c24f0
	ldr	r0, [r6, r5]
	bl	Func_bb588
	ldr	r0, [r6, r5]
	bl	Func_bace8
	b	.Lbba88
.Lbba62:
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_1f200
	b	.Lbba88
.Lbba70:
	lsl	r5, r7, #2
	add	r5, #0x40
	ldr	r0, [r6, r5]
	bl	Func_b7dd0
	mov	r1, r0
	ldr	r0, [r6, r5]
	bl	Func_b78e4
	ldr	r0, [r6, r5]
	bl	Func_b7aac
.Lbba88:
	mov	r2, #0xa2
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r3, [r3]
	add	r7, #1
	cmp	r7, r3
	bge	.Lbba98
	b	.Lbb952
.Lbba98:
	bl	Func_bdfec
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bb938

.thumb_func_start Func_bbabc
	push	{r5, lr}
	ldr	r3, =iwram_1e74
	ldr	r4, [r3]
	mov	r3, #0xd7
	lsl	r3, #3
	add	r5, r4, r3
	ldr	r3, =0x7fc
	add	r4, r3
	ldr	r2, [r4]
	lsl	r3, r2, #2
	strb	r0, [r5, r2]
	add	r3, #0x40
	add	r2, #1
	str	r1, [r5, r3]
	str	r2, [r4]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_bbabc

.thumb_func_start Func_bbae8
	push	{lr}
	cmp	r0, #0x3c
	beq	.Lbbb00
	cmp	r0, #0x3c
	bgt	.Lbbafc
	cmp	r0, #0x20
	bgt	.Lbbb04
	cmp	r0, #0x1f
	blt	.Lbbb04
	b	.Lbbb00
.Lbbafc:
	cmp	r0, #0x45
	bne	.Lbbb04
.Lbbb00:
	mov	r0, #1
	b	.Lbbb06
.Lbbb04:
	mov	r0, #0
.Lbbb06:
	pop	{r1}
	bx	r1
.func_end Func_bbae8
