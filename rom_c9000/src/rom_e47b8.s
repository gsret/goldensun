	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_e47b8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xb8
	ldr	r3, =iwram_1eec
	str	r1, [sp, #0x60]
	str	r0, [sp, #0x64]
	mov	r2, r3
	ldmia	r2!, {r0}
	str	r0, [sp, #0x5c]
	ldr	r2, [r2]
	str	r2, [sp, #0x58]
	mov	r2, r3
	sub	r2, #0x6c
	ldr	r2, [r2]
	str	r2, [sp, #0x50]
	ldr	r1, =0x7828
	ldr	r3, [r3, #8]
	ldr	r2, [sp, #0x64]
	str	r3, [sp, #0x4c]
	add	r3, r0, r1
	str	r2, [r3]
	ldr	r3, [sp, #0x60]
	cmp	r3, #0xb
	beq	.Le47fa
	cmp	r3, #8
	beq	.Le47fa
	cmp	r3, #0x20
	bne	.Le480c
.Le47fa:
	mov	r0, #0
	bl	Func_cdb24
	b	.Le4812

	.pool_aligned

.Le480c:
	mov	r0, #0
	bl	Func_cd594
.Le4812:
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le4854	@ 0x1010
	strh	r3, [r2]
	ldr	r1, [sp, #0x4c]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x96
	ldr	r1, [sp, #0x5c]
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x99
	ldr	r1, =ewram_10000
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r0, #0xa2
	ldr	r5, [sp, #0x5c]
	lsl	r0, #7
	mov	r3, #0x90
	add	r1, r5, r0
	lsl	r3, #1
	ldr	r0, =ewram_10000
	mov	r2, #0x28
	bl	Func_df9d0
	b	.Le486c

	.align	2, 0
.Le4854:
	.word	0x1010
	.pool

.Le486c:
	ldr	r1, [sp, #0x60]
	cmp	r1, #5
	beq	.Le4876
	cmp	r1, #0x17
	bne	.Le487a
.Le4876:
	ldr	r0, =0x7d
	b	.Le48f0
.Le487a:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0xc
	bne	.Le4884
	ldr	r0, =0xa9
	b	.Le48f0
.Le4884:
	ldr	r3, [sp, #0x60]
	cmp	r3, #6
	beq	.Le488e
	cmp	r3, #0x1b
	bne	.Le48a0
.Le488e:
	ldr	r0, =0xce
	ldr	r1, =ewram_10000
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0xc4
	ldr	r1, =ewram_10c56
	b	.Le48f2
.Le48a0:
	ldr	r5, [sp, #0x60]
	cmp	r5, #0x1f
	bne	.Le48aa
	ldr	r0, =0x79
	b	.Le48b2
.Le48aa:
	ldr	r0, [sp, #0x60]
	cmp	r0, #8
	bne	.Le48be
	ldr	r0, =0xc3
.Le48b2:
	ldr	r1, =ewram_10000
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Le4912
.Le48be:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0xe
	bne	.Le48c8
	ldr	r0, =0x6f
	b	.Le48f0
.Le48c8:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0x1e
	bne	.Le48d2
	ldr	r0, =0xce
	b	.Le48f0
.Le48d2:
	ldr	r3, [sp, #0x60]
	cmp	r3, #0x10
	bne	.Le48dc
	ldr	r0, =0xb8
	b	.Le48f0
.Le48dc:
	ldr	r5, [sp, #0x60]
	cmp	r5, #0x14
	bne	.Le48e6
	ldr	r0, =0xb4
	b	.Le48f0
.Le48e6:
	ldr	r3, [sp, #0x60]
	sub	r3, #0x21
	cmp	r3, #1
	bhi	.Le48fc
	ldr	r0, =0x53
.Le48f0:
	ldr	r1, =ewram_10000
.Le48f2:
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	b	.Le4912
.Le48fc:
	ldr	r0, [sp, #0x60]
	cmp	r0, #0xb
	beq	.Le4912
	cmp	r0, #0x20
	beq	.Le4912
	ldr	r0, =0x9e
	ldr	r1, =ewram_10000
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
.Le4912:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x64
	bls	.Le491a
	b	.Le4ade
.Le491a:
	ldr	r2, =.Le4924
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Le4924:
	.word	.Le4ab8
	.word	.Le4ac4
	.word	.Le4abc
	.word	.Le4ac0
	.word	.Le4ab8
	.word	.Le4ac0
	.word	.Le4ac4
	.word	.Le4ab8
	.word	.Le4ab8
	.word	.Le4ab8
	.word	.Le4ab8
	.word	.Le4ab8
	.word	.Le4ab8
	.word	.Le4ab8
	.word	.Le4abc
	.word	.Le4abc
	.word	.Le4abc
	.word	.Le4abc
	.word	.Le4abc
	.word	.Le4abc
	.word	.Le4ac0
	.word	.Le4ac0
	.word	.Le4ac0
	.word	.Le4ac0
	.word	.Le4ac0
	.word	.Le4ac0
	.word	.Le4ac4
	.word	.Le4ac4
	.word	.Le4ac4
	.word	.Le4ac4
	.word	.Le4ac4
	.word	.Le4ac4
	.word	.Le4ac4
	.word	.Le4ab8
	.word	.Le4ac0
	.word	.Le4ac0
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ade
	.word	.Le4ad2
.Le4ab8:
	ldr	r0, =0x94
	b	.Le4ac6
.Le4abc:
	ldr	r0, =0x92
	b	.Le4ac6
.Le4ac0:
	ldr	r0, =0x8e
	b	.Le4ac6
.Le4ac4:
	ldr	r0, =0x90
.Le4ac6:
	ldr	r1, =ewram_13c56
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Le4ade
.Le4ad2:
	ldr	r0, =0x92
	ldr	r1, =ewram_13c56
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
.Le4ade:
	ldr	r3, [sp, #0x5c]
	mov	r5, #0xef
	lsl	r5, #7
	add	r2, r3, r5
	mov	r3, #2
	str	r3, [r2]
	ldr	r0, [sp, #0x60]
	cmp	r0, #0xc
	bne	.Le4b4c
	ldr	r1, [sp, #0x5c]
	ldr	r3, =0x7784
	add	r2, r1, r3
	mov	r3, #0x4b
	b	.Le4b54

	.pool_aligned

.Le4b4c:
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7784
	mov	r3, #0x32
	add	r2, r5, r0
.Le4b54:
	str	r3, [r2]
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x5c]
	add	r5, r1, r2
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0xa0
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r2
	str	r2, [sp, #0x3c]
	bl	Func_e396c
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	mov	r3, sp
	add	r3, #0xac
	mov	r1, r3
	str	r3, [sp, #0x38]
	bl	Func_e396c
	ldr	r3, [r5]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x68
	str	r1, [sp, #0x34]
	bl	Func_cef64
	ldr	r0, =0x77b4
	ldr	r3, [sp, #0x5c]
	add	r2, r3, r0
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r1, [sp, #0x5c]
	ldr	r3, =0x77b8
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	mov	r1, #0xe1
	ldr	r7, [r0]
	ldr	r0, [sp, #0x5c]
	mov	r5, #0
	lsl	r1, #7
	ldr	r6, =0xffff
	mov	r10, r5
	mov	r8, r5
	add	r5, r0, r1
.Le4bc4:
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	mov	r2, r8
	str	r3, [r5]
	str	r2, [r5, #4]
	str	r2, [r5, #8]
	bl	Func_4458
	and	r0, r6
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #1
	and	r0, r6
	add	r10, r3
	str	r0, [r5, #0x14]
	mov	r0, r10
	add	r5, #0x1c
	cmp	r0, #0x40
	bne	.Le4bc4
	mov	r0, r7
	mov	r1, #0
	bl	_Func_c344
	mov	r1, sp
	add	r1, #0x94
	str	r1, [sp, #8]
	ldr	r3, [r7, #8]
	str	r3, [r1]
	ldr	r3, [r7, #0xc]
	mov	r2, #0xa0
	lsl	r2, #15
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r1, #8]
	ldr	r3, [r7, #0x24]
	str	r3, [sp, #0x30]
	ldr	r5, [r7, #0x28]
	str	r5, [sp, #0x2c]
	ldr	r0, [r7, #0x2c]
	str	r0, [sp, #0x28]
	ldr	r1, [r7, #0x34]
	str	r1, [sp, #0x24]
	ldr	r2, [r7, #0x48]
	mov	r3, #0
	str	r2, [sp, #0x20]
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x28]
	str	r3, [r7, #0x2c]
	str	r3, [r7, #0x34]
	str	r3, [r7, #0x48]
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0x38]
	ldr	r0, [r3, #8]
	bl	Func_e396c
	ldr	r1, [sp, #0x38]
	ldr	r3, [r1]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r1]
	mov	r0, #0xd4
	bl	_Func_f9080
	mov	r2, #0
	add	r3, sp, #0x7c
	str	r2, [sp, #0x54]
	mov	r8, r3
.Le4c64:
	ldr	r0, [sp, #0x5c]
	mov	r1, #0xe1
	mov	r5, #0
	lsl	r1, #7
	mov	r9, r5
	mov	r10, r5
	add	r6, r0, r1
.Le4c72:
	ldr	r3, [r6]
	cmp	r3, #0
	blt	.Le4d34
	mov	r3, r10
	cmp	r3, #0
	bge	.Le4c80
	add	r3, #3
.Le4c80:
	ldr	r2, [sp, #0x54]
	asr	r3, #2
	cmp	r2, r3
	blt	.Le4d30
	mov	r3, #5
	mov	r11, r3
	bl	Func_49ac
	ldr	r0, [r6, #0x14]
	bl	Func_4c6c
	ldr	r0, [r6, #0xc]
	bl	Func_4bd4
	ldr	r0, [r6, #0x10]
	bl	Func_4c1c
	add	r5, sp, #0x7c
	mov	r1, r5
	mov	r0, r6
	bl	Func_e3944
	ldr	r3, [r5]
	ldr	r0, [sp, #0x38]
	lsr	r2, r3, #31
	add	r3, r2
	ldr	r2, [r0]
	asr	r3, #1
	add	r3, r2
	str	r3, [r5]
	ldr	r1, [sp, #0x60]
	cmp	r1, #7
	bgt	.Le4ccc
	ldr	r3, [r5, #4]
	ldr	r2, [r0, #4]
	add	r3, r2
	sub	r3, #8
	b	.Le4ce8
.Le4ccc:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0x23
	bne	.Le4cde
	ldr	r0, [sp, #0x38]
	ldr	r3, [r5, #4]
	ldr	r2, [r0, #4]
	add	r3, r2
	add	r3, #0x2c
	b	.Le4ce8
.Le4cde:
	ldr	r1, [sp, #0x38]
	ldr	r3, [r5, #4]
	ldr	r2, [r1, #4]
	add	r3, r2
	add	r3, #0xc
.Le4ce8:
	str	r3, [r5, #4]
	mov	r2, #0x3c
	ldr	r3, [r5, #8]
	neg	r2, r2
	cmp	r3, r2
	bge	.Le4cf8
	str	r2, [r5, #8]
	mov	r3, r2
.Le4cf8:
	cmp	r3, #0x3c
	ble	.Le4d00
	mov	r3, #0x3c
	str	r3, [r5, #8]
.Le4d00:
	add	r3, #0x3c
	str	r3, [r5, #8]
	ldr	r2, =Data_ede48
	mov	r3, #0xa
	sub	r3, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x4c]
	ldr	r3, [r5, #4]
	add	r1, r2, r1
	mov	r0, #0xa
	ldr	r2, [r5]
	mov	r5, r11
	str	r5, [sp]
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x34]
	sub	r3, #5
	sub	r2, #2
	ldr	r4, [r5, #4]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	ldr	r3, [r6]
	sub	r3, #4
	str	r3, [r6]
.Le4d30:
	mov	r0, #1
	add	r9, r0
.Le4d34:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	add	r6, #0x1c
	cmp	r2, #0x40
	bne	.Le4c72
	ldr	r3, [sp, #0x60]
	cmp	r3, #7
	bgt	.Le4d8a
	mov	r5, r9
	cmp	r5, #0x3f
	bgt	.Le4d8a
	bl	Func_49ac
	ldr	r0, [sp, #0x50]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	add	r1, sp, #0x94
	mov	r0, r1
	mov	r1, r8
	bl	Func_e3944
	mov	r3, r8
	ldr	r2, [r3]
	lsr	r3, r2, #31
	add	r2, r3
	mov	r5, r8
	ldr	r3, [r5, #4]
	asr	r2, #1
	mov	r1, #0x14
	str	r2, [r5]
	str	r1, [sp]
	mov	r1, #0x28
	str	r1, [sp, #4]
	sub	r2, #0xa
	sub	r3, #4
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	ldr	r1, =ewram_13c56
	bl	_call_via_r4
.Le4d8a:
	ldr	r0, [sp, #0x5c]
	ldr	r1, =0x7824
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x54]
	add	r2, #1
	str	r2, [sp, #0x54]
	cmp	r2, #0x20
	beq	.Le4da6
	b	.Le4c64
.Le4da6:
	ldr	r3, [sp, #0x60]
	cmp	r3, #0xb
	bne	.Le4e0c
	ldr	r3, .Le4ddc	@ 0x100
	ldr	r2, =REG_BG2PA
	strh	r3, [r2]
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le4dcc
	ldr	r1, [sp, #0x3c]
	ldr	r5, [sp, #0x54]
	ldr	r3, [r1]
	sub	r3, r5, r3
	add	r2, #8
	b	.Le4e54
.Le4dcc:
	ldr	r0, [sp, #0x3c]
	ldr	r2, [r0]
	mov	r3, #0x60
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	str	r3, [r1]
	b	.Le4e58

	.align	2, 0
.Le4ddc:
	.word	0x100
	.pool

.Le4e0c:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x20
	bne	.Le4e58
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le4e34	@ 0x100
	strh	r3, [r2]
	ldr	r2, [sp, #0x5c]
	ldr	r5, =0x7828
	add	r3, r2, r5
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le4e44
	ldr	r0, =0xff800000
	mov	r1, #0xc0
	lsl	r1, #12
	str	r0, [sp, #0x48]
	str	r1, [sp, #0x44]
	b	.Le4e4e

	.align	2, 0
.Le4e34:
	.word	0x100
	.pool

.Le4e44:
	mov	r2, #0x80
	ldr	r3, =0xfff40000
	lsl	r2, #12
	str	r2, [sp, #0x48]
	str	r3, [sp, #0x44]
.Le4e4e:
	ldr	r5, [sp, #0x48]
	ldr	r2, =REG_BG2X
	asr	r3, r5, #16
.Le4e54:
	lsl	r3, #8
	str	r3, [r2]
.Le4e58:
	ldr	r0, [sp, #0x60]
	cmp	r0, #8
	bne	.Le4ec0
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le4e9c	@ 0x100
	strh	r3, [r2]
	ldr	r3, [sp, #0x3c]
	ldr	r2, [r3]
	mov	r3, #0x40
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	str	r3, [r1]
	ldr	r5, [sp, #0x5c]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r2, r5, r0
	mov	r3, #1
	str	r3, [r2]
	mov	r6, #0
	add	r3, r5, r1
	mov	r1, #0x80
	str	r6, [r3]
	ldr	r5, =Func_8d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	ldr	r0, [sp, #0x58]
	lsl	r1, #7
	b	.Le4eb8

	.align	2, 0
.Le4e9c:
	.word	0x100
	.pool

.Le4eb8:
	bl	_call_via_r5
	ldr	r3, =REG_BLDCNT
	strh	r6, [r3]
.Le4ec0:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0x1f
	bne	.Le4f02
	ldr	r3, .Le4ee4	@ 0x100
	ldr	r2, =REG_BG2PA
	strh	r3, [r2]
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le4ef4
	ldr	r3, [sp, #0x3c]
	ldr	r2, [r3]
	mov	r3, #0x20
	b	.Le4efa

	.align	2, 0
.Le4ee4:
	.word	0x100
	.pool

.Le4ef4:
	ldr	r5, [sp, #0x3c]
	ldr	r2, [r5]
	mov	r3, #0x60
.Le4efa:
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	str	r3, [r1]
.Le4f02:
	ldr	r0, [sp, #0x60]
	cmp	r0, #0xf
	beq	.Le4f14
	cmp	r0, #0x11
	beq	.Le4f14
	cmp	r0, #0x18
	beq	.Le4f14
	cmp	r0, #0x1a
	bne	.Le4f86
.Le4f14:
	mov	r1, #0x80
	ldr	r5, =Func_8d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	ldr	r0, [sp, #0x58]
	lsl	r1, #7
	bl	_call_via_r5
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x5c]
	add	r3, r1, r2
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x1c]
	ldr	r0, =Func_cd4b4
	bl	Func_4278
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	mov	r0, r7
	mov	r1, #3
	bl	_Func_c300
	ldr	r3, [sp, #0x60]
	cmp	r3, #0xf
	bne	.Le4f64
	ldr	r0, [sp, #0x64]
	mov	r1, #9
	bl	Func_dea70
.Le4f64:
	ldr	r5, [sp, #0x60]
	cmp	r5, #0x18
	bne	.Le4f70
	ldr	r0, [sp, #0x64]
	bl	Func_d52a4
.Le4f70:
	ldr	r0, [sp, #0x60]
	cmp	r0, #0x1a
	beq	.Le4f7a
	bl	.Le65f8
.Le4f7a:
	ldr	r0, [sp, #0x64]
	mov	r1, #8
	bl	Func_dea70
	bl	.Le65f8
.Le4f86:
	mov	r0, r7
	mov	r1, #0x10
	bl	_Func_c344
	ldr	r1, [sp, #0x30]
	str	r1, [r7, #0x24]
	ldr	r2, [sp, #0x2c]
	str	r2, [r7, #0x28]
	ldr	r3, [sp, #0x28]
	str	r3, [r7, #0x2c]
	ldr	r5, [sp, #0x24]
	str	r5, [r7, #0x34]
	ldr	r0, [sp, #0x20]
	str	r0, [r7, #0x48]
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x23
	bne	.Le4ff4
	mov	r1, #0x80
	ldr	r5, =Func_8d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, [sp, #0x58]
	bl	_call_via_r5
	ldr	r5, =0x7828
	ldr	r2, [sp, #0x5c]
	add	r3, r2, r5
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x1c]
	ldr	r0, =Func_cd4b4
	bl	Func_4278
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, [sp, #0x64]
	mov	r3, #3
	str	r3, [r0, #0x18]
	ldr	r0, [sp, #0x64]
	mov	r1, #2
	bl	Func_d4604
	bl	.Le65f8
.Le4ff4:
	ldr	r1, [sp, #0x5c]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	str	r0, [sp, #0x1c]
	mov	r0, sp
	add	r0, #0x88
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #8]
	str	r0, [sp, #0x18]
	ldr	r3, [r2]
	ldr	r0, [r1, #8]
	mov	r1, #6
	sub	r0, r3
	bl	Func_af0_from_thumb
	ldr	r3, [sp, #0x18]
	str	r0, [r3]
	ldr	r5, [sp, #0x1c]
	ldr	r1, [sp, #8]
	ldr	r0, [r5, #0xc]
	ldr	r3, [r1, #4]
	mov	r2, #0xf0
	lsl	r2, #13
	sub	r0, r3
	add	r0, r2
	mov	r1, #6
	bl	Func_af0_from_thumb
	ldr	r3, [sp, #0x18]
	str	r0, [r3, #4]
	ldr	r0, [r5, #0x10]
	ldr	r5, [sp, #8]
	ldr	r3, [r5, #8]
	mov	r1, #6
	sub	r0, r3
	bl	Func_af0_from_thumb
	ldr	r1, [sp, #0x18]
	str	r0, [r1, #8]
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7098
	mov	r2, #0
	mov	r10, r2
	add	r3, r5, r0
.Le5058:
	mov	r1, #1
	add	r10, r1
	mov	r5, r10
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r5, #0x40
	bne	.Le5058
	ldr	r0, [sp, #0x60]
	cmp	r0, #0xe
	beq	.Le5114
	ldr	r1, [sp, #0x5c]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_Func_b8530
	lsr	r3, r0, #31
	add	r0, r3
	ldr	r1, [sp, #0x5c]
	mov	r2, #0xe1
	asr	r7, r0, #1
	lsl	r2, #7
	mov	r0, #0
	mov	r10, r0
	mov	r6, #0xff
	add	r5, r1, r2
.Le5090:
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0, #8]
	str	r7, [r5, #4]
	str	r3, [r5]
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #8]
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x1f
	bne	.Le50d8
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #10
	b	.Le50ee

	.pool_aligned

.Le50d8:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #12
.Le50ee:
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0x14]
	mov	r2, r10
	lsr	r3, r2, #31
	add	r3, r10
	asr	r3, #1
	add	r3, #0x20
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r0, r10
	add	r5, #0x1c
	cmp	r0, #0x20
	bne	.Le5090
.Le5114:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0xb
	bne	.Le5138
	ldr	r1, [sp, #0x5c]
	ldr	r0, =0xab
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #1
	mov	r3, #0
	ldr	r0, =0xac
	ldr	r1, =ewram_10000
	bl	Func_e0524
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le5160	@ 0xe10
	strh	r3, [r2]
.Le5138:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0x20
	bne	.Le517c
	ldr	r1, [sp, #0x5c]
	ldr	r0, =0xad
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #1
	mov	r3, #0
	ldr	r0, =0xae
	ldr	r1, =ewram_10000
	bl	Func_e0524
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le5160	@ 0xe10
	strh	r3, [r2]
	b	.Le517c

	.align	2, 0
.Le5160:
	.word	0xe10
	.pool

.Le517c:
	ldr	r3, [sp, #0x60]
	cmp	r3, #7
	beq	.Le523e
	cmp	r3, #0xd
	beq	.Le523e
	cmp	r3, #0x12
	beq	.Le523e
	cmp	r3, #0xb
	beq	.Le523e
	cmp	r3, #0x20
	beq	.Le523e
	cmp	r3, #0x13
	beq	.Le523e
	mov	r7, #0
	cmp	r3, #0xc
	beq	.Le51a0
	mov	r7, #0xa0
	lsl	r7, #13
.Le51a0:
	mov	r5, #0
	mov	r10, r5
	ldr	r5, =ewram_14000
	mov	r6, #0xff
.Le51a8:
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0, #8]
	str	r7, [r5, #4]
	str	r3, [r5]
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #8]
	ldr	r1, [sp, #0x60]
	cmp	r1, #5
	beq	.Le51be
	cmp	r1, #0x17
	bne	.Le51e0
.Le51be:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #11
	b	.Le522c
.Le51e0:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0x19
	bne	.Le520a
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	lsl	r3, #10
	str	r3, [r5, #0x10]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #11
	b	.Le522c
.Le520a:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	lsl	r3, #10
	str	r3, [r5, #0x10]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #10
.Le522c:
	str	r0, [r5, #0x14]
	mov	r3, #0
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r0, r10
	add	r5, #0x1c
	cmp	r0, #0x40
	bne	.Le51a8
.Le523e:
	ldr	r1, [sp, #0x60]
	sub	r1, #2
	str	r1, [sp, #0x14]
	cmp	r1, #1
	bls	.Le525a
	ldr	r2, [sp, #0x60]
	cmp	r2, #0xc
	beq	.Le525a
	cmp	r2, #0x16
	beq	.Le525a
	cmp	r2, #0x1d
	beq	.Le525a
	cmp	r2, #0x1c
	bne	.Le5264
.Le525a:
	mov	r1, #0x90
	ldr	r0, =Func_dbb9c
	lsl	r1, #3
	bl	Func_41d8
.Le5264:
	ldr	r3, [sp, #0x60]
	sub	r3, #4
	str	r3, [sp, #0x10]
	cmp	r3, #2
	bls	.Le5288
	ldr	r5, [sp, #0x60]
	cmp	r5, #0x17
	beq	.Le5288
	cmp	r5, #0x1e
	beq	.Le5288
	cmp	r5, #0x1b
	beq	.Le5288
	cmp	r5, #0x21
	beq	.Le5288
	cmp	r5, #0x22
	beq	.Le5288
	cmp	r5, #0x64
	bne	.Le528e
.Le5288:
	mov	r0, #0x20
	str	r0, [sp, #0x40]
	b	.Le52ea
.Le528e:
	ldr	r1, [sp, #0x60]
	cmp	r1, #3
	bls	.Le52b4
	cmp	r1, #8
	beq	.Le52b4
	cmp	r1, #9
	beq	.Le52b4
	cmp	r1, #0xa
	beq	.Le52b4
	cmp	r1, #0x16
	beq	.Le52b4
	cmp	r1, #0x19
	beq	.Le52b4
	cmp	r1, #0x1d
	beq	.Le52b4
	cmp	r1, #0x1f
	beq	.Le52b4
	cmp	r1, #0xe
	bne	.Le52ba
.Le52b4:
	mov	r2, #0x30
	str	r2, [sp, #0x40]
	b	.Le52ea
.Le52ba:
	ldr	r5, [sp, #0x60]
	mov	r3, #0x14
	str	r3, [sp, #0x40]
	cmp	r5, #0x15
	beq	.Le52ea
	ldr	r0, [sp, #0x60]
	cmp	r0, #0xb
	beq	.Le52d2
	cmp	r0, #0x20
	beq	.Le52d2
	cmp	r0, #0x14
	bne	.Le52d8
.Le52d2:
	mov	r1, #0x28
	str	r1, [sp, #0x40]
	b	.Le52ea
.Le52d8:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0x1c
	beq	.Le52e6
	mov	r3, #0x50
	str	r3, [sp, #0x40]
	cmp	r2, #0xc
	bne	.Le52ea
.Le52e6:
	mov	r5, #0x40
	str	r5, [sp, #0x40]
.Le52ea:
	ldr	r1, [sp, #0x40]
	mov	r0, #0
	str	r0, [sp, #0x54]
	cmp	r1, #0
	bne	.Le52f8
	bl	.Le657c
.Le52f8:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0xb
	beq	.Le5334
	cmp	r2, #0x20
	beq	.Le5334
	ldr	r3, [sp, #0x5c]
	mov	r5, #0xd3
	ldr	r1, [sp, #0x54]
	lsl	r5, #7
	mov	r0, #0
	mov	r7, #0x80
	add	r6, r3, r5
	mov	r10, r0
	lsl	r7, #11
	lsl	r5, r1, #12
.Le5316:
	mov	r0, r5
	bl	Func_2322
	lsl	r0, #2
	sub	r0, r7, r0
	mov	r3, #1
	asr	r0, #10
	mov	r2, #0x80
	add	r10, r3
	stmia	r6!, {r0}
	lsl	r2, #4
	mov	r0, r10
	add	r5, r2
	cmp	r0, #0xa0
	bne	.Le5316
.Le5334:
	ldr	r1, [sp, #0x54]
	cmp	r1, #2
	bgt	.Le535c
	ldr	r2, [sp, #0x5c]
	ldr	r5, =0x7828
	add	r3, r2, r5
	ldr	r3, [r3]
	ldr	r1, [sp, #0x38]
	ldr	r0, [r3, #8]
	bl	Func_e396c
	ldr	r0, [sp, #0x38]
	ldr	r3, [r0]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r0]
	ldr	r3, [r0, #4]
	add	r3, #0x10
	str	r3, [r0, #4]
.Le535c:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0xb
	beq	.Le53e2
	cmp	r1, #8
	beq	.Le53e2
	cmp	r1, #0x20
	beq	.Le53e2
	cmp	r1, #0x21
	beq	.Le53ea
	cmp	r1, #0x22
	beq	.Le53e2
	ldr	r2, [sp, #0x54]
	cmp	r2, #0xb
	bgt	.Le53e2
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le53b4
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	sub	r1, r3
	ldr	r3, [sp, #0x38]
	mov	r0, #0x30
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	lsl	r1, #7
	str	r0, [sp]
	mov	r0, #0x48
	str	r0, [sp, #4]
	add	r1, r5, r1
	sub	r2, #0x20
	sub	r3, #0x28
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	b	.Le53e2
.Le53b4:
	ldr	r5, [sp, #0x54]
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	sub	r1, r3
	ldr	r0, [sp, #0x5c]
	ldr	r3, [sp, #0x38]
	lsl	r1, #7
	ldr	r2, [r3]
	add	r1, r0, r1
	ldr	r3, [r3, #4]
	mov	r0, #0x30
	str	r0, [sp]
	mov	r0, #0x48
	str	r0, [sp, #4]
	sub	r3, #0x28
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
.Le53e2:
	ldr	r5, [sp, #0x60]
	cmp	r5, #0x21
	bls	.Le53ea
	b	.Le551a
.Le53ea:
	ldr	r0, [sp, #0x60]
	ldr	r2, =.Le53f4
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Le53f4:
	.word	.Le549c
	.word	.Le54c4
	.word	.Le54bc
	.word	.Le5504
	.word	.Le551a
	.word	.Le5514
	.word	.Le551a
	.word	.Le551a
	.word	.Le5494
	.word	.Le550c
	.word	.Le549c
	.word	.Le551a
	.word	.Le54a4
	.word	.Le54a4
	.word	.Le5484
	.word	.Le551a
	.word	.Le551a
	.word	.Le551a
	.word	.Le54ac
	.word	.Le54b4
	.word	.Le5504
	.word	.Le551a
	.word	.Le5504
	.word	.Le5514
	.word	.Le551a
	.word	.Le54a4
	.word	.Le551a
	.word	.Le551a
	.word	.Le54c4
	.word	.Le54bc
	.word	.Le551a
	.word	.Le548c
	.word	.Le551a
	.word	.Le547c
.Le547c:
	ldr	r0, =0x53
	bl	Func_e46f0
	b	.Le551a
.Le5484:
	ldr	r0, =0x6f
	bl	Func_e46f0
	b	.Le551a
.Le548c:
	ldr	r0, =0x79
	bl	Func_e46f0
	b	.Le551a
.Le5494:
	ldr	r0, =0xc3
	bl	Func_e46f0
	b	.Le551a
.Le549c:
	ldr	r0, =0x8d
	bl	Func_e46f0
	b	.Le551a
.Le54a4:
	ldr	r0, =0xbb
	bl	Func_e46f0
	b	.Le551a
.Le54ac:
	ldr	r0, =0xb9
	bl	Func_e46f0
	b	.Le551a
.Le54b4:
	ldr	r0, =0xc0
	bl	Func_e46f0
	b	.Le551a
.Le54bc:
	ldr	r0, =0xa4
	bl	Func_e46f0
	b	.Le551a
.Le54c4:
	ldr	r0, =0xa3
	bl	Func_e46f0
	b	.Le551a

	.pool_aligned

.Le5504:
	ldr	r0, =0xb4
	bl	Func_e46f0
	b	.Le551a
.Le550c:
	ldr	r0, =0xa0
	bl	Func_e46f0
	b	.Le551a
.Le5514:
	ldr	r0, =0x7d
	bl	Func_e46f0
.Le551a:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0xb
	beq	.Le5608
	cmp	r1, #8
	beq	.Le5608
	cmp	r1, #0x20
	beq	.Le5608
	ldr	r2, [sp, #0x54]
	sub	r2, #4
	cmp	r2, #0xb
	bhi	.Le556a
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r1, r3, #4
	sub	r1, r3
	ldr	r2, [sp, #0x5c]
	ldr	r5, [sp, #0x3c]
	lsl	r1, #6
	add	r1, r2, r1
	mov	r3, #0xa2
	ldr	r2, [r5]
	lsl	r3, #7
	ldr	r0, [sp, #0x38]
	add	r1, r3
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0, #4]
	mov	r0, #0x14
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x34]
	asr	r2, #1
	sub	r2, #8
	sub	r3, #0x18
	ldr	r4, [r5, #4]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
.Le556a:
	bl	Func_49ac
	ldr	r1, [sp, #0x50]
	ldr	r0, [sp, #0x50]
	add	r1, #0xc
	bl	Func_51d8
	ldr	r0, [sp, #0x54]
	cmp	r0, #3
	ble	.Le5608
	mov	r2, #0x70
	mov	r1, #0
	add	r2, sp
	mov	r10, r1
	mov	r9, r2
.Le5588:
	mov	r5, r10
	lsr	r3, r5, #31
	add	r3, r10
	asr	r7, r3, #1
	lsl	r3, r7, #3
	sub	r3, r7
	ldr	r0, [sp, #0x5c]
	lsl	r3, #2
	mov	r1, #0xe1
	add	r3, r0, r3
	lsl	r1, #7
	add	r1, r3
	ldr	r5, [r1, #0x18]
	mov	r8, r1
	cmp	r5, #0
	ble	.Le55fe
	mov	r6, r9
	mov	r1, r6
	mov	r0, r8
	bl	Func_e3944
	ldr	r2, [r6]
	asr	r5, #4
	lsr	r3, r2, #31
	add	r5, #1
	add	r2, r3
	lsl	r4, r5, #1
	asr	r2, #1
	ldr	r1, =Data_ede48
	str	r2, [r6]
	sub	r3, r4, #2
	ldrh	r1, [r1, r3]
	ldr	r3, [sp, #0x4c]
	add	r1, r3, r1
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	mov	r0, #1
	sub	r3, r5
	str	r5, [sp]
	str	r4, [sp, #4]
	ldr	r5, [sp, #0x34]
	and	r0, r7
	lsl	r0, #2
	ldr	r4, [r0, r5]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	mov	r0, r8
	mov	r1, #0x3c
	ldr	r2, =0xfffff000
	bl	Func_e38b8
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	sub	r3, #1
	str	r3, [r0, #0x18]
.Le55fe:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x80
	bne	.Le5588
.Le5608:
	ldr	r3, [sp, #0x60]
	cmp	r3, #7
	beq	.Le561c
	cmp	r3, #0xd
	beq	.Le561c
	cmp	r3, #0x12
	beq	.Le561c
	cmp	r3, #0x13
	beq	.Le561c
	b	.Le57b4
.Le561c:
	ldr	r5, [sp, #0x54]
	cmp	r5, #0x32
	bne	.Le563c
	ldr	r0, [sp, #0x5c]
	ldr	r1, =0x7828
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r0, [r3, #8]
	mov	r3, #1
	mov	r2, #0
	neg	r3, r3
	str	r2, [sp]
	mov	r1, #7
	mov	r2, r3
	bl	Func_d6888
.Le563c:
	ldr	r2, [sp, #0x54]
	cmp	r2, #0x4f
	bne	.Le565c
	ldr	r0, =0x7828
	ldr	r5, [sp, #0x5c]
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r0, [r3, #8]
	mov	r3, #1
	mov	r2, #0
	neg	r3, r3
	str	r2, [sp]
	mov	r1, #0
	mov	r2, r3
	bl	Func_d6888
.Le565c:
	ldr	r1, [sp, #0x54]
	cmp	r1, #0xc
	bne	.Le56ae
	mov	r2, #0
	ldr	r5, =ewram_14000
	mov	r10, r2
	mov	r6, #0xff
.Le566a:
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0, #8]
	str	r3, [r5]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r5, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r1, #1
	and	r0, r6
	sub	r0, #0x80
	add	r10, r1
	lsl	r0, #10
	mov	r3, #0
	mov	r2, r10
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Le566a
.Le56ae:
	ldr	r3, [sp, #0x54]
	cmp	r3, #0xb
	bgt	.Le56b8
	bl	.Le640e
.Le56b8:
	ldr	r0, [sp, #0x5c]
	ldr	r1, =0x7828
	add	r5, r0, r1
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r8, r0
	ldr	r0, [r3, #8]
	bl	_Func_b8530
	lsr	r3, r0, #31
	add	r0, r3
	mov	r3, #0x70
	asr	r0, #1
	mov	r2, #0
	add	r3, sp
	ldr	r7, =ewram_14000
	mov	r11, r0
	mov	r10, r2
	mov	r9, r3
.Le56e6:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	blt	.Le577e
	mov	r6, r9
	mov	r0, r10
	mov	r5, #1
	and	r5, r0
	mov	r1, r6
	mov	r0, r7
	bl	Func_e3944
	ldr	r2, [r6]
	add	r5, #6
	lsl	r0, r5, #1
	asr	r2, #1
	ldr	r1, =Data_ede48
	str	r2, [r6]
	sub	r3, r0, #2
	ldrh	r1, [r1, r3]
	ldr	r3, [sp, #0x4c]
	add	r1, r3, r1
	lsr	r3, r5, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	ldr	r4, [sp, #0x68]
	sub	r3, r5
	str	r5, [sp]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	mov	r0, r7
	mov	r1, #0x3e
	mov	r2, #0
	bl	Func_e38b8
	mov	r3, r10
	ldr	r5, [sp, #0x54]
	add	r3, #0x16
	cmp	r5, r3
	ble	.Le577e
	mov	r1, r8
	ldr	r0, [r1, #8]
	ldr	r3, [r7]
	ldr	r1, [r1, #0xc]
	sub	r0, r3
	ldr	r3, [r7, #4]
	mov	r2, r8
	add	r1, r11
	sub	r1, r3
	ldr	r3, [r2, #0x10]
	ldr	r2, [r7, #8]
	sub	r3, r2
	asr	r4, r3, #8
	ldr	r3, [r7, #0xc]
	asr	r0, #8
	add	r3, r0
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	asr	r1, #8
	add	r3, r1
	str	r3, [r7, #0x10]
	ldr	r3, [r7, #0x14]
	add	r3, r4
	str	r3, [r7, #0x14]
	ldr	r3, =0xfff
	ldr	r2, =0x1ffe
	add	r0, r3
	cmp	r0, r2
	bhi	.Le577e
	add	r3, r4, r3
	cmp	r3, r2
	bhi	.Le577e
	mov	r3, #1
	neg	r3, r3
	str	r3, [r7, #0x18]
.Le577e:
	mov	r5, #1
	add	r10, r5
	mov	r0, r10
	add	r7, #0x1c
	cmp	r0, #0x20
	bne	.Le56e6
	bl	.Le640e

	.pool_aligned

.Le57b4:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x15
	bne	.Le57be
	bl	.Le640e
.Le57be:
	cmp	r1, #6
	beq	.Le57c8
	cmp	r1, #0x1b
	beq	.Le57c8
	b	.Le58f2
.Le57c8:
	ldr	r3, [sp, #0x54]
	sub	r3, #6
	cmp	r3, #0xd
	bhi	.Le5818
	mov	r2, #0
	ldr	r5, [sp, #0x54]
	mov	r10, r2
.Le57d6:
	lsr	r3, r5, #31
	add	r3, r5, r3
	mov	r2, #3
	asr	r3, #1
	and	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r0, [sp, #0x3c]
	lsl	r1, r2, #4
	sub	r1, r2
	ldr	r3, =ewram_10c56
	ldr	r2, [r0]
	lsl	r1, #6
	add	r1, r3
	lsr	r3, r2, #31
	add	r2, r3
	mov	r3, #0x18
	str	r3, [sp]
	asr	r2, #1
	mov	r3, #0x68
	sub	r2, #8
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r3, #0
	bl	_call_via_r4
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	add	r5, #3
	cmp	r2, #2
	bne	.Le57d6
.Le5818:
	ldr	r3, [sp, #0x54]
	sub	r3, #8
	cmp	r3, #0xf
	bls	.Le5824
	bl	.Le640e
.Le5824:
	ldr	r5, =Data_edeca
	ldr	r0, =Data_eded0
	mov	r3, #0
	mov	r10, r3
	mov	r7, #3
	mov	r11, r5
	mov	r9, r0
.Le5832:
	mov	r8, r10
	mov	r1, r8
	and	r1, r7
	mov	r8, r1
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	ldr	r2, [sp, #0x3c]
	ldr	r3, [r2]
	mov	r6, r0
	lsr	r2, r3, #31
	add	r3, r2
	lsl	r6, #3
	mov	r1, r8
	asr	r3, #1
	mov	r0, r11
	asr	r6, #16
	add	r6, r3
	ldrb	r3, [r0, r1]
	mov	r0, r5
	lsr	r3, #1
	sub	r6, r3
	bl	Func_231c
	mov	r2, r9
	mov	r5, r0
	mov	r0, r8
	ldrb	r3, [r2, r0]
	lsl	r5, #5
	lsr	r3, #1
	mov	r0, #0x2f
	asr	r5, #16
	sub	r5, r3
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_4458
	ldr	r3, =.Leedd0
	and	r0, r7
	ldrb	r2, [r3, r0]
	mov	r3, r7
	orr	r3, r2
	mov	r2, #2
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r2, =Data_edebe
	mov	r1, r8
	lsl	r3, r1, #1
	ldrh	r1, [r2, r3]
	ldr	r2, =ewram_10000
	mov	r0, r11
	add	r1, r2
	mov	r2, r8
	ldrb	r3, [r0, r2]
	str	r3, [sp]
	mov	r0, r9
	ldrb	r3, [r0, r2]
	ldr	r2, =iwram_1f0c
	str	r3, [sp, #4]
	add	r5, #0x38
	ldr	r4, [r2]
	mov	r3, r5
	mov	r2, r6
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	ldr	r0, =0x7828
	ldr	r5, [sp, #0x5c]
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0x34]
	ldr	r0, [r3, #4]
	bl	Func_cef64
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #3
	bne	.Le5832
	bl	.Le640e
.Le58f2:
	ldr	r3, [sp, #0x60]
	cmp	r3, #0xe
	beq	.Le58fa
	b	.Le5a2e
.Le58fa:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r5, [sp, #0x54]
	cmp	r5, #0x17
	bls	.Le590e
	b	.Le5ab6
.Le590e:
	ldr	r0, [sp, #0x3c]
	ldr	r3, [r0]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp, #0xc]
	lsl	r3, r5, #5
	sub	r3, #0xe8
	mov	r11, r3
	lsl	r3, r5, #4
	mov	r7, r3
	mov	r1, r11
	sub	r7, #0x30
	cmp	r1, #0
	ble	.Le5930
	mov	r2, #0
	mov	r11, r2
.Le5930:
	cmp	r7, #0x68
	ble	.Le593a
.Le5934:
	sub	r7, #0x68
	cmp	r7, #0x68
	bgt	.Le5934
.Le593a:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r3, =iwram_1e50
	ldr	r0, [sp, #0xc]
	mov	r8, r3
	mov	r5, #0xbc
	mov	r1, r11
	add	r8, r5
	add	r1, r7
	mov	r6, #0x11
	mov	r5, #0x68
	str	r5, [sp, #4]
	str	r6, [sp]
	mov	r9, r1
	sub	r0, #8
	mov	r10, r0
	mov	r2, r8
	mov	r3, r9
	ldr	r0, [sp, #0x58]
	ldr	r4, [r2]
	sub	r3, #0x68
	ldr	r1, =ewram_10000
	mov	r2, r10
	bl	_call_via_r4
	sub	r5, r7
	str	r5, [sp, #4]
	str	r6, [sp]
	mov	r3, r8
	ldr	r4, [r3]
	ldr	r0, [sp, #0x58]
	ldr	r1, =ewram_10000
	mov	r2, r10
	mov	r3, r9
	bl	_call_via_r4
	mov	r0, #0x22
	str	r0, [sp]
	mov	r0, #0x41
	str	r0, [sp, #4]
	ldr	r2, [sp, #0xc]
	mov	r3, r11
	mov	r5, r8
	ldr	r1, =ewram_106e8
	sub	r2, #0x11
	add	r3, #0x2f
	ldr	r4, [r5]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	ldr	r0, [sp, #0x54]
	cmp	r0, #8
	bne	.Le59be
	ldr	r1, [sp, #0x5c]
	ldr	r2, =0x77a8
	add	r3, r1, r2
	str	r0, [r3]
.Le59be:
	ldr	r3, [sp, #0x54]
	cmp	r3, #1
	ble	.Le5ab6
	ldr	r0, [sp, #0x5c]
	mov	r1, #0xe1
	mov	r5, #0
	lsl	r1, #7
	mov	r10, r5
	mov	r7, #0
	mov	r6, #0xff
	add	r5, r0, r1
.Le59d4:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bne	.Le5a20
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2, #8]
	str	r3, [r5]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0x14]
	mov	r0, r10
	lsr	r3, r0, #31
	add	r3, r10
	asr	r3, #1
	add	r3, #0x20
	add	r7, #1
	str	r3, [r5, #0x18]
	cmp	r7, #4
	beq	.Le5ab6
.Le5a20:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Le59d4
	b	.Le5ab6
.Le5a2e:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x1f
	bne	.Le5afc
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r3, [sp, #0x54]
	sub	r3, #4
	cmp	r3, #0x13
	bhi	.Le5ab6
	ldr	r2, [sp, #0x3c]
	ldr	r5, [r2]
	lsr	r3, r5, #31
	mov	r0, #2
	add	r5, r3
	mov	r3, #0x30
	str	r0, [sp]
	mov	r9, r3
	mov	r10, r0
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	mov	r3, r9
	mov	r1, #0x18
	ldr	r6, =iwram_1e50
	str	r1, [sp]
	str	r3, [sp, #4]
	asr	r5, #1
	add	r6, #0xbc
	mov	r2, r5
	ldr	r4, [r6]
	ldr	r0, [sp, #0x58]
	sub	r2, #0x18
	mov	r8, r1
	ldr	r1, =ewram_10000
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, r10
	str	r0, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	Func_ed408
	mov	r1, r8
	mov	r2, r9
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r0, [sp, #0x58]
	ldr	r4, [r6]
	ldr	r1, =ewram_10000
	mov	r2, r5
	mov	r3, #0x30
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
.Le5ab6:
	ldr	r0, =0x7828
	ldr	r5, [sp, #0x5c]
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0x34]
	ldr	r0, [r3, #4]
	bl	Func_cef64
	bl	.Le640e

	.pool_aligned

.Le5afc:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x1e
	bne	.Le5bac
	ldr	r2, [sp, #0x54]
	cmp	r2, #0xf
	ble	.Le5b16
	ldr	r5, [sp, #0x54]
	ldr	r2, =0x20
	ldr	r1, =0x1000
	ldr	r3, =REG_BLDALPHA
	sub	r2, r5
	orr	r2, r1
	strh	r2, [r3]
.Le5b16:
	ldr	r0, [sp, #0x54]
	cmp	r0, #5
	bgt	.Le5b20
	bl	.Le640e
.Le5b20:
	ldr	r1, [sp, #0x3c]
	ldr	r2, [sp, #0x54]
	ldr	r6, [r1]
	lsr	r0, #31
	add	r0, r2, r0
	lsr	r3, r6, #31
	mov	r1, #3
	asr	r0, #1
	add	r6, r3
	bl	Func_b1c_from_thumb
	lsl	r5, r0, #2
	add	r5, r0
	lsl	r3, r5, #9
	asr	r6, #1
	ldr	r1, =ewram_10c56
	sub	r6, #0x14
	mov	r9, r3
	b	.Le5b58

	.pool_aligned

.Le5b58:
	mov	r0, #0x28
	mov	r2, #0x20
	add	r1, r9
	mov	r10, r0
	str	r0, [sp]
	mov	r8, r2
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r2, r6
	mov	r3, #0x10
	bl	_call_via_r4
	ldr	r3, =ewram_12a56
	lsl	r5, #8
	add	r5, r3
	mov	r0, r10
	mov	r1, r8
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r4, [sp, #0x68]
	mov	r1, r5
	mov	r2, r6
	mov	r3, #0x30
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	ldr	r2, =ewram_11156
	mov	r3, r10
	add	r9, r2
	mov	r5, r8
	str	r3, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r1, r9
	mov	r2, r6
	mov	r3, #0x50
	bl	_call_via_r4
	bl	.Le640e
.Le5bac:
	ldr	r0, [sp, #0x60]
	cmp	r0, #5
	beq	.Le5bb6
	cmp	r0, #0x17
	bne	.Le5c32
.Le5bb6:
	mov	r2, #0x70
	mov	r1, #0
	add	r2, sp
	ldr	r7, =ewram_14000
	mov	r10, r1
	mov	r8, r2
.Le5bc2:
	mov	r5, r10
	lsr	r3, r5, #31
	add	r3, r10
	asr	r3, #1
	ldr	r0, [sp, #0x54]
	add	r3, #4
	cmp	r0, r3
	blt	.Le5c22
	ldr	r3, [r7, #0x18]
	cmp	r3, #0xb
	bgt	.Le5c22
	mov	r6, r8
	lsr	r5, r3, #31
	mov	r1, r6
	mov	r0, r7
	add	r5, r3, r5
	bl	Func_e3944
	ldr	r2, [r6]
	ldr	r1, =ewram_10000
	lsr	r3, r2, #31
	asr	r5, #1
	add	r2, r3
	lsl	r5, #11
	ldr	r3, [r6, #4]
	asr	r2, #1
	add	r5, r1
	mov	r1, #0x20
	str	r2, [r6]
	str	r1, [sp]
	mov	r1, #0x40
	sub	r3, #0x20
	str	r1, [sp, #4]
	sub	r2, #0x10
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r1, r5
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r7
	mov	r1, #0x3c
	lsl	r2, #5
	bl	Func_e38b8
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
.Le5c22:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Le5bc2
	bl	.Le640e
.Le5c32:
	ldr	r5, [sp, #0x60]
	cmp	r5, #4
	bne	.Le5c3a
	b	.Le640e
.Le5c3a:
	cmp	r5, #0xb
	beq	.Le5c40
	b	.Le5e28
.Le5c40:
	ldr	r0, [sp, #0x54]
	lsl	r5, r0, #9
	mov	r0, r5
	bl	Func_2322
	mov	r0, r5
	bl	Func_231c
	ldr	r2, [sp, #0x3c]
	lsl	r0, #2
	mov	r1, #6
	ldrsh	r3, [r2, r1]
	asr	r0, #16
	add	r3, r0
	mov	r5, r3
	ldr	r3, [sp, #0x54]
	add	r5, #0x10
	cmp	r3, #3
	bgt	.Le5c92
	ldr	r0, [sp, #0x5c]
	ldr	r2, =0x7828
	add	r3, r0, r2
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r1, =.Leedd4
	lsl	r3, r2, #3
	sub	r3, r2
	ldrb	r2, [r1, r3]
	ldr	r3, =.Leede2
	mov	r1, #0x39
	ldrb	r3, [r3]
	str	r1, [sp]
	mov	r1, #0x62
	str	r1, [sp, #4]
	add	r3, r5, r3
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	ldr	r1, [sp, #0x5c]
	bl	_call_via_r4
	b	.Le640e
.Le5c92:
	ldr	r3, [sp, #0x54]
	cmp	r3, #7
	bgt	.Le5cc2
	ldr	r0, [sp, #0x5c]
	ldr	r2, =0x7828
	add	r3, r0, r2
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r1, =.Leedd4
	lsl	r3, r2, #3
	sub	r3, r2
	ldrb	r2, [r1, r3]
	ldr	r3, =.Leede2
	mov	r1, #0x39
	ldrb	r3, [r3]
	str	r1, [sp]
	mov	r1, #0x62
	str	r1, [sp, #4]
	add	r3, r5, r3
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	ldr	r1, [sp, #0x5c]
	bl	_call_via_r4
.Le5cc2:
	ldr	r3, [sp, #0x5c]
	ldr	r0, =0x15d2
	add	r1, r3, r0
	ldr	r0, =0x7828
	add	r6, r3, r0
	ldr	r3, [r6]
	ldr	r2, =.Leedd4
	mov	r8, r2
	ldr	r2, [r3, #4]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r7, =.Leede2
	add	r3, #1
	mov	r0, r8
	ldrb	r2, [r0, r3]
	ldrb	r3, [r7, #1]
	mov	r0, #0x63
	str	r0, [sp]
	mov	r0, #0x45
	add	r3, r5, r3
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	ldr	r3, [sp, #0x54]
	sub	r3, #4
	cmp	r3, #1
	bhi	.Le5d0a
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x58]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Le5d0a:
	ldr	r3, [sp, #0x54]
	sub	r3, #6
	cmp	r3, #1
	bhi	.Le5d3a
	ldr	r2, [sp, #0x5c]
	ldr	r3, =0x3081
	add	r1, r2, r3
	ldr	r3, [r6]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r3, #2
	mov	r0, r8
	ldrb	r2, [r0, r3]
	ldrb	r3, [r7, #2]
	mov	r0, #0x80
	str	r0, [sp]
	mov	r0, #0x5b
	str	r0, [sp, #4]
	add	r3, r5, r3
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
.Le5d3a:
	ldr	r3, [sp, #0x54]
	sub	r3, #8
	cmp	r3, #1
	bhi	.Le5d66
	ldr	r3, [r6]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r3, #3
	mov	r1, r8
	ldrb	r2, [r1, r3]
	ldrb	r3, [r7, #3]
	mov	r1, #0x80
	str	r1, [sp]
	mov	r1, #0x5b
	str	r1, [sp, #4]
	add	r3, r5, r3
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	ldr	r1, =ewram_10000
	bl	_call_via_r4
.Le5d66:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xa
	cmp	r3, #1
	bhi	.Le5d92
	ldr	r3, [r6]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r3, #4
	mov	r0, r8
	ldrb	r2, [r0, r3]
	ldrb	r3, [r7, #4]
	mov	r0, #0x80
	str	r0, [sp]
	mov	r0, #0x3b
	str	r0, [sp, #4]
	ldr	r1, =ewram_12d80
	add	r3, r5, r3
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
.Le5d92:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xc
	cmp	r3, #1
	bhi	.Le5dbe
	ldr	r3, [r6]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r3, #5
	mov	r0, r8
	ldrb	r2, [r0, r3]
	ldrb	r3, [r7, #5]
	mov	r0, #0x7a
	str	r0, [sp]
	mov	r0, #0x1d
	str	r0, [sp, #4]
	ldr	r1, =ewram_14b00
	add	r3, r5, r3
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
.Le5dbe:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xe
	cmp	r3, #1
	bls	.Le5dc8
	b	.Le640e
.Le5dc8:
	ldr	r3, [r6]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r3, #6
	mov	r0, r8
	ldrb	r2, [r0, r3]
	ldrb	r3, [r7, #6]
	mov	r0, #0x4c
	str	r0, [sp]
	mov	r0, #0x19
	str	r0, [sp, #4]
	ldr	r1, =ewram_158d2
	add	r3, r5, r3
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	b	.Le640e

	.pool_aligned

.Le5e28:
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x20
	beq	.Le5e30
	b	.Le600a
.Le5e30:
	ldr	r2, [sp, #0x48]
	ldr	r3, [sp, #0x44]
	ldr	r5, [sp, #0x54]
	add	r2, r3
	str	r2, [sp, #0x48]
	cmp	r5, #6
	ble	.Le5e50
	ldr	r0, [sp, #0x44]
	lsl	r3, #1
	add	r3, r0
	lsl	r3, #4
	cmp	r3, #0
	bge	.Le5e4c
	add	r3, #0x3f
.Le5e4c:
	asr	r3, #6
	str	r3, [sp, #0x44]
.Le5e50:
	ldr	r1, [sp, #0x48]
	ldr	r2, =REG_BG2X
	asr	r3, r1, #16
	lsl	r3, #8
	str	r3, [r2]
	ldr	r1, [sp, #0x54]
	sub	r1, #0x10
	cmp	r1, #0xf
	bhi	.Le5e6e
	ldr	r2, .Le5e98	@ 0x10
	sub	r2, r1
	ldr	r1, .Le5e9c	@ 0x1000
	ldr	r3, =REG_BLDALPHA
	orr	r2, r1
	strh	r2, [r3]
.Le5e6e:
	ldr	r3, [sp, #0x54]
	sub	r3, #4
	cmp	r3, #1
	bhi	.Le5e84
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x58]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Le5e84:
	ldr	r2, [sp, #0x54]
	cmp	r2, #3
	bgt	.Le5ee2
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	b	.Le5eb4

	.align	2, 0
.Le5e98:
	.word	0x10
.Le5e9c:
	.word	0x1000
	.pool

.Le5eb4:
	cmp	r3, #1
	bne	.Le5eca
	mov	r3, #0x50
	str	r3, [sp]
	mov	r3, #0x68
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r1, r5
	mov	r2, #0
	b	.Le5eda
.Le5eca:
	mov	r3, #0x50
	str	r3, [sp]
	mov	r3, #0x68
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	ldr	r1, [sp, #0x5c]
	mov	r2, #0x30
.Le5eda:
	mov	r3, #0x18
	bl	_call_via_r4
	b	.Le640e
.Le5ee2:
	ldr	r1, [sp, #0x54]
	cmp	r1, #7
	bgt	.Le5f24
	ldr	r2, [sp, #0x5c]
	ldr	r5, =0x7828
	add	r3, r2, r5
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le5f0e
	mov	r3, #0x50
	str	r3, [sp]
	mov	r3, #0x68
	str	r3, [sp, #4]
	mov	r1, r2
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r2, #0
	mov	r3, #0x18
	bl	_call_via_r4
	b	.Le5f24
.Le5f0e:
	mov	r3, #0x50
	str	r3, [sp]
	mov	r3, #0x68
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	ldr	r1, [sp, #0x5c]
	mov	r2, #0x30
	mov	r3, #0x18
	bl	_call_via_r4
.Le5f24:
	ldr	r0, [sp, #0x5c]
	ldr	r1, =0x7828
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le5f4e
	mov	r3, #0x50
	mov	r2, #0xf0
	lsl	r2, #5
	str	r3, [sp]
	mov	r3, #0x68
	add	r1, r0, r2
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r2, #0x10
	mov	r3, #0x10
	bl	_call_via_r4
	b	.Le5f6a
.Le5f4e:
	ldr	r3, [sp, #0x5c]
	mov	r5, #0xf0
	lsl	r5, #5
	add	r1, r3, r5
	mov	r3, #0x50
	str	r3, [sp]
	mov	r3, #0x68
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r2, #0x20
	mov	r3, #0x10
	bl	_call_via_r4
.Le5f6a:
	ldr	r3, [sp, #0x54]
	sub	r3, #6
	cmp	r3, #1
	bhi	.Le5f8e
	ldr	r0, [sp, #0x5c]
	mov	r3, #0x80
	mov	r2, #0xfa
	lsl	r2, #6
	str	r3, [sp]
	mov	r3, #0x5b
	add	r1, r0, r2
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r2, #0
	mov	r3, #0x10
	bl	_call_via_r4
.Le5f8e:
	ldr	r3, [sp, #0x54]
	sub	r3, #8
	cmp	r3, #1
	bhi	.Le5fac
	mov	r3, #0x80
	str	r3, [sp]
	mov	r3, #0x5b
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	ldr	r1, =ewram_10000
	mov	r2, #0
	mov	r3, #0x10
	bl	_call_via_r4
.Le5fac:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xa
	cmp	r3, #1
	bhi	.Le5fca
	mov	r3, #0x80
	str	r3, [sp]
	mov	r3, #0x3b
	str	r3, [sp, #4]
	ldr	r1, =ewram_12d80
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r2, #0
	mov	r3, #0x10
	bl	_call_via_r4
.Le5fca:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xc
	cmp	r3, #1
	bhi	.Le5fe8
	mov	r3, #0x80
	str	r3, [sp]
	mov	r3, #0x1d
	str	r3, [sp, #4]
	ldr	r1, =ewram_14b00
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r2, #0
	mov	r3, #0x10
	bl	_call_via_r4
.Le5fe8:
	ldr	r3, [sp, #0x54]
	sub	r3, #0xe
	cmp	r3, #1
	bls	.Le5ff2
	b	.Le640e
.Le5ff2:
	mov	r3, #0x80
	str	r3, [sp]
	mov	r3, #0x1a
	str	r3, [sp, #4]
	ldr	r1, =ewram_15980
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	mov	r2, #0
	mov	r3, #0x10
	bl	_call_via_r4
	b	.Le640e
.Le600a:
	ldr	r3, [sp, #0x60]
	cmp	r3, #0x14
	bne	.Le60ba
	mov	r5, #0
	mov	r10, r5
.Le6014:
	mov	r3, r10
	ldr	r0, [sp, #0x54]
	mov	r5, r10
	add	r3, #6
	add	r5, #1
	cmp	r0, r3
	blt	.Le60b2
	add	r3, #0xc
	cmp	r0, r3
	bge	.Le60ae
	mov	r1, r10
	sub	r3, r0, r1
	sub	r3, #6
	lsr	r2, r3, #31
	add	r3, r2
	asr	r4, r3, #1
	ldr	r3, [sp, #0x3c]
	ldr	r2, [r3]
	ldr	r7, =Data_ede9f
	lsr	r3, r2, #31
	add	r2, r3
	ldrb	r3, [r7, r4]
	asr	r2, #1
	lsr	r3, #1
	sub	r6, r2, r3
	mov	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.Le605c
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r2, r3, #1
	add	r2, r3
	add	r6, r2
	b	.Le606c
.Le605c:
	mov	r5, r10
	add	r5, #1
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r2, r3, #1
	add	r2, r3
	sub	r6, r2
.Le606c:
	mov	r1, r10
	mov	r0, #1
	cmp	r1, #0
	beq	.Le6084
	mov	r3, r10
	sub	r3, #1
	mov	r2, #3
	and	r3, r2
	mov	r0, #0
	cmp	r3, #1
	ble	.Le6084
	mov	r0, #1
.Le6084:
	ldr	r2, =Data_edeb2
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r2, =ewram_10000
	ldr	r3, =Data_edeab
	add	r1, r2
	ldrb	r2, [r7, r4]
	ldrb	r3, [r3, r4]
	str	r2, [sp]
	ldr	r2, =Data_edea5
	ldrb	r2, [r2, r4]
	str	r2, [sp, #4]
	ldr	r2, [sp, #0x34]
	lsl	r0, #2
	ldr	r4, [r0, r2]
	add	r3, #0x30
	ldr	r0, [sp, #0x58]
	mov	r2, r6
	bl	_call_via_r4
	b	.Le60b2
.Le60ae:
	mov	r5, r10
	add	r5, #1
.Le60b2:
	mov	r10, r5
	cmp	r5, #0xc
	bne	.Le6014
	b	.Le640e
.Le60ba:
	ldr	r3, [sp, #0x60]
	cmp	r3, #0x10
	beq	.Le60c2
	b	.Le61d4
.Le60c2:
	ldr	r5, [sp, #0x54]
	cmp	r5, #0
	bne	.Le610c
	mov	r0, #0
	ldr	r6, =0xffff
	ldr	r5, =ewram_14000
	mov	r10, r0
	mov	r7, #0
.Le60d2:
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	add	r3, #0x20
	str	r3, [r5]
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	bl	Func_4458
	and	r0, r6
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r1, #1
	add	r10, r1
	and	r0, r6
	mov	r2, r10
	str	r0, [r5, #0x14]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Le60d2
	ldr	r2, =ewram_146e4
	mov	r3, #0x9f
	str	r3, [r2, #4]
.Le610c:
	mov	r5, #0x70
	ldr	r0, [sp, #0x3c]
	mov	r3, #0
	add	r5, sp
	ldr	r7, =ewram_14000
	mov	r10, r3
	mov	r9, r5
	mov	r8, r0
.Le611c:
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.Le61c6
	mov	r1, r10
	lsr	r3, r1, #31
	add	r3, r10
	ldr	r2, [sp, #0x54]
	asr	r3, #1
	cmp	r2, r3
	blt	.Le61c6
	mov	r5, #3
	and	r5, r1
	bl	Func_49ac
	ldr	r0, [r7, #0xc]
	bl	Func_4bd4
	mov	r6, r9
	ldr	r0, [r7, #0x10]
	bl	Func_4c1c
	mov	r1, r6
	mov	r0, r7
	bl	Func_e3944
	ldr	r2, [r6]
	mov	r0, r8
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0]
	lsr	r1, r3, #31
	add	r3, r1
	asr	r3, #1
	asr	r2, #1
	add	r2, r3
	str	r2, [r6]
	ldr	r3, [r6, #4]
	ldr	r1, [r0, #4]
	add	r3, r1
	mov	r1, r3
	add	r1, #0x20
	str	r1, [r6, #4]
	ldr	r1, =.Leedea
	mov	r0, #8
	lsl	r5, #1
	ldrh	r1, [r1, r5]
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r5, =ewram_10000
	ldr	r0, [sp, #0x34]
	add	r3, #0x1c
	ldr	r4, [r0, #4]
	add	r1, r5
	sub	r2, #4
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	ldr	r3, [r7]
	sub	r3, #6
	str	r3, [r7]
	cmp	r3, #0
	bge	.Le61c6
	mov	r3, #7
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Le61a6
	cmp	r1, #0x3f
	bne	.Le61c6
.Le61a6:
	mov	r0, #0x85
	bl	_Func_f9080
	ldr	r5, =0x7828
	ldr	r2, [sp, #0x5c]
	add	r3, r2, r5
	ldr	r3, [r3]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
.Le61c6:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x40
	bne	.Le611c
	b	.Le640e
.Le61d4:
	ldr	r5, [sp, #0x60]
	cmp	r5, #8
	bne	.Le6218
	ldr	r3, [sp, #0x54]
	sub	r3, #5
	cmp	r3, #0x2c
	bls	.Le61e4
	b	.Le640e
.Le61e4:
	ldr	r0, [sp, #0x54]
	cmp	r0, #0x19
	ble	.Le61f2
	lsl	r2, r0, #2
	mov	r3, #0xc4
	sub	r1, r3, r2
	b	.Le61fa
.Le61f2:
	ldr	r1, [sp, #0x54]
	lsl	r3, r1, #4
	mov	r1, r3
	sub	r1, #0x40
.Le61fa:
	cmp	r1, #0x60
	ble	.Le6200
	mov	r1, #0x60
.Le6200:
	mov	r2, #0x20
	mov	r3, #0x68
	sub	r3, r1
	str	r2, [sp]
	str	r1, [sp, #4]
	ldr	r4, [sp, #0x68]
	ldr	r0, [sp, #0x58]
	ldr	r1, =ewram_10000
	mov	r2, #0x30
	bl	_call_via_r4
	b	.Le640e
.Le6218:
	ldr	r3, [sp, #0x60]
	sub	r3, #0x21
	cmp	r3, #1
	bhi	.Le62cc
	ldr	r2, [sp, #0x54]
	cmp	r2, #5
	ble	.Le6228
	b	.Le640e
.Le6228:
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le6288
	ldr	r2, [sp, #0x3c]
	ldr	r1, [r2]
	ldr	r5, [sp, #0x54]
	lsr	r3, r1, #31
	add	r1, r3
	mov	r3, #6
	sub	r3, r5
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r0, [sp, #0x3c]
	lsl	r3, r2, #1
	asr	r1, #1
	add	r1, r3
	b	.Le62a2

	.pool_aligned

.Le6288:
	ldr	r2, [sp, #0x3c]
	ldr	r1, [r2]
	ldr	r5, [sp, #0x54]
	lsr	r3, r1, #31
	add	r1, r3
	mov	r3, #6
	sub	r3, r5
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r0, [sp, #0x3c]
	lsl	r3, r2, #1
	asr	r1, #1
	sub	r1, r3
.Le62a2:
	ldr	r3, [r0, #4]
	lsl	r2, #2
	sub	r3, r2
	add	r3, #0x18
	mov	r2, r1
	mov	r1, #0x20
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x34]
	sub	r2, #0x10
	ldr	r4, [r1, #4]
	sub	r3, #0x20
	ldr	r0, [sp, #0x58]
	ldr	r1, =ewram_10000
	bl	_call_via_r4
	b	.Le640e

	.pool_aligned

.Le62cc:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0xc
	bne	.Le6374
	ldr	r3, [sp, #0x54]
	cmp	r3, #0x2f
	ble	.Le62e6
	ldr	r5, [sp, #0x54]
	ldr	r2, =0x40
	ldr	r1, =0x1000
	ldr	r3, =REG_BLDALPHA
	sub	r2, r5
	orr	r2, r1
	strh	r2, [r3]
.Le62e6:
	mov	r0, #0
	mov	r1, #3
	mov	r2, #1
	ldr	r7, =ewram_14000
	mov	r10, r0
	mov	r9, r1
	add	r6, sp, #0x70
	mov	r8, r2
	b	.Le6308

	.pool_aligned

.Le6308:
	mov	r0, r10
	mov	r1, #3
	bl	Func_b1c_from_thumb
	mov	r1, r6
	mov	r5, r0
	mov	r0, r7
	bl	Func_e3944
	ldr	r2, [r6]
	lsr	r3, r2, #31
	add	r2, r3
	asr	r2, #1
	str	r2, [r6]
	mov	r0, #0x18
	mov	r4, r10
	mov	r3, r8
	lsl	r1, r5, #3
	and	r4, r3
	add	r1, r5
	ldr	r3, [r6, #4]
	ldr	r5, =ewram_10000
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x34]
	lsl	r4, #2
	lsl	r1, #6
	ldr	r4, [r4, r0]
	add	r1, r5
	sub	r2, #0xc
	sub	r3, #0xc
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	mov	r3, r10
	mov	r1, r9
	and	r3, r1
	add	r3, #0xb
	mov	r2, r8
	lsl	r2, r3
	mov	r0, r7
	mov	r1, #0x3c
	bl	Func_e38b8
	ldr	r3, [r7, #0x18]
	mov	r2, #1
	add	r3, #1
	add	r10, r2
	str	r3, [r7, #0x18]
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Le6308
	b	.Le640e
.Le6374:
	ldr	r5, [sp, #0x60]
	cmp	r5, #0x64
	beq	.Le640e
	mov	r1, #0x70
	mov	r0, #0
	add	r1, sp
	ldr	r7, =ewram_14000
	mov	r10, r0
	mov	r8, r1
.Le6386:
	mov	r3, r10
	ldr	r2, [sp, #0x54]
	add	r3, #4
	cmp	r2, r3
	blt	.Le6402
	ldr	r5, [r7, #0x18]
	cmp	r5, #0x17
	bgt	.Le6402
	cmp	r5, #0
	bge	.Le639c
	add	r5, #3
.Le639c:
	mov	r6, r8
	mov	r1, r6
	mov	r0, r7
	bl	Func_e3944
	ldr	r2, [r6]
	lsr	r3, r2, #31
	add	r2, r3
	asr	r5, #2
	asr	r2, #1
	mov	r3, r10
	mov	r0, #0x18
	mov	r4, #1
	str	r2, [r6]
	and	r4, r3
	lsl	r1, r5, #3
	ldr	r3, [r6, #4]
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	add	r1, r5
	ldr	r0, [sp, #0x34]
	ldr	r5, =ewram_10000
	lsl	r4, #2
	lsl	r1, #7
	add	r1, r5
	ldr	r4, [r4, r0]
	sub	r2, #0xc
	sub	r3, #0x18
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	ldr	r1, [sp, #0x60]
	cmp	r1, #0x19
	bne	.Le63f0
	mov	r2, #0x80
	mov	r0, r7
	mov	r1, #0x3c
	lsl	r2, #3
	bl	Func_e38b8
	b	.Le63fc
.Le63f0:
	mov	r2, #0x80
	mov	r0, r7
	mov	r1, #0x3c
	lsl	r2, #5
	bl	Func_e38b8
.Le63fc:
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
.Le6402:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Le6386
.Le640e:
	ldr	r5, [sp, #0x60]
	cmp	r5, #7
	bgt	.Le6464
	ldr	r0, [sp, #0x54]
	cmp	r0, #5
	bgt	.Le6464
	add	r5, sp, #0x70
	mov	r1, r5
	ldr	r0, [sp, #8]
	bl	Func_e3944
	ldr	r2, [r5]
	lsr	r3, r2, #31
	add	r2, r3
	asr	r2, #1
	mov	r0, #0x14
	str	r2, [r5]
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x28
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x34]
	ldr	r1, =ewram_13c56
	sub	r2, #0xa
	sub	r3, #4
	ldr	r4, [r5, #4]
	ldr	r0, [sp, #0x58]
	bl	_call_via_r4
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0x18]
	ldr	r3, [r0]
	ldr	r2, [r1]
	add	r3, r2
	str	r3, [r0]
	ldr	r3, [r0, #4]
	ldr	r2, [r1, #4]
	add	r3, r2
	str	r3, [r0, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r1, #8]
	add	r3, r2
	str	r3, [r0, #8]
.Le6464:
	ldr	r2, [sp, #0x54]
	cmp	r2, #3
	bne	.Le6472
	mov	r0, #1
	neg	r0, r0
	bl	_Func_bd7dc
.Le6472:
	ldr	r3, [sp, #0x54]
	cmp	r3, #4
	bne	.Le647e
	mov	r0, #0x86
	bl	_Func_f9080
.Le647e:
	ldr	r5, [sp, #0x54]
	cmp	r5, #6
	bne	.Le6530
	ldr	r0, [sp, #0x10]
	cmp	r0, #1
	bls	.Le64a8
	ldr	r1, [sp, #0x60]
	cmp	r1, #7
	beq	.Le64a8
	cmp	r1, #0xd
	beq	.Le64a8
	cmp	r1, #0x12
	beq	.Le64a8
	cmp	r1, #0x13
	beq	.Le64a8
	cmp	r1, #0x17
	beq	.Le64a8
	cmp	r1, #0x22
	beq	.Le64a8
	cmp	r1, #0x64
	bne	.Le64c2
.Le64a8:
	ldr	r2, [sp, #0x5c]
	ldr	r5, =0x7828
	add	r3, r2, r5
	ldr	r3, [r3]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_Func_b8228
	ldr	r3, [sp, #0x5c]
	sub	r5, #0x80
	add	r2, r3, r5
	b	.Le650c
.Le64c2:
	ldr	r0, [sp, #0x60]
	cmp	r0, #0x14
	beq	.Le64d0
	cmp	r0, #0xe
	beq	.Le64d0
	cmp	r0, #0x21
	bne	.Le64ec
.Le64d0:
	ldr	r1, [sp, #0x5c]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r1, #1
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_Func_b8228
	ldr	r1, =0x77a8
	ldr	r0, [sp, #0x5c]
	mov	r3, #2
	add	r2, r0, r1
	b	.Le650e
.Le64ec:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0x1e
	beq	.Le64f6
	cmp	r2, #8
	bne	.Le6510
.Le64f6:
	ldr	r5, [sp, #0x5c]
	ldr	r0, =0x7828
	add	r3, r5, r0
	ldr	r3, [r3]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #3
	bl	_Func_b8228
	ldr	r3, =0x77a8
	add	r2, r5, r3
.Le650c:
	mov	r3, #8
.Le650e:
	str	r3, [r2]
.Le6510:
	ldr	r5, [sp, #0x54]
	cmp	r5, #6
	bne	.Le6530
	ldr	r0, [sp, #0x5c]
	ldr	r1, =0x7828
	add	r3, r0, r1
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
.Le6530:
	ldr	r3, [sp, #0x54]
	cmp	r3, #0xe
	bne	.Le6550
	ldr	r0, =0x7828
	ldr	r5, [sp, #0x5c]
	add	r3, r5, r0
	ldr	r3, [r3]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
.Le6550:
	mov	r1, #8
	mov	r0, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r5, =0x7824
	ldr	r3, [sp, #0x5c]
	add	r2, r3, r5
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	ldr	r0, [sp, #0x54]
	ldr	r1, [sp, #0x40]
	add	r0, #1
	str	r0, [sp, #0x54]
	cmp	r0, r1
	beq	.Le657c
	bl	.Le52f8
.Le657c:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0x15
	bne	.Le65c4
	mov	r1, #0x80
	ldr	r5, =Func_8d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	ldr	r0, [sp, #0x58]
	lsl	r1, #7
	bl	_call_via_r5
	ldr	r0, =0x7828
	ldr	r5, [sp, #0x5c]
	add	r3, r5, r0
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x1c]
	ldr	r0, =Func_cd4b4
	bl	Func_4278
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, [sp, #0x64]
	bl	Func_d9ac4
	b	.Le65f8
.Le65c4:
	ldr	r1, [sp, #0x14]
	cmp	r1, #1
	bls	.Le65dc
	ldr	r2, [sp, #0x60]
	cmp	r2, #0xc
	beq	.Le65dc
	cmp	r2, #0x16
	beq	.Le65dc
	cmp	r2, #0x1c
	beq	.Le65dc
	cmp	r2, #0x1d
	bne	.Le65e2
.Le65dc:
	ldr	r0, =Func_dbb9c
	bl	Func_4278
.Le65e2:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
.Le65f8:
	add	sp, #0xb8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e47b8

	.section .rodata

.Leedd0:
	.incrom 0xeedd0, 0xeedd4
.Leedd4:
	.incrom 0xeedd4, 0xeede2
.Leede2:
	.incrom 0xeede2, 0xeedea
.Leedea:
	.incrom 0xeedea, 0xeedf4
