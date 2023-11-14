	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_b5a0c
	push	{r5, r6, r7, lr}
	sub	sp, #0x1c
	ldr	r3, =iwram_1e74
	mov	r7, sp
	mov	r0, r7
	ldr	r5, [r3]
	bl	Func_b6a60
	mov	r6, r0
	cmp	r6, #0
	ble	.Lb5a3a
	mov	r2, r5
	mov	r0, r7
	add	r2, #0x58
	mov	r4, #0
	mov	r1, r6
.Lb5a2c:
	ldrh	r3, [r4, r0]
	sub	r1, #1
	strh	r3, [r2]
	add	r4, #2
	add	r2, #2
	cmp	r1, #0
	bne	.Lb5a2c
.Lb5a3a:
	lsl	r3, r6, #1
	ldr	r2, .Lb5a6c	@ 0xff
	add	r3, #0x58
	strh	r2, [r5, r3]
	mov	r0, r7
	bl	Func_b6ae0
	mov	r3, r5
	add	r3, #0x42
	ldrb	r3, [r3]
	mov	r6, r0
	cmp	r3, #0
	blt	.Lb5a84
	cmp	r3, #1
	bgt	.Lb5a84
	mov	r1, #0
	cmp	r1, r6
	bge	.Lb5ab6
	add	r3, r5, #2
	mov	r2, r5
	mov	r12, r3
	mov	r0, r7
	add	r2, #0x66
	mov	r4, #0
	b	.Lb5a74

	.align	2, 0
.Lb5a6c:
	.word	0xff
	.pool

.Lb5a74:
	ldrh	r3, [r4, r0]
	add	r1, #1
	strh	r3, [r2]
	add	r4, #2
	add	r2, #2
	cmp	r1, r6
	blt	.Lb5a74
	b	.Lb5aba
.Lb5a84:
	cmp	r6, #0
	ble	.Lb5ab6
	lsr	r3, r6, #31
	add	r3, r6, r3
	add	r5, #2
	asr	r3, #1
	ldr	r4, =.Lc2a10
	mov	r12, r5
	mov	r14, r3
	mov	r0, r7
	mov	r1, r6
.Lb5a9a:
	ldrb	r3, [r4]
	lsl	r3, #24
	asr	r3, #24
	add	r3, r14
	ldrh	r2, [r0]
	lsl	r3, #1
	add	r3, #0x64
	sub	r1, #1
	add	r4, #1
	add	r0, #2
	strh	r2, [r5, r3]
	cmp	r1, #0
	bne	.Lb5a9a
	b	.Lb5aba
.Lb5ab6:
	add	r5, #2
	mov	r12, r5
.Lb5aba:
	lsl	r3, r6, #1
	ldr	r2, .Lb5acc	@ 0xff
	add	r3, #0x64
	mov	r1, r12
	strh	r2, [r1, r3]
	add	sp, #0x1c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lb5acc:
	.word	0xff
.func_end Func_b5a0c

.thumb_func_start Func_b5ad4
	push	{lr}
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x6000290
	ldr	r1, =0x6000280
	ldr	r2, =0x80000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =Func_8d4
	mov	r1, #0x14
	ldr	r0, =0x600028c
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_b5ad4

.thumb_func_start Func_b5b08
	ldr	r3, =REG_BG0VOFS
	mov	r2, #0
	strh	r2, [r3]
	bx	lr
.func_end Func_b5b08

.thumb_func_start Func_b5b14
	bx	lr
.func_end Func_b5b14

.thumb_func_start Func_b5b18
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x14
	mov	r8, sp
	mov	r0, r8
	bl	Func_b6a60
	mov	r7, #0
	mov	r10, r0
	cmp	r7, r10
	bge	.Lb5bee
	mov	r0, #0
	mov	r5, #0
	mov	r6, #0
	mov	r9, r0
.Lb5b3c:
	mov	r1, r8
	ldrh	r0, [r6, r1]
	bl	_Func_77394
	mov	r2, r0
	ldr	r0, =0x12f
	mov	r1, #3
	add	r3, r2, r0
.Lb5b4c:
	mov	r0, r9
	sub	r1, #1
	strb	r0, [r3]
	sub	r3, #1
	cmp	r1, #0
	bge	.Lb5b4c
	mov	r1, #0x99
	lsl	r1, #1
	ldr	r0, =0x133
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #3
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #3
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	mov	r1, r8
	add	r3, r2, r0
	strb	r5, [r3]
	ldrh	r0, [r6, r1]
	add	r7, #1
	bl	_Func_77428
	add	r6, #2
	cmp	r7, r10
	blt	.Lb5b3c
.Lb5bee:
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b5b18

.thumb_func_start Func_b5c08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x18
	add	r5, sp, #4
	mov	r0, r5
	bl	Func_b6a60
	mov	r2, #0
	mov	r10, r0
	mov	r8, r2
	cmp	r8, r10
	bge	.Lb5cb6
	mov	r9, r5
.Lb5c28:
	mov	r3, r9
	ldrh	r7, [r3]
	mov	r6, #0
.Lb5c2e:
	mov	r5, #0
.Lb5c30:
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	_Func_7a1f8
	cmp	r0, #0
	beq	.Lb5c9e
	mov	r0, #0
	cmp	r7, #7
	bls	.Lb5c46
	mov	r0, #1
.Lb5c46:
	bl	_Func_77330
	mov	r2, #0x84
	mov	r3, r0
	lsl	r2, #1
	mov	r1, r3
	add	r3, r2
	ldr	r3, [r3]
	mov	r0, #0
	add	r1, #8
	cmp	r0, r3
	bge	.Lb5c88
	ldrb	r3, [r1]
	cmp	r6, r3
	bne	.Lb5c6a
	ldrb	r3, [r1, #1]
	cmp	r5, r3
	beq	.Lb5c88
.Lb5c6a:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	add	r0, #1
	cmp	r0, r3
	bge	.Lb5c88
	lsl	r2, r0, #2
	ldrb	r3, [r1, r2]
	cmp	r6, r3
	bne	.Lb5c6a
	add	r3, r1, r2
	ldrb	r3, [r3, #1]
	cmp	r5, r3
	bne	.Lb5c6a
.Lb5c88:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	cmp	r0, r3
	bne	.Lb5c9e
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	_Func_7a458
.Lb5c9e:
	add	r5, #1
	cmp	r5, #0x13
	ble	.Lb5c30
	add	r6, #1
	cmp	r6, #3
	ble	.Lb5c2e
	mov	r2, #1
	mov	r3, #2
	add	r8, r2
	add	r9, r3
	cmp	r8, r10
	blt	.Lb5c28
.Lb5cb6:
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lb5d2a
	mov	r0, #0
	bl	_Func_77330
	mov	r2, #8
	mov	r3, r0
	add	r2, r3
	mov	r10, r2
	mov	r2, #0
	mov	r8, r2
	mov	r2, #0x84
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r8, r3
	bge	.Lb5d2a
	mov	r3, #1
	neg	r3, r3
	mov	r9, r3
	mov	r7, r10
.Lb5ce8:
	mov	r3, #3
	ldrsb	r3, [r7, r3]
	cmp	r3, r9
	bne	.Lb5d18
	ldrb	r0, [r7, #2]
	bl	Func_b7dd0
	cmp	r0, #0
	bne	.Lb5d18
	ldrb	r3, [r7, #1]
	ldrb	r5, [r7, #2]
	ldrb	r6, [r7]
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp]
	bl	_Func_7a2e4
	ldr	r3, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_7a3a8
.Lb5d18:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r10
	mov	r2, #1
	ldr	r3, [r3]
	add	r8, r2
	add	r7, #4
	cmp	r8, r3
	blt	.Lb5ce8
.Lb5d2a:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b5c08

.thumb_func_start Func_b5d3c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	add	r1, sp, #8
	mov	r9, r1
	mov	r0, r9
	bl	Func_b6a60
	mov	r3, #0x1c
	mov	r2, #0
	add	r3, sp
	mov	r4, r0
	mov	r11, r2
	mov	r8, r2
	mov	r10, r3
.Lb5d64:
	mov	r3, #0
	mov	r1, r10
	mov	r2, r8
	strb	r3, [r1, r2]
	cmp	r4, #0
	ble	.Lb5d9e
	mov	r1, #0x8c
	lsl	r1, #1
	mov	r7, r10
	add	r1, r8
	mov	r6, r9
	mov	r5, r4
.Lb5d7c:
	ldrh	r0, [r6]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_Func_77394
	ldr	r1, [sp, #4]
	mov	r2, r8
	ldrb	r3, [r7, r2]
	ldrb	r2, [r0, r1]
	sub	r5, #1
	add	r3, r2
	mov	r2, r8
	add	r6, #2
	strb	r3, [r7, r2]
	ldr	r4, [sp]
	cmp	r5, #0
	bne	.Lb5d7c
.Lb5d9e:
	mov	r3, #1
	add	r8, r3
	mov	r1, r8
	cmp	r1, #3
	ble	.Lb5d64
	mov	r2, #0
	mov	r8, r2
.Lb5dac:
	mov	r0, r8
	bl	_Func_797d4
	cmp	r0, #0
	beq	.Lb5de8
	mov	r3, r10
	add	r0, #4
	ldrb	r2, [r3]
	ldrb	r3, [r0]
	mov	r4, #0
	cmp	r2, r3
	bcc	.Lb5dd8
	mov	r1, r10
.Lb5dc6:
	add	r4, #1
	cmp	r4, #3
	bgt	.Lb5dd8
	add	r1, #1
	add	r0, #1
	ldrb	r2, [r1]
	ldrb	r3, [r0]
	cmp	r2, r3
	bcs	.Lb5dc6
.Lb5dd8:
	cmp	r4, #4
	bne	.Lb5de8
	mov	r3, #1
	mov	r1, r8
	mov	r2, r11
	lsl	r3, r1
	orr	r2, r3
	mov	r11, r2
.Lb5de8:
	mov	r3, #1
	add	r8, r3
	mov	r1, r8
	cmp	r1, #0x1f
	ble	.Lb5dac
	mov	r0, #0
	bl	_Func_77330
	mov	r2, r11
	str	r2, [r0]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b5d3c

.thumb_func_start Func_b5e10
	bx	lr
.func_end Func_b5e10

.thumb_func_start Func_b5e14
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xaa
	lsl	r0, #1
	sub	sp, #0x30
	bl	Func_4970
	mov	r2, #0
	mov	r8, r0
	mov	r10, r2
	mov	r7, #0
	b	.Lb5eaa
.Lb5e30:
	bl	Func_6488
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb5e44
	mov	r3, #1
	add	r10, r3
.Lb5e44:
	mov	r0, #2
	bl	Func_30f8
	mov	r5, sp
	ldr	r0, =0x80c
	mov	r1, r5
	bl	_Func_1964c
	mov	r0, #0
	ldrh	r3, [r5, r0]
	cmp	r3, #0
	beq	.Lb5e6c
	mov	r2, r5
.Lb5e5e:
	add	r0, #1
	cmp	r0, #4
	bgt	.Lb5e6c
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.Lb5e5e
.Lb5e6c:
	mov	r4, r0
	mov	r0, #0xe
	cmp	r0, r4
	blt	.Lb5e8c
	sub	r3, r6, r4
	mov	r1, r6
	mov	r2, r3
	add	r1, #0xe
	add	r2, #0xe
.Lb5e7e:
	ldrb	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	sub	r2, #1
	sub	r1, #1
	cmp	r0, r4
	bge	.Lb5e7e
.Lb5e8c:
	cmp	r4, #0
	ble	.Lb5ea4
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
.Lb5e96:
	ldrh	r3, [r1]
	sub	r0, #1
	strb	r3, [r2]
	add	r1, #2
	add	r2, #1
	cmp	r0, #0
	bne	.Lb5e96
.Lb5ea4:
	mov	r3, #0
	strb	r3, [r6, #0xe]
	add	r7, #1
.Lb5eaa:
	cmp	r7, #2
	bgt	.Lb5ec4
	mov	r0, r7
	add	r0, #0x80
	bl	_Func_77394
	mov	r6, r0
	bl	Func_6408
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb5e30
.Lb5ec4:
	mov	r0, r8
	bl	Func_2df0
	mov	r0, #0xa0
	lsl	r0, #1
	bl	Func_4970
	mov	r8, r0
	mov	r0, #1
	bl	_Func_77330
	bl	Func_6408
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lb5ef0
	bl	Func_6488
	mov	r0, #2
	bl	Func_30f8
.Lb5ef0:
	mov	r0, r8
	bl	Func_2df0
	mov	r0, r10
	add	sp, #0x30
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b5e14

.thumb_func_start Func_b5f0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, #0xaa
	lsl	r5, #1
	mov	r0, r5
	sub	sp, #0x10
	bl	Func_4970
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	mov	r6, r0
	mov	r9, r3
	mov	r2, #0xff
	mov	r5, #7
	add	r3, #0x4f
.Lb5f34:
	sub	r5, #1
	strb	r2, [r3]
	sub	r3, #1
	cmp	r5, #0
	bge	.Lb5f34
	mov	r7, sp
	mov	r0, r7
	bl	Func_b6a60
	mov	r5, #0
	mov	r8, r0
	cmp	r5, r8
	bge	.Lb5fa8
	mov	r1, #0x95
	lsl	r1, #1
	add	r1, r6
	mov	r10, r7
	mov	r11, r1
	mov	r7, #0
.Lb5f5a:
	mov	r2, r10
	ldrh	r0, [r7, r2]
	bl	_Func_77394
	mov	r2, #0xaa
	mov	r1, r0
	lsl	r2, #1
	ldr	r3, =Func_1af8
	mov	r0, r6
	bl	_call_via_r3
	mov	r3, #2
	mov	r4, r11
	mov	r1, r10
	strb	r3, [r4]
	ldrh	r3, [r7, r1]
	mov	r2, r5
	add	r3, #0x48
	sub	r2, #0x80
	mov	r4, r9
	mov	r1, #0xaa
	lsl	r1, #1
	strb	r2, [r4, r3]
	mov	r0, r6
	bl	Func_63bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lb5fa8
	bl	Func_6458
	add	r5, #1
	mov	r0, #2
	bl	Func_30f8
	add	r7, #2
	cmp	r5, r8
	blt	.Lb5f5a
.Lb5fa8:
	mov	r2, #0x95
	lsl	r2, #1
	mov	r3, #0
	add	r7, r6, r2
	mov	r8, r3
	b	.Lb5fc0
.Lb5fb4:
	bl	Func_6458
	mov	r0, #2
	bl	Func_30f8
	add	r5, #1
.Lb5fc0:
	cmp	r5, #2
	bgt	.Lb5fda
	mov	r4, r8
	mov	r1, #0xaa
	lsl	r1, #1
	strb	r4, [r7]
	mov	r0, r6
	bl	Func_63bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.Lb5fb4
.Lb5fda:
	mov	r5, #0xa0
	mov	r0, r6
	lsl	r5, #1
	bl	Func_2df0
	mov	r0, r5
	bl	Func_4970
	mov	r6, r0
	mov	r0, #0
	bl	_Func_77330
	ldr	r3, =Func_1af8
	mov	r1, r0
	mov	r2, r5
	mov	r0, r6
	bl	_call_via_r3
	mov	r4, r6
	mov	r3, #0x84
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, [r2]
	mov	r1, #0
	add	r4, #8
	cmp	r1, r3
	bge	.Lb6028
	mov	r0, r2
	mov	r2, r4
.Lb6014:
	ldrb	r3, [r2, #2]
	mov	r4, r9
	add	r3, #0x48
	ldrb	r3, [r4, r3]
	strb	r3, [r2, #2]
	ldr	r3, [r0]
	add	r1, #1
	add	r2, #4
	cmp	r1, r3
	blt	.Lb6014
.Lb6028:
	mov	r1, #0xa0
	lsl	r1, #1
	mov	r0, r6
	bl	Func_63bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lb604a
	bl	Func_6458
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #2
	bl	Func_30f8
.Lb604a:
	mov	r0, r6
	bl	Func_2df0
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b5f0c

.thumb_func_start Func_b606c
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r5, sp
	mov	r6, #0x5f
	mov	r4, r5
	mov	r0, r5
	mov	r1, #3
.Lb607a:
	ldrh	r3, [r2]
	strb	r3, [r0]
	lsl	r3, #24
	add	r2, #2
	add	r0, #1
	cmp	r3, #0
	bne	.Lb608a
	strb	r6, [r4]
.Lb608a:
	sub	r1, #1
	add	r4, #1
	cmp	r1, #0
	bge	.Lb607a
	mov	r3, #0
	strb	r3, [r5, #4]
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b606c

.thumb_func_start Func_b60a0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e74
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0x44
	ldrb	r3, [r3]
	sub	sp, #4
	mov	r4, #0
	cmp	r3, #0
	beq	.Lb613c
	mov	r3, r1
	add	r3, #0x50
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2024
	lsl	r2, #3
	add	r7, r2, r3
	mov	r3, r1
	add	r3, #0x52
	ldrb	r3, [r3]
	ldr	r5, =ewram_2224
	cmp	r3, #0
	bne	.Lb6136
	ldr	r3, .Lb60f8	@ 0x45
	ldr	r2, .Lb60fc	@ 0x58
	strh	r3, [r5]
	strh	r3, [r5, #4]
	ldr	r3, .Lb6100	@ 0x43
	strh	r2, [r5, #2]
	strh	r3, [r5, #6]
	mov	r6, #0
.Lb60e4:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6114
	add	r4, #1
	cmp	r4, #0x18
	ble	.Lb6126
	b	.Lb6136

	.align	2, 0
.Lb60f8:
	.word	0x45
.Lb60fc:
	.word	0x58
.Lb6100:
	.word	0x43
	.pool

.Lb6114:
	ldrh	r2, [r5, #4]
	ldrh	r3, [r7, #4]
	mov	r4, #0
	cmp	r2, r3
	bne	.Lb6126
	ldrh	r2, [r5, #6]
	ldrh	r3, [r7, #6]
	cmp	r2, r3
	beq	.Lb613c
.Lb6126:
	mov	r0, #1
	str	r4, [sp]
	bl	Func_30f8
	add	r6, #1
	ldr	r4, [sp]
	cmp	r6, #0x1d
	ble	.Lb60e4
.Lb6136:
	mov	r0, #1
	neg	r0, r0
	b	.Lb613e
.Lb613c:
	mov	r0, #0
.Lb613e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b60a0

.thumb_func_start Func_b6148
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e74
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0x44
	ldrb	r3, [r3]
	sub	sp, #0x14
	mov	r7, #0
	cmp	r3, #0
	bne	.Lb615e
	b	.Lb636e
.Lb615e:
	mov	r3, r1
	add	r3, #0x50
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2024
	lsl	r2, #3
	add	r5, r2, r3
	mov	r3, r1
	add	r3, #0x52
	ldrb	r3, [r3]
	ldr	r6, =ewram_2224
	cmp	r3, #0
	beq	.Lb6180
	b	.Lb634c
.Lb6180:
	ldr	r3, .Lb6198	@ 0x65
	strh	r3, [r6]
	ldr	r3, .Lb619c	@ 0x78
	strh	r3, [r6, #2]
	ldr	r3, .Lb61a0	@ 0x54
	strh	r3, [r6, #8]
	ldr	r3, .Lb61a4	@ 0x55
	mov	r0, #1
	strh	r3, [r6, #0xa]
	bl	Func_30f8
	b	.Lb61ba

	.align	2, 0
.Lb6198:
	.word	0x65
.Lb619c:
	.word	0x78
.Lb61a0:
	.word	0x54
.Lb61a4:
	.word	0x55
	.pool

.Lb61b4:
	mov	r0, #1
	bl	Func_30f8
.Lb61ba:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb61ce
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb61b4
	b	.Lb634c
.Lb61ce:
	ldrh	r2, [r6, #4]
	ldrh	r3, [r5, #4]
	mov	r7, #0
	cmp	r2, r3
	beq	.Lb61da
	b	.Lb634c
.Lb61da:
	ldrh	r2, [r6, #6]
	ldrh	r3, [r5, #6]
	cmp	r2, r3
	beq	.Lb61e4
	b	.Lb634c
.Lb61e4:
	ldrh	r2, [r6]
	ldrh	r3, [r5]
	cmp	r2, r3
	bne	.Lb61b4
	ldrh	r2, [r6, #2]
	ldrh	r3, [r5, #2]
	cmp	r2, r3
	bne	.Lb61b4
	ldrh	r2, [r6, #8]
	ldrh	r3, [r5, #8]
	cmp	r2, r3
	bne	.Lb61b4
	ldrh	r2, [r6, #0xa]
	ldrh	r3, [r5, #0xa]
	cmp	r2, r3
	bne	.Lb61b4
	ldr	r3, .Lb6228	@ 0x72
	strh	r3, [r6, #0xc]
	ldr	r3, .Lb622c	@ 0x6e
	strh	r3, [r6, #0xe]
	b	.Lb6214
.Lb620e:
	mov	r0, #1
	bl	Func_30f8
.Lb6214:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6234
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb620e
	b	.Lb634c

	.align	2, 0
.Lb6228:
	.word	0x72
.Lb622c:
	.word	0x6e
	.pool

.Lb6234:
	ldrh	r2, [r6, #8]
	ldrh	r3, [r5, #8]
	mov	r7, #0
	cmp	r2, r3
	beq	.Lb6240
	b	.Lb634c
.Lb6240:
	ldrh	r2, [r6, #0xa]
	ldrh	r3, [r5, #0xa]
	cmp	r2, r3
	beq	.Lb624a
	b	.Lb634c
.Lb624a:
	ldrh	r2, [r6, #0xc]
	ldrh	r3, [r5, #0xc]
	cmp	r2, r3
	bne	.Lb620e
	ldrh	r2, [r6, #0xe]
	ldrh	r3, [r5, #0xe]
	cmp	r2, r3
	bne	.Lb620e
	ldr	r3, =0x45
	ldr	r2, =0x58
	strh	r3, [r6]
	strh	r3, [r6, #4]
	ldr	r3, =0x43
	strh	r2, [r6, #2]
	strh	r3, [r6, #6]
	b	.Lb6270
.Lb626a:
	mov	r0, #1
	bl	Func_30f8
.Lb6270:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6294
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb626a
	b	.Lb634c

	.pool_aligned

.Lb6294:
	ldrh	r2, [r6, #0xc]
	ldrh	r3, [r5, #0xc]
	mov	r7, #0
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #0xe]
	ldrh	r3, [r5, #0xe]
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6]
	ldrh	r3, [r5]
	cmp	r2, r3
	bne	.Lb626a
	ldrh	r2, [r6, #2]
	ldrh	r3, [r5, #2]
	cmp	r2, r3
	bne	.Lb626a
	ldrh	r2, [r6, #4]
	ldrh	r3, [r5, #4]
	cmp	r2, r3
	bne	.Lb626a
	ldrh	r2, [r6, #6]
	ldrh	r3, [r5, #6]
	cmp	r2, r3
	bne	.Lb626a
	ldr	r3, =0x74
	strh	r3, [r6, #8]
	ldr	r3, =0x75
	strh	r3, [r6, #0xa]
	b	.Lb62d6
.Lb62d0:
	mov	r0, #1
	bl	Func_30f8
.Lb62d6:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb62f8
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb62d0
	b	.Lb634c

	.pool_aligned

.Lb62f8:
	ldrh	r2, [r6]
	ldrh	r3, [r5]
	mov	r7, #0
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #2]
	ldrh	r3, [r5, #2]
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #4]
	ldrh	r3, [r5, #4]
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #6]
	ldrh	r3, [r5, #6]
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #8]
	ldrh	r3, [r5, #8]
	cmp	r2, r3
	bne	.Lb62d0
	ldrh	r2, [r6, #0xa]
	ldrh	r3, [r5, #0xa]
	cmp	r2, r3
	bne	.Lb62d0
	ldr	r3, =0x52
	strh	r3, [r6, #0xc]
	ldr	r3, =0x4e
	strh	r3, [r6, #0xe]
	b	.Lb633a
.Lb6334:
	mov	r0, #1
	bl	Func_30f8
.Lb633a:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6360
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb6334
.Lb634c:
	mov	r0, #1
	neg	r0, r0
	b	.Lb6370

	.pool_aligned

.Lb6360:
	ldrh	r3, [r5, #0xc]
	mov	r7, #0
	cmp	r3, #0x72
	bne	.Lb636e
	ldrh	r3, [r5, #0xe]
	cmp	r3, #0x6e
	beq	.Lb6334
.Lb636e:
	mov	r0, #0
.Lb6370:
	add	sp, #0x14
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b6148

.thumb_func_start Func_b6378
	push	{r5, r6, lr}
	sub	sp, #0x10
	ldr	r3, =iwram_1e74
	mov	r5, sp
	mov	r0, r5
	ldr	r6, [r3]
	bl	Func_b6a60
	mov	r1, #0
	mov	r4, r0
	cmp	r1, r4
	bge	.Lb63a4
	mov	r0, r5
.Lb6392:
	ldrh	r2, [r0]
	mov	r3, r1
	add	r2, #0x48
	sub	r3, #0x80
	add	r1, #1
	add	r0, #2
	strb	r3, [r6, r2]
	cmp	r1, r4
	blt	.Lb6392
.Lb63a4:
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b6378

.thumb_func_start Func_b63b0
	push	{lr}
	ldr	r3, =Func_8d4
	mov	r1, #0x10
	ldr	r0, =ewram_2224
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_b63b0

.thumb_func_start Func_b63c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	str	r0, [sp, #0xc]
	mov	r1, #0x4c
	mov	r0, #0xc
	bl	Func_48f4
	ldr	r1, =0x82c
	mov	r10, r0
	mov	r0, #9
	bl	Func_48f4
	mov	r5, #0xf9
	lsl	r5, #3
	mov	r1, r5
	mov	r8, r0
	mov	r0, #0x36
	bl	Func_48f4
	mov	r1, #0x20
	mov	r6, r0
	mov	r0, #0x2c
	bl	Func_48f4
	mov	r1, #0xa0
	str	r0, [sp, #8]
	lsl	r1, #2
	mov	r0, #0xb
	bl	Func_48f4
	mov	r1, #0xc
	add	r1, r10
	ldr	r3, =Func_8d4
	mov	r9, r1
	mov	r0, r6
	mov	r1, r5
	bl	_call_via_r3
	bl	Func_40e8
	mov	r3, #0x80
	ldr	r2, [sp, #8]
	mov	r7, #0
	lsl	r3, #6
	str	r7, [r2, #4]
	str	r3, [r2]
	ldr	r3, [sp, #8]
	mov	r2, #1
	str	r2, [r3, #0x14]
	str	r7, [r3, #0x18]
	str	r7, [r3, #0x1c]
	mov	r3, #0x80
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r0, =0x103
	bl	_Func_79358
	ldr	r0, =0x169
	bl	_Func_79358
	bl	Func_49ac
	add	r5, sp, #0x10
	str	r7, [r5]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r10
	ldr	r2, =0x85000013
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r7, [r5]
	mov	r0, r5
	mov	r1, r8
	ldr	r2, =0x8500020b
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #1
	neg	r3, r3
	str	r3, [r1, #0x54]
	ldr	r2, [sp, #0xc]
	mov	r0, #0x25
	str	r2, [r1]
	mov	r1, #0xc
	bl	Func_48f4
	str	r7, [r5]
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r2, =0x85000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	_Func_8b248
	mov	r3, #0xc9
	lsl	r3, #3
	add	r3, r8
	mov	r1, #0xe0
	strh	r0, [r3]
	lsl	r1, #4
	mov	r0, #4
	bl	Func_48f4
	mov	r1, #0xc0
	lsl	r1, #3
	mov	r0, #3
	bl	Func_48f4
	mov	r0, #4
	bl	_Func_c004
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lb64c6
	mov	r0, #1
	bl	_Func_16018
	b	.Lb64cc
.Lb64c6:
	mov	r0, #0
	bl	_Func_16018
.Lb64cc:
	mov	r2, #0x80
	mov	r3, r9
	mov	r5, #0
	lsl	r2, #15
	str	r2, [r3, #4]
	str	r5, [r3]
	str	r5, [r3, #8]
	mov	r3, #0xb4
	mov	r1, r10
	lsl	r3, #16
	str	r3, [r1, #4]
	mov	r3, #0xa0
	str	r2, [r1, #8]
	lsl	r3, #6
	mov	r2, r10
	str	r5, [r1]
	strh	r3, [r2, #0x36]
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r1, #0x34]
	mov	r3, #0x80
	lsl	r3, #17
	str	r3, [r1, #0x20]
	mov	r2, r8
	ldr	r0, [r2]
	bl	Func_c1ffc
	mov	r6, r0
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lb6528
	mov	r3, r8
	add	r3, #0x44
	str	r3, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r3, #1
	strb	r3, [r1]
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #4
	strb	r2, [r3]
	b	.Lb652e
.Lb6528:
	mov	r3, r8
	add	r3, #0x44
	str	r3, [sp, #4]
.Lb652e:
	ldr	r1, [sp, #4]
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lb65a2
	ldr	r3, =ewram_23a8
	str	r5, [r3]
	mov	r5, #0
	ldr	r2, =iwram_1f64
	mov	r6, r8
	mov	r3, #1
	mov	r10, r2
	add	r6, #0x52
	mov	r7, #3
	mov	r9, r3
.Lb654a:
	mov	r1, r10
	ldrh	r2, [r1]
	mov	r3, r7
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6566
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x18
	ble	.Lb654a
	mov	r2, r9
	strb	r2, [r6]
.Lb6566:
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	mov	r2, r8
	lsl	r3, #26
	lsr	r3, #30
	add	r2, #0x50
	strb	r3, [r2]
	ldr	r3, =iwram_1f28
	ldr	r4, =0x7c7
	ldr	r2, [r3]
	ldr	r1, =ewram_18000
	mov	r0, #0
.Lb657e:
	ldrb	r3, [r1]
	add	r0, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r0, r4
	bls	.Lb657e
	mov	r0, #0xfc
	lsl	r0, #2
	bl	_Func_793b8
	mov	r6, r0
	bl	Func_b6378
	mov	r2, r8
	add	r2, #0x42
	mov	r3, #0
	strb	r3, [r2]
.Lb65a2:
	ldr	r1, =0xc7f
	ldr	r0, =Func_b5864
	bl	Func_41d8
	ldr	r3, =ewram_240
	mov	r1, #0xf7
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lb65d8
	bl	_Func_f9080
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lb65e4
	mov	r0, #0x37
	bl	_Func_f9080
	mov	r0, #4
	bl	Func_37d4
	b	.Lb65e4
.Lb65d8:
	mov	r0, #0x33
	bl	_Func_f9080
	mov	r0, #0x4c
	bl	_Func_f9080
.Lb65e4:
	bl	Func_b5a0c
	bl	Func_b75dc
	bl	Func_b5c08
	bl	Func_b5d3c
	mov	r0, #0
	bl	_Func_77330
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.Lb6658
	mov	r3, #0x41
	add	r3, r8
	mov	r9, r3
	mov	r1, r9
	mov	r3, #3
	strb	r3, [r1]
	b	.Lb6662

	.pool_aligned

.Lb6658:
	mov	r2, #0x41
	add	r2, r8
	mov	r3, #1
	strb	r3, [r2]
	mov	r9, r2
.Lb6662:
	mov	r0, #9
	bl	_Func_1ef08
	bl	Func_b7f9c
	bl	Func_b6c90
	bl	Func_c08a8
	mov	r3, #0xc9
	lsl	r3, #3
	add	r3, r8
	ldrh	r1, [r3]
	mov	r0, #1
	mov	r2, #0
	bl	Func_c08ec
	mov	r3, #0x80
	lsl	r3, #10
	mov	r0, #0xa0
	mov	r1, #0xa0
	str	r3, [sp]
	lsl	r0, #16
	lsl	r1, #15
	mov	r2, #0
	mov	r3, #0
	bl	Func_c0a24
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0xbe
	mov	r0, #0
	bl	Func_c0cec
	mov	r0, #1
	bl	Func_b5b14
	ldr	r5, =0
	ldr	r3, =REG_BLDCNT
	strh	r5, [r3]
	bl	Func_c24b0
	mov	r0, #0x80
	bl	Func_40b4
	mov	r3, r8
	mov	r1, #0x45
	str	r0, [r3, #0x54]
	add	r1, r8
	mov	r0, #0xb7
	strb	r5, [r1]
	lsl	r0, #1
	mov	r11, r1
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lb6700
	ldr	r3, =ewram_240
	ldr	r1, =0x22b
	add	r3, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb671a
	b	.Lb66f4

	.pool_aligned

.Lb66f4:
	bl	_Func_79bc4
	mov	r3, #0xf
	and	r0, r3
	cmp	r0, #0
	bne	.Lb6708
.Lb6700:
	mov	r3, #1
	mov	r2, r11
	strb	r3, [r2]
	b	.Lb671a
.Lb6708:
	bl	_Func_79bc4
	mov	r3, #0x1f
	and	r0, r3
	cmp	r0, #0
	bne	.Lb671a
	mov	r3, #2
	mov	r1, r11
	strb	r3, [r1]
.Lb671a:
	mov	r0, r6
	ldr	r1, [sp, #0xc]
	bl	Func_c02a4
	ldr	r3, [sp, #8]
	mov	r2, #0
	str	r2, [r3, #0x14]
	ldr	r3, =iwram_1f58
	mov	r1, #0xc8
	strb	r2, [r3]
	ldr	r0, =Func_b7738
	lsl	r1, #4
	bl	Func_41d8
.Lb6736:
	bl	Func_b9b2c
	bl	Func_b5d3c
	mov	r0, #0
	bl	_Func_77330
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.Lb6752
	mov	r3, #3
	mov	r1, r9
	strb	r3, [r1]
	b	.Lb6758
.Lb6752:
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
.Lb6758:
	ldr	r1, [sp, #8]
	mov	r3, #0xa0
	lsl	r3, #6
	str	r3, [r1]
	mov	r3, #0x3c
	str	r3, [r1, #4]
	mov	r2, r9
	mov	r5, #0xbb
	ldrb	r0, [r2]
	lsl	r5, #2
	bl	_Func_1f200
	add	r5, r8
	mov	r1, #0xa0
	ldr	r3, =Func_8d4
	lsl	r1, #1
	mov	r0, r5
	bl	_call_via_r3
	mov	r3, r8
	ldr	r0, [r3, #0x54]
	bl	Func_3f3c
	mov	r0, #0xb5
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lb67ac
	bl	Func_488c
	bl	Func_48a0
	mov	r0, r5
	bl	Func_b9934
	mov	r5, r0
	bl	Func_488c
	bl	Func_48a0
	b	.Lb67b4
.Lb67ac:
	mov	r0, r5
	bl	Func_b8574
	mov	r5, r0
.Lb67b4:
	mov	r0, #0x80
	bl	Func_40b4
	mov	r1, r8
	str	r0, [r1, #0x54]
	mov	r2, r9
	ldrb	r0, [r2]
	bl	_Func_1f200
	cmp	r5, #0
	bge	.Lb67cc
	b	.Lb696e
.Lb67cc:
	mov	r7, #0
	cmp	r7, r5
	bge	.Lb6862
	mov	r6, #0xbb
	lsl	r6, #2
.Lb67d6:
	mov	r3, r8
	ldrsh	r3, [r6, r3]
	mov	r10, r3
	bl	Func_488c
	bl	Func_48a0
	mov	r0, #0xb5
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lb6806
	mov	r2, r8
	add	r0, r6, r2
	mov	r1, #0xa
	cmp	r7, #0
	beq	.Lb67fc
	mov	r1, #0
.Lb67fc:
	bl	Func_b9b30
	cmp	r0, #1
	bne	.Lb6814
	b	.Lb6a00
.Lb6806:
	mov	r3, r8
	add	r0, r6, r3
	bl	Func_b874c
	cmp	r0, #1
	bne	.Lb6814
	b	.Lb6a00
.Lb6814:
	bl	Func_488c
	bl	Func_48a0
	mov	r0, #1
	mov	r1, #0
	bl	Func_b6b40
	cmp	r0, #0
	bne	.Lb682a
	b	.Lb69b0
.Lb682a:
	mov	r0, #2
	mov	r1, #0
	bl	Func_b6b40
	cmp	r0, #0
	bne	.Lb6850
	mov	r1, r10
	cmp	r1, #7
	bhi	.Lb68ec
	mov	r3, #0xa7
	lsl	r3, #3
	add	r3, r8
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lb68ec
	mov	r3, #3
	mov	r2, r8
	strh	r3, [r2, #0x3e]
	b	.Lb68ec
.Lb6850:
	bl	Func_b6148
	cmp	r0, #0
	bge	.Lb685a
	b	.Lb696e
.Lb685a:
	add	r7, #1
	add	r6, #0x10
	cmp	r7, r5
	blt	.Lb67d6
.Lb6862:
	mov	r3, #0
	mov	r1, r11
	strb	r3, [r1]
	bl	Func_bf674
	bl	Func_bf678
	bl	Func_b7e7c
	ldr	r2, [sp, #4]
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lb6886
	bl	Func_b6148
	cmp	r0, #0
	bge	.Lb688c
	b	.Lb696e
.Lb6886:
	mov	r0, #0x14
	bl	Func_30f8
.Lb688c:
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lb689a
	b	.Lb6736
.Lb689a:
	ldr	r0, =0xc47
	mov	r1, #0
	mov	r2, #4
	mov	r3, #1
	bl	_Func_17658
	mov	r5, r0
	b	.Lb68b0
.Lb68aa:
	mov	r0, #1
	bl	Func_30f8
.Lb68b0:
	bl	_Func_17364
	cmp	r0, #0
	beq	.Lb68aa
	mov	r0, r5
	mov	r1, #1
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #4
	mov	r3, #1
	mov	r1, #0xa
	ldr	r0, =0xc48
	bl	_Func_17658
	mov	r1, #0x18
	mov	r5, r0
	mov	r0, #0x5c
	bl	Func_bb7c0
	mov	r0, r5
	mov	r1, #1
	bl	_Func_16418
	mov	r0, #1
	bl	Func_30f8
	b	.Lb6736
.Lb68ec:
	bl	Func_b63b0
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lb6954
	ldr	r1, [sp, #4]
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lb690a
	mov	r0, #0x3a
	bl	_Func_f9080
.Lb690a:
	mov	r3, #0xa7
	lsl	r3, #3
	add	r3, r8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lb6950
	mov	r0, #0x3a
	bl	_Func_f9080
	mov	r2, r8
	ldrh	r3, [r2, #0x3e]
	cmp	r3, #1
	bhi	.Lb6950
	ldrh	r3, [r2, #0x3c]
	lsl	r3, #1
	add	r3, #0x10
	ldrh	r1, [r2, r3]
	mov	r0, #0x80
	mov	r2, #0x1a
	bl	_Func_79460
	bl	_Func_198dc
	mov	r0, #0x80
	mov	r1, #1
	bl	_Func_19908
	mov	r3, r8
	ldrh	r0, [r3, #0x3e]
	ldr	r3, =0x838
	add	r0, r3
	bl	_Func_175a0
	bl	Func_bb65c
.Lb6950:
	bl	Func_c2724
.Lb6954:
	mov	r0, #0x11
	bl	_Func_f9080
	mov	r0, #0x1e
	bl	Func_3b70
	bl	Func_3ce0
	mov	r3, #0xa7
	lsl	r3, #3
	add	r3, r8
	ldr	r7, [r3]
	b	.Lb6a12
.Lb696e:
	bl	Func_b63b0
	mov	r0, #0
	bl	Func_42c8
	ldr	r3, .Lb6994	@ 1
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r3, #0xa7
	lsl	r3, #3
	mov	r0, #0xfa
	add	r3, r8
	lsl	r0, #2
	ldr	r7, [r3]
	bl	_Func_79358
	b	.Lb6a12

	.align	2, 0
.Lb6994:
	.word	1
	.pool

.Lb69b0:
	bl	Func_b63b0
	mov	r0, #0x3b
	bl	_Func_f9080
	bl	_Func_198dc
	ldr	r3, =ewram_240
	mov	r1, #0xfc
	lsl	r1, #1
	add	r3, r1
	ldrb	r0, [r3]
	mov	r1, #1
	bl	_Func_19908
	mov	r0, #0
	bl	Func_b6a60
	cmp	r0, #1
	bne	.Lb69e0
	ldr	r0, =0x83d
	bl	_Func_175a0
	b	.Lb69e6
.Lb69e0:
	ldr	r0, =0x837
	bl	_Func_175a0
.Lb69e6:
	bl	Func_bb65c
	mov	r0, #0x11
	bl	_Func_f9080
	mov	r7, #1
	mov	r0, #0x1e
	bl	Func_3b70
	neg	r7, r7
	bl	Func_3ce0
	b	.Lb6a12
.Lb6a00:
	mov	r0, #0x11
	bl	_Func_f9080
	mov	r0, #0x1e
	bl	Func_3b70
	bl	Func_3ce0
	ldr	r7, =0x3e7
.Lb6a12:
	bl	Func_b5b18
	bl	Func_bf674
	bl	Func_bf5a8
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, =Func_b7738
	bl	Func_4278
	bl	Func_c08e0
	mov	r0, r7
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b63c8

.thumb_func_start Func_b6a60
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x44
	ldrb	r3, [r3]
	sub	sp, #4
	mov	r5, r0
	mov	r6, #4
	cmp	r3, #0
	beq	.Lb6a7a
	mov	r6, #3
.Lb6a7a:
	bl	_Func_795fc
	mov	r7, r0
	cmp	r7, r6
	ble	.Lb6a86
	mov	r7, r6
.Lb6a86:
	cmp	r7, #0
	ble	.Lb6abc
	ldr	r3, =ewram_240
	mov	r1, #0xfc
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r8, r3
	mov	r6, r7
.Lb6a98:
	ldrb	r0, [r2]
	add	r2, #1
	cmp	r5, #0
	beq	.Lb6aa4
	strh	r0, [r5]
	add	r5, #2
.Lb6aa4:
	str	r2, [sp]
	bl	_Func_77394
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r0, r1
	sub	r6, #1
	mov	r1, r8
	strb	r1, [r3]
	ldr	r2, [sp]
	cmp	r6, #0
	bne	.Lb6a98
.Lb6abc:
	cmp	r5, #0
	beq	.Lb6ac4
	ldr	r3, .Lb6ad4	@ 0xff
	strh	r3, [r5]
.Lb6ac4:
	mov	r0, r7
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb6ad4:
	.word	0xff
.func_end Func_b6a60

.thumb_func_start Func_b6ae0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0
	mov	r8, r2
	mov	r7, #6
	mov	r0, #0
	cmp	r6, #0
	beq	.Lb6b30
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lb6b02
	mov	r7, #3
.Lb6b02:
	mov	r5, #0x80
	add	r7, #0x80
	cmp	r5, r7
	bge	.Lb6b2a
.Lb6b0a:
	mov	r0, r5
	bl	_Func_77394
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb6b24
	mov	r3, #1
	strh	r5, [r6]
	add	r8, r3
	add	r6, #2
.Lb6b24:
	add	r5, #1
	cmp	r5, r7
	blt	.Lb6b0a
.Lb6b2a:
	ldr	r3, =0xff
	strh	r3, [r6]
	mov	r0, r8
.Lb6b30:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b6ae0

.thumb_func_start Func_b6b40
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r0
	mov	r0, #0xb6
	mov	r6, r1
	mov	r2, #6
	mov	r1, #0
	lsl	r0, #1
	sub	sp, #0x14
	mov	r8, r1
	mov	r9, r2
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lb6b68
	mov	r3, #3
	mov	r9, r3
.Lb6b68:
	mov	r3, #1
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lb6baa
	add	r5, sp, #4
	mov	r0, r5
	bl	Func_b6a60
	cmp	r8, r0
	bge	.Lb6baa
	mov	r2, r5
	mov	r5, r0
.Lb6b82:
	ldrh	r7, [r2]
	add	r2, #2
	mov	r0, r7
	str	r2, [sp]
	bl	_Func_77394
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	ble	.Lb6ba4
	cmp	r6, #0
	beq	.Lb6ba0
	strh	r7, [r6]
	add	r6, #2
.Lb6ba0:
	mov	r3, #1
	add	r8, r3
.Lb6ba4:
	sub	r5, #1
	cmp	r5, #0
	bne	.Lb6b82
.Lb6baa:
	mov	r3, #2
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lb6bea
	mov	r7, r9
	mov	r5, #0x80
	add	r7, #0x80
	cmp	r5, r7
	bge	.Lb6bea
.Lb6bbe:
	mov	r0, r5
	bl	_Func_77394
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb6be4
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	ble	.Lb6be4
	cmp	r6, #0
	beq	.Lb6be0
	strh	r5, [r6]
	add	r6, #2
.Lb6be0:
	mov	r2, #1
	add	r8, r2
.Lb6be4:
	add	r5, #1
	cmp	r5, r7
	blt	.Lb6bbe
.Lb6bea:
	cmp	r6, #0
	beq	.Lb6bf2
	ldr	r3, =0xff
	strh	r3, [r6]
.Lb6bf2:
	mov	r0, r8
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b6b40

.thumb_func_start Func_b6c08
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e74
	mov	r6, r0
	ldr	r0, [r3]
	mov	r3, #1
	and	r3, r6
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb6c44
	mov	r3, #0x58
	ldrsh	r3, [r0, r3]
	cmp	r3, #0xff
	beq	.Lb6c44
	mov	r2, r0
	add	r2, #0x58
.Lb6c26:
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	ldrh	r4, [r2]
	cmp	r3, #0xfe
	beq	.Lb6c3a
	cmp	r1, #0
	beq	.Lb6c38
	strh	r4, [r1]
	add	r1, #2
.Lb6c38:
	add	r5, #1
.Lb6c3a:
	add	r2, #2
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	cmp	r3, #0xff
	bne	.Lb6c26
.Lb6c44:
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.Lb6c76
	add	r2, r0, #2
	mov	r3, #0x64
	ldrsh	r3, [r2, r3]
	mov	r12, r2
	cmp	r3, #0xff
	beq	.Lb6c76
	mov	r0, #0x64
.Lb6c5a:
	ldrsh	r3, [r2, r0]
	ldrh	r4, [r2, r0]
	cmp	r3, #0xfe
	beq	.Lb6c6c
	cmp	r1, #0
	beq	.Lb6c6a
	strh	r4, [r1]
	add	r1, #2
.Lb6c6a:
	add	r5, #1
.Lb6c6c:
	add	r0, #2
	mov	r2, r12
	ldrsh	r3, [r2, r0]
	cmp	r3, #0xff
	bne	.Lb6c5a
.Lb6c76:
	cmp	r1, #0
	beq	.Lb6c7e
	ldr	r3, .Lb6c88	@ 0xff
	strh	r3, [r1]
.Lb6c7e:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb6c88:
	.word	0xff
.func_end Func_b6c08

.thumb_func_start Func_b6c90
	push	{r5, lr}
	sub	sp, #0x1c
	mov	r5, sp
	mov	r1, r5
	mov	r0, #3
	bl	Func_b6c08
	mov	r0, r5
	mov	r1, #1
	bl	Func_b7b6c
	add	sp, #0x1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_b6c90

.thumb_func_start Func_b6cb0
	push	{r5, lr}
	sub	sp, #0x1c
	mov	r5, sp
	mov	r1, r5
	mov	r0, #3
	bl	Func_b6c08
	mov	r0, r5
	mov	r1, #0
	bl	Func_b7b6c
	add	sp, #0x1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_b6cb0

.thumb_func_start Func_b6cd0
	push	{lr}
	bl	Func_b7dd0
	ldr	r0, [r0, #0x14]
	pop	{r1}
	bx	r1
.func_end Func_b6cd0

.thumb_func_start Func_b6cdc
	push	{r5, lr}
	bl	Func_c23c0
	ldr	r3, =iwram_1e74
	ldr	r4, [r3]
	mov	r2, #4
	ldrsh	r3, [r4, r2]
	mov	r1, #0
	cmp	r3, #0
	bne	.Lb6cfc
	cmp	r0, #0
	bne	.Lb6d1c
	mov	r5, #6
	ldrsh	r3, [r4, r5]
	cmp	r3, #0
	beq	.Lb6d1c
.Lb6cfc:
	add	r1, #1
	cmp	r1, #5
	bgt	.Lb6d1c
	lsl	r2, r1, #1
	add	r3, r2, #4
	ldrsh	r3, [r4, r3]
	cmp	r3, #0
	bne	.Lb6cfc
	cmp	r0, #0
	bne	.Lb6d1c
	cmp	r1, #4
	bgt	.Lb6cfc
	add	r3, r2, #6
	ldrsh	r3, [r4, r3]
	cmp	r3, #0
	bne	.Lb6cfc
.Lb6d1c:
	mov	r3, #6
	eor	r3, r1
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b6cdc

.thumb_func_start Func_b6d30
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	sub	sp, #4
	ldr	r6, [r3]
	mov	r11, r0
	bl	_Func_77394
	mov	r5, #0x94
	mov	r9, r0
	lsl	r5, #1
	add	r5, r9
	ldrb	r0, [r5]
	bl	Func_c23c0
	mov	r1, #0
	mov	r8, r0
	ldrb	r0, [r5]
	mov	r10, r1
	bl	Func_c2384
	mov	r4, r10
	mov	r7, r0
.Lb6d68:
	ldr	r3, =0x129
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb6e04
	mov	r2, #4
	ldrsh	r3, [r6, r2]
	mov	r5, #0
	cmp	r3, #0
	bne	.Lb6d8a
	mov	r3, r8
	cmp	r3, #0
	bne	.Lb6dac
	mov	r1, #6
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	beq	.Lb6dac
.Lb6d8a:
	add	r5, #1
	cmp	r5, #5
	bgt	.Lb6dac
	lsl	r2, r5, #1
	add	r3, r2, #4
	ldrsh	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lb6d8a
	mov	r3, r8
	cmp	r3, #0
	bne	.Lb6dac
	cmp	r5, #4
	bgt	.Lb6d8a
	add	r3, r2, #6
	ldrsh	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lb6d8a
.Lb6dac:
	cmp	r5, #6
	beq	.Lb6e0a
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r9
	ldrb	r0, [r3]
	str	r4, [sp]
	bl	Func_c23a0
	ldr	r2, =ewram_18000
	ldr	r4, [sp]
	lsl	r1, r5, #14
	mov	r3, r0
	add	r1, r2
	mov	r0, r5
	add	r2, r7, r4
	bl	_Func_b6b8
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Lb6dda
	mov	r0, #0
	b	.Lb6e0c
.Lb6dda:
	cmp	r4, #0
	bne	.Lb6de4
	lsl	r3, r5, #12
	orr	r3, r7
	mov	r10, r3
.Lb6de4:
	lsl	r0, r5, #1
	add	r3, r0, #4
	mov	r1, r11
	mov	r2, r8
	strh	r1, [r6, r3]
	cmp	r2, #0
	bne	.Lb6df6
	add	r3, r0, #6
	strh	r1, [r6, r3]
.Lb6df6:
	mov	r2, #0xee
	lsl	r2, #1
	cmp	r7, r2
	beq	.Lb6e04
	ldr	r3, =0x1e3
	cmp	r7, r3
	bne	.Lb6e0a
.Lb6e04:
	add	r4, #1
	cmp	r4, #1
	ble	.Lb6d68
.Lb6e0a:
	mov	r0, r10
.Lb6e0c:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b6d30

.thumb_func_start Func_b6e30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e74
	ldr	r2, .Lb6e60	@ 0
	ldr	r7, [r3]
	mov	r8, r0
	mov	r6, #0
	mov	r10, r2
	mov	r5, #4
.Lb6e46:
	ldrsh	r3, [r5, r7]
	cmp	r3, r8
	bne	.Lb6e68
	mov	r3, #0
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	bl	_Func_b6b8
	mov	r3, r10
	strh	r3, [r5, r7]
	b	.Lb6e68

	.align	2, 0
.Lb6e60:
	.word	0
	.pool

.Lb6e68:
	add	r6, #1
	add	r5, #2
	cmp	r6, #5
	ble	.Lb6e46
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b6e30

	.section .rodata

.Lc2a10:
	.incrom 0xc2a10, 0xc2a1c
