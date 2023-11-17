	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_1a3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r9, r0
	mov	r1, #4
	mov	r0, #0x23
	sub	sp, #4
	bl	__Func_48f4
	mov	r2, r8
	str	r2, [r0]
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r3, r0
	cmp	r3, #0
	bne	.L1a7a
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r8
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r9
	mov	r0, r8
	str	r3, [r0, #4]
	b	.L1bb6
.L1a7a:
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_8ba1c
	mov	r7, r0
	ldr	r4, [r7, #0x10]
	mov	r3, r4
	cmp	r4, #0
	bge	.L1a96
	ldr	r0, =0xfffff
	add	r3, r4, r0
.L1a96:
	ldr	r1, [r7, #8]
	asr	r3, #20
	lsl	r2, r3, #7
	mov	r3, r1
	cmp	r1, #0
	bge	.L1aa6
	ldr	r0, =0xfffff
	add	r3, r1, r0
.L1aa6:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r2, =ewram_10000
	lsl	r3, #2
	mov	r0, r8
	add	r2, r3
	ldr	r3, [r0]
	mov	r10, r2
	cmp	r3, #0
	beq	.L1b20
	ldr	r3, [r0, #0x14]
	cmp	r3, #0
	beq	.L1b20
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r0, #0x1a
	mov	r3, r4
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1b26
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L27e8
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r6, #0
	beq	.L1b1a
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #6
	sub	r1, r3
	mov	r0, r6
	bl	__Func_ba30
	mov	r2, r6
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	ldrb	r2, [r6, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L1b1a:
	mov	r3, r8
	str	r5, [r3, #0x14]
	b	.L1b26
.L1b20:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x14]
.L1b26:
	mov	r2, r10
	ldrb	r3, [r2, #2]
	cmp	r3, r9
	bne	.L1bb0
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	beq	.L1bb0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1bb6
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L27d0
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	cmp	r6, #0
	beq	.L1b82
	mov	r0, r6
	mov	r1, #6
	bl	__Func_ba30
	mov	r2, r6
	ldr	r3, .L1b88	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L1b82:
	mov	r2, r8
	str	r5, [r2, #0x18]
	b	.L1bb6

	.align	2, 0
.L1b88:
	.word	0
	.pool

.L1bb0:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x18]
.L1bb6:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a3c

.thumb_func_start OvlFunc_1bc8
	push	{r5, r6, r7, lr}
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x18
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1c14
	ldr	r1, =.L27b8
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r7, #0
	mov	r2, r5
	strb	r7, [r3]
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	add	r2, #1
	mov	r3, #2
	strb	r3, [r2]
	cmp	r6, #0
	beq	.L1c14
	mov	r0, r6
	mov	r1, #2
	bl	__Func_ba30
	mov	r3, r6
	add	r3, #0x26
	strb	r7, [r3]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
.L1c14:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bc8

.thumb_func_start OvlFunc_1c20
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L1c3c
	mov	r0, #0
	b	.L1c5a
.L1c3c:
	lsl	r0, #10
	bl	__Func_2322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
	mov	r0, #1
.L1c5a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1c20

.thumb_func_start OvlFunc_1c60
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0x10
	ble	.L1c78
	mov	r0, #0
	b	.L1c84
.L1c78:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #1
.L1c84:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1c60

.thumb_func_start OvlFunc_1c88
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0x10
	ble	.L1ca0
	mov	r0, #0
	b	.L1cae
.L1ca0:
	mov	r2, #0x80
	lsl	r3, #11
	lsl	r2, #9
	add	r3, r2
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #1
.L1cae:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1c88

.thumb_func_start OvlFunc_1cb4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	ldr	r2, [r6, #0x68]
	str	r3, [r6, #0x34]
	ldr	r3, [r2, #8]
	mov	r11, r3
	mov	r3, #0x80
	ldr	r2, [r2, #0x10]
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	ldr	r3, [r6, #8]
	mov	r9, r2
	mov	r2, r11
	sub	r0, r2, r3
	sub	sp, #4
	cmp	r0, #0
	bge	.L1cf4
	ldr	r3, =0xffff
	add	r0, r3
.L1cf4:
	ldr	r3, [r6, #0x10]
	asr	r0, #16
	mov	r2, r9
	mov	r10, r0
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L1d06
	ldr	r3, =0xffff
	add	r0, r3
.L1d06:
	asr	r0, #16
	mov	r8, r0
	mov	r2, r10
	mov	r0, r10
	mul	r0, r2
	mov	r2, r8
	mov	r3, r8
	mul	r3, r2
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	ldr	r3, [r6, #8]
	mov	r2, r11
	sub	r2, r3
	ldr	r3, [r6, #0x10]
	mov	r10, r2
	mov	r2, r9
	sub	r2, r3
	mov	r3, #0x80
	lsl	r7, r0, #16
	lsl	r3, #15
	mov	r8, r2
	cmp	r7, r3
	bge	.L1d5a
	ldr	r4, =Func_888
	mov	r0, r10
	mov	r1, r10
	.call_via r4
	mov	r3, r0
	mov	r1, r8
	mov	r0, r8
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	__Func_45d4
	mov	r7, r0
.L1d5a:
	mov	r1, r7
	cmp	r7, #0
	bge	.L1d62
	add	r1, r7, #7
.L1d62:
	ldr	r3, [r6, #0x30]
	asr	r5, r1, #3
	cmp	r5, r3
	ble	.L1d6c
	mov	r5, r3
.L1d6c:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r7, r2
	bge	.L1d7e
	mov	r3, r11
	mov	r2, r9
	str	r3, [r6, #8]
	str	r2, [r6, #0x10]
	b	.L1dba
.L1d7e:
	cmp	r7, r5
	ble	.L1dae
	ldr	r3, =Func_8ac
	mov	r1, r10
	mov	r9, r3
	mov	r0, r7
	bl	_call_via_r9
	ldr	r3, =Func_888
	mov	r1, r5
	.call_via r3
	mov	r1, r8
	str	r3, [sp]
	mov	r10, r0
	mov	r0, r7
	bl	_call_via_r9
	mov	r1, r5
	ldr	r3, [sp]
	.call_via r3
	mov	r8, r0
.L1dae:
	ldr	r3, [r6, #8]
	add	r3, r10
	str	r3, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r3, r8
	str	r3, [r6, #0x10]
.L1dba:
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r0, #1
	ldr	r1, [r6, #0x50]
	lsr	r2, #1
	and	r2, r0
	ldr	r4, [r1, #0x28]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r1, #0x25
	strb	r3, [r4, #5]
	strb	r0, [r1]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1cb4

.thumb_func_start OvlFunc_1df8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r2, r3]
	mov	r0, #0x1a
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1e5c
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L27c4
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	str	r7, [r5, #0x68]
	cmp	r6, #0
	beq	.L1e5c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_ba30
	ldr	r3, .L1e80	@ 0
	mov	r2, r6
	add	r2, #0x26
	strb	r3, [r2]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L1e5c:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1eb6
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L27c4
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	mov	r2, #0
	b	.L1e90

	.align	2, 0
.L1e80:
	.word	0
	.pool

.L1e90:
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	cmp	r6, #0
	beq	.L1eb6
	mov	r0, r6
	mov	r1, #1
	bl	__Func_ba30
	mov	r2, r6
	ldr	r3, =0
	add	r2, #0x26
	strb	r3, [r2]
.L1eb6:
	mov	r0, #0x82
	bl	__Func_f9080
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1df8

.thumb_func_start OvlFunc_1ec8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	ldr	r2, [r2]
	sub	r3, #0x20
	mov	r8, r2
	mov	r0, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	mov	r1, r8
	ldr	r7, [r2, r3]
	ldr	r3, [r1]
	sub	sp, #4
	cmp	r3, #2
	bhi	.L1fc0
	bl	__Func_916b0
	mov	r2, r8
	ldr	r6, [r2, #0x14]
	cmp	r6, #0
	bne	.L1f68
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1f64
	ldr	r3, [r7, #0x14]
	ldr	r4, [r5, #0x50]
	str	r3, [r5, #0x14]
	ldr	r1, =.L27e8
	str	r4, [sp]
	bl	__Func_c2d8
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	ldr	r4, [sp]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r4, #0
	beq	.L1f56
	mov	r3, r4
	add	r3, #0x26
	strb	r6, [r3]
	mov	r2, #0xd
	ldrb	r3, [r4, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r4, #9]
.L1f56:
	mov	r3, r5
	add	r3, #0x54
	mov	r1, r8
	strb	r6, [r3]
	str	r5, [r1, #0x14]
	mov	r6, r5
	b	.L1f68
.L1f64:
	mov	r2, r8
	ldr	r6, [r2, #0x14]
.L1f68:
	mov	r3, r8
	ldr	r5, [r3]
	cmp	r5, #2
	bgt	.L1f9a
	mov	r7, r6
	mov	r0, #1
	mov	r1, #5
	add	r7, #0x54
	mov	r9, r0
	mov	r10, r1
.L1f7c:
	bl	OvlFunc_1df8
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r2, r9
	mov	r3, r10
	sub	r1, r3, r5
	strb	r2, [r7]
	mov	r0, r6
	add	r5, #1
	bl	__Func_c300
	cmp	r5, #2
	ble	.L1f7c
.L1f9a:
	mov	r0, r8
	mov	r3, #3
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r0, =0x161
	bl	__Func_79358
	bl	__Func_91750
.L1fc0:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ec8

.thumb_func_start OvlFunc_1fe8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1edc
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L201e
	mov	r7, #0
	str	r7, [r6]
	ldr	r0, =0x161
	bl	__Func_79374
	ldr	r5, [r6, #0x14]
	cmp	r5, #0
	beq	.L201e
	mov	r3, r5
	add	r3, #0x64
	strh	r7, [r3]
	ldr	r1, =.L27dc
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	str	r7, [r6, #0x14]
.L201e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fe8

.thumb_func_start OvlFunc_2030
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r3, [r3]
	sub	sp, #0x1c
	ldr	r2, [r2]
	mov	r0, #0xfa
	str	r3, [sp, #0xc]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r1, r3]
	mov	r8, r2
	mov	r2, r7
	add	r2, #0x55
	str	r2, [sp]
	ldrb	r3, [r2]
	str	r3, [sp, #4]
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L27f4
	and	r3, r2
	lsl	r3, #1
	ldrh	r6, [r1, r3]
	ldrsh	r3, [r1, r3]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.L2086
	b	.L2356
.L2086:
	mov	r2, #0x10
	ldr	r4, [r7, #8]
	ldr	r1, =0xfff00000
	add	r2, sp
	mov	r11, r2
	mov	r2, #0x80
	and	r4, r1
	lsl	r2, #12
	add	r5, r4, r2
	mov	r3, r11
	str	r5, [r3]
	ldr	r3, [r7, #0x14]
	mov	r0, r11
	str	r3, [r0, #4]
	ldr	r0, [r7, #0x10]
	and	r0, r1
	add	r2, r0, r2
	mov	r1, r11
	str	r2, [r1, #8]
	cmp	r2, #0
	bge	.L20b4
	ldr	r3, =0x17ffff
	add	r2, r0, r3
.L20b4:
	asr	r3, r2, #20
	lsl	r2, r3, #7
	mov	r3, r5
	cmp	r3, #0
	bge	.L20c2
	ldr	r0, =0x17ffff
	add	r3, r4, r0
.L20c2:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =ewram_10000
	lsl	r3, #2
	mov	r0, #0x80
	add	r5, r3, r1
	mov	r2, r11
	lsl	r0, #14
	mov	r1, r6
	bl	__Func_447c
	mov	r2, r11
	ldr	r3, [r2, #8]
	cmp	r3, #0
	bge	.L20e4
	ldr	r0, =0xfffff
	add	r3, r0
.L20e4:
	asr	r3, #20
	mov	r1, r11
	lsl	r2, r3, #7
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L20f4
	ldr	r0, =0xfffff
	add	r3, r0
.L20f4:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =ewram_10000
	lsl	r3, #2
	add	r1, r3, r1
	str	r1, [sp, #8]
	mov	r2, r8
	ldrb	r3, [r5, #2]
	ldr	r1, [r2, #4]
	cmp	r3, r1
	beq	.L211a
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, #2]
	cmp	r3, r1
	bne	.L211a
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L211a
	b	.L2356
.L211a:
	bl	__Func_916b0
	mov	r0, r7
	add	r1, sp, #0x10
	bl	__Func_120dc
	mov	r10, r0
	cmp	r0, #0
	beq	.L212e
	b	.L2356
.L212e:
	mov	r1, r8
	ldr	r5, [r1, #0x18]
	cmp	r5, #0
	beq	.L2154
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
	ldr	r1, =.L27dc
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, r10
	mov	r0, r8
	str	r3, [r0, #0x18]
.L2154:
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L2234
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L2234
	ldr	r6, [r0, #0x14]
	mov	r0, #0x1a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L21d4
	ldr	r1, [r5, #0x50]
	ldr	r3, [r6, #0x14]
	mov	r9, r1
	str	r3, [r5, #0x14]
	ldr	r1, =.L27d0
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r0, r10
	add	r3, #0xf
	mov	r2, r5
	strh	r0, [r3]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r2, r11
	mov	r0, r11
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	mov	r0, r5
	bl	__Func_d14c
	mov	r1, r9
	cmp	r1, #0
	beq	.L21d0
	mov	r0, r9
	mov	r1, #6
	bl	__Func_ba30
	mov	r2, r9
	ldr	r3, .L21f4	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L21d0:
	mov	r2, r8
	str	r5, [r2, #0x18]
.L21d4:
	mov	r0, r8
	ldr	r3, [r0]
	sub	r5, r3, #1
	str	r5, [r0]
	cmp	r5, #0
	bne	.L2224
	ldr	r0, [r0, #0x14]
	bl	__Func_c0f4
	mov	r1, r8
	str	r5, [r1, #0x14]
	ldr	r0, =0x161
	bl	__Func_79374
	b	.L2234

	.align	2, 0
.L21f4:
	.word	0
	.pool

.L2224:
	mov	r2, r8
	ldr	r0, [r2, #0x14]
	cmp	r0, #0
	beq	.L2234
	mov	r1, #6
	sub	r1, r5
	bl	__Func_c300
.L2234:
	mov	r1, #6
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #3
	bl	__Func_30f8
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, r7
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x28]
	ldr	r3, [sp]
	ldrb	r2, [r3]
	ldr	r0, [sp]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, r7
	bl	__Func_c528
	mov	r3, r11
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, #0xa
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	bl	__Func_92158
	mov	r1, #6
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #2
	bl	__Func_30f8
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	beq	.L22aa
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c528
	b	.L22b0
.L22aa:
	mov	r0, #0xd7
	bl	__Func_f9080
.L22b0:
	mov	r0, #1
	bl	__Func_30f8
	add	r1, sp, #4
	ldr	r2, [sp]
	ldrb	r1, [r1]
	strb	r1, [r2]
	ldr	r3, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r3, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L232a
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.L232a
	mov	r1, #0x12
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r1, #0xf
	ldr	r6, =iwram_1c94
	mov	r5, #0
	mov	r10, r1
	b	.L22f0
.L22e8:
	mov	r0, #1
	bl	__Func_30f8
	add	r5, #1
.L22f0:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.L2300
	mov	r0, r7
	bl	OvlFunc_1bc8
.L2300:
	cmp	r5, #0x1f
	ble	.L22e8
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L22e8
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, r8
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #8]
	ldr	r3, [r0, #0x10]
	mov	r1, #1
	str	r3, [r7, #0x10]
	mov	r0, r7
	bl	__Func_c528
.L232a:
	mov	r1, r8
	mov	r3, #0
	str	r3, [r1, #8]
	bl	__Func_91750
	mov	r0, #0xd8
	ldr	r2, [sp, #0xc]
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, #0x80
	ldr	r4, =Func_888
	ldr	r0, [r3]
	lsl	r1, #14
	.call_via r4
	ldr	r1, [sp, #0xc]
	mov	r3, #0xda
	lsl	r3, #1
	add	r2, r1, r3
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
.L2356:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2030

.thumb_func_start OvlFunc_2370
	push	{r5, lr}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r5, [r2]
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r0, [r2, r3]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L2396
	sub	r3, #1
	b	.L23a8
.L2396:
	bl	OvlFunc_1bc8
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, #0xa
.L23a8:
	str	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2370

.thumb_func_start OvlFunc_23b8
	push	{r5, lr}
	mov	r0, #0x23
	mov	r1, #4
	bl	__Func_48f4
	cmp	r0, #0
	beq	.L23d6
	ldr	r5, [r0]
	ldr	r0, [r5, #0x14]
	cmp	r0, #0
	beq	.L23d6
	bl	__Func_c0f4
	mov	r3, #0
	str	r3, [r5, #0x14]
.L23d6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_23b8

	.section .data

.L27b8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27b8, (0x27c4-0x27b8)
.L27c4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27c4, (0x27d0-0x27c4)
.L27d0:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27d0, (0x27dc-0x27d0)
.L27dc:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27dc, (0x27e8-0x27dc)
.L27e8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27e8, (0x27f4-0x27e8)
.L27f4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27f4, (0x2814-0x27f4)
