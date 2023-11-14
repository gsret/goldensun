	.include "macros.inc"

.thumb_func_start OvlFunc_170
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	lsr	r3, #12
	ldr	r2, =.L1844
	lsl	r3, #2
	mov	r10, r3
	ldr	r3, [r2, r3]
	asr	r2, r3, #16
	add	r1, r2
	mov	r8, r0
	asr	r0, r1, #4
	mov	r1, r8
	mov	r4, #0x12
	ldrsh	r2, [r1, r4]
	lsl	r3, #16
	asr	r3, #16
	add	r2, r3
	asr	r1, r2, #4
	bl	OvlFunc_134
	mov	r6, r0
	mov	r3, r6
	add	r3, #0x59
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L29e
	cmp	r6, #0
	beq	.L29e
	mov	r5, #0
.L1be:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92054
	cmp	r6, r0
	beq	.L29e
	add	r5, #1
	cmp	r5, #3
	ble	.L1be
	ldr	r5, =.L1844
	mov	r4, r10
	ldr	r3, [r5, r4]
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	asr	r2, r3, #16
	add	r1, r2
	asr	r0, r1, #4
	lsl	r3, #16
	mov	r1, #0x12
	ldrsh	r2, [r6, r1]
	asr	r3, #16
	add	r2, r3
	asr	r1, r2, #4
	bl	OvlFunc_134
	cmp	r0, #0
	beq	.L202
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L29e
.L202:
	mov	r3, #0
	mov	r2, r6
	add	r2, #0x22
	mov	r9, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r4, r10
	ldr	r1, [r5, r4]
	ldr	r2, =0xffff0000
	ldr	r3, [r6, #8]
	and	r2, r1
	mov	r7, sp
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r6
	mov	r1, r7
	bl	__Func_120dc
	cmp	r0, #0
	bgt	.L29e
	mov	r1, #8
	mov	r0, r8
	bl	__Func_c300
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__Func_30f8
	mov	r0, #0xee
	bl	__Func_f9080
	str	r5, [r6, #0x30]
	str	r5, [r6, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r6
	bl	__Func_d14c
	mov	r0, r8
	str	r5, [r0, #0x30]
	str	r5, [r0, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	__Func_d14c
	mov	r0, r6
	bl	__Func_ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	ldr	r3, [r7]
	str	r3, [r6, #8]
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	mov	r1, r9
	mov	r2, r8
	lsl	r3, #24
	str	r1, [r6, #0x24]
	str	r1, [r6, #0x2c]
	mov	r0, r8
	str	r1, [r2, #0x24]
	str	r1, [r2, #0x2c]
	str	r3, [r2, #0x38]
	str	r3, [r2, #0x40]
	mov	r1, #1
	bl	__Func_c300
.L29e:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_170

.thumb_func_start OvlFunc_2bc
	push	{lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_2bc

.thumb_func_start OvlFunc_2cc
	push	{lr}
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_1776c
	pop	{r0}
	bx	r0
.func_end OvlFunc_2cc

	.section .data

.L1844:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1844, (0x1884-0x1844)
