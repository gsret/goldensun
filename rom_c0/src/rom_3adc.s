	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_3adc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1c98
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L3b68
	ldr	r3, =iwram_1cd4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L3b08
	ldr	r3, =iwram_1cf8
	ldrh	r2, [r3]
	ldr	r3, .L3af8	@ 0x80
	b	.L3b0e

	.align	2, 0
.L3af8:
	.word	0x80
	.pool

.L3b08:
	ldr	r3, =iwram_1cf8
	ldrh	r2, [r3]
	ldr	r3, .L3b48	@ 0xc0
.L3b0e:
	orr	r3, r2
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	ldr	r6, =iwram_1ac0
	ldrb	r3, [r6]
	add	r3, #0xff
	strb	r3, [r6]
	ldr	r2, =iwram_1ca8
	ldr	r3, =iwram_1aec
	ldrb	r5, [r2]
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	ldr	r7, =iwram_1c98
	sub	r3, r2
	ldrb	r2, [r6]
	ldrb	r1, [r7]
	mov	r0, r2
	mul	r0, r3
	bl	Func_af0_from_thumb
	ldr	r3, =REG_BLDY
	add	r5, r0
	strh	r5, [r3]
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.L3b68
	strb	r3, [r7]
	b	.L3b68

	.align	2, 0
.L3b48:
	.word	0xc0
	.pool

.L3b68:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_3adc

.thumb_func_start Func_3b70
	ldr	r2, =iwram_1cd4
	mov	r3, #0
	strb	r3, [r2]
	ldr	r2, =iwram_1cf8
	ldr	r3, .L3b94	@ 0x3e
	strh	r3, [r2]
	ldr	r2, =iwram_1ca8
	ldr	r1, =iwram_1aec
	ldrb	r3, [r2]
	strb	r3, [r1]
	mov	r3, #0x10
	strb	r3, [r2]
	ldr	r3, =iwram_1c98
	strb	r0, [r3]
	ldr	r2, =iwram_1ac0
	ldrb	r3, [r3]
	strb	r3, [r2]
	b	.L3bb0

	.align	2, 0
.L3b94:
	.word	0x3e
	.pool

.L3bb0:
	bx	lr
.func_end Func_3b70

.thumb_func_start Func_3bb4
	ldr	r3, =iwram_1cd4
	mov	r4, #0
	strb	r4, [r3]
	ldr	r2, =iwram_1cf8
	ldr	r3, .L3bd8	@ 0x3e
	strh	r3, [r2]
	ldr	r2, =iwram_1ca8
	ldr	r1, =iwram_1aec
	ldrb	r3, [r2]
	strb	r3, [r1]
	ldr	r3, =iwram_1c98
	strb	r4, [r2]
	strb	r0, [r3]
	ldr	r2, =iwram_1ac0
	ldrb	r3, [r3]
	strb	r3, [r2]
	b	.L3bf4

	.align	2, 0
.L3bd8:
	.word	0x3e
	.pool

.L3bf4:
	bx	lr
.func_end Func_3bb4

.thumb_func_start Func_3bf8
	ldr	r2, =iwram_1cd4
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, =iwram_1cf8
	ldr	r3, .L3c1c	@ 0x3e
	strh	r3, [r2]
	ldr	r2, =iwram_1ca8
	ldr	r1, =iwram_1aec
	ldrb	r3, [r2]
	strb	r3, [r1]
	mov	r3, #0x10
	strb	r3, [r2]
	ldr	r3, =iwram_1c98
	strb	r0, [r3]
	ldr	r2, =iwram_1ac0
	ldrb	r3, [r3]
	strb	r3, [r2]
	b	.L3c38

	.align	2, 0
.L3c1c:
	.word	0x3e
	.pool

.L3c38:
	bx	lr
.func_end Func_3bf8

.thumb_func_start Func_3c3c
	ldr	r2, =iwram_1cd4
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, =iwram_1cf8
	ldr	r3, .L3c60	@ 0x3e
	strh	r3, [r2]
	ldr	r2, =iwram_1ca8
	ldr	r1, =iwram_1aec
	ldrb	r3, [r2]
	strb	r3, [r1]
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_1c98
	strb	r0, [r3]
	ldr	r2, =iwram_1ac0
	ldrb	r3, [r3]
	strb	r3, [r2]
	b	.L3c7c

	.align	2, 0
.L3c60:
	.word	0x3e
	.pool

.L3c7c:
	bx	lr
.func_end Func_3c3c

.thumb_func_start Func_3c80
	push	{r5, lr}
	mov	r5, r3
	ldr	r3, =iwram_1cd4
	strb	r0, [r3]
	ldr	r3, .L3ca0	@ 0x3f
	mov	r4, r2
	ldr	r2, =iwram_1cf8
	and	r1, r3
	strh	r1, [r2]
	cmp	r4, #0x10
	bls	.L3cb4
	ldr	r2, =iwram_1ca8
	ldr	r3, =iwram_1aec
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L3cb8

	.align	2, 0
.L3ca0:
	.word	0x3f
	.pool

.L3cb4:
	ldr	r3, =iwram_1aec
	strb	r4, [r3]
.L3cb8:
	ldr	r3, =iwram_1ca8
	ldr	r2, =iwram_1c98
	strb	r5, [r3]
	ldr	r3, [sp, #8]
	strb	r3, [r2]
	ldr	r1, =iwram_1ac0
	ldrb	r3, [r2]
	strb	r3, [r1]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_3c80

.thumb_func_start Func_3ce0
	push	{r5, lr}
	ldr	r2, =iwram_1c98
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L3cf8
	mov	r5, r2
.L3cec:
	mov	r0, #1
	bl	Func_30f8
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L3cec
.L3cf8:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_3ce0
