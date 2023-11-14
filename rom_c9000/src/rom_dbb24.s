	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_dbb24
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	mov	r8, r0
	mov	r9, r1
	ldr	r7, [r3]
	mov	r6, #0
	cmp	r0, #0
	beq	.Ldbb80
	mov	r3, #3
	and	r2, r3
	mov	r1, #0xd
	lsl	r2, #2
	neg	r1, r1
	ldr	r5, =0x77d8
	mov	r10, r2
	mov	r11, r1
.Ldbb50:
	mov	r0, r9
	bl	_Func_bc70
	str	r0, [r5, r7]
	cmp	r0, #0
	beq	.Ldbb78
	mov	r2, r0
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r6
	bl	_Func_ba30
	ldr	r2, [r5, r7]
	ldrb	r3, [r2, #9]
	mov	r1, r11
	and	r3, r1
	mov	r1, r10
	orr	r3, r1
	strb	r3, [r2, #9]
.Ldbb78:
	add	r6, #1
	add	r5, #4
	cmp	r6, r8
	bne	.Ldbb50
.Ldbb80:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dbb24

.thumb_func_start Func_dbb98
	bx	lr
.func_end Func_dbb98

.thumb_func_start Func_dbb9c
	ldr	r3, =iwram_1eec
	ldr	r0, [r3]
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldrh	r2, [r3, #0xa]
	mov	r2, #0xd3
	lsl	r2, #7
	add	r0, r2
	ldr	r1, =REG_BG2X
	ldr	r2, =0xa6600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_dbb9c
