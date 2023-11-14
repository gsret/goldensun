	.include "macros.inc"

.thumb_func_start Func_8b674
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r10, r0
	mov	r8, r3
	mov	r0, #0xfa
	ldr	r3, =ewram_240
	lsl	r0, #1
	mov	r5, #0x80
	add	r3, r0
	lsl	r5, #2
	ldr	r7, [r3]
	add	r5, r8
	ldr	r3, =.L9f810
	mov	r2, r5
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	mov	r2, #0x86
	lsl	r2, #2
	add	r2, r8
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	mov	r3, r8
	mov	r2, #0
	add	r3, #0xc
	mov	r12, r8
.L8b6b6:
	str	r2, [r3]
	sub	r3, #4
	cmp	r3, r12
	bge	.L8b6b6
	bl	Func_8b9f8
	ldr	r3, =0xffff
	ldr	r6, =ewram_240
	mov	r1, #0xee
	strh	r3, [r5, #2]
	strh	r7, [r5]
	lsl	r1, #1
	add	r3, r6, r1
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r5, #0xc]
	mov	r2, #0xf2
	str	r3, [r5, #8]
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r4, #0xf4
	str	r3, [r5, #0x10]
	lsl	r4, #1
	add	r3, r6, r4
	ldr	r3, [r3]
	mov	r0, r5
	strh	r3, [r5, #0x14]
	mov	r1, r7
	bl	Func_8b3ec
	mov	r0, r10
	mov	r1, #8
	bl	Func_8b3ec
	lsl	r3, r7, #2
	add	r3, #0x14
	mov	r0, r8
	mov	r1, #0xf6
	ldr	r5, [r0, r3]
	lsl	r1, #1
	add	r3, r6, r1
	ldrh	r3, [r3]
	mov	r2, r5
	add	r2, #0x22
	strb	r3, [r2]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L8b71c
	ldr	r2, =0xfffff
	add	r3, r2
.L8b71c:
	asr	r2, r3, #20
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L8b728
	ldr	r4, =0xfffff
	add	r3, r4
.L8b728:
	asr	r3, #20
	lsl	r3, #7
	add	r3, r2, r3
	ldr	r0, =ewram_10000
	lsl	r3, #2
	add	r2, r3, r0
	ldr	r4, =ewram_fe00
	mov	r0, #0xf0
	lsl	r0, #1
	add	r1, r3, r4
	add	r3, r6, r0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L8b7b8
	ldrb	r3, [r2, #2]
	cmp	r3, #0xfd
	bne	.L8b7b8
	ldrb	r3, [r1, #2]
	cmp	r3, #0xfd
	bne	.L8b7b8
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r6, r1
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =0xfff00000
	ldr	r2, [r5, #0x10]
	ldr	r1, [r5, #8]
	add	r2, r3
	mov	r0, #0
	bl	_Func_11f54
	ldr	r4, =0xffe00000
	ldr	r3, [r5, #0xc]
	add	r0, r4
	add	r3, r0
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x14]
	mov	r2, r5
	ldr	r3, .L8b790	@ 0
	add	r2, #0x55
	mov	r0, r5
	mov	r1, #0
	strb	r3, [r2]
	bl	_Func_c528
	mov	r0, r5
	mov	r1, #0xc
	bl	_Func_c300
	b	.L8b7c4

	.align	2, 0
.L8b790:
	.word	0
	.pool

.L8b7b8:
	ldr	r3, =ewram_240
	mov	r0, #0xf9
	lsl	r0, #1
	add	r2, r3, r0
	mov	r3, #0
	strb	r3, [r2]
.L8b7c4:
	mov	r0, #0x80
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	lsl	r0, #8
	bl	_Func_c150
	ldr	r3, [r5, #0x14]
	mov	r6, r0
	str	r3, [r6, #0x14]
	mov	r1, r5
	bl	_Func_c4bc
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L8b7fc
	ldr	r0, [r5, #0x50]
	mov	r1, #0x17
	bl	_Func_b8ac
	mov	r3, #0xf
	strb	r3, [r0, #5]
	mov	r3, #9
	strb	r3, [r0, #6]
.L8b7fc:
	ldr	r3, =iwram_1e70
	ldr	r2, [r3]
	mov	r3, r6
	add	r3, #8
	str	r3, [r2]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r3, r8
	str	r6, [r3]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8b674

.thumb_func_start Func_8b824
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, #7
	mov	r2, #8
	add	r1, #0x34
.L8b832:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.L8b83a
	mov	r0, r2
.L8b83a:
	add	r2, #1
	cmp	r2, #0x41
	ble	.L8b832
	add	r0, #1
	cmp	r0, #0x42
	bne	.L8b84a
	mov	r0, #1
	neg	r0, r0
.L8b84a:
	pop	{r1}
	bx	r1
.func_end Func_8b824

.thumb_func_start Func_8b854
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	lsl	r0, #2
	add	r3, r0
	add	r3, #0x14
	mov	r0, r3
	bx	lr
.func_end Func_8b854

.thumb_func_start Func_8b868
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e70
	mov	r5, r0
	ldr	r7, =0x165
	mov	r0, #0xb2
	lsl	r0, #1
	ldr	r6, [r3]
	bl	_Func_79374
	mov	r0, r7
	bl	_Func_79358
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	beq	.L8b8d8
	mov	r4, r6
	mov	r0, r7
	mov	r12, r2
	add	r4, #0xec
.L8b894:
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L8b8ce
	ldr	r2, [r5, #8]
	ldr	r3, [r4]
	ldr	r1, [r5, #0x10]
	cmp	r3, r2
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf4
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf0
	ldr	r3, [r3]
	cmp	r3, r1
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf8
	ldr	r3, [r3]
	cmp	r1, r3
	bgt	.L8b8cc
	mov	r3, #0xb2
	lsl	r3, #1
	strh	r3, [r5, #2]
	b	.L8b8ce
.L8b8cc:
	strh	r0, [r5, #2]
.L8b8ce:
	add	r5, #0x18
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, r12
	bne	.L8b894
.L8b8d8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8b868

.thumb_func_start Func_8b8e8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xf0
	ldr	r1, [r3]
	lsl	r0, #1
	add	r3, r1, r0
	ldr	r2, [r3]
	ldr	r0, =0xff600000
	ldr	r3, [r2, #8]
	add	r0, r3
	mov	r9, r0
	mov	r0, #0xa0
	lsl	r0, #16
	add	r0, r3
	ldr	r3, [r2, #0x10]
	ldr	r2, =0xff380000
	mov	r5, r1
	mov	r10, r0
	mov	r1, #2
	mov	r0, #0xc8
	add	r2, r3
	lsl	r0, #15
	neg	r1, r1
	mov	r8, r2
	add	r7, r3, r0
	add	r5, #0x34
	mov	r11, r1
	mov	r6, #0x39
.L8b92c:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L8b968
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x10]
	cmp	r3, #0
	bne	.L8b93e
	cmp	r2, #0
	beq	.L8b968
.L8b93e:
	cmp	r3, r9
	blt	.L8b94e
	cmp	r3, r10
	bgt	.L8b94e
	cmp	r2, r8
	blt	.L8b94e
	cmp	r2, r7
	ble	.L8b968
.L8b94e:
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x1d]
	mov	r1, r11
	and	r3, r1
	strb	r3, [r2, #0x1d]
	bl	_Func_c0f4
	mov	r2, #0
	str	r2, [r5]
.L8b968:
	sub	r6, #1
	add	r5, #4
	cmp	r6, #0
	bge	.L8b92c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8b8e8

.thumb_func_start Func_8b98c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	mov	r3, #2
	mov	r1, #0
	neg	r3, r3
	mov	r10, r1
	mov	r6, #0x34
	mov	r8, r3
	mov	r7, #0x39
.L8b9a6:
	ldr	r0, [r6, r5]
	cmp	r0, #0
	beq	.L8b9c6
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x1d]
	mov	r1, r8
	and	r3, r1
	strb	r3, [r2, #0x1d]
	bl	_Func_c0f4
	mov	r3, r10
	str	r3, [r6, r5]
.L8b9c6:
	sub	r7, #1
	add	r6, #4
	cmp	r7, #0
	bge	.L8b9a6
	ldr	r6, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	cmp	r6, #0
	beq	.L8b9e8
	bl	Func_8b824
	mov	r1, r0
	mov	r0, r6
	bl	Func_8b3ec
.L8b9e8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8b98c

.thumb_func_start Func_8b9f8
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0x8c
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r1, #0
	mov	r2, #0x41
	add	r3, r0
.L8ba08:
	sub	r2, #1
	str	r1, [r3]
	sub	r3, #4
	cmp	r2, #0
	bge	.L8ba08
	pop	{r0}
	bx	r0
.func_end Func_8b9f8

.thumb_func_start Func_8ba1c
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	cmp	r0, #0xbf
	bls	.L8ba2a
	mov	r0, #0
	b	.L8ba30
.L8ba2a:
	lsl	r3, r0, #2
	add	r3, #0x14
	ldr	r0, [r2, r3]
.L8ba30:
	pop	{r1}
	bx	r1
.func_end Func_8ba1c

	.section .rodata

.L9f810:
	.incrom 0x9f810, 0x9f840
