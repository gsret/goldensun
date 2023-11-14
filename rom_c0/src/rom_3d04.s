	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_3d04
	push	{lr}
	ldr	r2, =iwram_1d00
	mov	r3, #0
	mov	r1, #0x80
	strb	r3, [r2]
	lsl	r1, #3
	ldr	r3, =Func_8d4
	ldr	r0, =iwram_1400
	bl	_call_via_r3
	pop	{r0}
	bx	r0
.func_end Func_3d04

.thumb_func_start Func_3d28
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1d00
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	ldrb	r3, [r3]
	mov	r8, r1
	mov	r9, r3
	mov	r1, #2
	ldrsh	r3, [r0, r1]
	mov	r2, r9
	ldrh	r6, [r0, #4]
	mov	r10, r3
	mov	r0, #0
	cmp	r2, #0x1f
	bhi	.L3dd2
	mov	r3, r9
	lsl	r2, r3, #3
	ldr	r3, =iwram_1d40
	add	r7, r2, r3
	cmp	r8, r10
	beq	.L3d62
	mov	r1, r8
	neg	r3, r1
	cmp	r3, r10
	bne	.L3d8a
.L3d62:
	cmp	r6, #0
	bne	.L3d8a
	mov	r0, #0x80
	ldr	r3, =Func_af0
	mov	r1, r10
	lsl	r0, #9
	bl	_call_via_r3
	mov	r1, r8
	neg	r3, r1
	mov	r2, r0
	cmp	r3, r10
	bne	.L3d7e
	neg	r2, r0
.L3d7e:
	lsl	r3, r2, #16
	lsr	r3, #16
	str	r3, [r7]
	lsl	r3, r0, #16
	str	r3, [r7, #4]
	b	.L3dc8
.L3d8a:
	mov	r0, r6
	bl	Func_2322
	mov	r5, r0
	mov	r0, r6
	bl	Func_231c
	mov	r1, r8
	mov	r6, r0
	bl	Func_af0_from_thumb
	mov	r1, r8
	strh	r0, [r7]
	mov	r0, r5
	bl	Func_af0_from_thumb
	add	r7, #2
	neg	r5, r5
	strh	r0, [r7]
	mov	r1, r10
	mov	r0, r5
	bl	Func_af0_from_thumb
	add	r7, #2
	strh	r0, [r7]
	mov	r1, r10
	mov	r0, r6
	bl	Func_af0_from_thumb
	add	r7, #2
	strh	r0, [r7]
.L3dc8:
	ldr	r2, =iwram_1d00
	mov	r3, r9
	add	r3, #1
	strb	r3, [r2]
	mov	r0, r9
.L3dd2:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_3d28

.thumb_func_start Func_3dec
	push	{lr}
	cmp	r1, #0xff
	ble	.L3df4
	mov	r1, #0xff
.L3df4:
	cmp	r1, #0
	bge	.L3dfa
	mov	r1, #0
.L3dfa:
	ldr	r2, =iwram_1400
	lsl	r3, r1, #2
	add	r3, r2
	ldr	r2, [r3]
	str	r0, [r3]
	str	r2, [r0]
	pop	{r0}
	bx	r0
.func_end Func_3dec

.thumb_func_start Func_3e10
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r0
	ldr	r5, =0xe0
	mov	r0, r5
	bl	Func_4938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_1dc8
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	bl	_call_via_r6
	mov	r0, r6
	bl	Func_2df0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_3e10
