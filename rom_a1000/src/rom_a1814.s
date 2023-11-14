	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_a1814
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r0
	mov	r3, #0
	sub	sp, #8
	mov	r8, r3
	str	r3, [r5, #0x10]
	mov	r6, r5
	mov	r3, #5
	str	r3, [sp]
	add	r6, #0x10
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r3, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	Func_a10d0
	ldr	r6, [r6]
	mov	r1, #8
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0xb
	bl	Func_a1778
	mov	r3, #0xd
	strb	r3, [r0, #5]
	mov	r3, #0xff
	strb	r3, [r5, #0x1c]
	mov	r3, r8
	strb	r3, [r5, #0x1d]
	mov	r3, #0xfe
	str	r0, [r5, #0x14]
	strb	r3, [r0, #0xf]
	ldr	r2, [r5, #0x18]
	sub	r3, #0xff
	mov	r0, r6
	strb	r3, [r2, #0xf]
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_a1814

.thumb_func_start Func_a1870
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, =iwram_1f2c
	mov	r9, r0
	ldr	r3, [r3]
	mov	r0, sp
	add	r0, #0x10
	mov	r10, r3
	str	r0, [sp]
	bl	_Func_796c4
	lsl	r0, #16
	lsr	r0, #16
	mov	r8, r0
	mov	r1, r8
	mov	r2, r10
	mov	r5, #0
	strb	r1, [r2, #0x1e]
	cmp	r5, r8
	bge	.La191c
	mov	r7, #0x9a
	mov	r6, #0x8a
	lsl	r7, #1
	lsl	r6, #1
	add	r7, r10
	add	r6, r10
	mov	r11, r5
.La18b8:
	ldr	r1, [sp]
	mov	r3, r11
	ldrh	r0, [r3, r1]
	bl	_Func_8b398
	bl	_Func_bc70
	cmp	r0, #0
	beq	.La190e
	str	r0, [r6]
	mov	r2, r9
	ldrh	r3, [r2, #0xc]
	ldr	r2, [sp, #4]
	add	r2, #0x10
	mul	r2, r5
	ldr	r1, [sp, #0xc]
	add	r3, r1, r3
	lsl	r3, #3
	add	r3, r2
	strh	r3, [r7]
	mov	r2, r9
	ldr	r1, [sp, #8]
	ldrh	r3, [r2, #0xe]
	add	r3, r1, r3
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x40]
	mov	r1, #0xd
	ldrb	r3, [r0, #9]
	neg	r1, r1
	mov	r2, r1
	and	r3, r2
	mov	r2, r0
	strb	r3, [r0, #9]
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #1
	bl	_Func_ba30
.La190e:
	mov	r2, #2
	add	r5, #1
	add	r7, #2
	add	r6, #4
	add	r11, r2
	cmp	r5, r8
	blt	.La18b8
.La191c:
	cmp	r5, #7
	bgt	.La1938
	lsl	r3, r5, #2
	mov	r0, #0x8a
	add	r3, r10
	lsl	r0, #1
	add	r2, r3, r0
	mov	r3, #8
	mov	r1, #0
	sub	r5, r3, r5
.La1930:
	sub	r5, #1
	stmia	r2!, {r1}
	cmp	r5, #0
	bne	.La1930
.La1938:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_a19a0
	bl	Func_41d8
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a1870

.thumb_func_start Func_a195c
	push	{r5, r6, lr}
	sub	sp, #0x1c
	ldr	r3, =iwram_1f2c
	mov	r0, sp
	ldr	r5, [r3]
	bl	_Func_796c4
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.La198a
	mov	r3, #0x8a
	lsl	r3, #1
	add	r6, r5, r3
	mov	r5, r0
.La197a:
	ldmia	r6!, {r0}
	cmp	r0, #0
	beq	.La1984
	bl	_Func_bdd4
.La1984:
	sub	r5, #1
	cmp	r5, #0
	bne	.La197a
.La198a:
	ldr	r0, =Func_a19a0
	bl	Func_4278
	add	sp, #0x1c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_a195c

.thumb_func_start Func_a19a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	sub	sp, #0x1c
	ldr	r5, [r3]
	bl	_Func_795fc
	lsl	r0, #16
	lsr	r0, #16
	mov	r10, r0
	mov	r4, #0
	cmp	r4, r10
	bge	.La1a2e
	add	r2, sp, #4
	mov	r8, r2
	mov	r3, #0x9a
	mov	r2, #0x8a
	lsl	r3, #1
	lsl	r2, #1
	add	r7, r5, r3
	add	r6, sp, #0xc
	add	r5, r2
.La19d0:
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	ldr	r0, [r5]
	mov	r2, #0xf1
	lsl	r3, #16
	lsl	r2, #17
	sub	r1, r2, r3
	cmp	r0, #0
	beq	.La1a24
	ldrb	r3, [r0, #9]
	mov	r12, r3
	mov	r3, #0xd
	neg	r3, r3
	mov	r2, r3
	mov	r3, r12
	and	r3, r2
	strb	r3, [r0, #9]
	ldr	r3, [r5, #0x40]
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x40]
	mov	r2, r8
	str	r3, [r2, #4]
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	str	r1, [r6, #4]
	str	r3, [r6]
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	add	r3, r1
	str	r3, [r6, #8]
	mov	r3, #0
	str	r3, [r6, #0xc]
	mov	r3, #0x80
	mov	r1, r6
	mov	r2, r8
	lsl	r3, #7
	str	r4, [sp]
	bl	_Func_b168
	ldr	r4, [sp]
.La1a24:
	add	r4, #1
	add	r7, #2
	add	r5, #4
	cmp	r4, r10
	blt	.La19d0
.La1a2e:
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a19a0

.thumb_func_start Func_a1a40
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f2c
	ldr	r5, [r3]
	ldr	r3, =iwram_1e40
	mov	r14, r3
	ldr	r3, [r3]
	mov	r6, #7
	lsr	r3, #1
	mov	r12, r6
	and	r3, r6
	ldr	r2, =.Laf294
	ldr	r6, [r5, #0x10]
	ldrb	r2, [r2, r3]
	ldrh	r3, [r6, #0xc]
	add	r2, r0
	lsl	r3, #3
	ldr	r4, [r5, #0x14]
	add	r2, r3
	ldr	r5, .La1a9c	@ 0xffff
	add	r2, #8
	ldr	r3, .La1aa0	@ 0x1ff
	strh	r2, [r4, #6]
	and	r2, r5
	ldrh	r0, [r4, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r0
	orr	r3, r2
	mov	r0, r14
	strh	r3, [r4, #0x16]
	ldr	r3, [r0]
	ldr	r2, =.Laf29d
	mov	r0, r12
	lsr	r3, #1
	and	r3, r0
	ldrb	r3, [r2, r3]
	ldrh	r2, [r6, #0xe]
	add	r3, r1
	lsl	r2, #3
	add	r3, r2
	add	r3, #8
	strh	r3, [r4, #8]
	and	r3, r5
	strb	r3, [r4, #0x14]
	b	.La1ab8

	.align	2, 0
.La1a9c:
	.word	0xffff
.La1aa0:
	.word	0x1ff
	.pool

.La1ab8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_a1a40

.thumb_func_start Func_a1ac0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	ldr	r2, =0x222
	mov	r10, r3
	add	r2, r10
	ldrh	r3, [r2]
	mov	r8, r1
	mov	r1, #2
	sub	sp, #4
	mov	r9, r1
	cmp	r3, #0
	beq	.La1af4
	mov	r3, #0
	strh	r3, [r2]
	b	.La1bb6

	.pool_aligned

.La1af4:
	mov	r2, r10
	ldr	r7, [r2, #0x14]
	ldrh	r3, [r7, #0x16]
	lsl	r3, #23
	lsr	r3, #23
	add	r3, #0x40
	ldrb	r2, [r7, #0x14]
	strh	r3, [r7, #6]
	add	r2, #0x40
	strh	r2, [r7, #8]
	ldrh	r2, [r7, #6]
	mov	r3, #0x40
	add	r8, r3
	mov	r3, r2
	sub	r3, #8
	add	r0, #0x40
	cmp	r3, #0
	ble	.La1b1e
	ldr	r1, =0xfff8
	add	r3, r2, r1
	strh	r3, [r7, #6]
.La1b1e:
	ldrh	r6, [r7, #8]
	mov	r3, r6
	sub	r3, #8
	cmp	r3, #0
	ble	.La1b30
	ldr	r2, =0xfff8
	add	r3, r6, r2
	strh	r3, [r7, #8]
	ldrh	r6, [r7, #8]
.La1b30:
	ldrh	r5, [r7, #6]
	lsl	r0, #4
	lsl	r5, #4
	sub	r0, r5
	mov	r1, #2
	add	r0, #1
	bl	Func_af0_from_thumb
	mov	r3, r8
	mov	r11, r0
	lsl	r6, #4
	lsl	r0, r3, #4
	sub	r0, r6
	add	r0, #1
	mov	r1, #2
	bl	Func_af0_from_thumb
	ldr	r4, .La1b88	@ 0xffff
	mov	r8, r0
.La1b56:
	mov	r2, r10
	ldr	r0, [r2, #0x10]
	ldrh	r3, [r0, #0xc]
	add	r5, r11
	lsl	r3, #3
	asr	r1, r5, #4
	add	r1, r3
	sub	r1, #0x38
	ldr	r3, .La1b8c	@ 0x1ff
	strh	r1, [r7, #6]
	and	r1, r4
	and	r1, r3
	ldr	r2, .La1b90	@ 0xfffffe00
	ldrh	r3, [r7, #0x16]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #0x16]
	ldrh	r3, [r0, #0xe]
	add	r6, r8
	lsl	r3, #3
	asr	r2, r6, #4
	add	r2, r3
	mov	r3, #1
	b	.La1b98

	.align	2, 0
.La1b88:
	.word	0xffff
.La1b8c:
	.word	0x1ff
.La1b90:
	.word	0xfffffe00
	.pool

.La1b98:
	neg	r3, r3
	sub	r2, #0x38
	add	r9, r3
	strh	r2, [r7, #8]
	mov	r1, r9
	and	r2, r4
	strb	r2, [r7, #0x14]
	cmp	r1, #0
	beq	.La1bb6
	mov	r0, #1
	str	r4, [sp]
	bl	Func_30f8
	ldr	r4, [sp]
	b	.La1b56
.La1bb6:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a1ac0

.thumb_func_start Func_a1bc8
	bx	lr
.func_end Func_a1bc8

.thumb_func_start Func_a1bcc
	push	{lr}
	mov	r0, #0x6c
	mov	r1, #0x28
	mov	r2, #8
	bl	Func_a1bdc
	pop	{r0}
	bx	r0
.func_end Func_a1bcc

.thumb_func_start Func_a1bdc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r5, r3
	add	r5, #0x48
	sub	sp, #4
	mov	r9, r0
	mov	r10, r1
	mov	r8, r2
	mov	r6, #0
	mov	r7, r5
.La1bfa:
	ldmia	r7!, {r3}
	cmp	r3, #0
	beq	.La1c10
	mov	r3, r8
	str	r3, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	Func_a1c2c
.La1c10:
	add	r6, #1
	add	r5, #4
	cmp	r6, #0x1f
	ble	.La1bfa
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a1bdc

.thumb_func_start Func_a1c2c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r8, r2
	mov	r7, r3
	cmp	r6, #0x1f
	ble	.La1c3e
	mov	r6, #0
.La1c3e:
	ldr	r1, [sp, #0x14]
	ldr	r5, [r0]
	mov	r0, r6
	bl	Func_af0_from_thumb
	lsl	r0, #4
	add	r0, r7
	strh	r0, [r5, #8]
	ldr	r1, [sp, #0x14]
	mov	r0, r6
	bl	Func_b1c_from_thumb
	lsl	r0, #4
	add	r0, r8
	strh	r0, [r5, #6]
	mov	r0, r5
	bl	Func_a17c4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a1c2c

.thumb_func_Start Func_a1c6c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r8, r2
	mov	r7, r3
	cmp	r6, #0xf
	ble	.La1c7e
	mov	r6, #0
.La1c7e:
	ldr	r1, [sp, #0x14]
	ldr	r5, [r0]
	mov	r0, r6
	bl	Func_af0_from_thumb
	lsl	r0, #4
	add	r0, r7
	strh	r0, [r5, #8]
	ldr	r1, [sp, #0x14]
	mov	r0, r6
	bl	Func_b1c_from_thumb
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	add	r3, r8
	strh	r3, [r5, #6]
	mov	r0, r5
	bl	Func_a17c4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a1c6c

.thumb_func_start Func_a1cb0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	mov	r2, #0x38
	sub	sp, #4
	ldr	r3, [r3]
	mov	r8, r2
	cmp	r0, #1
	beq	.La1cca
	mov	r2, #0x28
	mov	r8, r2
.La1cca:
	mov	r5, r3
	add	r5, #0x48
	mov	r3, #5
	mov	r6, #0
	mov	r7, r5
	mov	r10, r3
.La1cd6:
	ldmia	r7!, {r3}
	cmp	r3, #0
	beq	.La1cec
	mov	r2, r10
	str	r2, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0x74
	mov	r3, r8
	bl	Func_a1c6c
.La1cec:
	add	r6, #1
	add	r5, #4
	cmp	r6, #0xe
	ble	.La1cd6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a1cb0

.thumb_func_start Func_a1d08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r7, [r3]
	mov	r8, r2
	ldr	r2, [r7, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r2, #1
	neg	r2, r2
	sub	sp, #0x18
	mov	r6, r0
	mov	r10, r1
	cmp	r8, r2
	beq	.La1d6c
	add	r0, sp, #8
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	add	r3, sp, #0xc
	str	r0, [sp]
	mov	r0, r6
	bl	_Func_187ac
	ldr	r2, [sp, #8]
	mov	r5, r7
	str	r2, [sp]
	mov	r2, #0x81
	lsl	r2, #1
	add	r5, #0x3c
	str	r2, [sp, #4]
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r10
	mov	r2, r8
	bl	Func_a10d0
	cmp	r0, #0
	bne	.La1d68
	ldr	r2, [sp, #8]
	ldr	r0, [r5]
	ldr	r3, [sp, #0xc]
	str	r2, [sp]
	mov	r1, r10
	mov	r2, r8
	bl	Func_a23f4
.La1d68:
	ldr	r5, [r5]
	b	.La1d6e
.La1d6c:
	ldr	r5, [r7, #0x2c]
.La1d6e:
	mov	r0, r5
	bl	_Func_16498
	mov	r0, r5
	bl	_Func_164ac
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.La1d90
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	b	.La1d9c
.La1d90:
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e74c
.La1d9c:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.La1df4
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	ldr	r6, =iwram_1c94
	mov	r10, r3
.La1db0:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r6]
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.La1dd4
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.La1dd4
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.La1db0
.La1dd4:
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.La1de2
	mov	r0, r5
	bl	_Func_16498
.La1de2:
	mov	r0, r5
	bl	_Func_164ac
	b	.La1dfa

	.pool_aligned

.La1df4:
	ldr	r0, =0x151
	bl	_Func_79358
.La1dfa:
	ldr	r3, =0x222
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	ldr	r1, .La1e1c	@ 1
	ldr	r3, [r7, #0x14]
	mov	r2, #1
	neg	r2, r2
	strb	r1, [r3, #5]
	cmp	r8, r2
	beq	.La1e28
	mov	r0, r7
	add	r0, #0x3c
	mov	r1, #1
	bl	Func_a1114
	b	.La1e28

	.align	2, 0
.La1e1c:
	.word	1
	.pool

.La1e28:
	add	sp, #0x18
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a1d08

.thumb_func_start Func_a1e38
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x70
	str	r0, [sp, #0xc]
	add	r5, sp, #0x10
	mov	r0, #0
	str	r0, [sp, #8]
	mov	r11, r0
	mov	r0, r1
	mov	r1, r5
	bl	Func_a1f74
	add	r1, sp, #0x30
	mov	r9, r1
	mov	r2, #0
	mov	r6, #0xe
.La1e62:
	ldr	r0, [sp, #0xc]
	ldrh	r3, [r2, r0]
	sub	r6, #1
	strh	r3, [r2, r1]
	add	r2, #2
	cmp	r6, #0
	bge	.La1e62
	mov	r1, #0
	mov	r8, r1
	mov	r2, r9
	mov	r6, #0xe
.La1e78:
	ldrh	r3, [r2]
	add	r2, #2
	cmp	r3, #0
	beq	.La1e84
	mov	r3, #1
	add	r8, r3
.La1e84:
	sub	r6, #1
	cmp	r6, #0
	bge	.La1e78
	mov	r0, r8
	cmp	r0, #0xe
	bgt	.La1eac
	add	r3, sp, #0x50
	lsl	r2, r0, #1
	add	r2, r3
	ldr	r1, =0
	mov	r3, #0xf
	sub	r6, r3, r0
.La1e9c:
	sub	r6, #1
	strh	r1, [r2]
	add	r2, #2
	cmp	r6, #0
	bne	.La1e9c
	b	.La1eac

	.pool_aligned

.La1eac:
	ldrb	r3, [r5]
	cmp	r3, #0xff
	beq	.La1f44
	mov	r1, sp
	add	r1, #0x50
	str	r1, [sp, #4]
	mov	r10, r9
	mov	r7, r5
.La1ebc:
	mov	r6, #0
	mov	r4, #0
	cmp	r6, r8
	bge	.La1f12
	mov	r5, r9
.La1ec6:
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.La1f0a
	mov	r0, r3
	str	r4, [sp]
	bl	_Func_78414
	ldrb	r1, [r7]
	mov	r2, #0x7f
	ldrb	r3, [r0, #2]
	and	r2, r1
	ldr	r4, [sp]
	cmp	r2, r3
	bne	.La1f0a
	mov	r3, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.La1efc
	ldrh	r2, [r5]
	ldr	r3, =0x200
	and	r3, r2
	cmp	r3, #0
	beq	.La1f0a
	b	.La1efe

	.pool_aligned

.La1efc:
	ldrh	r2, [r5]
.La1efe:
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r4, r3
	bge	.La1f0a
	str	r6, [sp, #8]
	mov	r4, r3
.La1f0a:
	add	r6, #1
	add	r5, #2
	cmp	r6, r8
	blt	.La1ec6
.La1f12:
	cmp	r4, #0
	beq	.La1f3c
	ldr	r0, [sp, #8]
	mov	r3, r11
	lsl	r2, r0, #1
	mov	r0, r10
	lsl	r1, r3, #1
	ldrh	r3, [r0, r2]
	ldr	r0, [sp, #4]
	strh	r3, [r0, r1]
	ldr	r3, =0
	mov	r1, r10
	b	.La1f34

	.pool_aligned

.La1f34:
	strh	r3, [r1, r2]
	mov	r3, #1
	add	r11, r3
	b	.La1ebc
.La1f3c:
	add	r7, #1
	ldrb	r3, [r7]
	cmp	r3, #0xff
	bne	.La1ebc
.La1f44:
	mov	r0, r8
	cmp	r0, #0
	ble	.La1f5e
	add	r1, sp, #0x50
	mov	r2, #0
	mov	r6, r8
.La1f50:
	ldrh	r3, [r2, r1]
	ldr	r0, [sp, #0xc]
	sub	r6, #1
	strh	r3, [r2, r0]
	add	r2, #2
	cmp	r6, #0
	bne	.La1f50
.La1f5e:
	mov	r0, #1
	add	sp, #0x70
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a1e38

.thumb_Func_start Func_a1f74
	push	{lr}
	ldr	r2, =.Laf2a6
	cmp	r0, #1
	beq	.La1f90
	cmp	r0, #1
	bgt	.La1f86
	cmp	r0, #0
	beq	.La1f8c
	b	.La1f96
.La1f86:
	cmp	r0, #2
	beq	.La1f94
	b	.La1f96
.La1f8c:
	ldr	r2, =.Laf2d0
	b	.La1f96
.La1f90:
	ldr	r2, =.Laf2bc
	b	.La1f96
.La1f94:
	ldr	r2, =.Laf2b1
.La1f96:
	ldrb	r3, [r2]
	mov	r4, #0xff
	strb	r3, [r1]
	lsl	r4, #24
	lsl	r3, #24
	mov	r0, #0
	cmp	r3, r4
	beq	.La1fbe
.La1fa6:
	add	r0, #1
	cmp	r0, #0x1f
	bgt	.La1fbe
	add	r2, #1
	ldrb	r3, [r2]
	add	r1, #1
	mov	r4, #0xff
	strb	r3, [r1]
	lsl	r4, #24
	lsl	r3, #24
	cmp	r3, r4
	bne	.La1fa6
.La1fbe:
	pop	{r0}
	bx	r0
.func_end Func_a1f74

.thumb_func_start Func_a1fd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	ldr	r1, [sp, #0x1c]
	mov	r5, r0
	mov	r7, r2
	mov	r0, #1
	mov	r2, r8
	mov	r6, r3
	mov	r10, r1
	neg	r0, r0
	cmp	r2, #0
	bne	.La1ff6
	b	.La212e
.La1ff6:
	ldr	r0, =0x6002500
	bl	_Func_219c8
	mov	r1, r7
	mov	r0, r8
	bl	Func_af0_from_thumb
	mov	r1, r7
	mov	r9, r0
	mov	r0, r8
	bl	Func_b1c_from_thumb
	cmp	r0, #0
	beq	.La2016
	mov	r3, #1
	add	r9, r3
.La2016:
	cmp	r5, #0
	beq	.La2034
	ldr	r2, =iwram_1b04
	ldr	r4, [r2]
	mov	r3, #0x10
	ldr	r1, [r2]
	and	r4, r3
	ldr	r5, [r2]
	mov	r3, #0x20
	and	r1, r3
	ldr	r2, [r2]
	mov	r3, #0x40
	and	r5, r3
	mov	r3, #0x80
	b	.La204c
.La2034:
	ldr	r2, =iwram_1b04
	ldr	r4, [r2]
	mov	r3, #0x80
	ldr	r1, [r2]
	and	r4, r3
	ldr	r5, [r2]
	mov	r3, #0x40
	and	r1, r3
	ldr	r2, [r2]
	mov	r3, #0x20
	and	r5, r3
	mov	r3, #0x10
.La204c:
	and	r2, r3
	cmp	r5, #0
	beq	.La2084
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, r10
	ldr	r3, [r1]
	sub	r3, #1
	str	r3, [r1]
	cmp	r3, #0
	bge	.La206a
	mov	r3, r9
	sub	r3, #1
	str	r3, [r1]
.La206a:
	mov	r2, r10
	ldr	r3, [r2]
	mov	r0, r7
	mul	r0, r3
	ldr	r3, [r6]
	mov	r2, r8
	add	r3, r0
	sub	r2, #1
	cmp	r3, r2
	ble	.La20c6
	mov	r1, r8
	sub	r3, r1, r0
	b	.La20ba
.La2084:
	cmp	r2, #0
	beq	.La20ce
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, r10
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	mov	r2, r9
	sub	r2, #1
	cmp	r3, r2
	ble	.La20a2
	mov	r3, r10
	str	r5, [r3]
.La20a2:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r0, r7
	mul	r0, r3
	ldr	r3, [r6]
	mov	r2, r8
	add	r3, r0
	sub	r2, #1
	cmp	r3, r2
	ble	.La20c6
	mov	r2, r8
	sub	r3, r2, r0
.La20ba:
	sub	r3, #1
	sub	r1, r7, #1
	str	r3, [r6]
	cmp	r3, r1
	ble	.La20c6
	str	r1, [r6]
.La20c6:
	bl	Func_352c
	mov	r0, #1
	b	.La212e
.La20ce:
	cmp	r1, #0
	beq	.La20fc
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r3, [r6]
	sub	r3, #1
	str	r3, [r6]
	cmp	r3, #0
	bge	.La212c
	sub	r2, r7, #1
	str	r2, [r6]
	mov	r1, r10
	ldr	r3, [r1]
	mul	r3, r7
	mov	r1, r8
	sub	r3, r1, r3
	sub	r3, #1
	str	r3, [r6]
	cmp	r3, r2
	ble	.La212c
	str	r2, [r6]
	b	.La212c
.La20fc:
	mov	r0, #1
	neg	r0, r0
	cmp	r4, #0
	beq	.La212e
	mov	r0, #0x6f
	bl	_Func_f9080
	ldr	r2, [r6]
	add	r2, #1
	str	r2, [r6]
	mov	r1, r10
	ldr	r3, [r1]
	mul	r3, r7
	mov	r1, r8
	sub	r3, r1, r3
	mov	r0, #0
	cmp	r2, r3
	bne	.La2122
	str	r0, [r6]
.La2122:
	ldr	r3, [r6]
	sub	r2, r7, #1
	cmp	r3, r2
	ble	.La212c
	str	r0, [r6]
.La212c:
	mov	r0, #0
.La212e:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a1fd4

.thumb_func_start Func_a2144
	push	{r5, lr}
	mov	r3, #0xa0
	lsl	r0, #5
	lsl	r3, #19
	add	r5, r0, r3
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x50001e0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x50001e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r2, [r5, #8]
	lsl	r3, r2, #16
	lsr	r4, r3, #26
	lsr	r1, r3, #21
	ldr	r3, .La218c	@ 0x1f
	mov	r0, #0x1f
	add	r4, #9
	and	r1, r3
	and	r0, r2
	cmp	r4, #0x1f
	bls	.La217a
	mov	r4, #0x1f
.La217a:
	add	r1, #9
	cmp	r1, #0x1f
	bls	.La2182
	mov	r1, #0x1f
.La2182:
	add	r0, #9
	cmp	r0, #0x1f
	bls	.La21a0
	mov	r0, #0x1f
	b	.La21a0

	.align	2, 0
.La218c:
	.word	0x1f
	.pool

.La21a0:
	lsl	r3, r4, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_a2144

.thumb_func_start Func_a21b0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r6, r2
	sub	sp, #4
	mov	r1, r6
	mov	r9, r0
	mov	r11, r3
	mov	r0, r5
	mov	r3, #0x31
	ldr	r7, [sp, #0x24]
	mov	r10, r3
	bl	Func_af0_from_thumb
	mov	r1, r6
	mov	r8, r0
	mov	r0, r5
	bl	Func_b1c_from_thumb
	cmp	r0, #0
	beq	.La21e8
	mov	r3, #1
	add	r8, r3
.La21e8:
	mov	r3, r8
	sub	r7, r3
	cmp	r3, #1
	ble	.La224c
	mov	r0, #0
	mov	r3, #1
	str	r0, [sp]
	ldr	r1, =0xf128
	sub	r2, r7, #1
	neg	r3, r3
	mov	r0, r9
	mov	r5, #0
	bl	_Func_19000
	cmp	r5, r8
	bge	.La223a
.La2208:
	cmp	r5, r11
	bne	.La221e
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r9
	mov	r1, r10
	mov	r2, r7
	sub	r3, #3
	bl	_Func_19000
	b	.La222e
.La221e:
	mov	r3, #3
	str	r3, [sp]
	mov	r0, r9
	mov	r1, r10
	mov	r2, r7
	sub	r3, #4
	bl	_Func_19000
.La222e:
	mov	r3, #1
	add	r5, #1
	add	r10, r3
	add	r7, #1
	cmp	r5, r8
	blt	.La2208
.La223a:
	mov	r2, #0
	mov	r3, #1
	str	r2, [sp]
	ldr	r1, =0xf129
	neg	r3, r3
	mov	r0, r9
	mov	r2, r7
	bl	_Func_19000
.La224c:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a21b0

.thumb_func_start Func_a2268
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_1e8c
	ldr	r3, [r3]
	mov	r12, r3
	ldrh	r3, [r0, #0xc]
	add	r3, r1, r3
	add	r1, r3, #1
	ldrh	r3, [r0, #0xe]
	ldr	r7, [sp, #0x14]
	add	r3, r2, r3
	ldr	r5, [sp, #0x10]
	add	r2, r3, #1
	lsl	r7, #12
	cmp	r1, #0
	bge	.La228c
	add	r6, r1
	mov	r1, #0
.La228c:
	add	r3, r1, r6
	cmp	r3, #0x1d
	ble	.La2296
	mov	r3, #0x1e
	sub	r6, r3, r1
.La2296:
	cmp	r2, #0
	bge	.La229e
	add	r5, r2
	mov	r2, #0
.La229e:
	add	r3, r2, r5
	cmp	r3, #0x1d
	ble	.La22a8
	mov	r3, #0x14
	sub	r5, r3, r2
.La22a8:
	cmp	r6, #0
	ble	.La22e2
	cmp	r5, #0
	ble	.La22e2
	lsl	r2, #6
	lsl	r3, r1, #1
	add	r1, r2, r3
.La22b6:
	mov	r3, r12
	mov	r0, r6
	add	r4, r1, r3
	cmp	r0, #0
	beq	.La22d2
	ldr	r2, =0xffffefff
.La22c2:
	ldrh	r3, [r4]
	and	r3, r2
	orr	r3, r7
	sub	r0, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r0, #0
	bne	.La22c2
.La22d2:
	sub	r5, #1
	add	r1, #0x40
	cmp	r5, #0
	bne	.La22b6
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r12
	strb	r3, [r2]
.La22e2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a2268

.thumb_func_start Func_a22f4
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_a22f4

.thumb_func_start Func_a2324
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r3
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	sub	sp, #4
	mov	r8, r3
	mov	r2, #0xd
	add	r3, #0x48
	mov	r6, #0x1f
.La233e:
	ldmia	r3!, {r5}
	cmp	r5, #0
	beq	.La2346
	strb	r2, [r5, #5]
.La2346:
	sub	r6, #1
	cmp	r6, #0
	bge	.La233e
	mov	r6, r1
	add	r0, r6
	cmp	r6, r0
	bge	.La23ac
	lsl	r2, r6, #2
	mov	r3, r2
	add	r3, #0x48
	mov	r1, r8
	ldr	r5, [r1, r3]
	cmp	r5, #0
	beq	.La23ac
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r8
	ldrb	r3, [r3]
	sub	r3, #1
	cmp	r6, r3
	bgt	.La23ac
	add	r3, r2, r1
	mov	r2, r3
	ldr	r7, [sp, #0x20]
	mov	r10, r0
	add	r2, #0x48
.La237a:
	mov	r3, r9
	strh	r3, [r5, #6]
	strh	r7, [r5, #8]
	mov	r0, r5
	str	r2, [sp]
	bl	Func_a17c4
	add	r6, #1
	mov	r3, #1
	strb	r3, [r5, #5]
	add	r7, #0x10
	ldr	r2, [sp]
	cmp	r6, r10
	bge	.La23ac
	add	r2, #4
	ldr	r5, [r2]
	cmp	r5, #0
	beq	.La23ac
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r8
	ldrb	r3, [r3]
	sub	r3, #1
	cmp	r6, r3
	ble	.La237a
.La23ac:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a2324

.thumb_func_start Func_a23c0
	push	{r5, lr}
	ldr	r3, =ewram_240
	sub	sp, #4
	mov	r5, r0
	ldr	r0, [r3, #0x10]
	mov	r3, #0
	str	r3, [sp]
	mov	r2, r5
	mov	r1, #7
	mov	r3, #8
	bl	_Func_1e9d4
	ldr	r0, =0xb0b
	mov	r1, r5
	mov	r2, #0x40
	mov	r3, #0
	bl	_Func_1e7c0
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_a23c0

.thumb_func_start Func_a23f4
	push	{lr}
	cmp	r0, #0
	beq	.La2404
	strh	r3, [r0, #8]
	ldr	r3, [sp, #4]
	strh	r1, [r0, #0xc]
	strh	r3, [r0, #0xa]
	strh	r2, [r0, #0xe]
.La2404:
	pop	{r0}
	bx	r0

.thumb_func_start Func_a2408
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xea6
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	bx	lr
.func_end Func_a2408

.thumb_func_start Func_a2420
	ldr	r3, =iwram_1e8c
	ldr	r2, =0xea6
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	strb	r2, [r3]
	bx	lr
.func_end Func_a2420

.thumb_func_start Func_a2438
	push	{lr}
	bl	_Func_f9080
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end Func_a2438

.thumb_func_start Func_a2444
	push	{lr}
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.La2466
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79358
	ldr	r0, =Func_a2444
	bl	Func_4278
.La2466:
	pop	{r0}
	bx	r0
.func_end Func_a2444

.thumb_func_start Func_a2474
	push	{lr}
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79374
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_a2444
	bl	Func_41d8
	pop	{r0}
	bx	r0
.func_end Func_a2474

.thumb_func_start Func_a2490
	push	{lr}
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La24a4
	ldr	r0, =Func_a2444
	bl	Func_4278
.La24a4:
	pop	{r0}
	bx	r0
.func_end Func_a2490

.thumb_func_start Func_a24ac
	push	{lr}
	mov	r0, #0xf
	bl	_Func_1e71c
	pop	{r0}
	bx	r0
.func_end Func_a24ac

.thumb_func_start Func_a24b8
	push	{lr}
	mov	r0, #2
	bl	_Func_1e71c
	pop	{r0}
	bx	r0
.func_end Func_a24b8

.thumb_func_start Func_a24c4
	push	{lr}
	mov	r0, #4
	bl	_Func_1e71c
	pop	{r0}
	bx	r0
.func_end Func_a24c4

.thumb_func_start Func_a24d0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x80
	lsl	r1, #6
	mov	r9, r1
	mov	r0, r9
	sub	sp, #0x10
	bl	Func_4970
	mov	r1, #0xa7
	mov	r7, r0
	lsl	r1, #4
	mov	r0, #0x37
	bl	Func_48b0
	ldr	r2, =iwram_1e68
	mov	r8, r2
	ldr	r2, [r2]
	mov	r3, #1
	mov	r1, #0
	mov	r5, r0
	strh	r3, [r2, #4]
	mov	r0, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_Func_170f8
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	bl	Func_a1090
	mov	r3, #0x82
	lsl	r3, #2
	add	r0, r5, r3
	bl	_Func_796c4
	ldr	r1, =0x219
	add	r3, r5, r1
	mov	r2, #0
	mov	r1, #3
	strb	r0, [r3]
	mov	r3, #7
	mov	r0, #0
	bl	Func_a3354
	bl	Func_a5534
	mov	r0, #0xe
	bl	Func_a2144
	ldr	r0, =0x6002500
	bl	_Func_219c8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #3
	mov	r0, #0xd
	bl	_Func_162d4
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r5, r2
	str	r0, [r3]
	bl	Func_a1070
	ldr	r3, =Func_1af8
	ldr	r1, =0x6004000
	mov	r11, r3
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r11
	ldr	r3, =Func_8d8
	mov	r1, r9
	ldr	r2, =0x33333333
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #1
	bl	_Func_1e3c8
	bl	Func_a2474
	add	r1, sp, #8
	add	r0, sp, #0xc
	add	r2, sp, #4
	bl	Func_a2680
	mov	r10, r0
	bl	Func_a2490
	mov	r1, r10
	cmp	r1, #1
	bne	.La25c2
	mov	r2, r8
	ldr	r0, [r2, #0x54]
	ldr	r1, [sp, #0xc]
	ldr	r3, [sp, #4]
	ldr	r2, =0x1ff
	lsl	r1, #10
	and	r3, r2
	sub	r2, #0x7f
	orr	r1, r3
	add	r3, r0, r2
	strh	r1, [r3]
	mov	r1, #0xba
	lsl	r1, #1
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r1, #0x26
	add	r2, r0, r1
	strh	r3, [r2]
.La25c2:
	mov	r6, r8
	ldr	r0, [r5, #0x24]
	add	r6, #0x24
	bl	_Func_164ac
	ldr	r5, =0xea6
	ldr	r2, [r6]
	ldr	r3, .La2610	@ 1
	strb	r3, [r2, r5]
	bl	Func_a34c0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_Func_170f8
	bl	Func_ae8dc
	mov	r0, #0x37
	bl	Func_2dd8
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0
	strh	r3, [r2, #4]
	bl	_Func_1e318
	mov	r0, #0
	bl	_Func_1e3c8
	mov	r2, r9
	mov	r1, r7
	ldr	r0, =0x6004000
	bl	_call_via_r11
	ldr	r3, [r6]
	b	.La2638

	.align	2, 0
.La2610:
	.word	1
	.pool

.La2638:
	mov	r1, #0
	add	r3, r5
	strb	r1, [r3]
	mov	r0, r7
	bl	Func_2df0
	mov	r0, #1
	bl	Func_30f8
	bl	Func_a1050
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_Func_16178
	ldr	r3, [r6]
	mov	r2, #0
	add	r3, r5
	strb	r2, [r3]
	bl	_Func_91858
	mov	r0, r10
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a24d0

.thumb_func_start Func_a2680
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r1, [sp, #0x20]
	mov	r1, #0
	str	r0, [sp, #0x24]
	str	r2, [sp, #0x1c]
	str	r1, [sp, #0x18]
	str	r1, [sp, #0x14]
	str	r1, [sp, #0x10]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r8, r1
	mov	r9, r3
	bl	.La3252
.La26aa:
	mov	r2, r8
	cmp	r2, #0xc
	bls	.La26b4
	bl	.La324e
.La26b4:
	lsl	r3, r2, #2
	ldr	r2, =.La26bc
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La26bc:
	.word	.La26f0
	.word	.La2750
	.word	.La28d8
	.word	.La308e
	.word	.La2b8e
	.word	.La2a30
	.word	.La29a2
	.word	.La2dcc
	.word	.La3252
	.word	.La27b2
	.word	.La31fc
	.word	.La3162
	.word	.La323c
.La26f0:
	mov	r2, #0xba
	lsl	r2, #1
	add	r2, r9
	mov	r3, #0
	strh	r3, [r2]
	bl	Func_a4ee0
	bl	Func_a4e44
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r1, =0xad8
	mov	r0, #0
	bl	Func_a3cf8
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_16498
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	Func_a23c0
	mov	r0, #0
	bl	Func_a355c
	mov	r3, #1
	mov	r7, r0
	neg	r3, r3
	cmp	r7, r3
	bne	.La2740
	mov	r2, #0
	str	r3, [sp, #0x10]
	mov	r3, #1
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x18]
.La2740:
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_16498
	bl	Func_a345c
	bl	.La31f6
.La2750:
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	bl	Func_a3d6c
	mov	r3, #0
	mov	r8, r3
	cmp	r0, #0
	bne	.La2766
	bl	.La3252
.La2766:
	bl	Func_a4ee0
	bl	Func_a4e44
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r1, r9
	ldr	r2, [r1, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r1, =0xad9
	mov	r0, #0
	bl	Func_a3cf8
	mov	r0, #0
	bl	Func_a5788
	mov	r3, #1
	mov	r2, #0
	neg	r3, r3
	str	r0, [sp, #0x14]
	mov	r8, r2
	cmp	r0, r3
	bne	.La27a2
	bl	.La3252
.La27a2:
	ldr	r2, =0x25d
	mov	r3, #0xff
	add	r2, r9
	mov	r1, #9
	strb	r3, [r2]
	mov	r8, r1
	bl	.La3252
.La27b2:
	bl	Func_a414c
	mov	r5, #1
	mov	r7, r0
	neg	r5, r5
	cmp	r7, r5
	bne	.La27cc
	mov	r2, #1
	ldr	r3, =0x222
	mov	r8, r2
	add	r3, r9
	mov	r1, r8
	strh	r1, [r3]
.La27cc:
	cmp	r7, #0
	bne	.La28a8
	mov	r2, #0xbc
	lsl	r2, #1
	add	r2, r9
	ldrh	r3, [r2]
	ldr	r0, =0x1ff
	and	r0, r3
	mov	r10, r2
	bl	_Func_8e990
	cmp	r0, #0
	beq	.La280c
	mov	r3, #1
	str	r3, [sp, #0x18]
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r1, [sp, #0x24]
	str	r3, [r1]
	ldr	r2, [sp, #0x20]
	str	r7, [r2]
	mov	r3, r10
	ldrh	r2, [r3]
	ldr	r3, =0x1ff
	ldr	r1, [sp, #0x1c]
	and	r3, r2
	mov	r2, #1
	str	r3, [r1]
	str	r2, [sp, #0x10]
	bl	.La3252
.La280c:
	ldr	r3, =0x21a
	mov	r2, r10
	add	r3, r9
	ldrb	r0, [r3]
	ldrh	r1, [r2]
	mov	r11, r3
	bl	Func_a46b4
	mov	r6, r0
	cmp	r6, #1
	bne	.La2826
	mov	r3, #2
	mov	r8, r3
.La2826:
	cmp	r6, #2
	bne	.La287c
	bl	Func_a32b8
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_164ac
	ldr	r3, =0x25a
	add	r3, r9
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r2, r5
	add	r0, r3
	mov	r1, #0
	bl	Func_a1d08
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r5, #0xe4
	mov	r3, #0xd
	mov	r1, r11
	lsl	r5, #1
	strb	r3, [r2, #5]
	ldrb	r0, [r1]
	add	r5, r9
	bl	_Func_77394
	mov	r2, #0
	mov	r1, r5
	bl	Func_a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r5
	bl	Func_a3e28
	mov	r2, #0
	mov	r8, r2
.La287c:
	add	r3, r6, #1
	cmp	r3, #1
	bhi	.La28a8
	mov	r3, #1
	str	r3, [sp, #0x18]
	mov	r1, r11
	ldrb	r3, [r1]
	ldr	r2, [sp, #0x24]
	str	r3, [r2]
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r3, [r3]
	ldr	r1, [sp, #0x20]
	str	r3, [r1]
	mov	r3, r10
	ldrh	r2, [r3]
	ldr	r3, =0x1ff
	ldr	r1, [sp, #0x1c]
	and	r3, r2
	mov	r2, #1
	str	r3, [r1]
	str	r2, [sp, #0x10]
.La28a8:
	cmp	r7, #1
	bne	.La28b0
	mov	r3, #3
	mov	r8, r3
.La28b0:
	cmp	r7, #3
	bne	.La28b8
	mov	r1, #6
	mov	r8, r1
.La28b8:
	cmp	r7, #5
	bne	.La28c0
	mov	r2, #5
	mov	r8, r2
.La28c0:
	cmp	r7, #4
	bne	.La28c8
	mov	r3, #0xb
	mov	r8, r3
.La28c8:
	cmp	r7, #2
	beq	.La28d0
	bl	.La3252
.La28d0:
	mov	r1, #0xa
	mov	r8, r1
	bl	.La3252
.La28d8:
	mov	r5, #0x86
	lsl	r5, #1
	add	r5, r9
	bl	Func_a345c
	bl	Func_a4e68
	bl	Func_a4e20
	ldr	r0, [r5]
	bl	_Func_16498
	bl	Func_a51d0
	ldr	r1, [r5]
	ldr	r0, =0xadb
	mov	r2, #0x10
	mov	r3, #0x10
	bl	_Func_1e7c0
	mov	r0, #0
	bl	Func_a38d0
	mov	r5, #1
	neg	r5, r5
	cmp	r0, r5
	beq	.La29f2
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	mov	r7, #0
	bl	Func_a3ce4
	cmp	r0, #0
	beq	.La2926
	mov	r7, #8
.La2926:
	bl	Func_a32b8
	ldr	r3, =0x21b
	mov	r2, r9
	add	r3, r9
	mov	r6, r0
	ldrb	r1, [r3]
	ldr	r0, [r2, #0x24]
	mov	r3, r7
	mov	r2, #0
	bl	Func_a112c
	cmp	r6, r5
	beq	.La296e
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_164ac
	ldr	r3, =0x25a
	add	r3, r9
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldr	r3, =0xbef
	mov	r1, #0
	add	r0, r3
	mov	r2, r5
	bl	Func_a1d08
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	bl	Func_a4754
	mov	r1, #1
	mov	r8, r1
.La296e:
	ldr	r3, =0x21a
	mov	r5, #0xe4
	add	r3, r9
	lsl	r5, #1
	ldrb	r0, [r3]
	add	r5, r9
	bl	_Func_77394
	mov	r2, #0
	mov	r1, r5
	bl	Func_a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r5
	bl	Func_a3e28
	ldr	r2, =0x222
	mov	r3, #1
	add	r2, r9
	strh	r3, [r2]
	bl	.La3252
.La29a2:
	mov	r5, #0x86
	lsl	r5, #1
	add	r5, r9
	bl	Func_a4e68
	bl	Func_a4e20
	ldr	r0, [r5]
	bl	_Func_16498
	bl	Func_a51d0
	ldr	r1, [r5]
	mov	r3, #0x10
	ldr	r0, =0xadc
	mov	r2, #0x10
	bl	_Func_1e7c0
	mov	r0, #1
	bl	Func_a38d0
	mov	r1, #1
	mov	r3, #4
	neg	r1, r1
	mov	r8, r3
	cmp	r0, r1
	beq	.La29dc
	bl	.La3252
.La29dc:
	ldr	r3, =0x21a
	mov	r2, #0xba
	add	r3, r9
	ldrb	r3, [r3]
	lsl	r2, #1
	add	r2, r9
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_a3ef0
.La29f2:
	mov	r2, #9
	mov	r8, r2
	bl	.La3252

	.pool_aligned

.La2a30:
	mov	r5, #0xbc
	lsl	r5, #1
	add	r5, r9
	bl	Func_a345c
	ldrh	r3, [r5]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #0x10
	and	r3, r2
	mov	r6, #0
	cmp	r3, #0
	beq	.La2a6a
	ldrh	r3, [r5]
	lsr	r3, #11
	add	r5, r3, #1
	cmp	r5, #1
	ble	.La2a6a
	bl	Func_a51d0
	mov	r0, #0
	mov	r1, r5
	mov	r2, #1
	bl	Func_a4f08
	mov	r6, r0
.La2a6a:
	mov	r1, #1
	mov	r3, #9
	neg	r1, r1
	mov	r8, r3
	cmp	r6, r1
	bne	.La2a7a
	bl	.La3252
.La2a7a:
	ldr	r2, =0x21b
	mov	r3, #0
	add	r2, r9
	strb	r3, [r2]
	mov	r3, #0xbc
	ldr	r2, =0x1ff
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r8, r2
	mov	r5, #0x87
	mov	r1, r8
	lsl	r5, #2
	add	r5, r9
	and	r1, r3
	lsl	r3, r6, #11
	orr	r1, r3
	ldr	r3, [r5]
	mov	r0, #2
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_1bcd4
	ldr	r2, [r5]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r2, [r5]
	mov	r3, #0x78
	strh	r3, [r2, #6]
	ldr	r2, [r5]
	mov	r3, #0x1c
	strh	r3, [r2, #8]
	ldr	r0, [r5]
	bl	Func_a17c4
	mov	r3, r9
	ldr	r0, [r3, #0x34]
	mov	r3, #0x60
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x48
	mov	r3, #0x78
	bl	_Func_164d4
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	bl	_Func_16498
	ldr	r0, [sp, #0x14]
	bl	Func_a524c
	cmp	r0, #0
	bne	.La2b6e
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r7, [r3]
	mov	r0, r7
	bl	_Func_77394
	add	r0, r6, #1
	cmp	r0, #0
	ble	.La2b24
	mov	r5, r0
	mov	r6, r8
.La2afe:
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	mov	r0, r7
	bl	_Func_788c4
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r0, r6
	and	r0, r3
	mov	r1, #1
	sub	r5, #1
	bl	_Func_78ad0
	cmp	r5, #0
	bne	.La2afe
.La2b24:
	mov	r0, r7
	bl	_Func_77428
	bl	Func_a4e44
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r1, #0
	bl	Func_a3e88
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, #0xd
	strb	r2, [r3, #5]
	mov	r1, r9
	ldr	r3, [r1, #0x14]
	mov	r0, #1
	strb	r2, [r3, #5]
	bl	Func_30f8
	mov	r2, r9
	ldr	r0, [r2, #0x2c]
	bl	_Func_164ac
	mov	r2, #0xd
	ldr	r0, =0xb7d
	mov	r1, #0xe
	bl	Func_a1d08
	ldr	r2, =0x222
	mov	r3, #1
	add	r2, r9
	strh	r3, [r2]
	b	.La2b70
.La2b6e:
	mov	r3, #9
.La2b70:
	mov	r8, r3
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	bl	_Func_77428
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	bl	_Func_91858
	b	.La3252
.La2b8e:
	mov	r5, #0xbc
	lsl	r5, #1
	add	r5, r9
	ldr	r7, =0x1ff
	ldrh	r3, [r5]
	mov	r0, r7
	mov	r1, #0
	and	r0, r3
	mov	r10, r1
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La2c6a
	ldr	r6, =0x21b
	ldrh	r3, [r5]
	add	r6, r9
	mov	r1, r7
	ldrb	r0, [r6]
	and	r1, r3
	bl	Func_a3d9c
	mov	r5, r0
	cmp	r5, #0x1e
	bne	.La2bc8
	mov	r2, #1
	mov	r10, r2
.La2bc8:
	ldrb	r0, [r6]
	bl	Func_a3d6c
	cmp	r0, #0xf
	bne	.La2bd6
	cmp	r5, #0
	beq	.La2c8a
.La2bd6:
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r1, r10
	lsr	r3, #11
	add	r3, #1
	cmp	r1, #0
	bne	.La2cb4
	lsl	r2, r3, #24
	asr	r1, r2, #24
	add	r3, r5, r1
	cmp	r3, #0x1e
	ble	.La2bf6
	mov	r3, #0x1e
	sub	r1, r3, r5
.La2bf6:
	mov	r3, #0x80
	lsl	r3, #17
	cmp	r2, r3
	ble	.La2c0a
	mov	r0, #0
	mov	r2, #0
	bl	Func_a4f08
	mov	r6, r0
	b	.La2c0c
.La2c0a:
	mov	r6, #0
.La2c0c:
	mov	r1, #1
	neg	r1, r1
	cmp	r6, r1
	bne	.La2c16
	b	.La2df0
.La2c16:
	mov	r7, #0
	add	r6, #1
	cmp	r7, r6
	bge	.La2cb4
	ldr	r3, =0x5ff
	mov	r11, r3
.La2c22:
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r1, r11
	and	r1, r3
	bl	_Func_78588
	mov	r1, #1
	mov	r5, r0
	neg	r1, r1
	cmp	r5, r1
	beq	.La2c5e
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	bl	_Func_788c4
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r9
	strh	r5, [r3]
	b	.La2c62
.La2c5e:
	mov	r2, #1
	mov	r10, r2
.La2c62:
	add	r7, #1
	cmp	r7, r6
	blt	.La2c22
	b	.La2cb4
.La2c6a:
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r1, =0x5ff
	and	r1, r3
	bl	_Func_78588
	mov	r5, #1
	mov	r6, r0
	neg	r5, r5
	cmp	r6, r5
	bne	.La2c90
.La2c8a:
	mov	r3, #7
	mov	r8, r3
	b	.La3252
.La2c90:
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r9
	strh	r6, [r3]
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	bl	_Func_788c4
	mov	r6, r0
	cmp	r6, r5
	bne	.La2cb4
	mov	r1, #1
	mov	r10, r1
.La2cb4:
	ldr	r5, =0x21a
	ldr	r7, =0x21b
	add	r5, r9
	ldrb	r0, [r5]
	add	r7, r9
	bl	_Func_77428
	ldrb	r0, [r7]
	bl	_Func_77428
	ldrb	r0, [r5]
	bl	_Func_78bf0
	ldrb	r0, [r7]
	bl	_Func_78bf0
	mov	r2, r10
	mov	r6, #1
	cmp	r2, #0
	bne	.La2d0a
	ldrb	r3, [r7]
	mov	r2, #0xbc
	strb	r3, [r5]
	lsl	r2, #1
	add	r2, r9
	ldrh	r1, [r2]
	ldr	r3, =0x1ff
	and	r3, r1
	strh	r3, [r2]
	bl	Func_a4e90
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	bl	_Func_16498
	bl	Func_a51d0
	mov	r0, #0
	bl	Func_a5388
	mov	r6, r0
.La2d0a:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.La2d18
	b	.La3252
.La2d18:
	mov	r1, #1
	ldrb	r0, [r7]
	bl	Func_a3e88
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, r10
	cmp	r1, #1
	bne	.La2d40
	mov	r2, r9
	ldr	r0, [r2, #0x2c]
	bl	_Func_164ac
	ldr	r0, =0xb85
	b	.La2d4e
.La2d40:
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_164ac
	cmp	r6, #1
	bne	.La2d58
	ldr	r0, =0xb7f
.La2d4e:
	mov	r1, #0xf
	mov	r2, #0xe
	bl	Func_a1d08
	b	.La3084
.La2d58:
	mov	r2, #0xbb
	ldrb	r3, [r7]
	lsl	r2, #1
	add	r2, r9
	mov	r0, r3
	ldrh	r1, [r2]
	mov	r2, #0
	bl	Func_a3ef0
	ldr	r5, =0xb7c
	mov	r2, #0xe
	mov	r0, r5
	mov	r1, #0xf
	bl	Func_a1d08
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r0, [r3]
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.La2d8e
	b	.La3084
.La2d8e:
	mov	r0, #0x67
	bl	_Func_f9080
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_164ac
	add	r0, r5, #7
	mov	r1, #0xe
	mov	r2, #0xe
	bl	Func_a1d08
	b	.La3084

	.pool_aligned

.La2dcc:
	mov	r3, #0
	mov	r10, r3
	bl	Func_a4ee0
	bl	Func_a4e44
	ldr	r1, =0xadd
	mov	r0, #0
	bl	Func_a3cf8
	mov	r0, #1
	bl	Func_a5788
	mov	r1, #1
	neg	r1, r1
	str	r0, [sp, #0x14]
	cmp	r0, r1
	bne	.La2dfc
.La2df0:
	mov	r2, #6
	mov	r8, r2
	b	.La3252
.La2df6:
	mov	r3, #1
	mov	r10, r3
	b	.La2eea
.La2dfc:
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	bl	_Func_77394
	ldr	r3, =0x21b
	str	r0, [sp, #0xc]
	add	r3, r9
	ldrb	r0, [r3]
	bl	_Func_77394
	mov	r5, #0xa6
	lsl	r5, #1
	str	r0, [sp, #8]
	mov	r0, r5
	bl	Func_4938
	mov	r11, r0
	mov	r0, r5
	bl	Func_4938
	mov	r2, r5
	ldr	r1, [sp, #0xc]
	mov	r8, r0
	ldr	r6, =Func_1af8
	mov	r0, r11
	bl	_call_via_r6
	mov	r2, r5
	mov	r0, r8
	ldr	r1, [sp, #8]
	bl	_call_via_r6
	add	r5, #0xce
	mov	r7, #0
	add	r5, r9
	b	.La2e5e

	.pool_aligned

.La2e58:
	add	r3, r7, #1
	lsl	r3, #24
	lsr	r7, r3, #24
.La2e5e:
	cmp	r7, #0x1d
	bhi	.La2e82
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrb	r0, [r5]
	ldrh	r1, [r3]
	bl	_Func_788c4
	mov	r6, r0
	cmp	r6, #2
	beq	.La2e82
	mov	r1, #1
	neg	r1, r1
	cmp	r6, r1
	bne	.La2e58
	mov	r2, #1
	mov	r10, r2
.La2e82:
	add	r3, r7, #1
	lsl	r3, #24
	lsr	r7, r3, #24
	mov	r5, #0
.La2e8a:
	mov	r3, #0xbd
	lsl	r3, #1
	add	r3, r9
	ldrh	r2, [r3]
	ldr	r3, =0x200
	and	r3, r2
	cmp	r3, #0
	beq	.La2eb0
	ldr	r0, =0x1ff
	and	r0, r2
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La2eb0
	mov	r3, #1
	mov	r10, r3
.La2eb0:
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r9
	ldrh	r1, [r3]
	bl	_Func_788c4
	b	.La2ed0

	.pool_aligned

.La2ed0:
	mov	r6, r0
	cmp	r6, #2
	beq	.La2eea
	mov	r1, #1
	neg	r1, r1
	cmp	r6, r1
	bne	.La2ee0
	b	.La2df6
.La2ee0:
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #0x1d
	bls	.La2e8a
.La2eea:
	add	r3, r5, #1
	lsl	r3, #24
	ldr	r2, =0x5ff
	lsr	r5, r3, #24
	b	.La2f08

	.pool_aligned

.La2ef8:
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r9
	strh	r6, [r3]
	mov	r3, r7
	add	r3, #0xff
	lsl	r3, #24
	lsr	r7, r3, #24
.La2f08:
	cmp	r7, #0
	beq	.La2f34
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r1, r2
	and	r1, r3
	str	r2, [sp, #4]
	bl	_Func_78588
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	ldr	r2, [sp, #4]
	cmp	r6, r3
	bne	.La2ef8
	mov	r1, #1
	mov	r10, r1
.La2f34:
	ldr	r7, .La2f38	@ 0x5ff
	b	.La2f50

	.align	2, 0
.La2f38:
	.word	0x5ff
	.pool

.La2f40:
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	strh	r6, [r3]
	mov	r3, r5
	add	r3, #0xff
	lsl	r3, #24
	lsr	r5, r3, #24
.La2f50:
	cmp	r5, #0
	beq	.La2f78
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbd
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r1, r7
	and	r1, r3
	bl	_Func_78588
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	bne	.La2f40
	mov	r3, #1
	mov	r10, r3
.La2f78:
	mov	r0, #1
	bl	Func_30f8
	mov	r1, r10
	cmp	r1, #1
	bne	.La2fac
	mov	r2, #0xa6
	ldr	r0, [sp, #0xc]
	ldr	r5, =Func_1af8
	mov	r1, r11
	lsl	r2, #1
	bl	_call_via_r5
	mov	r2, #0xa6
	mov	r1, r8
	ldr	r0, [sp, #8]
	lsl	r2, #1
	bl	_call_via_r5
	mov	r2, r9
	ldr	r0, [r2, #0x2c]
	bl	_Func_164ac
	ldr	r0, =0xb84
	mov	r1, #0xf
	b	.La3066
.La2fac:
	ldr	r5, =0x21a
	ldr	r7, =0x21b
	add	r5, r9
	ldrb	r0, [r5]
	add	r7, r9
	bl	_Func_77428
	ldrb	r0, [r7]
	bl	_Func_77428
	ldrb	r0, [r5]
	bl	_Func_78bf0
	ldrb	r0, [r7]
	bl	_Func_78bf0
	bl	Func_a4e68
	bl	Func_a4e90
	bl	Func_a3480
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	bl	_Func_16498
	ldrb	r3, [r7]
	strb	r3, [r5]
	mov	r5, #0xbc
	lsl	r5, #1
	add	r5, r9
	ldrh	r2, [r5]
	ldr	r3, =0x1ff
	and	r3, r2
	strh	r3, [r5]
	bl	Func_a51d0
	mov	r0, #0
	bl	Func_a5388
	mov	r6, r0
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La3078
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_164ac
	bl	Func_a4e20
	ldrb	r0, [r7]
	mov	r1, #1
	bl	Func_a3e88
	cmp	r6, #0
	bne	.La306e
	mov	r2, #0xbb
	ldrb	r3, [r7]
	lsl	r2, #1
	add	r2, r9
	mov	r0, r3
	ldrh	r1, [r2]
	mov	r2, #0
	bl	Func_a3ef0
	ldr	r6, =0xb7c
	mov	r2, #0xe
	mov	r0, r6
	mov	r1, #0xf
	bl	Func_a1d08
	ldrh	r0, [r5]
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La3078
	mov	r0, #0x67
	bl	_Func_f9080
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_164ac
	add	r0, r6, #7
	mov	r1, #0xe
.La3066:
	mov	r2, #0xe
	bl	Func_a1d08
	b	.La3078
.La306e:
	ldr	r0, =0xb81
	mov	r1, #0xf
	mov	r2, #0xe
	bl	Func_a1d08
.La3078:
	mov	r0, r8
	bl	Func_2df0
	mov	r0, r11
	bl	Func_2df0
.La3084:
	bl	_Func_91858
	mov	r2, #0
	mov	r8, r2
	b	.La3252
.La308e:
	ldr	r7, =0x21a
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	add	r7, r9
	ldrh	r1, [r3]
	ldrb	r0, [r7]
	mov	r10, r3
	bl	_Func_78708
	mov	r5, #1
	mov	r1, #1
	mov	r6, r0
	neg	r5, r5
	mov	r8, r1
	cmp	r6, r5
	bne	.La30b2
	b	.La3252
.La30b2:
	mov	r2, #2
	neg	r2, r2
	cmp	r6, r2
	bne	.La30d2
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_164ac
	mov	r1, #0
	ldr	r0, =0xb82
	mov	r2, r5
	bl	Func_a1d08
	mov	r1, #1
	mov	r8, r1
	b	.La3252
.La30d2:
	ldrb	r0, [r7]
	bl	_Func_77428
	ldrb	r0, [r7]
	bl	_Func_78bf0
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r5, #0xe4
	mov	r3, #0xd
	lsl	r5, #1
	strb	r3, [r2, #5]
	add	r5, r9
	ldrb	r0, [r7]
	bl	_Func_77394
	mov	r2, #0
	mov	r1, r5
	bl	Func_a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r5
	bl	Func_a3e28
	mov	r0, #1
	bl	Func_30f8
	ldrb	r3, [r7]
	mov	r2, r10
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_a3ef0
	mov	r3, r9
	ldr	r0, [r3, #0x2c]
	bl	_Func_164ac
	ldr	r5, =0xb7c
	mov	r2, #8
	mov	r0, r5
	mov	r1, #0xf
	bl	Func_a1d08
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r0, [r3]
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La31f6
	mov	r0, #0x67
	bl	_Func_f9080
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_164ac
	add	r0, r5, #7
	mov	r1, #0xe
	mov	r2, #8
	bl	Func_a1d08
	b	.La31f6
.La3162:
	ldr	r6, =0x21a
	add	r6, r9
	ldrb	r0, [r6]
	bl	_Func_77394
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r9
	ldrh	r2, [r3]
	lsl	r2, #1
	add	r2, #0xd8
	ldrh	r1, [r0, r2]
	mov	r8, r3
	ldr	r3, =0xfdff
	and	r3, r1
	strh	r3, [r0, r2]
	ldrb	r0, [r6]
	bl	_Func_77428
	ldrb	r0, [r6]
	bl	_Func_78bf0
	mov	r1, r9
	ldr	r2, [r1, #0x14]
	mov	r3, #0
	mov	r5, #0xe4
	mov	r10, r3
	lsl	r5, #1
	mov	r3, #0xd
	strb	r3, [r2, #5]
	add	r5, r9
	ldrb	r0, [r6]
	bl	_Func_77394
	mov	r2, #0
	mov	r1, r5
	bl	Func_a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r9
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r5
	mov	r5, #0x97
	bl	Func_a3e28
	lsl	r5, #2
	mov	r0, #1
	bl	Func_30f8
	add	r5, r9
	mov	r3, #1
	strb	r3, [r5]
	ldrb	r3, [r6]
	mov	r2, r8
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_a3ef0
	mov	r3, r10
	strb	r3, [r5]
	mov	r1, r9
	ldr	r0, [r1, #0x2c]
	bl	_Func_164ac
	mov	r2, #8
	ldr	r0, =0xb80
	mov	r1, #0xe
	bl	Func_a1d08
	bl	_Func_91858
.La31f6:
	mov	r2, #1
	mov	r8, r2
	b	.La3252
.La31fc:
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r0, [r3]
	bl	Func_a4800
	mov	r1, r9
	ldr	r0, [r1, #0x24]
	bl	_Func_16498
	ldr	r3, =0x21a
	mov	r2, #0xba
	add	r3, r9
	ldrb	r3, [r3]
	lsl	r2, #1
	add	r2, r9
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_a3ef0
	mov	r3, r9
	ldr	r2, [r3, #0x14]
	mov	r1, #9
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r8, r1
	b	.La3252
.La323c:
	mov	r0, #0
	mov	r1, #0x1e
	mov	r2, #0
	bl	Func_a4f08
	mov	r3, #1
	mov	r6, r0
	mov	r8, r3
	b	.La3252
.La324e:
	mov	r1, #1
	str	r1, [sp, #0x18]
.La3252:
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.La3268
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La3268
	bl	.La26aa
.La3268:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.La327a
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0x10]
.La327a:
	ldr	r0, [sp, #0x10]
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a2680

.thumb_func_start Func_a32b8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r2, #0xba
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r0, [r3]
	ldr	r3, =0x21a
	add	r2, #0xa7
	add	r7, r5, r3
	add	r2, r5
	ldrb	r1, [r7]
	mov	r8, r2
	ldrb	r2, [r2]
	bl	Func_a9e48
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	cmp	r6, r3
	bne	.La3312
	mov	r0, #0x72
	bl	_Func_f9080
	ldr	r0, [r5, #0x2c]
	bl	_Func_164ac
	ldr	r2, =0x25a
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r2, r6
	add	r0, r3
	mov	r1, r6
	bl	Func_a1d08
	ldr	r3, =0x222
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	mov	r0, r6
	b	.La3332
.La3312:
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	Func_aa448
	ldrb	r0, [r7]
	bl	_Func_77428
	mov	r3, r8
	ldrb	r0, [r3]
	bl	_Func_77428
	mov	r0, #1
.La3332:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a32b8

.thumb_func_start Func_a3354
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	ldr	r7, [r3]
	mov	r0, r7
	sub	sp, #4
	bl	Func_a1814
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	bl	Func_a1870
	mov	r0, #0xa5
	lsl	r0, #1
	ldr	r1, .La33b0	@ 0x1e
	mov	r2, #3
	add	r3, r7, r0
.La337a:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La337a
	mov	r5, #0
	str	r5, [r7, #0x28]
	str	r5, [r7, #0x24]
	mov	r6, #2
	mov	r1, #0x11
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	str	r6, [sp]
	bl	_Func_162d4
	mov	r2, #0x88
	str	r0, [r7, #0x2c]
	lsl	r2, #1
	ldr	r0, =0x111
	add	r3, r7, r2
	str	r5, [r7, #0x20]
	strb	r5, [r3]
	add	r3, r7, r0
	strb	r5, [r3]
	b	.La33bc

	.align	2, 0
.La33b0:
	.word	0x1e
	.pool

.La33bc:
	mov	r3, #0x89
	lsl	r3, #1
	add	r2, r7, r3
	add	r0, #2
	mov	r3, #8
	strb	r3, [r2]
	add	r3, r7, r0
	strb	r6, [r3]
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a3354

.thumb_func_start Func_a33d4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r0
	mov	r3, #0xa8
	mov	r6, r8
	sub	sp, #4
	mov	r7, r1
	mov	r5, #0
	mov	r10, r3
	add	r6, #0x48
.La33ec:
	mov	r3, r10
	str	r3, [sp]
	mov	r1, r5
	mov	r0, #2
	mov	r2, r7
	mov	r3, #0xf8
	bl	_Func_1eb64
	add	r5, #1
	stmia	r6!, {r0}
	cmp	r5, #7
	ble	.La33ec
	mov	r3, #0xa8
	mov	r6, r8
	mov	r5, #8
	mov	r10, r3
	add	r6, #0x68
.La340e:
	mov	r3, r10
	str	r3, [sp]
	mov	r3, #0x80
	mov	r1, r5
	mov	r0, #2
	mov	r2, r7
	lsl	r3, #1
	bl	_Func_1eb64
	add	r5, #1
	stmia	r6!, {r0}
	cmp	r5, #0xf
	ble	.La340e
	mov	r3, #0xa8
	mov	r6, r8
	mov	r5, #0x10
	mov	r10, r3
	add	r6, #0x88
.La3432:
	mov	r3, r10
	str	r3, [sp]
	mov	r3, #0x80
	mov	r1, r5
	mov	r0, #2
	mov	r2, r7
	lsl	r3, #1
	bl	_Func_1eb64
	add	r5, #1
	stmia	r6!, {r0}
	cmp	r5, #0x1f
	ble	.La3432
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a33d4

.thumb_func_start Func_a345c
	push	{lr}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r0, #0xd
	add	r3, #0x48
	mov	r1, #0x1f
.La3468:
	ldmia	r3!, {r2}
	cmp	r2, #0
	beq	.La3470
	strb	r0, [r2, #5]
.La3470:
	sub	r1, #1
	cmp	r1, #0
	bge	.La3468
	pop	{r0}
	bx	r0
.func_end Func_a345c

.thumb_func_start Func_a3480
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r2, #0xd
	mov	r7, r3
	mov	r6, #0
	mov	r8, r2
	add	r7, #0x48
.La3494:
	ldmia	r7!, {r5}
	cmp	r5, #0
	beq	.La34aa
	mov	r0, r6
	mov	r1, #5
	bl	Func_b1c_from_thumb
	cmp	r0, #0
	bne	.La34aa
	mov	r3, r8
	strb	r3, [r5, #5]
.La34aa:
	add	r6, #1
	cmp	r6, #0x1f
	ble	.La3494
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a3480

.thumb_func_start Func_a34c0
	push	{r5, lr}
	ldr	r3, =iwram_1f2c
	ldr	r5, [r3]
	bl	Func_a195c
	bl	Func_a345c
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0xbe
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r2, [r3]
	mov	r0, r5
	mov	r3, #0xd
	strb	r3, [r2, #5]
	add	r0, #0x10
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x20
	mov	r1, #1
	bl	Func_a1114
	mov	r3, #0x86
	lsl	r3, #1
	add	r0, r5, r3
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x24
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x28
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x2c
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x30
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x34
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x38
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x3c
	mov	r1, #1
	bl	Func_a1114
	mov	r0, r5
	add	r0, #0x40
	mov	r1, #1
	bl	Func_a1114
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_a34c0

.thumb_func_start Func_a355c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	mov	r10, r0
	ldr	r7, [r3]
	mov	r6, r10
	mov	r1, #0
	add	r6, #0x1c
	ldr	r0, [r7, #0x2c]
	mov	r8, r1
	ldrsb	r5, [r7, r6]
	bl	_Func_164ac
	ldr	r1, =0x219
	add	r3, r7, r1
	ldrb	r3, [r3]
	add	r2, r7, #2
	strb	r3, [r2, r6]
	mov	r2, #1
	neg	r2, r2
	cmp	r5, r2
	bne	.La3594
	mov	r3, r8
	strb	r3, [r7, r6]
	mov	r6, #0
	b	.La35a2
.La3594:
	lsl	r6, r5, #1
	add	r0, r6, r5
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_a1ac0
.La35a2:
	mov	r5, #0x82
	lsl	r5, #2
	add	r3, r6, r5
	ldrh	r0, [r7, r3]
	bl	_Func_77394
	mov	r1, #0xe4
	lsl	r1, #1
	add	r6, r7, r1
	mov	r1, r6
	mov	r2, #0
	bl	Func_a3ddc
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	add	r5, r7, r5
	strb	r0, [r3]
	mov	r1, r6
	mov	r0, r5
	bl	Func_a35f8
	mov	r1, r10
	lsl	r3, r1, #2
	add	r3, #0x14
	mov	r8, r0
	ldr	r0, [r7, r3]
	bl	Func_a17c4
	mov	r0, #1
	bl	Func_30f8
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a355c

.thumb_func_start Func_a35f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r0, [sp, #0x1c]
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r1, #0x1c
	ldrsb	r1, [r3, r1]
	mov	r2, #0x1e
	ldrsb	r2, [r3, r2]
	mov	r8, r1
	mov	r1, #0
	str	r2, [sp, #0x18]
	str	r1, [sp, #0x14]
	str	r1, [sp, #0xc]
	str	r1, [sp, #8]
	mov	r2, r8
	lsl	r7, r2, #1
	mov	r10, r3
	ldrh	r0, [r7, r0]
	mov	r3, #1
	mov	r11, r3
	bl	_Func_77394
	mov	r5, r10
	mov	r3, #0xa
	add	r5, #0x20
	str	r0, [sp, #0x10]
	str	r3, [sp]
	mov	r7, #2
	mov	r0, r5
	mov	r1, #0xd
	mov	r2, #3
	mov	r3, #0x11
	str	r7, [sp, #4]
	bl	Func_a10d0
	cmp	r0, #0
	beq	.La3658
	ldr	r1, [r5]
	mov	r0, r10
	bl	Func_a33d4
.La3658:
	mov	r6, r10
	mov	r3, #4
	add	r6, #0x28
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #0xd
	mov	r2, #0xd
	mov	r3, #0x11
	str	r7, [sp, #4]
	bl	Func_a10d0
	cmp	r0, #0
	beq	.La368e
	ldr	r3, [sp, #0x14]
	ldr	r2, [r6]
	mov	r0, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0
	bl	_Func_1eb64
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r10
	str	r0, [r3]
	mov	r3, #0xd
	strb	r3, [r0, #5]
.La368e:
	ldr	r5, =0xb87
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	add	r5, #1
	bl	_Func_1e7c0
	ldr	r1, [r6]
	mov	r2, #0
	mov	r3, #8
	mov	r0, r5
	bl	_Func_1e7c0
	mov	r1, r10
	ldr	r3, [r1, #0x14]
	mov	r2, r11
	strb	r2, [r3, #5]
	b	.La3864
.La36b4:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x18]
	add	r0, r8
	bl	Func_b1c_from_thumb
	lsl	r7, r0, #1
	mov	r8, r0
	add	r0, r7, r0
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_a1a40
	mov	r3, r11
	mov	r9, r7
	cmp	r3, #0
	beq	.La375c
	mov	r1, #0
	ldr	r3, [sp, #0x1c]
	str	r1, [sp, #0xc]
	add	r5, r7, r3
	mov	r2, r10
	ldrh	r0, [r5]
	mov	r11, r1
	ldr	r6, [r2, #0x24]
	bl	_Func_77394
	ldr	r1, [sp, #8]
	str	r0, [sp, #0x10]
	cmp	r1, #0
	beq	.La3728
	ldrh	r0, [r5]
	bl	_Func_77394
	mov	r1, #0xe4
	lsl	r1, #1
	add	r1, r10
	mov	r2, #0
	bl	Func_a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r10
	strb	r0, [r3]
	ldrh	r0, [r5]
	bl	Func_a38a8
	ldrh	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #8
	bl	Func_a112c
	b	.La373c

	.pool_aligned

.La3728:
	ldrh	r0, [r5]
	mov	r1, #0
	bl	Func_a3e88
	ldrh	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	Func_a112c
.La373c:
	mov	r3, #0xa5
	lsl	r3, #1
	ldr	r1, =0x1e
	mov	r2, #3
	add	r3, r10
.La3746:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La3746
	mov	r2, #0xa2
	lsl	r2, #1
	ldr	r3, =0x1a
	add	r2, r9
	mov	r1, r10
	strh	r3, [r1, r2]
.La375c:
	mov	r0, #1
	bl	Func_30f8
	ldr	r6, =iwram_1c94
	ldr	r3, [r6]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La37f0
	ldr	r3, =iwram_1ae8
	mov	r2, #0x80
	b	.La3784

	.pool_aligned

.La3784:
	ldr	r3, [r3]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La37d0
	ldr	r2, [sp, #0xc]
	add	r2, #4
	mov	r3, r2
	cmp	r2, #0
	bge	.La379c
	ldr	r3, [sp, #0xc]
	add	r3, #7
.La379c:
	asr	r3, #2
	lsl	r3, #2
	sub	r3, r2, r3
	ldr	r0, [sp, #0x10]
	lsl	r3, #24
	lsr	r3, #24
	mov	r1, r3
	add	r0, #0xd8
	str	r3, [sp, #0xc]
	bl	Func_a1e38
	ldr	r3, [sp, #0xc]
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	str	r3, [sp, #0xc]
	ldr	r3, [sp, #0x1c]
	mov	r2, r9
	ldrh	r0, [r2, r3]
	mov	r1, #0
	bl	Func_a3e88
	mov	r0, #0x70
	bl	_Func_f9080
	b	.La37f0
.La37d0:
	ldr	r5, [sp, #0x1c]
	add	r5, r9
	ldrh	r0, [r5]
	bl	Func_a3d6c
	cmp	r0, #0
	beq	.La37ea
	mov	r0, #0x70
	bl	_Func_f9080
	ldrh	r5, [r5]
	str	r5, [sp, #0x14]
	b	.La3876
.La37ea:
	mov	r0, #0x72
	bl	_Func_f9080
.La37f0:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La3808
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x14]
	b	.La3876
.La3808:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La381a
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r11, r3
.La381a:
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	bne	.La3832
	ldr	r1, [sp, #8]
	cmp	r1, #1
	bne	.La3832
	mov	r2, #0
	mov	r3, #1
	str	r2, [sp, #8]
	mov	r11, r3
.La3832:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La384e
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #1
	neg	r1, r1
	mov	r2, #1
	add	r8, r1
	mov	r11, r2
.La384e:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La3864
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, #1
	add	r8, r3
	mov	r11, r3
.La3864:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La3872
	b	.La36b4
.La3872:
	mov	r1, r8
	lsl	r7, r1, #1
.La3876:
	mov	r3, r10
	mov	r2, r8
	strb	r2, [r3, #0x1c]
	ldr	r1, [sp, #0x1c]
	ldrh	r2, [r7, r1]
	str	r2, [r3, #8]
	ldr	r3, =0x21a
	add	r3, r10
	strb	r2, [r3]
	ldr	r0, [sp, #0x14]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a35f8

.thumb_func_start Func_a38a8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f2c
	ldr	r5, [r3]
	mov	r6, r0
	bl	Func_a9cbc
	ldr	r0, [r5, #0x20]
	bl	_Func_16498
	ldr	r0, [r5, #0x20]
	mov	r1, r6
	mov	r2, #0
	bl	Func_a9a5c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_a38a8

.thumb_func_start Func_a38d0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r0, [sp, #0x18]
	ldr	r3, =iwram_1f2c
	ldr	r6, [r3]
	ldr	r1, [r6, #0x20]
	mov	r8, r1
	ldr	r1, =0x219
	add	r3, r6, r1
	ldrb	r3, [r3]
	mov	r2, #0x1d
	ldrsb	r2, [r6, r2]
	str	r3, [sp, #0x14]
	mov	r3, #0
	str	r3, [sp, #0xc]
	str	r3, [sp, #8]
	mov	r10, r2
	mov	r3, #0xc
	mov	r2, #1
	str	r2, [sp, #0x10]
	str	r3, [sp]
	mov	r2, #5
	mov	r0, r8
	mov	r1, #0xd
	mov	r3, #0x11
	bl	Func_a23f4
	ldr	r0, [r6, #0x20]
	bl	_Func_16498
	mov	r3, #0x1c
	ldrsb	r3, [r6, r3]
	mov	r1, #0x82
	lsl	r1, #2
	lsl	r3, #1
	add	r3, r1
	ldrh	r0, [r6, r3]
	bl	_Func_77394
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_a3c08
	bl	Func_41d8
	b	.La3ba0

	.pool_aligned

.La3944:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.La394c
	b	.La3b08
.La394c:
	ldr	r0, [sp, #0x14]
	mov	r3, #0
	ldr	r1, [sp, #0x14]
	add	r0, r10
	str	r3, [sp, #0x10]
	bl	Func_b1c_from_thumb
	mov	r10, r0
	mov	r2, r10
	lsl	r2, #1
	mov	r3, #0x82
	ldr	r1, [r6, #0x20]
	lsl	r3, #2
	str	r2, [sp, #4]
	add	r7, r2, r3
	ldrh	r0, [r6, r7]
	mov	r8, r1
	mov	r9, r2
	bl	_Func_77394
	ldr	r3, [r6, #0x10]
	ldr	r2, [sp, #4]
	ldrh	r1, [r3, #0xc]
	add	r2, r10
	add	r1, r2
	ldr	r2, =0x1ff
	ldr	r5, [r6, #0x18]
	ldr	r3, .La39a4	@ 0xffff
	lsl	r1, #3
	sub	r1, #2
	mov	r11, r2
	strh	r1, [r5, #6]
	and	r1, r3
	mov	r3, r11
	and	r1, r3
	ldr	r2, .La39a8	@ 0xfffffe00
	ldrh	r3, [r5, #0x16]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r5, #0x16]
	ldr	r1, [sp, #0x18]
	cmp	r1, #1
	bne	.La3a5c
	b	.La39b0

	.align	2, 0
.La39a4:
	.word	0xffff
.La39a8:
	.word	0xfffffe00
	.pool

.La39b0:
	ldrh	r0, [r6, r7]
	mov	r1, #1
	bl	Func_a3e88
	mov	r3, #9
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x10
	bl	_Func_1e41c
	mov	r3, #0x50
	str	r3, [sp]
	mov	r0, r8
	mov	r3, #0x78
	mov	r1, #0
	mov	r2, #0x48
	bl	_Func_164d4
	mov	r3, #0x1c
	ldrsb	r3, [r6, r3]
	cmp	r10, r3
	beq	.La3a40
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r3, [r3]
	mov	r1, r11
	ldrh	r0, [r6, r7]
	and	r1, r3
	bl	Func_a3d9c
	mov	r5, r0
	cmp	r5, #0
	beq	.La3a14
	mov	r3, #0x48
	str	r3, [sp]
	mov	r1, #2
	mov	r2, r8
	mov	r3, #8
	bl	_Func_1ea08
	ldr	r0, =0xb2f
	mov	r1, r8
	mov	r2, #0x18
	mov	r3, #0x48
	bl	_Func_1e7c0
	b	.La3a20
.La3a14:
	ldr	r0, =0xb31
	mov	r1, r8
	mov	r2, #0x10
	mov	r3, #0x48
	bl	_Func_1e7c0
.La3a20:
	mov	r3, #0x82
	lsl	r3, #2
	add	r3, r9
	ldrh	r0, [r6, r3]
	bl	Func_a3d6c
	cmp	r0, #0xf
	bne	.La3a40
	cmp	r5, #0
	bne	.La3a40
	ldr	r0, =0xb30
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0x48
	bl	_Func_1e7c0
.La3a40:
	ldr	r1, =0x21a
	mov	r2, #0xba
	add	r3, r6, r1
	lsl	r2, #1
	ldrb	r0, [r3]
	add	r3, r6, r2
	ldrh	r1, [r3]
	mov	r3, #0x82
	lsl	r3, #2
	add	r3, r9
	ldrh	r3, [r6, r3]
	mov	r2, #0
	bl	Func_a3ef0
.La3a5c:
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	bne	.La3b0e
	mov	r1, #0xbc
	lsl	r1, #1
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r0, .La3a90	@ 0x1ff
	and	r0, r3
	bl	Func_a3ce4
	cmp	r0, #0
	beq	.La3aa4
	mov	r3, #0x82
	lsl	r3, #2
	mov	r2, #0xba
	add	r3, r9
	lsl	r2, #1
	ldrh	r1, [r6, r3]
	add	r3, r6, r2
	ldrh	r2, [r3]
	ldr	r0, [r6, #0x24]
	mov	r3, #8
	bl	Func_a112c
	b	.La3abc

	.align	2, 0
.La3a90:
	.word	0x1ff
	.pool

.La3aa4:
	mov	r3, #0x82
	lsl	r3, #2
	mov	r2, #0xba
	add	r3, r9
	lsl	r2, #1
	ldrh	r1, [r6, r3]
	add	r3, r6, r2
	ldrh	r2, [r3]
	ldr	r0, [r6, #0x24]
	mov	r3, #0
	bl	Func_a112c
.La3abc:
	ldr	r0, =0x151
	bl	_Func_79338
	cmp	r0, #0
	bne	.La3af2
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.La3af2
	ldr	r0, [r6, #0x2c]
	bl	_Func_16498
	mov	r1, #0xbc
	lsl	r1, #1
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r0, .La3afc	@ 0x1ff
	and	r0, r3
	ldr	r3, =0x75
	mov	r2, #0
	add	r0, r3
	ldr	r1, [r6, #0x2c]
	mov	r3, #0
	bl	_Func_1e7c0
	mov	r2, #1
	str	r2, [sp, #8]
	b	.La3b0e
.La3af2:
	ldr	r0, =0x151
	bl	_Func_79374
	b	.La3b0e

	.align	2, 0
.La3afc:
	.word	0x1ff
	.pool

.La3b08:
	mov	r3, r10
	lsl	r3, #1
	str	r3, [sp, #4]
.La3b0e:
	ldr	r0, [sp, #4]
	add	r0, r10
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
	beq	.La3b58
	ldr	r1, [sp, #0x18]
	cmp	r1, #1
	bne	.La3b44
	mov	r3, #0x1c
	ldrsb	r3, [r6, r3]
	cmp	r10, r3
	bne	.La3b44
	mov	r0, #0x72
	bl	_Func_f9080
	b	.La3ba0
.La3b44:
	mov	r0, #0x70
	bl	_Func_f9080
	mov	r1, #0x82
	ldr	r2, [sp, #4]
	lsl	r1, #2
	add	r3, r2, r1
	ldrb	r3, [r6, r3]
	str	r3, [sp, #0xc]
	b	.La3bb4
.La3b58:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La3b6e
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r2, #0xff
	str	r2, [sp, #0xc]
	b	.La3bb4
.La3b6e:
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La3b8a
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, #1
	mov	r1, #1
	neg	r3, r3
	str	r1, [sp, #0x10]
	add	r10, r3
.La3b8a:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La3ba0
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r2, #1
	str	r2, [sp, #0x10]
	add	r10, r2
.La3ba0:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.La3bae
	b	.La3944
.La3bae:
	mov	r3, r10
	lsl	r3, #1
	str	r3, [sp, #4]
.La3bb4:
	ldr	r5, [r6, #0x18]
	mov	r1, r10
	strb	r1, [r6, #0x1d]
	mov	r0, r5
	bl	Func_a17c4
	mov	r3, #0xd
	strb	r3, [r5, #5]
	bl	Func_a3c98
	mov	r0, #1
	bl	Func_30f8
	mov	r2, r10
	strb	r2, [r6, #0x1d]
	ldr	r3, [sp, #4]
	mov	r1, #0x82
	lsl	r1, #2
	add	r2, r3, r1
	ldrh	r3, [r6, r2]
	str	r3, [r6, #8]
	add	r1, #0x13
	ldrh	r2, [r6, r2]
	add	r3, r6, r1
	strb	r2, [r3]
	ldr	r2, [sp, #0xc]
	lsl	r0, r2, #24
	asr	r0, #24
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a38d0

.thumb_func_start Func_a3c08
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1f2c
	ldr	r6, [r3]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0x1f
	and	r3, r2
	cmp	r3, #0
	bne	.La3c8c
	ldr	r1, =0x219
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La3c8c
	mov	r7, #0
.La3c26:
	asr	r5, r7, #24
	mov	r2, #0x82
	lsl	r3, r5, #1
	lsl	r2, #2
	mov	r1, #0xbc
	add	r3, r2
	lsl	r1, #1
	ldrh	r0, [r6, r3]
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r1, .La3c58	@ 0x1ff
	and	r1, r3
	bl	_Func_7842c
	cmp	r0, #0
	beq	.La3c68
	mov	r2, #0x8a
	lsl	r3, r5, #2
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r6, r3]
	mov	r1, #3
	bl	_Func_ba30
	b	.La3c78

	.align	2, 0
.La3c58:
	.word	0x1ff
	.pool

.La3c68:
	mov	r1, #0x8a
	lsl	r1, #1
	lsl	r3, r5, #2
	add	r3, r1
	ldr	r0, [r6, r3]
	mov	r1, #1
	bl	_Func_ba30
.La3c78:
	mov	r2, #0x80
	lsl	r2, #17
	ldr	r1, =0x219
	add	r3, r7, r2
	mov	r7, r3
	add	r3, r6, r1
	ldrb	r3, [r3]
	asr	r2, r7, #24
	cmp	r2, r3
	blt	.La3c26
.La3c8c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a3c08

.thumb_func_start Func_a3c98
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f2c
	ldr	r1, =0x219
	ldr	r6, [r3]
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La3ccc
	mov	r5, #0
.La3caa:
	asr	r5, #24
	mov	r2, #0x8a
	lsl	r2, #1
	lsl	r3, r5, #2
	add	r3, r2
	ldr	r0, [r6, r3]
	mov	r1, #1
	bl	_Func_ba30
	ldr	r1, =0x219
	add	r5, #1
	add	r3, r6, r1
	lsl	r5, #24
	ldrb	r3, [r3]
	asr	r2, r5, #24
	cmp	r2, r3
	blt	.La3caa
.La3ccc:
	ldr	r0, =Func_a3c08
	bl	Func_4278
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_a3c98

.thumb_func_start Func_a3ce4
	push	{lr}
	cmp	r0, #0xc4
	bgt	.La3cf2
	cmp	r0, #0xc1
	blt	.La3cf2
	mov	r0, #1
	b	.La3cf4
.La3cf2:
	mov	r0, #0
.La3cf4:
	pop	{r1}
	bx	r1
.func_end Func_a3ce4

.thumb_func_start Func_a3cf8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f2c
	ldr	r5, [r3]
	mov	r3, #0x86
	lsl	r3, #1
	add	r5, r3
	mov	r6, r1
	ldr	r0, [r5]
	bl	_Func_16498
	ldr	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_a3cf8

.thumb_func_start Func_a3d24
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r1, #0xd
	ldr	r7, [r3]
	sub	sp, #4
	mov	r6, #0x48
	mov	r5, r0
	mov	r8, r1
	mov	r2, #0x1f
.La3d3a:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, #0
	bne	.La3d52
	ldr	r0, [r6, r7]
	str	r2, [sp]
	bl	Func_a17c4
	ldr	r3, [r6, r7]
	mov	r1, r8
	strb	r1, [r3, #5]
	ldr	r2, [sp]
.La3d52:
	sub	r2, #1
	add	r6, #4
	cmp	r2, #0
	bge	.La3d3a
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a3d24

.thumb_func_start Func_a3d6c
	push	{r5, lr}
	bl	_Func_77394
	ldr	r4, =0x1ff
	mov	r5, #0
	add	r0, #0xd8
	mov	r1, #0xe
.La3d7a:
	ldrh	r2, [r0]
	mov	r3, r4
	and	r3, r2
	add	r0, #2
	cmp	r3, #0
	beq	.La3d88
	add	r5, #1
.La3d88:
	sub	r1, #1
	cmp	r1, #0
	bge	.La3d7a
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_a3d6c

.thumb_func_start Func_a3d9c
	push	{r5, r6, lr}
	mov	r6, r1
	bl	_Func_77394
	ldr	r4, =0x1ff
	mov	r5, #0
	mov	r1, #0
	add	r0, #0xd8
.La3dac:
	ldrh	r2, [r0]
	mov	r3, r2
	add	r0, #2
	cmp	r3, #0
	beq	.La3dca
	mov	r3, r4
	and	r3, r2
	cmp	r3, r6
	bne	.La3dca
	mov	r3, #0xf8
	lsl	r3, #8
	and	r3, r2
	lsr	r5, r3, #11
	add	r5, #1
	b	.La3dd0
.La3dca:
	add	r1, #1
	cmp	r1, #0xe
	ble	.La3dac
.La3dd0:
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_a3d9c

.thumb_func_start Func_a3ddc
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r3, r5
	ldr	r2, =0
	add	r3, #0x3e
	mov	r12, r5
.La3de8:
	strh	r2, [r3]
	sub	r3, #2
	cmp	r3, r12
	bge	.La3de8
	ldr	r3, =0
	mov	r7, #0
	mov	r12, r3
	add	r0, #0xd8
	mov	r6, #0
	mov	r4, r5
	mov	r1, #0xe
.La3dfe:
	mov	r3, r12
	strh	r3, [r6, r5]
	ldrh	r2, [r0]
	mov	r3, r2
	add	r0, #2
	cmp	r3, #0
	beq	.La3e18
	strh	r2, [r4]
	add	r7, #1
	add	r4, #2
	b	.La3e18

	.pool_aligned

.La3e18:
	sub	r1, #1
	add	r6, #2
	cmp	r1, #0
	bge	.La3dfe
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a3ddc

.thumb_func_start Func_a3e28
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f2c
	ldr	r3, [r3]
	mov	r10, r0
	mov	r5, r3
	mov	r8, r1
	add	r5, #0x48
	mov	r6, r10
	mov	r7, #0xe
.La3e40:
	ldrh	r1, [r6]
	add	r6, #2
	cmp	r1, #0
	beq	.La3e68
	mov	r3, r8
	cmp	r3, #0
	bne	.La3e5c
	ldr	r3, [r5]
	mov	r0, #2
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_1bcd4
	b	.La3e68
.La3e5c:
	ldr	r3, [r5]
	mov	r0, #7
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_1bcd4
.La3e68:
	sub	r7, #1
	add	r5, #4
	cmp	r7, #0
	bge	.La3e40
	mov	r0, r10
	bl	Func_a3d24
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a3e28

.thumb_func_start Func_a3e88
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r8, r1
	ldr	r7, [r3]
	mov	r6, r0
	bl	_Func_77394
	mov	r2, #0xe4
	lsl	r2, #1
	add	r5, r7, r2
	mov	r1, r5
	mov	r2, #0
	bl	Func_a3ddc
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	strb	r0, [r3]
	ldr	r0, [r7, #0x20]
	bl	_Func_16498
	mov	r0, r8
	bl	Func_a1cb0
	mov	r0, r5
	mov	r1, #0
	bl	Func_a3e28
	mov	r0, r6
	bl	Func_a3d6c
	cmp	r0, #0
	bne	.La3eda
	ldr	r0, =0xad7
	ldr	r1, [r7, #0x20]
	mov	r2, #8
	mov	r3, #0x18
	bl	_Func_1e7c0
.La3eda:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a3e88

.thumb_func_start Func_a3eec
	bx	lr
.func_end Func_a3eec

.thumb_func_start Func_a3ef0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r3
	ldr	r3, =iwram_1f2c
	mov	r9, r1
	mov	r1, #0
	sub	sp, #4
	mov	r5, r2
	ldr	r7, [r3]
	mov	r8, r0
	mov	r10, r1
	bl	_Func_77394
	mov	r2, r9
	lsl	r3, r2, #1
	add	r3, #0xd8
	ldrh	r3, [r0, r3]
	mov	r11, r0
	str	r3, [sp]
	cmp	r5, #1
	bne	.La3f2a
	mov	r3, #0x80
	lsl	r3, #1
	mov	r10, r3
.La3f2a:
	ldr	r1, [sp]
	ldr	r0, =0x1ff
	and	r0, r1
	bl	_Func_78414
	ldrb	r3, [r0, #2]
	cmp	r3, #9
	bls	.La3f3c
	b	.La4086
.La3f3c:
	ldr	r2, =.La3f44
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La3f44:
	.word	.La4000
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3ff4
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3f6c
.La3f6c:
	cmp	r8, r6
	bne	.La3f74
	mov	r3, #2
	b	.La3ffa
.La3f74:
	mov	r0, r6
	bl	_Func_77394
	mov	r5, #0xa6
	lsl	r5, #1
	mov	r11, r0
	mov	r0, r5
	bl	Func_4938
	mov	r2, r5
	ldr	r3, =Func_1af8
	mov	r1, r11
	mov	r8, r0
	bl	_call_via_r3
	mov	r0, r6
	bl	Func_a40ac
	mov	r2, r0
	cmp	r2, #0
	beq	.La3fd2
	ldr	r3, =0xfffffdff
	ldr	r1, [sp]
	mov	r0, r6
	and	r1, r3
	str	r1, [sp]
	bl	_Func_78588
	mov	r3, #1
	mov	r2, r0
	neg	r3, r3
	cmp	r2, r3
	beq	.La3fc4
	mov	r3, #2
	mov	r1, r10
	orr	r1, r3
	mov	r10, r1
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	b	.La3fca
.La3fc4:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
.La3fca:
	mov	r3, r10
	bl	Func_a112c
	b	.La3fde
.La3fd2:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	Func_a112c
.La3fde:
	mov	r2, #0xa6
	ldr	r3, =Func_1af8
	mov	r0, r11
	mov	r1, r8
	lsl	r2, #1
	bl	_call_via_r3
	mov	r0, r8
	bl	Func_2df0
	b	.La4086
.La3ff4:
	cmp	r6, r8
	bne	.La400e
	mov	r3, #4
.La3ffa:
	mov	r2, r10
	orr	r2, r3
	mov	r10, r2
.La4000:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	Func_a112c
	b	.La4086
.La400e:
	mov	r0, r6
	bl	_Func_77394
	mov	r5, #0xa6
	lsl	r5, #1
	mov	r11, r0
	mov	r0, r5
	bl	Func_4938
	mov	r2, r5
	ldr	r3, =Func_1af8
	mov	r1, r11
	mov	r8, r0
	bl	_call_via_r3
	mov	r0, r6
	bl	Func_a40ac
	mov	r2, r0
	cmp	r2, #0
	beq	.La4066
	mov	r0, r6
	ldr	r1, [sp]
	bl	_Func_78588
	mov	r3, #1
	mov	r2, r0
	neg	r3, r3
	cmp	r2, r3
	beq	.La4058
	mov	r3, #4
	mov	r1, r10
	orr	r1, r3
	mov	r10, r1
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	b	.La405e
.La4058:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
.La405e:
	mov	r3, r10
	bl	Func_a112c
	b	.La4072
.La4066:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	Func_a112c
.La4072:
	mov	r2, #0xa6
	ldr	r3, =Func_1af8
	mov	r0, r11
	mov	r1, r8
	lsl	r2, #1
	bl	_call_via_r3
	mov	r0, r8
	bl	Func_2df0
.La4086:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a3ef0

.thumb_func_start Func_a40ac
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	_Func_77394
	mov	r3, #0xd8
	ldrh	r3, [r0, r3]
	mov	r1, #0
	mov	r6, #0
	add	r0, #0xd8
	b	.La4102
.La40c0:
	ldrh	r2, [r0]
	ldr	r3, =0x200
	and	r3, r2
	cmp	r3, #0
	bne	.La40f8
	lsr	r3, r2, #11
	add	r2, r3, #1
	cmp	r3, #0
	bne	.La40d4
	mov	r2, #1
.La40d4:
	cmp	r2, #0
	beq	.La40f0
	mov	r5, r2
.La40da:
	mov	r1, r6
	mov	r0, r7
	bl	_Func_788c4
	sub	r5, #1
	mov	r1, r0
	cmp	r5, #0
	bne	.La40da
	b	.La40f0

	.pool_aligned

.La40f0:
	mov	r0, #0
	cmp	r1, #2
	bne	.La410a
	b	.La4106
.La40f8:
	add	r6, #1
	add	r0, #2
	cmp	r6, #0xe
	bgt	.La4108
	ldrh	r3, [r0]
.La4102:
	cmp	r3, #0
	bne	.La40c0
.La4106:
	mov	r1, #1
.La4108:
	mov	r0, r1
.La410a:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a40ac

.thumb_func_start Func_a4110
	push	{lr}
	cmp	r0, #2
	bgt	.La4122
	cmp	r1, #2
	bgt	.La4122
	cmp	r0, #0
	blt	.La4122
	cmp	r1, #0
	bge	.La4126
.La4122:
	mov	r0, #0
	b	.La4132
.La4126:
	lsl	r2, r1, #1
	add	r2, r1
	add	r2, r0
	ldr	r3, =.Laf2e4
	lsl	r2, #2
	ldr	r0, [r3, r2]
.La4132:
	pop	{r1}
	bx	r1
.func_end Func_a4110

.thumb_func_start Func_a413c
	push	{lr}
	mov	r0, #0x1e
	cmp	r1, #0
	beq	.La4146
	mov	r0, #0x26
.La4146:
	pop	{r1}
	bx	r1
.func_end Func_a413c

.thumb_func_start Func_a414c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	sub	sp, #0x10
	mov	r10, r1
	mov	r1, #8
	ldr	r3, =iwram_1f2c
	add	r1, sp
	mov	r11, r1
	mov	r2, #0
	ldr	r6, [r3]
	mov	r0, r11
	mov	r3, #1
	mov	r8, r2
	mov	r9, r3
	bl	Func_a448c
	mov	r2, #0x88
	lsl	r2, #2
	add	r2, r6, r2
	str	r2, [sp, #4]
	ldrh	r3, [r2]
	mov	r7, #0
	cmp	r3, #1
	beq	.La41e0
	bl	Func_a345c
	ldr	r0, [r6, #0x34]
	bl	_Func_16498
	mov	r1, #0x86
	lsl	r1, #1
	add	r3, r6, r1
	ldr	r5, [r3]
	bl	Func_a4eb8
	mov	r0, r5
	bl	_Func_16498
	mov	r3, #3
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #0x10
	mov	r0, r5
	mov	r1, #0
	bl	_Func_1e41c
	bl	Func_a51d0
	mov	r1, r5
	mov	r0, r11
	bl	Func_a45cc
	ldr	r0, [r6, #0x2c]
	bl	_Func_16498
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	ldr	r3, =0x75
	ldr	r1, [r6, #0x2c]
	add	r0, r3
	mov	r2, #0
	mov	r3, #0
	bl	_Func_1e7c0
.La41e0:
	ldr	r1, [sp, #4]
	mov	r3, r10
	ldr	r2, =0x25d
	strh	r3, [r1]
	add	r3, r6, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	bne	.La4258
	mov	r1, r11
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4206
	mov	r2, #0
	mov	r7, #2
	mov	r8, r2
.La4206:
	mov	r1, r11
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4216
	mov	r2, #1
	mov	r7, #0
	mov	r8, r2
.La4216:
	mov	r1, r11
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4226
	mov	r2, #0
	mov	r7, #1
	mov	r8, r2
.La4226:
	mov	r1, r11
	mov	r3, #4
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4236
	mov	r2, #1
	mov	r7, #1
	mov	r8, r2
.La4236:
	mov	r1, r11
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La427a
	mov	r2, #0
	mov	r7, #0
	mov	r8, r2
	b	.La427a
.La4248:
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r3, #1
	neg	r3, r3
	ldr	r1, =0x25d
	mov	r10, r3
	b	.La43c0
.La4258:
	mov	r1, #3
	mov	r0, r5
	bl	Func_b1c_from_thumb
	lsl	r0, #24
	asr	r7, r0, #24
	mov	r1, #3
	mov	r0, r5
	bl	Func_af0_from_thumb
	lsl	r0, #24
	asr	r0, #24
	mov	r8, r0
	lsl	r3, r0, #1
	add	r3, r8
	add	r3, r7
	mov	r10, r3
.La427a:
	mov	r1, r8
	mov	r0, r7
	bl	Func_a4110
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	Func_a413c
	mov	r1, r0
	mov	r0, r5
	bl	Func_a1ac0
	b	.La4436
.La4296:
	mov	r3, r9
	cmp	r3, #0
	beq	.La4330
	mov	r1, #0
	add	r0, r7, #3
	mov	r9, r1
	mov	r1, #3
	bl	Func_b1c_from_thumb
	mov	r2, r8
	add	r2, #2
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r3, #1
	sub	r2, r3
	mov	r8, r2
	lsl	r3, r2, #1
	mov	r7, r0
	add	r3, r8
	add	r3, r7
	mov	r10, r3
	bl	Func_a3c98
	mov	r2, r10
	cmp	r2, #2
	ble	.La42fc
	mov	r3, #0x97
	lsl	r3, #2
	add	r2, r6, r3
	ldr	r1, =0x21a
	mov	r3, #1
	strb	r3, [r2]
	add	r3, r6, r1
	ldrb	r3, [r3]
	sub	r1, #0xa6
	add	r2, r6, r1
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_a3ef0
	mov	r2, r10
	cmp	r2, #3
	bne	.La4330
	mov	r1, #0xc8
	ldr	r0, =Func_a3c08
	lsl	r1, #4
	bl	Func_41d8
	b	.La4330
.La42fc:
	mov	r3, r10
	cmp	r3, #0
	beq	.La4320
	mov	r1, #0x97
	lsl	r1, #2
	add	r3, r6, r1
	ldr	r2, =0x21a
	strb	r5, [r3]
	add	r3, r6, r2
	sub	r1, #0xe8
	ldrb	r3, [r3]
	add	r2, r6, r1
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_a3ef0
	b	.La4330
.La4320:
	ldr	r2, =0x21a
	add	r3, r6, r2
	ldrb	r1, [r3]
	ldr	r0, [r6, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	Func_a112c
.La4330:
	mov	r1, r8
	mov	r0, r7
	bl	Func_a4110
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	Func_a413c
	mov	r1, r0
	mov	r0, r5
	bl	Func_a1a40
	mov	r0, #1
	bl	Func_30f8
	ldr	r5, =iwram_1c94
	ldr	r2, [r5]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La43c8
	mov	r1, r11
	mov	r2, r10
	ldrsb	r3, [r1, r2]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.La4372
	mov	r0, #0x72
	bl	_Func_f9080
	b	.La43c8
.La4372:
	mov	r2, r10
	cmp	r2, #5
	bhi	.La43b8
	lsl	r3, r2, #2
	ldr	r2, =.La4380
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La4380:
	.word	.La4398
	.word	.La43a0
	.word	.La43a8
	.word	.La43a8
	.word	.La43b0
	.word	.La43a8
.La4398:
	mov	r0, #0xae
	bl	_Func_f9080
	b	.La43be
.La43a0:
	mov	r0, #0xaf
	bl	_Func_f9080
	b	.La43be
.La43a8:
	mov	r0, #0x70
	bl	_Func_f9080
	b	.La43be
.La43b0:
	mov	r0, #0x75
	bl	_Func_f9080
	b	.La43be
.La43b8:
	mov	r0, #0x70
	bl	_Func_f9080
.La43be:
	ldr	r1, =0x25d
.La43c0:
	mov	r2, r10
	add	r3, r6, r1
	strb	r2, [r3]
	b	.La4446
.La43c8:
	ldr	r2, [r5]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La43d4
	b	.La4248
.La43d4:
	ldr	r1, =iwram_1b04
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.La43f0
	sub	r3, #0x41
	mov	r1, #1
	mov	r0, #0x6f
	add	r8, r3
	mov	r9, r1
	bl	_Func_f9080
	b	.La4436
.La43f0:
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.La4408
	mov	r2, #1
	mov	r0, #0x6f
	add	r8, r2
	mov	r9, r2
	bl	_Func_f9080
	b	.La4436
.La4408:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.La4420
	mov	r3, #1
	mov	r0, #0x6f
	add	r7, #1
	mov	r9, r3
	bl	_Func_f9080
	b	.La4436
.La4420:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La4436
	mov	r1, #1
	mov	r0, #0x6f
	sub	r7, #1
	mov	r9, r1
	bl	_Func_f9080
.La4436:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.La4446
	b	.La4296
.La4446:
	mov	r3, #0x97
	lsl	r3, #2
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
	bl	Func_a3c98
	mov	r0, r10
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a414c

.thumb_func_start Func_a448c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f2c
	mov	r1, #0xbc
	ldr	r7, [r3]
	lsl	r1, #1
	add	r3, r7, r1
	ldrh	r3, [r3]
	mov	r5, r0
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_Func_78414
	ldrb	r3, [r0, #2]
	mov	r8, r0
	cmp	r3, #0
	bne	.La44bc
	mov	r2, #1
	mov	r3, #1
	neg	r2, r2
	strb	r3, [r5]
	mov	r3, r2
	b	.La44c6
.La44bc:
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5]
	mov	r3, #1
.La44c6:
	strb	r3, [r5, #1]
	ldr	r2, =0x21a
	mov	r1, #0xbc
	add	r3, r7, r2
	lsl	r1, #1
	ldrb	r0, [r3]
	add	r3, r7, r1
	ldrh	r1, [r3]
	bl	Func_a46b4
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.La44e8
	mov	r3, #1
	strb	r3, [r5]
	b	.La44ea
.La44e8:
	strb	r0, [r5]
.La44ea:
	mov	r3, #0xbc
	lsl	r3, #1
	add	r6, r7, r3
	ldrh	r2, [r6]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.La4506
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5]
	ldrh	r2, [r6]
.La4506:
	ldr	r1, =0x21a
	add	r3, r7, r1
	sub	r1, #0x1b
	ldrb	r0, [r3]
	and	r1, r2
	bl	_Func_7842c
	cmp	r0, #0
	bne	.La4520
	mov	r2, #1
	neg	r2, r2
	mov	r3, r2
	strb	r3, [r5, #1]
.La4520:
	mov	r1, #1
	strb	r1, [r5, #3]
	strb	r1, [r5, #5]
	strb	r1, [r5, #2]
	mov	r3, #0x80
	ldrh	r2, [r6]
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4540
	strb	r1, [r5, #4]
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #1]
	b	.La4548
.La4540:
	mov	r2, #1
	neg	r2, r2
	mov	r3, r2
	strb	r3, [r5, #4]
.La4548:
	mov	r3, r8
	ldrb	r2, [r3, #3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4572
	mov	r2, #1
	neg	r2, r2
	mov	r1, r2
	mov	r2, #0xbc
	lsl	r2, #1
	strb	r1, [r5, #4]
	add	r3, r7, r2
	ldrh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4572
	strb	r1, [r5, #3]
	strb	r1, [r5, #5]
.La4572:
	mov	r1, #0xbc
	lsl	r1, #1
	add	r3, r7, r1
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_Func_8e990
	cmp	r0, #0
	beq	.La458a
	mov	r3, #1
	strb	r3, [r5]
.La458a:
	ldr	r2, =0x219
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bhi	.La459c
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #3]
.La459c:
	mov	r3, r8
	ldrb	r2, [r3, #3]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.La45b0
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #5]
.La45b0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a448c

.thumb_func_start Func_a45cc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0xf
	mov	r6, r1
	bl	_Func_1e71c
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	mov	r8, r2
	cmp	r3, r8
	bne	.La45f0
	mov	r0, #0xe
	bl	_Func_1e71c
.La45f0:
	ldr	r7, =0xb33
	mov	r3, #0x18
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r0, #0xf
	bl	_Func_1e71c
	mov	r3, #1
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4612
	mov	r0, #0xe
	bl	_Func_1e71c
.La4612:
	mov	r3, #0x18
	add	r0, r7, #1
	mov	r1, r6
	mov	r2, #0x20
	bl	_Func_1e7c0
	mov	r0, #0xf
	bl	_Func_1e71c
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4632
	mov	r0, #0xe
	bl	_Func_1e71c
.La4632:
	mov	r3, #0x20
	add	r0, r7, #2
	mov	r1, r6
	mov	r2, #0
	bl	_Func_1e7c0
	mov	r0, #0xf
	bl	_Func_1e71c
	mov	r3, #5
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4652
	mov	r0, #0xe
	bl	_Func_1e71c
.La4652:
	mov	r3, #0x20
	add	r0, r7, #3
	mov	r1, r6
	mov	r2, #0x50
	bl	_Func_1e7c0
	mov	r0, #0xf
	bl	_Func_1e71c
	mov	r3, #2
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4672
	mov	r0, #0xe
	bl	_Func_1e71c
.La4672:
	mov	r3, #0x18
	add	r0, r7, #4
	mov	r1, r6
	mov	r2, #0x50
	bl	_Func_1e7c0
	mov	r0, #0xf
	bl	_Func_1e71c
	mov	r3, #4
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4692
	mov	r0, #0xe
	bl	_Func_1e71c
.La4692:
	add	r0, r7, #5
	mov	r1, r6
	mov	r2, #0x20
	mov	r3, #0x20
	bl	_Func_1e7c0
	mov	r0, #0xf
	bl	_Func_1e71c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a45cc

.thumb_func_start Func_a46b4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =0x1ff
	mov	r6, r1
	and	r6, r3
	mov	r10, r0
	mov	r0, r6
	bl	_Func_78414
	mov	r7, #1
	mov	r5, r0
	mov	r0, r6
	neg	r7, r7
	bl	_Func_8e990
	cmp	r0, #0
	beq	.La46de
	mov	r0, #0
	b	.La473e
.La46de:
	ldrh	r3, [r5, #0x28]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_Func_78b9c
	ldrh	r3, [r5, #0x28]
	mov	r8, r0
	cmp	r3, #0
	beq	.La473c
	ldrb	r3, [r5, #2]
	cmp	r3, #0
	beq	.La4708
	ldrb	r3, [r5, #0xc]
	cmp	r3, #3
	beq	.La470a
	mov	r0, r10
	mov	r1, r6
	bl	_Func_7842c
	cmp	r0, #0
	beq	.La470a
.La4708:
	mov	r7, #1
.La470a:
	cmp	r7, #1
	bne	.La473c
	mov	r3, r8
	ldrb	r2, [r3, #1]
	mov	r3, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.La472c
	mov	r3, r8
	ldrb	r2, [r3, #8]
	mov	r3, #0xff
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	lsr	r7, r3, #31
	mov	r3, #2
	b	.La473a
.La472c:
	mov	r3, #0x80
	and	r3, r2
	neg	r2, r3
	orr	r2, r3
	lsr	r2, #31
	mov	r7, r2
	mov	r3, #0
.La473a:
	sub	r7, r3, r7
.La473c:
	mov	r0, r7
.La473e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a46b4

.thumb_func_start Func_a4754
	push	{r5, lr}
	ldr	r3, =iwram_1f2c
	mov	r2, #0xbc
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_Func_78414
	ldrb	r3, [r0, #0xc]
	cmp	r3, #2
	bne	.La479e
	bl	Func_4458
	mov	r3, #0x80
	lsl	r3, #6
	cmp	r0, r3
	bcs	.La479e
	ldr	r2, =0x21a
	add	r3, r5, r2
	sub	r2, #0xa6
	ldrb	r0, [r3]
	add	r3, r5, r2
	ldrh	r1, [r3]
	bl	_Func_78a34
	mov	r0, #0x8a
	bl	_Func_f9080
	mov	r2, #1
	ldr	r0, =0xb86
	neg	r2, r2
	mov	r1, #0
	bl	Func_a1d08
.La479e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_a4754

	.section .rodata

.Laf294:
	.incrom 0xaf294, 0xaf29d
.Laf29d:
	.incrom 0xaf29d, 0xaf2a6
.Laf2a6:
	.incrom 0xaf2a6, 0xaf2b1
.Laf2b1:
	.incrom 0xaf2b1, 0xaf2bc
.Laf2bc:
	.incrom 0xaf2bc, 0xaf2d0
.Laf2d0:
	.incrom 0xaf2d0, 0xaf2e4
.Laf2e4:
	.incrom 0xaf2e4, 0xaf2fc
