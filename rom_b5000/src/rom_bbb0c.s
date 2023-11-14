	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_bbb0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x64
	str	r0, [sp, #0x50]
	mov	r0, #0
	str	r0, [sp, #0x3c]
	ldr	r3, =iwram_1e74
	mov	r5, #0xa6
	ldr	r3, [r3]
	lsl	r5, #1
	str	r0, [sp, #0x34]
	str	r0, [sp, #0x2c]
	str	r0, [sp, #0x28]
	str	r0, [sp, #0x1c]
	str	r0, [sp, #0x14]
	mov	r0, r5
	str	r3, [sp, #0x38]
	mov	r6, r1
	bl	Func_4938
	str	r0, [sp, #0x10]
	ldr	r1, [sp, #0x50]
	ldrb	r1, [r1]
	ldr	r2, [sp, #0x50]
	str	r1, [sp, #0x44]
	ldr	r4, [sp, #0x50]
	add	r2, #2
	ldrb	r3, [r2, r6]
	ldr	r4, [r4, #0x4c]
	mov	r10, r3
	str	r4, [sp, #0x40]
	mov	r3, r6
	add	r3, #0x1c
	ldrsb	r3, [r2, r3]
	ldr	r0, [sp, #0x50]
	ldr	r1, [sp, #0x50]
	ldr	r0, [r0, #0x50]
	str	r3, [sp, #0x30]
	mov	r3, r6
	add	r3, #0x2c
	ldrsb	r3, [r1, r3]
	mov	r9, r0
	mov	r0, r4
	str	r3, [sp, #0x20]
	mov	r8, r2
	bl	_Func_78b9c
	str	r0, [sp, #0x4c]
	ldr	r0, [sp, #0x44]
	bl	_Func_77394
	str	r0, [sp, #0x48]
	mov	r0, r10
	bl	_Func_77394
	mov	r7, r0
	ldr	r3, =Func_1af8
	mov	r2, r5
	ldr	r0, [sp, #0x10]
	mov	r1, r7
	bl	_call_via_r3
	ldr	r2, [sp, #0x4c]
	ldrb	r3, [r2, #8]
	cmp	r3, #0xff
	beq	.Lbbbb0
	mov	r3, r6
	ldr	r4, [sp, #0x50]
	add	r3, #0x10
	ldrsb	r3, [r4, r3]
	mov	r11, r3
	cmp	r3, #0
	bge	.Lbbbb4
	mov	r5, r11
	neg	r5, r5
	mov	r11, r5
	b	.Lbbbb4
.Lbbbb0:
	mov	r0, #0
	mov	r11, r0
.Lbbbb4:
	mov	r1, r9
	cmp	r1, #4
	beq	.Lbbc12
	lsl	r3, r1, #2
	mov	r4, r7
	add	r3, r7
	add	r4, #0x24
	mov	r2, #0x26
	ldrsh	r0, [r3, r2]
	mov	r5, #2
	ldrsh	r3, [r4, r5]
	mov	r1, #0
	cmp	r0, r3
	blt	.Lbbbe2
	mov	r2, r4
.Lbbbd2:
	add	r1, #1
	add	r2, #4
	cmp	r1, #3
	bgt	.Lbbbe2
	mov	r5, #2
	ldrsh	r3, [r2, r5]
	cmp	r0, r3
	bge	.Lbbbd2
.Lbbbe2:
	cmp	r1, #4
	bne	.Lbbbec
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x14]
.Lbbbec:
	mov	r2, #2
	ldrsh	r3, [r4, r2]
	mov	r1, #0
	cmp	r0, r3
	bgt	.Lbbc0a
	mov	r2, r7
	add	r2, #0x24
.Lbbbfa:
	add	r1, #1
	add	r2, #4
	cmp	r1, #3
	bgt	.Lbbc0a
	mov	r4, #2
	ldrsh	r3, [r2, r4]
	cmp	r0, r3
	ble	.Lbbbfa
.Lbbc0a:
	cmp	r1, #4
	bne	.Lbbc12
	mov	r5, #1
	str	r5, [sp, #0x14]
.Lbbc12:
	ldr	r0, [sp, #0x50]
	ldr	r2, [r0, #0x50]
	cmp	r2, #3
	bhi	.Lbbc32
	add	r0, #0x48
	str	r0, [sp, #4]
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #2
	beq	.Lbbc38
	lsl	r3, r2, #2
	ldr	r4, [sp, #0x48]
	add	r3, #0x48
	ldrsh	r4, [r4, r3]
	str	r4, [sp, #0xc]
	b	.Lbbc3c
.Lbbc32:
	ldr	r0, [sp, #0x50]
	add	r0, #0x48
	str	r0, [sp, #4]
.Lbbc38:
	mov	r1, #0x64
	str	r1, [sp, #0xc]
.Lbbc3c:
	ldr	r5, [sp, #4]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	cmp	r3, #5
	bne	.Lbbc78
	cmp	r2, #3
	bhi	.Lbbc78
	ldr	r0, [sp, #0x14]
	cmp	r0, #0
	ble	.Lbbc78
	lsl	r3, r2, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r1, #2
	ldrsh	r5, [r3, r1]
	ldr	r2, [sp, #0xc]
	ldr	r3, =0x28f
	sub	r5, r2, r5
	add	r5, #0x1e
	mul	r5, r3
	bl	_Func_79bc4
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	ble	.Lbbc78
	mov	r0, #0xd
	mov	r1, #5
	bl	Func_bbabc
.Lbbc78:
	ldr	r4, [sp, #0x4c]
	ldrb	r3, [r4, #1]
	mov	r5, #0xf
	and	r5, r3
	str	r5, [sp, #0x18]
	mov	r3, r6
	add	r3, #0x38
	mov	r6, r8
	mov	r1, #1
	ldrsb	r0, [r6, r3]
	neg	r1, r1
	cmp	r0, r1
	bne	.Lbbca6
	ldr	r2, =.Lc2ab8
	ldrb	r3, [r4, #3]
	mov	r4, r11
	ldrb	r2, [r2, r4]
	ldr	r0, [sp, #0x44]
	str	r2, [sp]
	mov	r1, r10
	mov	r2, r9
	bl	_Func_79f10
.Lbbca6:
	str	r0, [sp, #0x24]
	ldr	r5, [sp, #0x4c]
	ldrb	r3, [r5, #3]
	mov	r6, #0x80
	add	r3, #0xce
	lsl	r3, #24
	lsl	r6, #17
	cmp	r3, r6
	bls	.Lbbcba
	b	.Lbbdda
.Lbbcba:
	ldr	r0, [sp, #0x48]
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r0, r1
	ldrb	r5, [r3]
	bl	Func_b7514
	ldr	r2, [sp, #0x4c]
	ldrb	r3, [r2, #3]
	mov	r8, r0
	cmp	r3, #0x33
	bne	.Lbbcdc
	ldr	r3, [sp, #0x38]
	ldr	r0, [r3]
	bl	Func_c1fa8
	mov	r5, r0
.Lbbcdc:
	ldr	r4, [sp, #0x24]
	cmp	r4, #0
	beq	.Lbbdc0
	mov	r0, r5
	bl	Func_b6cdc
	cmp	r0, #0
	beq	.Lbbdc0
	mov	r6, r8
	cmp	r6, #0
	blt	.Lbbdc0
	mov	r0, r5
	mov	r1, #1
	bl	Func_c1df4
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #8
	and	r3, r6
	cmp	r3, #0
	beq	.Lbbd0c
	mov	r0, r5
	bl	Func_c1f50
.Lbbd0c:
	ldr	r2, =0x7fff
	mov	r1, r5
	and	r2, r6
	mov	r0, r8
	bl	_Func_79460
	ldr	r1, [sp, #0x38]
	mov	r2, #0x64
	add	r1, #2
	ldrsh	r3, [r1, r2]
	mov	r5, #0
	mov	r14, r5
	mov	r12, r1
	mov	r0, #0x64
	mov	r4, #0
	cmp	r3, #0xfe
	bne	.Lbbd40
	mov	r3, r8
	strh	r3, [r1, r2]
	b	.Lbbd5e
.Lbbd34:
	mov	r3, r14
	mov	r4, r8
	add	r3, #0x66
	strh	r4, [r1, r0]
	strh	r2, [r1, r3]
	b	.Lbbd5e
.Lbbd40:
	mov	r6, r12
	ldrsh	r2, [r0, r6]
	cmp	r2, #0xff
	beq	.Lbbd34
	add	r5, #1
	add	r0, #2
	add	r4, #2
	cmp	r5, #5
	bgt	.Lbbd5e
	ldrsh	r3, [r0, r1]
	mov	r14, r4
	cmp	r3, #0xfe
	bne	.Lbbd40
	mov	r2, r8
	strh	r2, [r0, r1]
.Lbbd5e:
	bl	Func_b7548
	mov	r0, r8
	bl	Func_b7dd0
	ldr	r2, [r0, #0xc]
	cmp	r2, #0
	bge	.Lbbd72
	ldr	r3, =0xffff
	add	r2, r3
.Lbbd72:
	ldr	r3, [r0, #0x10]
	asr	r2, #16
	cmp	r3, #0
	bge	.Lbbd7e
	ldr	r4, =0xffff
	add	r3, r4
.Lbbd7e:
	asr	r3, #16
	mov	r1, r8
	bl	Func_b6f44
	bl	Func_b6c90
	add	r5, sp, #0x54
	mov	r0, r5
	bl	Func_b6ae0
	cmp	r0, #0
	ble	.Lbbda8
	mov	r6, r5
	mov	r5, r0
.Lbbd9a:
	ldrh	r0, [r6]
	sub	r5, #1
	add	r6, #2
	bl	Func_b8000
	cmp	r5, #0
	bne	.Lbbd9a
.Lbbda8:
	mov	r0, #0
	mov	r1, r8
	bl	Func_bbabc
	ldr	r6, =0x1f7
	ldr	r5, [sp, #0x40]
	cmp	r5, r6
	beq	.Lbbdbc
	ldr	r1, =0x8f5
	b	.Lbbdca
.Lbbdbc:
	ldr	r1, =0x8f3
	b	.Lbbdca
.Lbbdc0:
	ldr	r0, [sp, #0x40]
	ldr	r1, =0x1f7
	cmp	r0, r1
	bne	.Lbbdd2
	ldr	r1, =0x8f4
.Lbbdca:
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbbdda
.Lbbdd2:
	ldr	r1, =0x8f6
	mov	r0, #4
	bl	Func_bbabc
.Lbbdda:
	ldr	r2, [sp, #0x24]
	cmp	r2, #0
	beq	.Lbbe9a
	ldr	r3, [sp, #0x4c]
	ldrb	r2, [r3, #3]
	mov	r3, r2
	cmp	r3, #0x35
	bne	.Lbbe1e
	mov	r4, #0
	str	r4, [sp, #0x24]
	mov	r3, #0xbb
	ldr	r5, [sp, #0x38]
	lsl	r3, #2
	ldrsh	r3, [r5, r3]
	mov	r2, #0
	cmp	r3, r10
	bne	.Lbbe02
	mov	r0, #1
	str	r0, [sp, #0x24]
	b	.Lbbe9a
.Lbbe02:
	add	r2, #1
	cmp	r2, #0x13
	bhi	.Lbbe9a
	mov	r1, #0xbb
	lsl	r3, r2, #4
	lsl	r1, #2
	ldr	r4, [sp, #0x38]
	add	r3, r1
	ldrsh	r3, [r4, r3]
	cmp	r3, r10
	bne	.Lbbe02
	mov	r6, #1
	str	r6, [sp, #0x24]
	b	.Lbbe9a
.Lbbe1e:
	mov	r3, r2
	cmp	r3, #0x23
	bne	.Lbbe2a
	mov	r0, #1
	str	r0, [sp, #0x34]
	b	.Lbbe9a
.Lbbe2a:
	cmp	r3, #0x22
	bne	.Lbbe34
	mov	r1, #1
	str	r1, [sp, #0x28]
	b	.Lbbe9a
.Lbbe34:
	cmp	r3, #0x1b
	bne	.Lbbe6c
	mov	r2, #1
	str	r2, [sp, #0x1c]
	b	.Lbbe9a

	.pool_aligned

.Lbbe6c:
	cmp	r3, #0x37
	bne	.Lbbe84
	ldr	r5, [sp, #0x48]
	mov	r4, #0x38
	ldrsh	r3, [r5, r4]
	cmp	r3, #0
	beq	.Lbbe9a
	mov	r0, #0xc
	ldr	r1, [sp, #0x44]
	bl	Func_bbabc
	b	.Lbbe9a
.Lbbe84:
	cmp	r3, #0x20
	bne	.Lbbe9a
	mov	r6, #0x3a
	ldrsh	r3, [r7, r6]
	cmp	r3, #0
	beq	.Lbbe96
	mov	r0, #0xa
	str	r0, [sp, #0x18]
	b	.Lbbe9a
.Lbbe96:
	mov	r1, #0
	str	r1, [sp, #0x24]
.Lbbe9a:
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	beq	.Lbbea2
	b	.Lbc666
.Lbbea2:
	mov	r4, #0x38
	ldrsh	r3, [r7, r4]
	cmp	r3, #0
	bne	.Lbbeb8
	ldr	r5, [sp, #0x4c]
	ldrb	r0, [r5, #3]
	bl	_Func_79ef8
	cmp	r0, #0
	bne	.Lbbeb8
	b	.Lbc666
.Lbbeb8:
	ldr	r3, [sp, #0x18]
	add	r3, #1
	cmp	r3, #0xc
	bls	.Lbbec2
	b	.Lbc666
.Lbbec2:
	ldr	r2, =.Lbbecc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbbecc:
	.word	.Lbc20c
	.word	.Lbc666
	.word	.Lbc150
	.word	.Lbc51e
	.word	.Lbbf00
	.word	.Lbbf00
	.word	.Lbc2ba
	.word	.Lbc2ba
	.word	.Lbc666
	.word	.Lbc2ba
	.word	.Lbc666
	.word	.Lbc084
	.word	.Lbc49a
.Lbbf00:
	ldrh	r1, [r7, #0x3e]
	ldr	r2, [sp, #0x34]
	mov	r0, #0x38
	ldrsh	r6, [r7, r0]
	mov	r11, r1
	cmp	r2, #0
	beq	.Lbbf12
	lsr	r1, #1
	mov	r11, r1
.Lbbf12:
	mov	r3, #1
	mov	r8, r3
.Lbbf16:
	mov	r4, r9
	cmp	r4, #4
	beq	.Lbbf2c
	lsl	r3, r4, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r5, #2
	ldrsh	r3, [r3, r5]
	ldr	r0, [sp, #0xc]
	sub	r3, r0, r3
	str	r3, [sp, #0x3c]
.Lbbf2c:
	mov	r1, r8
	cmp	r1, #0
	bne	.Lbbf36
	mov	r2, #0
	str	r2, [sp, #0x3c]
.Lbbf36:
	ldr	r3, [sp, #0x4c]
	ldr	r4, [sp, #0x18]
	ldrh	r5, [r3, #0xa]
	cmp	r4, #4
	bne	.Lbbf58
	ldr	r1, [sp, #0x48]
	mov	r2, #0
	ldrh	r0, [r1, #0x3c]
	ldr	r3, [sp, #0x3c]
	mov	r1, r11
	bl	_Func_79bf8
	mov	r1, #0xa
	mul	r0, r5
	bl	Func_af0_from_thumb
	b	.Lbbf66
.Lbbf58:
	ldr	r2, [sp, #0x48]
	mov	r1, r11
	ldrh	r0, [r2, #0x3c]
	ldr	r3, [sp, #0x3c]
	mov	r2, r5
	bl	_Func_79bf8
.Lbbf66:
	mov	r5, r0
	ldr	r3, [sp, #0x30]
	ldr	r4, [sp, #0x20]
	mul	r5, r3
	cmp	r4, #0
	beq	.Lbbfbc
	cmp	r4, #1
	bne	.Lbbf84
	lsl	r3, r5, #2
	add	r0, r3, r5
	cmp	r0, #0
	bge	.Lbbf80
	add	r0, #3
.Lbbf80:
	asr	r5, r0, #2
	b	.Lbbf8e
.Lbbf84:
	lsl	r3, r5, #1
	add	r3, r5
	lsr	r2, r3, #31
	add	r3, r2
	asr	r5, r3, #1
.Lbbf8e:
	ldrb	r0, [r7, #0xf]
	mov	r1, #5
	bl	Func_b60_from_thumb
	lsl	r0, #24
	lsr	r0, #24
	add	r0, r5, r0
	add	r5, r0, #6
	mov	r0, r8
	cmp	r0, #0
	bne	.Lbbfbc
	mov	r1, #0
	mov	r0, #6
	bl	Func_bbabc
	mov	r2, r10
	ldr	r1, =0x822
	cmp	r2, #7
	bhi	.Lbbfb6
	add	r1, #1
.Lbbfb6:
	mov	r0, #5
	bl	Func_bbabc
.Lbbfbc:
	bl	_Func_79bc4
	mov	r3, #3
	ldr	r4, =0x12b
	and	r3, r0
	add	r5, r3
	add	r3, r7, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbbfea
	cmp	r3, #1
	bne	.Lbbfe0
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbbfea
.Lbbfe0:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbbfea:
	cmp	r5, #0
	bgt	.Lbbff0
	mov	r5, #1
.Lbbff0:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0
	beq	.Lbc004
	sub	r3, r6, #1
	cmp	r5, r3
	bge	.Lbc004
	mov	r5, r3
	cmp	r5, #0
	bgt	.Lbc004
	mov	r5, #1
.Lbc004:
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lbc020
	ldr	r2, [sp, #4]
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #5
	bne	.Lbc020
	cmp	r6, r5
	bgt	.Lbc020
	sub	r5, r6, #1
.Lbc020:
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	cmp	r4, #1
	bgt	.Lbc02c
	b	.Lbbf16
.Lbc02c:
	mov	r1, r10
	mov	r0, #8
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	sub	r6, r5
	mov	r1, r5
	mov	r0, #1
	mov	r5, r10
	bl	Func_bbabc
	cmp	r5, #7
	bhi	.Lbc054
	ldr	r3, =0x834
	ldr	r0, [sp, #0x14]
	add	r1, r0, r3
	b	.Lbc05a
.Lbc054:
	ldr	r3, =0x831
	ldr	r2, [sp, #0x14]
	add	r1, r2, r3
.Lbc05a:
	mov	r0, #4
	bl	Func_bbabc
	cmp	r6, #0
	ble	.Lbc066
	b	.Lbc634
.Lbc066:
	mov	r1, r10
	mov	r0, #9
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
	mov	r3, r10
	mov	r6, #0
	cmp	r3, #7
	bls	.Lbc080
	b	.Lbc62a
.Lbc080:
	ldr	r1, =0x825
	b	.Lbc62c
.Lbc084:
	ldr	r5, [sp, #0x4c]
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	bne	.Lbc08e
	b	.Lbc666
.Lbc08e:
	mov	r1, r9
	mov	r0, #0x3a
	ldrsh	r6, [r7, r0]
	cmp	r1, #4
	beq	.Lbc0a8
	lsl	r3, r1, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r2, #2
	ldrsh	r3, [r3, r2]
	ldr	r4, [sp, #0xc]
	sub	r3, r4, r3
	str	r3, [sp, #0x3c]
.Lbc0a8:
	ldr	r0, [sp, #0x4c]
	ldrh	r5, [r0, #0xa]
	mov	r2, #0x80
	ldr	r1, [sp, #0x3c]
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_79c30
	ldr	r2, =.Lc2ac0
	mov	r1, r11
	lsl	r3, r1, #2
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r0, r3
	mul	r0, r5
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	ldr	r4, =0x12b
	add	r3, r7, r4
	ldr	r2, [sp, #0x30]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r5, r0
	mul	r5, r2
	cmp	r3, #0
	beq	.Lbc0f6
	cmp	r3, #1
	bne	.Lbc0ec
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbc0f6
.Lbc0ec:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc0f6:
	ldr	r0, [sp, #0x4c]
	ldrb	r3, [r0, #3]
	cmp	r3, #0x20
	bne	.Lbc104
	cmp	r5, r6
	ble	.Lbc104
	mov	r5, r6
.Lbc104:
	mov	r1, r10
	mov	r0, #8
	bl	Func_bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	mov	r1, r10
	cmp	r1, #7
	bhi	.Lbc126
	ldr	r1, =0x82a
	b	.Lbc128
.Lbc126:
	ldr	r1, =0x829
.Lbc128:
	mov	r0, #4
	sub	r6, r5
	bl	Func_bbabc
	cmp	r6, #0
	bgt	.Lbc136
	mov	r6, #0
.Lbc136:
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_bbabc
	mov	r2, #0x3a
	ldrsh	r3, [r7, r2]
	sub	r3, r6
	str	r3, [sp, #0x2c]
	mov	r0, r10
	strh	r6, [r7, #0x3a]
	bl	_Func_7822c
	b	.Lbc666
.Lbc150:
	ldr	r4, [sp, #0x4c]
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.Lbc15a
	b	.Lbc666
.Lbc15a:
	mov	r0, r9
	mov	r5, #0x38
	ldrsh	r6, [r7, r5]
	ldr	r1, [sp, #0xc]
	mov	r5, r3
	cmp	r0, #4
	bne	.Lbc16a
	mov	r1, #0x64
.Lbc16a:
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_79c5c
	ldr	r2, =.Lc2ad8
	mov	r1, r11
	lsl	r3, r1, #2
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r0, r3
	mul	r0, r5
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	ldr	r2, [sp, #0x30]
	mov	r5, r0
	mul	r5, r2
	bl	_Func_79bc4
	mov	r3, #3
	and	r3, r0
	add	r5, r3
	mov	r4, #0x34
	ldrsh	r3, [r7, r4]
	add	r6, r5
	cmp	r6, r3
	ble	.Lbc1aa
	mov	r6, r3
	mov	r5, #0x38
	ldrsh	r3, [r7, r5]
	sub	r5, r6, r3
.Lbc1aa:
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
	mov	r0, #0x34
	ldrsh	r3, [r7, r0]
	cmp	r6, r3
	bne	.Lbc1c4
	ldr	r1, =0x820
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbc1d4
.Lbc1c4:
	mov	r1, r5
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x81d
	mov	r0, #4
	bl	Func_bbabc
.Lbc1d4:
	mov	r1, #0x38
	ldrsh	r3, [r7, r1]
	b	.Lbc640

	.pool_aligned

.Lbc20c:
	ldr	r2, [sp, #0x4c]
	ldrh	r3, [r2, #0xa]
	cmp	r3, #0
	bne	.Lbc216
	b	.Lbc666
.Lbc216:
	mov	r4, r9
	mov	r3, #0x3a
	ldrsh	r6, [r7, r3]
	cmp	r4, #4
	beq	.Lbc230
	lsl	r3, r4, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r5, #2
	ldrsh	r3, [r3, r5]
	ldr	r0, [sp, #0xc]
	sub	r3, r0, r3
	str	r3, [sp, #0x3c]
.Lbc230:
	ldr	r1, [sp, #0x4c]
	ldrh	r5, [r1, #0xa]
	mov	r2, #0x80
	ldr	r1, [sp, #0x3c]
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_79c30
	ldr	r2, =.Lc2af0
	mov	r4, r11
	lsl	r3, r4, #2
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r0, r3
	mul	r0, r5
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	ldr	r1, =0x12b
	add	r3, r7, r1
	mov	r5, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r0, [sp, #0x30]
	mul	r5, r0
	cmp	r3, #0
	beq	.Lbc27e
	cmp	r3, #1
	bne	.Lbc274
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbc27e
.Lbc274:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc27e:
	mov	r1, r10
	mov	r0, #8
	bl	Func_bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
	mov	r2, r10
	cmp	r2, #7
	bhi	.Lbc2a0
	ldr	r1, =0x827
	b	.Lbc2a2
.Lbc2a0:
	ldr	r1, =0x826
.Lbc2a2:
	mov	r0, #4
	sub	r6, r5
	bl	Func_bbabc
	cmp	r6, #0
	bgt	.Lbc2b0
	mov	r6, #0
.Lbc2b0:
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_bbabc
	b	.Lbc514
.Lbc2ba:
	ldr	r4, [sp, #0x4c]
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.Lbc2c4
	b	.Lbc666
.Lbc2c4:
	mov	r0, #1
	mov	r5, #0x38
	ldrsh	r6, [r7, r5]
	mov	r8, r0
.Lbc2cc:
	mov	r1, r9
	cmp	r1, #4
	beq	.Lbc2e2
	lsl	r3, r1, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r2, #2
	ldrsh	r3, [r3, r2]
	ldr	r4, [sp, #0xc]
	sub	r3, r4, r3
	str	r3, [sp, #0x3c]
.Lbc2e2:
	mov	r5, r8
	cmp	r5, #0
	bne	.Lbc2ec
	mov	r0, #0
	str	r0, [sp, #0x3c]
.Lbc2ec:
	ldr	r4, [sp, #4]
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	ldrsh	r3, [r4, r2]
	ldrh	r5, [r1, #0xa]
	cmp	r3, #6
	bne	.Lbc38c
	ldr	r0, [sp, #0x40]
	ldr	r1, =0xfffffe84
	add	r3, r0, r1
	cmp	r3, #0x15
	bhi	.Lbc37a
	ldr	r2, =.Lbc30c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbc30c:
	.word	.Lbc364
	.word	.Lbc36a
	.word	.Lbc370
	.word	.Lbc376
	.word	.Lbc37a
	.word	.Lbc37a
	.word	.Lbc364
	.word	.Lbc36a
	.word	.Lbc370
	.word	.Lbc376
	.word	.Lbc37a
	.word	.Lbc37a
	.word	.Lbc364
	.word	.Lbc36a
	.word	.Lbc370
	.word	.Lbc376
	.word	.Lbc37a
	.word	.Lbc37a
	.word	.Lbc364
	.word	.Lbc36a
	.word	.Lbc370
	.word	.Lbc376
.Lbc364:
	mov	r2, #3
	str	r2, [sp, #8]
	b	.Lbc37a
.Lbc36a:
	mov	r3, #6
	str	r3, [sp, #8]
	b	.Lbc37a
.Lbc370:
	mov	r4, #9
	str	r4, [sp, #8]
	b	.Lbc37a
.Lbc376:
	mov	r0, #0xc
	str	r0, [sp, #8]
.Lbc37a:
	mov	r1, #0x34
	ldrsh	r3, [r7, r1]
	ldr	r2, [sp, #8]
	mov	r1, #0x64
	mov	r0, r2
	mul	r0, r3
	bl	Func_af0_from_thumb
	add	r5, r0
.Lbc38c:
	mov	r2, #0x80
	mov	r0, r5
	lsl	r2, #1
	ldr	r1, [sp, #0x3c]
	bl	_Func_79c30
	ldr	r3, [sp, #0x30]
	mov	r5, r0
	mul	r5, r3
	ldr	r3, [sp, #0x18]
	cmp	r3, #6
	beq	.Lbc3c4
	cmp	r3, #6
	bgt	.Lbc3ae
	cmp	r3, #5
	beq	.Lbc3b4
	b	.Lbc3d8
.Lbc3ae:
	cmp	r3, #8
	beq	.Lbc3bc
	b	.Lbc3d8
.Lbc3b4:
	ldr	r2, =.Lc2b08
	mov	r4, r11
	lsl	r3, r4, #2
	b	.Lbc3ca
.Lbc3bc:
	ldr	r2, =.Lc2b20
	mov	r0, r11
	lsl	r3, r0, #2
	b	.Lbc3ca
.Lbc3c4:
	ldr	r2, =.Lc2b38
	mov	r1, r11
	lsl	r3, r1, #2
.Lbc3ca:
	ldr	r3, [r2, r3]
	mov	r1, #0x64
	mov	r0, r3
	mul	r0, r5
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc3d8:
	bl	_Func_79bc4
	mov	r3, #3
	ldr	r2, =0x12b
	and	r3, r0
	add	r5, r3
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbc406
	cmp	r3, #1
	bne	.Lbc3fc
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbc406
.Lbc3fc:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc406:
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lbc422
	ldr	r0, [sp, #4]
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	cmp	r3, #6
	bne	.Lbc422
	cmp	r6, r5
	ble	.Lbc422
	mov	r5, r6
.Lbc422:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #1
	bgt	.Lbc42e
	b	.Lbc2cc
.Lbc42e:
	mov	r1, r10
	mov	r0, #8
	bl	Func_bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
	mov	r3, r10
	cmp	r3, #7
	bhi	.Lbc454
	ldr	r3, =0x834
	ldr	r4, [sp, #0x14]
	add	r1, r4, r3
	b	.Lbc45a
.Lbc454:
	ldr	r3, =0x831
	ldr	r0, [sp, #0x14]
	add	r1, r0, r3
.Lbc45a:
	mov	r0, #4
	sub	r6, r5
	bl	Func_bbabc
	cmp	r6, #0
	bgt	.Lbc48c
	mov	r1, r10
	mov	r0, #9
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	mov	r1, r10
	mov	r6, #0
	cmp	r1, #7
	bhi	.Lbc482
	ldr	r1, =0x825
	b	.Lbc484
.Lbc482:
	ldr	r1, =0x824
.Lbc484:
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbc494
.Lbc48c:
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_bbabc
.Lbc494:
	mov	r2, #0x38
	ldrsh	r3, [r7, r2]
	b	.Lbc640
.Lbc49a:
	ldr	r4, [sp, #0x4c]
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.Lbc4a4
	b	.Lbc666
.Lbc4a4:
	mov	r0, r9
	mov	r5, #0x3a
	ldrsh	r6, [r7, r5]
	ldr	r1, [sp, #0xc]
	mov	r5, r3
	cmp	r0, #4
	bne	.Lbc4b4
	mov	r1, #0x64
.Lbc4b4:
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_79c5c
	ldr	r2, =.Lc2b50
	mov	r1, r11
	lsl	r3, r1, #2
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r0, r3
	mul	r0, r5
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	ldr	r2, [sp, #0x30]
	mov	r5, r0
	mul	r5, r2
	mov	r4, #0x36
	ldrsh	r3, [r7, r4]
	add	r6, r5
	cmp	r6, r3
	ble	.Lbc4ea
	mov	r6, r3
	mov	r5, #0x3a
	ldrsh	r3, [r7, r5]
	sub	r5, r6, r3
.Lbc4ea:
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
	mov	r0, #0x36
	ldrsh	r3, [r7, r0]
	cmp	r6, r3
	bne	.Lbc504
	ldr	r1, =0x821
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbc514
.Lbc504:
	mov	r1, r5
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x81e
	mov	r0, #4
	bl	Func_bbabc
.Lbc514:
	strh	r6, [r7, #0x3a]
	mov	r0, r10
	bl	_Func_7822c
	b	.Lbc666
.Lbc51e:
	ldr	r1, [sp, #0x24]
	cmp	r1, #0
	bne	.Lbc526
	b	.Lbc64e
.Lbc526:
	ldr	r2, [sp, #0x4c]
	ldrh	r3, [r2, #0xa]
	cmp	r3, #0
	bne	.Lbc530
	b	.Lbc666
.Lbc530:
	mov	r4, r9
	mov	r3, #0x38
	ldrsh	r6, [r7, r3]
	cmp	r4, #4
	beq	.Lbc54a
	lsl	r3, r4, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r5, #2
	ldrsh	r3, [r3, r5]
	ldr	r0, [sp, #0xc]
	sub	r3, r0, r3
	str	r3, [sp, #0x3c]
.Lbc54a:
	ldr	r1, [sp, #0x4c]
	ldrh	r5, [r1, #0xa]
	mov	r2, #0x80
	ldr	r1, [sp, #0x3c]
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_79c30
	ldr	r2, [sp, #0x30]
	mov	r5, r0
	mul	r5, r2
	mov	r4, r11
	ldr	r2, =.Lc2b68
	lsl	r3, r4, #2
	ldr	r3, [r2, r3]
	mov	r1, #0x64
	mov	r0, r3
	mul	r0, r5
	bl	Func_af0_from_thumb
	mov	r5, r0
	ldr	r0, =0x12b
	add	r3, r7, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbc5de
	cmp	r3, #1
	bne	.Lbc5d4
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbc5de

	.pool_aligned

.Lbc5d4:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc5de:
	mov	r1, r10
	mov	r0, #8
	bl	Func_bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	mov	r1, r10
	cmp	r1, #7
	bhi	.Lbc600
	ldr	r1, =0x827
	b	.Lbc602
.Lbc600:
	ldr	r1, =0x826
.Lbc602:
	mov	r0, #4
	sub	r6, r5
	bl	Func_bbabc
	cmp	r6, #0
	bgt	.Lbc634
	mov	r1, r10
	mov	r0, #9
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
	mov	r2, r10
	mov	r6, #0
	cmp	r2, #7
	bhi	.Lbc62a
	ldr	r1, =0x825
	b	.Lbc62c
.Lbc62a:
	ldr	r1, =0x824
.Lbc62c:
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbc63c
.Lbc634:
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_bbabc
.Lbc63c:
	mov	r4, #0x38
	ldrsh	r3, [r7, r4]
.Lbc640:
	sub	r3, r6
	str	r3, [sp, #0x2c]
	mov	r0, r10
	strh	r6, [r7, #0x38]
	bl	_Func_7822c
	b	.Lbc666
.Lbc64e:
	mov	r1, r10
	mov	r0, #0xb
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x854
	mov	r0, #4
	bl	Func_bbabc
.Lbc666:
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
	ldr	r5, [sp, #0x4c]
	ldrb	r0, [r5, #3]
	bl	_Func_79ef8
	cmp	r0, #0
	bne	.Lbc690
	mov	r6, #0x38
	ldrsh	r3, [r7, r6]
	cmp	r3, #0
	bne	.Lbc690
	ldrb	r0, [r5, #3]
	bl	Func_bbae8
	cmp	r0, #0
	bne	.Lbc690
	bl	.Lbd2c0
.Lbc690:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0
	bne	.Lbc69a
	bl	.Lbd2c0
.Lbc69a:
	ldr	r1, [sp, #0x4c]
	ldrb	r3, [r1, #3]
	sub	r3, #3
	cmp	r3, #0x42
	bls	.Lbc6a8
	bl	.Lbd2c0
.Lbc6a8:
	ldr	r2, =.Lbc6b0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbc6b0:
	.word	.Lbcd38
	.word	.Lbc884
	.word	.Lbccd6
	.word	.Lbcb68
	.word	.Lbcb22
	.word	.Lbcad8
	.word	.Lbca8e
	.word	.Lbcc8c
	.word	.Lbcc42
	.word	.Lbcbfc
	.word	.Lbcbb2
	.word	.Lbce84
	.word	.Lbce30
	.word	.Lbcdde
	.word	.Lbcd8c
	.word	.Lbced8
	.word	.Lbcef4
	.word	.Lbcf10
	.word	.Lbcf20
	.word	.Lbcf32
	.word	.Lbcf42
	.word	.Lbcf50
	.word	.Lbcf5c
	.word	.Lbd1fa
	.word	.Lbcfa4
	.word	.Lbd20a
	.word	.Lbcfe0
	.word	.Lbcff4
	.word	.Lbd006
	.word	.Lbd068
	.word	.Lbd180
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2b6
	.word	.Lbd282
	.word	.Lbd29c
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd274
	.word	.Lbd24e
	.word	.Lbd2c0
	.word	.Lbccf4
	.word	.Lbcd16
	.word	.Lbca5c
	.word	.Lbca2a
	.word	.Lbd006
	.word	.Lbc926
	.word	.Lbc926
	.word	.Lbc9dc
	.word	.Lbc7bc
	.word	.Lbd2c0
	.word	.Lbd23e
	.word	.Lbcf7e
	.word	.Lbd2c0
	.word	.Lbd128
.Lbc7bc:
	mov	r3, #0x9c
	lsl	r3, #1
	add	r2, r7, r3
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc7dc
	mov	r3, #0
	ldr	r1, =0x88b
	strb	r3, [r2]
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
.Lbc7dc:
	ldr	r4, =0x13b
	add	r2, r7, r4
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc802
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x88d
	mov	r0, #4
	bl	Func_bbabc
.Lbc802:
	mov	r5, #0x9e
	lsl	r5, #1
	add	r3, r7, r5
	mov	r6, #0
	ldr	r0, =0x13d
	strb	r6, [r3]
	add	r2, r7, r0
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc828
	ldr	r1, =0x88c
	strb	r6, [r2]
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
.Lbc828:
	ldr	r1, =0x141
	add	r2, r7, r1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc844
	ldr	r1, =0x894
	strb	r6, [r2]
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
.Lbc844:
	mov	r3, #0xa0
	lsl	r3, #1
	add	r2, r7, r3
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc862
	ldr	r1, =0x88f
	strb	r6, [r2]
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_bbabc
.Lbc862:
	ldr	r4, =0x131
	add	r5, r7, r4
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	beq	.Lbc878
	ldr	r1, =0x884
	mov	r0, #4
	bl	Func_bbabc
	strb	r6, [r5]
.Lbc878:
	mov	r0, #7
	mov	r1, #0
	bl	Func_bbabc
	bl	.Lbd2c0
.Lbc884:
	mov	r5, #0x9c
	lsl	r5, #1
	add	r2, r7, r5
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc8ac
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x88b
	mov	r0, #4
	bl	Func_bbabc
.Lbc8ac:
	ldr	r6, =0x13b
	add	r2, r7, r6
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc8d2
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x88d
	mov	r0, #4
	bl	Func_bbabc
.Lbc8d2:
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r7, r0
	mov	r5, #0
	ldr	r1, =0x13d
	strb	r5, [r3]
	add	r2, r7, r1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc900
	strb	r5, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x88c
	mov	r0, #4
	bl	Func_bbabc
.Lbc900:
	ldr	r3, =0x141
	add	r2, r7, r3
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.Lbc90e
	bl	.Lbd2c0
.Lbc90e:
	strb	r5, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x894
	bl	.Lbd236
.Lbc926:
	ldr	r1, [sp, #0x4c]
	ldrh	r4, [r7, #0x38]
	ldrb	r3, [r1, #3]
	mov	r6, #0x38
	ldrsh	r5, [r7, r6]
	mov	r8, r4
	ldrh	r6, [r7, #0x34]
	mov	r0, #0x34
	ldrsh	r2, [r7, r0]
	cmp	r3, #0x3d
	bne	.Lbc944
	lsl	r0, r2, #4
	sub	r0, r2
	lsl	r0, #2
	b	.Lbc94a
.Lbc944:
	lsl	r0, r2, #4
	sub	r0, r2
	lsl	r0, #1
.Lbc94a:
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	add	r5, r0
	lsl	r3, r6, #16
	asr	r2, r3, #16
	cmp	r5, r2
	ble	.Lbc95c
	mov	r5, r2
.Lbc95c:
	mov	r4, r8
	lsl	r3, r4, #16
	asr	r3, #16
	sub	r1, r5, r3
	cmp	r1, #0
	bne	.Lbc972
	ldr	r6, [sp, #0x18]
	cmp	r6, #1
	beq	.Lbc972
	bl	.Lbd2c0
.Lbc972:
	cmp	r5, r2
	bne	.Lbc980
	ldr	r1, =0x820
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbc98e
.Lbc980:
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x81d
	mov	r0, #4
	bl	Func_bbabc
.Lbc98e:
	strh	r5, [r7, #0x38]
	b	.Lbcfd8

	.pool_aligned

.Lbc9dc:
	mov	r1, #0x36
	ldrsh	r6, [r7, r1]
	mov	r0, #0x3a
	ldrsh	r5, [r7, r0]
	lsl	r0, r6, #3
	sub	r0, r6
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	mov	r8, r5
	add	r5, r0
	cmp	r5, r6
	ble	.Lbc9f8
	mov	r5, r6
.Lbc9f8:
	mov	r2, r8
	sub	r1, r5, r2
	cmp	r1, #0
	bne	.Lbca0a
	ldr	r3, [sp, #0x18]
	cmp	r3, #0xb
	beq	.Lbca0a
	bl	.Lbd2c0
.Lbca0a:
	cmp	r5, r6
	bne	.Lbca18
	ldr	r1, =0x821
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbca26
.Lbca18:
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x81e
	mov	r0, #4
	bl	Func_bbabc
.Lbca26:
	strh	r5, [r7, #0x3a]
	b	.Lbcfd8
.Lbca2a:
	ldr	r4, =0x147
	mov	r5, #0xa3
	add	r2, r7, r4
	mov	r3, #8
	lsl	r5, #1
	strb	r3, [r2]
	add	r2, r7, r5
	mov	r3, #5
	strb	r3, [r2]
	mov	r0, r10
	bl	_Func_77428
	mov	r3, r7
	add	r3, #0x40
	ldrh	r1, [r3]
	ldr	r3, [sp, #0x10]
	add	r3, #0x40
	ldrh	r3, [r3]
	mov	r0, #1
	sub	r1, r3
	bl	Func_bbabc
	ldr	r1, =0x877
	bl	.Lbd236
.Lbca5c:
	ldr	r6, =0x147
	mov	r0, #0xa3
	add	r2, r7, r6
	mov	r3, #0xfc
	lsl	r0, #1
	strb	r3, [r2]
	add	r2, r7, r0
	mov	r3, #5
	strb	r3, [r2]
	mov	r0, r10
	bl	_Func_77428
	ldr	r3, [sp, #0x10]
	add	r3, #0x40
	ldrh	r1, [r3]
	mov	r3, r7
	add	r3, #0x40
	ldrh	r3, [r3]
	mov	r0, #1
	sub	r1, r3
	bl	Func_bbabc
	ldr	r1, =0x878
	bl	.Lbd236
.Lbca8e:
	ldr	r1, =0x133
	add	r2, r7, r1
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcaa8
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcaa8:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcab4
	mov	r3, #4
	strb	r3, [r2]
.Lbcab4:
	mov	r0, r10
	bl	_Func_77428
	ldr	r5, [sp, #0x10]
	ldrh	r3, [r7, #0x3c]
	ldrh	r1, [r5, #0x3c]
	mov	r0, #1
	sub	r1, r3
	mov	r6, #0x99
	bl	Func_bbabc
	lsl	r6, #1
	ldr	r1, =0x860
	mov	r0, #4
	bl	Func_bbabc
	add	r2, r7, r6
	b	.Lbcfee
.Lbcad8:
	ldr	r0, =0x133
	add	r2, r7, r0
	ldrb	r3, [r2]
	sub	r3, #2
	strb	r3, [r2]
	mov	r1, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r1, r1
	cmp	r3, r1
	bge	.Lbcaf2
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcaf2:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcafe
	mov	r3, #4
	strb	r3, [r2]
.Lbcafe:
	mov	r0, r10
	bl	_Func_77428
	ldr	r2, [sp, #0x10]
	ldrh	r3, [r7, #0x3c]
	ldrh	r1, [r2, #0x3c]
	mov	r0, #1
	sub	r1, r3
	bl	Func_bbabc
	ldr	r1, =0x860
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #0x99
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbcfee
.Lbcb22:
	ldr	r4, =0x133
	add	r2, r7, r4
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r5, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r5, r5
	cmp	r3, r5
	bge	.Lbcb3c
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcb3c:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcb48
	mov	r3, #4
	strb	r3, [r2]
.Lbcb48:
	mov	r0, r10
	bl	_Func_77428
	ldr	r6, [sp, #0x10]
	ldrh	r1, [r7, #0x3c]
	ldrh	r3, [r6, #0x3c]
	mov	r0, #1
	sub	r1, r3
	bl	Func_bbabc
	ldr	r1, =0x861
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0x99
	b	.Lbcfea
.Lbcb68:
	ldr	r1, =0x133
	add	r2, r7, r1
	ldrb	r3, [r2]
	add	r3, #2
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcb82
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcb82:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcb8e
	mov	r3, #4
	strb	r3, [r2]
.Lbcb8e:
	mov	r0, r10
	bl	_Func_77428
	ldr	r5, [sp, #0x10]
	ldrh	r1, [r7, #0x3c]
	ldrh	r3, [r5, #0x3c]
	mov	r0, #1
	sub	r1, r3
	mov	r6, #0x99
	bl	Func_bbabc
	lsl	r6, #1
	ldr	r1, =0x861
	mov	r0, #4
	bl	Func_bbabc
	add	r2, r7, r6
	b	.Lbcfee
.Lbcbb2:
	ldr	r0, =0x135
	add	r2, r7, r0
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	mov	r1, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r1, r1
	cmp	r3, r1
	bge	.Lbcbcc
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcbcc:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcbd8
	mov	r3, #4
	strb	r3, [r2]
.Lbcbd8:
	mov	r0, r10
	bl	_Func_77428
	ldr	r2, [sp, #0x10]
	ldrh	r3, [r7, #0x3e]
	ldrh	r1, [r2, #0x3e]
	mov	r0, #1
	sub	r1, r3
	bl	Func_bbabc
	ldr	r1, =0x862
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #0x9a
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbcfee
.Lbcbfc:
	ldr	r4, =0x135
	add	r2, r7, r4
	ldrb	r3, [r2]
	sub	r3, #2
	strb	r3, [r2]
	mov	r5, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r5, r5
	cmp	r3, r5
	bge	.Lbcc16
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcc16:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcc22
	mov	r3, #4
	strb	r3, [r2]
.Lbcc22:
	mov	r0, r10
	bl	_Func_77428
	ldr	r6, [sp, #0x10]
	ldrh	r3, [r7, #0x3e]
	ldrh	r1, [r6, #0x3e]
	mov	r0, #1
	sub	r1, r3
	bl	Func_bbabc
	ldr	r1, =0x862
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0x9a
	b	.Lbcfea
.Lbcc42:
	ldr	r1, =0x135
	add	r2, r7, r1
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcc5c
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcc5c:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcc68
	mov	r3, #4
	strb	r3, [r2]
.Lbcc68:
	mov	r0, r10
	bl	_Func_77428
	ldr	r5, [sp, #0x10]
	ldrh	r1, [r7, #0x3e]
	ldrh	r3, [r5, #0x3e]
	mov	r0, #1
	sub	r1, r3
	mov	r6, #0x9a
	bl	Func_bbabc
	lsl	r6, #1
	ldr	r1, =0x863
	mov	r0, #4
	bl	Func_bbabc
	add	r2, r7, r6
	b	.Lbcfee
.Lbcc8c:
	ldr	r0, =0x135
	add	r2, r7, r0
	ldrb	r3, [r2]
	add	r3, #2
	strb	r3, [r2]
	mov	r1, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r1, r1
	cmp	r3, r1
	bge	.Lbcca6
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcca6:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbccb2
	mov	r3, #4
	strb	r3, [r2]
.Lbccb2:
	mov	r0, r10
	bl	_Func_77428
	ldr	r2, [sp, #0x10]
	ldrh	r1, [r7, #0x3e]
	ldrh	r3, [r2, #0x3e]
	mov	r0, #1
	sub	r1, r3
	bl	Func_bbabc
	ldr	r1, =0x863
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #0x9a
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbcfee
.Lbccd6:
	mov	r4, #0x38
	ldrsh	r3, [r7, r4]
	cmp	r3, #0
	beq	.Lbcce0
	b	.Lbd2c0
.Lbcce0:
	ldr	r1, =0x864
	mov	r0, #4
	bl	Func_bbabc
	ldrh	r3, [r7, #0x34]
	mov	r0, r10
	strh	r3, [r7, #0x38]
	bl	_Func_7822c
	b	.Lbd2c0
.Lbccf4:
	mov	r5, #0x38
	ldrsh	r3, [r7, r5]
	cmp	r3, #0
	beq	.Lbccfe
	b	.Lbd2c0
.Lbccfe:
	ldr	r1, =0x864
	mov	r0, #4
	bl	Func_bbabc
	ldrh	r3, [r7, #0x34]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	strh	r2, [r7, #0x38]
	b	.Lbcfd8
.Lbcd16:
	mov	r6, #0x38
	ldrsh	r3, [r7, r6]
	cmp	r3, #0
	beq	.Lbcd20
	b	.Lbd2c0
.Lbcd20:
	ldr	r1, =0x864
	mov	r0, #4
	bl	Func_bbabc
	mov	r1, #0x34
	ldrsh	r0, [r7, r1]
	mov	r1, #0xa
	lsl	r0, #3
	bl	Func_af0_from_thumb
	strh	r0, [r7, #0x38]
	b	.Lbcfd8
.Lbcd38:
	ldr	r2, =0x131
	add	r5, r7, r2
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	beq	.Lbcd4c
	ldr	r1, =0x884
	mov	r0, #4
	bl	Func_bbabc
.Lbcd4c:
	mov	r3, #0
	strb	r3, [r5]
	b	.Lbd2c0

	.pool_aligned

.Lbcd8c:
	ldr	r3, =0x137
	add	r2, r7, r3
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcda6
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcda6:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2]
	cmp	r3, #4
	ble	.Lbcdb6
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #4
.Lbcdb6:
	ldr	r5, [sp, #0x10]
	ldr	r6, =0x137
	add	r3, r5, r6
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	lsl	r3, r1, #24
	asr	r3, #24
	sub	r2, r3
	lsl	r1, r2, #2
	add	r1, r2
	lsl	r1, #2
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x865
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0x9b
	b	.Lbcfea
.Lbcdde:
	ldr	r1, =0x137
	add	r2, r7, r1
	ldrb	r3, [r2]
	sub	r3, #2
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcdf8
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcdf8:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2]
	cmp	r3, #4
	ble	.Lbce08
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #4
.Lbce08:
	ldr	r5, [sp, #0x10]
	ldr	r6, =0x137
	add	r3, r5, r6
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	lsl	r3, r1, #24
	asr	r3, #24
	sub	r2, r3
	lsl	r1, r2, #2
	add	r1, r2
	lsl	r1, #2
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x865
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0x9b
	b	.Lbcfea
.Lbce30:
	ldr	r1, =0x137
	add	r2, r7, r1
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbce4a
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbce4a:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2]
	cmp	r3, #4
	ble	.Lbce5a
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #4
.Lbce5a:
	ldr	r5, [sp, #0x10]
	ldr	r6, =0x137
	add	r2, r5, r6
	ldrb	r2, [r2]
	lsl	r2, #24
	asr	r2, #24
	lsl	r3, r1, #24
	asr	r3, #24
	sub	r3, r2
	lsl	r1, r3, #2
	add	r1, r3
	lsl	r1, #2
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x866
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0x9b
	b	.Lbcfea
.Lbce84:
	ldr	r1, =0x137
	add	r2, r7, r1
	ldrb	r3, [r2]
	add	r3, #2
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbce9e
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbce9e:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2]
	cmp	r3, #4
	ble	.Lbceae
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #4
.Lbceae:
	ldr	r5, [sp, #0x10]
	ldr	r6, =0x137
	add	r2, r5, r6
	ldrb	r2, [r2]
	lsl	r2, #24
	asr	r2, #24
	lsl	r3, r1, #24
	asr	r3, #24
	sub	r3, r2
	lsl	r1, r3, #2
	add	r1, r3
	lsl	r1, #2
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x866
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0x9b
	b	.Lbcfea
.Lbced8:
	ldr	r1, =0x131
	add	r5, r7, r1
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	beq	.Lbcee6
	b	.Lbd2c0
.Lbcee6:
	ldr	r1, =0x867
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #1
	strb	r3, [r5]
	b	.Lbd2c0
.Lbcef4:
	ldr	r2, =0x131
	add	r5, r7, r2
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	cmp	r3, #1
	ble	.Lbcf02
	b	.Lbd2c0
.Lbcf02:
	ldr	r1, =0x874
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #2
	strb	r3, [r5]
	b	.Lbd2c0
.Lbcf10:
	ldr	r1, =0x868
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #0x9c
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbcfee
.Lbcf20:
	ldr	r1, =0x869
	mov	r0, #4
	bl	Func_bbabc
	ldr	r4, =0x139
	mov	r3, #7
	add	r2, r7, r4
	strb	r3, [r2]
	b	.Lbd2c0
.Lbcf32:
	mov	r5, #0x9d
	ldr	r1, =0x86a
	mov	r0, #4
	lsl	r5, #1
	bl	Func_bbabc
	add	r2, r7, r5
	b	.Lbcfee
.Lbcf42:
	ldr	r6, =0x13b
	ldr	r1, =0x86b
	mov	r0, #4
	bl	Func_bbabc
	add	r2, r7, r6
	b	.Lbcfee
.Lbcf50:
	ldr	r1, =0x86c
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0x9e
	b	.Lbcfea
.Lbcf5c:
	mov	r1, r10
	cmp	r1, #7
	bhi	.Lbcf6c
	ldr	r1, =0x86d
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbcf74
.Lbcf6c:
	ldr	r1, =0x876
	mov	r0, #4
	bl	Func_bbabc
.Lbcf74:
	ldr	r2, =0x13d
	add	r1, r7, r2
	ldrb	r2, [r1]
	mov	r3, #7
	b	.Lbcf9e
.Lbcf7e:
	mov	r3, r10
	cmp	r3, #7
	bhi	.Lbcf8e
	ldr	r1, =0x86d
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbcf96
.Lbcf8e:
	ldr	r1, =0x876
	mov	r0, #4
	bl	Func_bbabc
.Lbcf96:
	ldr	r4, =0x13d
	add	r1, r7, r4
	ldrb	r2, [r1]
	mov	r3, #0x10
.Lbcf9e:
	orr	r3, r2
	strb	r3, [r1]
	b	.Lbd2c0
.Lbcfa4:
	mov	r5, #0x95
	mov	r0, #9
	mov	r1, r10
	lsl	r5, #1
	bl	Func_bbabc
	add	r3, r7, r5
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.Lbcfbc
	ldr	r1, =0x84f
	b	.Lbcfc4
.Lbcfbc:
	ldr	r6, [sp, #0x40]
	cmp	r6, #0xdb
	bne	.Lbcfcc
	ldr	r1, =0x850
.Lbcfc4:
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbcfd4
.Lbcfcc:
	ldr	r1, =0x84c
	mov	r0, #4
	bl	Func_bbabc
.Lbcfd4:
	mov	r3, #0
	strh	r3, [r7, #0x38]
.Lbcfd8:
	mov	r0, r10
	bl	_Func_7822c
	b	.Lbd2c0
.Lbcfe0:
	ldr	r1, =0x86f
	mov	r0, #4
	bl	Func_bbabc
	mov	r0, #0x9f
.Lbcfea:
	lsl	r0, #1
	add	r2, r7, r0
.Lbcfee:
	mov	r3, #7
	strb	r3, [r2]
	b	.Lbd2c0
.Lbcff4:
	ldr	r1, =0x870
	mov	r0, #4
	bl	Func_bbabc
	ldr	r1, =0x13f
	mov	r3, #7
	add	r2, r7, r1
	strb	r3, [r2]
	b	.Lbd2c0
.Lbd006:
	ldr	r3, [sp, #0x48]
	ldr	r4, [sp, #0x4c]
	mov	r2, #0x38
	ldrsh	r6, [r3, r2]
	ldrb	r3, [r4, #3]
	mov	r2, r6
	ldr	r5, [sp, #0x2c]
	cmp	r3, #0x3c
	bne	.Lbd01e
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
.Lbd01e:
	ldr	r1, [sp, #0x48]
	mov	r0, #0x34
	ldrsh	r3, [r1, r0]
	add	r6, r5
	cmp	r6, r3
	ble	.Lbd02e
	mov	r6, r3
	sub	r5, r6, r2
.Lbd02e:
	mov	r1, #0
	mov	r0, #7
	bl	Func_bbabc
	mov	r0, #0
	ldr	r1, [sp, #0x44]
	bl	Func_bbabc
	ldr	r4, [sp, #0x48]
	mov	r2, #0x34
	ldrsh	r3, [r4, r2]
	cmp	r6, r3
	bne	.Lbd052
	ldr	r1, =0x820
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbd062
.Lbd052:
	mov	r1, r5
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x81d
	mov	r0, #4
	bl	Func_bbabc
.Lbd062:
	ldr	r5, [sp, #0x48]
	strh	r6, [r5, #0x38]
	b	.Lbd0b8
.Lbd068:
	ldr	r0, [sp, #0x48]
	mov	r6, #0x3a
	ldrsh	r5, [r0, r6]
	ldr	r6, [sp, #0x2c]
	mov	r1, #0x36
	ldrsh	r3, [r0, r1]
	mov	r2, r5
	add	r5, r6
	cmp	r5, r3
	ble	.Lbd080
	mov	r5, r3
	sub	r6, r5, r2
.Lbd080:
	mov	r1, #0
	mov	r0, #7
	bl	Func_bbabc
	mov	r0, #0
	ldr	r1, [sp, #0x44]
	bl	Func_bbabc
	ldr	r4, [sp, #0x48]
	mov	r2, #0x36
	ldrsh	r3, [r4, r2]
	cmp	r5, r3
	bne	.Lbd0a4
	ldr	r1, =0x821
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbd0b4
.Lbd0a4:
	mov	r1, r6
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x81e
	mov	r0, #4
	bl	Func_bbabc
.Lbd0b4:
	ldr	r6, [sp, #0x48]
	strh	r5, [r6, #0x3a]
.Lbd0b8:
	ldr	r0, [sp, #0x44]
	bl	_Func_7822c
	b	.Lbd2c0

	.pool_aligned

.Lbd128:
	ldr	r0, [sp, #0x2c]
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
	mov	r0, #0x3a
	ldrsh	r3, [r7, r0]
	cmp	r3, r5
	bge	.Lbd13c
	mov	r5, r3
.Lbd13c:
	ldr	r3, [sp, #0x48]
	ldr	r6, [sp, #0x48]
	mov	r2, #0x3a
	ldrsh	r1, [r3, r2]
	mov	r4, #0x36
	ldrsh	r2, [r6, r4]
	add	r3, r1, r5
	cmp	r3, r2
	ble	.Lbd150
	sub	r5, r2, r1
.Lbd150:
	cmp	r5, #0
	bne	.Lbd156
	b	.Lbd2c0
.Lbd156:
	mov	r0, #1
	mov	r1, r5
	bl	Func_bbabc
	mov	r0, r10
	cmp	r0, #7
	bhi	.Lbd16e
	ldr	r1, =0x85f
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbd176
.Lbd16e:
	ldr	r1, =0x85e
	mov	r0, #4
	bl	Func_bbabc
.Lbd176:
	ldr	r0, [sp, #0x44]
	mov	r1, r5
	bl	_Func_783dc
	b	.Lbd2c0
.Lbd180:
	ldr	r1, =0x133
	add	r2, r7, r1
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	ble	.Lbd198
	mov	r4, #0x99
	mov	r3, #0
	lsl	r4, #1
	strb	r3, [r2]
	add	r2, r7, r4
	strb	r3, [r2]
.Lbd198:
	ldr	r5, =0x135
	add	r1, r7, r5
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	ble	.Lbd1b0
	mov	r6, #0x9a
	lsl	r6, #1
	mov	r2, #0
	add	r3, r7, r6
	strb	r2, [r1]
	strb	r2, [r3]
.Lbd1b0:
	ldr	r0, =0x137
	add	r2, r7, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	ble	.Lbd1c8
	mov	r1, #0x9b
	mov	r3, #0
	lsl	r1, #1
	strb	r3, [r2]
	add	r2, r7, r1
	strb	r3, [r2]
.Lbd1c8:
	ldr	r3, =0x147
	add	r2, r7, r3
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	ble	.Lbd1d8
	mov	r3, #0
	strb	r3, [r2]
.Lbd1d8:
	mov	r4, #0x96
	lsl	r4, #1
	ldr	r5, =0x12d
	mov	r2, #0
	add	r3, r7, r4
	mov	r6, #0x97
	strb	r2, [r3]
	ldr	r0, =0x12f
	add	r3, r7, r5
	lsl	r6, #1
	strb	r2, [r3]
	add	r3, r7, r6
	strb	r2, [r3]
	add	r3, r7, r0
	strb	r2, [r3]
	ldr	r1, =0x896
	b	.Lbd236
.Lbd1fa:
	ldr	r1, =0x872
	mov	r0, #4
	bl	Func_bbabc
	mov	r1, #0xa0
	lsl	r1, #1
	add	r2, r7, r1
	b	.Lbd296
.Lbd20a:
	ldr	r2, =0x141
	add	r5, r7, r2
	ldrb	r3, [r5]
	mov	r2, r3
	cmp	r2, #0
	bne	.Lbd224
	ldr	r1, =0x873
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #7
	strb	r3, [r5]
	b	.Lbd2c0
.Lbd224:
	cmp	r2, #1
	bls	.Lbd2c0
	add	r3, #0xff
	strb	r3, [r5]
	mov	r0, #1
	ldrb	r1, [r5]
	bl	Func_bbabc
	ldr	r1, =0x875
.Lbd236:
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbd2c0
.Lbd23e:
	ldr	r1, =0x87d
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #0xa2
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbd2b0
.Lbd24e:
	ldr	r1, =0x87e
	mov	r0, #4
	bl	Func_bbabc
	mov	r4, #0xa4
	lsl	r4, #1
	add	r2, r7, r4
	mov	r3, #1
	mov	r5, r10
	strb	r3, [r2]
	cmp	r5, #7
	bhi	.Lbd2c0
	ldr	r3, [sp, #0x38]
	add	r3, #0x43
	ldrb	r2, [r3]
	mov	r1, #2
	orr	r2, r1
	strb	r2, [r3]
	b	.Lbd2c0
.Lbd274:
	ldr	r6, =0x145
	ldr	r1, =0x87f
	mov	r0, #4
	bl	Func_bbabc
	add	r2, r7, r6
	b	.Lbd296
.Lbd282:
	ldr	r1, =0x881
	mov	r0, #4
	bl	Func_bbabc
	ldr	r0, =0x12b
	add	r2, r7, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	bgt	.Lbd2c0
.Lbd296:
	mov	r3, #1
	strb	r3, [r2]
	b	.Lbd2c0
.Lbd29c:
	ldr	r1, =0x882
	mov	r0, #4
	bl	Func_bbabc
	ldr	r1, =0x12b
	add	r2, r7, r1
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bgt	.Lbd2c0
.Lbd2b0:
	mov	r3, #2
	strb	r3, [r2]
	b	.Lbd2c0
.Lbd2b6:
	mov	r1, #1
	neg	r1, r1
	mov	r0, #4
	bl	Func_bbabc
.Lbd2c0:
	mov	r0, #7
	mov	r1, #0
	bl	Func_bbabc
	mov	r2, #0x38
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.Lbd304
	mov	r3, #0x9e
	lsl	r3, #1
	add	r5, r7, r3
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.Lbd304
	cmp	r3, #6
	bhi	.Lbd304
	ldr	r4, [sp, #0x2c]
	cmp	r4, #0
	ble	.Lbd304
	bl	_Func_79bc4
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lbd304
	strb	r0, [r5]
	mov	r1, r10
	mov	r0, #0
	bl	Func_bbabc
	ldr	r1, =0x883
	mov	r0, #4
	bl	Func_bbabc
.Lbd304:
	ldr	r0, [sp, #0x10]
	bl	Func_2df0
	mov	r0, r10
	bl	_Func_77428
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_1f200
	mov	r5, #0x38
	ldrsh	r3, [r7, r5]
	cmp	r3, #0
	beq	.Lbd32c
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_bbabc
.Lbd32c:
	ldr	r6, [sp, #0x48]
	mov	r0, #0xa0
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbd35c
	bl	_Func_79bc4
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lbd35c
	ldr	r1, [sp, #0x2c]
	cmp	r1, #0
	ble	.Lbd35c
	asr	r0, r1, #2
	cmp	r0, #0
	bne	.Lbd354
	mov	r0, #1
.Lbd354:
	ldr	r2, [sp, #0x50]
	ldr	r3, [r2, #0x60]
	add	r3, r0
	str	r3, [r2, #0x60]
.Lbd35c:
	add	sp, #0x64
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bbb0c

.thumb_func_start Func_bd3c8
	push	{lr}
	cmp	r0, #0x7e
	bne	.Lbd3d2
	mov	r0, #1
	b	.Lbd3de
.Lbd3d2:
	bl	_Func_78b9c
	ldrb	r3, [r0, #9]
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.Lbd3de:
	pop	{r1}
	bx	r1
.func_end Func_bd3c8

.thumb_func_start Func_bd3e4
	push	{r5, lr}
	mov	r5, r9
	push	{r5}
	mov	r3, r9
	sub	sp, #4
	str	r3, [sp]
	mov	r5, r0
	bl	_Func_79bc4
	mov	r3, #0xff
	ldrb	r2, [r5]
	and	r0, r3
	mov	r4, #0
	mov	r1, #0
	cmp	r0, r2
	blt	.Lbd414
.Lbd404:
	add	r1, #1
	cmp	r1, #7
	bgt	.Lbd414
	ldrb	r3, [r5, r1]
	add	r2, r3
	cmp	r0, r2
	bge	.Lbd404
	mov	r4, r1
.Lbd414:
	mov	r0, r4
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_bd3e4

.thumb_func_start Func_bd424
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r1, [sp, #0x18]
	mov	r7, r0
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	_Func_77394
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp, #0xc]
	ldr	r3, =0x129
	mov	r11, r0
	str	r2, [sp, #0x10]
	str	r2, [sp, #8]
	add	r3, r11
	mov	r0, #1
	ldrb	r3, [r3]
	neg	r0, r0
	mov	r10, r0
	cmp	r3, #0
	beq	.Lbd45e
	b	.Lbd792
.Lbd45e:
	ldr	r1, [sp, #0x18]
	cmp	r1, #0
	beq	.Lbd46e
	mov	r2, #6
	ldrsh	r3, [r7, r2]
	cmp	r3, #4
	beq	.Lbd46e
	b	.Lbd792
.Lbd46e:
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r11
	ldrb	r0, [r3]
	bl	_Func_773d8
	str	r0, [sp, #0x14]
	ldr	r1, [sp, #0x14]
	mov	r3, #0x90
	lsl	r3, #1
	add	r0, #0x36
	add	r1, #0x37
	add	r3, r11
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r8, r3
.Lbd48e:
	ldr	r2, [sp, #4]
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #6
	bhi	.Lbd534
	ldr	r2, =.Lbd4a0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbd4a0:
	.word	.Lbd4bc
	.word	.Lbd4c4
	.word	.Lbd4cc
	.word	.Lbd4da
	.word	.Lbd504
	.word	.Lbd530
	.word	.Lbd534
.Lbd4bc:
	add	r3, sp, #0x1c
	ldr	r0, =.Lc2b80
	mov	r9, r3
	b	.Lbd4d2
.Lbd4c4:
	add	r1, sp, #0x1c
	ldr	r0, =.Lc2b88
	mov	r9, r1
	b	.Lbd4d2
.Lbd4cc:
	add	r2, sp, #0x1c
	ldr	r0, =.Lc2b90
	mov	r9, r2
.Lbd4d2:
	bl	Func_bd3e4
	mov	r10, r0
	b	.Lbd534
.Lbd4da:
	mov	r3, r8
	ldr	r2, [r3]
	lsl	r3, r2, #31
	cmp	r3, #0
	bne	.Lbd508
	bl	_Func_79bc4
	mov	r1, r8
	mov	r3, #7
	ldrb	r2, [r1]
	and	r0, r3
	mov	r3, #0xf
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	mov	r2, #1
	orr	r3, r0
	orr	r3, r2
	strb	r3, [r1]
	ldr	r2, [r1]
	b	.Lbd508
.Lbd504:
	mov	r3, r8
	ldr	r2, [r3]
.Lbd508:
	lsl	r3, r2, #28
	ldr	r0, [sp, #0x18]
	lsr	r3, #29
	mov	r10, r3
	cmp	r0, #0
	beq	.Lbd534
	mov	r2, r10
	mov	r3, #7
	add	r2, #1
	and	r2, r3
	mov	r3, r8
	ldrb	r1, [r3]
	mov	r3, #0xf
	neg	r3, r3
	lsl	r2, #1
	and	r3, r1
	orr	r3, r2
	mov	r0, r8
	strb	r3, [r0]
	b	.Lbd534
.Lbd530:
	mov	r1, #1
	add	r10, r1
.Lbd534:
	ldr	r2, [sp]
	ldrb	r6, [r2]
	mov	r3, r10
	asr	r6, r3
	mov	r1, r10
	mov	r3, #1
	and	r6, r3
	ldr	r2, [sp, #0x14]
	lsl	r3, r1, #1
	add	r3, #0x38
	ldr	r0, [sp, #0x10]
	ldrh	r3, [r2, r3]
	and	r6, r0
	mov	r9, r3
	mov	r3, #4
	strh	r3, [r7, #6]
	cmp	r6, #0
	beq	.Lbd5be
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	beq	.Lbd5be
	mov	r1, r11
	add	r1, #0xd8
	ldrh	r2, [r1]
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r3, #0
	bne	.Lbd586
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r3, #0
	bne	.Lbd586
	mov	r3, #2
	strh	r3, [r7, #6]
	ldr	r3, =0x1fd
	strh	r3, [r7, #8]
	b	.Lbd792
.Lbd586:
	cmp	r6, #0
	beq	.Lbd5ba
	ldrh	r0, [r1]
	bl	_Func_78414
	mov	r5, r0
	ldrb	r3, [r5, #0xc]
	cmp	r3, #1
	bne	.Lbd5b4
	ldrh	r0, [r5, #0x28]
	bl	_Func_78b9c
	mov	r3, #2
	ldrh	r5, [r5, #0x28]
	strh	r3, [r7, #6]
	ldrb	r3, [r0, #1]
	mov	r2, #0
	mov	r9, r5
	strh	r2, [r7, #8]
	cmp	r3, #2
	bgt	.Lbd5b4
	cmp	r3, #1
	bge	.Lbd5b6
.Lbd5b4:
	mov	r6, #0
.Lbd5b6:
	cmp	r6, #0
	bne	.Lbd5be
.Lbd5ba:
	mov	r0, #0
	str	r0, [sp, #0x10]
.Lbd5be:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	bne	.Lbd5c6
	b	.Lbd766
.Lbd5c6:
	mov	r0, r9
	bl	_Func_78b9c
	mov	r5, r0
	ldrb	r3, [r5, #3]
	cmp	r3, #0x2f
	beq	.Lbd5ee
	cmp	r3, #0x2f
	bgt	.Lbd5de
	cmp	r3, #0x2e
	beq	.Lbd5e4
	b	.Lbd606
.Lbd5de:
	cmp	r3, #0x31
	beq	.Lbd5f8
	b	.Lbd606
.Lbd5e4:
	mov	r3, #3
	strh	r3, [r7, #6]
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	b	.Lbd600
.Lbd5ee:
	mov	r3, #7
	strh	r3, [r7, #6]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	b	.Lbd600
.Lbd5f8:
	mov	r3, #0x63
	strh	r3, [r7, #6]
	mov	r1, #0
	ldrsh	r0, [r7, r1]
.Lbd600:
	bl	Func_b9a70
	strh	r0, [r7, #0xa]
.Lbd606:
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.Lbd61e
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldrh	r2, [r7, #6]
	cmp	r3, #3
	beq	.Lbd620
	cmp	r3, #7
	beq	.Lbd61c
	b	.Lbd792
.Lbd61c:
	b	.Lbd620
.Lbd61e:
	ldrh	r2, [r7, #6]
.Lbd620:
	mov	r1, #0x80
	lsl	r3, r2, #16
	lsl	r1, #10
	cmp	r3, r1
	beq	.Lbd69a
	mov	r0, r9
	bl	Func_bd3c8
	cmp	r0, #0
	beq	.Lbd674
	mov	r3, #1
	mov	r2, r9
	mov	r1, r11
	strh	r3, [r7, #6]
	strh	r2, [r7, #8]
	mov	r0, #0x3a
	ldrsh	r3, [r1, r0]
	ldrb	r2, [r5, #9]
	cmp	r2, r3
	ble	.Lbd658
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbd658
	b	.Lbd770
.Lbd658:
	ldr	r3, =0x13d
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbd698
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #2
	bne	.Lbd672
	b	.Lbd770
.Lbd672:
	b	.Lbd698
.Lbd674:
	ldrh	r2, [r7, #6]
	b	.Lbd69a

	.pool_aligned

.Lbd698:
	ldr	r2, =1
.Lbd69a:
	lsl	r3, r2, #16
	asr	r2, r3, #16
	cmp	r2, #0x63
	bne	.Lbd6ae
	mov	r3, #0xa4
	lsl	r3, #1
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbd770
.Lbd6ae:
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	beq	.Lbd6c4
	cmp	r2, #3
	beq	.Lbd770
	cmp	r2, #7
	beq	.Lbd770
	b	.Lbd6c4

	.pool_aligned

.Lbd6c4:
	cmp	r2, #4
	bne	.Lbd6d6
	mov	r0, r9
	mov	r1, r9
	mov	r3, #0
	strh	r0, [r7, #8]
	cmp	r1, #1
	bne	.Lbd6d6
	strh	r3, [r7, #6]
.Lbd6d6:
	ldrb	r3, [r5, #8]
	strh	r3, [r7, #0xc]
	ldrb	r3, [r5]
	cmp	r3, #2
	beq	.Lbd6f2
	cmp	r3, #2
	bgt	.Lbd6ea
	cmp	r3, #1
	beq	.Lbd722
	b	.Lbd758
.Lbd6ea:
	cmp	r3, #3
	beq	.Lbd74c
	cmp	r3, #4
	bne	.Lbd758
.Lbd6f2:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r1, r5
	bl	Func_bae40
	mov	r3, #2
	neg	r3, r3
	cmp	r0, r3
	bne	.Lbd712
	ldrh	r3, [r7]
	mov	r0, #0
	cmp	r3, #7
	bhi	.Lbd70e
	mov	r0, #1
.Lbd70e:
	bl	Func_bad7c
.Lbd712:
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lbd766
	mov	r2, #0
	strh	r0, [r7, #0xa]
	str	r2, [sp, #8]
	b	.Lbd766
.Lbd722:
	mov	r1, r5
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	bl	Func_bae40
	mov	r1, #2
	neg	r1, r1
	cmp	r0, r1
	bne	.Lbd742
	ldrh	r3, [r7]
	mov	r0, #0
	cmp	r3, #7
	bhi	.Lbd73e
	mov	r0, #1
.Lbd73e:
	bl	Func_bad7c
.Lbd742:
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lbd766
	b	.Lbd760
.Lbd74c:
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	Func_b9a70
	strh	r0, [r7, #0xa]
	b	.Lbd766
.Lbd758:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	bl	Func_b9a70
.Lbd760:
	mov	r3, #0
	strh	r0, [r7, #0xa]
	str	r3, [sp, #8]
.Lbd766:
	ldr	r0, [sp, #0x18]
	cmp	r0, #0
	bne	.Lbd770
	mov	r1, #0
	str	r1, [sp, #8]
.Lbd770:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	beq	.Lbd784
	ldr	r3, [sp, #0xc]
	cmp	r3, #0x10
	ble	.Lbd784
	mov	r3, #3
	mov	r0, #0
	strh	r3, [r7, #6]
	str	r0, [sp, #8]
.Lbd784:
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #8]
	add	r1, #1
	str	r1, [sp, #0xc]
	cmp	r2, #0
	beq	.Lbd792
	b	.Lbd48e
.Lbd792:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bd424

.thumb_func_start Func_bd7a4
	push	{lr}
	mov	r2, #0x84
	ldr	r3, =REG_DMA3SAD
	mov	r0, #0
	mov	r1, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x84
	mov	r0, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x84
	mov	r0, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_c4
	ldr	r0, [r3]
	bl	_call_via_r0
	pop	{r0}
	bx	r0
.func_end Func_bd7a4

.thumb_func_start Func_bd7dc
	push	{lr}
	ldr	r3, =iwram_1e74
	ldr	r1, [r3]
	mov	r3, #0x80
	lsl	r3, #4
	add	r2, r1, r3
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.Lbd7fe
	mov	r3, #1
	str	r3, [r2]
	cmp	r0, #0
	beq	.Lbd7fe
	mov	r2, #0x82
	lsl	r2, #4
	add	r3, r1, r2
	str	r0, [r3]
.Lbd7fe:
	pop	{r0}
	bx	r0
.func_end Func_bd7dc

.thumb_func_start Func_bd808
	push	{lr}
	ldr	r3, =iwram_1e74
	ldr	r1, =0x7fc
	ldr	r3, [r3]
	mov	r4, #0
	add	r2, r3, r1
	add	r1, #8
	str	r4, [r2]
	add	r2, r3, r1
	add	r1, #4
	str	r4, [r2]
	add	r2, r3, r1
	str	r0, [r2]
	mov	r2, #0x80
	lsl	r2, #4
	add	r1, r3, r2
	mov	r2, #2
	str	r2, [r1]
	ldr	r1, =0x655
	add	r3, r1
	mov	r1, #0xc8
	strb	r4, [r3]
	lsl	r1, #4
	ldr	r0, =Func_bd898
	bl	Func_41d8
	pop	{r1}
	bx	r1
.func_end Func_bd808

.thumb_func_start Func_bd850
	push	{lr}
	mov	r12, r3
	mov	r3, r9
	push	{r3}
	mov	r3, r12
	sub	sp, #4
	mov	r3, r9
	str	r3, [sp]
	ldrb	r3, [r0, #0x1c]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r2, [r3, #2]
	ldr	r3, =0x6010000
	add	r2, r3
	mov	r3, r0
	add	r3, #0x20
	add	r0, #0x21
	ldrb	r1, [r3]
	ldrb	r3, [r0]
	mov	r0, r2
	mul	r1, r3
	ldr	r3, =Func_8d4
	bl	_call_via_r3
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r0}
	bx	r0
.func_end Func_bd850

.thumb_func_start Func_bd898
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	sub	sp, #0x2c
	mov	r1, #0xd7
	mov	r2, #0x80
	str	r3, [sp, #8]
	lsl	r1, #3
	lsl	r2, #4
	add	r7, r3, r1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.Lbd8c2
	b	.Lbdfb4
.Lbd8c2:
	mov	r3, #0xa4
	lsl	r3, #1
	add	r5, r7, r3
	ldr	r3, [r5]
	cmp	r3, #4
	bne	.Lbd8d0
	b	.Lbdfb4
.Lbd8d0:
	cmp	r3, #1
	bne	.Lbd91e
	ldr	r2, =0x655
	mov	r4, #0xa0
	ldr	r1, [sp, #8]
	lsl	r4, #1
	add	r3, r1, r2
	add	r6, r7, r4
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, [r6]
	cmp	r3, r2
	bge	.Lbd918
	add	r4, #4
	mov	r1, #0xa6
	mov	r2, #0
	add	r3, r7, r4
	lsl	r1, #1
	str	r2, [r3]
	add	r4, #0xc
	add	r3, r7, r1
	str	r2, [r3]
	add	r3, r7, r4
	str	r2, [r3]
	ldr	r1, [sp, #8]
	ldr	r2, =0x654
	add	r0, r1, r2
	ldr	r1, [r6]
	bl	Func_bbb0c
	ldr	r3, [r6]
	add	r3, #1
	str	r3, [r6]
	mov	r3, #2
	str	r3, [r5]
	b	.Lbd8c2
.Lbd918:
	mov	r3, #4
	str	r3, [r5]
	b	.Lbd8c2
.Lbd91e:
	cmp	r3, #2
	beq	.Lbd924
	b	.Lbdb7a
.Lbd924:
	mov	r4, #0xa6
	mov	r1, #0xa2
	lsl	r4, #1
	lsl	r1, #1
	add	r3, r7, r4
	add	r2, r7, r1
	ldr	r5, [r3]
	ldr	r3, [r2]
	cmp	r5, r3
	blt	.Lbd93a
	b	.Lbdb66
.Lbd93a:
	mov	r6, r5
.Lbd93c:
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lbd94e
	sub	r3, #1
	str	r3, [r2]
	b	.Lbdfb4
.Lbd94e:
	ldrb	r3, [r7, r6]
	cmp	r3, #0xe
	bls	.Lbd956
	b	.Lbdb3e
.Lbd956:
	ldr	r2, =.Lbd960
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbd960:
	.word	.Lbd9b6
	.word	.Lbd9c4
	.word	.Lbd9d2
	.word	.Lbd9de
	.word	.Lbd9fa
	.word	.Lbda16
	.word	.Lbd9f0
	.word	.Lbda30
	.word	.Lbda42
	.word	.Lbda82
	.word	.Lbdb02
	.word	.Lbdb10
	.word	.Lbda36
	.word	.Lbd9a8
	.word	.Lbd99c
.Lbd99c:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	bl	_Func_f9080
	b	.Lbdb3e
.Lbd9a8:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r1, [r7, r3]
	mov	r0, r7
	bl	Func_bb928
	b	.Lbdb3e
.Lbd9b6:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	mov	r1, #1
	bl	_Func_19908
	b	.Lbdb3e
.Lbd9c4:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	mov	r1, #5
	bl	_Func_19908
	b	.Lbdb3e
.Lbd9d2:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	ldr	r3, =0x1ff
	mov	r1, #2
	b	.Lbd9e8
.Lbd9de:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	ldr	r3, =0x3fff
	mov	r1, #4
.Lbd9e8:
	and	r0, r3
	bl	_Func_19908
	b	.Lbdb3e
.Lbd9f0:
	ldr	r3, =iwram_1ee4
	ldr	r2, [r3]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.Lbdb3e
.Lbd9fa:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	cmp	r0, #0
	blt	.Lbda08
	bl	_Func_174f8
.Lbda08:
	mov	r4, #0xa4
	lsl	r4, #1
	add	r2, r7, r4
	mov	r3, #3
	str	r3, [r2]
	ldr	r2, =iwram_1af8
	b	.Lbda7c
.Lbda16:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	cmp	r0, #0
	blt	.Lbda24
	bl	_Func_174f8
.Lbda24:
	mov	r1, #0xa4
	lsl	r1, #1
	add	r2, r7, r1
	mov	r3, #0xd
	str	r3, [r2]
	b	.Lbdb3e
.Lbda30:
	bl	_Func_198dc
	b	.Lbdb3e
.Lbda36:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	bl	Func_bb8e8
	b	.Lbdb3e
.Lbda42:
	mov	r2, #0xb4
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	cmp	r0, #0
	ble	.Lbda52
	bl	_Func_f9080
.Lbda52:
	mov	r3, #0xb2
	lsl	r3, #1
	add	r2, r7, r3
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	str	r0, [r2]
	bl	Func_b7dd0
	mov	r1, #5
	ldr	r0, [r0]
	bl	_Func_c300
	mov	r4, #0xa4
	lsl	r4, #1
	mov	r1, #0xa8
	add	r2, r7, r4
	mov	r3, #0xa
	lsl	r1, #1
	str	r3, [r2]
	add	r2, r7, r1
.Lbda7c:
	mov	r3, #0
	str	r3, [r2]
	b	.Lbdb3e
.Lbda82:
	lsl	r3, r6, #2
	add	r3, #0x40
	mov	r2, #0xb2
	lsl	r2, #1
	ldr	r0, [r7, r3]
	add	r5, r7, r2
	mov	r4, #0xb6
	lsl	r4, #1
	str	r0, [r5]
	add	r3, r7, r4
	ldr	r1, [r3]
	bl	Func_c24f0
	ldr	r0, [r5]
	bl	Func_bb588
	ldr	r0, [r5]
	bl	_Func_77394
	mov	r5, #0
	mov	r6, r0
	b	.Lbdaca
.Lbdaae:
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lbdac2
	mov	r1, #4
	bl	_Func_ba30
	b	.Lbdac8
.Lbdac2:
	mov	r1, #5
	bl	_Func_ba30
.Lbdac8:
	add	r5, #1
.Lbdaca:
	mov	r2, #0xb2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	Func_b7dd0
	mov	r1, r5
	ldr	r0, [r0]
	bl	Func_b7f70
	cmp	r0, #0
	bne	.Lbdaae
	mov	r4, #0x95
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lbdb3e
	mov	r1, #0xa4
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0xb
	str	r2, [r3]
	mov	r2, #0xa8
	lsl	r2, #1
	add	r3, r7, r2
	str	r0, [r3]
	b	.Lbdb3e
.Lbdb02:
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_1f200
	b	.Lbdb3e
.Lbdb10:
	lsl	r5, r6, #2
	add	r5, #0x40
	ldr	r0, [r7, r5]
	bl	Func_b7dd0
	mov	r1, r0
	ldr	r0, [r7, r5]
	bl	Func_b78e4
	ldr	r0, [r7, r5]
	bl	Func_b7dd0
	mov	r6, r0
	ldr	r0, [r7, r5]
	bl	Func_b6cd0
	mov	r1, r0
	ldr	r0, [r6]
	bl	Func_ba918
	ldr	r0, [r7, r5]
	bl	Func_b7aac
.Lbdb3e:
	mov	r3, #0xa6
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, [r2]
	mov	r4, #0xa2
	add	r5, r3, #1
	str	r5, [r2]
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r3, [r3]
	cmp	r5, r3
	bge	.Lbdb66
	mov	r1, #0xa4
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	mov	r6, r5
	cmp	r3, #2
	bne	.Lbdb66
	b	.Lbd93c
.Lbdb66:
	mov	r3, #0xa4
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, [r2]
	cmp	r3, #2
	beq	.Lbdb74
	b	.Lbd8c2
.Lbdb74:
	mov	r3, #1
	str	r3, [r2]
	b	.Lbd8c2
.Lbdb7a:
	cmp	r3, #3
	beq	.Lbdb82
	cmp	r3, #0xd
	bne	.Lbdbe0
.Lbdb82:
	bl	_Func_17364
	cmp	r0, #0
	bne	.Lbdb8c
	b	.Lbdfb4
.Lbdb8c:
	ldr	r3, [r5]
	cmp	r3, #0xd
	bne	.Lbdb9e
	mov	r4, #0xa8
	mov	r3, #2
	lsl	r4, #1
	str	r3, [r5]
	add	r2, r7, r4
	b	.Lbdd1c
.Lbdb9e:
	mov	r1, #0xb0
	mov	r3, #5
	lsl	r1, #1
	str	r3, [r5]
	add	r2, r7, r1
	sub	r3, #6
	str	r3, [r2]
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	str	r3, [r2]
	b	.Lbd8c2

	.pool_aligned

.Lbdbe0:
	cmp	r3, #5
	beq	.Lbdbe6
	b	.Lbdd2c
.Lbdbe6:
	ldr	r2, =iwram_1e40
	ldr	r3, [r2]
	mov	r2, #7
	lsr	r3, #2
	ldr	r1, =Data_c3734
	and	r3, r2
	lsl	r3, #7
	add	r3, r1
	mov	r10, r3
	ldr	r3, =iwram_1ee4
	mov	r4, #0xaa
	ldr	r3, [r3]
	lsl	r4, #1
	add	r4, r7
	mov	r9, r4
	ldr	r4, [r3]
	ldr	r3, [r3, #4]
	mov	r2, #0xb0
	str	r3, [sp, #4]
	lsl	r2, #1
	add	r6, r7, r2
	mov	r11, r4
	ldr	r3, [r6]
	mov	r4, #1
	mov	r1, #0
	neg	r4, r4
	mov	r8, r1
	cmp	r3, r4
	bne	.Lbdc26
	ldr	r1, [sp, #8]
	ldr	r3, [r1, #0x54]
	str	r3, [r6]
.Lbdc26:
	ldr	r5, =REG_WINOUT
	bl	_Func_198dc
	mov	r0, r5
	mov	r1, #4
	bl	Func_39fc
	mov	r0, r5
	mov	r1, #0x10
	bl	Func_393c
	mov	r3, #0xa0
	mov	r2, r9
	lsl	r3, #8
	str	r3, [r2, #4]
	mov	r3, r8
	str	r3, [r2, #8]
	mov	r1, r10
	ldr	r0, [r6]
	bl	Func_40d0
	ldr	r3, .Lbdc84	@ 0x3ff
	mov	r4, r9
	ldrh	r2, [r4, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r1, r9
	strh	r3, [r1, #8]
	ldr	r4, [sp, #4]
	mov	r3, r11
	ldrh	r2, [r3, #0xc]
	ldrh	r3, [r4, #4]
	lsl	r2, #3
	lsr	r3, #8
	add	r2, r3
	add	r2, #4
	mov	r8, r2
	ldr	r3, .Lbdc88	@ 0x1ff
	mov	r1, r8
	and	r1, r3
	mov	r3, r9
	ldrh	r2, [r3, #6]
	ldr	r3, =0xfffffe00
	and	r3, r2
	b	.Lbdca4

	.align	2, 0
.Lbdc84:
	.word	0x3ff
.Lbdc88:
	.word	0x1ff
	.pool

.Lbdca4:
	orr	r3, r1
	ldr	r1, =iwram_1e40
	ldr	r0, [r1]
	mov	r4, r9
	strh	r3, [r4, #6]
	lsl	r0, #12
	bl	Func_2322
	cmp	r0, #0
	bge	.Lbdcbc
	ldr	r2, =0x7fff
	add	r0, r2
.Lbdcbc:
	mov	r4, r11
	ldrh	r3, [r4, #0xe]
	ldr	r1, [sp, #4]
	asr	r2, r0, #15
	lsl	r3, #3
	add	r2, r3
	ldrh	r3, [r1, #6]
	lsr	r3, #8
	add	r3, r2
	ldr	r0, =iwram_1ae8
	add	r3, #6
	mov	r2, r9
	strb	r3, [r2, #4]
	ldr	r3, [r0]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lbdd06
	ldr	r3, =iwram_1af8
	ldr	r1, =0x303
	ldr	r3, [r3]
	and	r3, r1
	cmp	r3, #0
	bne	.Lbdd06
	mov	r4, #0xa8
	ldr	r3, =iwram_1800
	lsl	r4, #1
	add	r2, r7, r4
	ldr	r3, [r3]
	ldr	r2, [r2]
	sub	r3, r2
	cmp	r3, #0xa
	bls	.Lbdd22
	ldr	r3, [r0]
	and	r3, r1
	cmp	r3, #0
	beq	.Lbdd22
.Lbdd06:
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, #0xa4
	lsl	r1, #1
	add	r2, r7, r1
	mov	r3, #2
	str	r3, [r2]
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
.Lbdd1c:
	mov	r3, #0
	str	r3, [r2]
	b	.Lbd8c2
.Lbdd22:
	mov	r0, r9
	mov	r1, #0xf0
	bl	Func_3dec
	b	.Lbdfb4
.Lbdd2c:
	cmp	r3, #0xa
	bne	.Lbddb8
	mov	r4, #0xa8
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lbdd96
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lbdd6e
	add	r1, sp, #0x1c
	mov	r9, r1
	mov	r2, r9
	mov	r3, #0xff
	strh	r3, [r2]
	add	r3, #0x65
	add	r5, r7, r3
	ldr	r0, [r5]
	bl	Func_b7dd0
	mov	r6, r0
	ldr	r0, [r5]
	bl	Func_b6cd0
	mov	r1, r0
	ldr	r0, [r6]
	bl	Func_ba918
	b	.Lbdd90
.Lbdd6e:
	mov	r1, #0xb2
	lsl	r1, #1
	mov	r4, #0x1c
	add	r3, r7, r1
	add	r4, sp
	ldr	r0, [r3]
	mov	r9, r4
	mov	r2, r9
	mov	r3, #0xff
	strh	r0, [r2]
	strh	r3, [r4, #2]
	bl	Func_b7dd0
	mov	r1, #7
	ldr	r0, [r0]
	bl	Func_ba918
.Lbdd90:
	mov	r0, r9
	bl	_Func_2281c
.Lbdd96:
	mov	r2, #0xa8
	lsl	r2, #1
	add	r1, r7, r2
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #8
	bgt	.Lbdda8
	b	.Lbdfb4
.Lbdda8:
	mov	r4, #0xa4
	lsl	r4, #1
	add	r3, r7, r4
	mov	r2, #2
	str	r2, [r3]
	mov	r3, #0
	str	r3, [r1]
	b	.Lbd8c2
.Lbddb8:
	cmp	r3, #0xb
	beq	.Lbddbe
	b	.Lbd8c2
.Lbddbe:
	mov	r1, #0xa8
	lsl	r1, #1
	add	r5, r7, r1
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lbddd2
	mov	r2, #0x80
	lsl	r2, #3
	cmp	r3, r2
	blt	.Lbdeca
.Lbddd2:
	mov	r4, #6
	mov	r10, r4
	cmp	r3, #0
	bne	.Lbde1c
	mov	r1, #0xb6
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lbde1c
	mov	r2, #0xb2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	_Func_77394
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_c2368
	cmp	r0, #0
	blt	.Lbde10
	sub	r0, #1
	cmp	r0, #0
	bge	.Lbde0a
	mov	r0, #0
.Lbde0a:
	add	r0, #0x92
	bl	_Func_f9080
.Lbde10:
	mov	r4, #0xa8
	lsl	r4, #1
	mov	r3, #0x80
	add	r2, r7, r4
	lsl	r3, #3
	str	r3, [r2]
.Lbde1c:
	mov	r1, #0xa8
	lsl	r1, #1
	add	r2, r7, r1
	ldr	r3, [r2]
	ldr	r4, =0x41d
	cmp	r3, r4
	ble	.Lbde2e
	mov	r3, #0
	str	r3, [r2]
.Lbde2e:
	cmp	r3, #0
	bne	.Lbde54
	mov	r1, #0xb2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	_Func_77394
	mov	r2, #0x94
	lsl	r2, #1
	add	r0, r2
	ldrb	r0, [r0]
	bl	Func_c2368
	cmp	r0, #0
	blt	.Lbde54
	add	r0, #0x92
	bl	_Func_f9080
.Lbde54:
	mov	r4, #0xa8
	lsl	r4, #1
	add	r3, r7, r4
	mov	r1, #0x80
	ldr	r3, [r3]
	lsl	r1, #3
	cmp	r3, r1
	blt	.Lbde7c
	ldr	r2, =0xfffffc00
	add	r0, r3, r2
	cmp	r0, #0
	bge	.Lbde70
	ldr	r4, =0xfffffc07
	add	r0, r3, r4
.Lbde70:
	asr	r0, #3
	mov	r1, #5
	bl	Func_b1c_from_thumb
	add	r0, #1
	mov	r10, r0
.Lbde7c:
	mov	r1, r10
	cmp	r1, #6
	beq	.Lbde94
	mov	r2, #0xa8
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lbde94
	b	.Lbdfa2
.Lbde94:
	mov	r3, #0xff
	mov	r6, #0
	add	r5, sp, #0xc
	mov	r8, r3
	b	.Lbdeb0
.Lbde9e:
	ldr	r2, [r0, #0x28]
	ldrb	r3, [r2, #0x16]
	mov	r1, r8
	mov	r4, r10
	orr	r3, r1
	stmia	r5!, {r0}
	strb	r4, [r2, #5]
	strb	r3, [r2, #0x16]
	add	r6, #1
.Lbdeb0:
	mov	r2, #0xb2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	Func_b7dd0
	mov	r1, r6
	ldr	r0, [r0]
	bl	Func_b7f70
	cmp	r0, #0
	bne	.Lbde9e
	b	.Lbdfa2
.Lbdeca:
	cmp	r3, #4
	bne	.Lbdede
	mov	r4, #0xb2
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r0, [r3]
	bl	Func_bac6c
	ldr	r3, [r5]
	b	.Lbdfb0
.Lbdede:
	cmp	r3, #4
	ble	.Lbdfb0
	mov	r1, #0xb2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	Func_b7dd0
	mov	r3, #1
	mov	r6, r0
	mov	r2, #0
	add	r5, sp, #0xc
	strh	r3, [r6, #0x2a]
	b	.Lbdefe
.Lbdefa:
	stmia	r5!, {r0}
	add	r2, #1
.Lbdefe:
	mov	r1, r2
	ldr	r0, [r6]
	str	r2, [sp]
	bl	Func_b7f70
	ldr	r2, [sp]
	cmp	r0, #0
	bne	.Lbdefa
	mov	r4, #0xa8
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r3, [r3]
	mov	r1, #0x14
	lsl	r3, #2
	neg	r1, r1
	add	r1, r3
	mov	r8, r1
	cmp	r1, #0x7f
	ble	.Lbdf60
	cmp	r2, #0
	ble	.Lbdf3e
	add	r6, sp, #0xc
	mov	r5, r2
.Lbdf2c:
	add	r2, sp, #0x2c
	ldmia	r6!, {r0}
	mov	r9, r2
	mov	r1, #0
	sub	r5, #1
	bl	Func_bd850
	cmp	r5, #0
	bne	.Lbdf2c
.Lbdf3e:
	mov	r4, #0xb2
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r0, [r3]
	bl	Func_b7e60
	mov	r1, #0xa4
	lsl	r1, #1
	add	r2, r7, r1
	mov	r3, #2
	str	r3, [r2]
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0
	str	r3, [r2]
	b	.Lbdfb4
.Lbdf60:
	cmp	r2, #0
	ble	.Lbdfa2
	mov	r4, #0x13
	mov	r1, #0x12
	neg	r4, r4
	neg	r1, r1
	add	r4, r3
	add	r1, r3
	sub	r3, #0x11
	mov	r11, r4
	mov	r9, r1
	mov	r10, r3
	mov	r6, r2
	add	r5, sp, #0xc
.Lbdf7c:
	ldr	r0, [r5]
	mov	r1, r8
	bl	_Func_be70
	ldr	r0, [r5]
	mov	r1, r11
	bl	_Func_be70
	ldr	r0, [r5]
	mov	r1, r9
	bl	_Func_be70
	sub	r6, #1
	ldmia	r5!, {r0}
	mov	r1, r10
	bl	_Func_be70
	cmp	r6, #0
	bne	.Lbdf7c
.Lbdfa2:
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	b	.Lbdfb4
.Lbdfb0:
	add	r3, #1
	str	r3, [r5]
.Lbdfb4:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_bd898

.thumb_func_start Func_bdfec
	ldr	r3, =iwram_1e74
	mov	r0, #0x80
	ldr	r2, [r3]
	lsl	r0, #4
	mov	r1, #0
	add	r3, r2, r0
	sub	r0, #4
	str	r1, [r3]
	add	r3, r2, r0
	add	r0, #8
	str	r1, [r3]
	add	r3, r2, r0
	add	r0, #4
	str	r1, [r3]
	add	r3, r2, r0
	sub	r0, #0x10
	str	r1, [r3]
	add	r3, r2, r0
	str	r1, [r3]
	mov	r3, #0x82
	lsl	r3, #4
	add	r0, r2, r3
	mov	r3, #0x86
	str	r3, [r0]
	ldr	r0, =0x824
	add	r2, r0
	str	r1, [r2]
	bx	lr
.func_end Func_bdfec

.thumb_func_start Func_be02c
	push	{r5, lr}
	ldr	r3, =iwram_1e74
	ldr	r1, [r3]
	mov	r3, #0x80
	lsl	r3, #4
	add	r2, r1, r3
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.Lbe042
	mov	r3, #1
	str	r3, [r2]
.Lbe042:
	cmp	r3, #4
	beq	.Lbe058
	mov	r3, #0x80
	lsl	r3, #4
	add	r5, r1, r3
.Lbe04c:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r5]
	cmp	r3, #4
	bne	.Lbe04c
.Lbe058:
	ldr	r0, =Func_bd898
	bl	Func_4278
	bl	Func_bdfec
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_be02c

.thumb_func_start Func_be070
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0x10
	mov	r0, #1
	cmp	r6, #7
	bls	.Lbe07e
	mov	r0, #2
.Lbe07e:
	mov	r5, sp
	mov	r1, r5
	bl	Func_b6c08
	mov	r2, #0
	cmp	r2, r0
	bge	.Lbe0a2
	ldrh	r3, [r5]
	cmp	r3, r6
	beq	.Lbe0a2
	mov	r1, r5
.Lbe094:
	add	r2, #1
	cmp	r2, r0
	bge	.Lbe0a2
	add	r1, #2
	ldrh	r3, [r1]
	cmp	r3, r6
	bne	.Lbe094
.Lbe0a2:
	mov	r3, r2
	eor	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_be070

.thumb_func_start Func_be0b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r1, #0
	sub	sp, #0x14
	mov	r11, r1
	mov	r0, #1
	cmp	r5, #7
	bls	.Lbe0d4
	mov	r0, #2
.Lbe0d4:
	add	r2, sp, #4
	mov	r9, r2
	mov	r1, r9
	bl	Func_b6c08
	mov	r7, r0
	mov	r0, #0
	cmp	r5, #7
	bls	.Lbe0e8
	mov	r0, #1
.Lbe0e8:
	bl	_Func_77330
	add	r0, #8
	mov	r8, r0
	cmp	r6, #0
	beq	.Lbe102
	mov	r2, #0
	add	r3, r6, #3
	mov	r12, r6
.Lbe0fa:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.Lbe0fa
.Lbe102:
	mov	r2, #0x80
	lsl	r2, #1
	mov	r3, #0
	add	r2, r8
	mov	r10, r3
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lbe176
	mov	r1, #0
	str	r2, [sp]
	mov	r12, r9
	mov	r5, r8
	mov	r14, r1
.Lbe11c:
	mov	r2, #1
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	neg	r2, r2
	cmp	r3, r2
	bne	.Lbe164
	mov	r4, #0
	cmp	r4, r7
	bge	.Lbe14c
	mov	r3, r12
	ldrh	r2, [r3]
	ldrb	r3, [r5, #2]
	cmp	r2, r3
	beq	.Lbe14c
	mov	r1, r5
	mov	r0, r9
.Lbe13c:
	add	r4, #1
	cmp	r4, r7
	bge	.Lbe14c
	add	r0, #2
	ldrh	r2, [r0]
	ldrb	r3, [r1, #2]
	cmp	r2, r3
	bne	.Lbe13c
.Lbe14c:
	cmp	r4, r7
	beq	.Lbe164
	cmp	r6, #0
	beq	.Lbe160
	mov	r3, r8
	mov	r1, r14
	ldrb	r2, [r1, r3]
	ldrb	r3, [r6, r2]
	add	r3, #1
	strb	r3, [r6, r2]
.Lbe160:
	mov	r1, #1
	add	r11, r1
.Lbe164:
	ldr	r1, [sp]
	mov	r3, #1
	add	r10, r3
	ldr	r3, [r1]
	mov	r2, #4
	add	r5, #4
	add	r14, r2
	cmp	r10, r3
	bne	.Lbe11c
.Lbe176:
	mov	r0, r11
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_be0b4

.thumb_func_start Func_be18c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	add	r3, sp, #0x18
	mov	r1, r9
	str	r1, [r3]
	mov	r10, r1
	bl	_Func_78b9c
	mov	r3, #0
	ldrb	r2, [r0]
	str	r3, [sp, #0x14]
	ldrb	r3, [r0, #3]
	cmp	r3, #5
	beq	.Lbe1c0
	cmp	r3, #5
	blt	.Lbe1c4
	cmp	r3, #0x39
	bgt	.Lbe1c4
	cmp	r3, #0x38
	blt	.Lbe1c4
.Lbe1c0:
	mov	r0, #1
	str	r0, [sp, #0x14]
.Lbe1c4:
	cmp	r2, #0
	beq	.Lbe1dc
	cmp	r2, #4
	beq	.Lbe1f4
	mov	r2, #0xc
	neg	r2, r2
	mov	r1, #0
	add	r2, r10
	mov	r9, r1
	mov	r6, #0
	mov	r11, r2
	b	.Lbe210
.Lbe1dc:
	mov	r3, r10
	sub	r3, #4
	ldr	r3, [r3]
	mov	r1, #1
	strb	r2, [r3, #0x10]
	strb	r1, [r3, #1]
	mov	r2, r10
	sub	r2, #8
	ldr	r2, [r2]
	strb	r1, [r3, #0x1e]
	strb	r2, [r3, #2]
	b	.Lbe35c
.Lbe1f4:
	mov	r3, r10
	sub	r3, #4
	ldr	r2, [r3]
	mov	r1, #1
	mov	r3, #0
	strb	r3, [r2, #0x10]
	strb	r1, [r2, #1]
	mov	r3, r10
	sub	r3, #8
	ldr	r3, [r3]
	strb	r1, [r2, #0x1e]
	strb	r3, [r2, #2]
	b	.Lbe35c
.Lbe20e:
	add	r6, #1
.Lbe210:
	mov	r3, r11
	ldr	r1, [r3]
	lsl	r3, r6, #1
	add	r3, #0x58
	ldrsh	r3, [r1, r3]
	cmp	r3, #0xff
	bne	.Lbe20e
	str	r6, [sp, #0x10]
	mov	r3, #0x64
	add	r2, r1, #2
	ldrsh	r3, [r2, r3]
	mov	r6, #0
	cmp	r3, #0xff
	beq	.Lbe23a
	add	r2, #0x64
.Lbe22e:
	add	r2, #2
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	add	r6, #1
	cmp	r3, #0xff
	bne	.Lbe22e
.Lbe23a:
	mov	r2, r10
	sub	r2, #0x10
	str	r6, [sp, #0xc]
	str	r2, [sp, #8]
	ldr	r2, [r2]
	ldrh	r3, [r2, #0xa]
	mov	r4, #0xf
	and	r4, r3
	mov	r0, #0xc
	ldrsh	r3, [r2, r0]
	sub	r2, r4, r3
	add	r3, r4, r3
	sub	r3, #1
	add	r6, r2, #1
	str	r3, [sp, #4]
	cmp	r6, r3
	bgt	.Lbe318
	mov	r1, #4
	neg	r1, r1
	lsl	r3, r6, #1
	add	r1, r10
	mov	r7, r3
	mov	r8, r1
	add	r7, #0x64
.Lbe26a:
	cmp	r6, #0
	blt	.Lbe30c
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	ldrh	r2, [r3, #0xa]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe2c4
	ldr	r3, [sp, #0xc]
	cmp	r6, r3
	bge	.Lbe30c
	mov	r0, r11
	ldr	r3, [r0]
	add	r3, #2
	ldrsh	r5, [r3, r7]
	cmp	r5, #0xfe
	beq	.Lbe30c
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	bne	.Lbe2a6
	mov	r0, r5
	str	r4, [sp]
	bl	_Func_77394
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbe30c
.Lbe2a6:
	mov	r2, r8
	ldr	r0, [r2]
	mov	r2, r9
	add	r1, r0, #2
	add	r2, #0x1c
	mov	r3, #1
	strb	r3, [r1, r2]
	sub	r3, r6, r4
	sub	r2, #0xc
	strb	r3, [r0, r2]
	mov	r3, r9
	mov	r0, #1
	strb	r5, [r1, r3]
	add	r9, r0
	b	.Lbe30c
.Lbe2c4:
	ldr	r1, [sp, #0x10]
	cmp	r6, r1
	bge	.Lbe30c
	mov	r3, r11
	ldr	r2, [r3]
	lsl	r3, r6, #1
	add	r3, #0x58
	ldrsh	r5, [r2, r3]
	cmp	r5, #0xfe
	beq	.Lbe30c
	ldr	r1, [sp, #0x14]
	cmp	r1, #0
	bne	.Lbe2f0
	mov	r0, r5
	str	r4, [sp]
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbe30c
.Lbe2f0:
	mov	r3, r8
	ldr	r0, [r3]
	mov	r2, r9
	add	r1, r0, #2
	add	r2, #0x1c
	mov	r3, #1
	strb	r3, [r1, r2]
	sub	r2, #0xc
	sub	r3, r6, r4
	strb	r3, [r0, r2]
	mov	r0, r9
	strb	r5, [r1, r0]
	mov	r1, #1
	add	r9, r1
.Lbe30c:
	ldr	r2, [sp, #4]
	add	r6, #1
	add	r7, #2
	cmp	r6, r2
	ble	.Lbe26a
	b	.Lbe320
.Lbe318:
	mov	r3, #4
	neg	r3, r3
	add	r3, r10
	mov	r8, r3
.Lbe320:
	mov	r0, r8
	ldr	r3, [r0]
	mov	r1, r9
	mov	r2, r9
	strb	r1, [r3, #1]
	cmp	r2, #0
	bgt	.Lbe35c
	ldr	r0, [sp, #8]
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x816
	bl	_Func_175a0
	mov	r3, r10
	sub	r3, #0x14
	ldr	r3, [r3]
	ldr	r0, =0x12b
	add	r2, r3, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	bne	.Lbe358
	mov	r3, #1
	strb	r3, [r2]
.Lbe358:
	mov	r0, #1
	neg	r0, r0
.Lbe35c:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_be18c

.thumb_func_start Func_be378
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r3, sp
	add	r2, sp, #0x20
	add	r3, #0x2c
	str	r0, [r2]
	str	r3, [sp, #8]
	str	r1, [r3]
	ldr	r3, [r2]
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	mov	r10, r2
	bl	_Func_77394
	mov	r1, sp
	add	r1, #0x1c
	str	r1, [sp, #0xc]
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r7, sp, #0x24
	mov	r2, r10
	str	r3, [r7]
	ldr	r3, [r2]
	str	r0, [r1]
	mov	r4, #0xa
	ldrsh	r0, [r3, r4]
	bl	Func_b9a44
	str	r0, [sp, #0x28]
	bl	Func_bdfec
	mov	r4, r10
	ldr	r0, [sp, #8]
	ldr	r3, [r4]
	ldr	r1, [r0]
	ldrh	r3, [r3]
	mov	r2, #0
	mov	r5, #4
	strb	r3, [r1]
	str	r2, [r1, #0x60]
	strb	r2, [r1, #1]
	str	r2, [r1, #0x58]
	str	r2, [r1, #0x5c]
	str	r5, [r1, #0x50]
	bl	_Func_198dc
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0]
	mov	r1, #0x38
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.Lbe3f0
	bl	.Lbec5c
.Lbe3f0:
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbe46a
	ldr	r0, =0x16d
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lbe46a
	ldr	r1, =iwram_1ae8
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe46a
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r5
	mov	r8, r2
	cmp	r3, #0
	beq	.Lbe420
	mov	r3, #0
	mov	r8, r3
.Lbe420:
	mov	r6, #0x64
	b	.Lbe448
.Lbe424:
	cmp	r5, #0xfe
	beq	.Lbe446
	mov	r1, #0xc0
	mov	r0, r5
	lsl	r1, #24
	bl	_Func_783a4
	cmp	r0, #0
	bne	.Lbe446
	mov	r1, r5
	mov	r0, #8
	bl	Func_bbabc
	mov	r0, #9
	mov	r1, r5
	bl	Func_bbabc
.Lbe446:
	add	r6, #2
.Lbe448:
	mov	r4, r8
	cmp	r4, #0
	beq	.Lbe456
	ldr	r3, [r7]
	add	r3, #2
	ldrsh	r5, [r3, r6]
	b	.Lbe45e
.Lbe456:
	ldr	r2, [r7]
	mov	r3, r6
	sub	r3, #0xc
	ldrsh	r5, [r2, r3]
.Lbe45e:
	cmp	r5, #0xff
	bne	.Lbe424
	bl	Func_bb938
	bl	.Lbec5c
.Lbe46a:
	bl	_Func_198dc
	ldr	r3, [sp, #0xc]
	ldr	r4, =0x145
	ldr	r2, [r3]
	add	r1, r2, r4
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lbe498
	mov	r3, #0
	mov	r0, r10
	strb	r3, [r1]
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x880
	bl	_Func_175a0
	bl	.Lbec8a
.Lbe498:
	mov	r4, #0x9e
	lsl	r4, #1
	add	r3, r2, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbe4bc
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x858
	bl	_Func_175a0
	bl	.Lbec8a
.Lbe4bc:
	ldr	r4, =0x13b
	add	r3, r2, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbe4dc
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x857
	bl	_Func_175a0
	b	.Lbec8a
.Lbe4dc:
	mov	r4, #0x98
	lsl	r4, #1
	add	r3, r2, r4
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe51a
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	beq	.Lbe51a
	bl	_Func_79bc4
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lbe51a
	mov	r2, r10
	ldr	r3, [r2]
	mov	r1, #1
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	bl	_Func_19908
	ldr	r0, =0x859
	bl	_Func_175a0
	b	.Lbec8a
.Lbe51a:
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r3, #8
	bne	.Lbe528
	b	.Lbec5c
.Lbe528:
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
	mov	r2, #1
	mov	r11, r2
	mov	r1, #0
	add	r3, #0x2c
	mov	r2, #0xd
.Lbe536:
	sub	r2, #1
	strb	r1, [r3]
	add	r3, #1
	cmp	r2, #0
	bge	.Lbe536
	ldr	r0, [sp, #8]
	mov	r2, #1
	ldr	r3, [r0]
	neg	r2, r2
	mov	r1, r2
	add	r3, #0x3a
	mov	r2, #0xd
.Lbe54e:
	sub	r2, #1
	strb	r1, [r3]
	add	r3, #1
	cmp	r2, #0
	bge	.Lbe54e
	mov	r4, r10
	ldr	r3, [r4]
	mov	r0, #6
	ldrsh	r3, [r3, r0]
	cmp	r3, #0x63
	bls	.Lbe568
	bl	.Lbee00
.Lbe568:
	ldr	r2, =.Lbe570
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbe570:
	.word	.Lbe76c
	.word	.Lbe7d0
	.word	.Lbe888
	.word	.Lbe96e
	.word	.Lbe984
	.word	.Lbeb08
	.word	.Lbecea
	.word	.Lbe96e
	.word	.Lbec5c
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbe700
.Lbe700:
	mov	r1, r10
	ldr	r3, [r1]
	ldrh	r3, [r3]
	mov	r2, #0xe0
	lsl	r0, r3, #16
	lsl	r2, #11
	cmp	r0, r2
	bhi	.Lbe718
	ldr	r0, =0x843
	bl	_Func_175a0
	b	.Lbe726
.Lbe718:
	asr	r0, #16
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x846
	bl	_Func_175a0
.Lbe726:
	bl	Func_bb65c
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	mov	r3, #7
	str	r3, [r2, #0x54]
	bl	.Lbf1d4

	.pool_aligned

.Lbe76c:
	ldr	r4, [sp, #0xc]
	ldr	r0, [r4]
	bl	_Func_79d1c
	mov	r11, r0
	add	r0, sp, #0x30
	mov	r9, r0
	mov	r0, r11
	bl	Func_be18c
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.Lbe78c
	bl	.Lbf1d6
.Lbe78c:
	mov	r2, r11
	cmp	r2, #1
	bne	.Lbe794
	b	.Lbee08
.Lbe794:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	ldr	r2, [sp, #0xc]
	mov	r1, #1
	ldr	r0, [r2]
	bl	_Func_78870
	mov	r1, #2
	bl	_Func_19908
	ldr	r5, =0x819
	mov	r0, r5
	bl	_Func_175a0
	add	r5, #1
	bl	Func_bb8d8
	mov	r0, r11
	mov	r1, #4
	bl	_Func_19908
	mov	r0, r5
.Lbe7ca:
	bl	_Func_175a0
	b	.Lbee00
.Lbe7d0:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #8
	ldrsh	r0, [r3, r1]
	mov	r11, r0
	bl	_Func_78b9c
	add	r2, sp, #0x30
	mov	r6, r0
	mov	r9, r2
	mov	r0, r11
	bl	Func_be18c
	mov	r3, #1
	neg	r3, r3
	mov	r5, #1
	cmp	r0, r3
	bne	.Lbe7f8
	bl	.Lbf1d6
.Lbe7f8:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	mov	r1, #4
	mov	r0, r11
	bl	_Func_19908
	ldr	r0, =0x83e
	bl	_Func_175a0
	ldr	r2, [sp, #0xc]
	ldr	r1, [r2]
	mov	r3, #0x3a
	ldrsh	r2, [r1, r3]
	ldrb	r3, [r6, #9]
	cmp	r2, r3
	bge	.Lbe82c
	ldr	r4, [sp, #8]
	ldr	r2, [r4]
	mov	r3, #2
	str	r3, [r2, #0x5c]
	mov	r5, #0
.Lbe82c:
	ldr	r0, =0x13d
	add	r3, r1, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbe840
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	mov	r3, #1
	str	r3, [r2, #0x5c]
	mov	r5, #0
.Lbe840:
	cmp	r5, #0
	bne	.Lbe846
	b	.Lbee00
.Lbe846:
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	mov	r5, #0
	str	r5, [r3, #0x5c]
	ldr	r3, [sp, #0xc]
	ldr	r1, [r3]
	ldrb	r2, [r6, #9]
	ldrh	r3, [r1, #0x3a]
	mov	r4, r10
	sub	r3, r2
	strh	r3, [r1, #0x3a]
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	_Func_7822c
	ldr	r2, [sp, #0xc]
	ldr	r1, [r2]
	mov	r4, #0x3a
	ldrsh	r3, [r1, r4]
	cmp	r3, #0
	bge	.Lbe874
	strh	r5, [r1, #0x3a]
.Lbe874:
	mov	r0, #0x3a
	ldrsh	r2, [r1, r0]
	mov	r4, #0x36
	ldrsh	r3, [r1, r4]
	ldrh	r0, [r1, #0x36]
	cmp	r2, r3
	bgt	.Lbe884
	b	.Lbee00
.Lbe884:
	strh	r0, [r1, #0x3a]
	b	.Lbee00
.Lbe888:
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #8
	ldrsh	r2, [r3, r1]
	cmp	r2, #0
	bge	.Lbe8a6
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x81b
	bl	_Func_175a0
	b	.Lbec8a
.Lbe8a6:
	ldr	r4, [sp, #0xc]
	lsl	r2, #1
	ldr	r3, [r4]
	add	r2, #0xd8
	ldrh	r0, [r3, r2]
	bl	_Func_78414
	mov	r5, r0
	ldrh	r0, [r5, #0x28]
	mov	r11, r0
	cmp	r0, #0
	beq	.Lbe8dc
	ldr	r1, [sp, #0xc]
	mov	r3, r10
	ldr	r2, [r1]
	ldr	r1, [r3]
	mov	r4, #8
	ldrsh	r3, [r1, r4]
	lsl	r3, #1
	add	r3, #0xd8
	ldrh	r2, [r2, r3]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe908
	b	.Lbe8e0
.Lbe8dc:
	mov	r0, r10
	ldr	r1, [r0]
.Lbe8e0:
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x816
	bl	_Func_175a0
	ldr	r4, [sp, #0xc]
	ldr	r0, =0x12b
	ldr	r3, [r4]
	add	r2, r3, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Lbe902
	b	.Lbec8a
.Lbe902:
	mov	r3, #1
	strb	r3, [r2]
	b	.Lbec8a
.Lbe908:
	add	r1, sp, #0x30
	mov	r9, r1
	mov	r0, r11
	bl	Func_be18c
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lbe91e
	bl	.Lbf1d6
.Lbe91e:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	ldr	r3, [sp, #0xc]
	mov	r4, r10
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r0, #8
	ldrsh	r3, [r3, r0]
	lsl	r3, #1
	add	r3, #0xd8
	ldrh	r0, [r2, r3]
	mov	r1, #2
	bl	_Func_19908
	ldrb	r3, [r5, #0xc]
	cmp	r3, #2
	beq	.Lbe94e
	cmp	r3, #0
	bne	.Lbe96a
.Lbe94e:
	ldrb	r0, [r5, #2]
	cmp	r0, #3
	beq	.Lbe966
	cmp	r0, #3
	bgt	.Lbe95e
	cmp	r0, #1
	beq	.Lbe966
	b	.Lbe96a
.Lbe95e:
	cmp	r0, #8
	bgt	.Lbe96a
	cmp	r0, #6
	blt	.Lbe96a
.Lbe966:
	ldr	r0, =0x818
	b	.Lbe7ca
.Lbe96a:
	ldr	r0, =0x817
	b	.Lbe7ca
.Lbe96e:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r1, #1
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_19908
	ldr	r0, =0x816
	bl	_Func_175a0
	b	.Lbec8a
.Lbe984:
	mov	r4, r10
	ldr	r3, [r4]
	add	r2, sp, #0x30
	mov	r1, #8
	ldrsh	r0, [r3, r1]
	mov	r9, r2
	mov	r11, r0
	bl	Func_be18c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lbe9a2
	bl	.Lbf1d6
.Lbe9a2:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r11
	mov	r1, #4
	bl	_Func_19908
	mov	r0, r11
	bl	_Func_78b9c
	ldrb	r2, [r0, #1]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #6
	bne	.Lbe9cc
	ldr	r0, =0x8f1
	b	.Lbe9ce
.Lbe9cc:
	ldr	r0, =0x8f0
.Lbe9ce:
	mov	r3, #0xf4
	lsl	r3, #1
	cmp	r11, r3
	beq	.Lbea84
	cmp	r11, r3
	bgt	.Lbea12
	ldr	r2, =0x1b9
	cmp	r11, r2
	bgt	.Lbea00
	sub	r3, #0x34
	cmp	r11, r3
	bgt	.Lbea78
	mov	r4, r11
	cmp	r4, #0xe0
	beq	.Lbea64
	cmp	r4, #0xe0
	bge	.Lbe9f2
	b	.Lbe7ca
.Lbe9f2:
	mov	r1, #0xd9
	lsl	r1, #1
	cmp	r11, r1
	bgt	.Lbe9fc
	b	.Lbe7ca
.Lbe9fc:
	ldr	r0, =0x8f2
	b	.Lbe7ca
.Lbea00:
	mov	r2, #0xde
	lsl	r2, #1
	cmp	r11, r2
	ble	.Lbea7c
	mov	r3, #0xec
	lsl	r3, #1
	cmp	r11, r3
	beq	.Lbea80
	b	.Lbe7ca
.Lbea12:
	mov	r3, #0xfa
	lsl	r3, #1
	cmp	r11, r3
	beq	.Lbea68
	cmp	r11, r3
	bgt	.Lbea40
	sub	r3, #6
	cmp	r11, r3
	beq	.Lbea74
	cmp	r11, r3
	bgt	.Lbea32
	mov	r4, #0xf6
	lsl	r4, #1
	cmp	r11, r4
	beq	.Lbea88
	b	.Lbe7ca
.Lbea32:
	ldr	r1, =0x1ef
	cmp	r11, r1
	beq	.Lbea8c
	ldr	r2, =0x1f3
	cmp	r11, r2
	beq	.Lbea70
	b	.Lbe7ca
.Lbea40:
	ldr	r3, =0x1f7
	cmp	r11, r3
	beq	.Lbea90
	cmp	r11, r3
	bgt	.Lbea52
	sub	r3, #2
	cmp	r11, r3
	beq	.Lbea6c
	b	.Lbe7ca
.Lbea52:
	mov	r4, #0xfc
	lsl	r4, #1
	cmp	r11, r4
	beq	.Lbea94
	mov	r1, #0xfe
	lsl	r1, #1
	cmp	r11, r1
	beq	.Lbea98
	b	.Lbe7ca
.Lbea64:
	ldr	r0, =0x83e
	b	.Lbe7ca
.Lbea68:
	ldr	r0, =0x8f7
	b	.Lbe7ca
.Lbea6c:
	ldr	r0, =0x8f8
	b	.Lbe7ca
.Lbea70:
	ldr	r0, =0x8f9
	b	.Lbe7ca
.Lbea74:
	ldr	r0, =0x8fa
	b	.Lbe7ca
.Lbea78:
	ldr	r0, =0x8fb
	b	.Lbe7ca
.Lbea7c:
	ldr	r0, =0x8f0
	b	.Lbe7ca
.Lbea80:
	ldr	r0, =0x8fc
	b	.Lbe7ca
.Lbea84:
	ldr	r0, =0x8fd
	b	.Lbe7ca
.Lbea88:
	ldr	r0, =0x8ff
	b	.Lbe7ca
.Lbea8c:
	ldr	r0, =0x8fe
	b	.Lbe7ca
.Lbea90:
	ldr	r0, =0x900
	b	.Lbe7ca
.Lbea94:
	ldr	r0, =0x901
	b	.Lbe7ca
.Lbea98:
	ldr	r0, =0x902
	b	.Lbe7ca

	.pool_aligned

.Lbeb08:
	mov	r2, r10
	ldr	r3, [r2]
	ldrh	r3, [r3, #8]
	ldr	r6, =0xf
	lsl	r0, r3, #16
	mov	r5, #0xff
	asr	r0, #24
	mov	r1, r5
	and	r1, r3
	and	r0, r6
	bl	_Func_7a5b0
	mov	r4, r10
	ldr	r3, [r4]
	mov	r11, r0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	asr	r1, #24
	mov	r2, r5
	and	r1, r6
	and	r2, r3
	bl	_Func_7a2bc
	cmp	r0, #0
	beq	.Lbeb40
	b	.Lbec90
.Lbeb40:
	b	.Lbeb48

	.pool_aligned

.Lbeb48:
	mov	r2, r10
	ldr	r3, [r2]
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	asr	r1, #24
	mov	r2, r5
	and	r1, r6
	and	r2, r3
	bl	_Func_7a1f8
	cmp	r0, #0
	bne	.Lbeb66
	b	.Lbec62
.Lbeb66:
	mov	r0, r11
	bl	_Func_78b9c
	mov	r1, #0
	mov	r0, #0
	bl	Func_c10e8
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	asr	r1, #24
	mov	r2, r5
	and	r2, r3
	and	r1, r6
	bl	_Func_7a2e4
	mov	r2, r10
	ldr	r3, [r2]
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	asr	r1, #24
	mov	r2, r5
	and	r1, r6
	and	r2, r3
	bl	_Func_7a3a8
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	_Func_77428
	bl	Func_bdfec
	mov	r0, #0x1e
	bl	Func_bd808
	mov	r2, r10
	ldr	r3, [r2]
	mov	r0, #0
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	bl	Func_bbabc
	mov	r0, r10
	ldr	r3, [r0]
	ldrh	r2, [r3, #8]
	lsl	r3, r2, #16
	asr	r3, #24
	and	r3, r6
	lsl	r1, r3, #2
	add	r1, r3
	mov	r3, r5
	and	r3, r2
	lsl	r1, #2
	mov	r2, #0x96
	lsl	r2, #1
	add	r1, r3
	add	r1, r2
	mov	r0, #3
	bl	Func_bbabc
	mov	r1, #0xaf
	mov	r0, #0xe
	bl	Func_bbabc
	mov	r1, #0
	mov	r0, #0xa
	bl	Func_bbabc
	ldr	r1, =0x897
	mov	r0, #4
	bl	Func_bbabc
	mov	r4, r10
	ldr	r3, [r4]
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	mov	r0, #0xb
	bl	Func_bbabc
	mov	r0, #0xd4
	bl	_Func_f9080
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	Func_b7dd0
	mov	r1, #3
	ldr	r0, [r0]
	bl	_Func_c300
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	Func_b7dd0
	mov	r1, #0x20
	ldr	r0, [r0]
	bl	_Func_c344
	mov	r2, r10
	ldr	r3, [r2]
	ldrh	r1, [r3, #8]
	lsl	r1, #16
	asr	r1, #24
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	and	r1, r6
	mov	r2, #3
	mov	r3, #0
	bl	Func_c1798
	bl	Func_be02c
.Lbec5c:
	mov	r0, #2
	neg	r0, r0
	b	.Lbf1d6
.Lbec62:
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	mov	r1, #4
	mov	r0, r11
	bl	_Func_19908
	mov	r0, #0x72
	bl	_Func_f9080
	ldr	r0, =0x85b
	bl	_Func_175a0
	mov	r0, #0x3c
	bl	Func_30f8
.Lbec8a:
	mov	r0, #1
	neg	r0, r0
	b	.Lbf1d6
.Lbec90:
	add	r2, sp, #0x30
	mov	r9, r2
	mov	r0, r11
	bl	Func_be18c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lbeca4
	b	.Lbf1d6
.Lbeca4:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	mov	r2, r5
	asr	r1, #24
	and	r2, r3
	and	r1, r6
	bl	_Func_7a458
	mov	r0, r11
	bl	_Func_78b9c
	mov	r2, r10
	ldr	r3, [r2]
	mov	r5, r0
	mov	r1, #1
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	bl	_Func_19908
	mov	r0, r11
	mov	r1, #4
	bl	_Func_19908
	ldr	r0, =0x83f
	bl	_Func_175a0
	ldr	r0, [sp, #8]
	ldrb	r3, [r5, #2]
	ldr	r2, [r0]
	str	r3, [r2, #0x50]
	b	.Lbee00
.Lbecea:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, #8
	ldrsh	r0, [r3, r2]
	bl	_Func_797d4
	mov	r4, r10
	mov	r2, #0x18
	ldr	r3, [r4]
	add	r2, sp
	mov	r8, r2
	mov	r9, r0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, r8
	bl	Func_be0b4
	mov	r4, r10
	ldr	r3, [r4]
	ldrh	r3, [r3]
	mov	r0, #0
	cmp	r3, #7
	bls	.Lbed1a
	mov	r0, #1
.Lbed1a:
	bl	_Func_77330
	add	r0, #8
	str	r0, [sp, #4]
	mov	r1, r9
	add	r1, #4
	mov	r0, r8
	ldrb	r2, [r0]
	ldrb	r3, [r1]
	mov	r7, #0
	cmp	r2, r3
	bcc	.Lbed56
	mov	r5, #4
	mov	r6, r8
	mov	r4, #4
.Lbed38:
	mov	r2, r9
	ldrb	r3, [r2, r5]
	add	r7, #1
	strb	r3, [r0]
	add	r4, #1
	add	r0, #1
	cmp	r7, #3
	bgt	.Lbed56
	add	r6, #1
	add	r1, #1
	ldrb	r2, [r6]
	ldrb	r3, [r1]
	mov	r5, r4
	cmp	r2, r3
	bcs	.Lbed38
.Lbed56:
	mov	r3, r9
	ldrh	r3, [r3]
	add	r4, sp, #0x30
	mov	r11, r3
	mov	r9, r4
	mov	r0, r11
	bl	Func_be18c
	mov	r5, #1
	neg	r5, r5
	cmp	r0, r5
	bne	.Lbed70
	b	.Lbf1d6
.Lbed70:
	cmp	r7, #4
	beq	.Lbed94
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_19908
	mov	r0, r11
	mov	r1, #4
	bl	_Func_19908
	ldr	r0, =0x842
	bl	_Func_175a0
	mov	r0, r5
	b	.Lbf1d6
.Lbed94:
	mov	r2, r10
	ldr	r3, [r2]
	mov	r1, #1
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	bl	_Func_19908
	mov	r1, #4
	mov	r0, r11
	bl	_Func_19908
	ldr	r0, =0x841
	bl	_Func_175a0
	mov	r1, #0x80
	ldr	r0, [sp, #4]
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r3, [r3]
	mov	r7, #0
	cmp	r3, #0
	beq	.Lbee00
	mov	r9, r5
	mov	r5, r0
.Lbedc4:
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, r9
	bne	.Lbedee
	ldrb	r0, [r5, #2]
	bl	Func_be070
	cmp	r0, #0
	beq	.Lbedee
	ldrb	r1, [r5]
	mov	r3, r8
	ldrb	r2, [r3, r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbedee
	mov	r3, #0xfe
	strb	r3, [r5, #3]
	mov	r3, r2
	add	r3, #0xff
	mov	r4, r8
	strb	r3, [r4, r1]
.Lbedee:
	ldr	r0, [sp, #4]
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r3, [r3]
	add	r7, #1
	add	r5, #4
	cmp	r7, r3
	bne	.Lbedc4
.Lbee00:
	mov	r2, r11
	cmp	r2, #1
	beq	.Lbee08
	b	.Lbefb4
.Lbee08:
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
	ldrb	r0, [r3, #2]
	bl	_Func_77394
	mov	r6, r0
	ldr	r0, [sp, #8]
	ldr	r2, [r0]
	mov	r1, r10
	mov	r3, #1
	str	r3, [r2, #0x4c]
	ldr	r3, [r1]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_79c8c
	ldr	r3, [sp, #8]
	ldr	r1, [r3]
	mov	r3, #2
	str	r0, [r1, #0x50]
	str	r3, [r1, #0x54]
	ldr	r4, [sp, #0xc]
	ldr	r0, =0x129
	ldr	r2, [r4]
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbee58
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r0, [r3]
	bl	Func_c23e8
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #7
	orr	r3, r0
	b	.Lbeea6
.Lbee58:
	mov	r3, #0
	mov	r4, #0x94
	str	r3, [r1, #0x58]
	lsl	r4, #1
	add	r3, r2, r4
	ldrb	r3, [r3]
	cmp	r3, #5
	bhi	.Lbeea8
	ldr	r2, =.Lbee70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbee70:
	.word	.Lbeea0
	.word	.Lbee88
	.word	.Lbee90
	.word	.Lbee98
	.word	.Lbeea8
	.word	.Lbeea0
.Lbee88:
	ldr	r1, [sp, #8]
	ldr	r3, =0x4001
	ldr	r2, [r1]
	b	.Lbeea6
.Lbee90:
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	ldr	r3, =0x4004
	b	.Lbeea6
.Lbee98:
	ldr	r4, [sp, #8]
	ldr	r3, =0x4004
	ldr	r2, [r4]
	b	.Lbeea6
.Lbeea0:
	ldr	r0, [sp, #8]
	ldr	r3, =0x4001
	ldr	r2, [r0]
.Lbeea6:
	str	r3, [r2, #0x58]
.Lbeea8:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r1, #1
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_19908
	ldr	r0, =0x814
	bl	_Func_175a0
	b	.Lbeef4
.Lbeebe:
	ldr	r4, [sp, #0xc]
	mov	r0, #0x9c
	ldr	r3, [r4]
	lsl	r0, #1
	add	r3, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbeee0
	bl	_Func_79bc4
	mov	r3, #0xff
	and	r0, r3
	cmp	r0, #0x98
	bgt	.Lbeee0
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	strb	r5, [r3, #0x1e]
.Lbeee0:
	bl	_Func_79bc4
	mov	r3, #0x1f
	and	r0, r3
	cmp	r0, #0
	bne	.Lbef28
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	strb	r0, [r3, #0x1e]
	b	.Lbef28
.Lbeef4:
	mov	r4, #0x38
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	beq	.Lbef28
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbef28
	ldr	r1, =0x13b
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbef28
	ldr	r2, =0x145
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbef28
	mov	r4, #0x9d
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r5, [r3]
	cmp	r5, #0
	beq	.Lbeebe
.Lbef28:
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lbef3c
	ldr	r0, [sp, #8]
	ldr	r2, [r0]
	mov	r3, #0
	strb	r3, [r2, #0x1e]
.Lbef3c:
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	bne	.Lbef46
	b	.Lbf1a8
.Lbef46:
	bl	_Func_79bc4
	mov	r3, #0x1f
	and	r0, r3
	cmp	r0, #0
	bne	.Lbef88
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	b	.Lbefac

	.pool_aligned

.Lbef88:
	ldr	r3, [sp, #0xc]
	ldr	r0, [r3]
	bl	_Func_79cbc
	mov	r1, #0xc8
	lsl	r0, #16
	bl	Func_af0_from_thumb
	mov	r5, r0
	bl	_Func_79bc4
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	bgt	.Lbefa8
	b	.Lbf1a8
.Lbefa8:
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
.Lbefac:
	mov	r2, #1
	add	r3, #0x2c
	strb	r2, [r3]
	b	.Lbf1a8
.Lbefb4:
	mov	r0, r11
	bl	_Func_78b9c
	mov	r7, r0
	ldr	r0, [sp, #8]
	ldrb	r2, [r7, #2]
	ldr	r3, [r0]
	mov	r1, r11
	str	r2, [r3, #0x50]
	mov	r2, #0
	str	r2, [r3, #0x58]
	str	r1, [r3, #0x4c]
	ldrb	r3, [r7, #3]
	mov	r2, r3
	cmp	r2, #0x41
	beq	.Lbeff2
	cmp	r2, #0x29
	beq	.Lbefe8
	cmp	r2, #0x2a
	beq	.Lbefe8
	cmp	r2, #0x2b
	beq	.Lbefe8
	cmp	r2, #0x2c
	beq	.Lbefe8
	cmp	r2, #0x44
	bne	.Lbf044
.Lbefe8:
	mov	r2, r3
	cmp	r2, #0x41
	beq	.Lbeff2
	cmp	r2, #0x44
	bne	.Lbeff6
.Lbeff2:
	mov	r5, #0x99
	b	.Lbf002
.Lbeff6:
	cmp	r2, #0x29
	beq	.Lbf000
	mov	r5, #0x40
	cmp	r2, #0x2b
	bne	.Lbf002
.Lbf000:
	mov	r5, #0x20
.Lbf002:
	cmp	r3, #0x41
	beq	.Lbf010
	cmp	r3, #0x29
	beq	.Lbf010
	mov	r6, #2
	cmp	r3, #0x2a
	bne	.Lbf012
.Lbf010:
	mov	r6, #1
.Lbf012:
	bl	_Func_79bc4
	mov	r3, #0xff
	and	r0, r3
	cmp	r0, r5
	bge	.Lbf0f8
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	mov	r0, #0
	cmp	r0, r3
	bge	.Lbf0f8
	mov	r1, r2
	add	r2, #0x1e
.Lbf030:
	ldrb	r3, [r2]
	add	r3, r6
	strb	r3, [r2]
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	add	r0, #1
	add	r2, #1
	cmp	r0, r3
	blt	.Lbf030
	b	.Lbf0f8
.Lbf044:
	add	r3, #0xdc
	mov	r4, #0x80
	lsl	r3, #24
	lsl	r4, #19
	cmp	r3, r4
	bhi	.Lbf0b4
	ldrb	r3, [r7, #3]
	sub	r3, #0x24
	cmp	r3, #4
	bhi	.Lbf084
	ldr	r2, =.Lbf060
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbf060:
	.word	.Lbf074
	.word	.Lbf078
	.word	.Lbf07c
	.word	.Lbf080
	.word	.Lbf084
.Lbf074:
	mov	r5, #0x3f
	b	.Lbf086
.Lbf078:
	mov	r5, #0x1f
	b	.Lbf086
.Lbf07c:
	mov	r5, #0xf
	b	.Lbf086
.Lbf080:
	mov	r5, #7
	b	.Lbf086
.Lbf084:
	mov	r5, #3
.Lbf086:
	bl	_Func_79bc4
	and	r0, r5
	cmp	r0, #0
	bne	.Lbf0f8
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	mov	r0, #0
	cmp	r0, r3
	bge	.Lbf0f8
	mov	r1, r2
	mov	r4, #2
	add	r2, #0x2c
.Lbf0a4:
	strb	r4, [r2]
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	add	r0, #1
	add	r2, #1
	cmp	r0, r3
	blt	.Lbf0a4
	b	.Lbf0f8
.Lbf0b4:
	mov	r2, r11
	cmp	r2, #0xb2
	bne	.Lbf0f8
	ldr	r5, [sp, #8]
	ldr	r3, [r5]
	ldrb	r3, [r3, #1]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lbf0f8
.Lbf0ca:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldr	r3, [r5]
	add	r3, #2
	ldrb	r1, [r3, r6]
	ldrb	r2, [r7, #2]
	ldrb	r3, [r7, #3]
	mov	r4, #0x64
	str	r4, [sp]
	bl	_Func_79f10
	ldr	r1, [r5]
	mov	r2, r6
	add	r3, r1, #2
	add	r2, #0x38
	strb	r0, [r3, r2]
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	add	r6, #1
	cmp	r6, r3
	blt	.Lbf0ca
.Lbf0f8:
	ldr	r2, =0x206
	cmp	r11, r2
	bhi	.Lbf11e
	ldr	r3, [sp, #8]
	ldr	r2, =.Lc2da0
	ldr	r1, [r3]
	mov	r4, r11
	lsl	r3, r4, #2
	ldr	r2, [r2, r3]
	mov	r3, #0x1e
	ldrsb	r3, [r1, r3]
	str	r2, [r1, #0x58]
	cmp	r3, #1
	ble	.Lbf11e
	lsl	r3, #12
	ldr	r0, =0xfffff000
	add	r3, r2, r3
	add	r3, r0
	str	r3, [r1, #0x58]
.Lbf11e:
	ldr	r1, =0x205
	cmp	r11, r1
	bhi	.Lbf138
	ldr	r1, =.Lc2b98
	mov	r2, r11
	ldrb	r3, [r1, r2]
	cmp	r3, #0
	beq	.Lbf138
	ldr	r3, [sp, #8]
	mov	r4, r11
	ldr	r2, [r3]
	ldrb	r3, [r1, r4]
	b	.Lbf16c
.Lbf138:
	mov	r0, r11
	bl	Func_bd3c8
	cmp	r0, #0
	beq	.Lbf14a
	ldr	r0, [sp, #8]
	ldr	r2, [r0]
	mov	r3, #3
	b	.Lbf16c
.Lbf14a:
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	ldr	r3, [r2, #0x58]
	cmp	r3, #0
	beq	.Lbf16a
	ldr	r4, [sp, #0xc]
	ldr	r0, =0x129
	ldr	r3, [r4]
	add	r3, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbf166
	mov	r3, #8
	b	.Lbf16c
.Lbf166:
	mov	r3, #3
	b	.Lbf16c
.Lbf16a:
	mov	r3, #1
.Lbf16c:
	str	r3, [r2, #0x54]
	ldrb	r0, [r7, #3]
	bl	_Func_79ef8
	cmp	r0, #0
	beq	.Lbf186
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	mov	r1, #0x80
	ldr	r2, [r3, #0x58]
	lsl	r1, #9
	orr	r2, r1
	str	r2, [r3, #0x58]
.Lbf186:
	mov	r2, r11
	cmp	r2, #0xb2
	bne	.Lbf1a8
	ldr	r3, [sp, #8]
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0x3a
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbf1a8
	ldr	r3, [r1, #0x58]
	mov	r2, #0x80
	lsl	r2, #5
	orr	r3, r2
	str	r3, [r1, #0x58]
.Lbf1a8:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r0, #6
	ldrsh	r3, [r3, r0]
	cmp	r3, #2
	bne	.Lbf1c6
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	ldr	r3, [r2, #0x54]
	cmp	r3, #5
	beq	.Lbf1c6
	cmp	r3, #9
	beq	.Lbf1c6
	mov	r3, #4
	str	r3, [r2, #0x54]
.Lbf1c6:
	ldr	r2, [sp, #8]
	mov	r4, r10
	ldr	r3, [r2]
	ldr	r2, [r4]
	ldrh	r2, [r2, #6]
	add	r3, #0x48
	strh	r2, [r3]
.Lbf1d4:
	mov	r0, #0
.Lbf1d6:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_be378

.thumb_func_start Func_bf208
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r2
	bl	_Func_77394
	cmp	r5, #5
	bgt	.Lbf23e
	mov	r3, r0
	add	r3, #0x42
	ldrb	r3, [r3]
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r3, r5, #2
	add	r3, r5
	sub	r2, r3
	ldr	r3, =0x28f
	add	r2, r6
	mov	r5, r2
	mul	r5, r3
	bl	_Func_79bc4
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	blt	.Lbf23e
	mov	r0, #1
	b	.Lbf240
.Lbf23e:
	mov	r0, #0
.Lbf240:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_bf208

.thumb_func_start Func_bf250
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	_Func_77394
	mov	r2, #0x99
	lsl	r2, #1
	mov	r1, r0
	add	r5, r1, r2
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf2a4
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r7, #0
	cmp	r3, #0
	bne	.Lbf282
	ldr	r2, =0x133
	add	r3, r1, r2
	strb	r7, [r3]
	mov	r0, #1
	b	.Lbf2a6
.Lbf282:
	ldr	r3, =0x133
	add	r6, r1, r3
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bge	.Lbf2a4
	ldrb	r1, [r5]
	mov	r0, r8
	mov	r2, #0x1e
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf2a4
	strb	r7, [r6]
	mov	r0, #1
	strb	r7, [r5]
	b	.Lbf2a6
.Lbf2a4:
	mov	r0, #0
.Lbf2a6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bf250

.thumb_func_start Func_bf2b4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	_Func_77394
	mov	r2, #0x9a
	lsl	r2, #1
	mov	r1, r0
	add	r5, r1, r2
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf308
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r7, #0
	cmp	r3, #0
	bne	.Lbf2e6
	ldr	r2, =0x135
	add	r3, r1, r2
	strb	r7, [r3]
	mov	r0, #1
	b	.Lbf30a
.Lbf2e6:
	ldr	r3, =0x135
	add	r6, r1, r3
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bge	.Lbf308
	ldrb	r1, [r5]
	mov	r0, r8
	mov	r2, #0x14
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf308
	strb	r7, [r6]
	mov	r0, #1
	strb	r7, [r5]
	b	.Lbf30a
.Lbf308:
	mov	r0, #0
.Lbf30a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bf2b4

.thumb_func_start Func_bf318
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	_Func_77394
	mov	r2, #0x9b
	lsl	r2, #1
	mov	r1, r0
	add	r5, r1, r2
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf36c
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r7, #0
	cmp	r3, #0
	bne	.Lbf34a
	ldr	r2, =0x137
	add	r3, r1, r2
	strb	r7, [r3]
	mov	r0, #1
	b	.Lbf36e
.Lbf34a:
	ldr	r3, =0x137
	add	r6, r1, r3
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bge	.Lbf36c
	ldrb	r1, [r5]
	mov	r0, r8
	mov	r2, #0x14
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf36c
	strb	r7, [r6]
	mov	r0, #1
	strb	r7, [r5]
	b	.Lbf36e
.Lbf36c:
	mov	r0, #0
.Lbf36e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bf318

.thumb_func_start Func_bf37c
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_Func_77394
	mov	r3, #0x9c
	lsl	r3, #1
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf3b4
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf3b6
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x1e
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf3b4
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf3b6
.Lbf3b4:
	mov	r0, #0
.Lbf3b6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_bf37c

.thumb_func_start Func_bf3bc
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_Func_77394
	ldr	r3, =0x139
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf3f2
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf3f4
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x3c
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf3f2
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf3f4
.Lbf3f2:
	mov	r0, #0
.Lbf3f4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_bf3bc

.thumb_func_start Func_bf400
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_Func_77394
	mov	r3, #0x9d
	lsl	r3, #1
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf438
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf43a
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x46
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf438
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf43a
.Lbf438:
	mov	r0, #0
.Lbf43a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_bf400

.thumb_func_start Func_bf440
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_Func_77394
	ldr	r3, =0x13b
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf476
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf478
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x28
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf476
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf478
.Lbf476:
	mov	r0, #0
.Lbf478:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_bf440

.thumb_func_start Func_bf484
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_Func_77394
	mov	r3, #0x9e
	lsl	r3, #1
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf4bc
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf4be
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x32
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf4bc
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf4be
.Lbf4bc:
	mov	r0, #0
.Lbf4be:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_bf484

.thumb_func_start Func_bf4c4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_Func_77394
	ldr	r3, =0x13d
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf516
	cmp	r3, #7
	bls	.Lbf4e2
	add	r3, #0xf8
	strb	r3, [r5]
	mov	r2, r3
.Lbf4e2:
	mov	r3, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lbf4f2
	mov	r3, r2
	add	r3, #0xff
	strb	r3, [r5]
	mov	r2, r3
.Lbf4f2:
	lsl	r3, r2, #24
	lsr	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf518
	cmp	r3, #7
	bhi	.Lbf516
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x1e
	bl	Func_bf208
	cmp	r0, #0
	beq	.Lbf516
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf518
.Lbf516:
	mov	r0, #0
.Lbf518:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_bf4c4

.thumb_func_start Func_bf524
	push	{lr}
	bl	_Func_77394
	mov	r3, #0x9f
	lsl	r3, #1
	add	r1, r0, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf544
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf546
.Lbf544:
	mov	r0, #0
.Lbf546:
	pop	{r1}
	bx	r1
.func_end Func_bf524

.thumb_func_start Func_bf54c
	push	{lr}
	bl	_Func_77394
	ldr	r3, =0x13f
	add	r1, r0, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf56a
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf56c
.Lbf56a:
	mov	r0, #0
.Lbf56c:
	pop	{r1}
	bx	r1
.func_end Func_bf54c

.thumb_func_start Func_bf574
	push	{lr}
	bl	_Func_77394
	mov	r3, #0xa3
	lsl	r3, #1
	add	r1, r0, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf59e
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	lsr	r3, #24
	cmp	r3, #0
	bne	.Lbf59e
	ldr	r1, =0x147
	add	r2, r0, r1
	strb	r3, [r2]
	mov	r0, #1
	b	.Lbf5a0
.Lbf59e:
	mov	r0, #0
.Lbf5a0:
	pop	{r1}
	bx	r1
.func_end Func_bf574

.thumb_func_start Func_bf5a8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #4
	bl	_Func_77330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	mov	r7, r3
	add	r3, r1
	ldr	r3, [r3]
	mov	r2, #0
	add	r7, #8
	mov	r8, r2
	cmp	r2, r3
	bge	.Lbf600
	mov	r5, r7
.Lbf5ce:
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	ble	.Lbf5ee
	ldrb	r0, [r5, #2]
	str	r2, [sp]
	bl	_Func_77394
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	beq	.Lbf5ee
	ldrb	r3, [r5, #3]
	sub	r3, #1
	strb	r3, [r5, #3]
.Lbf5ee:
	mov	r1, #0x80
	mov	r3, #1
	lsl	r1, #1
	add	r8, r3
	add	r3, r7, r1
	ldr	r3, [r3]
	add	r5, #4
	cmp	r8, r3
	blt	.Lbf5ce
.Lbf600:
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #1
	mov	r8, r3
	add	r3, r7, r1
	ldr	r3, [r3]
	cmp	r8, r3
	bge	.Lbf64c
	mov	r6, r7
.Lbf612:
	mov	r3, #3
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lbf63a
	ldrb	r5, [r6, #2]
	ldrb	r1, [r6]
	ldrb	r2, [r6, #1]
	mov	r0, r5
	bl	_Func_7a2e4
	ldrb	r2, [r6, #1]
	ldrb	r1, [r6]
	mov	r0, r5
	bl	_Func_7a3a8
	mov	r0, r5
	bl	_Func_77428
	mov	r2, #1
	b	.Lbf640
.Lbf63a:
	mov	r3, #1
	add	r6, #4
	add	r8, r3
.Lbf640:
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	cmp	r8, r3
	blt	.Lbf612
.Lbf64c:
	mov	r0, r2
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bf5a8

.thumb_func_start Func_bf65c
	push	{r5, lr}
	mov	r5, #0x13
.Lbf660:
	sub	r5, #1
	bl	Func_bf5a8
	cmp	r5, #0
	bge	.Lbf660
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_bf65c

.thumb_func_start Func_bf674
	bx	lr
.func_end Func_bf674

.thumb_func_start Func_bf678
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_1e74
	ldr	r2, [r1]
	sub	sp, #0x30
	str	r2, [sp, #8]
	add	r2, #0x44
	str	r2, [sp, #4]
	ldrb	r2, [r2]
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	mov	r11, r3
	mov	r2, #0
	mov	r3, #1
	add	r11, r3
	mov	r9, r2
	cmp	r9, r11
	blt	.Lbf6aa
	b	.Lbf7de
.Lbf6aa:
	mov	r0, r9
	bl	_Func_77330
	mov	r1, #8
	mov	r3, r0
	add	r1, r3
	mov	r10, r1
	mov	r1, #0x84
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldr	r3, [r3]
	mov	r8, r2
	cmp	r8, r3
	bge	.Lbf700
	mov	r5, r10
.Lbf6ca:
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	ble	.Lbf6f0
	ldrb	r0, [r5, #2]
	bl	Func_b7dd0
	cmp	r0, #0
	beq	.Lbf6f0
	ldrb	r0, [r5, #2]
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lbf6f0
	ldrb	r3, [r5, #3]
	sub	r3, #1
	strb	r3, [r5, #3]
.Lbf6f0:
	mov	r3, #1
	add	r8, r3
	add	r3, #0xff
	add	r3, r10
	ldr	r3, [r3]
	add	r5, #4
	cmp	r8, r3
	blt	.Lbf6ca
.Lbf700:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r10
	mov	r1, #0
	ldr	r3, [r3]
	mov	r8, r1
	cmp	r8, r3
	bge	.Lbf7d2
	mov	r6, r10
.Lbf712:
	mov	r3, #3
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lbf7c0
	ldrb	r7, [r6, #2]
	mov	r0, r7
	bl	Func_b7dd0
	cmp	r0, #0
	beq	.Lbf7c6
	bl	Func_bdfec
	mov	r0, #0x1e
	bl	Func_bd808
	mov	r1, r7
	mov	r0, #0
	bl	Func_bbabc
	ldrb	r3, [r6]
	lsl	r1, r3, #2
	add	r1, r3
	ldrb	r3, [r6, #1]
	lsl	r1, #2
	mov	r2, #0x96
	add	r1, r3
	lsl	r2, #1
	add	r1, r2
	mov	r0, #3
	bl	Func_bbabc
	mov	r1, #0xaf
	mov	r0, #0xe
	bl	Func_bbabc
	mov	r1, #0
	mov	r0, #0xa
	bl	Func_bbabc
	ldr	r1, =0x897
	mov	r0, #4
	bl	Func_bbabc
	mov	r1, r7
	mov	r0, #0xb
	bl	Func_bbabc
	mov	r0, #0xd4
	bl	_Func_f9080
	mov	r0, r7
	bl	Func_b7dd0
	mov	r1, #3
	ldr	r0, [r0]
	bl	_Func_c300
	mov	r0, r7
	bl	Func_b7dd0
	mov	r1, #0x20
	ldr	r0, [r0]
	bl	_Func_c344
	ldrb	r5, [r6]
	ldrb	r2, [r6, #1]
	mov	r1, r5
	mov	r0, r7
	bl	_Func_7a2e4
	ldrb	r1, [r6]
	ldrb	r2, [r6, #1]
	mov	r0, r7
	bl	_Func_7a3a8
	mov	r0, r7
	bl	_Func_77428
	mov	r1, r5
	mov	r2, #3
	mov	r3, #0
	mov	r0, r7
	bl	Func_c1798
	bl	Func_be02c
	b	.Lbf7c6
.Lbf7c0:
	mov	r3, #1
	add	r6, #4
	add	r8, r3
.Lbf7c6:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	cmp	r8, r3
	blt	.Lbf712
.Lbf7d2:
	mov	r1, #1
	add	r9, r1
	cmp	r9, r11
	bge	.Lbf7dc
	b	.Lbf6aa
.Lbf7dc:
	ldr	r1, =iwram_1e74
.Lbf7de:
	ldr	r3, [r1]
	mov	r2, #0xc9
	lsl	r2, #3
	add	r3, r2
	ldrh	r1, [r3]
	mov	r0, #2
	mov	r2, #0
	bl	Func_c0774
	ldr	r3, =.Lc35bc
	ldr	r1, [sp, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	str	r3, [sp, #0xc]
	str	r4, [sp, #0x10]
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lbf81c
	ldr	r3, [sp, #8]
	add	r3, #0x50
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbf824
	mov	r3, #2
	mov	r2, sp
	str	r3, [sp, #0xc]
	add	r2, #0xc
	mov	r3, #1
	str	r2, [sp]
	str	r3, [r2, #4]
	b	.Lbf82a
.Lbf81c:
	mov	r3, sp
	add	r3, #0xc
	str	r3, [sp]
	b	.Lbf82a
.Lbf824:
	mov	r1, sp
	add	r1, #0xc
	str	r1, [sp]
.Lbf82a:
	mov	r3, #0x14
	mov	r2, #0
	add	r3, sp
	mov	r9, r2
	mov	r11, r3
.Lbf834:
	mov	r1, r9
	ldr	r2, [sp]
	lsl	r3, r1, #2
	ldr	r0, [r3, r2]
	mov	r1, r11
	bl	Func_b6c08
	mov	r3, #0
	mov	r10, r0
	mov	r8, r3
	cmp	r8, r10
	blt	.Lbf84e
	b	.Lbfb52
.Lbf84e:
	mov	r1, r8
	lsl	r3, r1, #1
	mov	r2, r11
	ldrh	r5, [r2, r3]
	mov	r0, r5
	bl	_Func_77394
	mov	r3, #0xa2
	lsl	r3, #1
	mov	r7, r0
	add	r1, r7, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf870
	add	r3, #0xff
	strb	r3, [r1]
.Lbf870:
	mov	r2, #0x38
	ldrsh	r1, [r7, r2]
	cmp	r1, #0
	beq	.Lbf944
	mov	r0, r7
	add	r0, #0x44
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.Lbf8d0
	mov	r3, #0x34
	ldrsh	r2, [r7, r3]
	cmp	r1, r2
	beq	.Lbf8d0
	ldrb	r6, [r0]
	add	r3, r1, r6
	cmp	r3, r2
	ble	.Lbf894
	sub	r6, r2, r1
.Lbf894:
	mov	r1, r6
	mov	r0, r5
	bl	_Func_783a4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	mov	r1, #5
	mov	r0, r6
	bl	_Func_19908
	mov	r1, #0x38
	ldrsh	r2, [r7, r1]
	mov	r1, #0x34
	ldrsh	r3, [r7, r1]
	cmp	r2, r3
	bne	.Lbf8c0
	ldr	r0, =0x820
	bl	_Func_175a0
	b	.Lbf8c6
.Lbf8c0:
	ldr	r0, =0x81d
	bl	_Func_175a0
.Lbf8c6:
	mov	r0, #0xaf
	bl	_Func_f9080
	bl	Func_bb65c
.Lbf8d0:
	mov	r0, r7
	add	r0, #0x45
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.Lbf944
	mov	r2, #0x3a
	ldrsh	r1, [r7, r2]
	mov	r3, #0x36
	ldrsh	r2, [r7, r3]
	cmp	r1, r2
	beq	.Lbf944
	ldrb	r6, [r0]
	add	r3, r1, r6
	cmp	r3, r2
	ble	.Lbf8f0
	sub	r6, r2, r1
.Lbf8f0:
	mov	r1, r6
	mov	r0, r5
	bl	_Func_783dc
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	mov	r1, #5
	mov	r0, r6
	bl	_Func_19908
	mov	r1, #0x3a
	ldrsh	r2, [r7, r1]
	mov	r1, #0x36
	ldrsh	r3, [r7, r1]
	cmp	r2, r3
	bne	.Lbf934
	ldr	r0, =0x821
	bl	_Func_175a0
	b	.Lbf93a

	.pool_aligned

.Lbf934:
	ldr	r0, =0x81e
	bl	_Func_175a0
.Lbf93a:
	mov	r0, #0xaf
	bl	_Func_f9080
	bl	Func_bb65c
.Lbf944:
	mov	r0, r5
	bl	Func_bf574
	cmp	r0, #0
	beq	.Lbf96e
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x889
	bl	_Func_175a0
	bl	Func_bb65c
.Lbf96e:
	mov	r0, r5
	bl	Func_bf250
	cmp	r0, #0
	beq	.Lbf998
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x887
	bl	_Func_175a0
	bl	Func_bb65c
.Lbf998:
	mov	r0, r5
	bl	Func_bf2b4
	cmp	r0, #0
	beq	.Lbf9c2
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x888
	bl	_Func_175a0
	bl	Func_bb65c
.Lbf9c2:
	mov	r0, r5
	bl	Func_bf318
	cmp	r0, #0
	beq	.Lbf9ec
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x886
	bl	_Func_175a0
	bl	Func_bb65c
.Lbf9ec:
	mov	r0, r5
	bl	Func_bf37c
	cmp	r0, #0
	beq	.Lbfa16
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x88b
	bl	_Func_175a0
	bl	Func_bb65c
.Lbfa16:
	mov	r0, r5
	bl	Func_bf3bc
	cmp	r0, #0
	beq	.Lbfa40
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x88a
	bl	_Func_175a0
	bl	Func_bb65c
.Lbfa40:
	mov	r0, r5
	bl	Func_bf400
	cmp	r0, #0
	beq	.Lbfa6a
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x88e
	bl	_Func_175a0
	bl	Func_bb65c
.Lbfa6a:
	mov	r0, r5
	bl	Func_bf440
	cmp	r0, #0
	beq	.Lbfa9a
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r1, #1
	mov	r0, r5
	bl	_Func_19908
	mov	r0, r5
	bl	Func_b7aac
	ldr	r0, =0x88d
	bl	_Func_175a0
	bl	Func_bb65c
.Lbfa9a:
	mov	r0, r5
	bl	Func_bf484
	cmp	r0, #0
	beq	.Lbfaca
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r1, #1
	mov	r0, r5
	bl	_Func_19908
	mov	r0, r5
	bl	Func_b7aac
	ldr	r0, =0x883
	bl	_Func_175a0
	bl	Func_bb65c
.Lbfaca:
	mov	r0, r5
	bl	Func_bf4c4
	cmp	r0, #0
	beq	.Lbfaf4
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x88c
	bl	_Func_175a0
	bl	Func_bb65c
.Lbfaf4:
	mov	r0, r5
	bl	Func_bf524
	cmp	r0, #0
	beq	.Lbfb1e
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x891
	bl	_Func_175a0
	bl	Func_bb65c
.Lbfb1e:
	mov	r0, r5
	bl	Func_bf54c
	cmp	r0, #0
	beq	.Lbfb48
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, r0
	mov	r0, r5
	bl	Func_b78e4
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x892
	bl	_Func_175a0
	bl	Func_bb65c
.Lbfb48:
	mov	r2, #1
	add	r8, r2
	cmp	r8, r10
	bge	.Lbfb52
	b	.Lbf84e
.Lbfb52:
	mov	r3, #1
	add	r9, r3
	mov	r1, r9
	cmp	r1, #1
	bgt	.Lbfb5e
	b	.Lbf834
.Lbfb5e:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bf678

.thumb_func_start Func_bfba4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r0, [sp, #0xc]
	ldrb	r0, [r0]
	mov	r1, #0
	mov	r8, r0
	str	r1, [sp, #4]
	bl	_Func_77394
	mov	r2, r8
	str	r0, [sp, #8]
	mov	r0, #0
	cmp	r2, #7
	bls	.Lbfbce
	mov	r0, #1
.Lbfbce:
	bl	_Func_77330
	mov	r3, r0
	mov	r0, #0x84
	lsl	r0, #1
	mov	r6, r3
	add	r3, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #4]
	add	r6, #8
	mov	r7, #0
	cmp	r1, r3
	bge	.Lbfc18
	mov	r2, #1
	neg	r2, r2
	mov	r10, r2
	mov	r5, r6
.Lbfbf0:
	ldrb	r3, [r5, #2]
	cmp	r3, r8
	bne	.Lbfc08
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, r10
	bne	.Lbfc08
	ldrb	r1, [r5]
	ldrb	r2, [r5, #1]
	mov	r0, r8
	bl	_Func_7a350
.Lbfc08:
	mov	r0, #0x80
	lsl	r0, #1
	add	r3, r6, r0
	ldr	r3, [r3]
	add	r7, #1
	add	r5, #4
	cmp	r7, r3
	blt	.Lbfbf0
.Lbfc18:
	mov	r0, #1
	mov	r1, #0
	bl	Func_b6b40
	cmp	r0, #0
	beq	.Lbfc34
	mov	r0, #2
	mov	r1, #0
	bl	Func_b6b40
	cmp	r0, #0
	beq	.Lbfc34
	mov	r1, #1
	str	r1, [sp, #4]
.Lbfc34:
	mov	r2, r8
	mov	r0, #0
	cmp	r2, #7
	bls	.Lbfc3e
	mov	r0, #1
.Lbfc3e:
	bl	_Func_77330
	mov	r3, sp
	add	r3, #0x10
	str	r3, [sp]
	mov	r6, r0
	ldr	r0, [sp]
	add	r6, #8
	mov	r2, #0
	add	r3, sp, #0x1c
	mov	r12, r0
.Lbfc54:
	str	r2, [r3]
	sub	r3, #4
	cmp	r3, r12
	bge	.Lbfc54
	mov	r3, #0x80
	lsl	r3, #1
	mov	r1, #2
	add	r7, r6, r3
	neg	r1, r1
	mov	r9, r1
	mov	r11, r7
.Lbfc6a:
	mov	r2, #1
	ldr	r3, [r7]
	neg	r2, r2
	mov	r4, #0
	mov	r12, r2
	cmp	r4, r3
	bge	.Lbfc9e
	mov	r3, #3
	ldrsb	r3, [r6, r3]
	cmp	r3, r9
	bne	.Lbfc86
	ldrb	r3, [r6, #2]
	mov	r12, r3
	b	.Lbfc9e
.Lbfc86:
	ldr	r3, [r7]
	add	r4, #1
	cmp	r4, r3
	bge	.Lbfc9e
	lsl	r3, r4, #2
	add	r2, r6, r3
	mov	r3, #3
	ldrsb	r3, [r2, r3]
	cmp	r3, r9
	bne	.Lbfc86
	ldrb	r2, [r2, #2]
	mov	r12, r2
.Lbfc9e:
	mov	r3, #1
	neg	r3, r3
	cmp	r12, r3
	beq	.Lbfd18
	mov	r5, r3
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.Lbfccc
	mov	r0, r11
	ldr	r4, [r0]
	mov	r2, r6
.Lbfcb4:
	ldrb	r3, [r2, #2]
	cmp	r3, r12
	bne	.Lbfcc4
	mov	r3, #3
	ldrsb	r3, [r2, r3]
	cmp	r3, r5
	ble	.Lbfcc4
	mov	r5, r3
.Lbfcc4:
	sub	r4, #1
	add	r2, #4
	cmp	r4, #0
	bne	.Lbfcb4
.Lbfccc:
	add	r5, #1
	cmp	r5, #1
	bgt	.Lbfcd4
	mov	r5, #2
.Lbfcd4:
	ldr	r3, [r7]
	mov	r4, #0
	cmp	r4, r3
	bge	.Lbfc6a
	mov	r2, #0x80
	mov	r1, #2
	lsl	r2, #1
	neg	r1, r1
	add	r2, r6
	ldr	r0, [sp]
	mov	r10, r1
	mov	r14, r2
	mov	r1, r6
.Lbfcee:
	ldrb	r3, [r1, #2]
	cmp	r3, r12
	bne	.Lbfd0a
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, r10
	bne	.Lbfd0a
	ldrb	r2, [r1]
	strb	r5, [r1, #3]
	lsl	r2, #2
	ldr	r3, [r0, r2]
	add	r3, #1
	str	r3, [r0, r2]
	add	r5, #1
.Lbfd0a:
	mov	r2, r14
	ldr	r3, [r2]
	add	r4, #1
	add	r1, #4
	cmp	r4, r3
	blt	.Lbfcee
	b	.Lbfc6a
.Lbfd18:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.Lbfd20
	b	.Lbff78
.Lbfd20:
	mov	r5, #0xa6
	mov	r0, #0
	lsl	r5, #1
	mov	r10, r0
	mov	r0, r5
	bl	Func_4970
	mov	r2, r5
	ldr	r3, =Func_1af8
	ldr	r1, [sp, #8]
	mov	r9, r0
	bl	_call_via_r3
	mov	r7, #1
	ldr	r2, [sp]
	neg	r7, r7
	mov	r6, #0
.Lbfd42:
	ldmia	r2!, {r3}
	cmp	r3, r10
	ble	.Lbfd4c
	mov	r10, r3
	mov	r7, r6
.Lbfd4c:
	add	r6, #1
	cmp	r6, #3
	ble	.Lbfd42
	cmp	r7, #0
	blt	.Lbfd68
	mov	r1, #0x96
	lsl	r1, #1
	ldr	r0, [sp, #8]
	add	r2, r7, r1
	ldrsb	r3, [r0, r2]
	cmp	r3, r10
	bge	.Lbfd68
	mov	r1, r10
	strb	r1, [r0, r2]
.Lbfd68:
	mov	r0, r8
	bl	_Func_77428
	mov	r6, #0
	mov	r7, #0x48
.Lbfd72:
	ldr	r3, [sp, #8]
	mov	r1, r9
	ldrsh	r2, [r7, r3]
	ldrsh	r3, [r7, r1]
	sub	r5, r2, r3
	cmp	r5, #0
	ble	.Lbfde8
	bl	Func_bdfec
	mov	r0, #0x19
	bl	Func_bd808
	mov	r1, r8
	mov	r0, #0
	bl	Func_bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_bbabc
	mov	r1, #0xaf
	mov	r0, #0xe
	bl	Func_bbabc
	ldr	r1, =0x879
	mov	r0, #4
	add	r1, r6, r1
	bl	Func_bbabc
	mov	r1, r8
	mov	r0, #0xb
	bl	Func_bbabc
	mov	r0, #0xd4
	bl	_Func_f9080
	mov	r0, r8
	bl	Func_b7dd0
	mov	r1, #3
	ldr	r0, [r0]
	bl	_Func_c300
	mov	r0, r8
	bl	Func_b7dd0
	mov	r1, #0x20
	ldr	r0, [r0]
	bl	_Func_c344
	mov	r3, r10
	mov	r1, r6
	mov	r2, #2
	sub	r3, #1
	mov	r0, r8
	bl	Func_c1798
	bl	Func_be02c
.Lbfde8:
	add	r6, #1
	add	r7, #4
	cmp	r6, #3
	ble	.Lbfd72
	mov	r0, r9
	bl	Func_2df0
	ldr	r1, [sp, #4]
	cmp	r1, #0
	bne	.Lbfdfe
	b	.Lbff78
.Lbfdfe:
	bl	Func_bdfec
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2, #0x60]
	cmp	r3, #0
	beq	.Lbfe68
	mov	r1, r8
	mov	r0, #8
	bl	Func_bbabc
	mov	r1, r8
	mov	r0, #0
	bl	Func_bbabc
	ldr	r3, [sp, #0xc]
	mov	r0, #1
	ldr	r1, [r3, #0x60]
	bl	Func_bbabc
	ldr	r1, =0x84b
	mov	r0, #4
	bl	Func_bbabc
	ldr	r0, [sp, #0xc]
	ldr	r1, [r0, #0x60]
	mov	r0, r8
	neg	r1, r1
	bl	_Func_783a4
	cmp	r0, #0
	bne	.Lbfe60
	mov	r1, r8
	mov	r0, #9
	bl	Func_bbabc
	mov	r1, r8
	mov	r0, #0
	bl	Func_bbabc
	mov	r1, r8
	cmp	r1, #7
	bhi	.Lbfe56
	ldr	r1, =0x825
	b	.Lbfe58
.Lbfe56:
	ldr	r1, =0x82b
.Lbfe58:
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbfe68
.Lbfe60:
	mov	r0, #0xb
	mov	r1, r8
	bl	Func_bbabc
.Lbfe68:
	bl	Func_bb938
	bl	Func_bdfec
	ldr	r3, =0x131
	ldr	r2, [sp, #8]
	add	r6, r2, r3
	mov	r0, #0
	ldrsb	r0, [r6, r0]
	cmp	r0, #0
	beq	.Lbff04
	mov	r1, #0x34
	ldrsh	r3, [r2, r1]
	mov	r1, #0xa
	mul	r0, r3
	bl	Func_af0_from_thumb
	ldr	r3, =iwram_1e74
	mov	r7, r0
	mov	r1, r8
	mov	r0, #8
	ldr	r5, [r3]
	bl	Func_bbabc
	mov	r1, r8
	mov	r0, #0
	bl	Func_bbabc
	mov	r1, r7
	mov	r0, #1
	bl	Func_bbabc
	ldr	r1, =0x851
	mov	r0, #4
	bl	Func_bbabc
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	beq	.Lbfec2
	mov	r3, #0x82
	lsl	r3, #4
	add	r2, r5, r3
	mov	r3, #0x86
	b	.Lbfeca
.Lbfec2:
	mov	r0, #0x82
	lsl	r0, #4
	add	r2, r5, r0
	mov	r3, #0x85
.Lbfeca:
	str	r3, [r2]
	neg	r1, r7
	mov	r0, r8
	bl	_Func_783a4
	cmp	r0, #0
	bne	.Lbfefc
	mov	r1, r8
	mov	r0, #9
	bl	Func_bbabc
	mov	r1, r8
	mov	r0, #0
	bl	Func_bbabc
	mov	r1, r8
	cmp	r1, #7
	bhi	.Lbfef2
	ldr	r1, =0x825
	b	.Lbfef4
.Lbfef2:
	ldr	r1, =0x82b
.Lbfef4:
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbff04
.Lbfefc:
	mov	r0, #0xb
	mov	r1, r8
	bl	Func_bbabc
.Lbff04:
	bl	Func_bb938
	bl	Func_bdfec
	ldr	r3, =0x141
	ldr	r2, [sp, #8]
	add	r1, r2, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbff74
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	cmp	r3, #0
	bne	.Lbff74
	mov	r1, #0xc0
	lsl	r1, #24
	mov	r0, r8
	bl	_Func_783a4
	cmp	r0, #0
	bne	.Lbff74
	mov	r1, r8
	mov	r0, #0
	bl	Func_bbabc
	ldr	r5, =0x828
	mov	r0, #4
	mov	r1, r5
	bl	Func_bbabc
	mov	r1, r8
	mov	r0, #8
	bl	Func_bbabc
	mov	r1, r8
	mov	r0, #9
	bl	Func_bbabc
	mov	r0, #0
	mov	r1, r8
	bl	Func_bbabc
	mov	r0, r8
	cmp	r0, #7
	bhi	.Lbff6c
	sub	r1, r5, #3
	mov	r0, #4
	bl	Func_bbabc
	b	.Lbff74
.Lbff6c:
	add	r1, r5, #3
	mov	r0, #4
	bl	Func_bbabc
.Lbff74:
	bl	Func_bb938
.Lbff78:
	mov	r0, r8
	bl	_Func_77428
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_bfba4

	.section .rodata

.Lc2ab8:
	.incrom 0xc2ab8, 0xc2ac0
.Lc2ac0:
	.incrom 0xc2ac0, 0xc2ad8
.Lc2ad8:
	.incrom 0xc2ad8, 0xc2af0
.Lc2af0:
	.incrom 0xc2af0, 0xc2b08
.Lc2b08:
	.incrom 0xc2b08, 0xc2b20
.Lc2b20:
	.incrom 0xc2b20, 0xc2b38
.Lc2b38:
	.incrom 0xc2b38, 0xc2b50
.Lc2b50:
	.incrom 0xc2b50, 0xc2b68
.Lc2b68:
	.incrom 0xc2b68, 0xc2b80
.Lc2b80:
	.incrom 0xc2b80, 0xc2b88
.Lc2b88:
	.incrom 0xc2b88, 0xc2b90
.Lc2b90:
	.incrom 0xc2b90, 0xc2b98
.Lc2b98:
	.incrom 0xc2b98, 0xc2da0
.Lc2da0:
	.incrom 0xc2da0, 0xc35bc
.Lc35bc:
	.incrom 0xc35bc, 0xc3604
