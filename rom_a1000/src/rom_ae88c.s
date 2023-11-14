	.include "macros.inc"

.thumb_func_start Func_ae88c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f2c
	ldr	r5, [r3]
	bl	Func_4080
	ldr	r2, =0x392
	mov	r6, #1
	add	r3, r5, r2
	neg	r6, r6
	strh	r0, [r3]
	cmp	r0, r6
	beq	.Lae8ac
	ldr	r2, =.Laed4c
	mov	r1, #0x80
	bl	Func_3fa4
.Lae8ac:
	bl	Func_4080
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	strh	r0, [r3]
	cmp	r0, r6
	beq	.Lae8c4
	ldr	r2, =.Laedcc
	mov	r1, #0x80
	bl	Func_3fa4
.Lae8c4:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_ae88c

.thumb_func_start Func_ae8dc
	push	{r5, lr}
	ldr	r3, =iwram_1f2c
	ldr	r2, =0x392
	ldr	r5, [r3]
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_3f3c
	mov	r3, #0xe5
	lsl	r3, #2
	add	r5, r3
	ldrh	r0, [r5]
	bl	Func_3f3c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_ae8dc

.thumb_func_start Func_ae908
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r1, #0xc1
	mov	r8, r0
	lsl	r1, #3
	mov	r0, #0x11
	sub	sp, #0xc
	bl	Func_48f4
	mov	r1, #1
	add	r2, sp, #8
	add	r3, sp, #4
	str	r1, [sp]
	mov	r5, r0
	mov	r1, #0
	mov	r0, r8
	str	r6, [sp, #8]
	bl	_Func_1a3d0
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, r5
	mov	r0, r6
	bl	Func_40d0
	mov	r5, r0
	mov	r0, #0x11
	bl	Func_2dd8
	mov	r0, r5
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_ae908

.thumb_func_start Func_ae958
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r1
	mov	r7, r2
	mov	r6, r3
	bl	Func_4080
	mov	r5, r0
	cmp	r5, #0x60
	beq	.Lae98c
	mov	r1, r5
	mov	r0, r6
	bl	Func_ae908
	mov	r1, #0x80
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_1eadc
.Lae98c:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ae958

.thumb_func_start Func_ae99c
	push	{r5, r6, lr}
	mov	r5, r3
	ldr	r3, =iwram_1f2c
	sub	sp, #4
	mov	r4, r0
	mov	r6, r1
	ldr	r3, [r3]
	cmp	r5, #0
	bne	.Lae9b2
	ldr	r1, =0x392
	b	.Lae9b6
.Lae9b2:
	mov	r1, #0xe5
	lsl	r1, #2
.Lae9b6:
	add	r3, r1
	ldrh	r0, [r3]
	mov	r1, #0x80
	str	r2, [sp]
	lsl	r1, #23
	mov	r2, r4
	mov	r3, r6
	bl	_Func_1eadc
	cmp	r0, #0
	bne	.Lae9d2
	mov	r0, #1
	neg	r0, r0
	b	.Lae9de
.Lae9d2:
	mov	r3, #0
	strb	r3, [r0, #4]
	strh	r3, [r0, #0xc]
	mov	r3, #1
	strb	r3, [r0, #5]
	mov	r0, #1
.Lae9de:
	add	sp, #4
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_ae99c

.thumb_func_start Func_ae9f0
	push	{r5, r6, lr}
	mov	r5, r3
	ldr	r3, =iwram_1f2c
	sub	sp, #4
	mov	r4, r0
	mov	r6, r1
	ldr	r3, [r3]
	cmp	r5, #0
	bne	.Laea0c
	ldr	r1, =0x392
	add	r3, r1
	ldrh	r0, [r3]
	sub	r2, #3
	b	.Laea16
.Laea0c:
	mov	r1, #0xe5
	lsl	r1, #2
	add	r3, r1
	ldrh	r0, [r3]
	sub	r2, #4
.Laea16:
	mov	r1, #0x80
	str	r2, [sp]
	lsl	r1, #23
	mov	r2, r4
	mov	r3, r6
	bl	_Func_1eadc
	cmp	r0, #0
	bne	.Laea2e
	mov	r0, #1
	neg	r0, r0
	b	.Laea3a
.Laea2e:
	mov	r3, #0
	strb	r3, [r0, #4]
	strh	r3, [r0, #0xc]
	mov	r3, #1
	strb	r3, [r0, #5]
	mov	r0, #1
.Laea3a:
	add	sp, #4
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_ae9f0

	.section .rodata

.Laed4c:
	.incrom 0xaed4c, 0xaedcc
.Laedcc:
	.incrom 0xaedcc, 0xaf08c
