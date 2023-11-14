	.include "macros.inc"

.thumb_func_start Func_be70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldrb	r3, [r0, #0x1c]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	ldr	r2, =0x6010000
	add	r5, r3, r2
	mov	r3, r0
	add	r3, #0x20
	add	r0, #0x21
	ldrb	r2, [r3]
	ldrb	r3, [r0]
	mul	r3, r2
	cmp	r3, #0
	bge	.Lbe96
	add	r3, #0x3f
.Lbe96:
	asr	r6, r3, #6
	mov	r4, #0
	cmp	r4, r6
	bcs	.Lbee6
	ldr	r3, =.L1314c
	mov	r0, #0xff
	lsl	r0, #8
	mov	r2, #0x3f
	mov	r8, r3
	mov	r14, r0
	mov	r12, r2
	mov	r7, #0x3e
.Lbeae:
	mov	r3, r1
	sub	r3, #0x40
	cmp	r3, #0x3f
	bhi	.Lbedc
	lsl	r3, r4, #4
	mov	r0, r12
	add	r3, r1, r3
	and	r3, r0
	mov	r0, r8
	ldrb	r2, [r0, r3]
	mov	r3, r2
	and	r3, r7
	add	r0, r5, r3
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lbed4
	ldrb	r3, [r0]
	b	.Lbeda
.Lbed4:
	ldrh	r2, [r0]
	mov	r3, r14
	and	r3, r2
.Lbeda:
	strh	r3, [r0]
.Lbedc:
	add	r4, #1
	add	r5, #0x40
	add	r1, #1
	cmp	r4, r6
	bcc	.Lbeae
.Lbee6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_be70

.thumb_func_start Func_befc
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, #0
.Lbf02:
	mov	r1, r6
	mov	r0, r5
	bl	Func_be70
	add	r1, r6, #1
	mov	r0, r5
	bl	Func_be70
	add	r1, r6, #2
	mov	r0, r5
	bl	Func_be70
	add	r1, r6, #3
	mov	r0, r5
	bl	Func_be70
	add	r6, #4
	mov	r0, #1
	bl	Func_30f8
	cmp	r6, #0x7f
	bls	.Lbf02
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_befc

.thumb_func_start Func_bf34
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	str	r0, [sp]
	mov	r11, r1
	mov	r7, #0
.Lbf4a:
	mov	r3, r11
	cmp	r3, #0
	ble	.Lbf86
	add	r3, r7, #1
	mov	r9, r3
	add	r3, r7, #2
	mov	r10, r3
	ldr	r5, [sp]
	add	r3, r7, #3
	mov	r8, r3
	mov	r6, r11
.Lbf60:
	ldr	r0, [r5]
	mov	r1, r7
	bl	Func_be70
	ldr	r0, [r5]
	mov	r1, r9
	bl	Func_be70
	ldr	r0, [r5]
	mov	r1, r10
	bl	Func_be70
	sub	r6, #1
	ldmia	r5!, {r0}
	mov	r1, r8
	bl	Func_be70
	cmp	r6, #0
	bne	.Lbf60
.Lbf86:
	mov	r0, #1
	add	r7, #4
	bl	Func_30f8
	cmp	r7, #0x7f
	bls	.Lbf4a
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_bf34

.thumb_func_start Func_bfa4
	push	{r5, lr}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	add	r3, #0xe4
	ldr	r4, =0xffff0000
	mov	r5, r1
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r0, #8]
	and	r1, r4
	sub	r1, r3, r1
	ldr	r3, [r0, #0x10]
	ldr	r0, =0x1fffff
	and	r2, r4
	sub	r2, r3, r2
	add	r3, r1, r0
	ldr	r0, =0x12ffffe
	cmp	r3, r0
	bhi	.Lbfe2
	cmp	r2, #0
	ble	.Lbfe2
	mov	r3, #0xe0
	lsl	r3, #16
	cmp	r2, r3
	bge	.Lbfe2
	asr	r3, r1, #16
	stmia	r5!, {r3}
	asr	r3, r2, #16
	str	r3, [r5]
	mov	r0, #0
	b	.Lbfec
.Lbfe2:
	mov	r3, #0
	stmia	r5!, {r3}
	mov	r0, #1
	str	r3, [r5]
	neg	r0, r0
.Lbfec:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_bfa4

	.section .rodata

.L1314c:
	.incrom 0x1314c, 0x13190
