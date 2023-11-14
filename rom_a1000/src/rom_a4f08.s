	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_a4f08
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x14]
	ldr	r3, =iwram_1f2c
	mov	r1, #0x80
	ldr	r3, [r3]
	lsl	r1, #3
	mov	r11, r0
	mov	r0, #0xe
	mov	r9, r3
	bl	Func_48f4
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp, #8]
	mov	r3, #0x86
	str	r2, [sp, #0xc]
	lsl	r3, #1
	add	r3, r9
	ldr	r7, [r3]
	mov	r10, r0
	bl	Func_a4eb8
	mov	r0, r7
	bl	_Func_16498
	ldr	r2, [sp, #0x14]
	mov	r8, r11
	cmp	r2, #0
	bne	.La4f6a
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r1, =0x1ff
	and	r1, r3
	bl	Func_a3d9c
	str	r0, [sp, #8]
.La4f6a:
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r1, =0x1ff
	and	r1, r3
	bl	Func_a3d9c
	str	r0, [sp, #4]
	bl	Func_4080
	str	r0, [sp, #0x10]
	cmp	r0, #0x60
	bne	.La4f8e
	b	.La517c
.La4f8e:
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	bl	Func_3fa4
	ldr	r6, =0x40004000
	mov	r5, #0x20
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	mov	r2, r7
	mov	r3, #0x30
	str	r5, [sp]
	bl	_Func_1eadc
	mov	r1, r6
	mov	r2, r7
	ldr	r0, [sp, #0x10]
	mov	r3, #0x50
	str	r5, [sp]
	bl	_Func_1eadc
	ldrh	r1, [r0, #0x18]
	lsl	r2, r1, #22
	ldr	r3, .La4fd8	@ 0x3ff
	lsr	r2, #22
	add	r2, #4
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #0x18]
	mov	r1, #0x28
	mov	r0, #0x80
	bl	Func_a1ac0
	b	.La516e

	.align	2, 0
.La4fd8:
	.word	0x3ff
	.pool


.La4ff4:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	bne	.La4ffc
	b	.La5104
.La4ffc:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	add	r0, r8
	str	r2, [sp, #0xc]
	bl	Func_b1c_from_thumb
	mov	r8, r0
	mov	r0, r7
	bl	_Func_16498
	mov	r1, r7
	ldr	r0, =0xade
	mov	r2, #0x20
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Laf08c
	mov	r1, r10
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r10
	mov	r0, #0x1e
	mov	r1, #0xe
	bl	_Func_b06c0
	ldr	r0, [sp, #0x18]
	mov	r1, #0
	add	r0, r11
	mov	r2, r10
	bl	_Func_b06c0
	mov	r0, r11
	add	r0, r8
	add	r0, #1
	mov	r1, #0xa
	mov	r2, r10
	bl	_Func_b06c0
	mov	r0, r11
	mov	r1, #2
	mov	r2, r10
	bl	_Func_b06c0
	mov	r1, #0x80
	ldr	r0, [sp, #0x10]
	lsl	r1, #1
	mov	r2, r10
	bl	Func_3fa4
	mov	r0, r8
	mov	r3, #0x20
	add	r0, #1
	mov	r1, #2
	mov	r2, r7
	str	r3, [sp]
	bl	_Func_1ea08
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r0, .La50ac	@ 0x1ff
	and	r0, r3
	ldr	r3, =0x182
	mov	r1, r7
	add	r0, r3
	mov	r2, #0x10
	mov	r3, #8
	bl	_Func_1e7c0
	ldr	r3, [sp, #4]
	mov	r2, r8
	sub	r0, r3, r2
	sub	r0, #1
	mov	r3, #0x10
	mov	r5, #0x18
	mov	r1, #2
	mov	r2, r7
	str	r5, [sp]
	bl	_Func_1ea08
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	bne	.La50d6
	b	.La50c4

	.align	2, 0
.La50ac:
	.word	0x1ff
	.pool

.La50c4:
	ldr	r0, [sp, #8]
	add	r0, r8
	add	r0, #1
	mov	r1, #2
	mov	r2, r7
	mov	r3, #0x50
	str	r5, [sp]
	bl	_Func_1ea08
.La50d6:
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	bl	_Func_77394
	mov	r2, #0x10
	mov	r1, r7
	mov	r3, #0x10
	bl	_Func_1e8b0
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	bne	.La5104
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	bl	_Func_77394
	mov	r1, r7
	mov	r2, #0x50
	mov	r3, #0x10
	bl	_Func_1e8b0
.La5104:
	ldr	r1, =iwram_1c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La5118
	mov	r0, #0x70
	bl	_Func_f9080
	b	.La517c
.La5118:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La5130
	mov	r3, #1
	neg	r3, r3
	mov	r0, #0x71
	mov	r8, r3
	bl	_Func_f9080
	b	.La517c
.La5130:
	mov	r0, #0x80
	mov	r1, #0x28
	bl	Func_a1a40
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La5152
	sub	r2, #0x21
	mov	r3, #1
	mov	r0, #0x6f
	add	r8, r2
	str	r3, [sp, #0xc]
	bl	_Func_f9080
.La5152:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La5168
	mov	r2, #1
	mov	r0, #0x6f
	add	r8, r2
	str	r2, [sp, #0xc]
	bl	_Func_f9080
.La5168:
	mov	r0, #1
	bl	Func_30f8
.La516e:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La517c
	b	.La4ff4
.La517c:
	mov	r0, r7
	bl	_Func_16498
	mov	r0, r7
	bl	_Func_164ac
	mov	r0, #0xe
	bl	Func_2dd8
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	mov	r0, #0xa8
	mov	r3, #0xd
	strb	r3, [r2, #5]
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.La51ac
	mov	r3, #1
	neg	r3, r3
	mov	r8, r3
.La51ac:
	mov	r0, r8
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a4f08

.thumb_func_start Func_a51d0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	ldr	r7, [r3]
	mov	r3, #0x87
	lsl	r3, #2
	add	r5, r7, r3
	mov	r2, #0xbc
	ldr	r3, [r5]
	lsl	r2, #1
	add	r6, r7, r2
	ldrh	r1, [r6]
	ldrb	r2, [r3, #0xe]
	mov	r0, #2
	mov	r3, #0
	bl	_Func_1bcd4
	ldr	r2, [r5]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r2, [r5]
	mov	r3, #0x70
	strh	r3, [r2, #6]
	ldr	r2, [r5]
	mov	r3, #8
	strh	r3, [r2, #8]
	ldr	r0, [r5]
	bl	Func_a17c4
	ldr	r2, =0x21a
	add	r3, r7, r2
	ldrb	r0, [r3]
	bl	_Func_77394
	mov	r3, #0x86
	lsl	r3, #1
	add	r5, r7, r3
	ldr	r1, [r5]
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_1e8b0
	ldrh	r3, [r6]
	ldr	r0, =0x1ff
	and	r0, r3
	ldr	r3, =0x182
	ldr	r1, [r5]
	add	r0, r3
	mov	r2, #0x10
	mov	r3, #8
	bl	_Func_1e7c0
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a51d0

.thumb_func_start Func_a524c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #3
	mov	r2, #0x11
	mov	r5, r0
	mov	r3, #0xa
	mov	r0, #0xd
	bl	_Func_162d4
	ldr	r3, =0x1ff
	and	r5, r3
	mov	r7, r0
	mov	r0, r5
	bl	_Func_78414
	ldr	r3, =0x182
	add	r5, r3
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x18
	mov	r3, #0
	bl	_Func_1e7c0
	ldr	r5, =0xad4
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #1
	bl	_Func_1e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x18
	bl	_Func_1e7c0
	ldr	r5, =0xb2c
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x18
	mov	r3, #0x28
	add	r5, #1
	bl	_Func_1e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x18
	mov	r3, #0x38
	bl	_Func_1e7c0
	mov	r6, #1
	mov	r0, #0x68
	mov	r1, #0x56
	mov	r8, r6
	bl	Func_a1ac0
	b	.La5306
.La52c8:
	lsl	r1, r6, #4
	add	r1, #0x46
	mov	r0, #0x68
	bl	Func_a1a40
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.La52ea
	mov	r2, #1
	mov	r0, #0x6f
	sub	r6, #1
	mov	r8, r2
	bl	_Func_f9080
.La52ea:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.La5300
	mov	r3, #1
	mov	r0, #0x6f
	add	r6, #1
	mov	r8, r3
	bl	_Func_f9080
.La5300:
	mov	r0, #1
	bl	Func_30f8
.La5306:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La534c
	mov	r2, r8
	cmp	r2, #0
	beq	.La5326
	mov	r3, #0
	add	r0, r6, #2
	mov	r1, #2
	mov	r8, r3
	bl	Func_b1c_from_thumb
	mov	r6, r0
.La5326:
	ldr	r1, =iwram_1c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La533a
	mov	r0, #0x70
	bl	_Func_f9080
	b	.La534c
.La533a:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La52c8
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r6, #1
.La534c:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.La535a
	mov	r6, #1
.La535a:
	mov	r0, r7
	mov	r1, #1
	bl	_Func_16418
	mov	r0, r6
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a524c

.thumb_func_start Func_a5388
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	sub	sp, #0xc
	mov	r8, r3
	mov	r3, #1
	str	r3, [sp, #8]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	ldr	r6, =0x21b
	mov	r9, r3
	add	r6, r9
	ldrb	r0, [r6]
	bl	_Func_77394
	mov	r3, #0xbb
	str	r0, [sp, #4]
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	mov	r10, r3
	ldrb	r3, [r6]
	mov	r5, #0xa6
	mov	r0, r3
	mov	r2, #0
	lsl	r5, #1
	bl	Func_a3ef0
	mov	r0, r5
	bl	Func_4938
	ldr	r3, =Func_1af8
	ldr	r1, [sp, #4]
	mov	r2, r5
	mov	r11, r0
	bl	_call_via_r3
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r7, [r3]
	mov	r3, r10
	ldrb	r0, [r6]
	ldrh	r1, [r3]
	bl	_Func_78708
	add	r0, #2
	cmp	r0, #1
	bhi	.La53fe
	b	.La54c6
.La53f6:
	mov	r0, #0xaf
	bl	_Func_f9080
	b	.La54ca
.La53fe:
	ldr	r5, =0xb2c
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x18
	mov	r3, #0x18
	add	r5, #1
	bl	_Func_1e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x48
	mov	r3, #0x18
	bl	_Func_1e7c0
	mov	r3, #0x18
	str	r3, [sp]
	mov	r0, r7
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #0x60
	bl	_Func_164d4
	mov	r1, r7
	ldr	r0, =0xad6
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_1e7c0
	mov	r0, #0x6e
	mov	r1, #0x20
	bl	Func_a1ac0
	b	.La5488
.La5440:
	mov	r3, r8
	lsl	r0, r3, #1
	add	r0, r8
	lsl	r0, #4
	add	r0, #0x6e
	mov	r1, #0x20
	bl	Func_a1a40
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La546c
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r0, #0x6f
	mov	r3, #1
	str	r3, [sp, #8]
	bl	_Func_f9080
.La546c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La5482
	mov	r3, #1
	mov	r0, #0x6f
	add	r8, r3
	str	r3, [sp, #8]
	bl	_Func_f9080
.La5482:
	mov	r0, #1
	bl	Func_30f8
.La5488:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La54ca
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.La54aa
	mov	r0, r8
	mov	r3, #0
	add	r0, #2
	mov	r1, #2
	str	r3, [sp, #8]
	bl	Func_b1c_from_thumb
	mov	r8, r0
.La54aa:
	ldr	r1, =iwram_1c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.La53f6
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La5440
	mov	r0, #0x71
	bl	_Func_f9080
.La54c6:
	mov	r3, #1
	mov	r8, r3
.La54ca:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.La54da
	mov	r3, #1
	mov	r8, r3
.La54da:
	mov	r3, r8
	cmp	r3, #1
	bne	.La54ee
	mov	r2, #0xa6
	ldr	r3, =Func_1af8
	ldr	r0, [sp, #4]
	mov	r1, r11
	lsl	r2, #1
	bl	_call_via_r3
.La54ee:
	ldr	r5, =0x21b
	mov	r0, r11
	add	r5, r9
	bl	Func_2df0
	ldrb	r0, [r5]
	bl	_Func_77428
	ldrb	r0, [r5]
	bl	_Func_78bf0
	mov	r0, r8
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a5388

	.section .rodata

.Laf08c:
	.incrom 0xaf08c, 0xaf20c
