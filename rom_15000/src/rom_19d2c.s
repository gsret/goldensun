	.include "macros.inc"

.thumb_func_start Func_19d2c
	push	{r5, lr}
	mov	r1, #1
	neg	r1, r1
	mov	r2, #0
	cmp	r0, #0x13
	bhi	.L19d66
	ldr	r4, =Data_367e4
	mov	r5, #0
	ldrsh	r3, [r4, r5]
	cmp	r3, r1
	beq	.L19d98
	cmp	r3, r0
	bne	.L19d4c
	mov	r2, #2
	ldrsh	r1, [r4, r2]
	b	.L19d98
.L19d4c:
	add	r2, #2
	lsl	r3, r2, #1
	ldrsh	r3, [r4, r3]
	mov	r5, #1
	neg	r5, r5
	cmp	r3, r5
	beq	.L19d98
	cmp	r3, r0
	bne	.L19d4c
	add	r2, #1
	lsl	r3, r2, #1
	ldrsh	r1, [r4, r3]
	b	.L19d98
.L19d66:
	ldr	r4, =Data_3680c
	mov	r5, #0
	ldrsh	r3, [r4, r5]
	mov	r5, #1
	neg	r5, r5
	cmp	r3, r5
	beq	.L19d98
	cmp	r3, r0
	bne	.L19d7e
	mov	r2, #2
	ldrsh	r1, [r4, r2]
	b	.L19d96
.L19d7e:
	add	r2, #2
	lsl	r3, r2, #1
	ldrsh	r3, [r4, r3]
	mov	r5, #1
	neg	r5, r5
	cmp	r3, r5
	beq	.L19d98
	cmp	r3, r0
	bne	.L19d7e
	add	r2, #1
	lsl	r3, r2, #1
	ldrsh	r1, [r4, r3]
.L19d96:
	add	r1, #0x80
.L19d98:
	mov	r0, r1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_19d2c

.thumb_func_start Func_19da8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r3
	ldr	r3, =iwram_1e8c
	mov	r6, r2
	sub	sp, #8
	mov	r10, r0
	mov	r11, r1
	ldr	r5, [r3]
	bl	Func_19d2c
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L19dd4
	mov	r0, #0
	b	.L19e2c
.L19dd4:
	mov	r3, #4
	ldr	r2, =0xea4
	neg	r3, r3
	mov	r9, r3
	add	r3, r5, r2
	ldrb	r3, [r3]
	mov	r8, r9
	cmp	r3, #0
	beq	.L19dfe
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r6
	mov	r3, #5
	mov	r1, r7
	mov	r2, #6
	bl	Func_162d4
	mov	r3, #0
	mov	r5, r0
	mov	r8, r3
	b	.L19e10
.L19dfe:
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r7
	mov	r2, #5
	mov	r3, #5
	bl	Func_162d4
	mov	r5, r0
.L19e10:
	cmp	r5, #0
	beq	.L19e2a
	mov	r3, r8
	mov	r2, #1
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	neg	r2, r2
	mov	r0, r10
	mov	r1, r11
	mov	r3, r5
	bl	Func_1ec6c
.L19e2a:
	mov	r0, r5
.L19e2c:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_19da8

.thumb_func_start Func_19e48
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e8c
	mov	r2, #0xa0
	ldr	r6, [r3]
	lsl	r2, #3
	add	r5, r6, r2
	bl	Func_19d2c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L19ea4
	ldr	r2, =0x12ee
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, r0
	bne	.L19e78
	mov	r3, #1
	b	.L19e84
.L19e6e:
	mov	r0, r5
	mov	r1, #2
	bl	Func_16418
	b	.L19ea4
.L19e78:
	ldr	r2, =0x12ec
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, r0
	bne	.L19ea4
	mov	r3, #0
.L19e84:
	ldr	r2, =0x12f0
	lsl	r3, #1
	add	r3, r2
	ldrh	r0, [r6, r3]
	mov	r1, #0
.L19e8e:
	ldr	r2, [r5]
	ldrb	r3, [r2, #4]
	cmp	r3, #2
	bne	.L19e9c
	ldrb	r3, [r2, #0xe]
	cmp	r3, r0
	beq	.L19e6e
.L19e9c:
	add	r1, #1
	add	r5, #0x24
	cmp	r1, #8
	bne	.L19e8e
.L19ea4:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_19e48
