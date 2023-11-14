	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_d6970
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x64
	str	r3, [sp, #0x40]
	ldr	r3, =0x7828
	mov	r9, r1
	add	r3, r9
	str	r0, [r3]
	ldr	r1, =0x177
	mov	r0, #8
	mov	r2, #1
	bl	Func_dbb24
	mov	r2, #0
	mov	r10, r2
	mov	r1, #0x80
	ldr	r2, =ewram_10000
	mov	r0, #0x7f
	lsl	r1, #3
.Ld69a6:
	mov	r3, r10
	and	r3, r0
	strb	r3, [r2]
	mov	r3, #1
	add	r10, r3
	add	r2, #1
	cmp	r10, r1
	bne	.Ld69a6
	mov	r4, #0
	mov	r0, #0x7f
	mov	r10, r4
	mov	r8, r0
	mov	r11, r4
.Ld69c0:
	mov	r7, #0
	mov	r6, r11
.Ld69c4:
	bl	Func_4458
	mov	r1, r8
	mov	r5, r0
	and	r5, r1
	bl	Func_4458
	mov	r2, r8
	ldr	r3, =ewram_10000
	and	r0, r2
	add	r0, r6, r0
	add	r5, r6, r5
	add	r0, r3
	add	r5, r3
	ldrb	r2, [r0]
	ldrb	r3, [r5]
	add	r7, #1
	strb	r3, [r0]
	strb	r2, [r5]
	cmp	r7, #0x80
	bne	.Ld69c4
	mov	r0, #1
	add	r10, r0
	mov	r4, #0x80
	mov	r1, r10
	add	r11, r4
	cmp	r1, #8
	bne	.Ld69c0
	mov	r0, #0
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld6a40	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ld6a44	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r0, =0xb2
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r6, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #0x44]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	b	.Ld6a64

	.align	2, 0
.Ld6a40:
	.word	0x100
.Ld6a44:
	.word	0
	.pool

.Ld6a64:
	bl	Func_ed408
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x44
	str	r2, [sp, #0x24]
	str	r3, [r2, #4]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r9
	str	r6, [r3]
	add	r2, r9
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	ldr	r3, =0xffffe000
	ldr	r2, =REG_BG2X
	mov	r4, #0x5a
	mov	r5, #0xe1
	str	r3, [r2]
	neg	r4, r4
	mov	r3, #0
	lsl	r5, #7
	mov	r10, r3
	mov	r7, #7
	mov	r8, r4
	mov	r6, #0
	add	r5, r9
.Ld6aa8:
	mov	r0, r10
	cmp	r0, #4
	bgt	.Ld6aba
	str	r6, [r5]
	bl	Func_4458
	and	r0, r7
	add	r0, #0x68
	b	.Ld6ac6
.Ld6aba:
	mov	r1, r8
	str	r1, [r5]
	bl	Func_4458
	and	r0, r7
	add	r0, #0x6c
.Ld6ac6:
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r7
	add	r0, #4
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x10
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r2, #0x14
	mov	r4, r10
	add	r8, r2
	add	r6, #0x14
	add	r5, #0x1c
	cmp	r4, #0x10
	bne	.Ld6aa8
	ldr	r5, =0x7240
	mov	r0, #0
	mov	r10, r0
	add	r5, r9
.Ld6af8:
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x40
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	mov	r1, #1
	neg	r3, r3
	add	r10, r1
	sub	r3, #8
	mov	r2, r10
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x10
	bne	.Ld6af8
	mov	r5, #0xe8
	mov	r3, #0
	lsl	r5, #7
	mov	r10, r3
	mov	r6, #0
	add	r5, r9
.Ld6b36:
	mov	r3, #0x80
	lsl	r3, #16
	str	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #15
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	add	r3, #0xc8
	mov	r4, #1
	neg	r3, r3
	add	r10, r4
	lsl	r3, #9
	mov	r0, r10
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r0, #0x10
	bne	.Ld6b36
	ldr	r5, =0x7828
	mov	r1, r9
	ldr	r0, [r1, r5]
	bl	Func_d6750
	ldr	r2, =0xffc00000
	mov	r3, #0
	str	r2, [sp, #0x38]
	str	r3, [sp, #0x34]
	str	r3, [sp, #0x3c]
.Ld6b76:
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Ld6ba4
	ldr	r4, [sp, #0x3c]
	cmp	r4, #0xbe
	ble	.Ld6ba4
	ldr	r0, =0x11d
	cmp	r4, r0
	bgt	.Ld6ba4
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r3, =Func_8d4
	ldr	r0, [sp, #0x40]
	bl	_call_via_r3
	mov	r1, #0x8f
	lsl	r1, #1
	str	r1, [sp, #0x3c]
.Ld6ba4:
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0xe0
	bne	.Ld6bb4
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #0
	str	r3, [r2]
.Ld6bb4:
	bl	Func_49ac
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
	ldr	r3, [sp, #0x3c]
	cmp	r3, #0x1f
	bne	.Ld6c04
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	mov	r0, #0x9d
	bl	_Func_f9080
	ldr	r1, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r1]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r10, r4
	cmp	r3, #0
	beq	.Ld6c04
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Ld6bec:
	ldr	r3, [r5]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	mov	r3, #1
	add	r10, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	cmp	r10, r3
	bne	.Ld6bec
.Ld6c04:
	ldr	r4, [sp, #0x3c]
	cmp	r4, #0x48
	bne	.Ld6c10
	mov	r0, #0x88
	bl	_Func_f9080
.Ld6c10:
	ldr	r0, [sp, #0x3c]
	cmp	r0, #0x8c
	bne	.Ld6c1c
	mov	r0, #0x9c
	bl	_Func_f9080
.Ld6c1c:
	ldr	r1, [sp, #0x34]
	mov	r2, #0x80
	ldr	r3, [sp, #0x38]
	lsl	r2, #7
	add	r1, r2
	mov	r4, #0x80
	add	r3, r1
	lsl	r4, #15
	str	r1, [sp, #0x34]
	str	r3, [sp, #0x38]
	cmp	r3, r4
	ble	.Ld6c36
	str	r4, [sp, #0x38]
.Ld6c36:
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #16
	ldr	r2, [sp, #0x38]
	bl	Func_e6d3c
	ldr	r0, [sp, #0x3c]
	sub	r0, #0x30
	cmp	r0, #0x30
	bhi	.Ld6c76
	mov	r1, #0x18
	bl	Func_af0_from_thumb
	mov	r1, #3
	bl	Func_b1c_from_thumb
	ldr	r3, =0x77e4
	ldr	r6, =.Lee910
	mov	r5, r0
	add	r3, r9
	lsl	r5, #1
	ldrb	r1, [r6, r5]
	ldr	r0, [r3]
	bl	_Func_ba30
	ldr	r3, =0x77e8
	add	r5, #1
	add	r3, r9
	ldr	r0, [r3]
	ldrb	r1, [r6, r5]
	bl	_Func_ba30
.Ld6c76:
	ldr	r3, [sp, #0x3c]
	sub	r3, #0x48
	cmp	r3, #0x37
	bhi	.Ld6cee
	mov	r6, #0xe8
	mov	r0, #0
	lsl	r6, #7
	mov	r10, r0
	add	r6, r9
.Ld6c88:
	mov	r3, r10
	ldr	r1, [sp, #0x3c]
	add	r3, #0x48
	cmp	r1, r3
	blt	.Ld6ce2
	ldr	r5, [r6, #4]
	ldr	r2, =0x67ffff
	cmp	r5, r2
	bgt	.Ld6ce2
	mov	r0, r1
	add	r0, r10
	cmp	r0, #0
	bge	.Ld6ca4
	add	r0, #3
.Ld6ca4:
	mov	r1, #5
	asr	r0, #2
	bl	Func_b1c_from_thumb
	ldr	r4, =.Lee916
	lsl	r1, r0, #1
	ldrh	r1, [r4, r1]
	ldr	r4, =.Lee920
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	asr	r3, r5, #16
	ldrb	r5, [r4, r0]
	lsr	r4, r5, #1
	sub	r2, r4
	ldr	r4, =.Lee925
	ldrb	r4, [r4, r0]
	lsr	r0, r4, #1
	add	r1, r9
	sub	r3, r0
	str	r4, [sp, #4]
	str	r5, [sp]
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x40
	lsl	r2, #5
	bl	Func_e3908
.Ld6ce2:
	mov	r4, #1
	add	r10, r4
	mov	r0, r10
	add	r6, #0x1c
	cmp	r0, #0x10
	bne	.Ld6c88
.Ld6cee:
	ldr	r1, [sp, #0x3c]
	cmp	r1, #0x80
	bne	.Ld6d52
	ldr	r5, =0x7240
	mov	r2, #0
	mov	r10, r2
	mov	r6, #0xff
	add	r5, r9
.Ld6cfe:
	bl	Func_4458
	mov	r1, #0x60
	bl	Func_b50_from_thumb
	lsl	r0, #16
	str	r0, [r5]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x58
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	neg	r0, r0
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	neg	r3, r3
	sub	r3, #0x10
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	add	r5, #0x1c
	cmp	r4, #0x30
	bne	.Ld6cfe
	ldr	r2, =REG_BG2X
	mov	r3, #0
	str	r3, [r2]
.Ld6d52:
	ldr	r0, [sp, #0x3c]
	sub	r0, #0x80
	str	r0, [sp, #0x30]
	cmp	r0, #0x60
	bls	.Ld6d5e
	b	.Ld6eee
.Ld6d5e:
	str	r0, [sp, #0x2c]
	cmp	r0, #0x50
	ble	.Ld6db8
	mov	r1, #0x50
	str	r1, [sp, #0x2c]
	b	.Ld6dc0

	.pool_aligned

.Ld6db8:
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r9
	str	r3, [r2]
.Ld6dc0:
	mov	r7, #0xe1
	mov	r2, #0
	lsl	r7, #7
	mov	r10, r2
	add	r7, r9
.Ld6dca:
	ldr	r3, [r7, #0x18]
	ldr	r4, [sp, #0x2c]
	cmp	r4, r3
	bgt	.Ld6dd4
	b	.Ld6ee0
.Ld6dd4:
	mov	r0, r10
	mov	r11, r9
	cmp	r0, #5
	ble	.Ld6de4
	mov	r1, #0xd8
	lsl	r1, #3
	add	r1, r9
	mov	r11, r1
.Ld6de4:
	ldr	r4, [sp, #0x2c]
	sub	r2, r4, r3
	ldr	r3, [r7, #0x10]
	mov	r0, r3
	mul	r0, r2
	str	r0, [sp, #0x28]
	mov	r6, r0
	cmp	r0, #0xb8
	ble	.Ld6dfc
.Ld6df6:
	sub	r6, #0x40
	cmp	r6, #0xb8
	bgt	.Ld6df6
.Ld6dfc:
	cmp	r6, #0x77
	bgt	.Ld6e24
	mov	r1, #1
	mov	r0, r10
	and	r0, r1
	mov	r1, #0x18
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r1, [sp]
	mov	r1, #8
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x24]
	lsl	r0, #2
	sub	r3, r6
	ldr	r4, [r0, r1]
	sub	r3, #8
	ldr	r0, [sp, #0x40]
	mov	r1, r11
	bl	_call_via_r4
.Ld6e24:
	mov	r3, r10
	mov	r4, #1
	and	r3, r4
	lsl	r3, #2
	mov	r2, #0
	str	r3, [sp, #0x20]
	mov	r8, r2
.Ld6e32:
	ldr	r1, [r7, #4]
	mov	r0, r8
	lsl	r3, r0, #6
	sub	r2, r1, r6
	add	r5, r2, r3
	mov	r3, #0x40
	neg	r3, r3
	mov	r2, #0
	mov	r0, #0x40
	cmp	r5, r3
	blt	.Ld6e80
	cmp	r5, #0
	bge	.Ld6e5a
	neg	r2, r5
	lsl	r3, r2, #1
	mov	r0, r5
	add	r3, r2
	lsl	r2, r3, #3
	add	r0, #0x40
	mov	r5, #0
.Ld6e5a:
	add	r3, r5, r0
	cmp	r3, r1
	ble	.Ld6e64
	sub	r3, r1
	sub	r0, r3
.Ld6e64:
	mov	r4, r11
	mov	r3, #0x18
	add	r1, r4, r2
	ldr	r2, [r7]
	str	r3, [sp]
	str	r0, [sp, #4]
	ldr	r3, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	add	r1, #0xc0
	ldr	r4, [r0, r3]
	ldr	r0, [sp, #0x40]
	mov	r3, r5
	bl	_call_via_r4
.Ld6e80:
	mov	r4, #1
	add	r8, r4
	mov	r0, r8
	cmp	r0, #3
	bne	.Ld6e32
	mov	r6, r10
	and	r6, r4
	cmp	r6, #0
	beq	.Ld6ee0
	ldr	r1, [sp, #0x28]
	ldr	r5, [r7, #4]
	mov	r2, #0x7f
	sub	r3, r5, r1
	and	r3, r2
	sub	r3, #0x10
	mov	r1, #3
	mov	r0, r10
	mov	r8, r3
	bl	Func_b1c_from_thumb
	ldr	r3, =.Lee930
	mov	r1, r0
	ldrb	r4, [r3, r1]
	mov	r2, r8
	add	r3, r2, r4
	mov	r12, r4
	cmp	r3, r5
	ble	.Ld6ebc
	sub	r3, r5
	sub	r4, r3
.Ld6ebc:
	cmp	r4, #0
	ble	.Ld6ee0
	ldr	r2, =.Lee92a
	lsl	r3, r1, #1
	ldrh	r1, [r2, r3]
	mov	r3, r12
	ldr	r2, [r7]
	str	r3, [sp]
	str	r4, [sp, #4]
	ldr	r3, [sp, #0x24]
	lsl	r0, r6, #2
	ldr	r4, [r0, r3]
	add	r1, r9
	add	r2, #8
	ldr	r0, [sp, #0x40]
	mov	r3, r8
	bl	_call_via_r4
.Ld6ee0:
	mov	r4, #1
	add	r10, r4
	mov	r0, r10
	add	r7, #0x1c
	cmp	r0, #0xa
	beq	.Ld6eee
	b	.Ld6dca
.Ld6eee:
	ldr	r1, [sp, #0x30]
	cmp	r1, #0x5f
	bhi	.Ld6f9e
	mov	r5, #0xe8
	mov	r2, #0
	lsl	r5, #7
	mov	r10, r2
	mov	r6, #0xff
	add	r5, r9
.Ld6f00:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld6f8e
	mov	r1, #5
	mov	r0, r10
	bl	Func_b1c_from_thumb
	ldr	r2, =.Lee934
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	ldr	r4, =.Lee93e
	ldrb	r4, [r4, r0]
	str	r4, [sp]
	ldr	r4, =.Lee943
	ldrb	r0, [r4, r0]
	add	r1, r9
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, #0x80
	lsl	r0, #7
	mov	r1, #0xf0
	add	r2, r3
	lsl	r1, #15
	add	r3, r0
	str	r2, [r5, #4]
	str	r3, [r5, #0x10]
	cmp	r2, r1
	bls	.Ld6f8c
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0x9f
	bgt	.Ld6f8c
	bl	Func_4458
	mov	r1, #0x60
	bl	Func_b50_from_thumb
	lsl	r0, #16
	str	r0, [r5]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x58
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	neg	r0, r0
	lsl	r0, #11
	str	r0, [r5, #0x10]
.Ld6f8c:
	ldr	r3, [r5, #0x18]
.Ld6f8e:
	add	r3, #1
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	add	r5, #0x1c
	cmp	r4, #0x20
	bne	.Ld6f00
.Ld6f9e:
	ldr	r3, [sp, #0x3c]
	sub	r3, #0xe0
	cmp	r3, #0x17
	bhi	.Ld7034
	ldr	r0, [sp, #0x3c]
	mov	r3, #3
	and	r3, r0
	cmp	r3, #0
	bne	.Ld7034
	ldr	r2, .Ld6fe4	@ 0x1f
	mov	r4, #0xa0
	mov	r1, #0
	lsl	r4, #19
	mov	r10, r1
	mov	r8, r2
.Ld6fbc:
	ldrh	r3, [r4]
	mov	r7, #0x1f
	and	r7, r3
	lsl	r3, #16
	mov	r0, r8
	lsr	r6, r3, #21
	lsr	r5, r3, #26
	and	r6, r0
	and	r5, r0
	add	r0, r7, r6
	add	r0, r5
	mov	r1, #3
	str	r4, [sp, #8]
	bl	Func_af0_from_thumb
	ldr	r4, [sp, #8]
	cmp	r7, r0
	ble	.Ld7000
	sub	r7, #1
	b	.Ld7000

	.align	2, 0
.Ld6fe4:
	.word	0x1f
	.pool

.Ld7000:
	cmp	r7, r0
	bge	.Ld7006
	add	r7, #1
.Ld7006:
	cmp	r6, r0
	ble	.Ld700c
	sub	r6, #1
.Ld700c:
	cmp	r6, r0
	bge	.Ld7012
	add	r6, #1
.Ld7012:
	cmp	r5, r0
	ble	.Ld7018
	sub	r5, #1
.Ld7018:
	cmp	r5, r0
	bge	.Ld701e
	add	r5, #1
.Ld701e:
	lsl	r2, r6, #5
	lsl	r3, r5, #10
	mov	r1, #1
	orr	r3, r2
	add	r10, r1
	orr	r3, r7
	mov	r2, r10
	strh	r3, [r4]
	add	r4, #2
	cmp	r2, #0x40
	bne	.Ld6fbc
.Ld7034:
	ldr	r3, [sp, #0x30]
	cmp	r3, #0xac
	bhi	.Ld710e
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r10, r4
	cmp	r3, #0
	beq	.Ld710e
	add	r1, sp, #0x4c
	mov	r8, r1
	add	r6, sp, #0x58
	mov	r11, r4
.Ld7052:
	mov	r4, r10
	mov	r3, r9
	ldr	r2, [r3, r2]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	ldr	r2, [r0]
	ldr	r3, [r2, #8]
	str	r3, [r6]
	ldr	r3, [r2, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	mov	r1, r8
	bl	Func_e3944
	mov	r2, r11
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #2
	ldr	r4, =0x7240
	add	r3, r9
	mov	r7, #0
	add	r5, r3, r4
.Ld7088:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0
	bne	.Ld70b0
	bl	Func_4458
	mov	r1, #0xf
	ldr	r3, [sp, #0x4c]
	and	r0, r1
	add	r3, r0
	sub	r3, #8
	str	r3, [r5]
	bl	Func_4458
	mov	r2, #0xf
	ldr	r3, [sp, #0x50]
	and	r0, r2
	add	r3, r0
	sub	r3, #0x28
	str	r3, [r5, #4]
	ldr	r0, [r5, #0x18]
.Ld70b0:
	cmp	r0, #4
	bhi	.Ld70d8
	ldr	r2, =.Lee948
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Lee952
	ldrb	r0, [r3, r0]
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	lsr	r4, r0, #1
	sub	r2, r4
	sub	r3, r4
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r9
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	ldr	r0, [r5, #0x18]
.Ld70d8:
	add	r3, r0, #1
	str	r3, [r5, #0x18]
	ldr	r4, [sp, #0x3c]
	cmp	r4, #0xc7
	bgt	.Ld70f2
	cmp	r3, #5
	bne	.Ld70f2
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ld70f2:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #6
	bne	.Ld7088
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	mov	r1, #1
	ldr	r3, [r3, #0x14]
	mov	r0, #6
	add	r10, r1
	add	r11, r0
	cmp	r10, r3
	bne	.Ld7052
.Ld710e:
	ldr	r0, [sp, #0x3c]
	cmp	r0, #0xe8
	ble	.Ld71dc
	ldr	r1, =0xfffffe10
	lsl	r3, r0, #1
	add	r6, r3, r1
	mov	r2, #0
	mov	r3, #0
	mov	r10, r2
	mov	r12, r3
	mov	r4, r6
.Ld7124:
	mov	r7, #0
.Ld7126:
	cmp	r4, #0x7f
	bhi	.Ld7168
	mov	r5, #7
	mov	r0, r4
	and	r0, r5
	lsl	r3, r0, #5
	add	r3, r10
	ldr	r1, =ewram_10000
	lsl	r3, #2
	add	r3, r7
	add	r3, r1
	ldrb	r1, [r3]
	mov	r3, r4
	cmp	r4, #0
	bge	.Ld7146
	add	r3, r4, #7
.Ld7146:
	asr	r3, #3
	mov	r2, r1
	cmp	r1, #0
	bge	.Ld7150
	add	r2, r1, #7
.Ld7150:
	asr	r2, #3
	lsl	r3, #4
	add	r3, r2
	lsl	r3, #3
	add	r3, r0
	ldr	r2, [sp, #0x40]
	and	r1, r5
	lsl	r3, #3
	add	r3, r1
	add	r3, r2, r3
	mov	r0, r12
	strb	r0, [r3]
.Ld7168:
	add	r7, #1
	cmp	r7, #4
	bne	.Ld7126
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	add	r4, #1
	cmp	r2, #0x20
	bne	.Ld7124
	mov	r4, #0
	mov	r3, #0
	mov	r14, r4
	mov	r10, r3
	add	r4, r6, #1
.Ld7184:
	mov	r7, #0
	mov	r12, r4
.Ld7188:
	cmp	r4, #0x7f
	bhi	.Ld71ca
	mov	r5, #7
	mov	r0, r12
	and	r0, r5
	lsl	r3, r0, #5
	add	r3, r10
	ldr	r1, =ewram_10000
	lsl	r3, #2
	add	r3, r7
	add	r3, r1
	ldrb	r1, [r3]
	mov	r3, r12
	cmp	r3, #0
	bge	.Ld71a8
	add	r3, #7
.Ld71a8:
	asr	r3, #3
	mov	r2, r1
	cmp	r1, #0
	bge	.Ld71b2
	add	r2, r1, #7
.Ld71b2:
	asr	r2, #3
	lsl	r3, #4
	add	r3, r2
	lsl	r3, #3
	add	r3, r0
	ldr	r2, [sp, #0x40]
	and	r1, r5
	lsl	r3, #3
	add	r3, r1
	add	r3, r2, r3
	mov	r0, r14
	strb	r0, [r3]
.Ld71ca:
	add	r7, #1
	cmp	r7, #4
	bne	.Ld7188
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	add	r4, #1
	cmp	r2, #0x20
	bne	.Ld7184
.Ld71dc:
	ldr	r3, [sp, #0x3c]
	sub	r3, #0xa1
	cmp	r3, #0x3e
	bhi	.Ld726c
	ldr	r2, =0x7828
	mov	r3, #0
	mov	r4, r9
	mov	r10, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld726c
.Ld71f4:
	mov	r0, r10
	lsl	r3, r0, #3
	ldr	r1, [sp, #0x3c]
	add	r3, #0xa0
	cmp	r1, r3
	ble	.Ld725c
	mov	r3, r9
	ldr	r2, [r3, r2]
	lsl	r3, r0, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	mov	r6, r0
	ldr	r2, [r6]
	mov	r0, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r0, #12
	mov	r1, #0x80
	add	r3, r0
	lsl	r1, #16
	str	r3, [r2, #0xc]
	cmp	r3, r1
	ble	.Ld7226
	str	r1, [r2, #0xc]
.Ld7226:
	mov	r3, #0
	mov	r5, #0
	str	r3, [r2, #0x48]
	b	.Ld7250

	.pool_aligned

.Ld7248:
	mov	r1, #5
	bl	_Func_ba30
	add	r5, #1
.Ld7250:
	ldr	r0, [r6]
	mov	r1, r5
	bl	_Func_b7f70
	cmp	r0, #0
	bne	.Ld7248
.Ld725c:
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	mov	r1, #1
	ldr	r3, [r3, #0x14]
	add	r10, r1
	cmp	r10, r3
	bne	.Ld71f4
.Ld726c:
	ldr	r2, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Ld72e0
	mov	r5, #0x8f
	mov	r7, #8
	mov	r6, #0x24
	lsl	r5, #1
.Ld7284:
	ldr	r3, [sp, #0x3c]
	cmp	r3, r5
	bne	.Ld72a0
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldrsh	r0, [r3, r6]
	bl	_Func_b7dd0
	mov	r3, #0xc0
	ldr	r2, [r0]
	lsl	r3, #15
	str	r3, [r2, #0xc]
	ldr	r3, =0xab85
	str	r3, [r2, #0x48]
.Ld72a0:
	mov	r3, r5
	ldr	r2, [sp, #0x3c]
	add	r3, #0x10
	cmp	r2, r3
	bne	.Ld72cc
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, #1
	ldrsh	r0, [r3, r6]
	mov	r1, #7
	mov	r3, r10
	neg	r2, r2
	str	r7, [sp]
	bl	Func_d6888
	mov	r0, #0x86
	bl	_Func_f9080
	ldr	r3, =0x77a8
	add	r3, r9
	str	r7, [r3]
.Ld72cc:
	ldr	r2, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r2]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r10, r0
	add	r6, #2
	add	r5, #5
	cmp	r10, r3
	bne	.Ld7284
.Ld72e0:
	mov	r3, #0x97
	ldr	r2, [sp, #0x3c]
	lsl	r3, #1
	cmp	r2, r3
	beq	.Ld72ec
	b	.Ld7430
.Ld72ec:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =0x98
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r1, #0xb4
	lsl	r1, #5
	ldr	r0, =0xc0
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #0x44]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	Func_ed408
	add	r5, #0xbc
	ldr	r4, [sp, #0x24]
	ldr	r3, [r5]
	ldr	r2, =REG_BLDCNT
	str	r3, [r4, #4]
	ldr	r3, .Ld7380	@ 0x3f46
	strh	r3, [r2]
	ldr	r3, .Ld7384	@ 0x80
	sub	r2, #0x30
	strh	r3, [r2]
	add	r2, #8
	mov	r3, #0
	str	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r9
	str	r6, [r3]
	add	r2, r9
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r2, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r10, r0
	b	.Ld73ac

	.align	2, 0
.Ld7380:
	.word	0x3f46
.Ld7384:
	.word	0x80
	.pool

.Ld73ac:
	cmp	r3, #0
	beq	.Ld7430
.Ld73b0:
	mov	r4, r10
	mov	r3, r9
	ldr	r2, [r3, r2]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	mov	r3, r10
	lsl	r2, r3, #2
	add	r2, r10
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r0, [r0]
	lsl	r3, #3
	mov	r4, #0xe1
	add	r3, r9
	lsl	r4, #7
	mov	r8, r0
	mov	r7, #0
	add	r6, r3, r4
.Ld73da:
	mov	r0, r8
	ldr	r3, [r0, #8]
	str	r3, [r6]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #8]
	ldr	r3, =0x3334
	mov	r5, r7
	mul	r5, r3
	mov	r0, r5
	bl	Func_2322
	lsl	r0, #2
	str	r0, [r6, #0xc]
	bl	Func_4458
	ldr	r3, =0x7fff
	mov	r1, #0x80
	and	r3, r0
	lsl	r1, #9
	add	r3, r1
	str	r3, [r6, #0x10]
	mov	r0, r5
	bl	Func_231c
	add	r7, #1
	lsl	r0, #2
	mov	r3, #0
	str	r0, [r6, #0x14]
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r7, #0xa
	bne	.Ld73da
	mov	r2, #1
	add	r10, r2
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r10, r3
	bne	.Ld73b0
.Ld7430:
	ldr	r0, [sp, #0x3c]
	ldr	r1, =0x12d
	cmp	r0, r1
	bgt	.Ld743a
	b	.Ld7594
.Ld743a:
	mov	r2, #0
	mov	r10, r2
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld744c
	b	.Ld7594
.Ld744c:
	ldr	r1, [sp, #0x3c]
	ldr	r3, =0xfffffed2
	mov	r0, sp
	add	r0, #0x4c
	add	r3, r1, r3
	mov	r4, #0x97
	mov	r1, sp
	str	r0, [sp, #0x18]
	lsl	r4, #1
	mov	r0, #0
	add	r1, #0x58
	str	r3, [sp, #0x14]
	str	r4, [sp, #0x10]
	str	r0, [sp, #0xc]
	str	r1, [sp, #0x1c]
.Ld746a:
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x10]
	cmp	r3, r4
	blt	.Ld74f8
	ldr	r0, [sp, #0xc]
	mov	r1, #0x9d
	lsl	r1, #1
	ldr	r4, [sp, #0x3c]
	add	r3, r0, r1
	cmp	r4, r3
	bge	.Ld74f8
	ldr	r0, [sp, #0x14]
	mov	r1, r9
	mov	r4, r10
	ldr	r2, [r1, r2]
	lsl	r3, r4, #1
	add	r3, #0x24
	lsr	r6, r0, #31
	add	r6, r0, r6
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	ldr	r2, [r0]
	ldr	r4, [sp, #0x1c]
	ldr	r3, [r2, #8]
	str	r3, [r4]
	mov	r3, #0
	str	r3, [r4, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r4, #8]
	ldr	r0, [sp, #0x18]
	mov	r8, r0
	mov	r1, r8
	ldr	r0, [sp, #0x1c]
	bl	Func_e3944
	asr	r6, #1
	mov	r1, r8
	ldr	r2, [r1]
	lsl	r5, r6, #4
	sub	r5, r6
	ldr	r3, [r1, #4]
	asr	r2, #1
	lsl	r5, #5
	str	r2, [r1]
	add	r5, r9
	mov	r4, #0x14
	mov	r0, #0x18
	sub	r2, #0x14
	sub	r3, #0x18
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x44]
	mov	r1, r5
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	mov	r1, r8
	mov	r4, #0x14
	mov	r0, #0x18
	ldr	r3, [r1, #4]
	ldr	r2, [r1]
	str	r0, [sp, #4]
	ldr	r1, [sp, #0x24]
	str	r4, [sp]
	sub	r3, #0x18
	ldr	r4, [r1, #4]
	ldr	r0, [sp, #0x40]
	mov	r1, r5
	bl	_call_via_r4
.Ld74f8:
	ldr	r3, [sp, #0x10]
	ldr	r2, [sp, #0x3c]
	add	r3, #6
	cmp	r2, r3
	blt	.Ld7570
	ldr	r2, [sp, #0xc]
	add	r3, sp, #0x4c
	add	r2, r10
	mov	r8, r3
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #3
	mov	r4, #0xe1
	add	r3, r9
	lsl	r4, #7
	mov	r0, #0xc
	mov	r7, #0
	mov	r6, r8
	add	r5, r3, r4
	mov	r11, r0
.Ld7520:
	mov	r0, r5
	mov	r1, r6
	bl	Func_e3944
	ldr	r3, [r6]
	asr	r2, r3, #1
	str	r2, [r6]
	ldr	r3, [r5, #0x18]
	cmp	r3, #0x1a
	bhi	.Ld7556
	ldr	r3, =.Lee958
	mov	r4, r11
	ldrh	r1, [r3, r4]
	ldr	r3, =.Lee966
	ldrh	r4, [r3, r4]
	mov	r3, r8
	ldr	r3, [r3, #4]
	lsr	r0, r4, #1
	sub	r2, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	add	r1, r9
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
.Ld7556:
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3c
	lsl	r2, #5
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	add	r7, #1
	add	r3, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #5
	bne	.Ld7520
.Ld7570:
	ldr	r4, [sp, #0x14]
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	sub	r4, #4
	mov	r2, #1
	add	r0, #4
	add	r1, #4
	str	r4, [sp, #0x14]
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	add	r10, r2
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r10, r3
	beq	.Ld7594
	b	.Ld746a
.Ld7594:
	ldr	r0, [sp, #0x3c]
	cmp	r0, #0x7f
	bgt	.Ld75a4
	mov	r0, #4
	mov	r1, #0x10
	bl	Func_e155c
	b	.Ld75be
.Ld75a4:
	ldr	r1, [sp, #0x3c]
	ldr	r2, =0x12d
	cmp	r1, r2
	bgt	.Ld75b6
	mov	r0, #2
	mov	r1, #2
	bl	Func_e155c
	b	.Ld75be
.Ld75b6:
	mov	r0, #4
	mov	r1, #8
	bl	Func_e155c
.Ld75be:
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [sp, #0x3c]
	mov	r4, #0xb7
	add	r3, #1
	lsl	r4, #1
	str	r3, [sp, #0x3c]
	cmp	r3, r4
	beq	.Ld75e2
	bl	.Ld6b76
.Ld75e2:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	mov	r0, #0x86
	bl	_Func_bd7dc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #16
	ldr	r2, [sp, #0x38]
	ldr	r5, =0x77d8
	bl	Func_e6eac
	mov	r0, #0
	mov	r10, r0
	add	r5, r9
.Ld760e:
	ldmia	r5!, {r0}
	bl	_Func_bdd4
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #8
	bne	.Ld760e
	bl	Func_cdbc0
	add	sp, #0x64
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d6970

.thumb_func_start Func_d765c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1ef0
	ldr	r1, [r5]
	sub	sp, #0x14c
	str	r1, [sp, #0x30]
	sub	r3, r5, #4
	ldr	r3, [r3]
	str	r3, [sp, #0x2c]
	ldr	r4, [sp, #0x2c]
	ldr	r7, =0x7828
	ldr	r2, [r5, #4]
	add	r4, r7
	mov	r3, #1
	str	r2, [sp, #0x1c]
	str	r3, [sp, #0x18]
	str	r0, [r4]
	mov	r0, #0
	mov	r8, r4
	bl	Func_cd594
	bl	Func_c9048
	ldr	r2, .Ld76d0	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r0, [sp, #0x2c]
	mov	r1, #0xef
	lsl	r1, #7
	add	r0, r1
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r0]
	mov	r10, r0
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r2, =REG_WININ
	ldr	r3, .Ld76d4	@ 0x2137
	mov	r0, #1
	strh	r3, [r2]
	mov	r1, #0
	bl	Func_cd104
	ldr	r2, =REG_WIN0H
	ldr	r3, .Ld76d8	@ 0xf0f0
	strh	r3, [r2]
	b	.Ld76f0

	.align	2, 0
.Ld76d0:
	.word	0
.Ld76d4:
	.word	0x2137
.Ld76d8:
	.word	0xf0f0
	.pool

.Ld76f0:
	ldr	r1, [sp, #0x2c]
	ldr	r0, =0xb9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r0, =0xba
	ldr	r1, [sp, #0x1c]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	ldr	r2, [r5, #0x18]
	ldr	r3, [sp, #0x18]
	str	r2, [sp, #0x24]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r5, [r5, #0x1c]
	ldr	r2, =iwram_1ce0
	str	r5, [sp, #0x20]
	mov	r3, #0xf0
	mov	r4, r8
	str	r3, [r2, #0x10]
	ldr	r0, [r4]
	bl	Func_d6750
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =0x3b
	mov	r0, #1
	mov	r2, #0
	bl	_Func_c08ec
	mov	r1, #0xba
	lsl	r1, #1
	mov	r0, #9
	mov	r2, #1
	bl	Func_dbb24
	ldr	r3, .Ld778c	@ 0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Ld7790	@ 0x80
	add	r2, #0x20
	strh	r3, [r2]
	ldr	r3, .Ld7794	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r3, .Ld7798	@ 0x3f44
	sub	r2, #2
	mov	r5, r10
	strh	r3, [r2]
	str	r6, [r5]
	ldr	r7, [sp, #0x2c]
	ldr	r0, =0x7784
	mov	r3, #0x32
	add	r2, r7, r0
	mov	r1, #0
	str	r3, [r2]
	ldr	r5, =ewram_10000
	mov	r8, r1
	b	.Ld77b4

	.align	2, 0
.Ld778c:
	.word	0x7741
.Ld7790:
	.word	0x80
.Ld7794:
	.word	0x1010
.Ld7798:
	.word	0x3f44
	.pool

.Ld77b4:
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x78
	str	r3, [r5, #4]
	mov	r2, #1
	mov	r3, #1
	neg	r3, r3
	add	r8, r2
	str	r3, [r5, #0x18]
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x40
	bne	.Ld77b4
	mov	r4, #0
	ldr	r1, =.Lee974
	mov	r8, r4
	add	r2, sp, #0x4c
.Ld77e6:
	ldrb	r3, [r1]
	mov	r5, #1
	str	r3, [r2]
	add	r8, r5
	ldrb	r3, [r1, #1]
	mov	r7, r8
	str	r3, [r2, #4]
	add	r1, #2
	add	r2, #8
	cmp	r7, #0x20
	bne	.Ld77e6
	mov	r0, #0x8d
	bl	_Func_f9080
	mov	r0, #0
	str	r0, [sp, #0x28]
	ldr	r3, =iwram_1b04
	mov	r2, sp
	add	r2, #0x34
	mov	r1, #0x10
	ldr	r3, [r3]
	str	r2, [sp, #0x10]
	mov	r10, r1
.Ld7814:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0xf
	bhi	.Ld787c
	ldr	r7, =ewram_10000
	cmp	r3, #1
	bne	.Ld7848
	ldr	r5, =ewram_10002
	mov	r6, r5
	mov	r3, #0x3f
	add	r6, #0x80
.Ld7828:
	str	r3, [sp, #0xc]
	bl	Func_4458
	ldr	r3, [sp, #0xc]
	and	r0, r3
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Ld7828
	ldr	r3, .Ld7864	@ 0
	mov	r1, #0x90
	strh	r3, [r7]
	ldr	r0, =Func_d66cc
	lsl	r1, #3
	bl	Func_41d8
.Ld7848:
	ldr	r4, [sp, #0x18]
	ldrh	r3, [r7]
	add	r3, r4
	strh	r3, [r7]
	ldr	r5, [sp, #0x28]
	add	r4, #3
	str	r4, [sp, #0x18]
	cmp	r5, #0xf
	bne	.Ld787c
	ldr	r0, =Func_d66cc
	bl	Func_4278
	b	.Ld787c

	.align	2, 0
.Ld7864:
	.word	0
	.pool

.Ld787c:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x67
	ble	.Ld7888
	mov	r0, #0
	mov	r10, r0
	b	.Ld789e
.Ld7888:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x3f
	ble	.Ld7894
	mov	r2, #6
	mov	r10, r2
	b	.Ld789e
.Ld7894:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x1f
	ble	.Ld789e
	mov	r4, #0xa
	mov	r10, r4
.Ld789e:
	ldr	r5, [sp, #0x28]
	cmp	r5, #0xa7
	bgt	.Ld78c4
	bl	Func_4458
	mov	r5, #3
	and	r0, r5
	sub	r0, #1
	mov	r9, r0
	bl	Func_4458
	ldr	r3, =iwram_1ad0
	and	r0, r5
	sub	r7, r0, #1
	mov	r1, r9
	add	r0, #0x1f
	strh	r1, [r3, #4]
	strh	r0, [r3, #6]
	b	.Ld78d2
.Ld78c4:
	mov	r2, #0
	mov	r9, r2
	ldr	r2, =iwram_1ad0
	mov	r7, #0
	mov	r3, #0x20
	strh	r7, [r2, #4]
	strh	r3, [r2, #6]
.Ld78d2:
	ldr	r2, [sp, #0x28]
	sub	r2, #0xb0
	cmp	r2, #3
	bhi	.Ld78ee
	ldr	r3, =.Lee994
	ldrsb	r3, [r3, r2]
	neg	r4, r3
	ldr	r2, =iwram_1ad0
	mov	r9, r4
	mov	r7, r3
	mov	r5, r9
	add	r3, #0x20
	strh	r5, [r2, #4]
	strh	r3, [r2, #6]
.Ld78ee:
	mov	r0, #0
	mov	r1, r10
	mov	r8, r0
	cmp	r1, #0
	beq	.Ld793a
	ldr	r2, =.Lee998
	ldr	r6, =.Lee974
	mov	r11, r2
.Ld78fe:
	mov	r0, r8
	mov	r1, #3
	bl	Func_b1c_from_thumb
	mov	r4, r11
	lsl	r3, r0, #1
	ldrh	r1, [r4, r3]
	ldr	r5, [sp, #0x2c]
	ldr	r4, =.Lee9a1
	ldrb	r2, [r6]
	add	r1, r5, r1
	mov	r3, r9
	ldrb	r5, [r4, r0]
	ldr	r4, =.Lee99e
	sub	r2, r3
	ldrb	r3, [r6, #1]
	ldrb	r0, [r4, r0]
	sub	r3, r5
	str	r5, [sp, #4]
	mov	r5, #1
	str	r0, [sp]
	sub	r3, r7
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	add	r8, r5
	bl	_call_via_r4
	add	r6, #2
	cmp	r8, r10
	bne	.Ld78fe
.Ld793a:
	ldr	r3, =Data_eda80
	ldr	r0, [sp, #0x28]
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	str	r3, [sp, #0x34]
	str	r4, [sp, #0x38]
	cmp	r0, #0xae
	bne	.Ld796c
	ldr	r2, [sp, #0x2c]
	ldr	r3, =0x77d8
	mov	r1, #0
	mov	r4, #0xd
	mov	r8, r1
	neg	r4, r4
	add	r0, r2, r3
.Ld7958:
	ldmia	r0!, {r1}
	ldrb	r2, [r1, #9]
	mov	r3, r4
	mov	r5, #1
	and	r3, r2
	add	r8, r5
	strb	r3, [r1, #9]
	mov	r1, r8
	cmp	r1, #9
	bne	.Ld7958
.Ld796c:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0xd0
	ble	.Ld7990
	ldr	r4, [sp, #0x2c]
	ldr	r5, =0x77e0
	add	r3, r4, r5
	ldr	r0, [r3]
	ldr	r1, =.Lee9a4
	mov	r3, r2
	cmp	r2, #0
	bge	.Ld7984
	add	r3, #3
.Ld7984:
	asr	r3, #2
	mov	r2, #3
	and	r3, r2
	ldrb	r1, [r1, r3]
	bl	_Func_ba30
.Ld7990:
	ldr	r0, [sp, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [sp, #0x34]
	add	r2, sp, #0x3c
	str	r3, [r0, #4]
	mov	r3, #0
	str	r3, [r2, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r2, #4]
	mov	r10, r2
	lsl	r3, r7, #16
	mov	r2, #0x98
	neg	r3, r3
	mov	r5, r9
	lsl	r2, #15
	mov	r1, #0
	add	r4, r3, r2
	lsl	r3, r5, #16
	neg	r3, r3
	str	r1, [sp, #0x14]
	mov	r11, r1
	mov	r9, r3
.Ld79c0:
	mov	r0, r11
	ldr	r1, [sp, #0x2c]
	mov	r5, #0x90
	lsl	r3, r0, #2
	ldr	r2, =0x77d8
	lsl	r5, #16
	add	r3, r1
	mov	r7, #0
	mov	r8, r4
	add	r5, r9
	add	r6, r3, r2
.Ld79d6:
	mov	r3, r10
	mov	r0, r8
	str	r5, [r3]
	str	r0, [r3, #8]
	mov	r1, r10
	ldmia	r6!, {r0}
	ldr	r2, [sp, #0x10]
	mov	r3, #0
	str	r4, [sp, #8]
	bl	_Func_b168
	mov	r1, #0x80
	lsl	r1, #14
	add	r7, #1
	add	r5, r1
	ldr	r4, [sp, #8]
	cmp	r7, #3
	bne	.Ld79d6
	ldr	r3, [sp, #0x14]
	mov	r2, #3
	add	r3, #1
	add	r11, r2
	add	r4, r1
	str	r3, [sp, #0x14]
	cmp	r3, #3
	bne	.Ld79c0
	ldr	r1, [sp, #0x28]
	sub	r1, #0xa0
	cmp	r1, #0x9d
	bhi	.Ld7a58
	ldr	r3, [sp, #0x28]
	ldr	r5, [sp, #0x28]
	sub	r3, #0xd0
	mov	r2, #0x50
	mov	r4, #8
	cmp	r5, #0xaf
	bgt	.Ld7a2c
	mov	r3, #0x60
	sub	r2, r3, r1
	lsl	r3, r1, #2
	mov	r4, r3
	sub	r4, #0x38
	b	.Ld7a40
.Ld7a2c:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0xd0
	ble	.Ld7a40
	cmp	r3, #0
	bge	.Ld7a3a
	mov	r3, r7
	sub	r3, #0xcd
.Ld7a3a:
	asr	r3, #2
	mov	r4, r3
	add	r4, #8
.Ld7a40:
	mov	r3, #0x18
	str	r3, [sp]
	mov	r3, #0x30
	str	r3, [sp, #4]
	ldr	r5, =0xc46
	ldr	r3, [sp, #0x2c]
	ldr	r0, [sp, #0x30]
	add	r1, r3, r5
	ldr	r7, [sp, #0x20]
	mov	r3, r4
	bl	_call_via_r7
.Ld7a58:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x20
	bne	.Ld7a64
	mov	r0, #0x86
	bl	_Func_f9080
.Ld7a64:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x40
	bne	.Ld7a70
	mov	r0, #0x86
	bl	_Func_f9080
.Ld7a70:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x68
	bne	.Ld7a7c
	mov	r0, #0x86
	bl	_Func_f9080
.Ld7a7c:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0xb0
	bne	.Ld7a88
	mov	r0, #0x86
	bl	_Func_f9080
.Ld7a88:
	ldr	r4, [sp, #0x28]
	cmp	r4, #0xe2
	bne	.Ld7a94
	mov	r0, #0x91
	bl	_Func_f9080
.Ld7a94:
	bl	Func_49ac
	ldr	r5, [sp, #0x28]
	cmp	r5, #0x20
	bne	.Ld7af2
	mov	r7, #0
	ldr	r5, =ewram_10000
	mov	r8, r7
	mov	r6, #0x7f
	mov	r7, #0x1f
.Ld7aa8:
	bl	Func_4458
	and	r0, r7
	add	r0, #0x44
	lsl	r0, #16
	str	r0, [r5]
	bl	Func_4458
	and	r0, r7
	add	r0, #8
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x3f
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	neg	r0, r0
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	mov	r0, #1
	add	r8, r0
	add	r3, #0x20
	mov	r1, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x20
	bne	.Ld7aa8
.Ld7af2:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x40
	bne	.Ld7b50
	mov	r3, #0
	ldr	r5, =ewram_10380
	mov	r8, r3
	mov	r6, #0x1f
.Ld7b00:
	bl	Func_4458
	mov	r1, #0x30
	bl	Func_b50_from_thumb
	add	r0, #0x3c
	lsl	r0, #16
	str	r0, [r5]
	bl	Func_4458
	and	r0, r6
	add	r0, #0x34
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x3f
	lsl	r3, #12
	str	r3, [r5, #0xc]
	bl	Func_4458
	neg	r0, r0
	and	r0, r6
	sub	r0, #0x20
	lsl	r0, #13
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	mov	r4, #1
	and	r3, r0
	add	r8, r4
	add	r3, #0x20
	mov	r7, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x20
	bne	.Ld7b00
.Ld7b50:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x68
	bne	.Ld7bac
	mov	r1, #0
	ldr	r5, =ewram_10000
	mov	r8, r1
	mov	r6, #0x1f
.Ld7b5e:
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x34
	lsl	r3, #16
	str	r3, [r5]
	bl	Func_4458
	and	r0, r6
	add	r0, #0x48
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x3f
	lsl	r3, #11
	str	r3, [r5, #0xc]
	bl	Func_4458
	neg	r0, r0
	and	r0, r6
	sub	r0, #0x20
	lsl	r0, #13
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	mov	r2, #1
	add	r3, #0x20
	add	r8, r2
	str	r3, [r5, #0x18]
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x20
	bne	.Ld7b5e
.Ld7bac:
	ldr	r3, [sp, #0x28]
	sub	r3, #0x20
	cmp	r3, #0xaf
	bhi	.Ld7c58
	mov	r4, #0
	ldr	r5, =ewram_10000
	mov	r8, r4
.Ld7bba:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld7c4c
	ldr	r7, [sp, #0x28]
	cmp	r7, #0xbf
	ble	.Ld7c08
	mov	r0, r8
	mov	r1, #7
	bl	Func_b1c_from_thumb
	add	r4, r0, #4
	b	.Ld7c0e

	.pool_aligned

.Ld7c08:
	mov	r4, #3
	mov	r0, r8
	and	r4, r0
.Ld7c0e:
	ldr	r2, =.Lee9be
	ldr	r0, =.Lee9a8
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldrb	r0, [r0, r4]
	ldr	r2, [sp, #0x2c]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	ldr	r0, =.Lee9b3
	ldrb	r0, [r0, r4]
	ldr	r4, [sp, #0x20]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	ldr	r2, [r5]
	ldr	r3, [r5, #0xc]
	add	r2, r3
	str	r2, [r5]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #0x10]
	mov	r7, #0x80
	lsl	r7, #6
	add	r3, r2
	add	r2, r7
	str	r3, [r5, #4]
	str	r2, [r5, #0x10]
.Ld7c4c:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Ld7bba
.Ld7c58:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0xdf
	bgt	.Ld7c60
	b	.Ld7dc8
.Ld7c60:
	cmp	r2, #0xe0
	bne	.Ld7ca4
	mov	r3, #0
	ldr	r5, =ewram_10000
	mov	r8, r3
	mov	r6, #0x7f
.Ld7c6c:
	mov	r3, #0x90
	lsl	r3, #15
	str	r3, [r5]
	mov	r3, #0xe0
	lsl	r3, #14
	str	r3, [r5, #4]
	bl	Func_4458
	and	r0, r6
	neg	r0, r0
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	add	r0, #0x10
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r4, #1
	add	r8, r4
	mov	r7, r8
	str	r0, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x80
	bne	.Ld7c6c
.Ld7ca4:
	mov	r0, #0
	ldr	r5, =ewram_10000
	mov	r8, r0
.Ld7caa:
	mov	r3, r8
	cmp	r3, #0
	bge	.Ld7cb2
	add	r3, #3
.Ld7cb2:
	asr	r3, #2
	ldr	r1, [sp, #0x28]
	add	r3, #0xe0
	cmp	r1, r3
	blt	.Ld7d28
	mov	r0, r8
	mov	r1, #3
	bl	Func_b1c_from_thumb
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	mov	r4, r0
	cmp	r3, #0
	bne	.Ld7cf6
	ldr	r2, =.Lee9da
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x2c]
	add	r1, r3, r1
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	ldr	r0, =.Lee9d4
	ldrb	r0, [r0, r4]
	mov	r7, #2
	ldrsh	r2, [r5, r7]
	str	r0, [sp]
	ldr	r0, =.Lee9d7
	ldrb	r0, [r0, r4]
	ldr	r4, [sp, #0x24]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
.Ld7cf6:
	ldr	r2, [r5]
	ldr	r3, [r5, #0xc]
	ldr	r1, [r5, #4]
	add	r2, r3
	ldr	r3, [r5, #0x10]
	mov	r7, #0x10
	str	r2, [r5]
	add	r1, r3
	asr	r2, #16
	neg	r7, r7
	str	r1, [r5, #4]
	cmp	r2, r7
	blt	.Ld7d16
	asr	r3, r1, #16
	cmp	r3, #0x78
	ble	.Ld7d22
.Ld7d16:
	mov	r3, #0x90
	lsl	r3, #15
	str	r3, [r5]
	mov	r3, #0xe0
	lsl	r3, #14
	str	r3, [r5, #4]
.Ld7d22:
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
.Ld7d28:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x80
	bne	.Ld7caa
	ldr	r2, [sp, #0x28]
	cmp	r2, #0xe4
	bne	.Ld7d5c
	mov	r3, #0
	ldr	r2, =ewram_10e00
	ldr	r1, =ewram_10000
	mov	r8, r3
	mov	r0, #0
.Ld7d44:
	ldr	r3, [r1]
	str	r3, [r2]
	mov	r4, #1
	ldr	r3, [r1, #4]
	add	r8, r4
	mov	r5, r8
	str	r3, [r2, #4]
	str	r0, [r2, #0x18]
	add	r1, #0x1c
	add	r2, #0x1c
	cmp	r5, #0x80
	bne	.Ld7d44
.Ld7d5c:
	mov	r7, #0
	ldr	r5, =ewram_10e00
	ldr	r6, =ewram_10000
	mov	r8, r7
.Ld7d64:
	mov	r3, r8
	ldr	r0, [sp, #0x28]
	add	r3, #0xe4
	cmp	r0, r3
	blt	.Ld7dba
	ldr	r0, [r5, #0x18]
	lsr	r3, r0, #31
	add	r0, r3
	mov	r1, #9
	asr	r0, #1
	bl	Func_b1c_from_thumb
	ldr	r3, =Data_ede96
	ldrb	r4, [r3, r0]
	ldr	r3, =Data_ede84
	lsl	r0, #1
	ldrh	r1, [r3, r0]
	ldr	r2, [sp, #0x1c]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	lsr	r0, r4, #1
	sub	r3, r0
	sub	r2, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0x12
	bne	.Ld7dba
	ldr	r3, [r6]
	str	r3, [r5]
	ldr	r3, [r6, #4]
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #0x18]
.Ld7dba:
	mov	r7, #1
	add	r8, r7
	mov	r0, r8
	add	r5, #0x1c
	add	r6, #0x1c
	cmp	r0, #0x80
	bne	.Ld7d64
.Ld7dc8:
	ldr	r1, [sp, #0x2c]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r4, [sp, #0x28]
	mov	r5, #0x90
	add	r4, #1
	lsl	r5, #1
	str	r4, [sp, #0x28]
	cmp	r4, r5
	beq	.Ld7dfe
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	mov	r7, #0x10
	and	r3, r2
	mov	r10, r7
	cmp	r3, #0
	bne	.Ld7df8
	b	.Ld7814
.Ld7df8:
	cmp	r4, #0x10
	bgt	.Ld7dfe
	b	.Ld7814
.Ld7dfe:
	ldr	r1, [sp, #0x2c]
	ldr	r2, =0x77d8
	mov	r0, #0
	mov	r8, r0
	add	r5, r1, r2
.Ld7e08:
	ldmia	r5!, {r0}
	bl	_Func_bdd4
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	cmp	r4, #9
	bne	.Ld7e08
	bl	Func_d67dc
	ldr	r3, =REG_BLDALPHA
	ldr	r2, .Ld7e5c	@ 0x1010
	ldr	r0, =0x121
	strh	r2, [r3]
	bl	_Func_f9080
	mov	r1, #0xe1
	ldr	r0, [sp, #0x2c]
	mov	r5, #0
	lsl	r1, #7
	mov	r8, r5
	mov	r7, #0x7f
	mov	r6, #0x3f
	add	r5, r0, r1
.Ld7e38:
	bl	Func_4458
	and	r0, r7
	ldr	r3, =0xfff00000
	add	r0, #0x40
	lsl	r0, #16
	str	r3, [r5, #8]
	str	r0, [r5]
	bl	Func_4458
	and	r0, r7
	neg	r0, r0
	sub	r0, #0x40
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	b	.Ld7ea0

	.align	2, 0
.Ld7e5c:
	.word	0x1010
	.pool

.Ld7ea0:
	and	r0, r6
	neg	r0, r0
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r2, #1
	and	r0, r6
	mov	r3, #0
	add	r0, #0x7f
	add	r8, r2
	str	r3, [r5, #0x18]
	lsl	r0, #12
	mov	r3, r8
	str	r0, [r5, #0x10]
	add	r5, #0x1c
	cmp	r3, #0x40
	bne	.Ld7e38
	mov	r4, #0
	ldr	r5, =ewram_10000
	mov	r8, r4
.Ld7ecc:
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	str	r3, [r5]
	bl	Func_4458
	mov	r7, r8
	lsr	r3, r7, #31
	add	r3, r8
	mov	r2, #0x3f
	and	r2, r0
	asr	r3, #1
	add	r2, r3
	neg	r3, r7
	str	r2, [r5, #4]
	mov	r0, #1
	lsr	r2, r3, #31
	add	r3, r2
	add	r8, r0
	asr	r3, #1
	mov	r1, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Ld7ecc
	mov	r2, #0
	ldr	r3, =0xfffffc20
	str	r2, [sp, #0x28]
	mov	r9, r3
.Ld7f08:
	ldr	r5, [sp, #0x28]
	mov	r4, #0
	mov	r10, r4
	cmp	r5, #0x60
	bne	.Ld7f18
	mov	r0, #0x86
	bl	_Func_bd7dc
.Ld7f18:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x10
	bne	.Ld7f28
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x77a8
	mov	r3, #0x20
	add	r2, r0, r1
	str	r3, [r2]
.Ld7f28:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x10
	ble	.Ld7f42
	mov	r3, r2
	sub	r3, #0x10
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r10, r3
	cmp	r3, #0x10
	ble	.Ld7f42
	mov	r3, #0x10
	mov	r10, r3
.Ld7f42:
	ldr	r3, [sp, #0x28]
	sub	r3, #9
	cmp	r3, #0x3e
	bhi	.Ld7f5a
	ldr	r4, [sp, #0x28]
	mov	r3, #3
	and	r3, r4
	cmp	r3, #0
	bne	.Ld7f5a
	mov	r0, #0x84
	bl	_Func_f9080
.Ld7f5a:
	ldr	r5, [sp, #0x28]
	cmp	r5, #0x48
	bne	.Ld7f66
	mov	r0, #0x91
	bl	_Func_f9080
.Ld7f66:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x40
	ble	.Ld7f8e
	mov	r3, #0x40
	sub	r3, r7
	lsl	r2, r3, #3
	sub	r2, r3
	mov	r3, #0x28
	str	r3, [sp]
	mov	r3, #0x50
	str	r3, [sp, #4]
	ldr	r4, =0x14f9
	ldr	r3, [sp, #0x2c]
	add	r2, #0x58
	add	r1, r3, r4
	ldr	r0, [sp, #0x30]
	mov	r3, r9
	ldr	r5, [sp, #0x24]
	bl	_call_via_r5
.Ld7f8e:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x47
	bgt	.Ld7fd8
	mov	r0, #0
	mov	r1, r10
	mov	r8, r0
	cmp	r1, #0
	beq	.Ld7fd8
	ldr	r7, =.Lee9e0
	ldr	r6, =.Lee974
.Ld7fa2:
	mov	r0, r8
	mov	r1, #3
	bl	Func_b1c_from_thumb
	ldr	r4, =.Lee9e9
	lsl	r3, r0, #1
	ldrb	r5, [r4, r0]
	ldrh	r1, [r7, r3]
	ldr	r2, [sp, #0x2c]
	ldr	r4, =.Lee9e6
	ldrb	r3, [r6, #1]
	ldrb	r0, [r4, r0]
	add	r1, r2, r1
	ldrb	r2, [r6]
	sub	r3, r5
	str	r5, [sp, #4]
	mov	r5, #1
	str	r0, [sp]
	sub	r2, #0x38
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	add	r8, r5
	bl	_call_via_r4
	add	r6, #2
	cmp	r8, r10
	bne	.Ld7fa2
.Ld7fd8:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x48
	bne	.Ld803e
	ldr	r1, [sp, #0x2c]
	mov	r2, #0xe1
	mov	r0, #0
	lsl	r2, #7
	ldr	r6, =.Lee974
	mov	r8, r0
	add	r5, r1, r2
.Ld7fec:
	mov	r3, r8
	mov	r2, #0xf
	and	r2, r3
	lsl	r2, #1
	ldrb	r3, [r6, r2]
	sub	r3, #0x38
	add	r2, #1
	lsl	r3, #16
	str	r3, [r5]
	ldrb	r3, [r6, r2]
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x3f
	lsl	r3, #13
	str	r3, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	neg	r3, r3
	mov	r4, #1
	sub	r3, #0x10
	add	r8, r4
	lsl	r3, #14
	mov	r7, r8
	str	r3, [r5, #0x10]
	add	r5, #0x1c
	cmp	r7, #0x40
	bne	.Ld7fec
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x48
	bne	.Ld803e
	ldr	r1, [sp, #0x2c]
	ldr	r3, =0x77a8
	add	r2, r1, r3
	mov	r3, #4
	str	r3, [r2]
.Ld803e:
	ldr	r4, [sp, #0x28]
	cmp	r4, #0x47
	ble	.Ld80e0
	mov	r5, #0x20
	mov	r10, r5
	cmp	r4, #0x48
	beq	.Ld8050
	mov	r7, #0x40
	mov	r10, r7
.Ld8050:
	mov	r0, #0
	mov	r1, r10
	mov	r8, r0
	cmp	r1, #0
	beq	.Ld80da
	ldr	r2, [sp, #0x2c]
	mov	r3, #0xe1
	lsl	r3, #7
	add	r6, r2, r3
.Ld8062:
	mov	r4, #6
	ldrsh	r7, [r6, r4]
	cmp	r7, #0x87
	bgt	.Ld80d0
	mov	r1, #3
	mov	r0, r8
	bl	Func_b1c_from_thumb
	ldr	r2, =.Lee9f2
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldr	r5, [sp, #0x2c]
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	ldr	r4, =.Lee9ec
	ldr	r3, =.Lee9ef
	add	r1, r5, r1
	ldrb	r5, [r3, r0]
	ldrb	r0, [r4, r0]
	sub	r3, r7, r5
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x40
	lsl	r2, #9
	bl	Func_e3908
	mov	r5, #6
	ldrsh	r3, [r6, r5]
	cmp	r3, #0x78
	ble	.Ld80d0
	mov	r7, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r7, #12
	cmp	r3, r7
	ble	.Ld80d0
	neg	r3, r3
	cmp	r3, #0
	bge	.Ld80bc
	add	r3, #3
.Ld80bc:
	asr	r3, #2
	str	r3, [r6, #0x10]
	mov	r3, #0xf0
	lsl	r3, #15
	str	r3, [r6, #4]
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x77a8
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
.Ld80d0:
	mov	r2, #1
	add	r8, r2
	add	r6, #0x1c
	cmp	r8, r10
	bne	.Ld8062
.Ld80da:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x47
	bgt	.Ld8144
.Ld80e0:
	ldr	r7, [sp, #0x2c]
	mov	r0, #0xe1
	mov	r4, #0
	lsl	r0, #7
	mov	r8, r4
	add	r5, r7, r0
.Ld80ec:
	mov	r1, #2
	ldrsh	r2, [r5, r1]
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	mov	r1, #0x18
	str	r1, [sp]
	mov	r1, #0x30
	sub	r2, #0xc
	sub	r3, #0x18
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0x2c]
	ldr	r7, [sp, #0x24]
	bl	_call_via_r7
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	asr	r3, #16
	cmp	r3, #0x78
	ble	.Ld8138
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x2f
	bgt	.Ld8138
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	add	r3, #0x40
	lsl	r3, #16
	str	r3, [r5]
	ldr	r3, =0xfff00000
	str	r3, [r5, #4]
.Ld8138:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Ld80ec
.Ld8144:
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x2c]
	mov	r3, #0
	mov	r8, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld8186
	mov	r6, #0x24
	mov	r5, #0x20
.Ld8158:
	ldr	r7, [sp, #0x28]
	cmp	r7, r5
	bne	.Ld8172
	ldr	r0, [sp, #0x2c]
	ldr	r3, [r0, r2]
	ldrsh	r0, [r3, r6]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #9
	mov	r2, #5
	sub	r3, #1
	bl	Func_d6888
.Ld8172:
	mov	r2, #1
	add	r8, r2
	ldr	r4, [sp, #0x2c]
	ldr	r2, =0x7828
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	add	r5, #8
	cmp	r8, r3
	bne	.Ld8158
.Ld8186:
	ldr	r5, [sp, #0x28]
	cmp	r5, #0x48
	ble	.Ld8208
	mov	r6, r5
	mov	r7, #0
	ldr	r5, =ewram_10000
	mov	r8, r7
	sub	r6, #0x36
.Ld8196:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0x11
	bhi	.Ld81ce
	lsr	r0, r3, #31
	add	r0, r3, r0
	mov	r1, #9
	asr	r0, #1
	bl	Func_b1c_from_thumb
	ldr	r3, =Data_ede96
	ldrb	r4, [r3, r0]
	ldr	r3, =Data_ede84
	lsl	r0, #1
	ldrh	r1, [r3, r0]
	ldr	r0, [sp, #0x1c]
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	add	r1, r0, r1
	lsr	r0, r4, #1
	sub	r3, r0
	sub	r2, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
.Ld81ce:
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0x12
	bne	.Ld81fc
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x7f
	bgt	.Ld81fc
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	str	r3, [r5]
	bl	Func_4458
	lsr	r3, r6, #31
	mov	r2, #0x3f
	add	r3, r6, r3
	asr	r3, #1
	and	r2, r0
	add	r2, r3
	mov	r3, #0
	str	r2, [r5, #4]
	str	r3, [r5, #0x18]
.Ld81fc:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Ld8196
.Ld8208:
	ldr	r3, [sp, #0x28]
	sub	r3, #0x48
	cmp	r3, #7
	bhi	.Ld8258
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	b	.Ld8260

	.pool_aligned

.Ld8258:
	mov	r0, #2
	mov	r1, #2
	bl	Func_e155c
.Ld8260:
	ldr	r3, [sp, #0x2c]
	ldr	r4, =0x7824
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r7, [sp, #0x28]
	mov	r5, #0xe
	add	r7, #1
	add	r9, r5
	str	r7, [sp, #0x28]
	cmp	r7, #0x92
	beq	.Ld8280
	b	.Ld7f08
.Ld8280:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x14c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d765c

	.section .rodata

.Lee910:
	.incrom 0xee910, 0xee916
.Lee916:
	.incrom 0xee916, 0xee920
.Lee920:
	.incrom 0xee920, 0xee925
.Lee925:
	.incrom 0xee925, 0xee92a
.Lee92a:
	.incrom 0xee92a, 0xee930
.Lee930:
	.incrom 0xee930, 0xee934
.Lee934:
	.incrom 0xee934, 0xee93e
.Lee93e:
	.incrom 0xee93e, 0xee943
.Lee943:
	.incrom 0xee943, 0xee948
.Lee948:
	.incrom 0xee948, 0xee952
.Lee952:
	.incrom 0xee952, 0xee958
.Lee958:
	.incrom 0xee958, 0xee966
.Lee966:
	.incrom 0xee966, 0xee974
.Lee974:
	.incrom 0xee974, 0xee994
.Lee994:
	.incrom 0xee994, 0xee998
.Lee998:
	.incrom 0xee998, 0xee99e
.Lee99e:
	.incrom 0xee99e, 0xee9a1
.Lee9a1:
	.incrom 0xee9a1, 0xee9a4
.Lee9a4:
	.incrom 0xee9a4, 0xee9a8
.Lee9a8:
	.incrom 0xee9a8, 0xee9b3
.Lee9b3:
	.incrom 0xee9b3, 0xee9be
.Lee9be:
	.incrom 0xee9be, 0xee9d4
.Lee9d4:
	.incrom 0xee9d4, 0xee9d7
.Lee9d7:
	.incrom 0xee9d7, 0xee9da
.Lee9da:
	.incrom 0xee9da, 0xee9e0
.Lee9e0:
	.incrom 0xee9e0, 0xee9e6
.Lee9e6:
	.incrom 0xee9e6, 0xee9e9
.Lee9e9:
	.incrom 0xee9e9, 0xee9ec
.Lee9ec:
	.incrom 0xee9ec, 0xee9ef
.Lee9ef:
	.incrom 0xee9ef, 0xee9f2
.Lee9f2:
	.incrom 0xee9f2, 0xee9f8
