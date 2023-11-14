	.include "macros.inc"

.thumb_func_start Func_b6eb4
	push	{r5, r6, lr}
	mov	r5, r0
	bl	_Func_77394
	mov	r1, #1
	mov	r6, r0
	mov	r0, r5
	bl	_Func_787dc
	mov	r5, #0
	cmp	r0, #0
	blt	.Lb6f1e
	lsl	r3, r0, #1
	add	r3, #0xd8
	ldrh	r3, [r6, r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	Func_b6e7c
	mov	r2, #0x94
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, r0
	ldrb	r0, [r3]
	cmp	r0, #5
	bhi	.Lb6f1e
	ldr	r2, =.Lb6ef0
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lb6ef0:
	.word	.Lb6f08
	.word	.Lb6f0c
	.word	.Lb6f10
	.word	.Lb6f14
	.word	.Lb6f1e
	.word	.Lb6f18
.Lb6f08:
	ldr	r2, =.Lc2a1c
	b	.Lb6f1a
.Lb6f0c:
	ldr	r2, =.Lc2a2a
	b	.Lb6f1a
.Lb6f10:
	ldr	r2, =.Lc2a38
	b	.Lb6f1a
.Lb6f14:
	ldr	r2, =.Lc2a46
	b	.Lb6f1a
.Lb6f18:
	ldr	r2, =.Lc2a54
.Lb6f1a:
	lsl	r3, r1, #1
	ldrh	r5, [r2, r3]
.Lb6f1e:
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b6eb4

	.section .rodata

.Lc2a1c:
	.incrom 0xc2a1c, 0xc2a2a
.Lc2a2a:
	.incrom 0xc2a2a, 0xc2a38
.Lc2a38:
	.incrom 0xc2a38, 0xc2a46
.Lc2a46:
	.incrom 0xc2a46, 0xc2a54
.Lc2a54:
	.incrom 0xc2a54, 0xc2a62
