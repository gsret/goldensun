	.include "macros.inc"

.thumb_func_start Func_79008
	push	{r5, lr}
	mov	r5, r1
	bl	Func_77394
	ldr	r1, =0x129
	mov	r2, r0
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L79048
	mov	r0, #0
	cmp	r5, #0
	ble	.L7904c
	cmp	r5, #0x63
	bgt	.L79048
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r2, r3
	ldrb	r3, [r0]
	cmp	r3, #7
	bhi	.L79048
	mov	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #5
	add	r3, r2
	add	r3, r5
	ldr	r1, =.L7a830
	lsl	r3, #2
	sub	r3, #4
	ldr	r0, [r1, r3]
	b	.L7904c
.L79048:
	mov	r0, #1
	neg	r0, r0
.L7904c:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_79008

.thumb_func_start Func_7905c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r11, r0
	bl	Func_77394
	mov	r10, r0
	mov	r0, #0x2c
	bl	Func_4970
	ldr	r3, =0x129
	add	r3, r10
	ldrb	r3, [r3]
	mov	r9, r0
	str	r3, [r0]
	mov	r0, r10
	ldrb	r1, [r0, #0xf]
	mov	r2, r9
	ldr	r3, =0xffff
	str	r1, [r2, #4]
	mov	r2, #0
	strh	r1, [r6]
	strh	r3, [r6, #2]
	strh	r2, [r6, #4]
	strh	r2, [r6, #6]
	strh	r2, [r6, #8]
	strh	r2, [r6, #0xa]
	strh	r2, [r6, #0xc]
	strh	r2, [r6, #0xe]
	cmp	r1, #0x62
	ble	.L790a6
	b	.L792a4
.L790a6:
	ldrb	r3, [r0, #0xf]
	add	r3, #1
	strb	r3, [r0, #0xf]
	add	r3, r1, #1
	strh	r3, [r6]
	ldrb	r1, [r0, #0xf]
	mov	r0, r11
	bl	Func_79008
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L790ce
	mov	r2, #0x92
	lsl	r2, #1
	add	r2, r10
	ldr	r3, [r2]
	cmp	r3, r0
	bcs	.L790ce
	str	r0, [r2]
.L790ce:
	mov	r0, r11
	bl	Func_78ed8
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r1, r0
	mov	r0, r9
	str	r1, [r0, #8]
	ldrh	r0, [r6]
	cmp	r3, #1
	bne	.L7912c
	mov	r2, r1
	add	r2, #0x50
	ldrh	r3, [r6, #4]
	ldrh	r2, [r2]
	add	r3, r2
	mov	r2, r1
	add	r2, #0x5c
	ldrh	r2, [r2]
	strh	r3, [r6, #4]
	ldrh	r3, [r6, #6]
	add	r3, r2
	mov	r2, r1
	add	r2, #0x68
	ldrh	r2, [r2]
	strh	r3, [r6, #6]
	ldrh	r3, [r6, #8]
	add	r3, r2
	mov	r2, r1
	add	r2, #0x74
	ldrh	r2, [r2]
	strh	r3, [r6, #8]
	ldrh	r3, [r6, #0xa]
	add	r3, r2
	mov	r2, r1
	add	r2, #0x80
	ldrh	r2, [r2]
	strh	r3, [r6, #0xa]
	ldrh	r3, [r6, #0xc]
	add	r3, r2
	strh	r3, [r6, #0xc]
	mov	r3, r1
	add	r3, #0x8c
	ldrb	r2, [r3]
	ldrh	r3, [r6, #0xe]
	add	r3, r2
	strh	r3, [r6, #0xe]
.L7912c:
	lsl	r0, #16
	asr	r0, #16
	mov	r1, #0x14
	bl	Func_af0_from_thumb
	lsl	r0, #16
	asr	r5, r0, #16
	cmp	r5, #0
	bge	.L79140
	mov	r5, #0
.L79140:
	cmp	r5, #4
	ble	.L79146
	mov	r5, #4
.L79146:
	lsl	r0, r5, #1
	mov	r8, r0
	mov	r3, r9
	ldr	r1, [r3, #8]
	mov	r3, r8
	add	r3, #0x52
	ldrsh	r2, [r1, r3]
	sub	r3, #2
	ldrsh	r3, [r1, r3]
	sub	r7, r2, r3
	bl	Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r7
	mov	r1, #0x14
	bl	Func_b60_from_thumb
	ldrh	r3, [r6, #4]
	add	r3, r0
	strh	r3, [r6, #4]
	mov	r3, r9
	ldr	r2, [r3, #8]
	mov	r3, r8
	add	r3, #0x5e
	ldrsh	r1, [r2, r3]
	sub	r3, #2
	ldrsh	r3, [r2, r3]
	sub	r7, r1, r3
	bl	Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r7
	mov	r1, #0x14
	bl	Func_b60_from_thumb
	ldrh	r3, [r6, #6]
	add	r3, r0
	strh	r3, [r6, #6]
	mov	r3, r9
	ldr	r2, [r3, #8]
	mov	r3, r8
	add	r3, #0x6a
	ldrh	r1, [r2, r3]
	sub	r3, #2
	ldrh	r3, [r2, r3]
	sub	r7, r1, r3
	bl	Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r7
	mov	r1, #0x14
	bl	Func_b60_from_thumb
	ldrh	r3, [r6, #8]
	add	r3, r0
	mov	r0, r9
	ldr	r2, [r0, #8]
	strh	r3, [r6, #8]
	mov	r3, r8
	add	r3, #0x76
	ldrh	r1, [r2, r3]
	sub	r3, #2
	ldrh	r3, [r2, r3]
	sub	r7, r1, r3
	bl	Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r7
	mov	r1, #0x14
	bl	Func_b60_from_thumb
	ldrh	r3, [r6, #0xa]
	add	r3, r0
	strh	r3, [r6, #0xa]
	mov	r3, r9
	ldr	r2, [r3, #8]
	mov	r3, r8
	add	r3, #0x82
	ldrh	r1, [r2, r3]
	sub	r3, #2
	ldrh	r3, [r2, r3]
	sub	r7, r1, r3
	bl	Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r7
	mov	r1, #0x14
	bl	Func_b60_from_thumb
	ldrh	r3, [r6, #0xc]
	add	r3, r0
	mov	r0, r9
	ldr	r2, [r0, #8]
	strh	r3, [r6, #0xc]
	mov	r3, r5
	add	r3, #0x8d
	ldrb	r1, [r2, r3]
	sub	r3, #1
	ldrb	r3, [r2, r3]
	sub	r7, r1, r3
	bl	Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #2
	lsr	r0, #16
	mov	r1, #0x14
	add	r0, r7
	bl	Func_b60_from_thumb
	mov	r2, r10
	ldrh	r3, [r2, #0x10]
	ldrh	r1, [r6, #0xe]
	ldrh	r2, [r6, #4]
	add	r1, r0
	add	r3, r2
	mov	r0, r10
	strh	r3, [r0, #0x10]
	ldrh	r2, [r6, #6]
	ldrh	r3, [r0, #0x12]
	add	r3, r2
	mov	r2, r10
	strh	r3, [r2, #0x12]
	ldrh	r3, [r2, #0x18]
	ldrh	r2, [r6, #8]
	add	r3, r2
	strh	r3, [r0, #0x18]
	ldrh	r2, [r6, #0xa]
	ldrh	r3, [r0, #0x1a]
	add	r3, r2
	mov	r2, r10
	strh	r3, [r2, #0x1a]
	ldrh	r3, [r2, #0x1c]
	ldrh	r2, [r6, #0xc]
	add	r3, r2
	strh	r3, [r0, #0x1c]
	ldrb	r3, [r0, #0x1e]
	add	r3, r1
	strb	r3, [r0, #0x1e]
	mov	r3, #1
	strb	r3, [r0, #0x1f]
	mov	r3, r10
	mov	r2, #0
	add	r3, #0x20
	strb	r2, [r3]
	add	r3, #1
	strh	r1, [r6, #0xe]
	strb	r2, [r3]
	mov	r0, r11
	bl	Func_78bf0
	mov	r0, r11
	bl	Func_77428
.L792a4:
	mov	r0, r9
	bl	Func_2df0
	mov	r0, r6
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_7905c

.thumb_func_start Func_792c4
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r7, r1
	bl	Func_77394
	mov	r3, #0x92
	ldrb	r1, [r0, #0xf]
	lsl	r3, #1
	add	r5, r0, r3
	add	r1, #1
	mov	r0, r6
	bl	Func_79008
	ldr	r3, [r5]
	cmp	r3, r0
	bcc	.L792f4
	mov	r0, r6
	mov	r1, r7
	bl	Func_7905c
	cmp	r0, #0
	beq	.L792f4
	mov	r0, r7
	b	.L792f6
.L792f4:
	mov	r0, #0
.L792f6:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_792c4

.thumb_func_start Func_792fc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r6, r0
	mov	r8, r1
	bl	Func_77394
	ldrb	r5, [r0, #0xf]
	cmp	r5, r8
	bge	.L79326
	mov	r3, r8
	mov	r7, sp
	sub	r5, r3, r5
.L79318:
	mov	r0, r6
	mov	r1, r7
	sub	r5, #1
	bl	Func_7905c
	cmp	r5, #0
	bne	.L79318
.L79326:
	mov	r0, r6
	bl	Func_77428
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_792fc

	.section .rodata

.L7a830:
	.incrom 0x7a830, 0x7b490
