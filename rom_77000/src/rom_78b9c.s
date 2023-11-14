	.include "macros.inc"

.thumb_func_start Func_78b9c
	push	{lr}
	ldr	r3, =0x3fff
	and	r0, r3
	mov	r3, #0x82
	lsl	r3, #2
	cmp	r0, r3
	bcc	.L78bac
	mov	r0, #0
.L78bac:
	ldr	r3, =.L7ee58
	lsl	r0, #4
	add	r0, r3
	pop	{r1}
	bx	r1
.func_end Func_78b9c

.thumb_func_start Func_78bc0
	push	{r5, lr}
	mov	r5, r1
	bl	Func_77394
	ldr	r1, =0x3fff
	mov	r2, #0
	add	r0, #0x58
.L78bce:
	ldrh	r3, [r0]
	and	r3, r1
	add	r0, #4
	cmp	r3, r5
	bne	.L78bdc
	mov	r0, #1
	b	.L78be4
.L78bdc:
	add	r2, #1
	cmp	r2, #0x1f
	ble	.L78bce
	mov	r0, #0
.L78be4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_78bc0

.thumb_func_start Func_78bf0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	Func_77394
	ldr	r5, =0x129
	mov	r9, r0
	mov	r0, #0x58
	add	r5, r9
	add	r0, r9
	mov	r8, r0
	ldrb	r0, [r5]
	bl	Func_79ad8
	str	r0, [sp, #4]
	ldrb	r3, [r5]
	mov	r4, #0x80
	lsl	r4, #8
	ldr	r1, .L78c4c	@ 0
	mov	r2, r8
	mov	r5, #0x1f
	mov	r0, #0
	cmp	r3, #0
	bne	.L78c2c
	b	.L78e16
.L78c2c:
	ldrh	r3, [r2]
	and	r3, r4
	cmp	r3, #0
	beq	.L78c36
	strh	r1, [r2]
.L78c36:
	sub	r5, #1
	add	r2, #4
	cmp	r5, #0
	bge	.L78c2c
	mov	r4, #0x80
	ldr	r1, .L78c4c	@ 0
	lsl	r4, #7
	mov	r2, r8
	mov	r5, #0x1f
	b	.L78c54

	.align	2, 0
.L78c4c:
	.word	0
	.pool

.L78c54:
	ldrh	r3, [r2]
	and	r3, r4
	cmp	r3, #0
	beq	.L78c5e
	strh	r1, [r2]
.L78c5e:
	sub	r5, #1
	add	r2, #4
	cmp	r5, #0
	bge	.L78c54
	mov	r1, r8
	mov	r4, #0x1f
	mov	r5, #0x1f
	add	r1, #0x7c
.L78c6e:
	lsl	r3, r4, #2
	mov	r0, r8
	ldrh	r2, [r3, r0]
	mov	r3, r2
	cmp	r3, #0
	bne	.L78c7e
	sub	r4, #1
	b	.L78c86
.L78c7e:
	strh	r2, [r1]
	sub	r4, #1
	sub	r1, #4
	sub	r5, #1
.L78c86:
	cmp	r4, #0
	bge	.L78c6e
	cmp	r5, #0
	blt	.L78ca4
	lsl	r3, r5, #2
	ldr	r2, =0
	add	r3, r8
.L78c94:
	sub	r5, #1
	strh	r2, [r3]
	sub	r3, #4
	cmp	r5, #0
	bge	.L78c94
	b	.L78ca4

	.pool_aligned

.L78ca4:
	ldr	r2, [sp, #4]
	mov	r1, #0x80
	add	r2, #0x10
	lsl	r1, #8
	mov	r14, r2
	mov	r3, #0x10
	mov	r5, #0
	mov	r11, r1
	mov	r10, r3
	mov	r7, r14
.L78cb8:
	ldrb	r3, [r7]
	cmp	r3, #0
	beq	.L78d24
	mov	r0, r9
	mov	r1, r14
	ldrb	r2, [r0, #0xf]
	ldrb	r3, [r1, #1]
	cmp	r2, r3
	bcc	.L78d24
	mov	r2, r8
	ldrh	r6, [r2]
	ldrb	r3, [r1]
	mov	r12, r6
	mov	r4, #0
	cmp	r12, r3
	beq	.L78cf0
	mov	r12, r10
	mov	r1, r8
.L78cdc:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.L78cf0
	ldr	r3, [sp, #4]
	add	r1, #4
	mov	r0, r12
	ldrh	r2, [r1]
	ldrb	r3, [r3, r0]
	cmp	r2, r3
	bne	.L78cdc
.L78cf0:
	cmp	r4, #0x20
	bne	.L78d24
	mov	r3, r6
	mov	r4, #0
	cmp	r3, #0
	bne	.L78d06
	ldrb	r3, [r7]
	mov	r1, r11
	orr	r3, r1
	mov	r2, r8
	b	.L78d1e
.L78d06:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.L78d20
	lsl	r3, r4, #2
	mov	r0, r8
	add	r2, r3, r0
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L78d06
	ldrb	r3, [r7]
	mov	r1, r11
	orr	r3, r1
.L78d1e:
	strh	r3, [r2]
.L78d20:
	cmp	r4, #0x20
	beq	.L78d32
.L78d24:
	mov	r2, #4
	add	r5, #1
	add	r14, r2
	add	r7, #4
	add	r10, r2
	cmp	r5, #0xf
	ble	.L78cb8
.L78d32:
	mov	r3, #0xd8
	mov	r5, #0
	mov	r10, r3
.L78d38:
	mov	r0, r10
	mov	r1, r9
	ldrh	r2, [r0, r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.L78dc4
	ldr	r3, =0x200
	and	r3, r2
	cmp	r3, #0
	beq	.L78dc4
	ldrh	r0, [r0, r1]
	bl	Func_78414
	ldrb	r3, [r0, #0xc]
	cmp	r3, #3
	bne	.L78dc4
	mov	r2, r8
	ldrh	r6, [r2]
	ldr	r3, =0x3fff
	ldrh	r0, [r0, #0x28]
	and	r3, r6
	mov	r12, r0
	mov	r4, #0
	b	.L78d70

	.pool_aligned

.L78d70:
	cmp	r3, r12
	beq	.L78d8a
	ldr	r7, =0x3fff
	mov	r1, r8
.L78d78:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.L78d8a
	add	r1, #4
	ldrh	r2, [r1]
	mov	r3, r7
	and	r3, r2
	cmp	r3, r12
	bne	.L78d78
.L78d8a:
	cmp	r4, #0x20
	bne	.L78dc4
	mov	r3, r6
	mov	r4, #0
	cmp	r3, #0
	bne	.L78da8
	ldr	r3, .L78da0	@ 0x4000
	orr	r3, r0
	mov	r0, r8
	strh	r3, [r0]
	b	.L78dc0

	.align	2, 0
.L78da0:
	.word	0x4000
	.pool

.L78da8:
	add	r4, #1
	cmp	r4, #0x1f
	bgt	.L78dc0
	lsl	r3, r4, #2
	mov	r1, r8
	add	r2, r3, r1
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L78da8
	ldr	r3, =0x4000
	orr	r3, r0
	strh	r3, [r2]
.L78dc0:
	cmp	r4, #0x20
	beq	.L78dce
.L78dc4:
	mov	r2, #2
	add	r5, #1
	add	r10, r2
	cmp	r5, #0xe
	ble	.L78d38
.L78dce:
	mov	r4, #0
	mov	r5, #0
	mov	r1, r8
.L78dd4:
	lsl	r3, r4, #2
	mov	r0, r8
	ldrh	r2, [r3, r0]
	mov	r3, r2
	cmp	r3, #0
	bne	.L78de8
	add	r4, #1
	b	.L78df0

	.pool_aligned

.L78de8:
	strh	r2, [r1]
	add	r4, #1
	add	r1, #4
	add	r5, #1
.L78df0:
	cmp	r4, #0x1f
	ble	.L78dd4
	cmp	r5, #0x1f
	bgt	.L78e14
	lsl	r3, r5, #2
	mov	r0, r8
	add	r2, r3, r0
	ldr	r1, =0
	mov	r3, #0x20
	sub	r5, r3, r5
.L78e04:
	sub	r5, #1
	strh	r1, [r2]
	add	r2, #4
	cmp	r5, #0
	bne	.L78e04
	b	.L78e14

	.pool_aligned

.L78e14:
	mov	r0, #0
.L78e16:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_78bf0

.thumb_func_start Func_78e28
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r0
	bl	Func_77394
	ldr	r3, =0x3fff
	mov	r5, r0
	mov	r0, #0x58
	mov	r12, r3
	and	r6, r3
	ldrh	r3, [r0, r5]
	mov	r2, r12
	mov	r4, #1
	and	r2, r3
	neg	r4, r4
	mov	r1, #0
	cmp	r2, r6
	bne	.L78e52
	strh	r2, [r0, r5]
	mov	r4, #0
	b	.L78e68
.L78e52:
	add	r1, #1
	add	r0, #4
	cmp	r1, #0x1e
	bgt	.L78e68
	ldrh	r3, [r0, r5]
	mov	r2, r12
	and	r2, r3
	cmp	r2, r6
	bne	.L78e52
	strh	r2, [r0, r5]
	mov	r4, r1
.L78e68:
	cmp	r4, #0
	bge	.L78e9c
	mov	r2, #0x58
	ldrh	r3, [r5, r2]
	mov	r1, #0
	cmp	r3, #0
	bne	.L78e7c
	strh	r6, [r5, r2]
	mov	r4, #0
	b	.L78e92
.L78e7c:
	add	r1, #1
	cmp	r1, #0x1e
	bgt	.L78e92
	lsl	r3, r1, #2
	mov	r2, r3
	add	r2, #0x58
	ldrh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L78e7c
	strh	r6, [r5, r2]
	mov	r4, r1
.L78e92:
	cmp	r4, #0
	bge	.L78e9c
	mov	r0, #1
	neg	r0, r0
	b	.L78ec0
.L78e9c:
	mov	r0, r7
	bl	Func_78bf0
	mov	r3, #0x58
	ldrh	r3, [r5, r3]
	mov	r1, #0
	cmp	r3, r6
	beq	.L78ebe
	mov	r0, r5
	add	r0, #0x58
.L78eb0:
	add	r1, #1
	cmp	r1, #0x1f
	bgt	.L78ebe
	add	r0, #4
	ldrh	r3, [r0]
	cmp	r3, r6
	bne	.L78eb0
.L78ebe:
	mov	r0, r1
.L78ec0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_78e28

.thumb_func_start Func_78ecc
	push	{lr}
	bl	Func_792c4
	pop	{r1}
	bx	r1
.func_end Func_78ecc

	.section .rodata

.L7ee58:
	.incrom 0x7ee58, 0x80ec8
