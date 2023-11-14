	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_18cac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x90
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	mov	r7, r1
	ldr	r1, =iwram_1e8c
	ldr	r2, =0x12b0
	ldr	r6, [r1]
	add	r3, r6, r2
	ldrh	r3, [r3]
	ldr	r2, =0xea8
	str	r3, [sp, #4]
	add	r3, r6, r2
	ldrh	r3, [r3]
	mov	r11, r3
	ldr	r3, [sp, #0xb0]
	mov	r8, r0
	cmp	r3, #1
	beq	.L18d50
	ldrh	r2, [r0, #0x16]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L18d50
	ldr	r3, [r1, #0x58]
	ldr	r3, [r3]
	cmp	r3, r8
	bne	.L18d06
	ldr	r0, =0x14
	bl	Func_2f40
	ldr	r0, =0x13
	bl	Func_2f40
	mov	r1, #3
	mov	r9, r1
	cmp	r7, #0x20
	bne	.L18d06
	b	.L18ecc
.L18d06:
	ldr	r0, =0x13
	bl	Func_2f40
	mov	r2, #4
	mov	r10, r0
	mov	r9, r2
	cmp	r7, #0x20
	bne	.L18d18
	b	.L18ecc
.L18d18:
	ldr	r5, =0x318
	mov	r0, r5
	bl	Func_4938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_155d0
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r10
	str	r3, [sp]
	mov	r1, r7
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #8]
	mov	r0, r8
	bl	_call_via_r6
	mov	r5, r0
	mov	r0, r6
	bl	Func_2df0
	mov	r0, r5
	b	.L18ee8
.L18d50:
	mov	r1, #5
	mov	r9, r1
	cmp	r7, #0x20
	bne	.L18d5a
	b	.L18ecc
.L18d5a:
	bl	Func_15e8c
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	bne	.L18d68
	b	.L18ee8
.L18d68:
	ldr	r2, =0xfffff968
	sub	r3, r5, r6
	add	r3, r2
	ldr	r2, =0xb6db6db7
	mov	r1, r3
	mul	r1, r2
	mov	r3, #1
	mov	r2, #0
	strb	r3, [r5, #5]
	strb	r2, [r5, #4]
	ldr	r3, [sp, #0xb0]
	mov	r10, r1
	cmp	r3, #1
	bne	.L18d8e
	mov	r1, #1
	mov	r3, #2
	mov	r9, r1
	strb	r3, [r5, #5]
	b	.L18dd6
.L18d8e:
	ldr	r1, =0xeac
	add	r3, r6, r1
	ldrh	r3, [r3]
	cmp	r3, #3
	beq	.L18dac
	cmp	r3, #3
	bgt	.L18da2
	cmp	r3, #2
	beq	.L18dc0
	b	.L18dc6
.L18da2:
	cmp	r3, #4
	beq	.L18db2
	cmp	r3, #5
	beq	.L18dbc
	b	.L18dc6
.L18dac:
	mov	r3, #5
	strb	r3, [r5, #5]
	b	.L18dc6
.L18db2:
	mov	r3, #6
	strb	r3, [r5, #5]
	mov	r3, #8
	strh	r3, [r5, #0xc]
	b	.L18dc6
.L18dbc:
	mov	r3, #7
	b	.L18dc2
.L18dc0:
	mov	r3, #4
.L18dc2:
	strb	r3, [r5, #5]
	strh	r2, [r5, #0xc]
.L18dc6:
	add	r1, sp, #0x10
	mov	r0, r7
	bl	Func_178b0
	cmp	r0, #0
	bne	.L18dd4
	mov	r0, #1
.L18dd4:
	mov	r9, r0
.L18dd6:
	ldrb	r3, [r5, #5]
	cmp	r3, #2
	bne	.L18e5c
	ldr	r2, =0x12b6
	add	r6, r2
	ldrh	r3, [r6]
	mov	r7, r5
	add	r7, #0x10
	cmp	r3, #0x63
	bne	.L18df0
	bl	Func_4080
	strh	r0, [r6]
.L18df0:
	mov	r3, r8
	ldrh	r2, [r3, #0xc]
	ldr	r1, =0xfffe
	ldrh	r3, [r3, #8]
	add	r3, r1
	add	r2, r3
	lsl	r2, #3
	ldr	r3, .L18e20	@ 0x1ff
	add	r2, #4
	and	r2, r3
	ldrh	r1, [r7, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r7, #6]
	ldrb	r3, [r2, #0xe]
	ldrb	r2, [r2, #0xa]
	add	r2, #0xfe
	add	r3, r2
	lsl	r3, #3
	sub	r3, #1
	strb	r3, [r7, #4]
	b	.L18eac

	.align	2, 0
.L18e20:
	.word	0x1ff
	.pool

.L18e5c:
	ldr	r3, =0x12b8
	add	r4, r6, r3
	ldrh	r1, [r4]
	ldr	r2, =0x6010000
	add	r1, r10
	lsl	r1, #5
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	add	r0, sp, #0x10
	ldr	r2, =0x84000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, [sp, #8]
	mov	r1, r11
	lsr	r3, r1, #1
	mov	r1, r8
	add	r3, r2, r3
	ldrh	r2, [r1, #0xe]
	lsl	r2, #3
	add	r3, r2
	ldr	r2, =0xfffe
	add	r3, r2
	strh	r3, [r5, #0x14]
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #0xc]
	lsr	r2, r3, #1
	add	r2, r1, r2
	mov	r1, r8
	ldrh	r3, [r1, #0xc]
	lsl	r3, #3
	add	r2, r3
	ldr	r3, .L18ed0	@ 0x4000
	add	r2, #2
	orr	r2, r3
	strh	r2, [r5, #0x16]
	ldrh	r3, [r4]
	add	r3, r10
	mov	r7, r5
	strh	r3, [r5, #0x18]
	add	r7, #0x10
.L18eac:
	mov	r3, #0xfe
	strb	r3, [r5, #0xf]
	ldrh	r3, [r7, #6]
	lsl	r3, #23
	lsr	r3, #23
	strh	r3, [r5, #6]
	ldrb	r3, [r7, #4]
	mov	r2, #0
	strh	r3, [r5, #8]
	mov	r3, r10
	strb	r3, [r5, #0xe]
	str	r2, [r5]
	mov	r0, r8
	mov	r1, r5
	bl	Func_16584
.L18ecc:
	mov	r0, r9
	b	.L18ee8

	.align	2, 0
.L18ed0:
	.word	0x4000
	.pool

.L18ee8:
	add	sp, #0x90
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_18cac

.thumb_func_start Func_18efc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r4, r3
	ldr	r3, =iwram_1e8c
	mov	r7, r0
	ldr	r5, [r3]
	ldrh	r3, [r7, #0xa]
	sub	r3, #2
	sub	sp, #4
	mov	r0, r2
	mov	r6, r5
	cmp	r4, r3
	bhi	.L18ff0
	ldrh	r3, [r7, #8]
	sub	r3, #2
	cmp	r0, r3
	bhi	.L18ff0
	ldr	r2, [sp, #0x18]
	cmp	r2, #1
	bne	.L18fcc
	bl	Func_15e8c
	mov	r5, r0
	cmp	r5, #0
	beq	.L18ff0
	ldr	r1, =0xfffff968
	sub	r3, r5, r6
	ldr	r2, =0xb6db6db7
	add	r3, r1
	mov	r1, r3
	mul	r1, r2
	mov	r3, #2
	ldr	r2, =0x12b6
	strb	r3, [r5, #5]
	add	r6, r2
	ldrh	r3, [r6]
	mov	r4, r5
	mov	r8, r1
	add	r4, #0x10
	cmp	r3, #0x63
	bne	.L18f5a
	str	r4, [sp]
	bl	Func_4080
	strh	r0, [r6]
	ldr	r4, [sp]
.L18f5a:
	ldrh	r3, [r7, #8]
	ldr	r1, =0xfffe
	ldrh	r2, [r7, #0xc]
	add	r3, r1
	add	r2, r3
	lsl	r2, #3
	ldr	r3, .L18fa0	@ 0x1ff
	add	r2, #4
	and	r2, r3
	ldr	r1, =0xfffffe00
	ldrh	r3, [r4, #6]
	and	r1, r3
	orr	r1, r2
	ldrb	r2, [r7, #0xa]
	ldrb	r3, [r7, #0xe]
	add	r2, #0xfe
	add	r3, r2
	strh	r1, [r4, #6]
	lsl	r3, #3
	lsl	r1, #23
	sub	r3, #1
	lsr	r1, #23
	strb	r3, [r4, #4]
	strh	r1, [r5, #6]
	ldrb	r3, [r4, #4]
	strh	r3, [r5, #8]
	mov	r3, #0
	str	r3, [r5]
	ldrb	r3, [r5, #5]
	mov	r2, r8
	strb	r2, [r5, #0xe]
	cmp	r3, #0
	bne	.L18fc2
	b	.L18fbc

	.align	2, 0
.L18fa0:
	.word	0x1ff
	.pool

.L18fbc:
	add	r3, sp, #0x18
	ldrb	r3, [r3]
	strb	r3, [r5, #5]
.L18fc2:
	mov	r0, r7
	mov	r1, r5
	bl	Func_16584
	b	.L18ff0
.L18fcc:
	cmp	r1, #0xff
	bhi	.L18ff0
	ldrh	r2, [r7, #0xe]
	add	r4, #1
	ldrh	r3, [r7, #0xc]
	add	r0, #1
	add	r2, r4
	lsl	r2, #5
	add	r3, r0
	add	r0, r2, r3
	mov	r2, #0xa0
	lsl	r2, #2
	cmp	r0, r2
	bcs	.L18ff0
	ldr	r3, =0xf000
	lsl	r2, r0, #1
	orr	r1, r3
	strh	r1, [r5, r2]
.L18ff0:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_18efc

.thumb_func_start Func_19000
	push	{r5, r6, r7, lr}
	mov	r4, r3
	ldr	r3, =iwram_1e8c
	ldr	r6, [r3]
	ldrh	r3, [r0, #0xa]
	mov	r7, r1
	add	r4, #1
	mov	r1, r2
	sub	r3, #1
	ldr	r2, [sp, #0x10]
	add	r1, #1
	cmp	r4, r3
	bhi	.L19082
	ldrh	r3, [r0, #8]
	sub	r3, #1
	cmp	r1, r3
	bhi	.L19082
	mov	r5, #0xf0
	lsl	r5, #8
	cmp	r2, #3
	beq	.L19042
	cmp	r2, #3
	bhi	.L19038
	mov	r5, #0xe0
	lsl	r5, #8
	cmp	r2, #2
	beq	.L19042
	b	.L19040
.L19038:
	mov	r5, #0x80
	lsl	r5, #5
	cmp	r2, #4
	beq	.L19042
.L19040:
	mov	r5, #0
.L19042:
	cmp	r2, #1
	beq	.L19082
	cmp	r2, #1
	bcc	.L1906a
	cmp	r2, #4
	bhi	.L1906a
	ldrh	r2, [r0, #0xe]
	ldrh	r3, [r0, #0xc]
	add	r2, r4
	add	r3, r1
	lsl	r2, #5
	add	r0, r2, r3
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r0, r3
	bcs	.L19082
	lsl	r3, r0, #1
	orr	r5, r7
	strh	r5, [r6, r3]
	b	.L19082
.L1906a:
	ldrh	r2, [r0, #0xe]
	ldrh	r3, [r0, #0xc]
	add	r2, r4
	add	r3, r1
	lsl	r2, #5
	add	r0, r2, r3
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r0, r3
	bcs	.L19082
	lsl	r3, r0, #1
	strh	r7, [r6, r3]
.L19082:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_19000

.thumb_func_start Func_1908c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	ldrb	r3, [r6, #5]
	mov	r7, #0x80
	mov	r5, r6
	sub	sp, #8
	lsl	r7, #1
	add	r5, #0x10
	cmp	r3, #9
	beq	.L190b6
	cmp	r3, #9
	blt	.L19106
	cmp	r3, #0xa
	beq	.L190c8
	cmp	r3, #0xb
	beq	.L190da
	cmp	r3, #0xc
	beq	.L190f0
	b	.L19106
.L190b6:
	ldrh	r2, [r6, #0xc]
	add	r3, r2, #1
	strh	r3, [r6, #0xc]
	mov	r3, #0x1f
	ldr	r1, =Data_366f8
	and	r3, r2
	lsl	r3, #1
	ldrh	r7, [r1, r3]
	b	.L19106
.L190c8:
	ldrh	r2, [r6, #0xc]
	add	r3, r2, #1
	strh	r3, [r6, #0xc]
	mov	r3, #0x1f
	ldr	r1, =Data_366f8
	and	r3, r2
	lsl	r3, #1
	ldrh	r3, [r1, r3]
	b	.L19104
.L190da:
	ldrh	r3, [r6, #0xc]
	mov	r0, r3
	cmp	r0, #7
	bhi	.L19106
	add	r3, #1
	ldr	r2, =Data_366f8
	strh	r3, [r6, #0xc]
	lsl	r3, r0, #2
	add	r3, #0x20
	ldrh	r7, [r2, r3]
	b	.L19106
.L190f0:
	ldrh	r3, [r6, #0xc]
	mov	r1, r3
	cmp	r1, #7
	bhi	.L19106
	add	r3, #1
	ldr	r2, =Data_366f8
	strh	r3, [r6, #0xc]
	lsl	r3, r1, #2
	add	r3, #0x20
	ldrh	r3, [r2, r3]
.L19104:
	lsr	r7, r3, #1
.L19106:
	mov	r3, #0x80
	lsl	r3, #1
	mov	r8, r3
	cmp	r7, r8
	bne	.L19124
	ldrb	r2, [r5, #7]
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	strb	r3, [r5, #7]
	ldrb	r2, [r5, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	b	.L191a0
.L19124:
	ldr	r3, [sp]
	ldr	r4, =0xffff0000
	ldr	r2, =0xffff
	mov	r1, r7
	and	r3, r4
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp]
	mov	r0, sp
	ldr	r3, [r0, #4]
	and	r3, r4
	str	r3, [r0, #4]
	bl	Func_3d28
	mov	r3, #0x1f
	and	r0, r3
	ldrb	r2, [r5, #7]
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r0, #1
	and	r3, r2
	orr	r3, r0
	strb	r3, [r5, #7]
	cmp	r7, r8
	ble	.L19194
	ldrb	r3, [r5, #5]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #5]
	ldr	r3, =0xfff8
	ldrh	r2, [r6, #6]
	add	r2, r3
	ldr	r3, .L1917c	@ 0x1ff
	ldrh	r1, [r5, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	ldrb	r3, [r6, #8]
	add	r3, #0xf8
	b	.L191b4

	.align	2, 0
.L1917c:
	.word	0x1ff
	.pool

.L19194:
	ldrb	r2, [r5, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	mov	r2, #1
	orr	r3, r2
.L191a0:
	strb	r3, [r5, #5]
	ldr	r2, =0x1ff
	ldrh	r3, [r6, #6]
	ldrh	r1, [r5, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	ldrh	r3, [r6, #8]
.L191b4:
	strb	r3, [r5, #4]
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1908c
