	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_cf88c
	push	{lr}
	mov	r1, #4
	bl	Func_cf8e0
	pop	{r0}
	bx	r0
.func_end Func_cf88c

.thumb_func_start Func_cf898
	push	{lr}
	mov	r1, #5
	bl	Func_cf8e0
	pop	{r0}
	bx	r0
.func_end Func_cf898

.thumb_func_start Func_cf8a4
	push	{lr}
	mov	r1, #0
	bl	Func_cf8e0
	pop	{r0}
	bx	r0
.func_end Func_cf8a4

.thumb_func_start Func_cf8b0
	push	{lr}
	mov	r1, #1
	bl	Func_cf8e0
	pop	{r0}
	bx	r0
.func_end Func_cf8b0

.thumb_func_start Func_cf8bc
	push	{lr}
	mov	r1, #6
	bl	Func_cf8e0
	pop	{r0}
	bx	r0
.func_end Func_cf8bc

.thumb_func_start Func_cf8c8
	push	{lr}
	mov	r1, #2
	bl	Func_cf8e0
	pop	{r0}
	bx	r0
.func_end Func_cf8c8

.thumb_func_start Func_cf8d4
	push	{lr}
	mov	r1, #3
	bl	Func_cf8e0
	pop	{r0}
	bx	r0
.func_end Func_cf8d4

.thumb_func_start Func_cf8e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x50
	ldr	r2, =iwram_1eec
	str	r0, [sp, #0x38]
	mov	r3, r2
	ldmia	r3!, {r0}
	ldr	r3, [r3]
	str	r3, [sp, #0x34]
	sub	r2, #0x6c
	ldr	r3, =0x7828
	mov	r11, r0
	ldr	r2, [r2]
	mov	r8, r1
	ldr	r1, [sp, #0x38]
	add	r3, r11
	str	r2, [sp, #0x24]
	mov	r0, #1
	str	r1, [r3]
	bl	Func_cd594
	ldr	r3, .Lcf954	@ 0x1010
	ldr	r2, =REG_BLDALPHA
	ldr	r7, =0xbf
	strh	r3, [r2]
	mov	r0, r7
	bl	Func_2f40
	mov	r6, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	mov	r1, r6
	ldr	r5, =Func_1af8
	add	r6, #0x80
	lsl	r0, #19
	bl	_call_via_r5
	mov	r1, r11
	mov	r0, r6
	bl	Func_5340
	ldr	r0, =0x9e
	bl	Func_2f40
	mov	r6, r0
	mov	r0, #0xa0
	mov	r1, r6
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r5
	b	.Lcf970

	.align	2, 0
.Lcf954:
	.word	0x1010
	.pool

.Lcf970:
	mov	r1, #0xfa
	add	r6, #0x80
	lsl	r1, #6
	add	r1, r11
	mov	r0, r6
	bl	Func_5340
	mov	r2, r8
	cmp	r2, #0
	bne	.Lcf988
	ldr	r0, =0x9f
	b	.Lcf9b8
.Lcf988:
	mov	r3, r8
	cmp	r3, #1
	bne	.Lcf992
	ldr	r0, =0x59
	b	.Lcf9b8
.Lcf992:
	mov	r4, r8
	cmp	r4, #2
	bne	.Lcf99c
	ldr	r0, =0xa0
	b	.Lcf9b8
.Lcf99c:
	mov	r0, r8
	cmp	r0, #3
	beq	.Lcf9b6
	mov	r1, r8
	cmp	r1, #4
	bne	.Lcf9ac
	mov	r0, r7
	b	.Lcf9b8
.Lcf9ac:
	mov	r2, r8
	cmp	r2, #6
	bne	.Lcf9b6
	ldr	r0, =0x8d
	b	.Lcf9b8
.Lcf9b6:
	ldr	r0, =0x77
.Lcf9b8:
	bl	Func_2f40
	mov	r6, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r1, r6
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r3, #0
	mov	r10, r3
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	neg	r1, r1
	lsl	r2, #3
.Lcf9da:
	mov	r4, #1
	add	r10, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Lcf9da
	ldr	r5, =0x7828
	add	r5, r11
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r6, [r0]
	mov	r0, #0
	str	r0, [sp, #0x2c]
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	mov	r4, #0x80
	lsl	r4, #11
	cmp	r3, #0
	beq	.Lcfa70
	ldr	r5, =0x7828
	mov	r9, r0
	add	r5, r11
	mov	r7, #0
.Lcfa0c:
	ldr	r1, [sp, #0x2c]
	ldr	r2, [r5]
	lsl	r3, r1, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	str	r4, [sp, #8]
	bl	_Func_b7dd0
	ldr	r3, =ewram_10000
	mov	r2, #0
	ldr	r0, [r0]
	ldr	r4, [sp, #8]
	mov	r10, r2
	add	r1, r7, r3
.Lcfa28:
	ldr	r3, [r6, #8]
	str	r4, [r1, #4]
	str	r3, [r1]
	ldr	r3, [r6, #0x10]
	str	r3, [r1, #8]
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r3, r2
	mov	r2, #0x80
	asr	r3, #4
	lsl	r2, #11
	str	r3, [r1, #0xc]
	str	r2, [r1, #0x10]
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	sub	r3, r2
	asr	r3, #4
	mov	r2, #1
	str	r3, [r1, #0x14]
	add	r10, r2
	mov	r3, r9
	str	r3, [r1, #0x18]
	mov	r3, r10
	add	r1, #0x1c
	cmp	r3, #0x10
	bne	.Lcfa28
	ldr	r1, [sp, #0x2c]
	add	r1, #1
	str	r1, [sp, #0x2c]
	ldr	r3, [r5]
	mov	r0, #0xe0
	ldr	r3, [r3, #0x14]
	lsl	r0, #1
	add	r7, r0
	cmp	r1, r3
	bne	.Lcfa0c
.Lcfa70:
	mov	r2, #0
	mov	r10, r2
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_11c18
	neg	r1, r1
	lsl	r2, #1
.Lcfa7e:
	mov	r4, #1
	add	r10, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Lcfa7e
	ldr	r0, [sp, #0x38]
	ldr	r3, [r0, #4]
	cmp	r3, #0
	bne	.Lcfae4
	mov	r1, #7
	mov	r3, #3
	mov	r6, #2
	mov	r0, #0x2e
	mov	r2, #7
	str	r6, [sp]
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, r8
	lsl	r1, #1
	str	r3, [sp, #0x3c]
	str	r1, [sp, #0x1c]
	ldr	r3, =.Lee0b6
	ldrsb	r3, [r3, r1]
	cmp	r3, #0
	bne	.Lcfac6
	mov	r3, #3
	mov	r2, #7
	mov	r0, #0x2f
	mov	r1, #7
	str	r3, [sp]
	b	.Lcfb34
.Lcfac6:
	mov	r3, #7
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	str	r6, [sp]
	bl	Func_ed408
	mov	r3, r5
	add	r3, #0xbc
	ldr	r3, [r3]
	mov	r4, sp
	add	r4, #0x3c
	str	r4, [sp, #0x20]
	str	r3, [r4, #4]
	b	.Lcfb46
.Lcfae4:
	mov	r3, #7
	mov	r6, #2
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	str	r6, [sp]
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r0, r8
	lsl	r0, #1
	str	r3, [sp, #0x3c]
	str	r0, [sp, #0x1c]
	ldr	r3, =.Lee0b6
	ldrsb	r3, [r3, r0]
	cmp	r3, #0
	bne	.Lcfb2a
	mov	r3, #3
	mov	r1, #7
	mov	r0, #0x2f
	mov	r2, #7
	str	r3, [sp]
	bl	Func_ed408
	mov	r3, r5
	add	r3, #0xbc
	ldr	r3, [r3]
	mov	r1, sp
	add	r1, #0x3c
	str	r1, [sp, #0x20]
	str	r3, [r1, #4]
	b	.Lcfb46
.Lcfb2a:
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	mov	r1, #7
	str	r6, [sp]
.Lcfb34:
	bl	Func_ed408
	mov	r3, r5
	add	r3, #0xbc
	ldr	r3, [r3]
	mov	r2, sp
	add	r2, #0x3c
	str	r2, [sp, #0x20]
	str	r3, [r2, #4]
.Lcfb46:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	ldr	r3, =.Lee0b6
	ldr	r4, [sp, #0x1c]
	ldrsb	r3, [r3, r4]
	cmp	r3, #0
	bne	.Lcfb7a
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x48
	b	.Lcfb86
.Lcfb7a:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x38
.Lcfb86:
	str	r3, [sp, #0x28]
	mov	r0, #0x67
	bl	_Func_f9080
	ldr	r1, [sp, #0x28]
	mov	r0, #0
	str	r0, [sp, #0x30]
	cmp	r1, #0
	bne	.Lcfb9a
	b	.Lcfea6
.Lcfb9a:
	ldr	r2, [sp, #0x24]
	add	r2, #0xc
	str	r2, [sp, #0x14]
.Lcfba0:
	bl	Func_49ac
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x14]
	bl	Func_51d8
	mov	r3, #0
	str	r3, [sp, #0x2c]
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Lcfbbe
	b	.Lcfd88
.Lcfbbe:
	ldr	r4, =ewram_10000
	mov	r0, #0
	str	r4, [sp, #0x10]
	str	r0, [sp, #0xc]
.Lcfbc6:
	ldr	r1, [sp, #0x30]
	ldr	r2, [sp, #0xc]
	cmp	r1, r2
	bge	.Lcfbd0
	b	.Lcfd64
.Lcfbd0:
	mov	r3, r2
	add	r3, #0x11
	ldr	r7, [sp, #0x10]
	cmp	r1, r3
	bne	.Lcfbfc
	ldr	r3, =0x7828
	ldr	r4, [sp, #0x2c]
	add	r3, r11
	ldr	r2, [r3]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r4
	bl	Func_d6888
	mov	r0, #0x85
	bl	_Func_bd7dc
.Lcfbfc:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2, #0x18]
	cmp	r3, #0
	bge	.Lcfc06
	b	.Lcfd64
.Lcfc06:
	ldr	r3, [sp, #0x30]
	ldr	r4, [sp, #0xc]
	mov	r1, #3
	sub	r0, r3, r4
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r5, #9
	ble	.Lcfc1a
	mov	r5, #9
.Lcfc1a:
	add	r6, sp, #0x44
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	bl	Func_e3944
	ldr	r3, [r6]
	asr	r2, r3, #1
	str	r2, [r6]
	cmp	r5, #4
	ble	.Lcfc88
	lsl	r1, r5, #1
	ldr	r3, [r6, #4]
	mov	r0, #0x20
	add	r1, r5
	lsl	r1, #8
	str	r0, [sp]
	mov	r0, #0x18
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0x10
	sub	r3, #0xc
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	b	.Lcfca6

	.pool_aligned

.Lcfc88:
	lsl	r1, r5, #1
	ldr	r3, [r6, #4]
	mov	r0, #0x18
	add	r1, r5
	lsl	r1, #8
	str	r0, [sp]
	mov	r0, #0x20
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0xc
	sub	r3, #0x10
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
.Lcfca6:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Lcfcb6
	mov	r0, r7
	mov	r1, #0x3f
	ldr	r2, =0xffff8000
	bl	Func_e38b8
.Lcfcb6:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.Lcfd64
	mov	r3, #0
	str	r3, [r7, #4]
	mov	r3, #1
	str	r3, [r7, #0x18]
	ldr	r0, =.Lee0b6
	ldr	r1, [sp, #0x1c]
	ldrsb	r3, [r0, r1]
	mov	r2, #4
	mov	r9, r2
	cmp	r3, #0
	beq	.Lcfcd6
	mov	r3, #0x10
	mov	r9, r3
.Lcfcd6:
	mov	r4, #0
	mov	r0, r9
	mov	r10, r4
	cmp	r0, #0
	beq	.Lcfd64
	ldr	r1, [sp, #0x2c]
	lsl	r1, #2
	mov	r2, #0x3f
	str	r1, [sp, #0x18]
	mov	r8, r2
.Lcfcea:
	ldr	r3, [sp, #0x18]
	lsl	r2, r3, #3
	add	r2, r10
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r4, =ewram_11c00
	lsl	r3, #2
	add	r5, r3, r4
	ldr	r3, [r7]
	str	r3, [r5]
	ldr	r3, [r7, #4]
	str	r3, [r5, #4]
	ldr	r3, [r7, #8]
	str	r3, [r5, #8]
	ldr	r0, =.Lee0b6
	ldr	r1, [sp, #0x1c]
	ldrsb	r6, [r0, r1]
	cmp	r6, #0
	bne	.Lcfd2e
	bl	Func_4458
	mov	r2, r8
	and	r0, r2
	sub	r0, #0x20
	lsl	r0, #11
	str	r0, [r5, #0xc]
	str	r6, [r5, #0x10]
	bl	Func_4458
	mov	r3, r8
	and	r0, r3
	sub	r0, #0x20
	lsl	r0, #11
	b	.Lcfd56
.Lcfd2e:
	bl	Func_4458
	mov	r4, r8
	and	r0, r4
	sub	r0, #0x20
	lsl	r0, #13
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x20
	lsl	r3, #12
	str	r3, [r5, #0x10]
	bl	Func_4458
	mov	r1, r8
	and	r0, r1
	sub	r0, #0x20
	lsl	r0, #13
.Lcfd56:
	str	r0, [r5, #0x14]
	mov	r2, #1
	mov	r3, #0
	add	r10, r2
	str	r3, [r5, #0x18]
	cmp	r10, r9
	bne	.Lcfcea
.Lcfd64:
	ldr	r3, [sp, #0x10]
	mov	r4, #0xe0
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x2c]
	lsl	r4, #1
	add	r3, r4
	str	r3, [sp, #0x10]
	add	r0, #8
	add	r1, #1
	ldr	r3, =0x7828
	str	r0, [sp, #0xc]
	str	r1, [sp, #0x2c]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	beq	.Lcfd88
	b	.Lcfbc6
.Lcfd88:
	ldr	r3, =ewram_11c00
	ldr	r4, =.Lee0b6
	mov	r2, #0
	mov	r10, r2
	mov	r8, r3
	mov	r9, r4
.Lcfd94:
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	cmp	r3, #0x2c
	bhi	.Lcfe6e
	ldr	r3, [r0, #4]
	cmp	r3, #0
	blt	.Lcfe6e
	add	r6, sp, #0x44
	mov	r1, r6
	bl	Func_e3944
	ldr	r3, [r6]
	asr	r2, r3, #1
	str	r2, [r6]
	ldr	r4, [sp, #0x1c]
	mov	r1, r9
	ldrsb	r3, [r1, r4]
	cmp	r3, #0
	bne	.Lcfdee
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bge	.Lcfdc4
	add	r3, #7
.Lcfdc4:
	asr	r3, #3
	lsl	r1, r3, #3
	add	r1, r3
	lsl	r1, #7
	mov	r3, #0xfa
	lsl	r3, #6
	mov	r0, #0x18
	add	r1, r11
	add	r1, r3
	ldr	r3, [r6, #4]
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x20]
	sub	r2, #0xc
	ldr	r4, [r0, #4]
	sub	r3, #0x18
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	b	.Lcfe44
.Lcfdee:
	mov	r1, r8
	ldr	r0, [r1, #0x18]
	mov	r1, #5
	bl	Func_af0_from_thumb
	mov	r1, #1
	mov	r3, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lcfe04
	add	r0, #9
.Lcfe04:
	ldr	r3, [sp, #0x38]
	mov	r4, r8
	ldr	r2, [r3, #4]
	ldr	r3, [r4, #0xc]
	cmp	r3, #0
	ble	.Lcfe12
	eor	r2, r1
.Lcfe12:
	lsl	r7, r2, #2
	ldr	r2, =.Lee0e8
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Lee0c4
	mov	r2, #0xf0
	ldrb	r5, [r3, r0]
	lsl	r2, #5
	add	r1, r11
	add	r1, r2
	ldr	r2, [r6]
	lsr	r3, r5, #1
	sub	r2, r3
	ldr	r3, =.Lee0d6
	ldrb	r4, [r3, r0]
	ldr	r3, [r6, #4]
	lsr	r0, r4, #1
	sub	r3, r0
	ldr	r0, [sp, #0x20]
	str	r5, [sp]
	str	r4, [sp, #4]
	ldr	r4, [r7, r0]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
.Lcfe44:
	ldr	r2, [sp, #0x1c]
	mov	r1, r9
	ldrsb	r3, [r1, r2]
	cmp	r3, #0
	bne	.Lcfe5c
	mov	r2, #0x80
	mov	r0, r8
	mov	r1, #0x3e
	lsl	r2, #4
	bl	Func_e38b8
	b	.Lcfe66
.Lcfe5c:
	mov	r0, r8
	mov	r1, #0x3e
	ldr	r2, =0xffff8000
	bl	Func_e38b8
.Lcfe66:
	mov	r4, r8
	ldr	r3, [r4, #0x18]
	add	r3, #1
	str	r3, [r4, #0x18]
.Lcfe6e:
	mov	r1, #1
	mov	r2, #0x80
	mov	r0, #0x1c
	add	r10, r1
	lsl	r2, #1
	add	r8, r0
	cmp	r10, r2
	bne	.Lcfd94
	mov	r0, #2
	mov	r1, #2
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [sp, #0x30]
	ldr	r4, [sp, #0x28]
	add	r3, #1
	str	r3, [sp, #0x30]
	cmp	r3, r4
	beq	.Lcfea6
	b	.Lcfba0
.Lcfea6:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x50
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cf8e0

	.section .rodata

.Lee0b6:
	.incrom 0xee0b6, 0xee0c4
.Lee0c4:
	.incrom 0xee0c4, 0xee0d6
.Lee0d6:
	.incrom 0xee0d6, 0xee0e8
.Lee0e8:
	.incrom 0xee0e8, 0xee10c
