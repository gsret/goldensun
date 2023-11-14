	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_9b698
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	sub	sp, #8
	str	r3, [sp, #4]
	ldr	r1, [r3, #0x10]
	ldr	r6, [r1, #0x50]
	ldrh	r3, [r1, #6]
	ldr	r2, [r6, #0x28]
	mov	r10, r1
	str	r3, [sp]
	mov	r9, r2
	bl	Func_4080
	ldr	r2, =0x71a
	ldr	r1, [sp, #4]
	add	r3, r1, r2
	mov	r1, #0
	mov	r8, r1
	strh	r0, [r3]
	mov	r1, #0x80
	lsl	r0, #16
	lsl	r1, #1
	ldr	r2, =.L9c510
	asr	r0, #16
	bl	Func_3fa4
	ldr	r5, =ewram_240
	mov	r3, #0x91
	lsl	r3, #2
	add	r2, r5, r3
	mov	r3, #0x96
	lsl	r3, #20
	str	r3, [r2]
	ldr	r0, =0x145
	bl	_Func_79338
	mov	r1, #0x92
	lsl	r1, #2
	add	r3, r5, r1
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r10
	bl	_Func_c598
	ldr	r3, =Func_9b5dc
	mov	r2, r10
	mov	r5, r10
	str	r3, [r2, #0x6c]
	add	r5, #0x64
	mov	r3, r8
	strh	r3, [r5]
	mov	r3, r10
	mov	r1, r8
	add	r3, #0x66
	strh	r1, [r3]
	mov	r0, #0x8c
	bl	_Func_f9080
	mov	r0, #0xf
	bl	Func_30f8
	mov	r3, #1
	strh	r3, [r5]
	mov	r0, #0xa
	bl	Func_30f8
	mov	r2, #0x26
	add	r2, r6
	mov	r3, #7
	mov	r8, r2
	add	r6, #0x25
	mov	r7, #1
	mov	r5, #0x13
	mov	r11, r3
.L9b73a:
	mov	r1, r11
	mov	r2, r9
	strb	r1, [r2, #5]
	mov	r0, #2
	strb	r7, [r6]
	bl	Func_30f8
	mov	r3, #0
	mov	r1, r9
	mov	r2, r8
	strb	r7, [r6]
	strb	r3, [r1, #5]
	strb	r7, [r2]
	mov	r0, #3
	sub	r5, #1
	bl	Func_30f8
	cmp	r5, #0
	bge	.L9b73a
	mov	r2, sp
	ldrh	r2, [r2]
	ldr	r5, =Func_9b588
	mov	r3, #0
	mov	r1, r10
	str	r3, [r1, #0x6c]
	mov	r3, r10
	mov	r1, #0xc8
	strh	r2, [r3, #6]
	lsl	r1, #4
	mov	r0, r5
	bl	Func_41d8
	mov	r0, #0xf
	bl	Func_30f8
	mov	r0, #0xae
	bl	_Func_f9080
	mov	r0, #0x37
	bl	Func_30f8
	mov	r0, r5
	bl	Func_4278
	ldr	r3, =ewram_240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L9b7ac
	mov	r0, r10
	mov	r1, #2
	bl	_Func_c528
	b	.L9b7b4
.L9b7ac:
	mov	r0, r10
	mov	r1, #1
	bl	_Func_c528
.L9b7b4:
	mov	r0, r10
	mov	r1, #0
	bl	_Func_c598
	ldr	r2, =0x71a
	ldr	r1, [sp, #4]
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	Func_3f3c
	ldr	r0, =0x922
	mov	r1, #1
	bl	_Func_1776c
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9b698

.thumb_func_start Func_9b804
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x45
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	beq	.L9b866
	ldrh	r3, [r5, #0x38]
	add	r3, #1
	strh	r3, [r5, #0x38]
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5, #0x3a]
	cmp	r3, #0
	beq	.L9b82a
	sub	r3, r2, #1
	strh	r3, [r5, #0x3a]
	b	.L9b836
.L9b82a:
	ldr	r3, [r5, #0x34]
	cmp	r3, #0
	beq	.L9b836
	mov	r0, r5
	bl	_call_via_r3
.L9b836:
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	beq	.L9b866
	mov	r3, r5
	add	r3, #0x43
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L9b852
	mov	r0, r5
	bl	Func_9b8f4
.L9b852:
	mov	r3, r5
	add	r3, #0x44
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L9b866
	mov	r0, r5
	bl	Func_9b86c
.L9b866:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_9b804

.thumb_func_start Func_9b86c
	push	{r5, r6, r7, lr}
	mov	r4, r0
	mov	r3, r4
	add	r3, #0x47
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	sub	sp, #0x18
	ldr	r5, [r4]
	mov	r6, #0
	cmp	r3, #0
	beq	.L9b88c
	ldr	r2, [r4, #8]
	mov	r3, #0xfe
	lsl	r3, #17
	sub	r6, r3, r2
.L9b88c:
	ldr	r3, =Func_888
	ldr	r0, [r4, #0x28]
	ldr	r1, [r5, #0x18]
	.call_via r3
	str	r0, [sp]
	ldr	r0, [r4, #0x2c]
	ldr	r1, [r5, #0x18]
	.call_via r3
	mov	r7, sp
	str	r0, [r7, #4]
	ldr	r2, [r4, #4]
	add	r1, sp, #8
	str	r2, [r1]
	str	r6, [r1, #4]
	ldr	r0, [r4, #8]
	add	r3, r0, r6
	str	r3, [r1, #8]
	mov	r3, #0
	str	r3, [r1, #0xc]
	ldr	r3, =0x1fffff
	add	r2, r3
	ldr	r3, =0x12ffffe
	cmp	r2, r3
	bhi	.L9b8dc
	ldr	r3, =0xffe00000
	cmp	r0, r3
	ble	.L9b8dc
	mov	r3, #0xe0
	lsl	r3, #16
	cmp	r0, r3
	bge	.L9b8dc
	mov	r0, r5
	mov	r2, r7
	mov	r3, #0
	bl	_Func_b168
.L9b8dc:
	add	sp, #0x18
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9b86c

.thumb_func_start Func_9b8f4
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r2, #0x80
	ldr	r0, [r6, #0xc]
	lsl	r2, #24
	sub	sp, #4
	cmp	r0, r2
	bne	.L9b906
	b	.L9ba1e
.L9b906:
	ldr	r3, [r6, #4]
	ldr	r2, [r6, #0x10]
	sub	r7, r0, r3
	ldr	r3, [r6, #8]
	sub	r5, r2, r3
	mov	r3, r6
	add	r3, #0x41
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L9b988
	mov	r0, r7
	cmp	r7, #0
	bge	.L9b928
	ldr	r3, =0xffff
	add	r0, r7, r3
.L9b928:
	asr	r0, #16
	mov	r3, r5
	cmp	r5, #0
	bge	.L9b934
	ldr	r2, =0xffff
	add	r3, r5, r2
.L9b934:
	mov	r2, r0
	mul	r2, r0
	asr	r3, #16
	mov	r0, r2
	mov	r2, r3
	mul	r2, r3
	mov	r3, r2
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	mov	r3, #0x80
	lsl	r0, #16
	lsl	r3, #16
	cmp	r0, r3
	bge	.L9b974
	ldr	r4, =Func_888
	mov	r0, r7
	mov	r1, r7
	.call_via r4
	mov	r3, r0
	mov	r1, r5
	mov	r0, r5
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	Func_45d4
.L9b974:
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r0, r2
	bgt	.L9b988
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	mov	r0, r6
	bl	Func_9ba5c
	b	.L9ba1e
.L9b988:
	mov	r0, r5
	mov	r1, r7
	bl	Func_44d0
	mov	r3, r6
	add	r3, #0x42
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	lsl	r0, #16
	asr	r4, r0, #16
	cmp	r3, #0
	beq	.L9b9da
	ldrh	r5, [r6, #0x30]
	sub	r3, r4, r5
	lsl	r3, #16
	asr	r2, r3, #16
	mov	r3, r2
	cmp	r2, #0
	bge	.L9b9b2
	neg	r3, r2
.L9b9b2:
	mov	r7, #0x32
	ldrsh	r1, [r6, r7]
	ldrh	r0, [r6, #0x32]
	cmp	r3, r1
	blt	.L9b9da
	cmp	r2, #0
	bge	.L9b9ce
	neg	r3, r2
	cmp	r3, r1
	ble	.L9b9d4
	neg	r3, r0
	lsl	r3, #16
	asr	r2, r3, #16
	b	.L9b9d4
.L9b9ce:
	cmp	r2, r1
	ble	.L9b9d4
	mov	r2, r1
.L9b9d4:
	add	r3, r2, r5
	lsl	r3, #16
	asr	r4, r3, #16
.L9b9da:
	lsl	r3, r4, #16
	lsr	r0, r3, #16
	ldr	r2, [r6, #0x1c]
	ldr	r3, [r6, #0x24]
	add	r7, r2, r3
	ldr	r3, [r6, #0x20]
	strh	r0, [r6, #0x30]
	cmp	r7, r3
	ble	.L9b9ee
	mov	r7, r3
.L9b9ee:
	lsl	r3, r0, #16
	asr	r4, r3, #16
	mov	r0, r4
	str	r7, [r6, #0x1c]
	str	r4, [sp]
	bl	Func_231c
	ldr	r5, =Func_888
	mov	r1, r7
	.call_via r5
	ldr	r3, [r6, #4]
	ldr	r4, [sp]
	add	r3, r0
	mov	r0, r4
	str	r3, [r6, #4]
	bl	Func_2322
	mov	r1, r7
	.call_via r5
	ldr	r3, [r6, #8]
	add	r3, r0
	str	r3, [r6, #8]
.L9ba1e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9b8f4

.thumb_func_start Func_9ba34
	push	{lr}
	mov	r3, r0
	add	r3, #0x41
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L9ba48
	mov	r0, #0
	b	.L9ba56
.L9ba48:
	ldr	r3, [r0, #0xc]
	mov	r2, #0x80
	lsl	r2, #24
	eor	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.L9ba56:
	pop	{r1}
	bx	r1
.func_end Func_9ba34

.thumb_func_start Func_9ba5c
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x10]
	mov	r3, #0
	str	r1, [r0, #4]
	str	r2, [r0, #8]
	str	r3, [r0, #0x1c]
	bx	lr
.func_end Func_9ba5c

.thumb_func_start Func_9ba70
	push	{lr}
	ldr	r0, [r0]
	bl	_Func_ba30
	pop	{r0}
	bx	r0
.func_end Func_9ba70

.thumb_func_start Func_9ba7c
	mov	r3, #0
	ldr	r2, =0
	str	r1, [r0, #0x34]
	strh	r3, [r0, #0x3a]
	strh	r3, [r0, #0x38]
	add	r0, #0x40
	strb	r2, [r0]
	bx	lr
.func_end Func_9ba7c

.thumb_func_start Func_9ba90
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r6, r2
	mov	r0, sp
	mov	r2, #0
	mov	r4, r1
	mov	r7, r3
	mov	r8, r2
	str	r2, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000012
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	bl	_Func_bc70
	str	r0, [r5]
	cmp	r0, #0
	beq	.L9bac8
	ldrb	r2, [r0, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	strb	r3, [r0, #9]
.L9bac8:
	mov	r1, r6
	mov	r0, r5
	mov	r2, r7
	bl	Func_9ba5c
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x20]
	mov	r2, #0x80
	ldr	r3, [r5]
	lsl	r2, #9
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x2c]
	str	r2, [r5, #0x24]
	add	r3, #0x26
	mov	r2, r8
	str	r6, [r5, #0x14]
	str	r7, [r5, #0x18]
	strb	r2, [r3]
	mov	r3, r5
	mov	r2, #1
	add	r3, #0x41
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	bl	Func_4458
	mov	r3, r5
	add	r3, #0x46
	mov	r2, r5
	strb	r0, [r3]
	add	r2, #0x47
	mov	r3, #4
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #1
	bl	Func_9ba70
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9ba90

.thumb_func_start Func_9bb34
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, [r5]
	sub	sp, #4
	cmp	r0, #0
	beq	.L9bb44
	bl	_Func_bdd4
.L9bb44:
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000012
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_9bb34

	.section .rodata

.L9c510:
	.incrom 0x9c510, 0x9c610
