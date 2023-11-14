	.include "macros.inc"

.thumb_func_start Func_78ee8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x20
	ldr	r1, =.L7b690
	mov	r10, sp
	mov	r8, r1
	mov	r6, #0
	mov	r9, r10
.L78efe:
	mov	r0, r6
	bl	Func_77394
	mov	r7, r0
	ldr	r0, =0x66
	mov	r1, r9
	add	r0, r6, r0
	bl	_Func_1964c
	mov	r2, r9
	ldrh	r3, [r2]
	strb	r3, [r7]
	ldrh	r3, [r2]
	mov	r5, #0
	cmp	r3, #0
	beq	.L78f38
	mov	r1, r10
	mov	r2, r7
	mov	r0, #0
.L78f24:
	add	r5, #1
	add	r0, #2
	cmp	r5, #0xd
	bgt	.L78f38
	ldrh	r3, [r0, r1]
	add	r2, #1
	strb	r3, [r2]
	ldrh	r3, [r0, r1]
	cmp	r3, #0
	bne	.L78f24
.L78f38:
	mov	r3, #0
	add	r6, #1
	strb	r3, [r7, #0xe]
	cmp	r6, #7
	ble	.L78efe
	mov	r3, r8
	mov	r1, #1
	ldr	r0, [r3]
	neg	r1, r1
	cmp	r0, r1
	beq	.L78ff4
.L78f4e:
	bl	Func_77394
	mov	r7, r0
	cmp	r7, #0
	beq	.L78fe2
	mov	r3, r8
	mov	r1, #0x94
	ldr	r2, [r3]
	lsl	r1, #1
	add	r3, r7, r1
	strb	r2, [r3]
	ldrb	r0, [r3]
	bl	Func_78ed8
	mov	r3, r7
	ldr	r2, .L78f8c	@ 0
	mov	r10, r0
	mov	r5, #0xe
	add	r3, #0xf4
.L78f74:
	sub	r5, #1
	strh	r2, [r3]
	sub	r3, #2
	cmp	r5, #0
	bge	.L78f74
	ldr	r2, =0x1ff
	mov	r6, r10
	mov	r5, #0
	add	r6, #0x98
	mov	r9, r2
	b	.L78f9c

	.align	2, 0
.L78f8c:
	.word	0
	.pool

.L78f9c:
	mov	r3, r8
	ldr	r0, [r3]
	ldrh	r3, [r6]
	mov	r1, r9
	and	r1, r3
	bl	Func_78588
	mov	r2, r8
	mov	r1, r0
	add	r5, #1
	ldr	r0, [r2]
	add	r6, #2
	bl	Func_78708
	cmp	r5, #0xc
	bls	.L78f9c
	mov	r3, r8
	ldr	r0, [r3]
	bl	Func_79ae8
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r7, #0x16]
	strh	r3, [r7, #0x14]
	mov	r3, r10
	mov	r1, r8
	add	r3, #0x96
	ldr	r0, [r1]
	ldrb	r1, [r3]
	bl	Func_792fc
	mov	r2, r8
	ldr	r0, [r2]
	bl	Func_77428
.L78fe2:
	mov	r3, #4
	add	r8, r3
	mov	r1, r8
	ldr	r3, [r1]
	mov	r2, #1
	neg	r2, r2
	mov	r0, r3
	cmp	r3, r2
	bne	.L78f4e
.L78ff4:
	add	sp, #0x20
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_78ee8

.thumb_func_start Func_79004
	bx	lr
.func_end Func_79004

	.section .rodata

.L7b690:
	.incrom 0x7b690, 0x7b6a8
