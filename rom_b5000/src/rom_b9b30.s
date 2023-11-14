	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_b9b30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r0
	mov	r3, #0
	ldrsh	r0, [r0, r3]
	mov	r2, #0
	sub	sp, #0x20
	mov	r10, r1
	mov	r9, r2
	cmp	r0, #0xff
	bne	.Lb9b50
	mov	r0, #0
	b	.Lb9d02
.Lb9b50:
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.Lb9b62
	mov	r0, #1
	neg	r0, r0
	b	.Lb9d02
.Lb9b62:
	ldr	r2, =0x129
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9b74
	mov	r0, r8
	mov	r1, #1
	bl	Func_bd424
.Lb9b74:
	ldr	r2, =iwram_1f00
	ldr	r7, [r2]
	mov	r3, #0x3c
	str	r3, [r7, #4]
	mov	r3, r2
	sub	r3, #0x8c
	ldr	r6, [r3]
	mov	r3, r9
	str	r3, [r7, #0x14]
	ldr	r3, =0x644
	sub	r2, #0x80
	add	r1, r6, r3
	mov	r3, #0x80
	ldr	r5, [r2]
	lsl	r3, #9
	str	r3, [r1]
	bl	Func_49ac
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
	mov	r0, #0xff
	mov	r1, #0xc0
	ldr	r3, =Func_8ac
	lsl	r1, #8
	lsl	r0, #17
	bl	_call_via_r3
	mov	r1, r0
	mov	r0, #0xff
	ldr	r2, =0x7fff0000
	lsl	r0, #17
	bl	Func_5258
	mov	r2, r10
	cmp	r2, #0
	beq	.Lb9bce
	mov	r3, #0x80
	lsl	r3, #6
	str	r3, [r7]
	mov	r0, r10
	bl	Func_30f8
.Lb9bce:
	mov	r2, r8
	ldrh	r3, [r2]
	add	r0, sp, #0x1c
	strh	r3, [r0]
	mov	r3, #0xff
	strh	r3, [r0, #2]
	mov	r1, #1
	bl	Func_c10e8
	ldr	r3, =0x654
	mov	r0, r8
	add	r1, r6, r3
	bl	Func_be378
	cmp	r0, #0
	bne	.Lb9c9c
	mov	r2, #0xd5
	lsl	r2, #3
	add	r3, r6, r2
	ldr	r3, [r3]
	sub	r3, #1
	cmp	r3, #8
	bhi	.Lb9cb6
	ldr	r2, =.Lb9c04
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lb9c04:
	.word	.Lb9c28
	.word	.Lb9c34
	.word	.Lb9c58
	.word	.Lb9c76
	.word	.Lb9c40
	.word	.Lb9c5e
	.word	.Lb9c84
	.word	.Lb9c6a
	.word	.Lb9c4c
.Lb9c28:
	ldr	r3, =0x654
	mov	r1, #0
	add	r0, r6, r3
	bl	Func_ba27c
	b	.Lb9cb6
.Lb9c34:
	ldr	r2, =0x654
	mov	r1, #0
	add	r0, r6, r2
	bl	Func_ba2c0
	b	.Lb9cb6
.Lb9c40:
	ldr	r3, =0x654
	mov	r1, #1
	add	r0, r6, r3
	bl	Func_b9ec0
	b	.Lb9cb6
.Lb9c4c:
	ldr	r2, =0x654
	mov	r1, #0
	add	r0, r6, r2
	bl	Func_b9ec0
	b	.Lb9cb6
.Lb9c58:
	ldr	r3, =0x654
	mov	r1, #0
	b	.Lb9c6e
.Lb9c5e:
	ldr	r2, =0x654
	mov	r1, #1
	add	r0, r6, r2
	bl	Func_ba978
	b	.Lb9cb6
.Lb9c6a:
	ldr	r3, =0x654
	mov	r1, #2
.Lb9c6e:
	add	r0, r6, r3
	bl	Func_ba978
	b	.Lb9cb6
.Lb9c76:
	ldr	r2, =0x654
	mov	r1, #0
	add	r0, r6, r2
	mov	r2, r8
	bl	Func_ba6ac
	b	.Lb9cb6
.Lb9c84:
	ldr	r3, =0x654
	add	r0, r6, r3
	bl	Func_b9dc4
	cmp	r0, #0
	beq	.Lb9c94
	mov	r2, #1
	mov	r9, r2
.Lb9c94:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lb9cb6
	b	.Lb9cec
.Lb9c9c:
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb9cae
	bl	Func_bb65c
	mov	r0, #3
	bl	Func_30f8
.Lb9cae:
	mov	r0, #0
	mov	r1, #0
	bl	Func_c10e8
.Lb9cb6:
	bl	Func_b7e7c
	ldr	r3, =0x654
	add	r0, r6, r3
	bl	Func_bfba4
	bl	Func_b6c90
	mov	r5, sp
	mov	r0, #3
	mov	r1, r5
	bl	Func_b6c08
	cmp	r0, #0
	ble	.Lb9ce6
	mov	r6, r5
	mov	r5, r0
.Lb9cd8:
	ldrh	r0, [r6]
	sub	r5, #1
	add	r6, #2
	bl	Func_b8000
	cmp	r5, #0
	bne	.Lb9cd8
.Lb9ce6:
	mov	r3, #0xff
	mov	r2, r8
	strh	r3, [r2]
.Lb9cec:
	ldr	r3, =iwram_1e74
	mov	r2, #0xc9
	ldr	r3, [r3]
	lsl	r2, #3
	add	r3, r2
	mov	r0, #2
	ldrh	r1, [r3]
	mov	r2, #0
	bl	Func_c0774
	mov	r0, r9
.Lb9d02:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9b30

.thumb_func_start Func_b9d34
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r4, #0
	str	r4, [r1, #0x1c]
	mov	r6, r0
	ldr	r2, [r6, #0x58]
	ldr	r3, =0xfff
	and	r3, r2
	str	r3, [r1]
	mov	r3, #0xc0
	lsl	r3, #6
	and	r2, r3
	lsr	r2, #12
	str	r2, [r1, #0x18]
	ldrb	r3, [r6]
	str	r3, [r1, #8]
	mov	r3, #1
	ldrsb	r3, [r6, r3]
	sub	sp, #8
	mov	r8, r4
	cmp	r4, r3
	bge	.Lb9da0
	mov	r7, r1
	add	r5, r6, #2
	add	r7, #0x24
.Lb9d68:
	ldrb	r0, [r5]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r3, #0
	bne	.Lb9d8a
	ldr	r3, [r6, #0x58]
	mov	r2, #0x80
	lsl	r2, #9
	and	r3, r2
	cmp	r3, #0
	beq	.Lb9d92
.Lb9d8a:
	ldrb	r3, [r5]
	add	r4, #1
	strh	r3, [r7]
	add	r7, #2
.Lb9d92:
	mov	r3, #1
	add	r8, r3
	mov	r3, #1
	ldrsb	r3, [r6, r3]
	add	r5, #1
	cmp	r8, r3
	blt	.Lb9d68
.Lb9da0:
	cmp	r4, #0
	bne	.Lb9daa
	ldrb	r3, [r6, #2]
	strh	r3, [r1, #0x24]
	mov	r4, #1
.Lb9daa:
	ldrb	r3, [r6, #2]
	str	r3, [r1, #0xc]
	mov	r3, #1
	str	r4, [r1, #0x14]
	str	r3, [r1, #0x10]
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9d34

.thumb_func_start Func_b9dc4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f00
	ldr	r1, [r3]
	sub	r3, #0x8c
	ldr	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #6
	str	r3, [r1]
	mov	r3, #1
	str	r3, [r1, #0x10]
	mov	r5, r0
	mov	r8, r1
	mov	r0, #0
	mov	r1, #0
	sub	sp, #0x20
	bl	Func_c10e8
	ldrb	r3, [r5]
	mov	r7, #0
	cmp	r3, #7
	bhi	.Lb9e64
	mov	r3, r6
	add	r3, #0x45
	ldrb	r3, [r3]
	mov	r2, r7
	cmp	r3, #2
	beq	.Lb9e00
	mov	r2, #1
.Lb9e00:
	cmp	r2, #0
	bne	.Lb9e10
	ldr	r0, =0x847
	bl	_Func_175a0
	bl	Func_bb65c
	b	.Lb9ea0
.Lb9e10:
	add	r7, sp, #4
	mov	r0, #1
	mov	r1, r7
	bl	Func_b6b40
	mov	r2, #1
	sub	r6, r0, #1
	neg	r2, r2
	cmp	r6, r2
	beq	.Lb9e5a
	lsl	r5, r6, #1
.Lb9e26:
	ldrsh	r0, [r7, r5]
	bl	_Func_77394
	ldr	r1, =0x13b
	mov	r2, r0
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9e4e
	add	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9e4e
	ldrsh	r0, [r5, r7]
	bl	Func_b8064
	mov	r0, #8
	bl	Func_30f8
.Lb9e4e:
	mov	r3, #1
	sub	r6, #1
	neg	r3, r3
	sub	r5, #2
	cmp	r6, r3
	bne	.Lb9e26
.Lb9e5a:
	mov	r0, #0x16
	bl	Func_30f8
	mov	r7, #1
	b	.Lb9ea0
.Lb9e64:
	bl	Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	cmp	r3, #6
	bhi	.Lb9e96
	ldrb	r0, [r5]
	mov	r2, sp
	mov	r3, #0xff
	strh	r0, [r2]
	strh	r3, [r2, #2]
	bl	Func_b8064
	mov	r0, #8
	bl	Func_30f8
	ldrb	r0, [r5]
	bl	Func_bac6c
	ldrb	r0, [r5]
	bl	Func_b7e60
	b	.Lb9ea0
.Lb9e96:
	ldr	r0, =0x847
	bl	_Func_175a0
	bl	Func_bb65c
.Lb9ea0:
	mov	r3, #0
	mov	r1, r8
	mov	r0, r7
	str	r3, [r1, #0x10]
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9dc4

.thumb_func_start Func_b9ec0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x7c
	add	r7, sp, #0xc
	str	r1, [sp, #8]
	mov	r1, r7
	mov	r9, r0
	ldr	r5, =iwram_1e74
	bl	Func_b9d34
	mov	r0, r9
	ldrb	r0, [r0]
	str	r0, [sp, #4]
	mov	r1, r9
	ldrb	r1, [r1, #2]
	str	r1, [sp]
	mov	r2, r9
	ldr	r3, [r2, #0x58]
	mov	r2, #0x80
	lsl	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lb9f18
	mov	r3, r5
	add	r3, #0x8c
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #6
	cmp	r0, #7
	bls	.Lb9f0a
	mov	r3, #0xa0
	lsl	r3, #7
.Lb9f0a:
	str	r3, [r2]
	mov	r3, #0x3c
	str	r3, [r2, #4]
	b	.Lb9f32

	.pool_aligned

.Lb9f18:
	mov	r3, r5
	add	r3, #0x8c
	ldr	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, =0xffffe000
	cmp	r3, #7
	bhi	.Lb9f2a
	mov	r2, #0x80
	lsl	r2, #6
.Lb9f2a:
	ldr	r3, [r1]
	cmp	r3, r2
	beq	.Lb9f32
	str	r2, [r1]
.Lb9f32:
	mov	r1, #0
	mov	r0, #0
	bl	Func_c10e8
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_1f200
	ldr	r0, [sp, #4]
	bl	Func_b7dd0
	ldr	r0, [r0]
	mov	r11, r0
	add	r0, sp, #0x60
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lb9f74	@ 0x3f40
	mov	r10, r0
	strh	r3, [r2]
	mov	r0, #3
	mov	r1, r10
	bl	Func_b6c08
	mov	r6, #0
	mov	r8, r0
	cmp	r0, #0
	beq	.Lb9fc2
	mov	r5, #0
	b	.Lb9f84

	.align	2, 0
.Lb9f74:
	.word	0x3f40
	.pool

.Lb9f84:
	mov	r1, r10
	ldrh	r3, [r5, r1]
	cmp	r3, #0xfe
	beq	.Lb9fba
	ldr	r2, [sp, #4]
	mov	r0, r3
	cmp	r0, r2
	beq	.Lb9fb2
	ldr	r3, [sp]
	mov	r2, #0
	cmp	r3, #7
	bhi	.Lb9f9e
	mov	r2, #1
.Lb9f9e:
	mov	r3, #0
	cmp	r0, #7
	bhi	.Lb9fa6
	mov	r3, #1
.Lb9fa6:
	cmp	r2, r3
	beq	.Lb9fba
	mov	r1, #1
	bl	Func_c0f98
	b	.Lb9fba
.Lb9fb2:
	mov	r0, r11
	mov	r1, #3
	bl	_Func_c300
.Lb9fba:
	add	r6, #1
	add	r5, #2
	cmp	r6, r8
	bne	.Lb9f84
.Lb9fc2:
	mov	r0, #0x9a
	bl	_Func_f9080
	mov	r2, r9
	ldr	r1, [r2, #0x50]
	mov	r3, #0
	ldr	r0, [r7, #8]
	mov	r2, #0
	bl	Func_c1798
	ldr	r0, [sp, #8]
	mov	r3, #1
	and	r3, r0
	cmp	r3, #0
	beq	.Lb9fe8
	ldr	r0, [sp, #4]
	mov	r1, #1
	bl	Func_c0f98
.Lb9fe8:
	ldr	r1, =0x10
	ldr	r5, =0x1000
	mov	r6, #0
	mov	r11, r1
.Lb9ff0:
	mov	r2, r11
	sub	r3, r2, r6
	ldr	r0, =REG_BLDALPHA
	orr	r3, r5
	strh	r3, [r0]
	add	r6, #1
	mov	r0, #1
	bl	Func_30f8
	cmp	r6, #0x10
	bne	.Lb9ff0
	mov	r1, r9
	ldr	r3, [r1, #0x5c]
	cmp	r3, #0
	beq	.Lba044
	cmp	r3, #1
	bne	.Lba032
	b	.Lba020

	.pool_aligned

.Lba020:
	ldrb	r1, [r1]
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x856
	mov	r0, #4
	bl	Func_bbabc
	b	.Lba03a
.Lba032:
	ldr	r1, =0x855
	mov	r0, #4
	bl	Func_bbabc
.Lba03a:
	bl	Func_bb938
	bl	Func_c1a14
	b	.Lba1ba
.Lba044:
	mov	r6, #0
	mov	r2, #0
	cmp	r6, r8
	bcs	.Lba09e
	ldr	r0, [sp, #8]
	mov	r3, #1
	and	r0, r3
	mov	r12, r0
	mov	r5, r10
	mov	r1, r10
.Lba058:
	ldrh	r3, [r5]
	ldr	r0, [sp, #4]
	add	r5, #2
	cmp	r3, r0
	bne	.Lba07c
	mov	r3, r12
	cmp	r3, #0
	bne	.Lba098
	add	r0, sp, #4
	ldrh	r0, [r0]
	add	r2, #1
	strh	r0, [r1]
	b	.Lba096

	.pool_aligned

.Lba07c:
	ldr	r0, [sp]
	mov	r4, #0
	cmp	r0, #7
	bls	.Lba086
	mov	r4, #1
.Lba086:
	mov	r0, #0
	cmp	r3, #7
	bhi	.Lba08e
	mov	r0, #1
.Lba08e:
	cmp	r4, r0
	beq	.Lba098
	strh	r3, [r1]
	add	r2, #1
.Lba096:
	add	r1, #2
.Lba098:
	add	r6, #1
	cmp	r6, r8
	bcc	.Lba058
.Lba09e:
	ldr	r3, =0xff
	lsl	r2, #1
	mov	r1, r10
	strh	r3, [r1, r2]
	mov	r0, r10
	mov	r1, #0
	bl	Func_b7b6c
	mov	r2, r9
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	mov	r0, #0
	cmp	r0, r3
	bge	.Lba0d8
	mov	r12, r3
	mov	r1, r10
	add	r2, #2
	mov	r0, r12
	b	.Lba0c8

	.pool_aligned

.Lba0c8:
	ldrb	r3, [r2]
	sub	r0, #1
	strh	r3, [r1]
	add	r2, #1
	add	r1, #2
	cmp	r0, #0
	bne	.Lba0c8
	mov	r0, r12
.Lba0d8:
	ldr	r2, =0xff
	lsl	r3, r0, #1
	mov	r0, r10
	strh	r2, [r0, r3]
	ldr	r3, [r7, #0x14]
	mov	r6, #0
	mov	r2, r7
	cmp	r3, #0
	beq	.Lba138
	mov	r5, #0
	b	.Lba0f4

	.pool_aligned

.Lba0f4:
	lsl	r3, r6, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	Func_b7dd0
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_b7f70
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r1, #0
	cmp	r3, #0
	beq	.Lba12c
	mov	r12, r3
	add	r3, r5, r7
	mov	r2, r3
	add	r2, #0x34
	add	r0, #0x28
.Lba11e:
	ldmia	r0!, {r3}
	ldrb	r3, [r3, #5]
	add	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, r12
	bne	.Lba11e
.Lba12c:
	ldr	r3, [r7, #0x14]
	add	r6, #1
	add	r5, #4
	mov	r2, r7
	cmp	r6, r3
	bne	.Lba0f4
.Lba138:
	mov	r3, r9
	ldr	r2, [r3, #0x58]
	mov	r3, #0x80
	lsl	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.Lba152
	ldr	r0, [sp]
	cmp	r0, #7
	bls	.Lba15a
	mov	r3, #0
	str	r3, [r7, #4]
	b	.Lba162
.Lba152:
	mov	r1, r9
	ldrb	r3, [r1, #2]
	cmp	r3, #7
	bhi	.Lba160
.Lba15a:
	mov	r3, #1
	str	r3, [r7, #4]
	b	.Lba162
.Lba160:
	str	r2, [r7, #4]
.Lba162:
	mov	r2, r9
	ldr	r3, [r2, #0x58]
	mov	r2, #0x80
	lsl	r2, #10
	and	r3, r2
	cmp	r3, #0
	beq	.Lba178
	ldr	r3, [r7, #4]
	mov	r2, #1
	eor	r3, r2
	str	r3, [r7, #4]
.Lba178:
	mov	r1, #0xc8
	ldr	r0, =Func_bd898
	lsl	r1, #4
	bl	Func_41d8
	mov	r3, r9
	ldr	r0, [r3, #0x58]
	mov	r3, #0x80
	lsl	r3, #8
	and	r3, r0
	cmp	r3, #0
	beq	.Lba198
	mov	r0, r7
	bl	_Func_d6578
	b	.Lba1b6
.Lba198:
	mov	r3, #0x80
	lsl	r3, #7
	and	r3, r0
	cmp	r3, #0
	beq	.Lba1b0
	mov	r0, r7
	bl	_Func_e3a3c
	b	.Lba1b6

	.pool_aligned

.Lba1b0:
	mov	r0, r7
	bl	_Func_d6660
.Lba1b6:
	bl	Func_be02c
.Lba1ba:
	bl	Func_b6c90
	mov	r0, #3
	mov	r1, r10
	bl	Func_b6c08
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lba1f4	@ 0x3f40
	mov	r8, r0
	strh	r3, [r2]
	mov	r6, #0
	cmp	r0, #0
	beq	.Lba216
	mov	r5, #0
.Lba1d6:
	mov	r0, r10
	ldrh	r3, [r5, r0]
	cmp	r3, #0xfe
	beq	.Lba20e
	ldr	r1, [sp, #4]
	mov	r0, r3
	cmp	r0, r1
	beq	.Lba20e
	ldr	r3, [sp]
	mov	r2, #0
	cmp	r3, #7
	bhi	.Lba1fc
	mov	r2, #1
	b	.Lba1fc

	.align	2, 0
.Lba1f4:
	.word	0x3f40
	.pool

.Lba1fc:
	mov	r3, #0
	cmp	r0, #7
	bhi	.Lba204
	mov	r3, #1
.Lba204:
	cmp	r2, r3
	beq	.Lba20e
	mov	r1, #1
	bl	Func_c0f98
.Lba20e:
	add	r6, #1
	add	r5, #2
	cmp	r6, r8
	bne	.Lba1d6
.Lba216:
	ldr	r7, =REG_BLDALPHA
	ldr	r5, .Lba23c	@ 0x1000
	mov	r6, #0
.Lba21c:
	mov	r3, r6
	orr	r3, r5
	strh	r3, [r7]
	mov	r0, #1
	add	r6, #1
	bl	Func_30f8
	cmp	r6, #0x10
	bne	.Lba21c
	mov	r0, r8
	mov	r6, #0
	cmp	r0, #0
	beq	.Lba254
	mov	r5, r10
	b	.Lba244

	.align	2, 0
.Lba23c:
	.word	0x1000
	.pool

.Lba244:
	ldrh	r0, [r5]
	mov	r1, #0
	add	r6, #1
	add	r5, #2
	bl	Func_c0f98
	cmp	r6, r8
	bne	.Lba244
.Lba254:
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	mov	r0, #0
	bl	Func_c0cec
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0
	add	sp, #0x7c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9ec0

.thumb_func_start Func_ba27c
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r1, #0
	mov	r0, #0
	bl	Func_c10e8
	mov	r3, #1
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lba296
	bl	Func_bb65c
	b	.Lba2b2
.Lba296:
	mov	r5, #0
	cmp	r5, r3
	bge	.Lba2b2
.Lba29c:
	mov	r1, r5
	mov	r0, r6
	bl	Func_bbb0c
	bl	Func_bb938
	mov	r3, #1
	ldrsb	r3, [r6, r3]
	add	r5, #1
	cmp	r5, r3
	blt	.Lba29c
.Lba2b2:
	mov	r0, #1
	bl	Func_30f8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_ba27c

.thumb_func_start Func_ba2c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x6c
	str	r0, [sp, #0xc]
	ldr	r3, =iwram_1f00
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	str	r3, [sp, #4]
	ldrb	r0, [r1]
	bl	Func_b7dd0
	ldr	r3, [r0]
	ldr	r1, [r3, #0x10]
	ldr	r0, [r3, #8]
	bl	Func_44d0
	ldr	r3, =0xffffe000
	lsl	r0, #16
	ldr	r1, [sp, #0xc]
	lsr	r0, #16
	add	r2, r0, r3
	ldrb	r3, [r1]
	cmp	r3, #7
	bls	.Lba300
	mov	r3, #0xc0
	lsl	r3, #7
	add	r2, r0, r3
.Lba300:
	ldr	r3, =0x7fff
	ldr	r1, =0xffffe000
	and	r2, r3
	add	r3, r2, r1
	lsr	r2, r3, #31
	add	r3, r2
	mov	r1, #0x80
	asr	r3, #1
	lsl	r1, #6
	add	r2, r3, r1
	ldr	r1, [sp, #4]
	ldr	r3, [r1]
	cmp	r3, r2
	bne	.Lba326
	str	r2, [r1]
	mov	r0, #5
	bl	Func_30f8
	b	.Lba330
.Lba326:
	ldr	r3, [sp, #4]
	mov	r0, #0xa
	str	r2, [r3]
	bl	Func_30f8
.Lba330:
	mov	r0, #0
	mov	r1, #0
	bl	Func_c10e8
	add	r7, sp, #0x18
	ldr	r0, [sp, #0xc]
	mov	r1, r7
	bl	Func_b9d34
	ldr	r3, [r7]
	cmp	r3, #0x87
	bne	.Lba35a
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_1f200
.Lba35a:
	ldr	r0, [r7, #8]
	bl	_Func_77394
	mov	r5, r0
	mov	r1, #0x24
	ldrsh	r0, [r7, r1]
	bl	_Func_77394
	ldr	r3, [sp, #0xc]
	add	r3, #0x2c
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r2, [sp, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0x1e
	ldrsb	r3, [r2, r3]
	mov	r6, #0
	cmp	r3, #0
	bne	.Lba384
	mov	r6, #1
.Lba384:
	ldr	r3, [sp, #0xc]
	ldrb	r0, [r3]
	bl	Func_b7dd0
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_b7f70
	ldr	r3, [r0, #0x28]
	mov	r2, #1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #2
	bl	_Func_be20
	mov	r2, #0x94
	lsl	r2, #1
	add	r3, r5, r2
	mov	r9, r0
	ldrb	r0, [r3]
	bl	Func_c2410
	mov	r3, r0
	lsl	r3, #16
	mov	r2, #0x24
	ldrsh	r1, [r7, r2]
	ldr	r0, [r7, #8]
	mov	r2, r9
	bl	Func_b82c4
	ldr	r0, [r7, #8]
	bl	Func_b7dd0
	mov	r1, #0x10
	ldr	r0, [r0]
	bl	_Func_c344
	mov	r3, #0x24
	ldrsh	r0, [r7, r3]
	bl	Func_b7dd0
	ldrh	r3, [r7, #0x24]
	cmp	r3, #7
	bhi	.Lba3f0
	mov	r3, #1
	b	.Lba3f2

	.pool_aligned

.Lba3f0:
	mov	r3, #0
.Lba3f2:
	str	r3, [r7, #4]
	ldr	r1, .Lba424	@ 0xf0
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lba428	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lba42c	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lba430	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r3, [r1]
	ldr	r2, .Lba434	@ 0x6000
	orr	r3, r2
	strh	r3, [r1]
	b	.Lba440

	.align	2, 0
.Lba424:
	.word	0xf0
.Lba428:
	.word	0x1088
.Lba42c:
	.word	0x3537
.Lba430:
	.word	0x3f21
.Lba434:
	.word	0x6000
	.pool

.Lba440:
	cmp	r6, #0
	beq	.Lba484
	mov	r0, #0xa
	bl	Func_30f8
	mov	r1, #0x24
	ldrsh	r0, [r7, r1]
	bl	Func_b8178
	mov	r0, #2
	bl	Func_30f8
	mov	r0, #4
	bl	Func_30f8
	mov	r0, #0xa
	bl	Func_30f8
	ldr	r2, [sp, #0xc]
	mov	r0, #0
	ldrb	r1, [r2, #2]
	bl	Func_bbabc
	ldr	r1, =0x853
	mov	r0, #4
	bl	Func_bbabc
	bl	Func_bb938
	mov	r3, #0x24
	ldrsh	r0, [r7, r3]
	bl	Func_b8000
	b	.Lba562
.Lba484:
	mov	r1, #0
	str	r1, [sp]
	str	r1, [r7, #0x1c]
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2, #0x58]
	cmp	r3, #0
	beq	.Lba496
	mov	r3, #1
	str	r3, [r7, #0x1c]
.Lba496:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.Lba4be
	ldr	r3, [r7]
	add	r3, #0xc8
	str	r3, [r7]
	ldr	r2, [sp, #4]
	mov	r1, #1
	str	r1, [sp]
	str	r1, [r2, #0x14]
	ldr	r3, [r7, #8]
	add	r0, sp, #0x10
	strh	r3, [r0]
	ldr	r3, [r7, #0xc]
	strh	r3, [r0, #2]
	mov	r3, #0xff
	strh	r3, [r0, #4]
	mov	r1, #0
	bl	Func_b7b6c
.Lba4be:
	mov	r3, #8
	neg	r3, r3
	add	r9, r3
	mov	r1, r9
	cmp	r1, #0
	bgt	.Lba4ce
	mov	r2, #1
	mov	r9, r2
.Lba4ce:
	mov	r3, #0
	mov	r1, r9
	mov	r11, r3
	cmp	r1, #0
	beq	.Lba50e
	mov	r8, r7
	mov	r10, r3
.Lba4dc:
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.Lba4fc
	mov	r3, r8
	mov	r1, r9
	mov	r0, r10
	ldr	r5, [r3, #8]
	ldr	r6, [r3, #0xc]
	bl	Func_af0_from_thumb
	mov	r2, r0
	add	r2, #0x64
	mov	r0, r5
	mov	r1, r6
	bl	Func_c0df4
.Lba4fc:
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	mov	r1, #0x1e
	add	r11, r2
	add	r10, r1
	cmp	r11, r9
	bne	.Lba4dc
.Lba50e:
	mov	r1, #0xc8
	ldr	r0, =Func_bd898
	lsl	r1, #4
	bl	Func_41d8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.Lba53a
	ldr	r1, [sp, #0xc]
	mov	r2, #0x80
	ldr	r3, [r1, #0x58]
	lsl	r2, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lba534
	mov	r0, r7
	bl	_Func_e3a3c
	b	.Lba53a
.Lba534:
	mov	r0, r7
	bl	_Func_d6660
.Lba53a:
	bl	Func_be02c
	ldr	r2, [sp, #8]
	cmp	r2, #0
	beq	.Lba55a
	ldr	r1, [sp, #4]
	mov	r3, #0
	str	r3, [r1, #0x14]
	bl	Func_b6cb0
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	Func_c0cec
.Lba55a:
	mov	r2, #0x24
	ldrsh	r0, [r7, r2]
	bl	Func_b8000
.Lba562:
	ldr	r0, [r7, #8]
	bl	Func_b8000
	mov	r0, #0
	add	sp, #0x6c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ba2c0

.thumb_func_start Func_ba584
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f00
	mov	r6, r0
	ldrb	r0, [r6]
	sub	sp, #0x54
	mov	r8, r1
	ldr	r5, [r3]
	bl	Func_b7dd0
	ldr	r3, [r0]
	ldr	r1, [r3, #0x10]
	ldr	r0, [r3, #8]
	bl	Func_44d0
	ldr	r1, =0xffffe000
	lsl	r0, #16
	ldrb	r3, [r6]
	lsr	r0, #16
	add	r2, r0, r1
	cmp	r3, #7
	bls	.Lba5b8
	mov	r3, #0xc0
	lsl	r3, #7
	add	r2, r0, r3
.Lba5b8:
	ldr	r3, =0x7fff
	ldr	r1, =0xffffe000
	and	r2, r3
	add	r3, r2, r1
	lsr	r2, r3, #31
	add	r3, r2
	mov	r1, #0x80
	asr	r3, #1
	lsl	r1, #6
	add	r2, r3, r1
	ldr	r3, [r5]
	cmp	r3, r2
	bne	.Lba5dc
	str	r2, [r5]
	mov	r0, #5
	bl	Func_30f8
	b	.Lba5e4
.Lba5dc:
	str	r2, [r5]
	mov	r0, #0x14
	bl	Func_30f8
.Lba5e4:
	mov	r0, #0
	mov	r1, #0
	bl	Func_c10e8
	mov	r5, sp
	mov	r1, r5
	mov	r0, r6
	bl	Func_b9d34
	ldr	r0, [r5, #8]
	bl	_Func_77394
	ldrb	r0, [r6, #2]
	bl	_Func_77394
	mov	r7, #2
	mov	r2, r8
	ldrb	r0, [r6]
	and	r7, r2
	bl	Func_b7dd0
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_b7f70
	ldr	r3, [r0, #0x28]
	mov	r2, #1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #2
	bl	_Func_be20
	mov	r3, #0
	mov	r2, r0
	ldrb	r1, [r6, #2]
	ldr	r0, [r5, #8]
	bl	Func_b82c4
	ldr	r0, [r5, #8]
	bl	Func_b7dd0
	mov	r1, #0x10
	ldr	r0, [r0]
	bl	_Func_c344
	ldrb	r0, [r6, #2]
	bl	Func_b7dd0
	ldrb	r3, [r6, #2]
	cmp	r3, #7
	bhi	.Lba64e
	mov	r3, #1
	b	.Lba650
.Lba64e:
	mov	r3, #0
.Lba650:
	str	r3, [r5, #4]
	cmp	r7, #0
	beq	.Lba67c
	mov	r0, #0xa
	bl	Func_30f8
	ldrb	r0, [r6, #2]
	bl	Func_b8178
	mov	r0, #2
	bl	Func_30f8
	mov	r0, #4
	bl	Func_30f8
	mov	r0, #0xa
	bl	Func_30f8
	ldrb	r0, [r6, #2]
	bl	Func_b8000
	b	.Lba68c
.Lba67c:
	mov	r0, r5
	bl	_Func_e3a3c
	bl	Func_bb938
	ldrb	r0, [r6, #2]
	bl	Func_b8000
.Lba68c:
	ldr	r0, [r5, #8]
	bl	Func_b8000
	mov	r0, #0
	add	sp, #0x54
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ba584

.thumb_func_start Func_ba6ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1f00
	ldr	r1, [r3]
	ldrb	r3, [r0]
	mov	r8, r2
	sub	sp, #0x58
	mov	r10, r0
	ldr	r2, =0xffffe000
	cmp	r3, #4
	bhi	.Lba6cc
	mov	r2, #0x80
	lsl	r2, #6
.Lba6cc:
	ldr	r3, [r1]
	cmp	r3, r2
	beq	.Lba6d4
	str	r2, [r1]
.Lba6d4:
	add	r5, sp, #4
	mov	r1, r5
	mov	r0, r10
	bl	Func_b9d34
	mov	r1, #0
	mov	r0, #0
	bl	Func_c10e8
	ldr	r0, [r5, #8]
	bl	Func_b7dd0
	ldr	r0, [r0]
	mov	r1, #3
	mov	r9, r0
	bl	_Func_c300
	mov	r1, #0x10
	mov	r0, r9
	bl	_Func_c344
	mov	r1, r10
	ldrb	r3, [r1, #2]
	cmp	r3, #7
	bhi	.Lba70a
	mov	r3, #1
	b	.Lba70c
.Lba70a:
	mov	r3, #0
.Lba70c:
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x14]
	mov	r7, #0
	mov	r2, r5
	cmp	r3, #0
	beq	.Lba75e
	mov	r6, #0
.Lba71a:
	lsl	r3, r7, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	Func_b7dd0
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_b7f70
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r1, #0
	cmp	r3, #0
	beq	.Lba752
	mov	r12, r3
	add	r3, r6, r5
	mov	r2, r3
	add	r2, #0x34
	add	r0, #0x28
.Lba744:
	ldmia	r0!, {r3}
	ldrb	r3, [r3, #5]
	add	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, r12
	bne	.Lba744
.Lba752:
	ldr	r3, [r5, #0x14]
	add	r7, #1
	add	r6, #4
	mov	r2, r5
	cmp	r7, r3
	bne	.Lba71a
.Lba75e:
	mov	r1, #0xc8
	ldr	r0, =Func_bd898
	lsl	r1, #4
	bl	Func_41d8
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lba7c0
	mov	r7, #0
	mov	r6, #0
.Lba772:
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	cmp	r7, #0x13
	bgt	.Lba792
	ldr	r2, =0x544
	ldr	r1, =0x644
	add	r0, r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r1
	sub	r2, r6
	str	r2, [r3]
	ldr	r1, =0x50000c0
	mov	r3, #0x80
	bl	Func_c1724
.Lba792:
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =0x444
	add	r7, #1
	add	r6, r2
	cmp	r7, #0x13
	ble	.Lba772
	mov	r6, r10
	ldr	r3, [r6, #0x58]
	mov	r2, #0x80
	lsl	r2, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lba7b8
	mov	r0, r5
	bl	_Func_e3a3c
	b	.Lba7c6
.Lba7b8:
	mov	r0, r5
	bl	_Func_d6660
	b	.Lba7c6
.Lba7c0:
	mov	r0, #0x3c
	bl	Func_30f8
.Lba7c6:
	bl	Func_be02c
	mov	r6, r5
	mov	r0, r9
	mov	r1, #1
	bl	_Func_c300
	ldr	r3, [r6, #0x14]
	mov	r7, #0
	cmp	r3, #0
	beq	.Lba7f4
	mov	r2, #0x24
.Lba7de:
	ldrsh	r0, [r6, r2]
	str	r2, [sp]
	bl	Func_b8000
	mov	r5, r6
	ldr	r2, [sp]
	ldr	r3, [r5, #0x14]
	add	r7, #1
	add	r2, #2
	cmp	r7, r3
	bne	.Lba7de
.Lba7f4:
	mov	r3, r8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_77394
	mov	r1, r8
	mov	r7, #8
	ldrsh	r3, [r1, r7]
	lsl	r3, #1
	add	r3, #0xd8
	mov	r6, r0
	ldrh	r5, [r6, r3]
	mov	r0, r5
	bl	_Func_78414
	ldrb	r2, [r0, #0xc]
	mov	r3, r2
	cmp	r3, #1
	bne	.Lba87e
	mov	r3, r8
	mov	r6, #8
	ldrsh	r1, [r3, r6]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_788c4
	mov	r1, r8
	mov	r7, #8
	ldrsh	r5, [r1, r7]
	cmp	r0, #2
	bne	.Lba8da
	ldr	r3, =iwram_1e74
	ldr	r0, [r3]
	mov	r4, #0
.Lba838:
	mov	r2, #0xbc
	lsl	r1, r4, #4
	lsl	r2, #2
	add	r3, r1, r2
	add	r3, r0, r3
	mov	r6, #2
	ldrsh	r3, [r3, r6]
	cmp	r3, #2
	bne	.Lba876
	mov	r7, #0xbb
	lsl	r7, #2
	add	r3, r1, r7
	ldrsh	r2, [r0, r3]
	mov	r6, r8
	mov	r7, #0
	ldrsh	r3, [r6, r7]
	cmp	r2, r3
	bne	.Lba876
	mov	r7, #0xbd
	lsl	r7, #2
	add	r1, r7
	ldrsh	r2, [r0, r1]
	ldrh	r3, [r0, r1]
	cmp	r2, r5
	bne	.Lba86e
	ldr	r3, =0xffff
	b	.Lba874
.Lba86e:
	cmp	r2, r5
	ble	.Lba876
	sub	r3, #1
.Lba874:
	strh	r3, [r0, r1]
.Lba876:
	add	r4, #1
	cmp	r4, #0x13
	bls	.Lba838
	b	.Lba8da
.Lba87e:
	lsl	r3, r2, #24
	lsr	r3, #24
	cmp	r3, #2
	bne	.Lba8c0
	bl	_Func_79bc4
	mov	r3, #7
	and	r0, r3
	cmp	r0, #0
	bne	.Lba8da
	mov	r1, r8
	mov	r7, #8
	ldrsh	r3, [r1, r7]
	lsl	r3, #1
	add	r3, #0xd8
	ldrh	r1, [r6, r3]
	mov	r0, #2
	bl	Func_bbabc
	ldr	r1, =0x81c
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, r8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r6, #8
	ldrsh	r1, [r3, r6]
	bl	_Func_78a34
	bl	Func_bb938
	b	.Lba8da
.Lba8c0:
	cmp	r3, #4
	bne	.Lba8da
	ldr	r3, =0x1ff
	and	r3, r5
	cmp	r3, #0xb8
	bne	.Lba8ce
	mov	r5, #0xb9
.Lba8ce:
	mov	r1, r8
	mov	r7, #8
	ldrsh	r3, [r1, r7]
	lsl	r3, #1
	add	r3, #0xd8
	strh	r5, [r6, r3]
.Lba8da:
	mov	r0, #0
	add	sp, #0x58
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ba6ac

.thumb_func_start Func_ba918
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0xff
	mov	r8, r0
	mov	r7, r1
	mov	r6, #0
	mov	r10, r3
	b	.Lba95e
.Lba92c:
	ldr	r2, [r0, #0x28]
	ldrb	r3, [r2, #0x16]
	mov	r4, r10
	orr	r3, r4
	strb	r3, [r2, #0x16]
	mov	r3, r0
	add	r3, #0x27
	mov	r1, r0
	ldrb	r0, [r3]
	add	r1, #0x2c
	strb	r7, [r2, #5]
	cmp	r0, #1
	ble	.Lba95c
	mov	r5, #0
	mov	r4, #0xff
	sub	r0, #1
.Lba94c:
	ldmia	r1!, {r2}
	ldrb	r3, [r2, #0x16]
	sub	r0, #1
	orr	r3, r4
	strb	r5, [r2, #5]
	strb	r3, [r2, #0x16]
	cmp	r0, #0
	bne	.Lba94c
.Lba95c:
	add	r6, #1
.Lba95e:
	mov	r0, r8
	mov	r1, r6
	bl	Func_b7f70
	cmp	r0, #0
	bne	.Lba92c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ba918

.thumb_func_start Func_ba978
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f00
	mov	r7, r0
	ldr	r5, [r3]
	mov	r2, #0x80
	ldr	r3, [r7, #0x58]
	lsl	r2, #11
	and	r3, r2
	sub	sp, #0x58
	mov	r10, r1
	cmp	r3, #0
	beq	.Lba9aa
	ldrb	r3, [r7]
	ldr	r2, =0xffffe000
	cmp	r3, #7
	bls	.Lba9a2
	mov	r2, #0xa0
	lsl	r2, #7
.Lba9a2:
	mov	r3, #0x3c
	str	r2, [r5]
	str	r3, [r5, #4]
	b	.Lbaa28
.Lba9aa:
	ldrb	r0, [r7]
	bl	Func_b7dd0
	ldr	r3, [r0]
	ldr	r1, [r3, #0x10]
	ldr	r0, [r3, #8]
	bl	Func_44d0
	ldrb	r4, [r7]
	lsl	r0, #16
	ldr	r2, =0xffffe800
	lsr	r0, #16
	mov	r3, r4
	add	r1, r0, r2
	cmp	r3, #7
	bls	.Lba9d0
	mov	r3, #0xc0
	lsl	r3, #5
	add	r1, r0, r3
.Lba9d0:
	lsl	r3, r1, #16
	asr	r1, r3, #16
	mov	r3, r4
	cmp	r3, #7
	bhi	.Lba9e0
	mov	r3, #0x80
	lsl	r3, #6
	b	.Lba9e2
.Lba9e0:
	ldr	r3, =0xffffe000
.Lba9e2:
	sub	r3, r1
	lsl	r2, r3, #1
	add	r2, r3
	cmp	r2, #0
	bge	.Lba9ee
	add	r2, #3
.Lba9ee:
	asr	r3, r2, #2
	add	r1, r3
	ldrb	r3, [r7, #2]
	mov	r2, r4
	cmp	r3, #7
	bhi	.Lbaa08
	mov	r3, #0
	cmp	r2, #7
	bhi	.Lbaa02
	mov	r3, #1
.Lbaa02:
	cmp	r3, #0
	bne	.Lbaa14
	b	.Lbaa20
.Lbaa08:
	mov	r3, #0
	cmp	r2, #7
	bls	.Lbaa10
	mov	r3, #1
.Lbaa10:
	cmp	r3, #0
	beq	.Lbaa20
.Lbaa14:
	mov	r1, #0x90
	mov	r3, r4
	lsl	r1, #6
	cmp	r3, #7
	bls	.Lbaa20
	ldr	r1, =0xffffdc00
.Lbaa20:
	ldr	r3, [r5]
	cmp	r3, r1
	beq	.Lbaa28
	str	r1, [r5]
.Lbaa28:
	ldr	r3, [r7, #0x58]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r2
	cmp	r3, #0
	beq	.Lbaa46
	ldrb	r3, [r7]
	ldr	r2, =0xffffe000
	cmp	r3, #7
	bls	.Lbaa40
	mov	r2, #0x80
	lsl	r2, #6
.Lbaa40:
	mov	r3, #0x3c
	str	r2, [r5]
	str	r3, [r5, #4]
.Lbaa46:
	add	r5, sp, #4
	mov	r0, r7
	mov	r1, r5
	bl	Func_b9d34
	mov	r6, r10
	mov	r3, #1
	and	r6, r3
	cmp	r6, #0
	beq	.Lbaa5c
	str	r3, [r5, #0x1c]
.Lbaa5c:
	mov	r1, #0
	mov	r0, #0
	bl	Func_c10e8
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_1f200
	ldr	r0, [r5, #8]
	bl	Func_b7dd0
	ldr	r0, [r0]
	mov	r1, #3
	mov	r8, r0
	bl	_Func_c300
	mov	r1, #0x10
	mov	r0, r8
	bl	_Func_c344
	mov	r0, #0x9a
	bl	_Func_f9080
	mov	r3, #2
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lbaaac
	ldr	r0, [r5, #8]
	ldr	r1, [r7, #0x50]
	mov	r2, #1
	mov	r3, #0
	bl	Func_c1798
	b	.Lbaabc
.Lbaaac:
	cmp	r6, #0
	bne	.Lbaabc
	ldr	r0, [r5, #8]
	ldr	r1, [r7, #0x50]
	mov	r2, #0
	mov	r3, #0
	bl	Func_c1798
.Lbaabc:
	ldrb	r3, [r7, #2]
	cmp	r3, #7
	bhi	.Lbaac6
	mov	r3, #1
	b	.Lbaac8
.Lbaac6:
	mov	r3, #0
.Lbaac8:
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x14]
	mov	r4, #0
	mov	r2, r5
	cmp	r3, #0
	beq	.Lbab1e
	mov	r6, #0
.Lbaad6:
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	str	r4, [sp]
	bl	Func_b7dd0
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_b7f70
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r1, #0
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbab12
	mov	r12, r3
	add	r3, r6, r5
	mov	r2, r3
	add	r2, #0x34
	add	r0, #0x28
.Lbab04:
	ldmia	r0!, {r3}
	ldrb	r3, [r3, #5]
	add	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, r12
	bne	.Lbab04
.Lbab12:
	ldr	r3, [r5, #0x14]
	add	r4, #1
	add	r6, #4
	mov	r2, r5
	cmp	r4, r3
	bne	.Lbaad6
.Lbab1e:
	ldr	r3, [r7, #0x5c]
	cmp	r3, #0
	beq	.Lbab4c
	cmp	r3, #1
	bne	.Lbab3a
	ldrb	r1, [r7]
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x856
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbab42
.Lbab3a:
	ldr	r1, =0x855
	mov	r0, #4
	bl	Func_bbabc
.Lbab42:
	bl	Func_bb938
	bl	Func_c1a14
	b	.Lbabaa
.Lbab4c:
	mov	r1, #0xc8
	ldr	r0, =Func_bd898
	lsl	r1, #4
	bl	Func_41d8
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lbab78
	ldr	r3, [r7, #0x58]
	mov	r2, #0x80
	lsl	r2, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lbab70
	mov	r0, r5
	bl	_Func_e3a3c
	b	.Lbab7c
.Lbab70:
	mov	r0, r5
	bl	_Func_d6660
	b	.Lbab7c
.Lbab78:
	bl	Func_c1a14
.Lbab7c:
	bl	Func_be02c
	mov	r6, r5
	mov	r0, r8
	mov	r1, #1
	bl	_Func_c300
	ldr	r3, [r6, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lbabaa
	mov	r7, #0x24
.Lbab94:
	ldrsh	r0, [r6, r7]
	str	r4, [sp]
	bl	Func_b8000
	mov	r5, r6
	ldr	r4, [sp]
	ldr	r3, [r5, #0x14]
	add	r4, #1
	add	r7, #2
	cmp	r4, r3
	bne	.Lbab94
.Lbabaa:
	mov	r0, #0
	add	sp, #0x58
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ba978

.thumb_func_start Func_babdc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	sub	sp, #4
	bl	_Func_77394
	mov	r0, r7
	bl	Func_b7dd0
	mov	r1, #5
	ldr	r0, [r0]
	bl	_Func_c300
	mov	r3, #1
	mov	r6, sp
	mov	r8, r3
.Lbabfe:
	mov	r3, #0xff
	mov	r0, r6
	strh	r3, [r6, #2]
	strh	r7, [r6]
	bl	_Func_2281c
	mov	r0, r7
	bl	Func_b7dd0
	mov	r1, #7
	ldr	r0, [r0]
	bl	Func_ba918
	mov	r0, #2
	bl	Func_30f8
	mov	r0, r6
	strh	r7, [r6]
	bl	_Func_2281c
	mov	r0, r7
	bl	Func_b7dd0
	mov	r5, r0
	mov	r0, r7
	bl	Func_b6cd0
	mov	r1, r0
	ldr	r0, [r5]
	bl	Func_ba918
	mov	r0, #2
	bl	Func_30f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r3, r8
	cmp	r3, #0
	bge	.Lbabfe
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_1f200
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_babdc

.thumb_func_start Func_bac6c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e74
	mov	r6, r0
	ldr	r5, [r3]
	bl	_Func_77394
	mov	r3, #0x95
	lsl	r3, #1
	add	r2, r0, r3
	ldr	r1, .Lbac94	@ 0xfe
	mov	r3, #0
	strb	r3, [r2]
	mov	r2, #0x58
	b	.Lbac8a
.Lbac88:
	add	r2, #2
.Lbac8a:
	ldrsh	r3, [r2, r5]
	cmp	r3, r6
	bne	.Lbac9c
	strh	r1, [r2, r5]
	b	.Lbacc4

	.align	2, 0
.Lbac94:
	.word	0xfe
	.pool

.Lbac9c:
	cmp	r3, #0xff
	bne	.Lbac88
	mov	r1, #0
	add	r0, r5, #2
.Lbaca4:
	lsl	r3, r1, #1
	mov	r2, r3
	add	r2, #0x64
	ldrsh	r3, [r0, r2]
	cmp	r3, r6
	bne	.Lbacb6
	ldr	r3, =0xfe
	strh	r3, [r0, r2]
	b	.Lbacc4
.Lbacb6:
	add	r1, #1
	cmp	r3, #0xff
	bne	.Lbaca4
	b	.Lbace2

	.pool_aligned

.Lbacc4:
	mov	r0, r6
	bl	Func_c1ebc
	mov	r2, #0xbb
	mov	r1, #0
	mov	r0, #0xff
	lsl	r2, #2
.Lbacd2:
	ldrsh	r3, [r2, r5]
	cmp	r3, r6
	bne	.Lbacda
	strh	r0, [r2, r5]
.Lbacda:
	add	r1, #1
	add	r2, #0x10
	cmp	r1, #0x13
	bls	.Lbacd2
.Lbace2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_bac6c

.thumb_func_start Func_bace8
	push	{r5, r6, r7, lr}
	sub	sp, #0x10
	mov	r6, r0
	bl	_Func_77394
	mov	r5, #0
	mov	r7, r0
	b	.Lbad14
.Lbacf8:
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lbad0c
	mov	r1, #4
	bl	_Func_ba30
	b	.Lbad12
.Lbad0c:
	mov	r1, #5
	bl	_Func_ba30
.Lbad12:
	add	r5, #1
.Lbad14:
	mov	r0, r6
	bl	Func_b7dd0
	mov	r1, r5
	ldr	r0, [r0]
	bl	Func_b7f70
	cmp	r0, #0
	bne	.Lbacf8
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lbad74
	mov	r5, #0
	mov	r7, sp
	b	.Lbad48
.Lbad38:
	lsl	r3, r5, #2
	ldr	r2, [r0, #0x28]
	str	r0, [r7, r3]
	mov	r3, #6
	strb	r3, [r2, #5]
	mov	r3, #0xff
	strb	r3, [r2, #0x16]
	add	r5, #1
.Lbad48:
	mov	r0, r6
	bl	Func_b7dd0
	mov	r1, r5
	ldr	r0, [r0]
	bl	Func_b7f70
	cmp	r0, #0
	bne	.Lbad38
	mov	r0, #4
	bl	Func_30f8
	mov	r0, r6
	bl	Func_bac6c
	mov	r0, r7
	mov	r1, r5
	bl	_Func_bf34
	mov	r0, r6
	bl	Func_b7e60
.Lbad74:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_bace8

.thumb_func_start Func_bad7c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e74
	sub	sp, #0x10
	mov	r4, #0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lbadd4
	mov	r3, #0x58
	ldrsh	r3, [r1, r3]
	mov	r7, #0
	cmp	r3, #0xff
	beq	.Lbae1c
	mov	r5, r1
	add	r5, #0x58
	add	r6, sp, #4
.Lbad9a:
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	cmp	r0, #0xfe
	beq	.Lbadbe
	str	r4, [sp]
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbadbe
	ldr	r2, .Lbadcc	@ 0x100
	mov	r3, r7
	orr	r3, r2
	strh	r3, [r6]
	add	r4, #1
	add	r6, #2
.Lbadbe:
	add	r5, #2
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	add	r7, #1
	cmp	r3, #0xff
	bne	.Lbad9a
	b	.Lbae1c

	.align	2, 0
.Lbadcc:
	.word	0x100
	.pool

.Lbadd4:
	mov	r3, #0x64
	add	r2, r1, #2
	ldrsh	r3, [r2, r3]
	mov	r7, #0
	cmp	r3, #0xff
	beq	.Lbae1c
	mov	r0, r1
	lsl	r3, r4, #1
	add	r1, sp, #0x10
	add	r3, r1
	add	r0, #0x66
	mov	r1, r3
	ldr	r5, =0x180
	mov	r2, r0
	sub	r1, #0xc
.Lbadf2:
	ldrh	r3, [r2]
	mov	r6, #0xfe
	lsl	r3, #16
	lsl	r6, #16
	add	r2, #2
	cmp	r3, r6
	beq	.Lbae0a
	mov	r3, r7
	orr	r3, r5
	strh	r3, [r1]
	add	r4, #1
	add	r1, #2
.Lbae0a:
	add	r0, #2
	mov	r6, #0
	ldrsh	r3, [r0, r6]
	add	r7, #1
	cmp	r3, #0xff
	bne	.Lbadf2
	b	.Lbae1c

	.pool_aligned

.Lbae1c:
	mov	r0, #0
	cmp	r4, #0
	beq	.Lbae36
	add	r5, sp, #4
	str	r4, [sp]
	bl	Func_4458
	ldr	r4, [sp]
	mov	r3, r4
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	ldrh	r0, [r5, r3]
.Lbae36:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bad7c

.thumb_func_start Func_bae40
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x5c
	str	r0, [sp, #0x1c]
	ldr	r3, =iwram_1e74
	mov	r0, #0
	mov	r7, r1
	ldr	r1, [r3]
	str	r0, [sp, #0x14]
	ldrb	r3, [r7]
	mov	r8, r0
	cmp	r3, #0
	bne	.Lbae66
	b	.Lbaf46
.Lbae66:
	mov	r2, #0
	cmp	r3, #2
	beq	.Lbae70
	cmp	r3, #4
	bne	.Lbae72
.Lbae70:
	mov	r2, #1
.Lbae72:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #7
	bls	.Lbae84
	cmp	r2, #0
	beq	.Lbae88
	b	.Lbaee8

	.pool_aligned

.Lbae84:
	cmp	r2, #0
	beq	.Lbaee8
.Lbae88:
	mov	r4, #0
	str	r4, [sp, #0x18]
	mov	r3, #0x58
	ldrsh	r3, [r1, r3]
	cmp	r3, #0xff
	beq	.Lbaf46
	mov	r0, r8
	lsl	r3, r0, #1
	add	r2, sp, #0x5c
	add	r3, r2
	mov	r4, r8
	mov	r0, r3
	lsl	r3, r4, #2
	add	r3, r2
	mov	r4, r3
	ldr	r5, =0x100
	add	r1, #0x58
	sub	r0, #0xc
	sub	r4, #0x24
.Lbaeae:
	mov	r6, #0
	ldrsh	r2, [r1, r6]
	cmp	r2, #0xfe
	beq	.Lbaed6
	ldrb	r3, [r7]
	cmp	r3, #4
	bne	.Lbaec8
	ldr	r3, [sp, #0x1c]
	cmp	r2, r3
	bne	.Lbaed6
	b	.Lbaec8

	.pool_aligned

.Lbaec8:
	stmia	r4!, {r2}
	ldr	r3, [sp, #0x18]
	mov	r6, #1
	orr	r3, r5
	strh	r3, [r0]
	add	r8, r6
	add	r0, #2
.Lbaed6:
	ldr	r2, [sp, #0x18]
	add	r2, #1
	str	r2, [sp, #0x18]
	add	r1, #2
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	cmp	r3, #0xff
	bne	.Lbaeae
	b	.Lbaf46
.Lbaee8:
	mov	r0, #0
	str	r0, [sp, #0x18]
	add	r2, r1, #2
	mov	r3, #0x64
	ldrsh	r3, [r2, r3]
	mov	r12, r2
	cmp	r3, #0xff
	beq	.Lbaf46
	mov	r4, r8
	lsl	r3, r4, #1
	add	r6, sp, #0x5c
	add	r3, r6
	mov	r1, r3
	lsl	r3, r4, #2
	add	r3, r6
	mov	r4, r3
	ldr	r5, =0x180
	mov	r0, #0x64
	sub	r1, #0xc
	sub	r4, #0x24
.Lbaf10:
	ldrsh	r2, [r2, r0]
	cmp	r2, #0xfe
	beq	.Lbaf36
	ldrb	r3, [r7]
	cmp	r3, #4
	bne	.Lbaf28
	ldr	r6, [sp, #0x1c]
	cmp	r2, r6
	bne	.Lbaf36
	b	.Lbaf28

	.pool_aligned

.Lbaf28:
	stmia	r4!, {r2}
	ldr	r3, [sp, #0x18]
	mov	r2, #1
	orr	r3, r5
	strh	r3, [r1]
	add	r8, r2
	add	r1, #2
.Lbaf36:
	ldr	r3, [sp, #0x18]
	add	r3, #1
	str	r3, [sp, #0x18]
	add	r0, #2
	mov	r2, r12
	ldrsh	r3, [r2, r0]
	cmp	r3, #0xff
	bne	.Lbaf10
.Lbaf46:
	mov	r0, r8
	cmp	r0, #0
	bne	.Lbaf52
	mov	r0, #2
	neg	r0, r0
	b	.Lbb572
.Lbaf52:
	mov	r1, #0
	str	r1, [sp, #0x18]
	cmp	r1, r8
	blt	.Lbaf5c
	b	.Lbb3b6
.Lbaf5c:
	add	r2, sp, #0x38
	mov	r10, r2
.Lbaf60:
	ldr	r3, [sp, #0x18]
	mov	r4, r10
	lsl	r3, #2
	ldr	r0, [r4, r3]
	mov	r9, r3
	bl	_Func_77394
	mov	r5, r0
	ldrb	r0, [r7, #3]
	mov	r6, #0
	cmp	r0, #0x40
	bls	.Lbaf7a
	b	.Lbb142
.Lbaf7a:
	ldr	r2, =.Lbaf84
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbaf84:
	.word	.Lbb304
	.word	.Lbb304
	.word	.Lbb304
	.word	.Lbb132
	.word	.Lbb146
	.word	.Lbb2c8
	.word	.Lbb088
	.word	.Lbb088
	.word	.Lbb0ac
	.word	.Lbb0ac
	.word	.Lbb0c2
	.word	.Lbb0c2
	.word	.Lbb0dc
	.word	.Lbb0dc
	.word	.Lbb0fa
	.word	.Lbb0fa
	.word	.Lbb114
	.word	.Lbb114
	.word	.Lbb290
	.word	.Lbb29c
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb2ac
	.word	.Lbb2b2
	.word	.Lbb142
	.word	.Lbb2ba
	.word	.Lbb142
	.word	.Lbb28a
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb1ac
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb2c8
	.word	.Lbb2c8
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb198
	.word	.Lbb198
	.word	.Lbb142
	.word	.Lbb222
.Lbb088:
	ldr	r1, =0x133
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r3, #1
	cmp	r3, #4
	bgt	.Lbb09a
.Lbb098:
	mov	r6, #1
.Lbb09a:
	mov	r2, #0x99
	lsl	r2, #1
	add	r3, r5, r2
.Lbb0a0:
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lbb0a8
	b	.Lbb304
.Lbb0a8:
	add	r6, #1
	b	.Lbb304
.Lbb0ac:
	ldr	r4, =0x133
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r1, #4
	sub	r3, #1
	neg	r1, r1
	cmp	r3, r1
	blt	.Lbb09a
	b	.Lbb098
.Lbb0c2:
	ldr	r4, =0x135
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r3, #1
	cmp	r3, #4
	bgt	.Lbb0d4
	mov	r6, #1
.Lbb0d4:
	mov	r1, #0x9a
	lsl	r1, #1
	add	r3, r5, r1
	b	.Lbb0a0
.Lbb0dc:
	ldr	r2, =0x135
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r4, #4
	sub	r3, #1
	neg	r4, r4
	cmp	r3, r4
	blt	.Lbb0f2
	mov	r6, #1
.Lbb0f2:
	mov	r1, #0x9a
	lsl	r1, #1
	add	r3, r5, r1
	b	.Lbb0a0
.Lbb0fa:
	ldr	r2, =0x137
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r3, #1
	cmp	r3, #4
	bgt	.Lbb10c
	mov	r6, #1
.Lbb10c:
	mov	r4, #0x9b
	lsl	r4, #1
	add	r3, r5, r4
	b	.Lbb0a0
.Lbb114:
	ldr	r1, =0x137
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #4
	sub	r3, #1
	neg	r2, r2
	cmp	r3, r2
	blt	.Lbb12a
	mov	r6, #1
.Lbb12a:
	mov	r4, #0x9b
	lsl	r4, #1
	add	r3, r5, r4
	b	.Lbb0a0
.Lbb132:
	ldr	r1, =0x131
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.Lbb142
	b	.Lbb304
.Lbb142:
	mov	r6, #1
	b	.Lbb304
.Lbb146:
	mov	r2, #0x9c
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb154
	mov	r6, #1
.Lbb154:
	ldr	r4, =0x139
	add	r3, r5, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb160
	add	r6, #1
.Lbb160:
	mov	r1, #0x9d
	lsl	r1, #1
	add	r3, r5, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb16e
	add	r6, #1
.Lbb16e:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb17c
	add	r6, #1
.Lbb17c:
	ldr	r4, =0x13d
	add	r3, r5, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb188
	add	r6, #1
.Lbb188:
	ldr	r1, =0x141
	add	r3, r5, r1
	ldrb	r3, [r3]
.Lbb18e:
	cmp	r3, #0
	bne	.Lbb194
	b	.Lbb304
.Lbb194:
	add	r6, #1
	b	.Lbb304
.Lbb198:
	mov	r3, #0x38
	ldrsh	r2, [r5, r3]
	mov	r4, #0x34
	ldrsh	r3, [r5, r4]
	ldrh	r1, [r5, #0x38]
	cmp	r2, r3
	blt	.Lbb1a8
	b	.Lbb306
.Lbb1a8:
	mov	r6, #1
	b	.Lbb306
.Lbb1ac:
	ldr	r1, =0x133
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1bc
	mov	r6, #1
.Lbb1bc:
	ldr	r2, =0x135
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1cc
	add	r6, #1
.Lbb1cc:
	ldr	r4, =0x137
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1dc
	add	r6, #1
.Lbb1dc:
	mov	r1, #0x96
	lsl	r1, #1
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1ee
	add	r6, #1
.Lbb1ee:
	ldr	r2, =0x12d
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1fe
	add	r6, #1
.Lbb1fe:
	mov	r4, #0x97
	lsl	r4, #1
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb210
	add	r6, #1
.Lbb210:
	ldr	r1, =0x12f
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb304
	add	r6, #1
	b	.Lbb304
.Lbb222:
	mov	r2, #0x9c
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb230
	mov	r6, #1
.Lbb230:
	ldr	r4, =0x139
	add	r3, r5, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb23c
	add	r6, #1
.Lbb23c:
	mov	r1, #0x9d
	lsl	r1, #1
	add	r3, r5, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb24a
	add	r6, #1
.Lbb24a:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb258
	add	r6, #1
.Lbb258:
	ldr	r4, =0x13d
	add	r3, r5, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb264
	add	r6, #1
.Lbb264:
	ldr	r1, =0x141
	add	r3, r5, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb270
	add	r6, #1
.Lbb270:
	mov	r2, #0xa0
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb27e
	add	r6, #1
.Lbb27e:
	ldr	r4, =0x131
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	b	.Lbb18e
.Lbb28a:
	ldr	r1, =0x141
	add	r3, r5, r1
	b	.Lbb2c0
.Lbb290:
	ldr	r2, =0x131
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	b	.Lbb2c2
.Lbb29c:
	ldr	r4, =0x131
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #1
	bgt	.Lbb304
	b	.Lbb142
.Lbb2ac:
	ldr	r1, =0x13b
	add	r3, r5, r1
	b	.Lbb2c0
.Lbb2b2:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r5, r2
	b	.Lbb2c0
.Lbb2ba:
	mov	r4, #0xa0
	lsl	r4, #1
	add	r3, r5, r4
.Lbb2c0:
	ldrb	r3, [r3]
.Lbb2c2:
	cmp	r3, #0
	bne	.Lbb304
	b	.Lbb142
.Lbb2c8:
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	ldrh	r1, [r5, #0x38]
	cmp	r3, #0
	bne	.Lbb316
	mov	r6, #0x64
	b	.Lbb306

	.pool_aligned

.Lbb304:
	ldrh	r1, [r5, #0x38]
.Lbb306:
	lsl	r3, r1, #16
	cmp	r3, #0
	bne	.Lbb316
	bl	_Func_79ef8
	cmp	r0, #0
	bne	.Lbb316
	mov	r6, #0
.Lbb316:
	cmp	r6, #0
	bne	.Lbb38a
	ldrb	r2, [r7, #1]
	mov	r3, #0xf
	and	r3, r2
	sub	r3, #1
	cmp	r3, #9
	bhi	.Lbb386
	ldr	r2, =.Lbb330
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbb330:
	.word	.Lbb364
	.word	.Lbb376
	.word	.Lbb358
	.word	.Lbb358
	.word	.Lbb376
	.word	.Lbb376
	.word	.Lbb386
	.word	.Lbb376
	.word	.Lbb376
	.word	.Lbb35e
.Lbb358:
	mov	r4, #0x38
	ldrsh	r3, [r5, r4]
	b	.Lbb380
.Lbb35e:
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	b	.Lbb380
.Lbb364:
	mov	r3, #0x38
	ldrsh	r2, [r5, r3]
	cmp	r2, #0
	beq	.Lbb386
	mov	r4, #0x34
	ldrsh	r3, [r5, r4]
	cmp	r2, r3
	bge	.Lbb386
	b	.Lbb384
.Lbb376:
	ldrh	r3, [r7, #0xa]
	cmp	r3, #0
	beq	.Lbb386
	mov	r0, #0x38
	ldrsh	r3, [r5, r0]
.Lbb380:
	cmp	r3, #0
	beq	.Lbb386
.Lbb384:
	add	r6, #1
.Lbb386:
	cmp	r6, #0
	beq	.Lbb3aa
.Lbb38a:
	ldr	r2, [sp, #0x14]
	mov	r4, r10
	mov	r6, r9
	ldr	r3, [r4, r6]
	lsl	r1, r2, #2
	str	r3, [r4, r1]
	ldr	r4, [sp, #0x18]
	add	r2, sp, #0x50
	lsl	r3, r4, #1
	ldrh	r3, [r2, r3]
	mov	r0, sp
	add	r0, #0x20
	str	r3, [r0, r1]
	ldr	r6, [sp, #0x14]
	add	r6, #1
	str	r6, [sp, #0x14]
.Lbb3aa:
	ldr	r0, [sp, #0x18]
	add	r0, #1
	str	r0, [sp, #0x18]
	cmp	r0, r8
	bge	.Lbb3b6
	b	.Lbaf60
.Lbb3b6:
	ldr	r1, [sp, #0x14]
	cmp	r1, #0
	bne	.Lbb3c2
	mov	r0, #1
	neg	r0, r0
	b	.Lbb572
.Lbb3c2:
	ldrb	r3, [r7]
	mov	r2, sp
	add	r2, #0x20
	str	r2, [sp, #0xc]
	cmp	r3, #1
	beq	.Lbb3d0
	b	.Lbb560
.Lbb3d0:
	ldrb	r3, [r7, #8]
	cmp	r3, #1
	beq	.Lbb3d8
	b	.Lbb54a
.Lbb3d8:
	ldr	r0, [sp, #0x1c]
	bl	_Func_77394
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	_Func_773d8
	add	r0, #0x35
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	cmp	r3, #2
	bne	.Lbb3f6
	b	.Lbb552
.Lbb3f6:
	ldrb	r2, [r7, #1]
	mov	r3, #0xf
	and	r3, r2
	sub	r3, #3
	cmp	r3, #2
	bls	.Lbb404
	b	.Lbb55a
.Lbb404:
	ldr	r6, [sp, #0x14]
	mov	r1, #1
	mov	r4, #0
	neg	r1, r1
	str	r4, [sp, #0x18]
	cmp	r4, r6
	bge	.Lbb4d2
	mov	r0, sp
	add	r0, #0x20
	sub	r6, #1
	str	r0, [sp, #0xc]
	str	r6, [sp, #8]
.Lbb41c:
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bge	.Lbb4c4
	mov	r4, sp
	lsl	r3, r2, #2
	add	r4, #0x38
	add	r6, r3, r4
	str	r4, [sp, #0x10]
	add	r0, r3, #4
	mov	r5, r3
	ldr	r4, [sp, #0x18]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #0xc]
	ldr	r7, [sp, #0x10]
	mov	r10, r0
	sub	r3, r4
	str	r6, [sp, #4]
	mov	r9, r2
	mov	r11, r3
	add	r7, r10
.Lbb446:
	ldr	r6, [sp, #0x10]
	ldr	r0, [r5, r6]
	str	r1, [sp]
	bl	_Func_77394
	mov	r8, r0
	ldr	r0, [r7]
	bl	_Func_77394
	mov	r6, r0
	ldr	r0, [sp, #0x1c]
	bl	_Func_77394
	mov	r2, #0x94
	lsl	r2, #1
	add	r0, r2
	ldrb	r0, [r0]
	bl	_Func_773d8
	add	r0, #0x35
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	ldr	r1, [sp]
	cmp	r3, #0
	bne	.Lbb484
	mov	r0, r8
	mov	r4, #0x38
	ldrsh	r3, [r0, r4]
	mov	r2, #0x38
	ldrsh	r0, [r6, r2]
	b	.Lbb48e
.Lbb484:
	mov	r0, r8
	mov	r4, #0x34
	ldrsh	r3, [r0, r4]
	mov	r2, #0x34
	ldrsh	r0, [r6, r2]
.Lbb48e:
	cmp	r3, r0
	bge	.Lbb4aa
	ldr	r3, [sp, #0x10]
	ldr	r4, [sp, #4]
	ldr	r2, [r5, r3]
	ldr	r3, [r7]
	str	r3, [r4]
	str	r2, [r7]
	mov	r6, r9
	mov	r0, r10
	ldr	r2, [r6, r5]
	ldr	r3, [r6, r0]
	str	r3, [r6, r5]
	str	r2, [r6, r0]
.Lbb4aa:
	mov	r4, #1
	ldr	r2, [sp, #4]
	neg	r4, r4
	add	r11, r4
	add	r2, #4
	mov	r3, #4
	mov	r6, r11
	str	r2, [sp, #4]
	add	r7, #4
	add	r10, r3
	add	r5, #4
	cmp	r6, #0
	bne	.Lbb446
.Lbb4c4:
	ldr	r0, [sp, #0x18]
	ldr	r2, [sp, #0x14]
	add	r0, #1
	str	r0, [sp, #0x18]
	cmp	r0, r2
	blt	.Lbb41c
	b	.Lbb4d8
.Lbb4d2:
	mov	r3, sp
	add	r3, #0x20
	str	r3, [sp, #0xc]
.Lbb4d8:
	ldr	r4, [sp, #0x14]
	cmp	r4, #2
	beq	.Lbb4f4
	cmp	r4, #2
	bgt	.Lbb4e8
	cmp	r4, #1
	beq	.Lbb52c
	b	.Lbb53e
.Lbb4e8:
	ldr	r6, [sp, #0x14]
	cmp	r6, #3
	beq	.Lbb508
	cmp	r6, #4
	beq	.Lbb51c
	b	.Lbb53e
.Lbb4f4:
	bl	Func_4458
	mov	r3, #0xb
	mul	r3, r0
	lsr	r3, #16
	mov	r1, #0
	cmp	r3, #5
	bls	.Lbb53e
.Lbb504:
	mov	r1, #1
	b	.Lbb53e
.Lbb508:
	bl	Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsr	r1, r3, #16
	cmp	r1, #5
	ble	.Lbb52c
	cmp	r1, #0xa
	bgt	.Lbb538
	b	.Lbb504
.Lbb51c:
	bl	Func_4458
	lsl	r3, r0, #3
	add	r3, r0
	lsl	r3, #1
	lsr	r1, r3, #16
	cmp	r1, #5
	bgt	.Lbb530
.Lbb52c:
	mov	r1, #0
	b	.Lbb53e
.Lbb530:
	cmp	r1, #0xa
	ble	.Lbb504
	cmp	r1, #0xe
	bgt	.Lbb53c
.Lbb538:
	mov	r1, #2
	b	.Lbb53e
.Lbb53c:
	mov	r1, #3
.Lbb53e:
	cmp	r1, #0
	blt	.Lbb560
	lsl	r3, r1, #2
	ldr	r1, [sp, #0xc]
	ldr	r0, [r1, r3]
	b	.Lbb572
.Lbb54a:
	mov	r2, sp
	add	r2, #0x20
	str	r2, [sp, #0xc]
	b	.Lbb560
.Lbb552:
	mov	r3, sp
	add	r3, #0x20
	str	r3, [sp, #0xc]
	b	.Lbb560
.Lbb55a:
	mov	r4, sp
	add	r4, #0x20
	str	r4, [sp, #0xc]
.Lbb560:
	bl	Func_4458
	ldr	r6, [sp, #0x14]
	mov	r3, r6
	mul	r3, r0
	ldr	r1, [sp, #0xc]
	lsr	r3, #16
	lsl	r3, #2
	ldr	r0, [r1, r3]
.Lbb572:
	add	sp, #0x5c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bae40
