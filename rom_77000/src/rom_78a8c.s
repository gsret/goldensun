	.include "macros.inc"

.thumb_func_start Func_78a8c
	push	{lr}
	bl	Func_78414
	ldrh	r0, [r0, #0x28]
	bl	Func_78b9c
	ldrb	r0, [r0]
	pop	{r1}
	bx	r1
.func_end Func_78a8c

.thumb_func_start Func_78aa0
	push	{lr}
	mov	r2, r0
	ldr	r4, =ewram_380
	mov	r0, #0
	cmp	r2, #0x7f
	bgt	.L78ac6
	ldrb	r3, [r4, r2]
	add	r3, r1
	cmp	r3, #0
	bge	.L78ab8
	mov	r3, #0
	b	.L78ac4
.L78ab8:
	cmp	r3, #0x63
	ble	.L78ac2
	mov	r3, #0x63
	mov	r0, #0x63
	b	.L78ac4
.L78ac2:
	mov	r0, r3
.L78ac4:
	strb	r3, [r4, r2]
.L78ac6:
	pop	{r1}
	bx	r1
.func_end Func_78aa0

.thumb_func_start Func_78ad0
	push	{lr}
	ldr	r3, =0x1ff
	ldr	r2, =.L7b490
	and	r3, r0
	ldrb	r0, [r2, r3]
	mov	r4, #0
	cmp	r0, #0
	beq	.L78ae8
	sub	r0, #1
	bl	Func_78aa0
	mov	r4, r0
.L78ae8:
	mov	r0, r4
	pop	{r1}
	bx	r1
.func_end Func_78ad0

.thumb_func_start Func_78af8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r1
	sub	sp, #4
	bl	Func_77394
	ldr	r3, =0x1ff
	mov	r8, r0
	mov	r1, #0
	and	r6, r3
	mov	r7, #0
	mov	r5, #0xd8
	mov	r10, r3
.L78b16:
	mov	r2, r8
	ldrh	r3, [r5, r2]
	mov	r2, r10
	and	r3, r2
	cmp	r3, r6
	bne	.L78b42
	mov	r0, r6
	str	r1, [sp]
	bl	Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #0x10
	and	r3, r2
	ldr	r1, [sp]
	cmp	r3, #0
	beq	.L78b40
	mov	r2, r8
	ldrh	r3, [r5, r2]
	lsr	r3, #11
	add	r1, r3, #1
	b	.L78b4a
.L78b40:
	add	r1, #1
.L78b42:
	add	r7, #1
	add	r5, #2
	cmp	r7, #0xe
	ble	.L78b16
.L78b4a:
	mov	r0, r1
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_78af8

.thumb_func_start Func_78b60
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	mov	r5, sp
	mov	r8, r0
	mov	r0, r5
	mov	r7, #0
	bl	Func_796c4
	cmp	r7, r0
	bge	.L78b8e
	mov	r6, r5
	mov	r5, r0
.L78b7c:
	ldrh	r0, [r6]
	mov	r1, r8
	bl	Func_78af8
	sub	r5, #1
	add	r6, #2
	add	r7, r0
	cmp	r5, #0
	bne	.L78b7c
.L78b8e:
	mov	r0, r7
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_78b60

	.section .rodata

.L7b490:
	.incrom 0x7b490, 0x7b690
