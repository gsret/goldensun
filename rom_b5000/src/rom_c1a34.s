	.include "macros.inc"

.thumb_func_start Func_c1a34
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.Lc5c38
	lsl	r0, #4
	add	r0, r3
	ldrb	r3, [r0, #6]
	mov	r2, #0
	sub	sp, #0x1c
	mov	r9, r2
	mov	r11, r2
	mov	r10, r0
	mov	r7, #0
	cmp	r3, #0
	bne	.Lc1a6c
	mov	r2, r10
	add	r2, #6
.Lc1a5e:
	add	r7, #1
	cmp	r7, #4
	bhi	.Lc1a6c
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lc1a5e
.Lc1a6c:
	cmp	r7, #5
	bne	.Lc1a76
	mov	r0, #1
	neg	r0, r0
	b	.Lc1ae6
.Lc1a76:
	mov	r3, #0xb
	add	r3, r10
	mov	r7, #0
	mov	r8, r3
.Lc1a7e:
	mov	r2, r8
	ldrb	r3, [r2]
	mov	r2, #1
	add	r8, r2
	cmp	r3, #0
	beq	.Lc1ac6
	mov	r3, r10
	add	r3, #1
	ldrb	r6, [r3, r7]
	mov	r0, r6
	add	r0, #8
	bl	_Func_773d8
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc1ac6
	ldrb	r3, [r5, #0xf]
	cmp	r3, #3
	bls	.Lc1abe
	mov	r0, #0xba
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.Lc1abe
	mov	r3, #0xc1
	lsl	r3, #3
	add	r0, r6, r3
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lc1ad8
.Lc1abe:
	ldrb	r3, [r5, #0xf]
	mov	r2, #1
	add	r11, r3
	add	r9, r2
.Lc1ac6:
	add	r7, #1
	cmp	r7, #4
	bls	.Lc1a7e
	mov	r3, r9
	cmp	r3, #0
	bne	.Lc1ade
	mov	r0, #3
	neg	r0, r0
	b	.Lc1ae6
.Lc1ad8:
	mov	r0, #2
	neg	r0, r0
	b	.Lc1ae6
.Lc1ade:
	mov	r0, r11
	mov	r1, r9
	bl	Func_af0_from_thumb
.Lc1ae6:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c1a34

.thumb_func_start Func_c1afc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r11, r0
	mov	r0, #0x80
	sub	sp, #0x10
	mov	r9, r2
	bl	Func_4970
	mov	r5, sp
	mov	r3, #0
	mov	r10, r0
	mov	r0, r5
	mov	r8, r3
	bl	Func_b6a60
	mov	r7, r0
	cmp	r7, #0
	ble	.Lc1b42
	mov	r6, r5
	mov	r5, r7
.Lc1b30:
	ldrh	r0, [r6]
	bl	_Func_77394
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, #2
	add	r8, r3
	cmp	r5, #0
	bne	.Lc1b30
.Lc1b42:
	mov	r1, r7
	mov	r0, r8
	bl	Func_af0_from_thumb
	mov	r8, r0
	mov	r0, #0xfe
	lsl	r0, #2
	bl	_Func_793b8
	lsl	r0, #24
	asr	r0, #24
	add	r8, r0
	mov	r7, r8
	cmp	r7, #0
	bgt	.Lc1b64
	mov	r2, #1
	mov	r8, r2
.Lc1b64:
	mov	r3, r8
	cmp	r3, #0x63
	ble	.Lc1b6e
	mov	r7, #0x63
	mov	r8, r7
.Lc1b6e:
	ldr	r1, =0xffff
	mov	r2, r10
	mov	r5, #0x1f
.Lc1b74:
	ldrh	r3, [r2, #2]
	sub	r5, #1
	orr	r3, r1
	strh	r3, [r2, #2]
	add	r2, #4
	cmp	r5, #0
	bge	.Lc1b74
	ldr	r7, =.Lc73f8
	mov	r5, #0
	mov	r6, #0
	b	.Lc1b94

	.pool_aligned

.Lc1b94:
	ldrh	r0, [r6, r7]
	bl	_Func_773d8
	ldrh	r0, [r6, r7]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r0, r2
	add	r5, #1
	bl	_Func_79374
	add	r6, #2
	cmp	r5, #0x13
	bls	.Lc1b94
	mov	r5, #0
.Lc1bb0:
	mov	r0, r5
	bl	Func_c1a34
	cmp	r0, #0
	blt	.Lc1bf0
	mov	r3, r8
	add	r3, #3
	cmp	r0, r3
	bgt	.Lc1bf0
	mov	r6, #1
	ldr	r3, =0x3e7
	neg	r6, r6
	mov	r4, #0
	mov	r1, r10
.Lc1bcc:
	mov	r7, #2
	ldrsh	r2, [r1, r7]
	cmp	r2, r3
	bge	.Lc1bd8
	mov	r3, r2
	mov	r6, r4
.Lc1bd8:
	add	r4, #1
	add	r1, #4
	cmp	r4, #0x1f
	ble	.Lc1bcc
	cmp	r6, #0
	blt	.Lc1bf0
	lsl	r3, r6, #2
	add	r3, r10
	mov	r2, #1
	strh	r0, [r3, #2]
	strh	r5, [r3]
	add	r9, r2
.Lc1bf0:
	ldr	r3, =0x17b
	add	r5, #1
	cmp	r5, r3
	bls	.Lc1bb0
	mov	r7, r9
	cmp	r7, #0x20
	ble	.Lc1c02
	mov	r2, #0x20
	mov	r9, r2
.Lc1c02:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lc1c28
	bl	Func_4458
	mov	r3, r9
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #2
	add	r3, r10
	mov	r7, #0
	ldrsh	r5, [r3, r7]
	mov	r2, #2
	ldrsh	r3, [r3, r2]
	mov	r7, r8
	sub	r3, r7, r3
	mov	r2, r11
	str	r3, [r2]
	b	.Lc1c30
.Lc1c28:
	mov	r3, r9
	mov	r7, r11
	str	r3, [r7]
	mov	r5, #1
.Lc1c30:
	mov	r0, r10
	bl	Func_2df0
	mov	r0, r5
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c1afc

.thumb_func_start Func_c1c54
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r0, [sp, #8]
	mov	r0, #0x24
	mov	r10, r1
	bl	Func_4970
	mov	r9, r0
	ldr	r0, [sp, #8]
	bl	_Func_77394
	mov	r7, r0
	mov	r6, r7
	add	r6, #0x10
	mov	r2, #0x24
	ldr	r3, =Func_1af8
	mov	r1, r6
	mov	r0, r9
	bl	_call_via_r3
	mov	r1, r10
	lsl	r3, r1, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r5, [r6, r0]
	lsl	r0, r3, #5
	mov	r1, #0xa
	add	r0, r10
	mov	r11, r3
	bl	Func_af0_from_thumb
	add	r5, r0
	mov	r0, r9
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r5, r0
	bge	.Lc1cb6
	mov	r5, r0
.Lc1cb6:
	ldr	r1, =0x270f
	mov	r8, r1
	cmp	r5, r8
	ble	.Lc1cc0
	mov	r5, r8
.Lc1cc0:
	mov	r3, r10
	lsl	r3, #4
	strh	r5, [r6]
	mov	r1, r10
	sub	r0, r3, r1
	mov	r1, #0xa
	mov	r2, #0x12
	ldrsh	r5, [r7, r2]
	str	r3, [sp, #4]
	bl	Func_af0_from_thumb
	add	r5, r0
	mov	r0, r9
	mov	r2, #2
	ldrsh	r3, [r0, r2]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r5, r0
	bge	.Lc1cee
	mov	r5, r0
.Lc1cee:
	cmp	r5, r8
	ble	.Lc1cf4
	mov	r5, r8
.Lc1cf4:
	mov	r1, r10
	lsl	r1, #5
	mov	r2, r10
	sub	r0, r1, r2
	lsl	r0, #2
	strh	r5, [r7, #0x12]
	mov	r8, r1
	sub	r0, r2
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	ldrh	r5, [r7, #0x18]
	add	r5, r0
	mov	r0, r9
	ldrh	r3, [r0, #8]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r5, r0
	bge	.Lc1d22
	mov	r5, r0
.Lc1d22:
	ldr	r6, =0x3e7
	cmp	r5, r6
	ble	.Lc1d2a
	mov	r5, r6
.Lc1d2a:
	mov	r0, r8
	strh	r5, [r7, #0x18]
	mov	r1, #0xa
	add	r0, r10
	bl	Func_af0_from_thumb
	mov	r1, r9
	ldrh	r3, [r1, #0xa]
	ldrh	r5, [r7, #0x1a]
	add	r5, r0
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r5, r0
	bge	.Lc1d4e
	mov	r5, r0
.Lc1d4e:
	cmp	r5, r6
	ble	.Lc1d54
	mov	r5, r6
.Lc1d54:
	mov	r2, r11
	lsl	r0, r2, #4
	strh	r5, [r7, #0x1a]
	mov	r1, #0xa
	add	r0, r11
	bl	Func_af0_from_thumb
	ldrh	r5, [r7, #0x1c]
	add	r5, r0
	mov	r0, r9
	ldrh	r3, [r0, #0xc]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r5, r0
	bge	.Lc1d7a
	mov	r5, r0
.Lc1d7a:
	cmp	r5, r6
	ble	.Lc1d80
	mov	r5, r6
.Lc1d80:
	mov	r1, #0x14
	strh	r5, [r7, #0x1c]
	mov	r8, r1
	mov	r6, #0x24
	mov	r4, #3
.Lc1d8a:
	ldr	r0, [sp, #4]
	ldrsh	r2, [r6, r7]
	mov	r1, r10
	sub	r3, r0, r1
	add	r5, r2, r3
	mov	r1, r9
	mov	r2, r8
	ldrsh	r3, [r2, r1]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	str	r4, [sp]
	bl	Func_af0_from_thumb
	ldr	r4, [sp]
	cmp	r5, r0
	bge	.Lc1dae
	mov	r5, r0
.Lc1dae:
	cmp	r5, #0xc8
	ble	.Lc1db4
	mov	r5, #0xc8
.Lc1db4:
	mov	r2, #4
	sub	r4, #1
	strh	r5, [r6, r7]
	add	r8, r2
	add	r6, #4
	cmp	r4, #0
	bge	.Lc1d8a
	ldrb	r3, [r7, #0xf]
	add	r3, r10
	strb	r3, [r7, #0xf]
	ldr	r0, [sp, #8]
	bl	_Func_77428
	mov	r0, r9
	bl	Func_2df0
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c1c54

.thumb_func_start Func_c1df4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e74
	ldr	r5, [r3]
	mov	r6, r5
	add	r6, #0x40
	ldrb	r4, [r6]
	mov	r1, #0
	sub	sp, #4
	cmp	r1, r4
	bge	.Lc1e20
	ldrh	r3, [r5, #0x10]
	cmp	r3, r0
	beq	.Lc1e20
	mov	r2, r5
	add	r2, #0x10
.Lc1e12:
	add	r1, #1
	cmp	r1, r4
	bge	.Lc1e20
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, r0
	bne	.Lc1e12
.Lc1e20:
	cmp	r1, r4
	beq	.Lc1e82
	mov	r6, r1
	add	r6, #0x34
	ldrsb	r3, [r5, r6]
	mov	r4, #0
	cmp	r3, #0
	bge	.Lc1e40
	mov	r3, #1
	strb	r3, [r5, r6]
	lsl	r3, r1, #2
	add	r3, #0x1c
	mov	r2, #3
	str	r2, [r5, r3]
	ldr	r0, =0x8001
	b	.Lc1eac
.Lc1e40:
	lsl	r7, r1, #2
	b	.Lc1e46
.Lc1e44:
	add	r4, #1
.Lc1e46:
	cmp	r4, #0x1f
	bgt	.Lc1e6e
	ldrsb	r0, [r5, r6]
	mov	r1, #9
	add	r0, #1
	str	r4, [sp]
	bl	Func_b1c_from_thumb
	mov	r3, r7
	strb	r0, [r5, r6]
	add	r3, #0x1c
	lsl	r0, #24
	asr	r0, #24
	mov	r2, #1
	ldr	r3, [r5, r3]
	lsl	r2, r0
	and	r3, r2
	ldr	r4, [sp]
	cmp	r3, #0
	bne	.Lc1e44
.Lc1e6e:
	ldrsb	r3, [r5, r6]
	mov	r1, r7
	add	r1, #0x1c
	mov	r2, #1
	lsl	r2, r3
	ldr	r3, [r5, r1]
	orr	r3, r2
	str	r3, [r5, r1]
	ldrsb	r0, [r5, r6]
	b	.Lc1eac
.Lc1e82:
	cmp	r4, #4
	bgt	.Lc1ea8
	mov	r1, #1
	mov	r2, r4
	neg	r1, r1
	add	r2, #0x34
	mov	r3, r1
	strb	r3, [r5, r2]
	lsl	r3, r4, #1
	add	r3, #0x10
	strh	r0, [r5, r3]
	lsl	r3, r4, #2
	add	r3, #0x1c
	mov	r2, #0
	str	r2, [r5, r3]
	add	r3, r4, #1
	strb	r3, [r6]
	mov	r0, #9
	b	.Lc1eac
.Lc1ea8:
	mov	r0, #1
	neg	r0, r0
.Lc1eac:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c1df4

.thumb_func_start Func_c1ebc
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e74
	ldr	r6, [r3]
	mov	r3, r6
	add	r3, #0x40
	ldrb	r5, [r3]
	bl	_Func_77394
	ldr	r3, =0x129
	mov	r12, r0
	add	r3, r12
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lc1f42
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r12
	mov	r1, #0
	ldrb	r0, [r3]
	cmp	r1, r5
	bge	.Lc1efe
	ldrh	r3, [r6, #0x10]
	cmp	r3, r0
	beq	.Lc1efe
	mov	r2, r6
	add	r2, #0x10
.Lc1ef0:
	add	r1, #1
	cmp	r1, r5
	bge	.Lc1efe
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, r0
	bne	.Lc1ef0
.Lc1efe:
	cmp	r1, r5
	beq	.Lc1f42
	lsl	r1, #2
	mov	r3, r1
	add	r3, #0x1c
	ldr	r3, [r6, r3]
	cmp	r3, #0
	beq	.Lc1f42
	mov	r2, r12
	ldrb	r3, [r2]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lc1f26
.Lc1f18:
	add	r4, #1
	cmp	r4, #0xd
	bgt	.Lc1f26
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.Lc1f18
.Lc1f26:
	mov	r0, #0x20
	cmp	r4, #0
	ble	.Lc1f36
	sub	r3, r4, #1
	mov	r2, r12
	ldrb	r3, [r2, r3]
	mov	r0, r3
	sub	r0, #0x31
.Lc1f36:
	add	r1, #0x1c
	ldr	r3, [r6, r1]
	mov	r2, #1
	lsl	r2, r0
	bic	r3, r2
	str	r3, [r6, r1]
.Lc1f42:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_c1ebc

.thumb_func_start Func_c1f50
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r5, #0
	mov	r7, #0x31
.Lc1f58:
	mov	r0, r5
	add	r0, #0x80
	bl	_Func_77394
	mov	r2, r0
	mov	r0, #0x95
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r1, [r3]
	cmp	r1, #1
	bne	.Lc1f9a
	sub	r0, #2
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, r6
	bne	.Lc1f9a
	ldrb	r3, [r2]
	mov	r0, #0
	cmp	r3, #0
	bne	.Lc1f86
	strb	r7, [r2]
	strb	r0, [r2, r1]
	b	.Lc1fa0
.Lc1f86:
	add	r0, #1
	cmp	r0, #0xd
	bgt	.Lc1fa0
	ldrb	r1, [r2, r0]
	cmp	r1, #0
	bne	.Lc1f86
	add	r3, r0, #1
	strb	r7, [r2, r0]
	strb	r1, [r2, r3]
	b	.Lc1fa0
.Lc1f9a:
	add	r5, #1
	cmp	r5, #5
	ble	.Lc1f58
.Lc1fa0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c1f50

.thumb_func_start Func_c1fa8
	push	{r5, r6, lr}
	mov	r3, #0xbe
	lsl	r3, #1
	sub	sp, #0x14
	mov	r5, #0
	cmp	r0, r3
	bcc	.Lc1fb8
	mov	r0, #1
.Lc1fb8:
	ldr	r2, =.Lc5c38
	lsl	r3, r0, #4
	add	r3, r2
	mov	r6, sp
	mov	r0, r3
	add	r2, r3, #1
	add	r0, #0xb
	mov	r4, r6
	mov	r1, #4
.Lc1fca:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0
	beq	.Lc1fda
	ldrb	r3, [r2]
	add	r3, #8
	stmia	r4!, {r3}
	add	r5, #1
.Lc1fda:
	sub	r1, #1
	add	r2, #1
	cmp	r1, #0
	bge	.Lc1fca
	bl	Func_4458
	mov	r3, r5
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #2
	ldr	r0, [r6, r3]
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_c1fa8

.thumb_func_start Func_c1ffc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	sub	sp, #0x7c
	ldr	r3, [r3]
	mov	r5, r0
	mov	r0, sp
	str	r3, [sp, #0x18]
	mov	r2, #0
	add	r0, #0x60
	add	r3, #0x40
	str	r2, [sp, #0x20]
	strb	r2, [r3]
	str	r0, [sp, #0x1c]
	ldr	r0, =0x173
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lc2034
	add	r0, sp, #0x20
	bl	Func_c1afc
	mov	r5, r0
.Lc2034:
	mov	r1, #0xbe
	lsl	r1, #1
	cmp	r5, r1
	bcc	.Lc203e
	mov	r5, #1
.Lc203e:
	ldr	r2, =.Lc5c38
	lsl	r3, r5, #4
	add	r3, r2
	mov	r4, r3
	str	r3, [sp, #0x14]
	add	r4, #2
	ldrb	r3, [r4, #4]
	mov	r1, #0
	cmp	r3, #0
	bne	.Lc2064
	ldr	r2, [sp, #0x14]
	add	r2, #6
.Lc2056:
	add	r1, #1
	cmp	r1, #4
	bgt	.Lc2064
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lc2056
.Lc2064:
	cmp	r1, #5
	bne	.Lc2070
	ldr	r2, =.Lc5c48
	mov	r4, r2
	str	r2, [sp, #0x14]
	add	r4, #2
.Lc2070:
	ldr	r0, [sp, #0x14]
	add	r0, #1
	mov	r5, #0
	mov	r3, #6
	str	r0, [sp, #8]
	str	r5, [sp, #0x10]
	mov	r11, r3
	mov	r7, #0
	add	r5, r4, #4
.Lc2082:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.Lc20aa
	ldr	r1, [sp, #8]
	ldrb	r0, [r1, r7]
	add	r0, #8
	str	r4, [sp]
	bl	Func_c23c0
	neg	r3, r0
	orr	r3, r0
	mov	r2, #2
	lsr	r3, #31
	sub	r3, r2, r3
	ldrb	r2, [r5]
	mul	r3, r2
	mov	r2, r11
	sub	r2, r3
	ldr	r4, [sp]
	mov	r11, r2
.Lc20aa:
	add	r7, #1
	add	r5, #1
	cmp	r7, #4
	bls	.Lc2082
	mov	r3, sp
	ldr	r5, [sp, #0x14]
	add	r3, #0x38
	add	r5, #0xb
	add	r4, #4
	mov	r0, #0
	str	r3, [sp, #0xc]
	mov	r7, #0
	add	r6, sp, #0x4c
	mov	r9, r5
	mov	r10, r4
	mov	r8, r0
.Lc20ca:
	mov	r1, r10
	ldrb	r2, [r1]
	mov	r3, #1
	mov	r1, r9
	ldr	r0, [sp, #0xc]
	mov	r5, r8
	add	r10, r3
	ldrb	r3, [r1]
	str	r2, [r5, r0]
	mov	r5, #1
	add	r9, r5
	sub	r5, r3, r2
	cmp	r5, #0
	ble	.Lc2116
	ldr	r1, [sp, #8]
	ldrb	r0, [r1, r7]
	add	r0, #8
	bl	Func_c23c0
	neg	r1, r0
	orr	r1, r0
	lsr	r1, #31
	mov	r3, #2
	sub	r1, r3, r1
	mov	r0, r11
	bl	Func_af0_from_thumb
	cmp	r0, r5
	bge	.Lc2106
	mov	r5, r0
.Lc2106:
	bl	Func_4458
	add	r3, r5, #1
	mul	r3, r0
	mov	r2, r8
	lsr	r3, #16
	str	r3, [r2, r6]
	b	.Lc211c
.Lc2116:
	mov	r3, #0
	mov	r5, r8
	str	r3, [r5, r6]
.Lc211c:
	mov	r0, #4
	add	r7, #1
	add	r8, r0
	cmp	r7, #4
	bls	.Lc20ca
	ldr	r4, [sp, #0xc]
	mov	r1, r6
.Lc212a:
	mov	r2, #0
	mov	r8, r2
	mov	r7, #0
	mov	r5, #0
.Lc2132:
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, r7]
	mov	r0, r3
	ldr	r3, [r5, r6]
	add	r0, #8
	cmp	r3, #0
	beq	.Lc2178
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	Func_c23c0
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r2, r3
	mov	r3, #2
	sub	r2, r3, r2
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r2, r11
	ble	.Lc2162
	mov	r3, #0
	str	r3, [r5, r6]
	b	.Lc2178
.Lc2162:
	ldr	r3, [r5, r4]
	add	r3, #1
	str	r3, [r5, r4]
	ldr	r3, [r5, r1]
	sub	r3, #1
	str	r3, [r5, r1]
	mov	r3, r11
	sub	r3, r2
	mov	r0, #1
	mov	r11, r3
	mov	r8, r0
.Lc2178:
	add	r7, #1
	add	r5, #4
	cmp	r7, #4
	bls	.Lc2132
	mov	r2, r8
	cmp	r2, #0
	bne	.Lc212a
	ldr	r5, [sp, #0x14]
	ldr	r2, [sp, #0x18]
	ldrb	r3, [r5]
	add	r2, #0x42
	strb	r3, [r2]
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lc219e
	cmp	r3, #1
	beq	.Lc221a
	mov	r7, #0
	b	.Lc22b0
.Lc219e:
	add	r0, sp, #0x24
	mov	r8, r0
	mov	r7, #0
	mov	r3, r8
.Lc21a6:
	stmia	r3!, {r7}
	add	r7, #1
	cmp	r7, #4
	bls	.Lc21a6
	mov	r7, #0
	mov	r6, r8
.Lc21b2:
	bl	Func_4458
	lsl	r5, r0, #2
	add	r5, r0
	bl	Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r5, #16
	lsr	r3, #16
	lsl	r5, #2
	lsl	r3, #2
	ldr	r1, [r6, r5]
	ldr	r2, [r6, r3]
	add	r7, #1
	str	r2, [r6, r5]
	str	r1, [r6, r3]
	cmp	r7, #9
	bls	.Lc21b2
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x10]
	ldr	r6, [sp, #0xc]
	mov	r7, #0
	mov	r4, r8
	mov	r12, r1
	lsl	r0, r2, #1
.Lc21e6:
	ldr	r2, [r4]
	lsl	r1, r2, #2
	ldr	r3, [r6, r1]
	cmp	r3, #0
	ble	.Lc2210
	mov	r5, r12
	ldrb	r3, [r5, r2]
	ldr	r2, [sp, #0xc]
	ldr	r5, [sp, #0x1c]
	ldr	r1, [r2, r1]
	add	r3, #8
	add	r2, r0, r5
.Lc21fe:
	strh	r3, [r2]
	ldr	r5, [sp, #0x10]
	sub	r1, #1
	add	r5, #1
	add	r2, #2
	add	r0, #2
	str	r5, [sp, #0x10]
	cmp	r1, #0
	bne	.Lc21fe
.Lc2210:
	add	r7, #1
	add	r4, #4
	cmp	r7, #4
	bls	.Lc21e6
	b	.Lc22b4
.Lc221a:
	ldr	r1, [sp, #0x10]
	mov	r0, #0x24
	ldr	r2, [sp, #0x1c]
	add	r0, sp
	lsl	r3, r1, #1
	ldr	r4, [sp, #0xc]
	mov	r8, r0
	add	r6, r3, r2
.Lc222a:
	mov	r5, #0
	mov	r7, #0
	mov	r1, r4
	add	r2, sp, #0x24
.Lc2232:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.Lc223c
	stmia	r2!, {r7}
	add	r5, #1
.Lc223c:
	add	r7, #1
	cmp	r7, #4
	bls	.Lc2232
	cmp	r5, #0
	beq	.Lc22b4
	str	r4, [sp]
	bl	Func_4458
	mov	r3, r5
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #2
	mov	r5, r8
	ldr	r2, [r5, r3]
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, r2]
	add	r3, #8
	strh	r3, [r6]
	ldr	r1, [sp, #0x10]
	add	r1, #1
	str	r1, [sp, #0x10]
	ldr	r4, [sp]
	lsl	r2, #2
	ldr	r3, [r4, r2]
	sub	r3, #1
	add	r6, #2
	str	r3, [r4, r2]
	b	.Lc222a

	.pool_aligned

.Lc2284:
	ldr	r5, [sp, #0xc]
	lsl	r3, r7, #2
	ldr	r2, [r5, r3]
	cmp	r2, #0
	ble	.Lc22ae
	ldr	r0, [sp, #8]
	ldr	r5, [sp, #0x10]
	ldrb	r3, [r0, r7]
	ldr	r0, [sp, #0x1c]
	mov	r1, r3
	lsl	r3, r5, #1
	add	r1, #8
	add	r3, r0
.Lc229e:
	strh	r1, [r3]
	ldr	r5, [sp, #0x10]
	sub	r2, #1
	add	r5, #1
	add	r3, #2
	str	r5, [sp, #0x10]
	cmp	r2, #0
	bne	.Lc229e
.Lc22ae:
	add	r7, #1
.Lc22b0:
	cmp	r7, #4
	bls	.Lc2284
.Lc22b4:
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x1c]
	ldr	r3, =0
	lsl	r2, r0, #1
	strh	r3, [r2, r1]
	ldr	r5, [sp, #0x18]
	mov	r3, #6
	strh	r3, [r5, #0x3c]
	ldr	r0, [sp, #0x18]
	mov	r2, #0
	strh	r2, [r0, #0x3e]
	ldr	r5, =Func_8d4
	mov	r7, #0x80
	b	.Lc22d8

	.pool_aligned

.Lc22d8:
	mov	r0, r7
	bl	_Func_77394
	mov	r1, #0xa6
	lsl	r1, #1
	add	r7, #1
	bl	_call_via_r5
	cmp	r7, #0x85
	bls	.Lc22d8
	ldr	r1, [sp, #0x1c]
	ldrh	r3, [r1]
	mov	r7, #0
	cmp	r3, #0
	beq	.Lc234e
	mov	r2, #0
.Lc22f8:
	ldr	r3, [sp, #0x1c]
	add	r6, r2, r3
	ldrh	r0, [r6]
	mov	r1, #1
	bl	Func_c1df4
	mov	r3, #0x80
	mov	r4, r0
	lsl	r3, #8
	and	r3, r4
	cmp	r3, #0
	beq	.Lc231a
	ldrh	r0, [r6]
	str	r4, [sp]
	bl	Func_c1f50
	ldr	r4, [sp]
.Lc231a:
	mov	r5, r7
	ldr	r2, =0x7fff
	add	r5, #0x80
	ldrh	r1, [r6]
	and	r2, r4
	mov	r0, r5
	bl	_Func_79460
	mov	r0, r5
	bl	_Func_77394
	ldr	r1, [sp, #0x20]
	cmp	r1, #0
	beq	.Lc233c
	mov	r0, r5
	bl	Func_c1c54
.Lc233c:
	add	r7, #1
	cmp	r7, #5
	bhi	.Lc234e
	lsl	r3, r7, #1
	ldr	r5, [sp, #0x1c]
	mov	r2, r3
	ldrh	r3, [r2, r5]
	cmp	r3, #0
	bne	.Lc22f8
.Lc234e:
	mov	r0, r7
	add	sp, #0x7c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c1ffc

.thumb_func_start Func_c2368
	push	{lr}
	ldr	r3, =.Lc7420
	lsl	r0, #3
	add	r0, r3
	ldrb	r3, [r0, #3]
	lsr	r0, r3, #5
	cmp	r0, #4
	ble	.Lc237c
	mov	r0, #1
	neg	r0, r0
.Lc237c:
	pop	{r1}
	bx	r1
.func_end Func_c2368

.thumb_func_start Func_c2384
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc2390
	ldr	r3, =.Lc7420
	ldrh	r0, [r3]
	b	.Lc2396
.Lc2390:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	ldrh	r0, [r3, r2]
.Lc2396:
	pop	{r1}
	bx	r1
.func_end Func_c2384

.thumb_func_start Func_c23a0
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23ac
	ldr	r3, =.Lc7420
	ldrh	r0, [r3]
	b	.Lc23b8
.Lc23ac:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r0, [r2, #3]
	lsl	r0, #27
	lsr	r0, #28
.Lc23b8:
	pop	{r1}
	bx	r1
.func_end Func_c23a0

.thumb_func_start Func_c23c0
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23ca
	mov	r0, #0
	b	.Lc23de
.Lc23ca:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsl	r3, #31
	mov	r1, #0
	cmp	r3, #0
	beq	.Lc23dc
	mov	r1, #1
.Lc23dc:
	mov	r0, r1
.Lc23de:
	pop	{r1}
	bx	r1
.func_end Func_c23c0

.thumb_func_start Func_c23e8
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23f2
	mov	r0, #1
	b	.Lc2406
.Lc23f2:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsl	r3, #27
	lsr	r3, #28
	mov	r0, r3
	cmp	r3, #0
	bne	.Lc2406
	mov	r0, #1
.Lc2406:
	pop	{r1}
	bx	r1
.func_end Func_c23e8

.thumb_func_start Func_c2410
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc241a
	mov	r0, #0
	b	.Lc242c
.Lc241a:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsr	r3, #5
	mov	r0, r3
	cmp	r3, #0
	bne	.Lc242c
	mov	r0, #0
.Lc242c:
	pop	{r1}
	bx	r1
.func_end Func_c2410

.thumb_func_start Func_c2434
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc243e
	mov	r0, #0
	b	.Lc244a
.Lc243e:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r0, [r2, #3]
	lsl	r0, #31
	lsr	r0, #31
.Lc244a:
	pop	{r1}
	bx	r1
.func_end Func_c2434

.thumb_func_start Func_c2454
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc245e
	mov	r0, #0
	b	.Lc2466
.Lc245e:
	lsl	r2, r0, #3
	ldr	r3, =.Lc7420
	add	r2, #4
	ldrb	r0, [r3, r2]
.Lc2466:
	pop	{r1}
	bx	r1
.func_end Func_c2454

.thumb_func_start Func_c2470
	push	{r5, r6, lr}
	ldr	r3, =0x1ff
	mov	r6, r0
	and	r6, r3
	mov	r5, #0
	mov	r0, #0
	cmp	r6, #0
	beq	.Lc24a4
	mov	r0, r6
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lc2492
	mov	r5, #1
.Lc2492:
	mov	r3, #4
	and	r3, r2
	lsl	r5, #1
	cmp	r3, #0
	beq	.Lc249e
	add	r5, #1
.Lc249e:
	lsl	r5, #9
	add	r5, r6
	mov	r0, r5
.Lc24a4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_c2470

.thumb_func_start Func_c24b0
	push	{lr}
	ldr	r3, =iwram_1e74
	mov	r2, #0xa6
	ldr	r0, [r3]
	lsl	r2, #3
	add	r1, r0, r2
	ldr	r3, =ewram_240
	mov	r2, #0x8f
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	strh	r2, [r3]
	str	r2, [r1]
	str	r2, [r1, #4]
	str	r2, [r1, #8]
	ldr	r1, =0x542
	mov	r3, #3
	add	r0, r1
.Lc24d4:
	sub	r3, #1
	strh	r2, [r0]
	sub	r0, #2
	cmp	r3, #0
	bge	.Lc24d4
	pop	{r0}
	bx	r0
.func_end Func_c24b0

.thumb_func_start Func_c24f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r1
	mov	r5, r0
	bl	_Func_77394
	ldr	r3, =iwram_1e74
	mov	r8, r0
	mov	r1, #0xa6
	ldr	r0, [r3]
	lsl	r1, #3
	add	r7, r0, r1
	cmp	r5, #7
	bhi	.Lc251c
	mov	r0, #1
	neg	r0, r0
	b	.Lc2704
.Lc251c:
	ldr	r3, =0x129
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lc252c
	mov	r0, #2
	neg	r0, r0
	b	.Lc2704
.Lc252c:
	mov	r1, #0x94
	lsl	r1, #1
	add	r1, r8
	ldrh	r2, [r0, #0x10]
	ldrb	r3, [r1]
	mov	r6, #0
	mov	r5, #0
	cmp	r2, r3
	beq	.Lc2554
	mov	r4, r1
	mov	r1, r0
	add	r1, #0x10
.Lc2544:
	add	r5, #1
	cmp	r5, #5
	bgt	.Lc2554
	add	r1, #2
	ldrh	r2, [r1]
	ldrb	r3, [r4]
	cmp	r2, r3
	bne	.Lc2544
.Lc2554:
	cmp	r5, #6
	beq	.Lc255a
	mov	r6, r5
.Lc255a:
	ldrh	r3, [r0, #0x3e]
	cmp	r3, #2
	beq	.Lc2572
	ldrh	r3, [r0, #0x3c]
	cmp	r6, r3
	bge	.Lc2568
	strh	r6, [r0, #0x3c]
.Lc2568:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.Lc2574
	mov	r3, #1
	strh	r3, [r0, #0x3e]
.Lc2572:
	ldr	r3, [r7, #8]
.Lc2574:
	add	r3, #1
	str	r3, [r7, #8]
	ldr	r0, =0x173
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lc2584
	b	.Lc2702
.Lc2584:
	mov	r5, #0x94
	lsl	r5, #1
	add	r5, r8
	ldrb	r0, [r5]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r0, r2
	bl	_Func_79358
	ldrb	r0, [r5]
	bl	_Func_773d8
	mov	r3, r11
	mov	r10, r0
	cmp	r3, #0
	beq	.Lc2646
	mov	r6, #0x4c
	add	r6, r10
	ldrh	r3, [r6]
	mov	r9, r6
	cmp	r3, #0
	beq	.Lc25f8
	mov	r6, #0
	mov	r5, #0
	b	.Lc25c8
.Lc25b6:
	bl	Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, r6, r3
	add	r6, r3, #1
	add	r5, #1
.Lc25c8:
	mov	r1, r8
	ldrb	r0, [r1, #0xf]
	mov	r1, #0xa
	bl	Func_b60_from_thumb
	lsl	r0, #24
	lsr	r0, #24
	add	r0, #1
	cmp	r5, r0
	blt	.Lc25b6
	mov	r2, r9
	ldrh	r5, [r2]
	lsl	r0, r5, #1
	add	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r6, r0
	bge	.Lc25f0
	mov	r6, r0
.Lc25f0:
	ldr	r3, [r7]
	add	r2, r6, r5
	add	r3, r2
	str	r3, [r7]
.Lc25f8:
	mov	r3, #0x52
	add	r3, r10
	mov	r9, r3
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.Lc265e
	mov	r6, #0
	mov	r5, #0
	b	.Lc2618
.Lc260a:
	bl	Func_4458
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r6, r0
	add	r6, r0, #1
	add	r5, #1
.Lc2618:
	mov	r1, r8
	ldrb	r0, [r1, #0xf]
	mov	r1, #0xa
	bl	Func_b60_from_thumb
	lsl	r0, #24
	lsr	r0, #24
	add	r0, #1
	cmp	r5, r0
	blt	.Lc260a
	mov	r2, r9
	ldrh	r5, [r2]
	lsl	r0, r5, #1
	add	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r6, r0
	bge	.Lc2640
	mov	r6, r0
.Lc2640:
	ldr	r3, [r7, #4]
	add	r2, r6, r5
	b	.Lc265a
.Lc2646:
	mov	r3, r10
	add	r3, #0x4c
	ldrh	r2, [r3]
	ldr	r3, [r7]
	add	r3, r2
	str	r3, [r7]
	mov	r3, r10
	add	r3, #0x52
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
.Lc265a:
	add	r3, r2
	str	r3, [r7, #4]
.Lc265e:
	mov	r3, #0x4e
	add	r3, r10
	mov	r6, #0
	ldrsh	r2, [r3, r6]
	mov	r9, r3
	cmp	r2, #0
	beq	.Lc2702
	mov	r0, r10
	add	r0, #0x50
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	beq	.Lc2702
	ldrh	r3, [r7, #0xc]
	mov	r5, #0
	cmp	r3, r2
	beq	.Lc2698
	mov	r1, r7
	mov	r4, r9
	add	r1, #0xc
.Lc2686:
	add	r5, #1
	cmp	r5, #3
	bgt	.Lc2698
	add	r1, #2
	ldrh	r2, [r1]
	mov	r6, #0
	ldrsh	r3, [r4, r6]
	cmp	r2, r3
	bne	.Lc2686
.Lc2698:
	cmp	r5, #4
	bne	.Lc2702
	mov	r2, r11
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r2, #0
	beq	.Lc26a8
	sub	r0, #2
.Lc26a8:
	cmp	r0, #0
	bge	.Lc26ae
	mov	r0, #0
.Lc26ae:
	mov	r5, #0x80
	lsl	r5, #10
	asr	r5, r0
	bl	_Func_79bc4
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	ble	.Lc2702
	mov	r6, #0x80
	lsl	r6, #23
	mov	r3, #1
	neg	r3, r3
	mov	r8, r6
	mov	r6, r7
	mov	r10, r3
	mov	r5, #0
	add	r6, #0xc
.Lc26d2:
	ldrh	r0, [r6]
	add	r6, #2
	bl	Func_c2470
	cmp	r0, r8
	bge	.Lc26e2
	mov	r8, r0
	mov	r10, r5
.Lc26e2:
	add	r5, #1
	cmp	r5, #3
	ble	.Lc26d2
	mov	r2, r9
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	bl	Func_c2470
	cmp	r0, r8
	ble	.Lc2702
	mov	r6, r10
	mov	r1, r9
	lsl	r3, r6, #1
	ldrh	r2, [r1]
	add	r3, #0xc
	strh	r2, [r7, r3]
.Lc2702:
	mov	r0, #0
.Lc2704:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c24f0

.thumb_func_start Func_c2724
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	mov	r0, #0xa6
	ldr	r3, [r3]
	lsl	r0, #3
	add	r0, r3, r0
	sub	sp, #0x38
	str	r0, [sp, #0x14]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.Lc2756
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x83a
	bl	_Func_175a0
	bl	Func_bb65c
.Lc2756:
	mov	r2, sp
	add	r2, #0x18
	mov	r1, r2
	mov	r0, #1
	str	r2, [sp, #0xc]
	bl	Func_b6b40
	str	r0, [sp, #0x10]
	mov	r0, #0xa6
	lsl	r0, #1
	bl	Func_4970
	mov	r11, r0
	ldr	r0, [sp, #0x10]
	mov	r3, #0
	str	r3, [sp, #8]
	cmp	r3, r0
	blt	.Lc277c
	b	.Lc291e
.Lc277c:
	add	r2, sp, #0x28
	str	r3, [sp]
	mov	r8, r2
.Lc2782:
	ldr	r0, [sp, #0xc]
	ldr	r3, [sp]
	ldrh	r3, [r3, r0]
	mov	r0, r3
	str	r3, [sp, #4]
	bl	_Func_77394
	mov	r3, #0x92
	mov	r10, r0
	lsl	r3, #1
	ldr	r0, [sp, #0x14]
	add	r3, r10
	ldr	r2, [r3]
	ldr	r1, [r0, #4]
	add	r2, r1
	str	r2, [r3]
	b	.Lc28ee
.Lc27a4:
	mov	r0, #0x59
	bl	_Func_f9080
	bl	_Func_198dc
	ldr	r3, =0x129
	add	r3, r10
	ldrb	r0, [r3]
	mov	r1, #3
	bl	_Func_19908
	ldr	r2, [sp]
	ldr	r3, [sp, #0xc]
	mov	r1, #1
	ldrh	r0, [r2, r3]
	bl	_Func_19908
	mov	r2, r10
	ldrb	r0, [r2, #0xf]
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x89a
	bl	_Func_175a0
	bl	Func_bb65c
	ldr	r3, =0x3fff
	mov	r6, r10
	mov	r9, r3
	add	r6, #0x58
	mov	r7, #0x1f
.Lc27e4:
	ldrh	r5, [r6]
	mov	r0, r9
	mov	r3, r5
	and	r3, r0
	add	r6, #4
	cmp	r3, #0
	beq	.Lc284c
	lsr	r3, r5, #15
	cmp	r3, #0
	beq	.Lc284c
	mov	r3, #0x58
	mov	r2, r11
	ldrh	r3, [r2, r3]
	mov	r1, #0
	cmp	r5, r3
	beq	.Lc2814
	add	r2, #0x58
.Lc2806:
	add	r1, #1
	cmp	r1, #0x1f
	bgt	.Lc2814
	add	r2, #4
	ldrh	r3, [r2]
	cmp	r5, r3
	bne	.Lc2806
.Lc2814:
	cmp	r1, #0x20
	bne	.Lc284c
	bl	_Func_198dc
	ldr	r3, =0x129
	add	r3, r10
	ldrb	r0, [r3]
	mov	r1, #3
	bl	_Func_19908
	mov	r1, #1
	ldr	r0, [sp, #4]
	bl	_Func_19908
	mov	r3, r9
	and	r5, r3
	mov	r1, #4
	mov	r0, r5
	bl	_Func_19908
	mov	r0, #0x9a
	bl	_Func_f9080
	ldr	r0, =0x89b
	bl	_Func_175a0
	bl	Func_bb65c
.Lc284c:
	sub	r7, #1
	cmp	r7, #0
	bge	.Lc27e4
	mov	r3, r8
	mov	r2, #4
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc286c
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x89c
	bl	_Func_175a0
	bl	Func_bb65c
.Lc286c:
	mov	r3, r8
	mov	r2, #6
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc2886
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x89d
	bl	_Func_175a0
	bl	Func_bb65c
.Lc2886:
	mov	r3, r8
	mov	r2, #8
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc28a0
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x89e
	bl	_Func_175a0
	bl	Func_bb65c
.Lc28a0:
	mov	r3, r8
	mov	r2, #0xa
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc28ba
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x89f
	bl	_Func_175a0
	bl	Func_bb65c
.Lc28ba:
	mov	r3, r8
	mov	r2, #0xc
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc28d4
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x8a0
	bl	_Func_175a0
	bl	Func_bb65c
.Lc28d4:
	mov	r3, r8
	mov	r2, #0xe
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc28ee
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x8a1
	bl	_Func_175a0
	bl	Func_bb65c
.Lc28ee:
	mov	r2, #0xa6
	mov	r1, r10
	ldr	r3, =Func_1af8
	mov	r0, r11
	lsl	r2, #1
	bl	_call_via_r3
	mov	r1, r8
	ldr	r0, [sp, #4]
	bl	_Func_792c4
	cmp	r0, #0
	beq	.Lc290a
	b	.Lc27a4
.Lc290a:
	ldr	r0, [sp]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x10]
	add	r0, #2
	add	r2, #1
	str	r0, [sp]
	str	r2, [sp, #8]
	cmp	r2, r3
	bge	.Lc291e
	b	.Lc2782
.Lc291e:
	mov	r0, r11
	bl	Func_2df0
	ldr	r2, [sp, #0x14]
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.Lc2944
	mov	r1, #5
	bl	_Func_19908
	ldr	r0, =0x83b
	bl	_Func_175a0
	ldr	r3, [sp, #0x14]
	ldr	r0, [r3]
	bl	_Func_79700
	bl	Func_bb65c
.Lc2944:
	ldr	r0, =ewram_47c
	mov	r10, r0
.Lc2948:
	mov	r7, #1
	neg	r7, r7
	mov	r8, r7
	mov	r6, #0
	mov	r5, #0xc
.Lc2952:
	ldr	r2, [sp, #0x14]
	ldrh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lc2968
	mov	r0, r3
	bl	Func_c2470
	cmp	r0, r8
	blt	.Lc2968
	mov	r8, r0
	mov	r7, r6
.Lc2968:
	add	r6, #1
	add	r5, #2
	cmp	r6, #3
	ble	.Lc2952
	mov	r6, #1
	neg	r6, r6
	cmp	r7, r6
	beq	.Lc29b0
	lsl	r3, r7, #1
	mov	r5, r3
	ldr	r3, [sp, #0x14]
	add	r5, #0xc
	ldrh	r0, [r3, r5]
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0x83c
	bl	_Func_175a0
	bl	Func_bb65c
	ldr	r2, [sp, #0x14]
	ldrh	r0, [r2, r5]
	bl	_Func_78618
	cmp	r0, r6
	bne	.Lc29a8
	ldr	r0, [sp, #0x14]
	ldrh	r3, [r0, r5]
	mov	r2, r10
	strh	r3, [r2]
	b	.Lc29b0
.Lc29a8:
	ldr	r3, .Lc29c4	@ 0
	ldr	r0, [sp, #0x14]
	strh	r3, [r0, r5]
	b	.Lc2948
.Lc29b0:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lc29c4:
	.word	0
.func_end Func_c2724

.thumb_func_start Func_c2a08
	bx	lr
.func_end Func_c2a08

	.section .rodata

.Lc5c38:
	.incrom 0xc5c38, 0xc5c48
.Lc5c48:
	.incrom 0xc5c48, 0xc73f8
.Lc73f8:
	.incrom 0xc73f8, 0xc7420
.Lc7420:
	.incrom 0xc7420, 0xc7980
