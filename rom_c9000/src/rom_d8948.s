	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_d8948
	push	{lr}
	mov	r1, #0
	bl	Func_d89ac
	pop	{r0}
	bx	r0
.func_end Func_d8948

.thumb_func_start Func_d8954
	push	{lr}
	mov	r1, #1
	bl	Func_d89ac
	pop	{r0}
	bx	r0
.func_end Func_d8954

.thumb_func_start Func_d8960
	push	{lr}
	mov	r1, #2
	bl	Func_d89ac
	pop	{r0}
	bx	r0
.func_end Func_d8960

.thumb_func_start Func_d896c
	push	{lr}
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.Ld897c
	mov	r1, #3
	bl	Func_d89ac
	b	.Ld8982
.Ld897c:
	mov	r1, #4
	bl	Func_d89ac
.Ld8982:
	pop	{r0}
	bx	r0
.func_end Func_d896c

.thumb_func_start Func_d8988
	push	{lr}
	mov	r1, #4
	bl	Func_d89ac
	pop	{r0}
	bx	r0
.func_end Func_d8988

.thumb_func_start Func_d8994
	push	{lr}
	mov	r1, #5
	bl	Func_d89ac
	pop	{r0}
	bx	r0
.func_end Func_d8994

.thumb_func_start Func_d89a0
	push	{lr}
	mov	r1, #6
	bl	Func_d89ac
	pop	{r0}
	bx	r0
.func_end Func_d89a0

.thumb_func_start Func_d89ac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1eec
	mov	r3, r2
	mov	r6, r0
	ldmia	r3!, {r0}
	sub	sp, #0x80
	str	r0, [sp, #0x48]
	ldr	r3, [r3]
	str	r3, [sp, #0x44]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x38]
	ldr	r2, =0x7828
	mov	r10, r1
	add	r5, r0, r2
	mov	r1, #0
	str	r1, [sp, #0x30]
	mov	r0, #0
	str	r6, [r5]
	bl	Func_cd594
	ldr	r5, [r5]
	ldr	r3, [r5, #0x1c]
	cmp	r3, #1
	bne	.Ld8a32
	mov	r3, #6
	mov	r0, r10
	eor	r3, r0
	neg	r2, r3
	orr	r2, r3
	lsr	r1, r2, #31
	mov	r3, #2
	sub	r1, r3, r1
	cmp	r0, #6
	beq	.Ld8a00
	cmp	r0, #0
	bne	.Ld8a14
.Ld8a00:
	add	r3, sp, #0x58
	ldr	r2, [r5, #4]
	str	r3, [sp]
	add	r3, sp, #0x54
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r3, #0
	bl	Func_de2f8
	b	.Ld8a26
.Ld8a14:
	add	r3, sp, #0x58
	ldr	r2, [r5, #4]
	str	r3, [sp]
	add	r3, sp, #0x54
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r3, #1
	bl	Func_de2f8
.Ld8a26:
	ldr	r1, [sp, #0x48]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x18]
.Ld8a32:
	mov	r3, r10
	cmp	r3, #0
	bne	.Ld8a78
	ldr	r0, [sp, #0x48]
	ldr	r1, =0x7828
	add	r3, r0, r1
	ldr	r3, [r3]
	add	r5, sp, #0x74
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	Func_e396c
	ldr	r2, [r5]
	mov	r3, #0x40
	sub	r3, r2
	ldr	r2, =REG_BG2X
	str	r3, [sp, #0x30]
	lsl	r3, #8
	str	r3, [r2]
	ldr	r3, .Ld8a68	@ 0x100
	sub	r2, #8
	strh	r3, [r2]
	mov	r3, #0
	str	r3, [sp, #0x2c]
	b	.Ld8a7c

	.align	2, 0
.Ld8a68:
	.word	0x100
	.pool

.Ld8a78:
	mov	r0, #1
	str	r0, [sp, #0x2c]
.Ld8a7c:
	ldr	r1, [sp, #0x38]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0xba
	ldr	r1, [sp, #0x48]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	mov	r1, r10
	cmp	r1, #1
	bls	.Ld8aa6
	cmp	r1, #3
	beq	.Ld8aa6
	cmp	r1, #4
	beq	.Ld8aa6
	cmp	r1, #5
	bne	.Ld8abc
.Ld8aa6:
	ldr	r2, [sp, #0x48]
	ldr	r0, =0x7828
	add	r3, r2, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	cmp	r3, #0
	bne	.Ld8ab8
	ldr	r0, =0xb3
	b	.Ld8ac8
.Ld8ab8:
	ldr	r0, =0xb9
	b	.Ld8ac8
.Ld8abc:
	mov	r1, r10
	cmp	r1, #6
	bne	.Ld8ac6
	ldr	r0, =0x8d
	b	.Ld8ac8
.Ld8ac6:
	ldr	r0, =0xc0
.Ld8ac8:
	bl	Func_2f40
	mov	r2, r0
	mov	r0, #0xa0
	mov	r1, r2
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r2, [sp, #0x2c]
	cmp	r2, #0
	bne	.Ld8af0
	mov	r3, r10
	cmp	r3, #6
	bne	.Ld8aec
	ldr	r0, =0x8d
	b	.Ld8afc
.Ld8aec:
	ldr	r0, =0x91
	b	.Ld8afc
.Ld8af0:
	mov	r0, r10
	cmp	r0, #6
	bne	.Ld8afa
	ldr	r0, =0x8e
	b	.Ld8afc
.Ld8afa:
	ldr	r0, =0x92
.Ld8afc:
	bl	Func_2f40
	mov	r2, r0
	ldr	r3, [sp, #0x48]
	mov	r0, #0x80
	add	r2, #0x80
	lsl	r0, #5
	add	r1, r3, r0
	mov	r0, r2
	bl	Func_5340
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x48]
	add	r3, r1, r2
	ldr	r3, [r3]
	ldr	r0, [r3, #4]
	mov	r3, sp
	add	r3, #0x4c
	mov	r1, r3
	str	r3, [sp, #0x28]
	bl	Func_cef64
	mov	r0, r10
	cmp	r0, #0
	beq	.Ld8b32
	cmp	r0, #6
	bne	.Ld8b82
.Ld8b32:
	mov	r1, #0
	ldr	r5, =ewram_10000
	mov	r8, r1
	mov	r6, #0xff
.Ld8b3a:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	add	r3, #0x40
	lsl	r3, #15
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0
	and	r0, r6
	str	r3, [r5, #0x18]
	sub	r0, #0x7f
	mov	r2, #1
	mov	r3, #0x80
	lsl	r0, #15
	add	r8, r2
	lsl	r3, #2
	str	r0, [r5, #8]
	add	r5, #0x1c
	cmp	r8, r3
	bne	.Ld8b3a
	ldr	r0, [sp, #0x48]
	ldr	r1, =0x7828
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x58
	b	.Ld8cda
.Ld8b82:
	mov	r2, r10
	cmp	r2, #1
	bne	.Ld8bd6
	mov	r3, #0
	ldr	r5, =ewram_10000
	mov	r8, r3
	mov	r6, #0xff
.Ld8b90:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5, #8]
	mov	r1, #0x80
	mov	r0, #1
	mov	r3, #0
	add	r8, r0
	lsl	r1, #2
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r8, r1
	bne	.Ld8b90
	ldr	r2, [sp, #0x48]
	ldr	r0, =0x7828
	add	r3, r2, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x58
	b	.Ld8cda
.Ld8bd6:
	mov	r1, r10
	cmp	r1, #2
	bne	.Ld8c42
	mov	r2, #0
	ldr	r7, =ewram_10000
	mov	r8, r2
.Ld8be2:
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	mov	r5, #0x3f
	and	r5, r0
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x20
	mov	r3, r5
	mul	r3, r0
	str	r3, [r7]
	ldr	r3, =0xffce0000
	mov	r0, r6
	str	r3, [r7, #4]
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	str	r3, [r7, #8]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x20
	lsl	r3, #13
	str	r3, [r7, #0x10]
	mov	r3, #0
	str	r3, [r7, #0x18]
	mov	r0, #0x80
	mov	r3, #1
	add	r8, r3
	lsl	r0, #2
	add	r7, #0x1c
	cmp	r8, r0
	bne	.Ld8be2
	ldr	r1, [sp, #0x48]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x58
	b	.Ld8cda
.Ld8c42:
	mov	r3, r10
	cmp	r3, #3
	bne	.Ld8c8e
	mov	r0, #0
	ldr	r5, =ewram_10000
	mov	r8, r0
	mov	r6, #0xff
.Ld8c50:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #14
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	mov	r1, #1
	mov	r2, #0x80
	lsl	r0, #15
	mov	r3, #0
	add	r8, r1
	lsl	r2, #2
	str	r0, [r5, #8]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r8, r2
	bne	.Ld8c50
	ldr	r0, [sp, #0x48]
	ldr	r1, =0x7828
	add	r3, r0, r1
	b	.Ld8cd2
.Ld8c8e:
	mov	r2, #0
	ldr	r5, =ewram_10000
	mov	r8, r2
	mov	r6, #0xff
.Ld8c96:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	mov	r3, #0
	str	r0, [r5, #8]
	str	r3, [r5, #0x18]
	mov	r0, #0x80
	mov	r3, #1
	add	r8, r3
	lsl	r0, #2
	add	r5, #0x1c
	cmp	r8, r0
	bne	.Ld8c96
	ldr	r1, [sp, #0x48]
	ldr	r2, =0x7828
	add	r3, r1, r2
.Ld8cd2:
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x48
.Ld8cda:
	str	r3, [sp, #0x40]
	mov	r3, #0x40
	ldr	r0, [sp, #0x48]
	ldr	r1, =0x7828
	str	r3, [sp, #0x34]
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	cmp	r3, #0
	bne	.Ld8cf4
	mov	r2, #0x20
	str	r2, [sp, #0x34]
	b	.Ld8cfc
.Ld8cf4:
	cmp	r3, #2
	bne	.Ld8cfc
	mov	r3, #0x80
	str	r3, [sp, #0x34]
.Ld8cfc:
	ldr	r0, [sp, #0x48]
	mov	r1, #0xef
	lsl	r1, #7
	add	r2, r0, r1
	mov	r3, #2
	str	r3, [r2]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r0, r3
	mov	r3, #0x4b
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r1, [sp, #0x40]
	mov	r0, #0
	mov	r11, r0
	cmp	r1, #0
	bne	.Ld8d26
	b	.Ld913a
.Ld8d26:
	str	r0, [sp, #0xc]
.Ld8d28:
	ldr	r3, =iwram_1e80
	ldr	r3, [r3]
	mov	r2, r11
	str	r3, [sp, #0x24]
	cmp	r2, #0x28
	bne	.Ld8d3a
	mov	r0, #0
	bl	_Func_bd7dc
.Ld8d3a:
	ldr	r0, [sp, #0x48]
	ldr	r1, =0x7828
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	beq	.Ld8d4a
	b	.Ld8e80
.Ld8d4a:
	ldr	r2, [sp, #0x2c]
	cmp	r2, #0
	bne	.Ld8e08
	ldr	r0, [sp, #0xc]
	bl	Func_2322
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, [sp, #0x58]
	lsl	r3, #2
	ldr	r0, [sp, #0x30]
	asr	r3, #16
	add	r3, r2
	add	r3, r0
	sub	r3, #0x14
	ldr	r0, [sp, #0xc]
	mov	r8, r3
	bl	Func_231c
	lsl	r0, #2
	ldr	r3, [sp, #0x54]
	asr	r0, #16
	add	r0, r3
	mov	r5, r0
	mov	r1, r11
	sub	r5, #0x18
	cmp	r1, #0x20
	ble	.Ld8d8a
	lsl	r3, r1, #1
	sub	r3, r5, r3
	mov	r5, r3
	add	r5, #0x40
.Ld8d8a:
	ldr	r2, [sp, #0x48]
	mov	r3, #0x80
	lsl	r3, #5
	add	r7, r2, r3
	mov	r6, #0x28
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r4, [sp, #0x4c]
	ldr	r0, [sp, #0x44]
	mov	r1, r7
	mov	r2, r8
	mov	r3, r5
	bl	_call_via_r4
	mov	r0, r11
	cmp	r0, #3
	bgt	.Ld8e80
	ldr	r1, [sp, #0x28]
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x44]
	ldr	r4, [r1, #4]
	mov	r2, r8
	mov	r1, r7
	mov	r3, r5
	bl	_call_via_r4
	b	.Ld8e80

	.pool_aligned

.Ld8e08:
	ldr	r0, [sp, #0xc]
	bl	Func_2322
	ldr	r3, [sp, #0x58]
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r1, r3, #31
	add	r3, r1
	lsl	r2, #1
	asr	r3, #1
	asr	r2, #16
	add	r2, r3
	sub	r2, #0xa
	ldr	r0, [sp, #0xc]
	mov	r9, r2
	bl	Func_231c
	lsl	r0, #2
	ldr	r3, [sp, #0x54]
	asr	r0, #16
	add	r0, r3
	mov	r5, r0
	mov	r2, r11
	sub	r5, #0x18
	cmp	r2, #0x20
	ble	.Ld8e44
	lsl	r3, r2, #1
	sub	r3, r5, r3
	mov	r5, r3
	add	r5, #0x40
.Ld8e44:
	ldr	r3, [sp, #0x48]
	mov	r0, #0x80
	lsl	r0, #5
	add	r6, r3, r0
	mov	r1, #0x14
	mov	r7, #0x28
	str	r1, [sp]
	mov	r2, r9
	mov	r8, r1
	str	r7, [sp, #4]
	ldr	r4, [sp, #0x4c]
	ldr	r0, [sp, #0x44]
	mov	r1, r6
	mov	r3, r5
	bl	_call_via_r4
	mov	r2, r11
	cmp	r2, #3
	bgt	.Ld8e80
	mov	r3, r8
	str	r3, [sp]
	ldr	r0, [sp, #0x28]
	str	r7, [sp, #4]
	mov	r1, r6
	ldr	r4, [r0, #4]
	mov	r2, r9
	ldr	r0, [sp, #0x44]
	mov	r3, r5
	bl	_call_via_r4
.Ld8e80:
	mov	r1, #0
	str	r1, [sp, #0x3c]
	ldr	r2, =0x7828
	ldr	r0, [sp, #0x48]
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld8e92
	b	.Ld9110
.Ld8e92:
	ldr	r1, [sp, #0x24]
	mov	r3, sp
	add	r1, #0xc
	add	r3, #0x5c
	mov	r0, r11
	str	r1, [sp, #0x20]
	str	r3, [sp, #0x1c]
	lsl	r0, #9
	mov	r1, #0x24
	mov	r3, #0
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x10]
	str	r3, [sp, #8]
.Ld8eac:
	ldr	r0, [sp, #0x48]
	add	r6, r0, r2
	ldr	r1, [sp, #0x10]
	ldr	r3, [r6]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [sp, #0x3c]
	lsl	r3, #3
	ldr	r5, [r0]
	mov	r9, r3
	bl	Func_49ac
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x20]
	bl	Func_51d8
	ldr	r3, [r5, #8]
	ldr	r0, [sp, #0x1c]
	str	r3, [r0]
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r0, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r0, #8]
	ldr	r0, [sp, #0x1c]
	bl	Func_4cb4
	mov	r3, r9
	add	r3, #0x14
	cmp	r11, r3
	bne	.Ld8ef2
	mov	r0, #0x7e
	bl	_Func_f9080
.Ld8ef2:
	mov	r3, r9
	add	r3, #0x24
	cmp	r11, r3
	bne	.Ld8f10
	ldr	r3, [r6]
	ldr	r1, [sp, #0x10]
	ldrsh	r0, [r3, r1]
	mov	r3, #0x1c
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	ldr	r3, [sp, #0x3c]
	bl	Func_d6888
.Ld8f10:
	cmp	r11, r9
	bgt	.Ld8f16
	b	.Ld90e4
.Ld8f16:
	mov	r3, r10
	cmp	r3, #0
	beq	.Ld8f58
	cmp	r3, #6
	beq	.Ld8f58
	mov	r0, r10
	cmp	r0, #1
	bne	.Ld8f38
	mov	r1, r11
	lsl	r5, r1, #9
	mov	r0, r5
	bl	Func_4bd4
	mov	r0, r5
	bl	Func_4c6c
	b	.Ld8f6c
.Ld8f38:
	mov	r2, r10
	cmp	r2, #2
	bne	.Ld8f52
	ldr	r3, [sp, #0x3c]
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #3
	mov	r1, r11
	sub	r0, r1, r0
	lsl	r0, #9
	bl	Func_4c1c
	b	.Ld8f6c
.Ld8f52:
	mov	r2, r10
	cmp	r2, #3
	bne	.Ld8f60
.Ld8f58:
	ldr	r0, [sp, #0x14]
	bl	Func_4c1c
	b	.Ld8f6c
.Ld8f60:
	ldr	r0, [sp, #0x14]
	bl	Func_4c1c
	ldr	r0, [sp, #0x14]
	bl	Func_4bd4
.Ld8f6c:
	ldr	r0, [sp, #0x34]
	mov	r3, #0
	mov	r8, r3
	cmp	r0, #0
	bne	.Ld8f78
	b	.Ld90e4
.Ld8f78:
	mov	r1, r10
	sub	r1, #3
	ldr	r2, [sp, #8]
	ldr	r3, =ewram_10000
	str	r1, [sp, #0x18]
	add	r6, r2, r3
.Ld8f84:
	ldr	r0, [sp, #0x18]
	cmp	r0, #2
	bhi	.Ld8f9a
	mov	r1, r8
	lsr	r3, r1, #31
	add	r3, r8
	asr	r3, #1
	add	r3, r9
	mov	r2, r3
	add	r2, #0x20
	b	.Ld8f9e
.Ld8f9a:
	mov	r2, #0x80
	lsl	r2, #9
.Ld8f9e:
	mov	r3, r8
	cmp	r3, #0
	bge	.Ld8fa6
	add	r3, #3
.Ld8fa6:
	asr	r3, #2
	add	r3, r9
	cmp	r11, r3
	bgt	.Ld8fb0
	b	.Ld90d6
.Ld8fb0:
	cmp	r11, r2
	blt	.Ld8fb6
	b	.Ld90d6
.Ld8fb6:
	ldr	r3, [r6]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r6, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	ldr	r3, [r6, #8]
	asr	r3, #8
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	asr	r7, r0, #9
	cmp	r7, #0
	beq	.Ld90d6
	add	r5, sp, #0x68
	mov	r0, r6
	mov	r1, r5
	bl	Func_e3944
	mov	r2, r10
	cmp	r2, #0
	bne	.Ld8ff8
	ldr	r3, [r5]
	ldr	r0, [sp, #0x30]
	add	r3, r0
	b	.Ld8ffc
.Ld8ff8:
	ldr	r3, [r5]
	asr	r3, #1
.Ld8ffc:
	str	r3, [r5]
	ldr	r3, [r5, #4]
	add	r3, #0x10
	str	r3, [r5, #4]
	ldr	r1, =0x139
	ldr	r3, [r5, #8]
	cmp	r3, r1
	bgt	.Ld9012
	mov	r3, #0x9d
	lsl	r3, #1
	str	r3, [r5, #8]
.Ld9012:
	ldr	r2, =0x27a
	cmp	r3, r2
	ble	.Ld901c
	str	r2, [r5, #8]
	mov	r3, r2
.Ld901c:
	ldr	r0, =0xfffffec6
	add	r2, r3, r0
	cmp	r2, #0
	bge	.Ld9028
	mov	r2, r3
	sub	r2, #0xbb
.Ld9028:
	asr	r2, #7
	mov	r3, #3
	mov	r1, r10
	sub	r4, r3, r2
	cmp	r1, #0
	bne	.Ld9044
	mov	r2, r8
	lsl	r0, r2, #2
	add	r0, r11
	mov	r1, #9
	bl	Func_b1c_from_thumb
	mov	r4, r0
	b	.Ld9052
.Ld9044:
	mov	r3, r10
	cmp	r3, #3
	beq	.Ld9052
	cmp	r3, #4
	beq	.Ld9052
	cmp	r3, #5
	bne	.Ld907a
.Ld9052:
	ldr	r2, =Data_ede84
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r0, [sp, #0x48]
	ldr	r3, =Data_ede96
	add	r1, r0, r1
	ldrb	r0, [r3, r4]
	ldr	r2, [r5]
	lsr	r4, r0, #1
	ldr	r3, [r5, #4]
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x28]
	sub	r2, r4
	sub	r3, r4
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
	b	.Ld90a2
.Ld907a:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x38]
	lsr	r3, r4, #31
	add	r3, r4, r3
	add	r1, r2, r1
	ldr	r2, [r5]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp, #4]
	str	r4, [sp]
	ldr	r0, [sp, #0x28]
	sub	r3, r4
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
.Ld90a2:
	mov	r1, r10
	cmp	r1, #2
	bls	.Ld90ac
	cmp	r1, #6
	bne	.Ld90d6
.Ld90ac:
	ldr	r5, [r6]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6]
	ldr	r5, [r6, #4]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #4]
	ldr	r5, [r6, #8]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #8]
.Ld90d6:
	mov	r2, #1
	ldr	r3, [sp, #0x34]
	add	r8, r2
	add	r6, #0x1c
	cmp	r8, r3
	beq	.Ld90e4
	b	.Ld8f84
.Ld90e4:
	ldr	r0, [sp, #0x14]
	ldr	r1, =0xfffff000
	add	r0, r1
	str	r0, [sp, #0x14]
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #0x3c]
	mov	r0, #0xe0
	lsl	r0, #3
	add	r3, r0
	add	r2, #2
	add	r1, #1
	str	r2, [sp, #0x10]
	str	r3, [sp, #8]
	str	r1, [sp, #0x3c]
	ldr	r2, =0x7828
	ldr	r0, [sp, #0x48]
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	beq	.Ld9110
	b	.Ld8eac
.Ld9110:
	bl	Func_cd52c
	ldr	r3, =0x7824
	ldr	r1, [sp, #0x48]
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0x80
	ldr	r0, [sp, #0xc]
	lsl	r1, #4
	mov	r2, #1
	ldr	r3, [sp, #0x40]
	add	r0, r1
	add	r11, r2
	str	r0, [sp, #0xc]
	cmp	r11, r3
	beq	.Ld913a
	b	.Ld8d28
.Ld913a:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x80
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d89ac
