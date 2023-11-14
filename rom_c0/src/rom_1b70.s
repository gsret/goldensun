	.include "macros.inc"

.arm_func_start Func_1b70
	push	{r1, r5, r6, r7, lr}
.L1b74:
	ldrb	r14, [r0], #1
	lsls	r14, #24
	bne	.L1c2c
	ands	r2, r0, #3
	ldmeq	r0!, {r4, r5}
	beq	.L1bac
	ldm	r0, {r4, r5, r6}
	lsl	r2, #3
	rsb	r7, r2, #0x20
	lsr	r4, r2
	orr	r4, r5, lsl r7
	lsr	r5, r2
	orr	r5, r6, lsl r7
	add	r0, #8
.L1bac:
	strb	r4, [r1], #1
	lsr	r4, #8
	strb	r4, [r1], #1
	lsr	r4, #8
	strb	r4, [r1], #1
	lsr	r4, #8
	strb	r4, [r1], #1
	strb	r5, [r1], #1
	lsr	r5, #8
	strb	r5, [r1], #1
	lsr	r5, #8
	strb	r5, [r1], #1
	lsr	r5, #8
	strb	r5, [r1], #1
	b	.L1b74
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	ldrb	r2, [r0], #1
	strb	r2, [r1], #1
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	ldrb	r2, [r0], #1
	strb	r2, [r1], #1
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	ldrb	r2, [r0], #1
	strb	r2, [r1], #1
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	ldrb	r2, [r0], #1
	strb	r2, [r1], #1
	b	.L1b74
.L1c2c:
	orr	r14, #0x800000
	lsls	r14, #1
	bcs	.L1c4c
.L1c38:
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	lsls	r14, #1
	bcc	.L1c38
	beq	.L1b74
.L1c4c:
	ldrb	r12, [r0], #1
	ldrb	r3, [r0], #1
	and	r2, r12, #0xf0
	rsb	r3, r1
	sub	r4, r3, r2, lsl #4
	ands	r12, #0xf
	beq	.L1d04
	rsb	r12, #0xf
	add	pc, r12, lsl #3
	nop
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	lsls	r14, #1
	bcc	.L1c38
	beq	.L1b74
	b	.L1c4c
.L1d04:
	cmp	r4, r1
	beq	.L1dbc
	ldrb	r3, [r0], #1
	add	r3, #0x10
	and	r12, r3, #0xf
	rsb	r12, #0xf
	add	pc, r12, lsl #3
	nop
.L1d24:
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	subs	r3, #0x10
	bge	.L1d24
	lsls	r14, #1
	bcc	.L1c38
	beq	.L1b74
	b	.L1c4c
.L1dbc:
	pop	{r0, r5, r6, r7, r12}
	sub	r0, r1, r0
	bx	r12
.func_end Func_1b70

.arm_func_start Func_1dc8
	push	{r5, r6, r7, r8, r9, lr}
	ldr	r2, =iwram_1800
	mov	r12, #0x40
	mov	r1, #0x80
	mov	r9, r0
.L1ddc:
	ldmdb	r2!, {r3, r4, r5, r6}
	movs	r6, r6
	blne	.L1e20
	movs	r6, r5
	blne	.L1e20
	movs	r6, r4
	blne	.L1e20
	movs	r6, r3
	blne	.L1e20
	subs	r12, #1
	bne	.L1ddc
	mov	r2, #0xc0
	orr	r2, #0xc00000
	lsl	r1, #3
	ldr	r4, =Func_8d8
	adr	r14, .L1e54
	bx	r4
.L1e20:
	ldm	r6, {r6, r7, r8}
	stmia	r0!, {r7, r8}
	subs	r1, #1
	beq	.L1e54
	cmp	r6, #0
	bxeq	lr
	ldm	r6, {r6, r7, r8}
	stmia	r0!, {r7, r8}
	subs	r1, #1
	beq	.L1e54
	cmp	r6, #0
	bxeq	lr
	b	.L1e20
.L1e54:
	add	r0, r9, #6
	ldr	r2, =iwram_1d00
	ldrb	r4, [r2]
	ldr	r1, =iwram_1d40
	cmp	r4, #0
	beq	.L1e90
.L1e6c:
	ldm	r1!, {r2, r3}
	strh	r2, [r0], #0x20
	lsr	r2, #16
	strh	r2, [r0, #-0x18]
	strh	r3, [r0, #-0x10]
	lsr	r3, #16
	strh	r3, [r0, #-8]
	subs	r4, #1
	bne	.L1e6c
.L1e90:
	pop	{r5, r6, r7, r8, r9, lr}
	bx	lr
.func_end Func_1dc8

.arm_func_start Func_1ea8
	push	{r5, r6}
	add	r2, r0
	mov	r12, #0x3f00
	add	r12, #0x3f
	orr	r12, r12, lsl #16
.L1ebc:
	ldm	r0, {r3, r4, r5, r6}
	stmia	r1!, {r3, r4, r5, r6}
	adds	r3, r3, lsl #1
	andne	r3, r12, r3, lsr #2
	adds	r4, r4, lsl #1
	andne	r4, r12, r4, lsr #2
	adds	r5, r5, lsl #1
	andne	r5, r12, r5, lsr #2
	adds	r6, r6, lsl #1
	andne	r6, r12, r6, lsr #2
	stmia	r0!, {r3, r4, r5, r6}
	cmp	r0, r2
	bne	.L1ebc
	pop	{r5, r6}
	bx	lr
.func_end Func_1ea8

.arm_func_start Func_1ef8
	push	{r5, r6}
	add	r2, r0
	mov	r12, #0x3f00
	add	r12, #0x3f
	orr	r12, r12, lsl #16
.L1f0c:
	ldm	r0, {r3, r4, r5, r6}
	stmia	r1!, {r3, r4, r5, r6}
	and	r3, r12, r3, lsr #1
	and	r4, r12, r4, lsr #1
	and	r5, r12, r5, lsr #1
	and	r6, r12, r6, lsr #1
	stmia	r0!, {r3, r4, r5, r6}
	cmp	r0, r2
	bne	.L1f0c
	pop	{r5, r6}
	bx	lr
.func_end Func_1ef8

.arm_func_start Func_1f38
	rsb	r12, r1, #0x80000000
	add	r12, #0x800000
	add	r12, #0x8000
	add	r12, #0x80
	mov	r1, #0x100
	add	r1, #1
	orr	r1, r1, lsl #16
	push	{r5, r6, r7, r8, lr}
	add	r14, r0, r3
.L1f5c:
	ldm	r0, {r4, r5, r6, r7}
	stmia	r2!, {r4, r5, r6, r7}
	add	r8, r4, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r4, r8, r3
	add	r8, r5, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r5, r8, r3
	add	r8, r6, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r6, r8, r3
	add	r8, r7, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r7, r8, r3
	stmia	r0!, {r4, r5, r6, r7}
	cmp	r0, r14
	bne	.L1f5c
	pop	{r5, r6, r7, r8, r12}
	bx	r12
.func_end Func_1f38

.arm_func_start Func_1fb8
	push	{r5, r6, r7, r8, r9}
	mov	r8, #0x40
	orr	r8, r8, lsl #8
	orr	r8, r8, lsl #16
	sub	r12, r8, r8, lsr #6
	add	r3, r0, r3
.L1fd0:
	ldm	r0, {r4, r5, r6, r7}
	stmia	r2!, {r4, r5, r6, r7}
	add	r4, r1
	and	r9, r4, r8
	bic	r4, r9
	sub	r9, r9, lsr #6
	orr	r4, r9
	add	r5, r1
	and	r9, r5, r8
	bic	r5, r9
	sub	r9, r9, lsr #6
	orr	r5, r9
	add	r6, r1
	and	r9, r6, r8
	bic	r6, r9
	sub	r9, r9, lsr #6
	orr	r6, r9
	add	r7, r1
	and	r9, r7, r8
	bic	r7, r9
	sub	r9, r9, lsr #6
	orr	r7, r9
	stmia	r0!, {r4, r5, r6, r7}
	cmp	r0, r3
	bne	.L1fd0
	pop	{r5, r6, r7, r8, r9}
	bx	lr
.func_end Func_1fb8

.arm_func_start Func_203c
	push	{r5, r6}
	add	r2, r0
	mov	r12, #0x3f00
	add	r12, #0x3f
	orr	r12, r12, lsl #16
.L2050:
	ldm	r0!, {r3, r4, r5, r6}
	stmia	r1!, {r3, r4, r5, r6}
	adds	r3, r3, lsl #1
	andne	r3, r12, r3, lsr #2
	strne	r3, [r0, #-0x10]
	adds	r4, r4, lsl #1
	andne	r4, r12, r4, lsr #2
	strne	r4, [r0, #-0xc]
	adds	r5, r5, lsl #1
	andne	r5, r12, r5, lsr #2
	strne	r5, [r0, #-8]
	adds	r6, r6, lsl #1
	andne	r6, r12, r6, lsr #2
	strne	r6, [r0, #-4]
	cmp	r0, r2
	bne	.L2050
	pop	{r5, r6}
	bx	lr
.func_end Func_203c

.arm_func_start Func_2098
	push	{r5, r6}
	add	r2, r0
	mov	r12, #0x3f00
	add	r12, #0x3f
	orr	r12, r12, lsl #16
.L20ac:
	ldm	r0!, {r3, r4, r5, r6}
	stmia	r1!, {r3, r4, r5, r6}
	cmp	r3, #0
	andne	r3, r12, r3, lsr #1
	strne	r3, [r0, #-0x10]
	cmp	r4, #0
	andne	r4, r12, r4, lsr #1
	strne	r4, [r0, #-0xc]
	cmp	r5, #0
	andne	r5, r12, r5, lsr #1
	strne	r5, [r0, #-8]
	cmp	r6, #0
	andne	r6, r12, r6, lsr #1
	strne	r6, [r0, #-4]
	cmp	r0, r2
	bne	.L20ac
	pop	{r5, r6}
	bx	lr
.func_end Func_2098

.arm_func_start Func_20f4
	rsb	r12, r1, #0x80000000
	add	r12, #0x800000
	add	r12, #0x8000
	add	r12, #0x80
	mov	r1, #0x100
	add	r1, #1
	orr	r1, r1, lsl #16
	push	{r5, r6, r7, r8, lr}
	add	r14, r0, r3
.L2118:
	ldm	r0!, {r4, r5, r6, r7}
	stmia	r2!, {r4, r5, r6, r7}
	cmp	r4, #0
	bne	.L214c
	cmp	r5, #0
	bne	.L2168
	cmp	r6, #0
	bne	.L2184
	cmp	r7, #0
	bne	.L21a0
	cmp	r0, lr
	bne	.L2118
	b	.L21bc
.L214c:
	add	r8, r4, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r3, r8, r3
	strne	r3, [r0, #-0x10]
	cmp	r5, #0
	beq	.L217c
.L2168:
	add	r8, r5, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r3, r8, r3
	strne	r3, [r0, #-0xc]
.L217c:
	cmp	r6, #0
	beq	.L2198
.L2184:
	add	r8, r6, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r3, r8, r3
	strne	r3, [r0, #-8]
.L2198:
	cmp	r7, #0
	beq	.L21b4
.L21a0:
	add	r8, r7, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r3, r8, r3
	strne	r3, [r0, #-4]
.L21b4:
	cmp	r0, lr
	bne	.L2118
.L21bc:
	pop	{r5, r6, r7, r8, r12}
	bx	r12
.func_end Func_20f4

.arm_func_start Func_21c4
	push	{r5, r6, r7, r8, r9}
	mov	r8, #0x40
	orr	r8, r8, lsl #8
	orr	r8, r8, lsl #16
	sub	r12, r8, r8, lsr #6
	add	r3, r0, r3
.L21dc:
	ldm	r0!, {r4, r5, r6, r7}
	stmia	r2!, {r4, r5, r6, r7}
	cmp	r4, r12
	bne	.L2210
	cmp	r5, r12
	bne	.L2230
	cmp	r6, r12
	bne	.L2250
	cmp	r7, r12
	bne	.L2270
	cmp	r0, r3
	bne	.L21dc
	b	.L2290
.L2210:
	add	r4, r1
	and	r9, r4, r8
	bic	r4, r9
	sub	r9, r9, lsr #6
	orr	r4, r9
	str	r4, [r0, #-0x10]
	cmp	r5, r12
	beq	.L2248
.L2230:
	add	r5, r1
	and	r9, r5, r8
	bic	r5, r9
	sub	r9, r9, lsr #6
	orr	r5, r9
	str	r5, [r0, #-0xc]
.L2248:
	cmp	r6, r12
	beq	.L2268
.L2250:
	add	r6, r1
	and	r9, r6, r8
	bic	r6, r9
	sub	r9, r9, lsr #6
	orr	r6, r9
	str	r6, [r0, #-8]
.L2268:
	cmp	r7, r12
	beq	.L2288
.L2270:
	add	r7, r1
	and	r9, r7, r8
	bic	r7, r9
	sub	r9, r9, lsr #6
	orr	r7, r9
	str	r7, [r0, #-4]
.L2288:
	cmp	r0, r3
	bne	.L21dc
.L2290:
	pop	{r5, r6, r7, r8, r9}
	bx	lr
.func_end Func_21c4

.arm_func_start Func_2298
	mov	r3, #0x80000000
	b	.L22a4
.L22a0:
	strh	r2, [r1], #2
.L22a4:
	lsls	r3, #1
.L22a8:
	ldrh	r2, [r0], #2
	bcc	.L22a0
	bne	.L22c0
	adc	r3, r2, r2
	lsls	r3, #16
	b	.L22a8
.L22c0:
	cmp	r2, #0
	bxeq	lr
	sub	r12, r1, r2, lsr #5
	sub	r12, r2, lsr #5
	and	r2, #0x1f
	add	r2, #2
.L22d8:
	ldrh	r4, [r12], #2
	strh	r4, [r1], #2
	subs	r2, #1
	bne	.L22d8
	b	.L22a4
.func_end Func_2298

.thumb_stub Func_af0_from_thumb, Func_af0, r3
.thumb_stub Func_b60_from_thumb, Func_b60, r3
.thumb_stub Func_b1c_from_thumb, Func_b1c, r3
.thumb_stub Func_b50_from_thumb, Func_b50, r3

.L230c:
.thumb
	lsr	r2, r0, #14
	mov	r0, #1
	and	r0, r2
	lsl	r0, #16
	lsr	r2, #2
	bcc	.L231a
	neg	r0, r0
.L231a:
	bx	lr

.thumb_func_start_noalign Func_231c
	mov	r1, #0x40
	lsl	r1, #8
	add	r0, r1

.thumb_func_start_noalign Func_2322
Func_2322:
	add	r0, #0x20
	lsl	r1, r0, #18
	lsr	r1, #24
	beq	.L230c
	lsr	r2, r0, #15
	bcc	.L2334
	mov	r3, #0x80
	lsl	r3, #1
	sub	r1, r3, r1
.L2334:
	lsl	r1, #1
	adr	r3, .L2344
	ldrh	r0, [r3, r1]
	lsr	r2, #1
	bcc	.L2342
	neg	r0, r0
	bx	lr
.L2342:
	bx	lr

.L2344:
	.incrom 0x2344, 0x2544
