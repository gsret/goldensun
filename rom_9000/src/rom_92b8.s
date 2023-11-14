	.include "macros.inc"

	.incdata Data_92b8, 0x92b8, 0x97b8
	.incdata Data_97b8, 0x97b8, 0x9bb8

.arm_func_start Func_9bb8
	cmp	r2, #0
	bne	.L9cd0
.L9bc0:
	mov	r4, #0xff
	ands	r2, r0, #3
	ldm	r0!, {r3}
	add	r2, r2, lsl #2
	add	pc, r2, lsl #2
	nop
.L9bd8:
	ands	r2, r4, r3
	bxeq	lr
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #8
	bxeq	lr
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #16
	bxeq	lr
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #24
	bxeq	lr
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ldm	r0!, {r3}
	and	r2, r3, r3, lsr #16
	ands	r2, r2, lsr #8
	beq	.L9bd8
.L9c38:
	ands	r2, r4, r3
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #8
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #16
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #24
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ldm	r0!, {r3}
	and	r2, r3, r3, lsr #16
	ands	r2, r2, lsr #8
	bne	.L9c38
	b	.L9bd8

.L9c8c:
	.word	iwram_1c90

.L9c90:
	ldr	r2, .L9c8c
	ldrb	r2, [r2]
	b	.L9cc0
.L9c9c:
	mov	r2, #0
	b	.L9cc0
.L9ca4:
	mov	r2, #1
	b	.L9cc0
.L9cac:
	mov	r2, #0xf
	b	.L9cc0
.L9cb4:
	subs	r3, #0xdf
	addhi	r1, r3
	strlsb	r2, [r1], #1
.L9cc0:
	ldrb	r3, [r0], #1
	cmp	r3, #0
	bne	.L9cb4
	bx	lr
.L9cd0:
	add	r4, r2, r2
	ldrsh	r4, [pc, r4]
	add	pc, r4

.L9cdc:
	.2byte	.L9bc0 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9cac - .L9cdc - 4
	.2byte	.L9cac - .L9cdc - 4
	.2byte	.L9cfc - .L9cdc - 4
	.2byte	.L9cfc - .L9cdc - 4
	.2byte	.L9cfc - .L9cdc - 4
	.2byte	.L9cfc - .L9cdc - 4
	.2byte	.L9c90 - .L9cdc - 4
	.2byte	.L9ca4 - .L9cdc - 4
	.2byte	.L9c9c - .L9cdc - 4

.L9cfc:
	sub	r2, #2

.L9d00:
	ldr	r4, .L9d90
	cmp	r4, r2
	beq	.L9d64
	str	r2, .L9d90
	ldr	r3, .L9d98
	add	r2, r3, r2, lsl #8
	adr	r3, Data_9d9c
	push	{r5, r6, r7, r8, r9}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	pop	{r5, r6, r7, r8, r9}
.L9d64:
	adr	r2, Data_9d9c
	b	.L9d70
.L9d6c:
	add	r1, r4
.L9d70:
	ldrb	r3, [r0], #1
	subs	r4, r3, #0xdf
	bhi	.L9d6c
	cmp	r3, #0
	ldrneb	r3, [r2, r3]
	strneb	r3, [r1], #1
	bne	.L9d70
	bx	lr

.L9d90:
	.space	4
	.word	Data_92b8 - 0xe0
.L9d98:
	.word	Data_92b8 - 0x100

	.global	Data_9d9c
Data_9d9c:
	.space	0xe0
	.ssize	Data_9d9c
.func_end Func_9bb8

.arm_func_start Func_9e7c
	push	{r5, r6, r7, r8, r9, r10, r11, lr}
	mov	r4, #0xa00000
	orr	r4, #0x38
	orr	r4, #0xff000000
.L9e8c:
	ldrsh	r6, [r0, #4]
	ldr	r7, [r0, #8]
	ldr	r8, [r0, #0xc]
	ldrsh	r5, [r0], #0x20
	lsl	r7, #15
	lsl	r8, #15
	add	r4, #0x1e000000
.L9ea8:
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	add	r1, #0x38
	subs	r4, #0x1000000
	bpl	.L9ea8
	sub	r1, #0x780
	add	r1, #8
	sub	r4, #0x10000
	tst	r4, #0x70000
	addeq	r1, #0x740
	tst	r4, #0xff0000
	bne	.L9e8c
	pop	{r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
.func_end Func_9e7c

.arm_func_start Func_a0f8
	push	{r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r1
	ldr	r9, =Exports_c0
	sub	sp, #8
	ldr	r1, [r5]
	ldr	r12, [r5, #8]
	mov	r7, r2
	ldr	r2, [r0, #8]
	mov	r6, r3
	ldr	r3, [r0]
	rsb	r4, r2, r12
	rsb	r1, r3, r1
	asr	r0, r1, #4
	asr	r1, r4, #4
	ldr	r12, [r9, #0x44]
	mov	lr, pc
	bx	r12
	lsl	r0, #16
	lsr	r8, r0, #16
	mov	r1, #0x8000
	ldr	r3, [r5]
	smull	r0, r3, r1, r3
	lsl	r3, #16
	orr	r2, r3, r0, lsr #16
	str	r2, [sp, #4]
	ldr	r2, [r5, #8]
	smull	r3, r2, r1, r2
	lsl	r2, #16
	orr	r1, r2, r3, lsr #16
	str	r1, [sp]
	ldr	r2, =iwram_1f60
	ldr	r3, [r2]
	cmp	r8, r3
	beq	.La294
	mov	r0, r8
	str	r8, [r2]
	ldr	r12, [r9, #0x5c]
	mov	lr, pc
	bx	r12
	mov	r10, r0
	mov	r0, r8
	ldr	r12, [r9, #0x64]
	mov	lr, pc
	bx	r12
	mov	r5, r0
	rsb	r9, r10, #0
	mov	r8, #0x9f
.La1b4:
	ldm	r7, {r2, r4}
	smull	r1, r3, r5, r2
	lsl	r3, #16
	orr	r3, r1, lsr #16
	cmp	r3, #0
	addlt	r3, #0xff
	asr	r3, #8
	rsb	r3, #0
	lsl	r1, r3, #16
	strh	r3, [r7, #0x10]
	asr	r14, r1, #16
	strh	r3, [r6]
	smull	r1, r2, r10, r2
	lsl	r2, #16
	orr	r2, r1, lsr #16
	cmp	r2, #0
	addlt	r2, #0xff
	asr	r2, #8
	strh	r2, [r7, #0x12]
	strh	r2, [r6, #4]
	ldr	r3, =iwram_1cec
	ldr	r0, [r3]
	lsl	r3, r14, #8
	mul	r14, r0, r3
	lsl	r2, #16
	asr	r2, #8
	rsb	r0, #0
	mul	r12, r0, r2
	smull	r3, r1, r4, r9
	lsl	r1, #16
	orr	r1, r3, lsr #16
	add	r1, r14, r1
	rsb	r1, #0
	str	r1, [r7, #8]
	smull	r2, r3, r4, r5
	lsl	r3, #16
	orr	r3, r2, lsr #16
	add	r12, r3
	str	r12, [r7, #0xc]
	ldr	r2, [sp, #4]
	add	r1, r2, r1
	asr	r1, #8
	str	r1, [r6, #8]
	ldr	r1, [sp]
	subs	r8, #1
	ldr	r3, [r7, #0xc]
	add	r12, r6, #0x10
	add	r3, r1, r3
	asr	r3, #8
	str	r3, [r6, #0xc]
	add	r7, #0x14
	ldm	r6, {r0, r1, r2, r3}
	add	r6, #0x20
	stm	r12, {r0, r1, r2, r3}
	bpl	.La1b4
	b	.La370
.La294:
	mov	r8, #0x9f
	ldr	r14, =iwram_1e40
.La29c:
	ldr	r3, [r14]
	tst	r3, #1
	beq	.La31c
	ldr	r1, [r7, #8]
	ldr	r2, [sp, #4]
	ldrsh	r3, [r7, #0x12]
	add	r1, r2, r1
	cmp	r3, #0
	addlt	r3, #3
	asr	r3, #2
	ldrsh	r2, [r7, #0x10]
	add	r3, r1, asr #8
	add	r2, r2, lsr #31
	add	r3, r2, asr #1
	str	r3, [r6, #8]
	ldrsh	r3, [r7, #0x10]
	ldr	r2, [sp]
	cmp	r3, #0
	addlt	r3, #3
	ldr	r1, [r7, #0xc]
	asr	r3, #2
	add	r1, r2, r1
	ldrsh	r2, [r7, #0x12]
	add	r3, r1, asr #8
	add	r2, r2, lsr #31
	add	r3, r2, asr #1
	str	r3, [r6, #0xc]
	b	.La344

	.pool

.La31c:
	ldr	r3, [r7, #8]
	ldr	r1, [sp, #4]
	add	r3, r1, r3
	asr	r3, #8
	str	r3, [r6, #8]
	ldr	r3, [sp]
	ldr	r2, [r7, #0xc]
	add	r2, r3, r2
	asr	r2, #8
	str	r2, [r6, #0xc]
.La344:
	ldrh	r1, [r7, #0x10]
	strh	r1, [r6]
	add	r12, r6, #0x10
	ldrh	r2, [r7, #0x12]
	subs	r8, #1
	strh	r2, [r6, #4]
	add	r7, #0x14
	ldm	r6, {r0, r1, r2, r3}
	add	r6, #0x20
	stm	r12, {r0, r1, r2, r3}
	bpl	.La29c
.La370:
	add	sp, #8
	pop	{r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.func_end Func_a0f8

.arm_func_start Func_a37c
	push	{r5, r6, r7, r8}
	mov	r5, #0xff000000
	orr	r5, r5, lsr #4
	orr	r4, r5, r5, lsr #8
	add	r4, #1
	mov	r6, #0x4000
.La394:
	ldrh	r12, [r0], #2
	cmp	r5, r12, lsl #20
	bne	.La3ac
	add	r12, r4
	cmp	r4, #0
	addne	r4, #1
.La3ac:
	strh	r12, [r1], #4
	subs	r6, #1
	bne	.La394
	add	r0, r2, #0x4000
	sub	r1, #0x10000
	add	r1, #2
	mov	r5, #0xff
	orr	r5, r5, lsl #16
	mov	r8, #0x1000
.La3d0:
	ldr	r4, [r2], #4
	ldr	r12, [r0], #4
	and	r3, r4, r5
	and	r6, r12, r5
	orr	r3, r6, lsl #8
	and	r7, r4, r5, lsl #8
	and	r6, r12, r5, lsl #8
	orr	r7, r6, r7, lsr #8
	strh	r3, [r1], #4
	strh	r7, [r1], #4
	ror	r3, #16
	ror	r7, #16
	strh	r3, [r1], #4
	strh	r7, [r1], #4
	subs	r8, #1
	bne	.La3d0
	pop	{r5, r6, r7, r8}
	bx	lr
.func_end Func_a37c

.arm_func_start Func_a418
	bics	r1, #7
	bicnes	r2, #7
	bxeq	lr
	push	{r5, r6, r7, r8, r9, r10, r11}
.La428:
	mov	r12, r1
.La42c:
	ldm	r0, {r4, r5}
	add	r0, r1
	ldm	r0, {r6, r7}
	add	r0, r1
	ldm	r0, {r8, r9}
	add	r0, r1
	ldm	r0, {r10, r11}
	add	r0, r1
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r10, r11}
	ldm	r0, {r4, r5}
	add	r0, r1
	ldm	r0, {r6, r7}
	add	r0, r1
	ldm	r0, {r8, r9}
	add	r0, r1
	ldm	r0!, {r10, r11}
	add	r0, r1
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r10, r11}
	subs	r12, #8
	subgt	r0, r1, lsl #3
	bgt	.La42c
	sub	r0, r1
	subs	r2, #8
	bgt	.La428
	pop	{r5, r6, r7, r8, r9, r10, r11}
	bx	lr
.func_end Func_a418

.arm_func_start Func_a494
	push	{r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #0
	ldr	r3, =iwram_1e64
	sub	sp, #0x10
	ldr	r5, [r3]
.La4a8:
	ldr	r3, [r5]
	add	r2, #1
	str	r2, [sp]
	add	r1, r5, #0x70
	str	r1, [sp, #4]
	cmp	r3, #0
	beq	.La940
	ldr	r3, [r5, #0x6c]
	cmp	r3, #0
	beq	.La4dc
	mov	r0, r5
	mov	lr, pc
	bx	r3
.La4dc:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La940
	ldrb	r3, [r5, #0x5b]
	cmp	r3, #0
	bne	.La940
	ldrsh	r3, [r5, #0x5e]
	cmp	r3, #0
	ldrh	r3, [r5, #0x5e]
	subne	r3, #1
	strneh	r3, [r5, #0x5e]
	bne	.La558
	ldr	r6, =Data_13624
	b	.La520
.La514:
	ldrh	r3, [r5, #4]
	add	r3, #1
	strh	r3, [r5, #4]
.La520:
	ldrsh	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0x3f
	bhi	.La514
	mov	r0, r5
	ldr	r12, [r6, r3, lsl #2]
	mov	lr, pc
	bx	r12
	cmp	r0, #0
	bne	.La520
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La940
.La558:
	ldr	r3, [r5, #0xc]
	ldr	r9, [r5, #8]
	str	r3, [sp, #0xc]
	ldrb	r3, [r5, #0x61]
	cmp	r3, #0
	ldr	r10, [r5, #0x10]
	bne	.La7ac
	ldr	r2, [r5, #0x38]
	str	r3, [sp, #8]
	cmp	r2, #0x80000000
	beq	.La6c0
	rsb	r2, r9, r2
	add	r3, r2, #0xff00
	add	r3, #0xff
	cmp	r2, #0
	ldr	r1, [r5, #0x40]
	asrge	r6, r2, #16
	asrlt	r6, r3, #16
	rsb	r1, r10, r1
	add	r3, r1, #0xff00
	add	r3, #0xff
	cmp	r1, #0
	asrge	r7, r1, #16
	asrlt	r7, r3, #16
	mul	r2, r7, r7
	mla	r0, r6, r6, r2
	ldr	r1, =Func_948
	mov	lr, pc
	bx	r1
	lsl	r0, #16
	cmp	r0, #0x1000000
	bge	.La614
	ldr	r3, [r5, #0x38]
	ldr	r2, [r5, #0x40]
	rsb	r6, r9, r3
	rsb	r7, r10, r2
	smull	r1, r3, r6, r6
	lsl	r3, #16
	orr	r3, r1, lsr #16
	smull	r2, r0, r7, r7
	lsl	r0, #16
	orr	r0, r2, lsr #16
	add	r0, r3, r0
	ldr	r3, =Func_948
	mov	lr, pc
	bx	r3
	lsl	r0, #8
.La614:
	cmp	r0, #0
	ldreq	r9, [r5, #0x38]
	ldreq	r10, [r5, #0x40]
	beq	.La73c
	ldr	r1, [r5, #0x34]
	ldr	r3, =Func_8ac
	mov	lr, pc
	bx	r3
	smull	r1, r3, r0, r6
	lsl	r3, #16
	orr	r3, r1, lsr #16
	ldr	r2, [r5, #0x24]
	add	r8, r2, r3
	str	r8, [r5, #0x24]
	smull	r1, r3, r0, r7
	lsl	r3, #16
	orr	r3, r1, lsr #16
	ldr	r2, [r5, #0x2c]
	add	r6, r2, r3
	str	r6, [r5, #0x2c]
	smull	r2, r3, r8, r8
	lsl	r3, #16
	orr	r3, r2, lsr #16
	smull	r1, r0, r6, r6
	lsl	r0, #16
	orr	r0, r1, lsr #16
	ldr	r1, =Func_948
	add	r0, r3, r0
	mov	lr, pc
	bx	r1
	ldr	r1, [r5, #0x30]
	lsl	r0, #8
	cmp	r0, r1
	ble	.La73c
	ldr	r3, =Func_8ac
	mov	lr, pc
	bx	r3
	smull	r2, r3, r0, r8
	lsl	r3, #16
	orr	r3, r2, lsr #16
	str	r3, [r5, #0x24]
	smull	r1, r2, r0, r6
	b	.La720
.La6c0:
	ldr	r6, [r5, #0x24]
	ldr	r7, [r5, #0x2c]
	smull	r2, r3, r6, r6
	lsl	r3, #16
	orr	r3, r2, lsr #16
	smull	r1, r0, r7, r7
	lsl	r0, #16
	orr	r0, r1, lsr #16
	add	r0, r3, r0
	bl	Func_a960
	lsls	r0, #8
	beq	.La730
	ldr	r3, [r5, #0x34]
	subs	r1, r0, r3
	ldrmi	r1, [sp, #8]
	strmi	r1, [r5, #0x24]
	strmi	r1, [r5, #0x2c]
	bmi	.La73c
	bl	Func_a968
	smull	r2, r3, r0, r6
	lsl	r3, #16
	orr	r3, r2, lsr #16
	str	r3, [r5, #0x24]
	smull	r1, r2, r0, r7
.La720:
	lsl	r2, #16
	orr	r2, r1, lsr #16
	str	r2, [r5, #0x2c]
	b	.La73c
.La730:
	ldr	r3, [sp, #8]
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
.La73c:
	ldrb	r3, [r5, #0x55]
	tst	r3, #2
	beq	.La7ac
	ldr	r1, [r5, #0x14]
	ldr	r3, [sp, #0xc]
	cmp	r3, r1
	ble	.La76c
	ldr	r3, [r5, #0x28]
	ldr	r2, [r5, #0x48]
	rsb	r3, r2, r3
	str	r3, [r5, #0x28]
	bgt	.La7ac
.La76c:
	ldr	r2, [r5, #0x28]
	cmp	r2, #0
	bge	.La7ac
	str	r1, [sp, #0xc]
	ldr	r3, [r5, #0x44]
	smull	r2, r3, r3, r2
	lsl	r3, #16
	orr	r3, r2, lsr #16
	rsb	r3, #0
	str	r3, [r5, #0x28]
	ldr	r2, [r5, #0x48]
	cmp	r3, #0
	rsblt	r3, #0
	cmp	r3, r2
	movle	r3, #0
	strle	r3, [r5, #0x28]
.La7ac:
	ldr	r3, [r5, #0x24]
	ldr	r2, [r5, #0x28]
	add	r9, r3
	ldr	r3, [sp, #0xc]
	ldr	r1, [r5, #0x2c]
	add	r3, r2
	str	r3, [sp, #0xc]
	ldrb	r3, [r5, #0x56]
	add	r10, r1
	cmp	r3, #0x11
	beq	.La810
	bgt	.La7e8
	cmp	r3, #0x10
	beq	.La7f4
	b	.La87c
.La7e8:
	cmp	r3, #0x12
	beq	.La854
	b	.La87c
.La7f4:
	ldr	r2, [r5, #0x38]
	cmp	r9, r2
	beq	.La874
	ldr	r3, [r5, #8]
	rsb	r3, r2, r3
	rsb	r2, r9
	b	.La86c
.La810:
	ldr	r2, [r5, #0x3c]
	ldr	r3, [sp, #0xc]
	cmp	r3, r2
	beq	.La838
	ldr	r3, [r5, #0xc]
	ldr	r1, [sp, #0xc]
	rsb	r3, r2, r3
	rsb	r2, r1
	teq	r3, r2
	bpl	.La87c
.La838:
	mov	r3, #1
	str	r3, [sp, #8]
	b	.La87c

	.pool

.La854:
	ldr	r2, [r5, #0x40]
	cmp	r10, r2
	beq	.La874
	ldr	r3, [r5, #0x10]
	rsb	r3, r2, r3
	rsb	r2, r10
.La86c:
	teq	r3, r2
	bpl	.La87c
.La874:
	mov	r1, #1
	str	r1, [sp, #8]
.La87c:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.La8d4
	ldrb	r3, [r5, #0x58]
	cmp	r3, #0
	beq	.La8bc
	ldr	r9, [r5, #0x38]
	mov	r3, #0
	str	r3, [r5, #0x24]
	ldr	r10, [r5, #0x40]
	ldrb	r2, [r5, #0x55]
	str	r3, [r5, #0x2c]
	cmp	r2, r3
	ldreq	r1, [r5, #0x3c]
	streq	r1, [sp, #0xc]
	streq	r2, [r5, #0x28]
.La8bc:
	mov	r3, #0x80000000
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r2, #0
	strb	r2, [r5, #0x56]
.La8d4:
	str	r9, [r5, #8]
	ldr	r3, [sp, #0xc]
	str	r3, [r5, #0xc]
	ldrb	r3, [r5, #0x5a]
	str	r10, [r5, #0x10]
	tst	r3, #1
	beq	.La940
	ldr	r9, [r5, #0x24]
	ldr	r10, [r5, #0x2c]
	cmp	r10, #0
	cmpeq	r9, #0
	beq	.La940
	mov	r0, r10
	mov	r1, r9
	bl	Func_a958
	lsl	r0, #16
	ldrh	r3, [r5, #6]
	mov	r2, #0x80000000
	rsb	r0, r3, r0, lsr #16
	lsl	r0, #16
	asr	r0, #16
	cmp	r0, #0x1000
	movge	r0, #0x1000
	cmn	r0, #0x1000
	asrlt	r0, r2, #19
	add	r3, r0
	strh	r3, [r5, #6]
.La940:
	ldm	sp, {r2, r5}
	cmp	r2, #7
	ble	.La4a8
	add	sp, #0x10
	pop	{r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.func_end Func_a494

.arm_func_start Func_a958
	ldr	r4, =Func_44d0
	bx	r4
.ssize	Func_a958

.arm_func_start Func_a960
	ldr	r4, =Func_948
	bx	r4
.ssize	Func_a960

.arm_func_start Func_a968
	ldr	r4, =Func_8ac
	bx	r4
.ssize	Func_a968

.pool
