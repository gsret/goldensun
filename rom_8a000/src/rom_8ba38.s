	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8ba38
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =ewram_1124
	mov	r2, #0xe0
	lsl	r2, #4
	add	r2, r7
	mov	r11, r2
	mov	r3, #0xe2
	mov	r2, #0xe4
	lsl	r3, #4
	lsl	r2, #4
	add	r3, r7
	add	r2, r7
	sub	sp, #4
	mov	r9, r3
	mov	r10, r2
	mov	r3, #0
	mov	r2, #0x42
	str	r2, [sp]
	mov	r8, r3
	ldr	r3, =iwram_1ebc
	mov	r2, #0xcf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r7
	sub	r6, #0x20
	cmp	r3, #3
	bne	.L8ba84
	mov	r3, #8
	str	r3, [sp]
.L8ba84:
	ldr	r2, [sp]
	mov	r5, #0
	cmp	r5, r2
	bge	.L8baf2
.L8ba8c:
	mov	r0, r5
	bl	Func_8ba1c
	mov	r4, r0
	cmp	r4, #0
	beq	.L8baea
	strb	r5, [r6]
	ldr	r3, =REG_DMA3SAD
	add	r6, #1
	mov	r1, r7
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r4
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L8bac4
	ldr	r2, [r4, #0x50]
	mov	r3, r2
	add	r3, #0x24
	ldrb	r4, [r3]
	add	r3, #2
	ldrb	r1, [r3]
	ldrb	r3, [r2, #9]
	lsl	r3, #28
	lsr	r0, r3, #30
	b	.L8baca
.L8bac4:
	mov	r4, #0
	mov	r1, #0
	mov	r0, #0
.L8baca:
	mov	r3, r11
	strb	r4, [r3]
	mov	r3, r9
	mov	r2, #1
	strb	r1, [r3]
	mov	r3, #1
	add	r11, r2
	add	r9, r2
	add	r8, r3
	mov	r2, r10
	strb	r0, [r2]
	mov	r2, r8
	add	r10, r3
	add	r7, #0x70
	cmp	r2, #0x1f
	bhi	.L8baf2
.L8baea:
	ldr	r3, [sp]
	add	r5, #1
	cmp	r5, r3
	blt	.L8ba8c
.L8baf2:
	mov	r5, r8
	cmp	r5, #0x1f
	bgt	.L8bb08
	mov	r3, #0x20
	mov	r2, #0xff
	sub	r5, r3, r5
.L8bafe:
	sub	r5, #1
	strb	r2, [r6]
	add	r6, #1
	cmp	r5, #0
	bne	.L8bafe
.L8bb08:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8ba38

.thumb_func_start Func_8bb2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =ewram_1124
	mov	r2, #0x20
	mov	r8, r1
	neg	r2, r2
	add	r2, r8
	mov	r3, #0xe0
	mov	r1, #0xe2
	mov	r10, r2
	lsl	r3, #4
	lsl	r1, #4
	mov	r2, #0xe4
	sub	sp, #8
	add	r3, r8
	add	r1, r8
	lsl	r2, #4
	str	r3, [sp, #4]
	str	r1, [sp]
	add	r2, r8
	mov	r1, r10
	mov	r11, r2
	mov	r2, #0x1f
	neg	r2, r2
	ldrb	r7, [r1]
	mov	r3, #0
	add	r2, r8
	mov	r9, r3
	mov	r10, r2
	cmp	r7, #0xff
	beq	.L8bc18
.L8bb74:
	mov	r0, r7
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L8bbf2
	ldr	r6, [r5, #0x50]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r8
	mov	r1, r5
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, [sp, #4]
	ldrb	r1, [r3]
	cmp	r1, #0
	beq	.L8bb9c
	mov	r0, r5
	bl	_Func_c300
.L8bb9c:
	ldr	r2, [sp]
	mov	r0, r5
	ldrb	r1, [r2]
	bl	_Func_c528
	mov	r3, r11
	ldrb	r1, [r3]
	mov	r3, #3
	ldrb	r2, [r6, #9]
	and	r1, r3
	mov	r3, #0xd
	neg	r3, r3
	lsl	r1, #2
	and	r3, r2
	orr	r3, r1
	strb	r3, [r6, #9]
	ldrb	r2, [r6, #0x15]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	orr	r3, r1
	strb	r3, [r6, #0x15]
	ldr	r1, =ewram_434
	ldr	r3, [r1]
	str	r6, [r5, #0x50]
	cmp	r7, r3
	bne	.L8bbf2
	ldr	r2, =iwram_1ebc
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #1
	add	r3, r1
	ldr	r1, =iwram_1e70
	ldr	r2, [r3]
	ldr	r3, [r1]
	ldr	r1, [r3]
	ldr	r3, [r5, #0xc]
	mov	r0, r5
	str	r3, [r2, #0x14]
	str	r3, [r2, #0xc]
	str	r3, [r1, #4]
	bl	_Func_c4ac
.L8bbf2:
	mov	r2, #0x70
	ldr	r3, [sp, #4]
	ldr	r1, [sp]
	add	r8, r2
	mov	r2, #1
	add	r3, #1
	add	r9, r2
	str	r3, [sp, #4]
	add	r1, #1
	mov	r3, r9
	str	r1, [sp]
	add	r11, r2
	cmp	r3, #0x1f
	bgt	.L8bc18
	mov	r1, r10
	ldrb	r7, [r1]
	add	r10, r2
	cmp	r7, #0xff
	bne	.L8bb74
.L8bc18:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8bb2c

.thumb_func_start Func_8bc44
	ldr	r3, =iwram_1ebc
	mov	r0, #0xb6
	ldr	r1, [r3]
	lsl	r0, #1
	mov	r2, #0
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	add	r0, #2
	strh	r2, [r3]
	add	r3, r1, r0
	strh	r2, [r3]
	bx	lr
.func_end Func_8bc44

.thumb_func_start Func_8bc9c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r1, [r3]
	lsl	r2, #1
	add	r3, r1, r2
	add	r2, #2
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r2, [r3, r4]
	mov	r4, #0xbd
	lsl	r4, #1
	add	r3, r1, r4
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r0, r2
	add	r0, r3
	add	r0, r2
	mov	r2, #0xbe
	lsl	r2, #1
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r0, r3
	bx	lr
.func_end Func_8bc9c

.thumb_func_start Func_8bd24
	push	{r5, r6, r7, lr}
	ldr	r2, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r2, r1
	ldr	r3, =iwram_1ebc
	ldr	r2, [r2]
	ldr	r6, [r3]
	lsl	r2, #2
	add	r2, #0x14
	ldr	r2, [r6, r2]
	sub	r3, #0x4c
	sub	sp, #0xc
	ldr	r7, [r3]
	mov	r0, #0
	cmp	r2, #0
	beq	.L8bdc2
	ldr	r3, [r2, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r2, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r0, #0x80
	ldrh	r1, [r2, #6]
	lsl	r0, #13
	mov	r2, r5
	bl	Func_447c
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L8bd98
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8bd78
	ldr	r2, =0x1fffff
	add	r3, r2
.L8bd78:
	ldr	r2, [r5, #8]
	asr	r1, r3, #21
	mov	r0, #0x1f
	and	r1, r0
	cmp	r2, #0
	bge	.L8bd88
	ldr	r3, =0x1fffff
	add	r2, r3
.L8bd88:
	asr	r3, r2, #21
	and	r3, r0
	lsl	r3, #5
	add	r3, r1, r3
	ldr	r2, =ewram_20000
	lsl	r3, #2
	add	r1, r3, r2
	b	.L8bdc0
.L8bd98:
	mov	r1, #0x98
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r1, [r3]
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8bdaa
	ldr	r2, =0xfffff
	add	r3, r2
.L8bdaa:
	ldr	r2, [r5, #8]
	asr	r0, r3, #20
	cmp	r2, #0
	bge	.L8bdb6
	ldr	r3, =0xfffff
	add	r2, r3
.L8bdb6:
	asr	r3, r2, #20
	lsl	r3, #7
	add	r3, r0, r3
	lsl	r3, #2
	add	r1, r3
.L8bdc0:
	ldrb	r0, [r1, #2]
.L8bdc2:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8bd24

.thumb_func_start Func_8bde0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x2c]
	bl	_call_via_r0
	mov	r5, r0
	cmp	r5, #0
	beq	.L8bea4
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r2, #1
	mov	r1, #0
	ldrsh	r6, [r5, r1]
	neg	r2, r2
	cmp	r6, r2
	beq	.L8bea4
.L8be16:
	mov	r1, #2
	ldrsh	r3, [r5, r1]
	mov	r8, r3
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	mov	r11, r2
	mov	r2, #6
	ldrsh	r1, [r5, r2]
	mov	r10, r1
	mov	r2, #0xa
	ldrsh	r1, [r5, r2]
	mov	r9, r1
	mov	r2, #0xe
	ldrsh	r1, [r5, r2]
	mov	r3, #0xc
	ldrsh	r0, [r5, r3]
	mov	r3, #8
	ldrsh	r7, [r5, r3]
	str	r1, [sp, #4]
	bl	Func_8d428
	cmp	r0, #0
	beq	.L8be90
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	lsl	r3, r1, #16
	cmp	r2, r3
	blt	.L8be90
	lsl	r3, r7, #16
	cmp	r2, r3
	bge	.L8be90
	ldr	r1, [sp, #0x10]
	lsl	r3, r6, #16
	cmp	r1, r3
	blt	.L8be90
	mov	r2, r10
	lsl	r3, r2, #16
	cmp	r1, r3
	bge	.L8be90
	mov	r1, r11
	ldr	r2, [sp, #8]
	lsl	r3, r1, #16
	cmp	r2, r3
	blt	.L8be90
	mov	r1, r9
	lsl	r3, r1, #16
	cmp	r2, r3
	bge	.L8be90
	ldr	r2, [sp]
	mov	r1, #0xb8
	lsl	r1, #1
	add	r3, r2, r1
	add	r2, sp, #4
	ldrh	r2, [r2]
	mov	r0, #0x7b
	strh	r2, [r3]
	bl	_Func_f9080
	bl	Func_91660
	b	.L8bea4
.L8be90:
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	str	r3, [sp]
	add	r5, #0x10
	mov	r1, #1
	mov	r3, #0
	ldrsh	r6, [r5, r3]
	neg	r1, r1
	cmp	r6, r1
	bne	.L8be16
.L8bea4:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8bde0

.thumb_func_start Func_8bec0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	str	r2, [sp, #0x18]
	mov	r9, r3
	ldr	r3, =iwram_1ebc
	mov	r11, r0
	ldr	r0, [r3]
	sub	r3, #0x4c
	ldr	r3, [r3]
	mov	r10, r1
	ldr	r7, =ewram_240
	mov	r1, #0xfa
	str	r3, [sp, #0x14]
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	str	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r3, [r0, r3]
	mov	r2, #0
	mov	r8, r0
	str	r3, [sp, #0xc]
	str	r2, [sp, #4]
	cmp	r0, #0
	bne	.L8bf02
	b	.L8c2ac
.L8bf02:
	bl	_Func_795fc
	mov	r6, #0
	str	r0, [sp, #8]
	cmp	r6, r0
	bcs	.L8bf2c
	mov	r3, #0xfc
	lsl	r3, #1
	add	r5, sp, #0x1c
	add	r7, r3
.L8bf16:
	ldrb	r0, [r7]
	bl	_Func_77394
	ldrh	r3, [r0, #0x38]
	strh	r3, [r5]
	ldr	r4, [sp, #8]
	add	r6, #1
	add	r7, #1
	add	r5, #2
	cmp	r6, r4
	bcc	.L8bf16
.L8bf2c:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8bf64
	mov	r3, r10
	cmp	r3, #0
	bge	.L8bf44
	ldr	r3, =0x1fffff
	add	r3, r10
.L8bf44:
	asr	r2, r3, #21
	mov	r1, #0x1f
	mov	r3, r9
	and	r2, r1
	cmp	r3, #0
	bge	.L8bf54
	ldr	r3, =0x1fffff
	add	r3, r9
.L8bf54:
	asr	r3, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r1, =ewram_20000
	lsl	r3, #2
	add	r0, r3, r1
	b	.L8bf9e
.L8bf64:
	mov	r2, r11
	cmp	r2, #2
	bhi	.L8bf7c
	lsl	r3, r2, #1
	add	r3, r11
	mov	r4, #0x98
	lsl	r3, #4
	lsl	r4, #1
	ldr	r1, [sp, #0x14]
	add	r3, r4
	ldr	r0, [r1, r3]
	b	.L8bf7e
.L8bf7c:
	ldr	r0, =ewram_10000
.L8bf7e:
	mov	r3, r10
	cmp	r3, #0
	bge	.L8bf88
	ldr	r3, =0xfffff
	add	r3, r10
.L8bf88:
	asr	r2, r3, #20
	mov	r3, r9
	cmp	r3, #0
	bge	.L8bf94
	ldr	r3, =0xfffff
	add	r3, r9
.L8bf94:
	asr	r3, #20
	lsl	r3, #7
	add	r3, r2, r3
	lsl	r3, #2
	add	r0, r3
.L8bf9e:
	mov	r2, #0xdc
	lsl	r2, #1
	add	r2, r8
	mov	r1, #0xde
	ldr	r3, [r2]
	lsl	r1, #1
	ldrb	r6, [r0, #2]
	add	r1, r8
	str	r3, [r1]
	str	r0, [r2]
	cmp	r6, #0
	beq	.L8bfc0
	mov	r0, r10
	ldr	r1, [sp, #0x18]
	mov	r2, r9
	bl	Func_8bde0
.L8bfc0:
	sub	r3, r6, #1
	cmp	r3, #0xee
	bhi	.L8bfce
	mov	r3, #0xb6
	lsl	r3, #1
	add	r3, r8
	strh	r6, [r3]
.L8bfce:
	mov	r3, r6
	sub	r3, #0xfc
	cmp	r3, #2
	bhi	.L8bfde
	mov	r3, #0xb7
	lsl	r3, #1
	add	r3, r8
	strh	r6, [r3]
.L8bfde:
	ldr	r4, =ewram_240
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r4, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8bfee
	b	.L8c17a
.L8bfee:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	bne	.L8bff6
	b	.L8c17a
.L8bff6:
	mov	r0, #0x80
	ldr	r3, [r3, #0x38]
	lsl	r0, #24
	cmp	r3, r0
	bne	.L8c002
	b	.L8c17a
.L8c002:
	ldr	r1, [sp, #0xc]
	ldr	r0, =0x167
	ldr	r5, [r1, #0x30]
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8c012
	lsl	r5, #1
.L8c012:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L8c034
	ldr	r0, [sp, #0xc]
	mov	r1, r5
	add	r0, #8
	bl	Func_8b048
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
	mov	r7, #1
	b	.L8c062
.L8c034:
	mov	r3, r6
	sub	r3, #0xf0
	cmp	r3, #1
	bhi	.L8c04c
	mov	r3, r6
	mov	r0, r6
	add	r3, #0xb1
	mov	r4, r8
	sub	r0, #0xef
	mov	r1, r5
	ldrb	r7, [r4, r3]
	b	.L8c058
.L8c04c:
	mov	r3, #0xd0
	lsl	r3, #1
	add	r3, r8
	mov	r0, #0
	mov	r1, r5
	ldrb	r7, [r3]
.L8c058:
	bl	Func_8b02c
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
.L8c062:
	strh	r0, [r3]
	mov	r3, #0xd8
	ldr	r2, [sp, #0xc]
	lsl	r3, #1
	add	r3, r8
	ldr	r4, =Func_888
	ldr	r0, [r3]
	ldr	r1, [r2, #0x30]
	.call_via r4
	cmp	r7, #0
	bne	.L8c082
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r0, r3, #1
.L8c082:
	mov	r2, #0xda
	lsl	r2, #1
	add	r2, r8
	ldr	r3, [r2]
	add	r0, r3, r0
	ldr	r3, =0xffff
	str	r0, [r2]
	cmp	r0, r3
	ble	.L8c0c2
	mov	r1, r0
	cmp	r0, #0
	bge	.L8c09c
	add	r1, r0, r3
.L8c09c:
	and	r0, r3
	asr	r1, #16
	str	r0, [r2]
	mov	r0, r1
	mov	r1, #0
	bl	Func_8c2dc
	bl	_Func_bf5a8
	cmp	r0, #0
	beq	.L8c0b8
	mov	r0, #0x8b
	bl	_Func_f9080
.L8c0b8:
	bl	Func_91858
	bl	Func_8c3a4
	str	r0, [sp, #4]
.L8c0c2:
	ldr	r4, =ewram_240
	ldr	r0, =0x22e
	add	r3, r4, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L8c140
	cmp	r6, #0xfa
	bne	.L8c140
	mov	r3, #0xde
	lsl	r3, #1
	add	r3, r8
	ldr	r3, [r3]
	ldrb	r3, [r3, #2]
	cmp	r3, #0xfa
	bne	.L8c128
	ldr	r2, =0x232
	ldr	r3, [sp, #0xc]
	add	r1, r4, r2
	ldr	r2, [r3, #0x30]
	cmp	r2, #0
	bge	.L8c0f2
	ldr	r0, =0xffff
	add	r2, r0
.L8c0f2:
	ldrh	r3, [r1]
	asr	r2, #16
	add	r3, r2
	strh	r3, [r1]
	b	.L8c140

	.pool_aligned

.L8c128:
	mov	r1, #0x8b
	lsl	r1, #2
	add	r3, r4, r1
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r2, r3, #16
	ldr	r0, =0x232
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	add	r3, r4, r0
	strh	r2, [r3]
.L8c140:
	mov	r2, #0x91
	lsl	r2, #2
	add	r1, r4, r2
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L8c17a
	ldr	r0, =0x23e
	add	r3, r4, r0
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #2
	beq	.L8c17a
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0, #0x30]
	sub	r3, r2, r3
	str	r3, [r1]
	cmp	r3, #0
	bgt	.L8c17a
	mov	r3, #1
	mov	r2, #0xbf
	str	r3, [r1]
	lsl	r2, #1
	add	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.L8c17a
	ldr	r3, =0x2096
	strh	r3, [r2]
.L8c17a:
	ldr	r2, =0x22e
	add	r3, r4, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.L8c1d0
	ldr	r1, =0x232
	add	r5, r4, r1
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	sub	r2, #2
	add	r6, r4, r2
	ldrh	r0, [r6]
	lsl	r2, r0, #16
	asr	r1, r2, #16
	lsr	r2, #31
	add	r1, r2
	lsl	r3, #16
	asr	r3, #16
	asr	r1, #1
	cmp	r3, r1
	bne	.L8c1b6
	ldr	r0, [sp, #0x10]
	ldr	r1, =0x101
	str	r4, [sp]
	bl	Func_93874
	ldrh	r0, [r6]
	ldr	r4, [sp]
.L8c1b6:
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	lsl	r3, r0, #16
	asr	r3, #16
	cmp	r2, r3
	bne	.L8c1d0
	mov	r1, #0x80
	lsl	r1, #1
	ldr	r0, [sp, #0x10]
	str	r4, [sp]
	bl	Func_93874
	ldr	r4, [sp]
.L8c1d0:
	ldr	r1, =0x232
	mov	r2, #0x8b
	lsl	r2, #2
	add	r0, r4, r1
	add	r3, r4, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r1, #0
	ldrsh	r2, [r0, r1]
	cmp	r2, r3
	blt	.L8c20e
	mov	r2, #0x8c
	lsl	r2, #2
	add	r3, r4, r2
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r3, #0
	strh	r3, [r0]
	mov	r0, #0xff
	mov	r3, #0x80
	lsl	r3, #1
	and	r0, r1
	neg	r0, r0
	and	r1, r3
	str	r4, [sp]
	bl	Func_8c30c
	ldr	r3, [sp, #4]
	add	r3, #1
	str	r3, [sp, #4]
	ldr	r4, [sp]
.L8c20e:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.L8c2ac
	mov	r3, #0xc2
	lsl	r3, #1
	mov	r2, #0
	add	r3, r8
	strh	r2, [r3]
	mov	r3, #0xc3
	lsl	r3, #1
	add	r3, r8
	strh	r2, [r3]
	ldr	r1, [sp, #0xc]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r1, #0x28]
	mov	r1, #0x81
	lsl	r1, #1
	ldr	r0, [sp, #0x10]
	str	r4, [sp]
	bl	Func_93874
	ldr	r2, [sp, #8]
	mov	r6, #0
	ldr	r4, [sp]
	cmp	r6, r2
	bcs	.L8c2ac
	mov	r3, #0xc1
	lsl	r3, #1
	mov	r7, #0xc3
	mov	r0, #0xfc
	add	r3, r8
	lsl	r7, #1
	lsl	r0, #1
	mov	r10, r3
	add	r7, r8
	add	r5, r4, r0
.L8c258:
	ldrb	r0, [r5]
	bl	_Func_77394
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	ble	.L8c26e
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	b	.L8c2a2
.L8c26e:
	add	r3, sp, #0x1c
	lsl	r2, r6, #1
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8c2a2
	mov	r1, #0xc2
	lsl	r1, #1
	add	r1, r8
	ldrh	r3, [r1]
	add	r2, r3, #1
	strh	r2, [r1]
	lsl	r3, #16
	mov	r1, #0xc4
	lsl	r1, #1
	ldrb	r2, [r5]
	asr	r3, #15
	add	r3, r1
	mov	r4, r8
	strh	r2, [r4, r3]
	ldr	r3, =0xffff
	mov	r1, r10
	strh	r3, [r1]
	ldr	r3, =0x131
	add	r2, r0, r3
	mov	r3, #0
	strb	r3, [r2]
.L8c2a2:
	ldr	r4, [sp, #8]
	add	r6, #1
	add	r5, #1
	cmp	r6, r4
	bcc	.L8c258
.L8c2ac:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8bec0

.thumb_func_start Func_8c2dc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	_Func_795fc
	cmp	r0, #0
	ble	.L8c302
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L8c2f2:
	ldrb	r0, [r6]
	mov	r1, r7
	sub	r5, #1
	add	r6, #1
	bl	_Func_783dc
	cmp	r5, #0
	bne	.L8c2f2
.L8c302:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8c2dc

.thumb_func_start Func_8c30c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r8, r1
	cmp	r5, #0
	bge	.L8c340
	ldr	r0, =0x1ff
	mov	r1, #0
	bl	Func_91220
	mov	r0, #4
	bl	Func_91254
	mov	r2, #0xa
	neg	r2, r2
	cmp	r5, r2
	bge	.L8c338
	mov	r0, #0x86
	bl	_Func_f9080
	b	.L8c346
.L8c338:
	mov	r0, #0x85
	bl	_Func_f9080
	b	.L8c346
.L8c340:
	mov	r0, #0x7e
	bl	_Func_f9080
.L8c346:
	bl	_Func_795fc
	cmp	r0, #0
	ble	.L8c390
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r6, r0
.L8c358:
	ldrb	r0, [r7]
	bl	_Func_77394
	mov	r3, r8
	mov	r1, r5
	cmp	r3, #0
	beq	.L8c382
	mov	r2, #0x34
	ldrsh	r3, [r0, r2]
	mov	r1, #0x64
	mov	r0, r5
	mul	r0, r3
	bl	Func_af0_from_thumb
	mov	r1, r0
	cmp	r1, #0
	bne	.L8c382
	mov	r1, r5
	cmp	r1, #0
	bge	.L8c382
	neg	r1, r1
.L8c382:
	ldrb	r0, [r7]
	sub	r6, #1
	bl	_Func_783a4
	add	r7, #1
	cmp	r6, #0
	bne	.L8c358
.L8c390:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8c30c

.thumb_func_start Func_8c3a4
	push	{r5, r6, r7, lr}
	mov	r7, #0
	bl	_Func_795fc
	cmp	r7, r0
	bge	.L8c420
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L8c3ba:
	ldrb	r0, [r6]
	bl	_Func_77394
	ldr	r2, =0x131
	add	r3, r0, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #1
	beq	.L8c3d4
	cmp	r3, #2
	beq	.L8c3f2
	b	.L8c410
.L8c3d4:
	mov	r3, #0x34
	ldrsh	r0, [r0, r3]
	mov	r1, #0x14
	add	r0, #0xa
	bl	Func_af0_from_thumb
	neg	r1, r0
	cmp	r1, #0
	bne	.L8c3ea
	mov	r1, #1
	neg	r1, r1
.L8c3ea:
	cmp	r7, #0
	bgt	.L8c412
	mov	r7, #1
	b	.L8c412
.L8c3f2:
	mov	r2, #0x34
	ldrsh	r0, [r0, r2]
	mov	r1, #0xa
	add	r0, #5
	bl	Func_af0_from_thumb
	neg	r1, r0
	cmp	r1, #0
	bne	.L8c408
	mov	r1, #1
	neg	r1, r1
.L8c408:
	cmp	r7, #1
	bgt	.L8c412
	mov	r7, #2
	b	.L8c412
.L8c410:
	mov	r1, #0
.L8c412:
	ldrb	r0, [r6]
	sub	r5, #1
	bl	_Func_783a4
	add	r6, #1
	cmp	r5, #0
	bne	.L8c3ba
.L8c420:
	cmp	r7, #0
	beq	.L8c438
	ldr	r0, =0x1ff
	mov	r1, #0
	bl	Func_91220
	mov	r0, #4
	bl	Func_91254
	mov	r0, #0x85
	bl	_Func_f9080
.L8c438:
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8c3a4

.thumb_func_start Func_8c44c
	push	{r5, lr}
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	Func_48f4
	mov	r1, #0xcf
	mov	r5, r0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L8c4aa
	mov	r1, #0xa8
	lsl	r1, #3
	mov	r0, #0x1f
	bl	Func_48f4
	cmp	r0, #0
	beq	.L8c498
	ldr	r3, =0x53d
	add	r4, r0, r3
	mov	r3, #0
	ldrsb	r3, [r4, r3]
	cmp	r3, #0
	beq	.L8c498
	ldr	r1, =0x53a
	mov	r2, #0
	add	r3, r0, r1
	add	r1, #1
	strb	r2, [r3]
	add	r3, r0, r1
	strb	r2, [r3]
	ldr	r3, =0x53c
	add	r1, r0, r3
	mov	r3, #1
	strb	r3, [r1]
	strb	r2, [r4]
.L8c498:
	mov	r1, #0xf0
	lsl	r1, #1
	add	r3, r5, r1
	ldr	r3, [r3]
	mov	r2, #1
	add	r3, #0x5b
	strb	r2, [r3]
	bl	_Func_11590
.L8c4aa:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8c44c

.thumb_func_start Func_8c4c0
	push	{r5, lr}
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	Func_48f4
	mov	r2, #0xcf
	lsl	r2, #1
	mov	r5, r0
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L8c4ec
	bl	_Func_11644
	mov	r2, #0xf0
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r3, [r3]
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
.L8c4ec:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8c4c0

.thumb_func_start Func_8c4f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =0xccc
	mov	r0, #0x1b
	sub	sp, #0x10
	bl	Func_48f4
	mov	r7, #0
	mov	r8, r0
	add	r0, sp, #0xc
	str	r7, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r8
	ldr	r2, =0x85000333
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x103
	bl	_Func_79374
	ldr	r5, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r4, #0xe4
	ldrh	r2, [r3]
	lsl	r4, #1
	add	r3, r5, r4
	strh	r2, [r3]
	add	r1, #2
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r4, #2
	add	r2, r5, r4
	strh	r3, [r2]
	add	r1, #0xc
	ldr	r3, =0xffff
	add	r2, r5, r1
	strh	r3, [r2]
	mov	r3, #0xe8
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #1
	neg	r3, r3
	add	r4, #8
	strh	r3, [r2]
	add	r1, #6
	add	r2, r5, r4
	strh	r3, [r2]
	add	r2, r5, r1
	strh	r3, [r2]
	bl	Func_40e8
	mov	r0, #0
	bl	Func_95778
	mov	r2, #0xed
	lsl	r2, #1
	add	r3, r5, r2
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	ldr	r3, =1
	cmp	r0, r3
	bne	.L8c598
	bl	_Func_109e8
	mov	r1, #0x89
	lsl	r1, #2
	add	r2, r5, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	mov	r6, #3
	bl	Func_8ace0
	b	.L8c5a4
.L8c598:
	bl	_Func_fb38
	mov	r0, #1
	mov	r6, #2
	bl	Func_8ace0
.L8c5a4:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	strh	r6, [r3]
	mov	r0, r6
	bl	_Func_c004
	bl	_Func_15f30
	bl	Func_8bc44
	ldr	r5, =__start_overlay
	ldr	r0, [r5, #0x24]
	bl	_call_via_r0
	mov	r2, r8
	str	r0, [r2, #0x10]
	bl	Func_8cf78
	ldr	r0, [r5, #0x1c]
	bl	_call_via_r0
	bl	Func_8b674
	ldr	r0, =0x109
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8c5e2
	bl	Func_8bb2c
.L8c5e2:
	ldr	r5, =ewram_240
	mov	r4, #0x8d
	lsl	r4, #2
	add	r3, r5, r4
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L8c5f6
	bl	Func_95680
.L8c5f6:
	cmp	r6, #3
	bne	.L8c614
	bl	_Func_113e4
	mov	r2, #0xee
	lsl	r2, #1
	mov	r4, #0xf2
	add	r3, r5, r2
	lsl	r4, #1
	ldr	r0, [r3]
	add	r3, r5, r4
	ldr	r1, [r3]
	bl	_Func_10e14
	b	.L8c618
.L8c614:
	bl	_Func_fe9c
.L8c618:
	bl	Func_8e9c0
	bl	Func_91174
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	Func_91200
	mov	r2, #0xe0
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x80
	mov	r1, r2
	lsl	r3, #1
	str	r1, [sp, #8]
	str	r3, [r2]
	add	r3, #0xc8
	add	r3, r8
	mov	r4, #0x10
	mov	r7, #0xe3
	mov	r2, #0xd8
	str	r4, [r3]
	mov	r10, r3
	lsl	r7, #1
	ldr	r3, =0x199
	lsl	r2, #1
	mov	r6, #0
	add	r7, r8
	add	r2, r8
	strh	r6, [r7]
	str	r3, [r2]
	add	r3, #0x1b
	add	r3, r8
	ldr	r5, =ewram_240
	ldr	r1, =0x23e
	str	r6, [r3]
	add	r3, r5, r1
	mov	r11, r4
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	cmp	r3, #2
	bne	.L8c678
	mov	r0, #0xa2
	str	r6, [r2]
	lsl	r0, #1
	bl	_Func_79358
.L8c678:
	mov	r3, #0xde
	ldr	r1, =0x109
	lsl	r3, #1
	ldr	r2, =ewram_10000
	add	r3, r8
	mov	r9, r1
	str	r2, [r3]
	mov	r0, r9
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8c6bc
	bl	Func_8b1d8
	mov	r2, #0x8b
	lsl	r2, #2
	ldr	r1, =0x22e
	add	r3, r5, r2
	mov	r4, r11
	strh	r4, [r3]
	add	r3, r5, r1
	strh	r6, [r3]
	mov	r3, #0x8c
	lsl	r3, #2
	add	r2, r5, r3
	ldr	r4, =0x24a
	mov	r3, #1
	strh	r3, [r2]
	ldr	r3, =0xffff
	add	r2, r5, r4
	add	r1, #0x1e
	strh	r3, [r2]
	add	r3, r5, r1
	strh	r6, [r3]
.L8c6bc:
	bl	Func_99810
	ldr	r2, =0xcc8
	ldr	r3, =0xffff
	add	r2, r8
	strh	r3, [r2]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #4]
	bl	_call_via_r0
	mov	r3, #0xb8
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.L8c6ec
	mov	r7, r0
	strh	r6, [r3]
	b	.L8ce1c
.L8c6e4:
	mov	r3, #0
	mov	r7, r5
	strh	r3, [r1]
	b	.L8ce1c
.L8c6ec:
	mov	r0, r9
	bl	_Func_79374
	bl	Func_8bc9c
	cmp	r0, #0
	bne	.L8c794
	ldrh	r5, [r7]
	cmp	r5, #0
	bne	.L8c72e
	ldr	r3, [sp, #8]
	mov	r4, r10
	ldr	r0, [r3]
	ldr	r1, [r4]
	bl	Func_8fefc
	mov	r3, #1
	strh	r3, [r7]
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r5, [r3]
	bl	Func_94428
	cmp	r0, #0
	bne	.L8c72e
	mov	r1, r10
	ldr	r0, [r1]
	add	r0, #1
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	bl	Func_30f8
.L8c72e:
	ldr	r5, =0x12f
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8c750
	mov	r0, r5
	bl	_Func_79374
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	bl	_Func_1c34c
.L8c750:
	ldr	r5, =ewram_240
	mov	r1, #0x8d
	lsl	r1, #2
	add	r6, r5, r1
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	cmp	r0, #0
	beq	.L8c76a
	mov	r1, #1
	bl	Func_95778
	mov	r3, #0
	strh	r3, [r6]
.L8c76a:
	mov	r3, #0x8f
	lsl	r3, #2
	add	r5, r3
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.L8c794
	bl	Func_8c44c
	ldrh	r0, [r5]
	bl	Func_919d8
	cmp	r0, #0
	bne	.L8c78c
	ldrh	r0, [r5]
	mov	r1, #0
	bl	Func_91a58
.L8c78c:
	bl	Func_8c4c0
	mov	r3, #0
	strh	r3, [r5]
.L8c794:
	ldr	r4, =ewram_240
	mov	r1, #0
	mov	r9, r4
	mov	r11, r1
.L8c79c:
	mov	r0, #0x82
	lsl	r0, #1
	bl	_Func_79358
	ldr	r2, =ewram_434
	ldr	r3, [r2]
	lsl	r3, #2
	mov	r4, r8
	add	r3, #0x14
	ldr	r3, [r4, r3]
	mov	r10, r3
	mov	r0, r10
	bl	_Func_c4ac
	mov	r1, r10
	mov	r2, #0xee
	ldr	r3, [r1, #8]
	lsl	r2, #1
	add	r2, r9
	str	r3, [r2]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r3, r9
	mov	r2, r11
	str	r2, [r3]
	mov	r2, #0xf2
	ldr	r3, [r1, #0x10]
	lsl	r2, #1
	add	r2, r9
	str	r3, [r2]
	mov	r2, #0xf4
	ldrh	r3, [r1, #6]
	lsl	r2, #1
	add	r2, r9
	str	r3, [r2]
	mov	r3, r10
	add	r3, #0x22
	ldrb	r3, [r3]
	ldr	r4, =ewram_42c
	strh	r3, [r4]
	b	.L8cd76

	.pool_aligned

.L8c838:
	mov	r1, #0xb8
	lsl	r1, #1
	add	r1, r8
	mov	r2, #0
	ldrsh	r5, [r1, r2]
	cmp	r5, #0
	beq	.L8c848
	b	.L8c6e4
.L8c848:
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0
	ldrsh	r6, [r2, r3]
	cmp	r6, #0
	bne	.L8c858
	b	.L8ca0e
.L8c858:
	ldr	r3, =0xcb6
	ldr	r4, .L8c88c	@ 1
	add	r3, r8
	strh	r4, [r3]
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L8c86e
	b	.L8c9d4
.L8c86e:
	bl	Func_91660
	bl	Func_8c44c
	mov	r3, #0xc2
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	mov	r6, #0
	cmp	r5, r3
	bcs	.L8c8c0
	mov	r5, #0xc4
	lsl	r5, #1
	b	.L8c894

	.align	2, 0
.L8c88c:
	.word	1
	.pool

.L8c894:
	mov	r0, r10
	mov	r1, #0x16
	bl	_Func_c300
	mov	r1, r8
	ldrsh	r0, [r5, r1]
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x91a
	mov	r1, #1
	bl	_Func_1776c
	mov	r3, #0xc2
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r6, #1
	add	r5, #2
	cmp	r6, r3
	bcc	.L8c894
.L8c8c0:
	mov	r3, #0xc3
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L8c8d0
	b	.L8c9c0
.L8c8d0:
	ldr	r2, =ewram_434
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L8c900
	mov	r0, #0x20
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8c8ec
	mov	r0, r10
	mov	r1, #0x15
	bl	_Func_c300
	b	.L8c908
.L8c8ec:
	mov	r0, r10
	mov	r1, #0x25
	bl	_Func_c300
	b	.L8c908

	.pool_aligned

.L8c900:
	mov	r0, r10
	mov	r1, #0x13
	bl	_Func_c300
.L8c908:
	mov	r0, #0x3b
	bl	_Func_f9080
	mov	r1, #1
	ldr	r0, =0x91b
	bl	_Func_1776c
	ldr	r3, =ewram_434
	ldr	r0, [r3]
	bl	_Func_77394
	ldr	r4, .L8c944	@ 1
	mov	r6, r0
	strh	r4, [r6, #0x38]
	mov	r1, #1
	lsl	r5, r1, #14
	mov	r0, r5
	mov	r2, #0x34
	ldrsh	r1, [r6, r2]
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8c950
	mov	r5, #0
	cmp	r0, #0
	blt	.L8c950
	mov	r5, r0
	b	.L8c950

	.align	2, 0
.L8c944:
	.word	1
	.pool

.L8c950:
	lsl	r3, r5, #16
	strh	r5, [r6, #0x14]
	cmp	r3, #0
	bne	.L8c964
	mov	r4, #0x38
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	beq	.L8c964
	ldr	r1, =1
	strh	r1, [r6, #0x14]
.L8c964:
	mov	r2, #0x3a
	ldrsh	r0, [r6, r2]
	mov	r3, #0x36
	ldrsh	r1, [r6, r3]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L8c988
	mov	r3, #0
	cmp	r0, #0
	blt	.L8c988
	mov	r3, r0
	b	.L8c988

	.pool_aligned

.L8c988:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L8c99c
	mov	r4, #0x3a
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	beq	.L8c99c
	ldr	r1, =1
	strh	r1, [r6, #0x16]
.L8c99c:
	mov	r3, #0xe2
	lsl	r3, #1
	add	r3, r9
	ldrh	r2, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r9
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r2, =ewram_402
	strh	r3, [r2]
	bl	Func_8c4c0
	ldr	r7, =0x3e7
	b	.L8ce1c
.L8c9c0:
	bl	Func_8c4c0
	b	.L8c9fa

	.pool_aligned

.L8c9d4:
	ldr	r3, =0xfffffc88
	cmp	r0, r3
	bne	.L8c9e6
	bl	Func_91660
	ldr	r0, =0x1b
	bl	Func_9c138
	b	.L8c9fa
.L8c9e6:
	ldr	r4, =0xfffffc87
	cmp	r0, r4
	bne	.L8c9f6
	bl	Func_91660
	bl	Func_9c3a4
	b	.L8c9fa
.L8c9f6:
	bl	Func_8d7d8
.L8c9fa:
	ldr	r3, =0xcb6
	mov	r1, r11
	add	r3, r8
	strh	r1, [r3]
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, r11
	strh	r2, [r3]
	b	.L8cd76
.L8ca0e:
	mov	r5, #0xbe
	lsl	r5, #1
	add	r5, r8
	mov	r3, #0
	ldrsh	r7, [r5, r3]
	cmp	r7, #0
	beq	.L8ca5e
	str	r1, [sp, #4]
	bl	Func_91660
	bl	Func_8ba38
	ldr	r2, =0x21e
	ldr	r3, =0xffff
	add	r2, r9
	strh	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r3, #0xff
	add	r2, r9
	lsl	r3, #1
	strh	r3, [r2]
	ldr	r4, =ewram_402
	ldrh	r3, [r5]
	ldr	r1, [sp, #4]
	strh	r3, [r4]
	ldr	r3, =0x3e7
	strh	r3, [r1]
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	bl	Func_941e0
	mov	r3, #0xd4
	lsl	r3, #1
	ldr	r2, =ewram_478
	add	r3, r8
	str	r6, [r3]
	strh	r6, [r5]
	str	r6, [r2]
	b	.L8cd76
.L8ca5e:
	mov	r3, #0xb6
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r6, [r3, r4]
	cmp	r6, #0
	beq	.L8ca86
	ldr	r5, =0xcb6
	ldr	r1, .L8ca9c	@ 1
	add	r5, r8
	strh	r1, [r5]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	str	r3, [sp]
	bl	Func_8d828
	ldr	r3, [sp]
	strh	r7, [r5]
	strh	r7, [r3]
	b	.L8cd76
.L8ca86:
	mov	r5, #0xb7
	lsl	r5, #1
	add	r5, r8
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	cmp	r0, #0
	beq	.L8cac4
	bl	Func_8d8f0
	strh	r6, [r5]
	b	.L8cd76

	.align	2, 0
.L8ca9c:
	.word	1
	.pool

.L8cac4:
	mov	r3, #0xba
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	cmp	r3, #0
	beq	.L8cb4c
	bl	_Func_1c428
	ldr	r1, =ewram_434
	ldr	r0, [r1]
	bl	Func_8ddec
	mov	r2, #1
	mov	r5, r0
	neg	r2, r2
	mov	r6, #0
	cmp	r5, r2
	beq	.L8caf6
	bl	Func_8d5a4
	cmp	r0, #0
	beq	.L8caf4
	mov	r0, #1
.L8caf4:
	mov	r6, r0
.L8caf6:
	cmp	r6, #0
	beq	.L8cb1c
	ldr	r3, .L8cb14	@ 0x1000
	orr	r5, r3
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r8
	strh	r5, [r3]
	mov	r3, #0xb9
	lsl	r3, #1
	add	r3, r8
	mov	r4, r11
	strh	r4, [r3]
	b	.L8cb44

	.align	2, 0
.L8cb14:
	.word	0x1000
	.pool

.L8cb1c:
	bl	Func_8ce74
	mov	r6, r0
	cmp	r6, #0
	beq	.L8cb3a
	mov	r3, #0xbd
	lsl	r3, #1
	add	r3, r8
	strh	r6, [r3]
	mov	r3, #0xb9
	lsl	r3, #1
	add	r3, r8
	mov	r1, r11
	strh	r1, [r3]
	b	.L8cb44
.L8cb3a:
	mov	r3, #0xb9
	lsl	r3, #1
	ldr	r2, =1
	add	r3, r8
	strh	r2, [r3]
.L8cb44:
	mov	r3, #0xba
	b	.L8cd6e

	.pool_aligned

.L8cb4c:
	mov	r3, #0xb9
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r7, [r3, r1]
	cmp	r7, #0
	beq	.L8cbe4
	bl	_Func_1c428
	bl	Func_91660
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_8c44c
	mov	r0, #0x83
	lsl	r0, #1
	bl	_Func_79358
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8cb98
	ldr	r1, =iwram_1ae8
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L8cb98
	ldr	r3, [r1]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L8cb98
	bl	_Func_291e4
	b	.L8cbbe
.L8cb98:
	ldr	r0, =0x107
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8cbae
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0xfa
	strh	r3, [r2]
	b	.L8cbbe
.L8cbae:
	mov	r5, #0xcc
	lsl	r5, #4
	add	r5, r8
	strh	r0, [r5]
	bl	_Func_1c244
	ldr	r2, .L8cbd4	@ 1
	strh	r2, [r5]
.L8cbbe:
	bl	Func_8c4c0
	mov	r0, #0x83
	lsl	r0, #1
	bl	_Func_79374
	bl	_Func_77c10
	mov	r3, #0xb9
	b	.L8cd6e

	.align	2, 0
.L8cbd4:
	.word	1
	.pool

.L8cbe4:
	mov	r5, #0xbc
	lsl	r5, #1
	add	r5, r8
	mov	r1, #0
	ldrsh	r6, [r5, r1]
	cmp	r6, #0
	beq	.L8cc02
	bl	Func_8c44c
	ldrh	r3, [r5]
	ldr	r0, =0xfff
	and	r0, r3
	bl	Func_8d5dc
	b	.L8cc42
.L8cc02:
	mov	r5, #0xbd
	lsl	r5, #1
	add	r5, r8
	mov	r2, #0
	ldrsh	r7, [r5, r2]
	cmp	r7, #0
	beq	.L8cc24
	bl	Func_8c44c
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	Func_8d9a4
	b	.L8cc6e

	.pool_aligned

.L8cc24:
	mov	r5, #0xbf
	lsl	r5, #1
	add	r5, r8
	mov	r4, #0
	ldrsh	r6, [r5, r4]
	cmp	r6, #0
	beq	.L8cc4a
	bl	_Func_1c428
	bl	Func_8c44c
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	bl	Func_8e680
.L8cc42:
	bl	Func_8c4c0
	strh	r7, [r5]
	b	.L8cd76
.L8cc4a:
	mov	r5, #0xc0
	lsl	r5, #1
	add	r5, r8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L8cc76
	bl	Func_8c44c
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	mov	r3, #0xcd
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	bl	Func_8e23c
.L8cc6e:
	bl	Func_8c4c0
	strh	r6, [r5]
	b	.L8cd76
.L8cc76:
	mov	r3, #0xbb
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L8cd76
	mov	r0, #0x6f
	bl	_Func_f9080
	bl	Func_91660
	bl	Func_8c44c
	mov	r0, #0x83
	lsl	r0, #1
	bl	_Func_79358
	ldr	r1, =iwram_1f54
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.L8ccb4
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L8ccb4
	bl	_Func_28f98
	b	.L8cd60
.L8ccb4:
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.L8ccce
	ldr	r3, =iwram_1ae8
	mov	r2, #0x80
	ldr	r3, [r3]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L8ccce
	bl	Func_8d0c8
	b	.L8cd60
.L8ccce:
	ldr	r0, =0x107
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8cce4
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0xfa
	strh	r3, [r2]
	b	.L8cd60
.L8cce4:
	bl	Func_8e118
	bl	_Func_1c428
	bl	_Func_f9594
	ldr	r3, =0x21e
	add	r3, r9
	strh	r0, [r3]
	mov	r0, #0xbf
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8cd58
	ldr	r3, =iwram_1e68
	mov	r2, #0x80
	ldr	r5, [r3]
	ldr	r1, =iwram_1810
	mov	r0, #0
	lsl	r2, #2
.L8cd0e:
	ldrb	r3, [r1]
	add	r1, #1
	cmp	r3, #0xff
	bne	.L8cd18
	add	r0, #1
.L8cd18:
	sub	r2, #1
	cmp	r2, #0
	bne	.L8cd0e
	mov	r3, r0
	sub	r3, #0x88
	cmp	r3, #0
	bge	.L8cd30
	ldr	r2, .L8cd3c	@ 1
	mov	r0, #1
	strh	r2, [r5, #4]
	bl	Func_30f8
.L8cd30:
	mov	r0, #0
	bl	_Func_29504
	mov	r3, r11
	strh	r3, [r5, #4]
	b	.L8cd60

	.align	2, 0
.L8cd3c:
	.word	1
	.pool

.L8cd58:
	ldr	r0, =0xc2f
	mov	r1, #1
	bl	_Func_1776c
.L8cd60:
	bl	Func_8c4c0
	mov	r0, #0x83
	lsl	r0, #1
	bl	_Func_79374
	mov	r3, #0xbb
.L8cd6e:
	lsl	r3, #1
	add	r3, r8
	mov	r4, r11
	strh	r4, [r3]
.L8cd76:
	bl	Func_8bc9c
	cmp	r0, #0
	beq	.L8cd80
	b	.L8c838
.L8cd80:
	mov	r0, #0x82
	lsl	r0, #1
	bl	_Func_79374
	ldr	r1, =ewram_434
	ldr	r3, [r1]
	lsl	r3, #2
	add	r3, #0x14
	mov	r4, r8
	ldr	r3, [r4, r3]
	ldr	r2, =ewram_240
	mov	r10, r3
	cmp	r3, #0
	beq	.L8cdd8
	mov	r1, #0xf9
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.L8cdb0
	mov	r0, r10
	bl	_Func_c46c
	b	.L8cdd8
.L8cdb0:
	cmp	r3, #1
	bne	.L8cdbc
	mov	r0, r10
	bl	_Func_c47c
	b	.L8cdd8
.L8cdbc:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L8cdd2
	mov	r0, r10
	bl	_Func_c49c
	b	.L8cdd8
.L8cdd2:
	mov	r0, r10
	bl	_Func_c48c
.L8cdd8:
	ldr	r5, =ewram_434
.L8cdda:
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r5]
	lsl	r3, #2
	add	r3, #0x14
	mov	r4, r8
	ldr	r3, [r4, r3]
	mov	r10, r3
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8cdfe
	ldr	r0, =0x163
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8ce12
.L8cdfe:
	mov	r3, r10
	add	r3, #0x22
	mov	r2, r10
	mov	r4, r10
	ldrb	r0, [r3]
	ldr	r1, [r2, #8]
	ldr	r3, [r4, #0x10]
	ldr	r2, [r2, #0xc]
	bl	Func_8bec0
.L8ce12:
	bl	Func_8bc9c
	cmp	r0, #0
	beq	.L8cdda
	b	.L8c79c
.L8ce1c:
	mov	r6, #0xe3
	lsl	r6, #1
	add	r6, r8
	ldrh	r3, [r6]
	cmp	r3, #0
	beq	.L8ce46
	mov	r3, #0xe0
	mov	r5, #0xe4
	lsl	r3, #1
	lsl	r5, #1
	add	r3, r8
	add	r5, r8
	ldr	r0, [r3]
	ldr	r1, [r5]
	bl	Func_901c0
	mov	r3, #0
	strh	r3, [r6]
	ldr	r0, [r5]
	bl	Func_30f8
.L8ce46:
	mov	r0, #0x1b
	bl	Func_2dd8
	mov	r0, r7
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8c4f8

.thumb_func_start Func_8ce74
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r0, #0
	mov	r10, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	Func_8ba1c
	ldr	r3, =iwram_1ebc
	ldr	r6, [r3]
	sub	r3, #0x4c
	ldr	r3, [r3]
	mov	r7, r0
	mov	r8, r3
	cmp	r7, #0
	beq	.L8cf54
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	mov	r0, #0x80
	lsl	r0, #13
	mov	r2, r5
	ldrh	r1, [r7, #6]
	bl	Func_447c
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8cef2
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8ced2
	ldr	r1, =0x1fffff
	add	r3, r1
.L8ced2:
	asr	r2, r3, #21
	ldr	r3, [r5, #8]
	mov	r1, #0x1f
	and	r2, r1
	cmp	r3, #0
	bge	.L8cee2
	ldr	r0, =0x1fffff
	add	r3, r0
.L8cee2:
	asr	r3, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r2, =ewram_20000
	lsl	r3, #2
	add	r1, r3, r2
	b	.L8cf1a
.L8cef2:
	mov	r3, #0x98
	lsl	r3, #1
	add	r3, r8
	ldr	r1, [r3]
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8cf04
	ldr	r0, =0xfffff
	add	r3, r0
.L8cf04:
	asr	r2, r3, #20
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L8cf10
	ldr	r0, =0xfffff
	add	r3, r0
.L8cf10:
	asr	r3, #20
	lsl	r3, #7
	add	r3, r2, r3
	lsl	r3, #2
	add	r1, r3
.L8cf1a:
	ldrb	r6, [r1, #2]
	mov	r3, r6
	sub	r3, #0xf2
	cmp	r3, #5
	bhi	.L8cf46
	mov	r3, r7
	add	r3, #0x22
	ldr	r2, [r5, #8]
	ldrb	r0, [r3]
	ldr	r1, [r5]
	bl	_Func_11f54
	mov	r2, r0
	ldr	r0, [r7, #0xc]
	cmp	r2, r0
	blt	.L8cf54
	mov	r1, #0x80
	lsl	r1, #15
	add	r3, r0, r1
	cmp	r2, r3
	bgt	.L8cf54
	b	.L8cf52
.L8cf46:
	mov	r0, #3
	mov	r1, r6
	bl	Func_8d48c
	cmp	r0, #0
	beq	.L8cf54
.L8cf52:
	mov	r10, r6
.L8cf54:
	mov	r0, r10
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8ce74

.thumb_func_start Func_8cf78
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	mov	r0, #0xe1
	ldr	r7, [r3]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0xc]
	mov	r8, r1
	bl	_call_via_r0
	mov	r6, #1
	mov	r3, #0
	mov	r5, r0
	mov	r10, r3
	neg	r6, r6
	b	.L8cfa8
.L8cfa6:
	add	r5, #0x18
.L8cfa8:
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	cmp	r3, r6
	beq	.L8cfc8
	cmp	r3, r8
	bne	.L8cfa6
	mov	r1, #2
	ldrsh	r0, [r5, r1]
	cmp	r0, r6
	beq	.L8cfc4
	bl	_Func_79338
	cmp	r0, #0
	beq	.L8cfa6
.L8cfc4:
	mov	r2, #1
	mov	r10, r2
.L8cfc8:
	mov	r3, r10
	cmp	r3, #0
	bne	.L8cfd8
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0xc]
	bl	_call_via_r0
	mov	r5, r0
.L8cfd8:
	ldr	r0, =0x109
	bl	_Func_79338
	cmp	r0, #0
	bne	.L8d020
	ldr	r1, =ewram_240
	mov	r4, #0xee
	lsl	r4, #1
	add	r2, r1, r4
	mov	r4, #4
	ldrsh	r3, [r5, r4]
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r2, r1, r3
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xf2
	lsl	r3, #1
	add	r2, r1, r3
	mov	r4, #8
	ldrsh	r3, [r5, r4]
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xf4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r4, #0xf6
	ldrh	r3, [r5, #0xa]
	lsl	r4, #1
	str	r3, [r2]
	add	r3, r1, r4
	strh	r0, [r3]
.L8d020:
	mov	r1, #1
	mov	r0, #0xe
	ldrsh	r3, [r5, r0]
	neg	r1, r1
	cmp	r3, r1
	beq	.L8d036
	mov	r6, r7
	add	r6, #0xec
	lsl	r3, #16
	str	r3, [r6]
	b	.L8d03a
.L8d036:
	mov	r6, r7
	add	r6, #0xec
.L8d03a:
	mov	r2, #0x10
	ldrsh	r3, [r5, r2]
	cmp	r3, r1
	beq	.L8d04c
	mov	r4, r7
	add	r4, #0xf0
	lsl	r3, #16
	str	r3, [r4]
	b	.L8d050
.L8d04c:
	mov	r4, r7
	add	r4, #0xf0
.L8d050:
	mov	r0, #0x12
	ldrsh	r3, [r5, r0]
	cmp	r3, r1
	beq	.L8d062
	mov	r2, r7
	add	r2, #0xf4
	lsl	r3, #16
	str	r3, [r2]
	b	.L8d066
.L8d062:
	mov	r2, r7
	add	r2, #0xf4
.L8d066:
	mov	r3, #0x14
	ldrsh	r0, [r5, r3]
	cmp	r0, r1
	beq	.L8d078
	mov	r1, r7
	add	r1, #0xf8
	lsl	r3, r0, #16
	str	r3, [r1]
	b	.L8d07c
.L8d078:
	mov	r1, r7
	add	r1, #0xf8
.L8d07c:
	ldr	r3, [r6]
	mov	r0, #0xf0
	lsl	r0, #16
	ldr	r2, [r2]
	add	r3, r0
	cmp	r3, r2
	ble	.L8d090
	ldr	r0, =0xff100000
	add	r3, r2, r0
	str	r3, [r6]
.L8d090:
	ldr	r3, [r4]
	mov	r2, #0xa0
	lsl	r2, #16
	add	r3, r2
	ldr	r2, [r1]
	cmp	r3, r2
	ble	.L8d0a4
	ldr	r0, =0xff600000
	add	r3, r2, r0
	str	r3, [r4]
.L8d0a4:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8cf78

.thumb_func_start Func_8d0c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	mov	r2, #1
	mov	r9, r1
	ldr	r0, =.L9e4ce
	ldr	r1, =0x6001a00
	sub	sp, #0xc
	mov	r10, r2
	mov	r8, r2
	bl	Func_52f4
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r11, r3
	b	.L8d114
.L8d0f2:
	mov	r1, r9
	mov	r2, r9
	lsl	r1, #12
	lsl	r2, #5
	str	r1, [sp, #8]
	mov	r11, r2
	b	.L8d114

	.pool_aligned

.L8d108:
	mov	r3, r9
	lsl	r3, #12
	mov	r1, r9
.L8d10e:
	lsl	r1, #5
	str	r3, [sp, #8]
.L8d112:
	mov	r11, r1
.L8d114:
	ldr	r3, =0xfffff0e0
	ldr	r1, =0x600205a
	add	r3, r9
	ldr	r0, [sp, #8]
	mov	r2, r1
	strh	r3, [r1]
	ldr	r3, .L8d144	@ 0xf052
	add	r2, #0x40
	strh	r3, [r2]
	ldr	r3, .L8d148	@ 0xf047
	add	r2, #0x40
	strh	r3, [r2]
	ldr	r3, .L8d14c	@ 0xf042
	add	r2, #0x40
	ldr	r7, =0x5000002
	strh	r3, [r2]
	ldr	r5, .L8d150	@ 0x1f
	mov	r2, #1
	ldr	r4, .L8d154	@ 0xf0e0
	add	r0, #0xd1
	add	r7, r11
	add	r1, #2
	mov	r12, r2
	b	.L8d164

	.align	2, 0
.L8d144:
	.word	0xf052
.L8d148:
	.word	0xf047
.L8d14c:
	.word	0xf042
.L8d150:
	.word	0x1f
.L8d154:
	.word	0xf0e0
	.pool

.L8d164:
	strh	r0, [r1]
	ldrh	r6, [r7]
	mov	r3, r6
	mov	r2, r1
	and	r3, r5
	add	r2, #0x40
	add	r3, r4
	strh	r3, [r2]
	lsr	r3, r6, #5
	and	r3, r5
	add	r2, #0x40
	add	r3, r4
	strh	r3, [r2]
	lsr	r3, r6, #10
	and	r3, r5
	add	r2, #0x40
	add	r3, r4
	strh	r3, [r2]
	mov	r3, #1
	add	r12, r3
	mov	r2, r12
	add	r0, #1
	add	r7, #2
	add	r1, #2
	cmp	r2, #0xf
	bls	.L8d164
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =iwram_1b04
	mov	r4, #0x1f
.L8d1a2:
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L8d1ba
	sub	r3, #0x41
	add	r10, r3
	mov	r2, r10
	cmp	r2, #0
	bgt	.L8d1ba
	mov	r3, #3
	mov	r10, r3
.L8d1ba:
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L8d1d0
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #3
	ble	.L8d1d0
	mov	r10, r2
.L8d1d0:
	ldr	r2, [r1]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.L8d1ea
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bgt	.L8d1ea
	mov	r2, #0xf
	mov	r8, r2
.L8d1ea:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.L8d200
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0xf
	ble	.L8d200
	mov	r8, r3
.L8d200:
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L8d226
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r1, r9
	cmp	r1, #0
	blt	.L8d21a
	b	.L8d0f2
.L8d21a:
	mov	r2, #0xd
	mov	r9, r2
	mov	r3, r9
	mov	r1, r9
	lsl	r3, #12
	b	.L8d10e
.L8d226:
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L8d246
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #0xd
	bgt	.L8d23e
	b	.L8d108
.L8d23e:
	mov	r1, #0
	mov	r9, r1
	str	r1, [sp, #8]
	b	.L8d112
.L8d246:
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L8d292
	mov	r2, r9
	lsl	r3, r2, #4
	add	r3, r8
	mov	r1, #0xa0
	lsl	r3, #1
	lsl	r1, #19
	add	r7, r3, r1
	ldrh	r6, [r7]
	mov	r1, r10
	mov	r5, r6
	lsr	r2, r6, #5
	lsr	r3, r6, #10
	and	r5, r4
	and	r2, r4
	and	r3, r4
	cmp	r1, #1
	bne	.L8d278
	cmp	r5, #0x1e
	bhi	.L8d278
	add	r5, #1
.L8d278:
	mov	r1, r10
	cmp	r1, #2
	bne	.L8d284
	cmp	r2, #0x1e
	bhi	.L8d284
	add	r2, #1
.L8d284:
	mov	r1, r10
	cmp	r1, #3
	bne	.L8d2dc
	cmp	r3, #0x1e
	bhi	.L8d2dc
	add	r3, #1
	b	.L8d2dc
.L8d292:
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L8d2e8
	mov	r2, r9
	lsl	r3, r2, #4
	add	r3, r8
	mov	r1, #0xa0
	lsl	r3, #1
	lsl	r1, #19
	add	r7, r3, r1
	ldrh	r6, [r7]
	mov	r1, r10
	mov	r5, r6
	lsr	r2, r6, #5
	lsr	r3, r6, #10
	and	r5, r4
	and	r2, r4
	and	r3, r4
	cmp	r1, #1
	bne	.L8d2c4
	cmp	r5, #0
	beq	.L8d2c4
	sub	r5, #1
.L8d2c4:
	mov	r1, r10
	cmp	r1, #2
	bne	.L8d2d0
	cmp	r2, #0
	beq	.L8d2d0
	sub	r2, #1
.L8d2d0:
	mov	r1, r10
	cmp	r1, #3
	bne	.L8d2dc
	cmp	r3, #0
	beq	.L8d2dc
	sub	r3, #1
.L8d2dc:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r5
	strh	r3, [r7]
	b	.L8d114
.L8d2e8:
	ldr	r2, [r1]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L8d352
	mov	r2, r9
	lsl	r3, r2, #4
	add	r3, r8
	mov	r2, #0xa0
	lsl	r3, #1
	lsl	r2, #19
	add	r7, r3, r2
	ldrh	r6, [r7]
	b	.L8d334

	.pool_aligned

.L8d308:
	cmp	r5, #0
	bne	.L8d310
	ldr	r3, =0x7fff
	strh	r3, [r7]
.L8d310:
	cmp	r5, #0xa
	bne	.L8d316
	strh	r6, [r7]
.L8d316:
	cmp	r5, #0x14
	bne	.L8d31e
	ldr	r3, =0
	strh	r3, [r7]
.L8d31e:
	cmp	r5, #0x1e
	bne	.L8d324
	strh	r6, [r7]
.L8d324:
	add	r5, #1
	cmp	r5, #0x27
	bls	.L8d336
	b	.L8d334

	.pool_aligned

.L8d334:
	mov	r5, #0
.L8d336:
	mov	r0, #1
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	Func_30f8
	ldr	r3, =iwram_1ae8
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r2, #0
	bne	.L8d308
	strh	r6, [r7]
.L8d352:
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	bne	.L8d370
	ldr	r3, =iwram_1e40
	mov	r0, #1
	str	r1, [sp, #4]
	str	r4, [sp]
	ldr	r3, [r3]
	bl	Func_30f8
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	b	.L8d1a2
.L8d370:
	bl	Func_479c
	bl	Func_4760
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8d0c8

.thumb_func_start Func_8d394
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #1
	mov	r1, #0
	neg	r2, r2
	ldr	r7, [r3]
	mov	r4, r0
	mov	r6, #8
	mov	r12, r1
	mov	r14, r2
.L8d3a8:
	ldmia	r7!, {r0}
	cmp	r0, #0
	beq	.L8d404
	cmp	r4, #7
	bgt	.L8d3d6
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	ldrh	r2, [r0]
	cmp	r3, r14
	beq	.L8d404
	mov	r1, #1
	neg	r1, r1
.L8d3c0:
	lsl	r3, r2, #16
	asr	r3, #16
	cmp	r3, r4
	beq	.L8d410
	add	r0, #0x18
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	ldrh	r2, [r0]
	cmp	r3, r1
	bne	.L8d3c0
	b	.L8d404
.L8d3d6:
	ldrh	r2, [r0]
	lsl	r3, r2, #16
	asr	r3, #16
	mov	r1, r2
	cmp	r3, r14
	beq	.L8d404
	mov	r5, #1
	neg	r5, r5
.L8d3e6:
	lsl	r3, r1, #16
	mov	r1, #0xe0
	lsl	r1, #11
	cmp	r3, r1
	ble	.L8d3f6
	cmp	r6, r4
	beq	.L8d410
	add	r6, #1
.L8d3f6:
	add	r0, #0x18
	ldrh	r2, [r0]
	lsl	r3, r2, #16
	asr	r3, #16
	mov	r1, r2
	cmp	r3, r5
	bne	.L8d3e6
.L8d404:
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	cmp	r3, #3
	ble	.L8d3a8
	ldrh	r2, [r0]
.L8d410:
	lsl	r3, r2, #16
	mov	r5, #1
	asr	r3, #16
	neg	r5, r5
	cmp	r3, r5
	bne	.L8d41e
	mov	r0, #0
.L8d41e:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8d394

.thumb_func_start Func_8d428
	push	{lr}
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L8d436
	mov	r0, #1
	b	.L8d454
.L8d436:
	mov	r3, #0x80
	lsl	r3, #5
	and	r3, r0
	cmp	r3, #0
	beq	.L8d446
	bl	_Func_79338
	b	.L8d454
.L8d446:
	bl	_Func_79338
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
.L8d454:
	pop	{r1}
	bx	r1
.func_end Func_8d428

.thumb_func_start Func_8d458
	push	{lr}
	mov	r3, #0xf
	and	r3, r0
	cmp	r3, #3
	beq	.L8d466
	mov	r0, #0
	b	.L8d480
.L8d466:
	ldr	r3, =0x1ff
	and	r3, r0
	mov	r0, #0
	cmp	r3, #3
	beq	.L8d480
	ldr	r3, =0xfff00000
	mov	r2, #0xa0
	and	r3, r1
	lsl	r2, #15
	eor	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.L8d480:
	pop	{r1}
	bx	r1
.func_end Func_8d458

.thumb_func_start Func_8d48c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xfa
	ldr	r7, [r3]
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	mov	r11, r0
	ldr	r0, [r3]
	ldr	r6, [r7, #0x10]
	mov	r9, r1
	bl	Func_8ba1c
	mov	r3, #1
	ldrh	r0, [r0, #6]
	ldr	r5, [r6]
	neg	r3, r3
	mov	r8, r0
	cmp	r5, r3
	beq	.L8d56e
	ldr	r2, =0x3ffe
	mov	r10, r2
.L8d4c4:
	mov	r3, #0xf
	and	r3, r5
	cmp	r3, r11
	bne	.L8d560
	ldrb	r3, [r6, #4]
	cmp	r3, r9
	bne	.L8d560
	ldr	r1, [r6, #8]
	mov	r0, r5
	bl	Func_8d458
	cmp	r0, #0
	bne	.L8d4ec
	mov	r3, #6
	ldrsh	r0, [r6, r3]
	bl	Func_8d428
	cmp	r0, #0
	beq	.L8d560
	ldr	r5, [r6]
.L8d4ec:
	mov	r3, #0x80
	lsl	r3, #4
	and	r3, r5
	mov	r4, #0
	mov	r0, #0xc
	cmp	r3, #0
	beq	.L8d4fc
	mov	r0, #2
.L8d4fc:
	mov	r1, #0xc0
	lsl	r1, #3
	mov	r3, r5
	mov	r2, #0x80
	and	r3, r1
	lsl	r2, #2
	cmp	r3, r2
	beq	.L8d524
	cmp	r3, r2
	bgt	.L8d516
	cmp	r3, #0
	beq	.L8d558
	b	.L8d55a
.L8d516:
	mov	r2, #0x80
	lsl	r2, #3
	cmp	r3, r2
	beq	.L8d542
	cmp	r3, r1
	beq	.L8d534
	b	.L8d55a
.L8d524:
	mov	r2, #0xce
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r0
	ble	.L8d55a
	b	.L8d558
.L8d534:
	mov	r2, #0xce
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r0
	ble	.L8d55a
.L8d542:
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r8
	and	r5, r3
	sub	r3, r5, r2
	ldr	r2, =0x1fff
	add	r3, r2
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r10
	bhi	.L8d55a
.L8d558:
	mov	r4, #1
.L8d55a:
	mov	r0, r6
	cmp	r4, #0
	bne	.L8d570
.L8d560:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r2, #1
	neg	r2, r2
	mov	r5, r3
	cmp	r3, r2
	bne	.L8d4c4
.L8d56e:
	mov	r0, #0
.L8d570:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8d48c

.thumb_func_start Func_8d590
	push	{lr}
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #4]
	bl	_call_via_r0
	pop	{r0}
	bx	r0
.func_end Func_8d590

.thumb_func_start Func_8d5a4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r1, r5
	mov	r0, #0
	bl	Func_8d48c
	ldr	r2, =0x24a
	ldr	r3, =ewram_240
	add	r3, r2
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r6, r0
	cmp	r1, r5
	bne	.L8d5ca
	mov	r0, #7
	bl	Func_8d48c
	cmp	r0, #0
	bne	.L8d5cc
.L8d5ca:
	mov	r0, r6
.L8d5cc:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8d5a4

	.section .rodata

.L9e4ce:
	.incrom 0x9e4ce, 0x9e680
