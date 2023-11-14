	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_a97c
	push	{r5, r6, r7, lr}
	ldrb	r3, [r0, #1]
	ldrb	r4, [r0]
	lsl	r3, #8
	orr	r4, r3
	mov	r5, r1
	add	r6, r0, #2
	cmp	r4, #0
	bne	.La992
	mov	r0, r6
	b	.Laa00
.La992:
	add	r0, r4
	ldrb	r1, [r0]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r7, r6
	mov	r12, r5
	b	.La9d4
.La9a0:
	asr	r2, r4, #12
	cmp	r2, #0
	bne	.La9ae
	ldrb	r3, [r0]
	mov	r2, r3
	add	r2, #0x10
	add	r0, #1
.La9ae:
	ldr	r3, =0xfff
	add	r2, #2
	and	r4, r3
	sub	r4, r7, r4
	cmp	r2, #0
	beq	.La9c8
.La9ba:
	ldrb	r3, [r4]
	sub	r2, #1
	strb	r3, [r5]
	add	r4, #1
	add	r5, #1
	cmp	r2, #0
	bne	.La9ba
.La9c8:
	lsr	r1, #1
	cmp	r1, #0
	bne	.La9d8
	ldrb	r1, [r0]
	mov	r3, #0x80
	lsl	r3, #1
.La9d4:
	add	r0, #1
	orr	r1, r3
.La9d8:
	mov	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.La9ee
	cmp	r1, #1
	beq	.La9c8
	ldrb	r3, [r6]
	add	r6, #1
	strb	r3, [r5]
	add	r5, #1
	b	.La9c8
.La9ee:
	ldrb	r3, [r0]
	add	r0, #1
	lsl	r4, r3, #8
	ldrb	r3, [r0]
	orr	r4, r3
	add	r0, #1
	cmp	r4, #0
	bne	.La9a0
	mov	r0, r12
.Laa00:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a97c

.thumb_func_start Func_aa0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	lsl	r1, #16
	sub	sp, #0x38
	asr	r7, r1, #16
	mov	r1, #0
	str	r0, [sp, #0x2c]
	str	r1, [sp, #0x28]
	ldr	r3, =iwram_1e68
	ldr	r2, [r3]
	mov	r4, #1
	str	r2, [sp, #0x20]
	str	r4, [sp, #0x18]
	mov	r5, r3
	add	r5, #0xb8
	ldr	r1, [r5]
	str	r1, [sp, #0x1c]
	cmp	r1, #0
	bne	.Laa62
	ldr	r1, =0x2c4
	mov	r0, #0x34
	bl	Func_48b0
	ldr	r2, =Data_9d9c
	mov	r1, r0
	ldr	r0, =Func_9bb8
	mov	r4, #0x84
	sub	r2, r0
	lsl	r4, #24
	lsr	r2, #2
	ldr	r3, =REG_DMA3SAD
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, [r5]
	mov	r2, #0
	str	r5, [sp, #0x1c]
	str	r2, [sp, #0x18]
.Laa62:
	ldr	r4, [sp, #0x2c]
	mov	r3, #0
	add	r4, #0x27
	ldr	r1, [sp, #0x2c]
	mov	r8, r3
	ldr	r2, [sp, #0x28]
	ldrb	r3, [r4]
	add	r1, #0x25
	mov	r11, r4
	str	r1, [sp]
	cmp	r2, r3
	blt	.Laa7c
	b	.Lada0
.Laa7c:
	mov	r4, r8
	lsl	r3, r4, #2
	ldr	r1, [sp, #0x2c]
	add	r3, #0x28
	ldr	r6, [r1, r3]
	cmp	r6, #0
	bne	.Laa8c
	b	.Lad92
.Laa8c:
	ldr	r3, [r6, #0x10]
	cmp	r3, #0
	bne	.Laa94
	b	.Lad92
.Laa94:
	mov	r4, #2
	ldrsh	r3, [r6, r4]
	ldrh	r2, [r6, #2]
	cmp	r3, #0
	bgt	.Lab66
	ldrb	r3, [r6, #0x14]
	add	r2, r3, #1
	strb	r2, [r6, #0x14]
	ldr	r1, [r6, #0x10]
	lsl	r3, #24
	lsr	r3, #24
	ldrb	r0, [r1, r3]
	add	r3, r2, #1
	strb	r3, [r6, #0x14]
	lsl	r2, #24
	mov	r3, r0
	lsr	r2, #24
	sub	r3, #0xef
	ldrb	r5, [r1, r2]
	cmp	r3, #0x10
	bhi	.Lab5a
	ldr	r2, =.Laac8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3

	.align	2, 0
.Laac8:
	.word	.Lab46
	.word	.Lab32
	.word	.Lab2a
	.word	.Laa94
	.word	.Laa94
	.word	.Laa94
	.word	.Lab20
	.word	.Laa94
	.word	.Laa94
	.word	.Laa94
	.word	.Laa94
	.word	.Laa94
	.word	.Lab5a
	.word	.Laa94
	.word	.Lab1c
	.word	.Lab0c
	.word	.Lab36

.Lab0c:
	mov	r0, r6
	mov	r1, r5
	bl	Func_b9f4
	ldr	r3, [sp, #0x2c]
	add	r3, #0x24
	strb	r5, [r3]
	b	.Laa94
.Lab1c:
	strb	r5, [r6, #0x14]
	b	.Laa94
.Lab20:
	ldrh	r3, [r6, #2]
	lsl	r2, r5, #4
	add	r3, r2
	strh	r3, [r6, #2]
	b	.Laa94
.Lab2a:
	ldrb	r3, [r6, #0x14]
	add	r3, #0xfe
	strb	r3, [r6, #0x14]
	b	.Lab6c
.Lab32:
	strb	r5, [r6, #4]
	b	.Laa94
.Lab36:
	mov	r3, #0xff
	strb	r3, [r6, #0x17]
	ldrh	r3, [r6, #2]
	lsl	r2, r5, #4
	add	r3, r2
	mov	r0, #0xff
	strh	r3, [r6, #2]
	b	.Lab6e
.Lab46:
	mov	r3, #0xff
	mov	r1, r11
	strb	r3, [r6, #0x17]
	mov	r3, #0
	str	r3, [r6, #0x10]
	ldrb	r3, [r1]
	add	r3, #0xff
	mov	r0, #0xff
	strb	r3, [r1]
	b	.Lab6e
.Lab5a:
	ldrh	r3, [r6, #2]
	lsl	r2, r5, #4
	add	r3, r2
	strb	r0, [r6, #0x17]
	strh	r3, [r6, #2]
	b	.Lab6e
.Lab66:
	ldrb	r3, [r6, #0x15]
	sub	r3, r2, r3
	strh	r3, [r6, #2]
.Lab6c:
	ldrb	r0, [r6, #0x17]
.Lab6e:
	ldrb	r3, [r6, #4]
	sub	r3, #1
	cmp	r3, #0x57
	bls	.Lab78
	b	.Lad6c
.Lab78:
	ldr	r2, =.Lab80
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3

	.align	2, 0
.Lab80:
	.word	.Lace0
	.word	.Lace6
	.word	.Lacf2
	.word	.Lacf6
	.word	.Lacfa
	.word	.Lad04
	.word	.Lad6c
	.word	.Lad0e
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lace6
	.word	.Lad6c
	.word	.Lacec
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad6c
	.word	.Lad1a

.Lace0:
	ldr	r2, =.L1307c
	lsl	r3, r7, #16
	b	.Lad24
.Lace6:
	ldr	r2, =.L13094
	lsl	r3, r7, #16
	b	.Lad24
.Lacec:
	ldr	r2, =.L1308c
	lsl	r3, r7, #16
	b	.Lad24
.Lacf2:
	ldr	r2, =.L1309c
	b	.Lacfc
.Lacf6:
	ldr	r2, =.L130cc
	b	.Lad06
.Lacfa:
	ldr	r2, =.L130ac
.Lacfc:
	lsl	r3, r7, #16
	lsr	r3, #28
	ldrb	r2, [r2, r3]
	b	.Lad6e
.Lad04:
	ldr	r2, =.L1310c
.Lad06:
	lsl	r3, r7, #16
	lsr	r3, #26
	ldrb	r2, [r2, r3]
	b	.Lad6e
.Lad0e:
	mov	r4, #0x80
	lsl	r3, r7, #16
	lsl	r4, #21
	ldr	r2, =.L130bc
	add	r3, r4
	b	.Lad24
.Lad1a:
	mov	r1, #0x80
	lsl	r3, r7, #16
	lsl	r1, #21
	ldr	r2, =.L130c4
	add	r3, r1
.Lad24:
	lsr	r3, #29
	ldrb	r2, [r2, r3]
	b	.Lad6e

	.pool_aligned

.Lad6c:
	mov	r2, #0
.Lad6e:
	mov	r3, #7
	and	r3, r2
	add	r0, r3
	mov	r3, r8
	cmp	r3, #0
	bne	.Lad84
	lsr	r3, r2, #7
	cmp	r3, #0
	beq	.Lad84
	mov	r4, #1
	str	r4, [sp, #0x28]
.Lad84:
	ldrb	r3, [r6, #0x16]
	cmp	r3, r0
	beq	.Lad92
	strb	r0, [r6, #0x16]
	ldr	r1, [sp]
	mov	r3, #1
	strb	r3, [r1]
.Lad92:
	mov	r4, r11
	mov	r2, #1
	ldrb	r3, [r4]
	add	r8, r2
	cmp	r8, r3
	bge	.Lada0
	b	.Laa7c
.Lada0:
	ldr	r1, [sp]
	ldrb	r3, [r1]
	cmp	r3, #0
	bne	.Ladaa
	b	.Lb054
.Ladaa:
	ldr	r2, [sp, #0x2c]
	ldr	r3, [sp, #0x2c]
	add	r2, #0x20
	str	r2, [sp, #0x14]
	add	r3, #0x21
	ldrb	r2, [r2]
	str	r3, [sp, #0x10]
	ldrb	r3, [r3]
	mov	r4, r3
	mul	r4, r2
	mov	r0, r4
	str	r4, [sp, #0x24]
	bl	Func_4938
	ldr	r3, =Func_8d4
	ldr	r1, [sp, #0x24]
	mov	r10, r0
	bl	_call_via_r3
	mov	r2, r11
	ldrb	r3, [r2]
	mov	r1, #1
	neg	r1, r1
	sub	r3, #1
	mov	r9, r1
	mov	r8, r3
	cmp	r3, #0
	blt	.Lae6e
	ldr	r4, [sp, #0x2c]
	lsl	r3, #2
	add	r3, r4
	add	r3, #0x28
	mov	r1, #0
	mov	r12, r3
	mov	r14, r1
.Ladf0:
	mov	r2, r12
	mov	r3, #4
	ldr	r6, [r2]
	neg	r3, r3
	add	r12, r3
	cmp	r6, #0
	beq	.Lae62
	ldr	r3, [r6, #8]
	cmp	r3, #0
	beq	.Lae62
	ldrb	r3, [r6, #0x16]
	cmp	r3, #0xff
	beq	.Lae62
	ldrb	r0, [r6, #6]
	cmp	r0, #3
	bhi	.Lae62
	lsl	r0, #8
	mov	r4, r8
	mov	r6, r9
	orr	r0, r4
	cmp	r6, #0
	blt	.Lae48
	add	r5, sp, #0x30
	lsl	r2, r6, #1
	ldrh	r3, [r5, r2]
	cmp	r3, r0
	bls	.Lae50
	mov	r1, r14
	strh	r3, [r5, r1]
	add	r3, r2, r5
	mov	r7, r5
	add	r4, r3, #2
	mov	r1, r2
.Lae32:
	sub	r6, #1
	sub	r1, #2
	cmp	r6, #0
	blt	.Lae54
	mov	r3, r1
	ldrh	r2, [r3, r7]
	cmp	r2, r0
	bls	.Lae56
	sub	r4, #2
	strh	r2, [r4]
	b	.Lae32
.Lae48:
	mov	r2, r9
	add	r5, sp, #0x30
	lsl	r3, r2, #1
	b	.Lae56
.Lae50:
	mov	r3, r2
	b	.Lae56
.Lae54:
	lsl	r3, r6, #1
.Lae56:
	add	r3, #2
	strh	r0, [r5, r3]
	mov	r4, #1
	mov	r3, #2
	add	r14, r3
	add	r9, r4
.Lae62:
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bge	.Ladf0
.Lae6e:
	mov	r3, #1
	mov	r4, #0
	add	r9, r3
	mov	r8, r4
	cmp	r8, r9
	bge	.Laf12
.Lae7a:
	mov	r1, r8
	lsl	r3, r1, #1
	add	r2, sp, #0x38
	add	r3, r2
	sub	r3, #8
	ldrb	r3, [r3]
	ldr	r4, [sp, #0x2c]
	lsl	r3, #2
	add	r3, #0x28
	ldr	r6, [r4, r3]
	ldrb	r3, [r6, #7]
	cmp	r3, #1
	bne	.Laea4
	ldrb	r3, [r6, #0x16]
	ldr	r2, [r6, #8]
	lsl	r3, #2
	ldr	r0, [r3, r2]
	mov	r1, r10
	bl	Func_5340
	b	.Laf0a
.Laea4:
	cmp	r3, #3
	bne	.Laef8
	ldrb	r3, [r6, #5]
	cmp	r3, #0
	beq	.Laed8
	mov	r0, #0x80
	lsl	r0, #3
	bl	Func_4938
	ldrb	r3, [r6, #0x16]
	ldr	r2, [r6, #8]
	mov	r5, r0
	lsl	r3, #2
	ldr	r0, [r3, r2]
	mov	r1, r5
	bl	Func_a97c
	ldrb	r2, [r6, #5]
	mov	r1, r10
	ldr	r3, [sp, #0x1c]
	bl	_call_via_r3
	mov	r0, r5
	bl	Func_2df0
	b	.Laf0a
.Laed8:
	ldrb	r3, [r6, #0x16]
	ldr	r2, [r6, #8]
	lsl	r3, #2
	ldr	r0, [r3, r2]
	mov	r1, r10
	ldr	r3, =Func_d30
	bl	_call_via_r3
	cmp	r0, #0
	beq	.Laf0a
	mov	r1, r10
	mov	r2, #0
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
	b	.Laf0a
.Laef8:
	ldrb	r3, [r6, #0x16]
	ldr	r2, [r6, #8]
	lsl	r3, #2
	ldr	r0, [r3, r2]
	mov	r1, r10
	ldrb	r2, [r6, #5]
	ldr	r3, [sp, #0x1c]
	bl	_call_via_r3
.Laf0a:
	mov	r4, #1
	add	r8, r4
	cmp	r8, r9
	blt	.Lae7a
.Laf12:
	ldr	r3, [sp, #0x2c]
	add	r3, #0x26
	ldrb	r2, [r3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Laff0
	ldr	r0, [sp, #0x24]
	bl	Func_4938
	str	r0, [sp, #0xc]
	ldr	r3, [sp, #0x20]
	ldr	r1, [sp, #0x14]
	ldrb	r3, [r3, #6]
	ldr	r2, [sp, #0x10]
	ldrb	r7, [r1]
	ldrb	r5, [r2]
	ldr	r4, [sp, #0x20]
	str	r3, [sp, #8]
	ldrb	r4, [r4, #7]
	ldr	r3, =Func_8d4
	str	r4, [sp, #4]
	ldr	r1, [sp, #0x24]
	bl	_call_via_r3
	mov	r1, r10
	ldr	r2, [sp, #0xc]
	add	r3, r1, r7
	add	r1, r3, #1
	add	r3, r2, r7
	add	r4, r3, #1
	sub	r5, #1
	mov	r3, #1
	mov	r8, r3
	mov	r9, r5
	cmp	r8, r9
	bcs	.Lafaa
	sub	r2, r7, #1
	mov	r14, r2
.Laf60:
	mov	r6, #1
	cmp	r6, r14
	bcs	.Laf9e
	mov	r3, #1
	mov	r11, r3
	mov	r12, r14
	add	r5, r1, r7
	sub	r0, r1, r7
	sub	r2, r1, #1
.Laf72:
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Laf8e
	ldrb	r3, [r2, #2]
	cmp	r3, #0
	beq	.Laf8e
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.Laf8e
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.Laf8e
	mov	r3, r11
	strb	r3, [r4]
.Laf8e:
	add	r6, #1
	add	r4, #1
	add	r5, #1
	add	r0, #1
	add	r2, #1
	add	r1, #1
	cmp	r6, r12
	bcc	.Laf72
.Laf9e:
	mov	r2, #1
	add	r8, r2
	add	r4, #2
	add	r1, #2
	cmp	r8, r9
	bcc	.Laf60
.Lafaa:
	mov	r3, #0
	ldr	r2, [sp, #0x24]
	mov	r8, r3
	mov	r1, r10
	ldr	r4, [sp, #0xc]
	cmp	r8, r2
	bcs	.Lafea
.Lafb8:
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.Lafd0
	add	r3, sp, #4
	ldrb	r3, [r3]
	strb	r3, [r1]
	b	.Lafdc

	.pool_aligned

.Lafd0:
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lafdc
	add	r2, sp, #8
	ldrb	r2, [r2]
	strb	r2, [r1]
.Lafdc:
	mov	r3, #1
	ldr	r2, [sp, #0x24]
	add	r8, r3
	add	r4, #1
	add	r1, #1
	cmp	r8, r2
	bcc	.Lafb8
.Lafea:
	ldr	r0, [sp, #0xc]
	bl	Func_2df0
.Laff0:
	ldr	r3, [sp, #0x2c]
	ldr	r1, [sp, #0x24]
	ldrb	r0, [r3, #0x1c]
	mov	r2, #0
	bl	Func_3fa4
	ldr	r4, =0x6010000
	mov	r5, r0
	lsl	r3, r5, #5
	ldr	r0, =iwram_1e50
	add	r3, r4
	ldr	r2, [sp, #0x14]
	ldr	r4, [sp, #0x10]
	add	r0, #0xd4
	ldrb	r1, [r2]
	ldrb	r2, [r4]
	ldr	r4, [r0]
	mov	r0, r10
	bl	_call_via_r4
	ldr	r3, .Lb044	@ 0x3ff
	ldr	r1, [sp, #0x2c]
	and	r5, r3
	ldrh	r2, [r1, #8]
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r5
	mov	r2, r1
	strh	r3, [r2, #8]
	ldr	r4, [sp]
	mov	r3, #0
	strb	r3, [r4]
	ldr	r1, [sp, #0x20]
	ldr	r2, [sp, #0x24]
	ldrh	r3, [r1]
	mov	r4, r1
	add	r3, r2
	strh	r3, [r4]
	mov	r0, r10
	bl	Func_2df0
	b	.Lb054

	.align	2, 0
.Lb044:
	.word	0x3ff
	.pool

.Lb054:
	ldr	r1, [sp, #0x18]
	cmp	r1, #0
	bne	.Lb060
	mov	r0, #0x34
	bl	Func_2dd8
.Lb060:
	ldr	r0, [sp, #0x28]
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_aa0c

	.section .rodata

.L1307c:
	.incrom 0x1307c, 0x1308c
.L1308c:
	.incrom 0x1308c, 0x13094
.L13094:
	.incrom 0x13094, 0x1309c
.L1309c:
	.incrom 0x1309c, 0x130ac
.L130ac:
	.incrom 0x130ac, 0x130bc
.L130bc:
	.incrom 0x130bc, 0x130c4
.L130c4:
	.incrom 0x130c4, 0x130cc
.L130cc:
	.incrom 0x130cc, 0x1310c
.L1310c:
	.incrom 0x1310c, 0x1314c
