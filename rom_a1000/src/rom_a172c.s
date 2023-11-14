	.include "macros.inc"

.thumb_func_start Func_a172c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r2
	mov	r7, r3
	bl	Func_4080
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.La1762
	ldr	r2, =.Laea4c
	mov	r1, #0x80
	bl	Func_3fa4
	mov	r1, #0x80
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_1eadc
	mov	r6, r0
.La1762:
	mov	r0, r6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a172c

.thumb_func_start Func_a1778
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r1
	mov	r7, r2
	bl	Func_4080
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.La17ae
	ldr	r2, =.Laea4c
	mov	r1, #0x80
	bl	Func_3fa4
	mov	r1, #0x80
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_1eadc
	mov	r6, r0
.La17ae:
	mov	r0, r6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_a1778

.thumb_func_start Func_a17c4
	push	{lr}
	cmp	r0, #0
	beq	.La17f6
	mov	r3, #1
	strb	r3, [r0, #5]
	ldr	r2, =0x1ff
	ldrh	r3, [r0, #6]
	ldrh	r1, [r0, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #0x16]
	ldrh	r3, [r0, #8]
	ldrb	r2, [r0, #0x17]
	strb	r3, [r0, #0x14]
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	strb	r3, [r0, #0x17]
	ldrb	r2, [r0, #0x15]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	strb	r3, [r0, #0x15]
.La17f6:
	pop	{r0}
	bx	r0
.func_end Func_a17c4

.thumb_func_start Func_a1804
	push	{lr}
	mov	r0, #0
	mov	r2, #0
	bl	_Func_1ed40
	pop	{r0}
	bx	r0
.func_end Func_a1804

	.section .rodata

.Laea4c:
	.incrom 0xaea4c, 0xaeb4c
