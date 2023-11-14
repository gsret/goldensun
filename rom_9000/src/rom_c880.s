	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_c880
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e80
	ldr	r7, [r3]
	sub	r3, #0x18
	ldr	r3, [r3]
	sub	sp, #0x34
	mov	r8, r3
	ldr	r5, =0x2c4
	mov	r0, #0x34
	mov	r1, r5
	bl	Func_48b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_9bb8
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r5, r7
	ldr	r3, [r5, #0x18]
	mov	r6, r5
	add	r6, #0xc
	cmp	r3, #0
	beq	.Lc8c4
	mov	r5, r3
.Lc8c4:
	ldr	r3, [r7, #0x1c]
	cmp	r3, #0
	beq	.Lc8cc
	mov	r6, r3
.Lc8cc:
	ldr	r3, [r6]
	ldr	r0, [r5]
	ldr	r1, [r5, #8]
	sub	r0, r3
	ldr	r3, [r6, #8]
	sub	r1, r3
	asr	r1, #16
	asr	r0, #16
	bl	Func_44d0
	mov	r3, #0
	mov	r2, r8
	lsl	r0, #16
	asr	r0, #16
	strh	r3, [r2]
	mov	r9, r0
	bl	Func_49ac
	ldr	r0, =0x16b
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lc910
	ldr	r3, =0xffffe000
	ldr	r0, =.L13190
	add	r9, r3
	ldr	r3, =Func_a30
	bl	_call_via_r3
	mov	r0, r5
	mov	r1, r6
	bl	Func_51e8
	b	.Lc918
.Lc910:
	mov	r0, r5
	mov	r1, r6
	bl	Func_51d8
.Lc918:
	ldr	r3, =iwram_1e64
	ldr	r3, [r3]
	ldr	r2, =0x1b90
	mov	r8, r3
	add	r8, r2
	mov	r3, #0x80
	mov	r2, #0x3f
	lsl	r3, #9
	mov	r7, r8
	str	r2, [sp, #8]
	mov	r11, r3
	add	r7, #0x18
.Lc930:
	mov	r2, r8
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lc9d8
	mov	r3, r8
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lc950
	cmp	r2, #1
	ble	.Lc9d8
	cmp	r2, #2
	beq	.Lc988
	b	.Lc9d8
.Lc950:
	mov	r3, #8
	add	r3, r8
	mov	r10, r3
	ldr	r3, [r7]
	str	r3, [sp, #0x14]
	ldr	r3, [r7, #4]
	add	r6, sp, #0x14
	str	r3, [r6, #4]
	ldr	r0, =0x16b
	ldr	r5, [r7, #0x38]
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lc972
	mov	r2, r11
	str	r2, [sp, #0x14]
	str	r2, [r6, #4]
.Lc972:
	mov	r2, r8
	ldrh	r3, [r2, #6]
	ldrb	r2, [r7, #0xa]
	add	r3, r9
	str	r2, [sp]
	mov	r0, r5
	mov	r1, r10
	mov	r2, r6
	bl	Func_b388
	b	.Lc9d8
.Lc988:
	ldr	r3, [r7]
	str	r3, [sp, #0xc]
	ldr	r3, [r7, #4]
	add	r4, sp, #0xc
	str	r3, [r4, #4]
	ldr	r0, =0x16b
	str	r4, [sp, #4]
	bl	_Func_79338
	ldr	r4, [sp, #4]
	cmp	r0, #0
	beq	.Lc9a6
	mov	r3, r11
	str	r3, [sp, #0xc]
	str	r3, [r4, #4]
.Lc9a6:
	mov	r2, #3
	ldr	r6, [r7, #0x38]
	mov	r10, r2
.Lc9ac:
	ldmia	r6!, {r5}
	cmp	r5, #0
	beq	.Lc9cc
	mov	r2, r8
	ldrh	r3, [r2, #6]
	ldrb	r2, [r7, #0xa]
	mov	r1, r8
	str	r2, [sp]
	add	r3, r9
	mov	r2, r4
	mov	r0, r5
	add	r1, #8
	str	r4, [sp, #4]
	bl	Func_b388
	ldr	r4, [sp, #4]
.Lc9cc:
	mov	r3, #1
	neg	r3, r3
	add	r10, r3
	mov	r2, r10
	cmp	r2, #0
	bge	.Lc9ac
.Lc9d8:
	ldr	r3, [sp, #8]
	mov	r2, #0x70
	sub	r3, #1
	neg	r2, r2
	str	r3, [sp, #8]
	sub	r7, #0x70
	add	r8, r2
	cmp	r3, #0
	bge	.Lc930
	mov	r0, #0x34
	bl	Func_2dd8
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_c880

	.section .rodata

.L13190:
	.incrom 0x13190, 0x131c0
