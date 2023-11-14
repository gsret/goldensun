	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_56cc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x88
	lsl	r1, #5
	mov	r0, #0x33
	sub	sp, #0x18
	bl	Func_48f4
	mov	r3, #0
	mov	r11, r0
	add	r0, sp, #4
	str	r3, [r0]
	mov	r1, r11
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000440
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =Data_864
	mov	r0, #2
	bl	Func_69c8
	mov	r7, #0
	b	.L570c
.L5704:
	mov	r0, #1
	bl	Func_30f8
	add	r7, #1
.L570c:
	cmp	r7, #7
	bhi	.L571c
	bl	Func_6910
	lsl	r0, #16
	cmp	r0, #0
	bne	.L5704
	b	.L572c
.L571c:
	mov	r0, #1
	b	.L57fc

	.pool_aligned

.L572c:
	mov	r2, r11
	mov	r3, #8
	add	r2, #0x40
	add	r3, sp
	mov	r6, r11
	str	r2, [sp]
	mov	r8, r3
	mov	r2, #0x20
	mov	r3, #0x10
	add	r2, r6
	add	r3, r6
	mov	r7, #0
	mov	r9, r2
	mov	r10, r3
.L5748:
	mov	r3, #0
	strb	r3, [r6]
	mov	r2, r10
	mov	r3, #0x10
	strb	r3, [r2]
	ldr	r3, =0
	mov	r2, r9
	strh	r3, [r2]
	mov	r0, r7
	bl	Func_58ac
	ldr	r3, =REG_DMA3SAD
	mov	r5, r0
	add	r1, sp, #8
	ldr	r0, [sp]
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L576c:
	ldr	r2, =REG_DMA3SAD
	ldr	r3, [r2, #8]
	mov	r2, #0x80
	lsl	r2, #24
	and	r3, r2
	cmp	r3, #0
	bne	.L576c
	mov	r0, r8
	ldr	r1, =.L79b0
	mov	r2, #7
	bl	Func_5c08
	b	.L5798

	.pool_aligned

.L5798:
	cmp	r0, #0
	bne	.L57ea
	mov	r2, r8
	ldrh	r3, [r2, #0xa]
	mov	r2, r9
	strh	r3, [r2]
	mov	r3, r8
	ldrb	r2, [r3, #7]
	mov	r1, r2
	cmp	r1, #0xf
	bhi	.L57ea
	cmp	r5, #0
	bne	.L57ea
	mov	r3, #1
	strb	r3, [r6]
	mov	r3, r10
	strb	r2, [r3]
	cmp	r5, r7
	bcs	.L57ea
	mov	r12, r1
	mov	r1, r11
	mov	r0, r1
	mov	r4, #0
	add	r0, #0x20
.L57c8:
	ldrb	r3, [r1, #0x10]
	cmp	r3, r12
	bne	.L57e0
	mov	r3, r8
	ldrh	r3, [r3, #0xa]
	ldrh	r2, [r0]
	mov	r14, r3
	cmp	r2, r14
	bcs	.L57de
	strb	r4, [r1]
	b	.L57e0
.L57de:
	strb	r4, [r6]
.L57e0:
	add	r5, #1
	add	r1, #1
	add	r0, #2
	cmp	r5, r7
	bcc	.L57c8
.L57ea:
	mov	r2, #2
	mov	r3, #1
	add	r7, #1
	add	r6, #1
	add	r9, r2
	add	r10, r3
	cmp	r7, #0xf
	bls	.L5748
	mov	r0, #0
.L57fc:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_56cc

.thumb_func_start Func_5810
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f1c
	sub	sp, #0x40
	ldr	r2, [r3]
	mov	r6, #0
	mov	r5, #0
	mov	r1, sp
.L581e:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r3, #0
	bne	.L582a
	stmia	r1!, {r5}
	add	r6, #1
.L582a:
	add	r5, #1
	cmp	r5, #0xf
	bls	.L581e
	mov	r5, #0x10
	cmp	r6, #0
	beq	.L585a
	cmp	r6, #1
	bne	.L5848
	ldr	r5, [sp]
	bl	Func_5b24
	cmp	r0, #0x10
	bne	.L585a
	mov	r5, #0x10
	b	.L585a
.L5848:
	bl	Func_4458
	mov	r1, r6
	bl	Func_b50_from_thumb
	mov	r5, r0
	mov	r2, sp
	lsl	r3, r5, #2
	ldr	r5, [r2, r3]
.L585a:
	mov	r0, r5
	add	sp, #0x40
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_5810

.thumb_func_start Func_5868
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f1c
	ldr	r3, [r3]
	ldr	r2, =ewram_4c04
	lsl	r0, #16
	mov	r6, r3
	lsr	r5, r0, #16
	add	r6, #0x40
	ldr	r3, [r2]
	mov	r0, r5
	mov	r1, r6
	bl	_call_via_r3
	lsl	r0, #16
	cmp	r0, #0
	beq	.L588c
	mov	r0, #1
	b	.L589c
.L588c:
	mov	r0, r5
	mov	r1, r6
	bl	Func_6c68
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.L589c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_5868

.thumb_func_start Func_58ac
	push	{r5, lr}
	ldr	r3, =iwram_1f1c
	ldr	r5, [r3]
	lsl	r0, #16
	add	r5, #0x40
	mov	r3, #0x80
	mov	r2, r5
	lsr	r0, #16
	lsl	r3, #5
	mov	r1, #0
	sub	sp, #0x10
	bl	Func_6ba8
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, sp
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L58d8:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L58d8
	bl	Func_5ae0
	mov	r3, sp
	ldrh	r3, [r3, #8]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	add	sp, #0x10
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_58ac

.thumb_func_start Func_5904
	push	{lr}
	ldr	r3, =ewram_4c14
	lsl	r0, #16
	ldr	r3, [r3]
	lsr	r0, #16
	bl	_call_via_r3
	lsl	r0, #16
	lsr	r0, #16
	pop	{r1}
	bx	r1
.func_end Func_5904

.thumb_func_start Func_5920
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1f1c
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r10, r3
	mov	r5, r1
	mov	r1, #0x40
	mov	r8, r0
	mov	r3, #0
	mov	r0, sp
	add	r1, r10
	str	r3, [r0]
	mov	r9, r1
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000400
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5950:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5950
	mov	r0, r8
	bl	Func_5b24
	mov	r7, r0
	mov	r0, r8
	bl	Func_5810
	mov	r6, r0
	mov	r0, #1
	cmp	r6, #0xf
	bhi	.L5a46
	mov	r1, r10
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	add	r1, #0x50
	ldr	r2, =0x840003fc
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5982:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5982
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L79b8
	add	r1, sp, #4
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L599c:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L599c
	add	r5, sp, #4
	mov	r2, r8
	strb	r2, [r5, #7]
	bl	Func_5ae0
	strh	r0, [r5, #8]
	mov	r0, r8
	bl	Func_5c2c
	add	r0, #1
	strh	r0, [r5, #0xa]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r9
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L59cc:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L59cc
	mov	r0, r6
	bl	Func_5868
	cmp	r0, #0
	bne	.L5a26
	cmp	r7, #0xf
	bhi	.L59ec
	mov	r0, r7
	bl	Func_5b64
	cmp	r0, #0
	bne	.L5a26
.L59ec:
	ldrh	r3, [r5, #0xa]
	ldr	r1, =0xfde8
	cmp	r3, r1
	bls	.L5a2c
	mov	r3, #1
	strh	r3, [r5, #0xa]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	mov	r1, r9
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5a0a:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5a0a
	mov	r0, r7
	bl	Func_5868
	cmp	r0, #0
	bne	.L5a26
	mov	r0, r6
	bl	Func_5b64
	cmp	r0, #0
	beq	.L5a2a
.L5a26:
	mov	r0, #1
	b	.L5a46
.L5a2a:
	mov	r6, r7
.L5a2c:
	mov	r2, r10
	mov	r3, #1
	strb	r3, [r2, r6]
	mov	r3, r6
	add	r3, #0x10
	mov	r1, r8
	strb	r1, [r2, r3]
	lsl	r3, r6, #1
	ldrh	r2, [r5, #0xa]
	add	r3, #0x20
	mov	r1, r10
	strh	r2, [r1, r3]
	mov	r0, #0
.L5a46:
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_5920

.thumb_func_start Func_5a78
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f1c
	mov	r6, r1
	ldr	r5, [r3]
	bl	Func_5b24
	cmp	r0, #0xf
	bls	.L5a8c
	mov	r0, #1
	b	.L5aae
.L5a8c:
	bl	Func_58ac
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	add	r0, #0x50
	mov	r1, r6
	ldr	r2, =0x840003fc
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5aa4:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5aa4
	mov	r0, #0
.L5aae:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_5a78

.thumb_func_start Func_5ac0
	push	{lr}
	bl	Func_5b24
	cmp	r0, #0xf
	bls	.L5ace
	mov	r0, #1
	b	.L5ada
.L5ace:
	bl	Func_5b64
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.L5ada:
	pop	{r1}
	bx	r1
.func_end Func_5ac0

.thumb_func_start Func_5ae0
	push	{lr}
	ldr	r3, =iwram_1f1c
	ldr	r3, [r3]
	ldr	r4, =0xfe7
	mov	r2, r3
	mov	r0, #0
	mov	r1, #0
	add	r2, #0x50
.L5af0:
	ldrb	r3, [r2]
	add	r0, r3
	ldrb	r3, [r2, #1]
	add	r0, r3
	ldrb	r3, [r2, #2]
	add	r0, r3
	ldrb	r3, [r2, #3]
	add	r0, r3
	ldrb	r3, [r2, #4]
	add	r0, r3
	ldrb	r3, [r2, #5]
	add	r0, r3
	ldrb	r3, [r2, #6]
	add	r0, r3
	ldrb	r3, [r2, #7]
	add	r1, #8
	add	r0, r3
	add	r2, #8
	cmp	r1, r4
	bls	.L5af0
	pop	{r1}
	bx	r1
.func_end Func_5ae0

.thumb_func_start Func_5b24
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f1c
	ldr	r3, [r3]
	mov	r1, r3
	mov	r6, r0
	mov	r5, #0x10
	mov	r0, #0
	mov	r4, #0
	add	r1, #0x20
	mov	r2, r3
.L5b38:
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L5b4e
	ldrb	r3, [r2, #0x10]
	cmp	r6, r3
	bne	.L5b4e
	ldrh	r3, [r1]
	cmp	r0, r3
	bcs	.L5b4e
	mov	r0, r3
	mov	r5, r4
.L5b4e:
	add	r4, #1
	add	r1, #2
	add	r2, #1
	cmp	r4, #0xf
	bls	.L5b38
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_5b24

.thumb_func_start Func_5b64
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f1c
	sub	sp, #0x14
	mov	r5, r0
	ldr	r6, [r3]
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	add	r1, sp, #4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5b84:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5b84
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L79b8
	add	r1, sp, #4
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r3, #24
.L5b9e:
	ldr	r2, [r1, #8]
	and	r2, r3
	cmp	r2, #0
	bne	.L5b9e
	add	r0, sp, #4
	mov	r3, #0x10
	mov	r1, r6
	strb	r3, [r0, #7]
	strh	r2, [r0, #0xa]
	ldr	r3, =REG_DMA3SAD
	add	r1, #0x40
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5bc0:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5bc0
	mov	r0, r5
	bl	Func_5868
	cmp	r0, #0
	beq	.L5bd6
	mov	r0, #1
	b	.L5be8
.L5bd6:
	mov	r2, r5
	mov	r3, #0x10
	add	r2, #0x10
	strb	r0, [r6, r5]
	strb	r3, [r6, r2]
	lsl	r3, r5, #1
	add	r3, #0x20
	strh	r0, [r6, r3]
	mov	r0, #0
.L5be8:
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_5b64

.thumb_func_start Func_5c08
	push	{lr}
	mov	r4, r2
	mov	r2, #0
	b	.L5c16
.L5c10:
	sub	r4, #1
	add	r0, #1
	add	r1, #1
.L5c16:
	cmp	r4, #0
	beq	.L5c24
	ldrb	r2, [r0]
	ldrb	r3, [r1]
	sub	r2, r3
	cmp	r2, #0
	beq	.L5c10
.L5c24:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_5c08

.thumb_func_start Func_5c2c
	push	{r5, lr}
	ldr	r3, =iwram_1f1c
	ldr	r3, [r3]
	mov	r1, r3
	mov	r5, r0
	mov	r4, #0
	mov	r0, #0
	add	r1, #0x20
	mov	r2, r3
.L5c3e:
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L5c52
	ldrb	r3, [r2, #0x10]
	cmp	r5, r3
	bne	.L5c52
	ldrh	r3, [r1]
	cmp	r0, r3
	bcs	.L5c52
	mov	r0, r3
.L5c52:
	add	r4, #1
	add	r1, #2
	add	r2, #1
	cmp	r4, #0xf
	bls	.L5c3e
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_5c2c

.thumb_func_start Func_5c68
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f1c
	mov	r2, #0x82
	ldr	r3, [r3]
	lsl	r2, #5
	sub	sp, #4
	add	r5, r3, r2
	mov	r6, #0
	mov	r3, #0
	mov	r8, r3
	mov	r7, sp
	mov	r10, r6
.L5c86:
	mov	r2, r10
	str	r2, [r7]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r7
	mov	r1, r5
	ldr	r2, =0x85000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	bl	Func_5b24
	cmp	r0, #0xf
	bhi	.L5cb2
	lsl	r0, #16
	mov	r3, #0x40
	lsr	r0, #16
	mov	r1, #0
	mov	r2, r5
	bl	Func_6ba8
	mov	r3, #1
	add	r8, r3
.L5cb2:
	add	r0, r6, #3
	bl	Func_5b24
	cmp	r0, #0xf
	bhi	.L5cd0
	lsl	r0, #16
	mov	r2, r5
	mov	r1, #0x88
	lsr	r0, #16
	add	r2, #0x38
	lsl	r1, #1
	mov	r3, #4
	bl	Func_6ba8
	b	.L5cd4
.L5cd0:
	mov	r2, r10
	str	r2, [r5, #0x38]
.L5cd4:
	add	r6, #1
	add	r5, #0x40
	cmp	r6, #2
	bls	.L5c86
	mov	r0, r8
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_5c68

	.section .rodata

.L79b0:
	.incrom 0x79b0, 0x79b8
.L79b8:
	.incrom 0x79b8, 0x7a0c
