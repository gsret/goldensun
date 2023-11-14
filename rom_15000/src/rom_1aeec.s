	.include "macros.inc"

.thumb_func_start Func_1aeec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	lsr	r4, r3, #2
	mov	r3, #7
	mov	r8, r1
	and	r4, r3
	mov	r3, #0x34
	mov	r2, r8
	mul	r2, r3
	mov	r6, r0
	add	r3, r2, r6
	ldrh	r3, [r3, #0xa]
	cmp	r3, #0
	bne	.L1af10
	b	.L1b000
.L1af10:
	ldr	r0, =0x1ff
	add	r3, r6, r2
	add	r2, #0x10
	ldrh	r1, [r6, r2]
	mov	r5, r3
	mov	r12, r0
	add	r5, #0x28
	mov	r3, r12
	ldr	r7, =0xfffffe00
	and	r3, r1
	ldrh	r1, [r5, #6]
	mov	r0, r7
	and	r0, r1
	orr	r0, r3
	strh	r0, [r5, #6]
	add	r2, r6, r2
	ldrh	r3, [r2, #2]
	mov	r1, r8
	strb	r3, [r5, #4]
	cmp	r1, #0
	beq	.L1af5c
	ldrh	r2, [r6, #0x3c]
	mov	r3, r2
	ldr	r1, =.L342f8
	cmp	r3, #0
	beq	.L1af76
	lsl	r3, r0, #23
	lsr	r3, #23
	add	r3, r2
	b	.L1af6c

	.pool_aligned

.L1af5c:
	ldrh	r2, [r6, #8]
	mov	r3, r2
	ldr	r1, =.L33ef8
	cmp	r3, #0
	beq	.L1af76
	lsl	r3, r0, #23
	lsr	r3, #23
	sub	r3, r2
.L1af6c:
	mov	r2, r12
	and	r3, r2
	and	r0, r7
	orr	r0, r3
	strh	r0, [r5, #6]
.L1af76:
	mov	r3, #0x34
	mov	r0, r8
	mul	r0, r3
	mov	r3, r0
	add	r3, #0xc
	lsl	r2, r4, #7
	add	r2, r1, r2
	ldrh	r0, [r6, r3]
	mov	r1, #0x80
	bl	Func_3fa4
	ldr	r3, .L1afb0	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	ldr	r0, =0x103
	bl	_Func_79338
	cmp	r0, #0
	beq	.L1afde
	ldr	r1, =0x2e2
	add	r3, r6, r1
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L1afd4
	b	.L1afc4

	.align	2, 0
.L1afb0:
	.word	0x3ff
	.pool

.L1afc4:
	ldrb	r3, [r5, #5]
	mov	r2, #0xd
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r5, #5]
	b	.L1afde
.L1afd4:
	ldrb	r2, [r5, #5]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	strb	r3, [r5, #5]
.L1afde:
	mov	r1, #0xee
	mov	r0, r5
	bl	Func_3dec
	mov	r3, #0x34
	mov	r2, r8
	mul	r2, r3
	mov	r3, r2
	mov	r1, r3
	add	r1, #8
	ldrh	r2, [r6, r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1b000
	ldr	r0, =0xffff
	add	r3, r2, r0
	strh	r3, [r6, r1]
.L1b000:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1aeec

.thumb_func_start Func_1b010
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e98
	ldr	r6, [r3]
	mov	r10, r0
	mov	r0, r6
	sub	sp, #4
	mov	r5, r1
	bl	Func_1b36c
	mov	r2, #0xd4
	lsl	r2, #2
	add	r2, r6
	mov	r9, r0
	ldr	r0, [r2]
	mov	r8, r2
	cmp	r0, #0
	bne	.L1b0aa
	mov	r3, r10
	cmp	r3, #6
	bne	.L1b082
	mov	r2, #0xee
	lsl	r2, #2
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1b058
	mov	r3, r10
	str	r3, [sp]
	mov	r2, #5
	mov	r0, #0x11
	mov	r1, #0x11
	b	.L1b062
.L1b058:
	mov	r3, r10
	str	r3, [sp]
	mov	r2, #5
	mov	r0, #0x11
	mov	r1, #0
.L1b062:
	mov	r3, #3
	bl	Func_162d4
	mov	r2, r8
	str	r0, [r2]
	mov	r3, #0xe8
	lsl	r3, #2
	add	r2, r6, r3
	mov	r3, #0
	strh	r3, [r2]
	mov	r3, #0xee
	lsl	r3, #2
	add	r2, r6, r3
	add	r3, #0x2f
	strh	r3, [r2]
	b	.L1b09c
.L1b082:
	mov	r0, #9
	sub	r0, r5
	mov	r3, #6
	lsr	r0, #1
	add	r2, r5, #2
	str	r3, [sp]
	add	r0, #0x13
	mov	r1, #0x11
	mov	r3, #3
	bl	Func_162d4
	mov	r2, r8
	str	r0, [r2]
.L1b09c:
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r0, [r3]
	bl	Func_16478
	b	.L1b0e2
.L1b0aa:
	cmp	r5, #0
	beq	.L1b0d6
	ldrh	r3, [r0, #8]
	add	r7, r5, #2
	cmp	r3, r7
	beq	.L1b0d6
	mov	r1, #2
	bl	Func_16418
	mov	r0, #9
	sub	r0, r5
	mov	r3, #6
	lsr	r0, #1
	str	r3, [sp]
	add	r0, #0x13
	mov	r3, #3
	mov	r1, #0x11
	mov	r2, r7
	bl	Func_162d4
	mov	r3, r8
	str	r0, [r3]
.L1b0d6:
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r0, [r3]
	bl	Func_16478
.L1b0e2:
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1b0fa
	mov	r3, r9
	sub	r2, #0x44
	ldrh	r0, [r3, #0x20]
	add	r3, r6, r2
	ldr	r1, [r3]
	b	.L1b10e
.L1b0fa:
	mov	r3, r10
	cmp	r3, #2
	beq	.L1b118
	cmp	r3, #4
	bne	.L1b12a
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r1, [r3]
	ldr	r0, =0x51
.L1b10e:
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e7c0
	b	.L1b12a
.L1b118:
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r1, [r3]
	ldr	r0, =0x50
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e7c0
.L1b12a:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1b010

.thumb_func_start Func_1b148
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e98
	ldr	r6, [r3]
	bl	Func_1a97c
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r0, [r3]
	mov	r1, #2
	bl	Func_16418
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L1b188
	mov	r7, #0
.L1b174:
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	beq	.L1b182
	ldrh	r0, [r5, #0xc]
	bl	Func_3f3c
	strh	r7, [r5, #0xa]
.L1b182:
	ldr	r5, [r5, #4]
	cmp	r5, #0
	bne	.L1b174
.L1b188:
	mov	r2, #0xd3
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L1b1aa
	mov	r7, #0
.L1b196:
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	beq	.L1b1a4
	ldrh	r0, [r5, #0xc]
	bl	Func_3f3c
	strh	r7, [r5, #0xa]
.L1b1a4:
	ldr	r5, [r5, #4]
	cmp	r5, #0
	bne	.L1b196
.L1b1aa:
	bl	Func_1c21c
	mov	r2, #0x12
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L1b1ce
	ldrh	r0, [r6, #0xc]
	bl	Func_3f3c
	mov	r2, #0x12
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L1b1ce
	mov	r3, r6
	add	r3, #0x40
	ldrh	r0, [r3]
	bl	Func_3f3c
.L1b1ce:
	mov	r2, #0xb9
	lsl	r2, #2
	add	r3, r6, r2
	ldrh	r0, [r3]
	bl	Func_3f3c
	mov	r0, #0x12
	bl	Func_2dd8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1b148

.thumb_func_start Func_1b1ec
	push	{lr}
	ldr	r3, =iwram_1e98
	ldr	r4, =0x396
	ldr	r3, [r3]
	add	r2, r3, r4
	add	r4, #2
	strh	r0, [r2]
	add	r2, r3, r4
	strh	r1, [r2]
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1b21a
.L1b20a:
	strh	r0, [r3, #0x10]
	strh	r0, [r3, #0x18]
	strh	r1, [r3, #0x12]
	strh	r1, [r3, #0x1a]
	ldr	r3, [r3, #4]
	add	r0, #0x10
	cmp	r3, #0
	bne	.L1b20a
.L1b21a:
	pop	{r0}
	bx	r0
.func_end Func_1b1ec

.thumb_func_start Func_1b228
	push	{r5, lr}
	ldr	r3, =iwram_1e98
	ldr	r5, [r3]
	mov	r1, #0
	mov	r0, r5
	bl	Func_1b248
	mov	r0, r5
	mov	r1, #1
	bl	Func_1b248
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_1b228

.thumb_func_start Func_1b248
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x34
	mul	r3, r1
	mov	r6, r0
	add	r2, r6, r3
	mov	r0, #0
	add	r2, #0x28
	mov	r11, r0
	add	r3, #8
	mov	r10, r2
	add	r4, r6, r3
	mov	r2, r11
	strh	r2, [r4, #2]
	cmp	r1, #0
	beq	.L1b2ac
	mov	r0, #0xe5
	lsl	r0, #2
	add	r3, r6, r0
	ldrh	r2, [r3]
	mov	r3, #0xe7
	lsl	r3, #2
	add	r0, r6, r3
	ldrh	r3, [r0]
	ldr	r5, =.L342f8
	cmp	r3, #0
	beq	.L1b28a
	sub	r2, r3
.L1b28a:
	cmp	r2, #5
	bls	.L1b294
	mov	r3, #1
	strh	r3, [r4, #2]
	mov	r2, #5
.L1b294:
	ldr	r4, =0x396
	add	r3, r6, r4
	ldrh	r3, [r3]
	sub	r2, #1
	lsl	r2, #4
	add	r3, r2
	mov	r2, r6
	add	r3, #0x11
	add	r2, #0x44
	mov	r11, r5
	strh	r3, [r2]
	b	.L1b2cc
.L1b2ac:
	ldr	r2, =0x396
	add	r3, r6, r2
	ldr	r0, =.L33ef8
	ldrh	r3, [r3]
	ldr	r4, =0xfff7
	mov	r11, r0
	add	r3, r4
	mov	r0, #0xe7
	strh	r3, [r6, #0x10]
	lsl	r0, #2
	add	r3, r6, r0
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1b2cc
	mov	r3, #1
	strh	r3, [r6, #0xa]
.L1b2cc:
	mov	r3, #0x34
	mov	r7, r1
	mul	r7, r3
	mov	r3, r7
	add	r3, #0x10
	add	r3, r6
	mov	r4, #2
	ldrsh	r2, [r3, r4]
	mov	r8, r3
	mov	r9, r2
	cmp	r2, #0
	bne	.L1b34c
	bl	Func_4080
	mov	r5, r7
	add	r5, #0xc
	strh	r0, [r6, r5]
	mov	r1, #0x80
	ldrh	r0, [r6, r5]
	mov	r2, r11
	bl	Func_3fa4
	add	r5, r6, r5
	strh	r0, [r5, #2]
	mov	r0, #0xe6
	lsl	r0, #2
	add	r3, r6, r0
	ldrh	r3, [r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	mov	r3, r7
	add	r3, #8
	mov	r4, r9
	strh	r4, [r6, r3]
	mov	r0, r10
	ldrb	r3, [r0, #5]
	mov	r0, #0xd
	neg	r0, r0
	mov	r2, r0
	and	r2, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r2, r3
	mov	r3, #0x20
	orr	r2, r3
	mov	r3, #4
	neg	r3, r3
	and	r2, r3
	mov	r3, r10
	ldrb	r1, [r3, #7]
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r1
	mov	r1, #0x3f
	mov	r4, r10
	and	r3, r1
	strb	r3, [r4, #7]
	and	r2, r1
	mov	r3, #0x80
	orr	r2, r3
	ldrb	r3, [r4, #9]
	and	r0, r3
	strb	r2, [r4, #5]
	strb	r0, [r4, #9]
.L1b34c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1b248

.thumb_func_start Func_1b36c
	push	{lr}
	mov	r2, #0xd2
	lsl	r2, #2
	ldr	r4, =0x39e
	add	r3, r0, r2
	ldr	r2, [r3]
	add	r3, r0, r4
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #0
	beq	.L1b38e
	add	r3, r0, r4
	ldrh	r0, [r3]
.L1b386:
	add	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, r0
	bne	.L1b386
.L1b38e:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_1b36c

.thumb_func_start Func_1b398
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e98
	ldr	r5, [r3]
	mov	r6, r0
	mov	r1, #0
	mov	r0, r5
	bl	Func_1b9ec
	ldr	r7, =iwram_1c94
.L1b3aa:
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0xe8
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L1b3aa
	ldr	r3, =0x3e7
	cmp	r6, r3
	beq	.L1b3fa
	ldr	r1, =iwram_1b04
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3d6
	mov	r0, r5
	bl	Func_1b664
	b	.L1b3fa
.L1b3d6:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3e8
	mov	r0, r5
	bl	Func_1b810
	b	.L1b3fa
.L1b3e8:
	ldr	r3, [r7]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3fa
	mov	r0, r5
	bl	Func_1be80
	b	.L1b40c
.L1b3fa:
	cmp	r6, #0
	beq	.L1b3aa
	ldr	r3, [r7]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3aa
	mov	r0, #1
	neg	r0, r0
.L1b40c:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1b398

.thumb_func_start Func_1b424
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e98
	ldr	r5, [r3]
	mov	r6, r0
.L1b42c:
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0xe8
	lsl	r1, #2
	add	r3, r5, r1
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L1b42c
	ldr	r2, =0x3e7
	cmp	r6, r2
	beq	.L1b4bc
	ldr	r1, =iwram_1b04
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1b45e
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, r5
	bl	Func_1b664
	b	.L1b474
.L1b45e:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1b474
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, r5
	bl	Func_1b810
.L1b474:
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b4bc
	mov	r1, #0xe7
	lsl	r1, #2
	add	r3, r5, r1
	add	r1, #2
	ldrh	r2, [r3]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r6, r2, r3
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r5, r2
	ldr	r3, [r3]
	ldrh	r3, [r3, #0xa]
	cmp	r3, #6
	bne	.L1b4b2
	cmp	r6, #0
	bne	.L1b4aa
	mov	r0, #0x70
	bl	_Func_f9080
	b	.L1b4b8
.L1b4aa:
	mov	r0, #0x71
	bl	_Func_f9080
	b	.L1b4b8
.L1b4b2:
	mov	r0, #0x70
	bl	_Func_f9080
.L1b4b8:
	mov	r0, r6
	b	.L1b4d6
.L1b4bc:
	cmp	r6, #0
	beq	.L1b42c
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1b42c
	mov	r0, #0x71
	bl	_Func_f9080
	mov	r0, #1
	neg	r0, r0
.L1b4d6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_1b424

.thumb_func_start Func_1b4ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	ldr	r1, =0x39e
	mov	r0, #0xe7
	lsl	r0, #2
	add	r7, r5, r0
	add	r6, r5, r1
	ldrh	r3, [r7]
	ldrh	r1, [r6]
	mov	r2, #0xe5
	add	r3, r1
	lsl	r2, #2
	add	r3, #1
	add	r2, r5
	mov	r10, r3
	ldrh	r3, [r2]
	mov	r8, r2
	cmp	r10, r3
	beq	.L1b5aa
	mov	r0, r5
	bl	Func_1b9a8
	ldr	r3, =0x3a2
	add	r2, r5, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldrh	r1, [r6]
	mov	r0, #0x80
	add	r3, r1, #1
	strh	r3, [r6]
	lsl	r0, #11
	lsl	r3, #16
	cmp	r3, r0
	bne	.L1b57a
	mov	r0, r8
	mov	r2, r10
	ldrh	r3, [r0]
	add	r2, #1
	cmp	r2, r3
	bcs	.L1b57a
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r1, r2
	strh	r3, [r6]
	mov	r3, #8
	strh	r3, [r5, #0x3c]
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	mov	r0, r5
	mov	r1, #1
	bl	Func_1ba68
	ldrh	r2, [r6]
	ldrh	r3, [r7]
	mov	r0, r8
	add	r3, r2
	ldrh	r2, [r0]
	add	r3, #2
	cmp	r3, r2
	bne	.L1b576
	mov	r3, #0
	strh	r3, [r5, #0x3e]
.L1b576:
	mov	r3, #1
	strh	r3, [r5, #0xa]
.L1b57a:
	ldr	r1, =0x3a2
	mov	r3, #1
	add	r2, r5, r1
	strh	r3, [r2]
	ldr	r2, =0x39e
	add	r3, r5, r2
	ldrh	r1, [r3]
	mov	r0, r5
	bl	Func_1b9ec
	mov	r0, #1
	bl	Func_30f8
	mov	r0, #0xd2
	lsl	r0, #2
	add	r3, r5, r0
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_1b010
	mov	r0, #1
	bl	Func_30f8
.L1b5aa:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1b4ec

.thumb_func_start Func_1b5c0
	push	{r5, r6, r7, lr}
	mov	r1, #0xe7
	mov	r6, r0
	lsl	r1, #2
	add	r7, r6, r1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1b650
	ldr	r2, =0x39e
	add	r5, r6, r2
	ldrh	r1, [r5]
	bl	Func_1b9a8
	ldr	r3, =0x3a2
	add	r2, r6, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldrh	r5, [r5]
	cmp	r5, #1
	bne	.L1b614
	ldrh	r3, [r7]
	cmp	r3, #0
	beq	.L1b614
	mov	r3, #8
	strh	r3, [r6, #8]
	ldrh	r3, [r7]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r7]
	mov	r0, r6
	mov	r1, #0
	bl	Func_1ba68
	ldrh	r3, [r7]
	cmp	r3, #0
	bne	.L1b610
	strh	r3, [r6, #0xa]
.L1b610:
	strh	r5, [r6, #0x3e]
	b	.L1b620
.L1b614:
	ldr	r3, =0x39e
	add	r2, r6, r3
	ldrh	r3, [r2]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r2]
.L1b620:
	ldr	r3, =0x3a2
	ldr	r1, =0x39e
	add	r2, r6, r3
	mov	r3, #1
	strh	r3, [r2]
	add	r3, r6, r1
	ldrh	r1, [r3]
	mov	r0, r6
	bl	Func_1b9ec
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_1b010
	mov	r0, #1
	bl	Func_30f8
.L1b650:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1b5c0

.thumb_func_start Func_1b664
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	ldr	r0, =0x39e
	add	r5, r7, r0
	ldrh	r1, [r5]
	mov	r0, r7
	bl	Func_1b9a8
	ldr	r1, =0x3a2
	mov	r3, #0
	add	r2, r7, r1
	mov	r10, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldrh	r3, [r5]
	mov	r0, #0xe5
	add	r3, #1
	strh	r3, [r5]
	lsl	r0, #2
	add	r0, r7
	ldrh	r2, [r0]
	mov	r8, r0
	cmp	r2, #5
	bhi	.L1b6a2
	b	.L1b7b2
.L1b6a2:
	mov	r1, #0xe7
	lsl	r1, #2
	add	r6, r7, r1
	ldrh	r3, [r6]
	ldrh	r2, [r5]
	ldrh	r1, [r0]
	add	r3, r2
	cmp	r3, r1
	bne	.L1b776
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r5, [r3]
	mov	r3, r10
	strh	r3, [r7, #0xa]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L1b6e4
	ldr	r0, =0x396
	mov	r3, #0xe6
	add	r1, r7, r0
	lsl	r3, #2
	ldr	r0, =0xfff4
	add	r2, r7, r3
.L1b6d2:
	ldrh	r3, [r1]
	strh	r3, [r5, #0x18]
	ldrh	r3, [r2]
	strh	r0, [r5, #0x14]
	strh	r3, [r5, #0x1a]
	ldr	r5, [r5, #4]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bne	.L1b6d2
.L1b6e4:
	ldr	r0, =0x396
	add	r3, r7, r0
	ldrh	r2, [r3]
	mov	r1, #0xe6
	strh	r2, [r5, #0x18]
	lsl	r1, #2
	add	r3, r7, r1
	ldrh	r3, [r3]
	strh	r3, [r5, #0x1a]
	ldr	r3, =0xfff4
	lsl	r2, #16
	strh	r3, [r5, #0x14]
	mov	r0, #0x10
	ldrsh	r3, [r5, r0]
	asr	r2, #16
	cmp	r2, r3
	beq	.L1b718
.L1b706:
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0x18
	ldrsh	r2, [r5, r1]
	mov	r0, #0x10
	ldrsh	r3, [r5, r0]
	cmp	r2, r3
	bne	.L1b706
.L1b718:
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r7, r1
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L1b73e
	mov	r2, #0xd5
	lsl	r2, #2
	add	r6, r7, r2
.L1b72a:
	ldrh	r0, [r6]
	ldrh	r1, [r6, #0x20]
	mov	r2, r5
	mov	r3, #1
	bl	Func_1bd98
	ldr	r5, [r5, #4]
	add	r6, #2
	cmp	r5, #0
	bne	.L1b72a
.L1b73e:
	ldr	r0, =0x39e
	mov	r1, #0xe7
	add	r3, r7, r0
	mov	r2, #0
	lsl	r1, #2
	strh	r2, [r3]
	add	r3, r7, r1
	strh	r2, [r3]
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r5, [r3]
	mov	r0, #0x10
	ldrsh	r3, [r5, r0]
	ldr	r5, [r5, #4]
	add	r3, #0x10
	cmp	r5, #0
	beq	.L1b770
	mov	r2, #0xc
.L1b764:
	strh	r3, [r5, #0x18]
	strh	r2, [r5, #0x14]
	ldr	r5, [r5, #4]
	add	r3, #0x10
	cmp	r5, #0
	bne	.L1b764
.L1b770:
	mov	r3, #1
	strh	r3, [r7, #0x3e]
	b	.L1b7be
.L1b776:
	cmp	r2, #4
	bne	.L1b7be
	add	r3, #1
	cmp	r3, r1
	bcs	.L1b7be
	ldr	r1, =0xffff
	add	r3, r2, r1
	strh	r3, [r5]
	mov	r3, #8
	strh	r3, [r7, #0x3c]
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	mov	r0, r7
	mov	r1, #1
	bl	Func_1ba68
	ldrh	r2, [r5]
	ldrh	r3, [r6]
	mov	r0, r8
	add	r3, r2
	ldrh	r2, [r0]
	add	r3, #2
	cmp	r3, r2
	bne	.L1b7ac
	mov	r1, r10
	strh	r1, [r7, #0x3e]
.L1b7ac:
	mov	r3, #1
	strh	r3, [r7, #0xa]
	b	.L1b7be
.L1b7b2:
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r2
	bne	.L1b7be
	mov	r2, r10
	strh	r2, [r5]
.L1b7be:
	ldr	r3, =0x3a2
	ldr	r0, =0x39e
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	add	r3, r7, r0
	ldrh	r1, [r3]
	mov	r0, r7
	bl	Func_1b9ec
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r7, r1
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_1b010
	mov	r0, #1
	bl	Func_30f8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1b664

.thumb_func_start Func_1b810
	push	{r5, r6, r7, lr}
	ldr	r1, =0x39e
	mov	r7, r0
	add	r6, r7, r1
	ldrh	r1, [r6]
	bl	Func_1b9a8
	ldr	r3, =0x3a2
	add	r2, r7, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0xe5
	lsl	r1, #2
	add	r3, r7, r1
	ldrh	r1, [r3]
	mov	r3, r1
	cmp	r3, #5
	bhi	.L1b83c
	b	.L1b948
.L1b83c:
	mov	r2, #0xe7
	lsl	r2, #2
	add	r5, r7, r2
	ldrh	r1, [r5]
	ldrh	r2, [r6]
	mov	r3, r1
	orr	r3, r2
	cmp	r3, #0
	beq	.L1b888
	mov	r6, r2
	cmp	r6, #1
	bne	.L1b87a
	mov	r3, r1
	cmp	r3, #0
	beq	.L1b87a
	mov	r3, #8
	strh	r3, [r7, #8]
	ldr	r1, =0xffff
	ldrh	r3, [r5]
	add	r3, r1
	strh	r3, [r5]
	mov	r0, r7
	mov	r1, #0
	bl	Func_1ba68
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.L1b876
	strh	r3, [r7, #0xa]
.L1b876:
	strh	r6, [r7, #0x3e]
	b	.L1b95c
.L1b87a:
	ldr	r3, =0x39e
	add	r2, r7, r3
	ldrh	r3, [r2]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r2]
	b	.L1b95c
.L1b888:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	mov	r0, #0
	ldr	r5, [r3]
	strh	r0, [r7, #0x3e]
	ldr	r3, [r5, #4]
	mov	r1, #0x40
	cmp	r3, #0
	beq	.L1b8b0
	mov	r2, #0xc
.L1b89e:
	ldrh	r3, [r5, #0x10]
	add	r3, r1
	strh	r3, [r5, #0x18]
	strh	r2, [r5, #0x14]
	ldr	r5, [r5, #4]
	ldr	r3, [r5, #4]
	sub	r1, #0x10
	cmp	r3, #0
	bne	.L1b89e
.L1b8b0:
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r7, r1
	ldr	r5, [r3]
	b	.L1b8c0
.L1b8ba:
	mov	r0, #1
	bl	Func_30f8
.L1b8c0:
	mov	r3, #0x10
	ldrsh	r2, [r5, r3]
	mov	r1, #0x18
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	bne	.L1b8ba
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r7, r2
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #5
	beq	.L1b8e6
	add	r3, r7, r2
	ldrh	r3, [r3]
	sub	r3, #5
.L1b8e0:
	add	r1, #1
	cmp	r1, r3
	bne	.L1b8e0
.L1b8e6:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	add	r2, #0x54
	ldr	r5, [r3]
	add	r3, r7, r2
	strh	r1, [r3]
	ldr	r3, =0x39e
	add	r2, r7, r3
	mov	r3, #4
	strh	r3, [r2]
	cmp	r5, #0
	beq	.L1b91e
	lsl	r3, r1, #1
	mov	r1, #0xd5
	add	r3, r7
	lsl	r1, #2
	add	r6, r3, r1
.L1b90a:
	ldrh	r0, [r6]
	ldrh	r1, [r6, #0x20]
	mov	r2, r5
	mov	r3, #1
	bl	Func_1bd98
	ldr	r5, [r5, #4]
	add	r6, #2
	cmp	r5, #0
	bne	.L1b90a
.L1b91e:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r1, =0x396
	ldr	r5, [r3]
	add	r3, r7, r1
	ldrh	r1, [r3]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L1b942
	ldr	r2, =0xfff4
.L1b934:
	strh	r1, [r5, #0x18]
	strh	r2, [r5, #0x14]
	ldr	r5, [r5, #4]
	ldr	r3, [r5, #4]
	add	r1, #0x10
	cmp	r3, #0
	bne	.L1b934
.L1b942:
	mov	r3, #1
	strh	r3, [r7, #0xa]
	b	.L1b95c
.L1b948:
	ldrh	r2, [r6]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1b956
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.L1b95a
.L1b956:
	ldr	r2, =0xffff
	add	r3, r1, r2
.L1b95a:
	strh	r3, [r6]
.L1b95c:
	ldr	r3, =0x3a2
	ldr	r1, =0x39e
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	add	r3, r7, r1
	ldrh	r1, [r3]
	mov	r0, r7
	bl	Func_1b9ec
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_1b010
	mov	r0, #1
	bl	Func_30f8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1b810

.thumb_func_start Func_1b9a8
	push	{lr}
	mov	r3, #0xd2
	lsl	r3, #2
	add	r0, r3
	sub	sp, #0xc
	ldr	r2, [r0]
	cmp	r1, #0
	beq	.L1b9c0
.L1b9b8:
	sub	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, #0
	bne	.L1b9b8
.L1b9c0:
	ldrh	r3, [r2, #0xa]
	cmp	r3, #1
	beq	.L1b9ca
	cmp	r3, #6
	bne	.L1b9e2
.L1b9ca:
	ldrh	r0, [r2, #0x20]
	ldr	r3, =0x1f
	sub	r0, r3
	ldrh	r3, [r2, #0xc]
	mov	r1, #1
	str	r3, [sp, #8]
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, #0
	bl	Func_19ee4
.L1b9e2:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end Func_1b9a8

.thumb_func_start Func_1b9ec
	push	{lr}
	mov	r3, #0xd2
	lsl	r3, #2
	add	r0, r3
	sub	sp, #0xc
	ldr	r2, [r0]
	cmp	r1, #0
	beq	.L1ba04
.L1b9fc:
	sub	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, #0
	bne	.L1b9fc
.L1ba04:
	ldrh	r3, [r2, #0xa]
	cmp	r3, #1
	beq	.L1ba0e
	cmp	r3, #6
	bne	.L1ba2a
.L1ba0e:
	ldrh	r0, [r2, #0x20]
	ldr	r3, =0x1f
	sub	r0, r3
	ldrh	r3, [r2, #0xc]
	mov	r1, #1
	str	r3, [sp, #8]
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, #0
	bl	Func_19ee4
	bl	Func_1c188
.L1ba2a:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end Func_1b9ec

.thumb_func_start Func_1ba34
	push	{lr}
	mov	r3, #0xd2
	lsl	r3, #2
	add	r0, r3
	ldr	r0, [r0]
	sub	sp, #0xc
	mov	r2, #0
	cmp	r0, #0
	beq	.L1ba4e
.L1ba46:
	ldr	r0, [r0, #4]
	add	r2, #1
	cmp	r0, #0
	bne	.L1ba46
.L1ba4e:
	ldr	r3, =0xff
	mov	r0, sp
	lsl	r2, #1
	strh	r3, [r0, r2]
	mov	r1, #0
	bl	_Func_c10e8
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end Func_1ba34

.thumb_func_start Func_1ba68
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r10, r1
	cmp	r1, #0
	beq	.L1bb3e
	mov	r0, #0xe7
	lsl	r0, #2
	add	r3, r7, r0
	ldrh	r3, [r3]
	mov	r1, #0xdd
	add	r3, #4
	lsl	r2, r3, #1
	lsl	r1, #2
	add	r3, r2, r1
	ldrh	r3, [r7, r3]
	mov	r4, #0xd5
	lsl	r4, #2
	mov	r8, r3
	mov	r0, #0
	add	r3, r2, r4
	ldrh	r6, [r7, r3]
	bl	Func_1a910
	mov	r5, r0
	cmp	r5, #0
	bne	.L1baa4
	b	.L1bc16
.L1baa4:
	mov	r2, r5
	mov	r0, r6
	mov	r1, r8
	mov	r3, #0
	bl	Func_1bd98
	ldr	r0, =0x396
	add	r3, r7, r0
	ldrh	r2, [r3]
	mov	r3, r2
	add	r3, #0x50
	mov	r4, #0xe6
	strh	r3, [r5, #0x10]
	lsl	r4, #2
	add	r3, r7, r4
	ldrh	r3, [r3]
	add	r2, #0x40
	strh	r2, [r5, #0x18]
	strh	r3, [r5, #0x12]
	strh	r3, [r5, #0x1a]
	ldr	r2, =0xfffe
	mov	r3, #0x20
	strh	r3, [r5, #0x24]
	strh	r3, [r5, #0x22]
	add	r3, #0xe0
	strh	r3, [r5, #0x26]
	strh	r2, [r5, #0x14]
	sub	r4, #0x50
	add	r3, r7, r4
	mov	r0, r5
	ldr	r5, [r3]
	ldr	r3, =0xffe0
	strh	r3, [r5, #0x24]
	ldrh	r3, [r5, #0x10]
	sub	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	mov	r1, #0
	strh	r1, [r5, #0x26]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	beq	.L1bb08
.L1baf8:
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	sub	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	bne	.L1baf8
.L1bb08:
	mov	r3, #0
	str	r0, [r5, #4]
	str	r3, [r0, #4]
	str	r5, [r0]
	mov	r0, #0xd2
	lsl	r0, #2
	add	r3, r7, r0
	ldr	r5, [r3]
.L1bb18:
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #0x22
	ldrsh	r6, [r5, r1]
	cmp	r6, #0
	bne	.L1bb18
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r2, [r5, #4]
	str	r2, [r3]
	ldrh	r0, [r5, #0xc]
	bl	Func_3f3c
	strh	r6, [r5, #0xa]
	ldr	r5, [r5, #4]
	str	r6, [r5]
	b	.L1bc16
.L1bb3e:
	mov	r4, #0xe7
	lsl	r4, #2
	add	r3, r7, r4
	ldrh	r3, [r3]
	mov	r0, #0xdd
	lsl	r2, r3, #1
	lsl	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r7, r3]
	mov	r1, #0xd5
	lsl	r1, #2
	mov	r8, r3
	mov	r0, #0
	add	r3, r2, r1
	ldrh	r6, [r7, r3]
	bl	Func_1a910
	mov	r5, r0
	cmp	r5, #0
	beq	.L1bc16
	mov	r2, r5
	mov	r0, r6
	mov	r1, r8
	mov	r3, #0
	bl	Func_1bd98
	ldr	r2, =0x396
	add	r3, r7, r2
	ldrh	r2, [r3]
	ldr	r4, =0xfff0
	mov	r0, #0xe6
	add	r3, r2, r4
	strh	r3, [r5, #0x10]
	lsl	r0, #2
	add	r3, r7, r0
	ldrh	r3, [r3]
	mov	r1, #0x80
	strh	r3, [r5, #0x12]
	strh	r3, [r5, #0x1a]
	mov	r3, #2
	strh	r3, [r5, #0x14]
	lsl	r1, #9
	mov	r3, #0x20
	strh	r3, [r5, #0x22]
	strh	r3, [r5, #0x24]
	add	r2, r1
	add	r3, #0xe0
	mov	r4, #0xd2
	strh	r2, [r5, #0x18]
	strh	r3, [r5, #0x26]
	lsl	r4, #2
	add	r2, r7, r4
	mov	r3, r5
	ldr	r5, [r2]
	mov	r0, r10
	str	r3, [r5]
	str	r5, [r3, #4]
	str	r0, [r3]
	str	r3, [r2]
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	add	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	mov	r2, #2
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	beq	.L1bbd6
.L1bbc6:
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	add	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	bne	.L1bbc6
.L1bbd6:
	mov	r3, #0
	strh	r3, [r5, #0x26]
	ldr	r3, =0xffe0
	mov	r1, #0xd2
	strh	r3, [r5, #0x24]
	lsl	r1, #2
	add	r3, r7, r1
	mov	r6, #0x80
	ldr	r5, [r3]
	lsl	r6, #1
.L1bbea:
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0x22
	ldrsh	r3, [r5, r2]
	cmp	r3, r6
	bne	.L1bbea
	ldr	r2, [r5, #4]
	cmp	r2, #0
	beq	.L1bc08
.L1bbfe:
	mov	r5, r2
	ldr	r3, [r5, #4]
	mov	r2, r3
	cmp	r3, #0
	bne	.L1bbfe
.L1bc08:
	ldrh	r0, [r5, #0xc]
	bl	Func_3f3c
	ldr	r3, [r5]
	mov	r2, #0
	strh	r2, [r5, #0xa]
	str	r2, [r3, #4]
.L1bc16:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1ba68

.thumb_func_start Func_1bc34
	push	{r5, lr}
	mov	r3, #1
	sub	sp, #0xc
	neg	r3, r3
	sub	r0, #1
	mov	r5, r1
	str	r3, [sp, #8]
	cmp	r0, #8
	bhi	.L1bcc6
	ldr	r2, =.L1bc50
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1bc50:
	.word	.L1bc74
	.word	.L1bc84
	.word	.L1bcc6
	.word	.L1bcb6
	.word	.L1bcc6
	.word	.L1bc74
	.word	.L1bcc6
	.word	.L1bcc6
	.word	.L1bc9a

.L1bc74:
	mov	r1, #0
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	str	r1, [sp]
	bl	Func_19ee4
	b	.L1bcc6
.L1bc84:
	bl	Func_4080
	mov	r2, r0
	str	r2, [sp, #8]
	cmp	r2, #0x60
	beq	.L1bca6
	mov	r0, r5
	mov	r1, #0x1a
	bl	Func_1a2a4
	b	.L1bcc6
.L1bc9a:
	bl	Func_4080
	mov	r2, r0
	str	r2, [sp, #8]
	cmp	r2, #0x60
	bne	.L1bcac
.L1bca6:
	mov	r0, #1
	neg	r0, r0
	b	.L1bcc8
.L1bcac:
	mov	r0, r5
	mov	r1, #0
	bl	Func_1a32c
	b	.L1bcc6
.L1bcb6:
	mov	r1, #0
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, #1
	bl	Func_1a3d0
.L1bcc6:
	ldr	r0, [sp, #8]
.L1bcc8:
	add	sp, #0xc
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_1bc34

.thumb_func_start Func_1bcd4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r3
	mov	r3, #1
	sub	sp, #0xc
	mov	r4, r2
	neg	r3, r3
	mov	r7, r0
	mov	r5, r1
	str	r2, [sp, #8]
	mov	r6, r4
	cmp	r4, r3
	bne	.L1bcfe
	bl	Func_4080
	mov	r4, r0
	str	r0, [sp, #8]
	mov	r0, r6
	cmp	r4, #0x60
	beq	.L1bd86
.L1bcfe:
	sub	r0, r7, #1
	cmp	r0, #8
	bhi	.L1bd84
	ldr	r2, =.L1bd0c
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1bd0c:
	.word	.L1bd30
	.word	.L1bd42
	.word	.L1bd84
	.word	.L1bd5a
	.word	.L1bd84
	.word	.L1bd30
	.word	.L1bd4e
	.word	.L1bd6c
	.word	.L1bd78

.L1bd30:
	mov	r1, #1
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, r8
	bl	Func_19ee4
	b	.L1bd82
.L1bd42:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0x3a
	bl	Func_1a2a4
	b	.L1bd82
.L1bd4e:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0x2a
	bl	Func_1a2a4
	b	.L1bd82
.L1bd5a:
	mov	r1, #1
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, r8
	bl	Func_1a3d0
	b	.L1bd82
.L1bd6c:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0
	bl	Func_1a2ec
	b	.L1bd82
.L1bd78:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0
	bl	Func_1a32c
.L1bd82:
	ldr	r4, [sp, #8]
.L1bd84:
	mov	r0, r4
.L1bd86:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1bcd4

.thumb_func_start Func_1bd98
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r1
	sub	sp, #0xc
	mov	r5, r2
	mov	r1, r3
	cmp	r7, #2
	beq	.L1bdd4
	cmp	r7, #2
	bhi	.L1bdb2
	cmp	r7, #1
	beq	.L1bdba
	b	.L1be0a
.L1bdb2:
	cmp	r7, #4
	beq	.L1bdee
	cmp	r7, #6
	bne	.L1be0a
.L1bdba:
	cmp	r1, #0
	beq	.L1bdc2
	ldrh	r3, [r5, #0xc]
	str	r3, [sp, #8]
.L1bdc2:
	add	r3, sp, #4
	str	r1, [sp]
	add	r2, sp, #8
	mov	r0, r6
	mov	r1, #0
	bl	Func_19ee4
	ldr	r3, =0x1f
	b	.L1be06
.L1bdd4:
	cmp	r1, #0
	beq	.L1bddc
	ldrh	r3, [r5, #0xc]
	str	r3, [sp, #8]
.L1bddc:
	add	r3, sp, #4
	str	r1, [sp]
	add	r2, sp, #8
	mov	r0, r6
	mov	r1, #1
	bl	Func_19fcc
	ldr	r3, =0x182
	b	.L1be06
.L1bdee:
	cmp	r1, #0
	beq	.L1bdf6
	ldrh	r3, [r5, #0xc]
	str	r3, [sp, #8]
.L1bdf6:
	add	r3, sp, #4
	str	r1, [sp]
	add	r2, sp, #8
	mov	r0, r6
	mov	r1, #1
	bl	Func_1a3d0
	ldr	r3, =0x333
.L1be06:
	add	r3, r6, r3
	strh	r3, [r5, #0x20]
.L1be0a:
	ldr	r3, [sp, #8]
	strh	r6, [r5, #8]
	strh	r3, [r5, #0xc]
	ldr	r6, [sp, #4]
	mov	r3, #0x80
	lsl	r3, #1
	strh	r6, [r5, #0xe]
	strh	r7, [r5, #0xa]
	strh	r3, [r5, #0x22]
	strh	r3, [r5, #0x26]
	mov	r0, r5
	add	r0, #0x28
	mov	r5, #0xd
	ldrb	r3, [r0, #5]
	neg	r5, r5
	mov	r2, r5
	and	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	ldrb	r1, [r0, #7]
	mov	r4, #0x3f
	and	r2, r3
	add	r3, #0x10
	and	r2, r3
	mov	r3, r4
	and	r2, r4
	and	r3, r1
	mov	r1, #0x40
	orr	r3, r1
	strb	r2, [r0, #5]
	ldrb	r2, [r0, #9]
	strb	r3, [r0, #7]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r0, #9]
	ldr	r3, =0x3ff
	ldrh	r2, [r0, #8]
	and	r6, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r6
	strh	r3, [r0, #8]
	ldrb	r3, [r0, #9]
	and	r5, r3
	strb	r5, [r0, #9]
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1bd98

.thumb_func_start Func_1be80
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r1, #0xe7
	mov	r5, r0
	lsl	r1, #2
	add	r3, r5, r1
	ldrh	r2, [r3]
	ldr	r3, =0x39e
	add	r3, r5
	mov	r10, r3
	ldrh	r3, [r3]
	mov	r0, #0
	add	r2, r3
	mov	r8, r0
	mov	r0, r5
	mov	r9, r2
	bl	Func_1ba34
	mov	r0, r10
	ldrh	r1, [r0]
	mov	r0, r5
	bl	Func_1b9a8
	ldr	r1, =0x3a2
	mov	r3, #0x21
	add	r2, r5, r1
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =0x2e2
	ldr	r0, =0x2fa
	mov	r7, #0
	add	r3, r5, r2
	strh	r7, [r5, #0xa]
	strh	r7, [r5, #0x3e]
	strh	r7, [r3]
	add	r3, r5, r0
	strh	r7, [r3]
	bl	Func_1c21c
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r6, [r3]
	cmp	r6, #0
	beq	.L1befc
	mov	r2, r10
	ldrh	r3, [r2]
	cmp	r3, #0
	beq	.L1befc
.L1beec:
	ldr	r6, [r6, #4]
	mov	r3, #1
	add	r8, r3
	cmp	r6, #0
	beq	.L1befc
	ldrh	r3, [r2]
	cmp	r3, r8
	bne	.L1beec
.L1befc:
	ldrh	r3, [r6, #0x10]
	strh	r3, [r6, #0x1c]
	ldrh	r3, [r6, #0x12]
	mov	r0, #0xd2
	strh	r3, [r6, #0x1e]
	lsl	r0, #2
	add	r3, r5, r0
	ldr	r7, [r3]
	cmp	r7, #0
	beq	.L1bf2c
.L1bf10:
	cmp	r7, r6
	beq	.L1bf26
	ldrh	r3, [r6, #0x10]
	strh	r3, [r7, #0x18]
	mov	r0, #0x10
	ldrsh	r2, [r7, r0]
	mov	r1, #0x10
	ldrsh	r3, [r6, r1]
	sub	r3, r2
	asr	r3, #1
	strh	r3, [r7, #0x14]
.L1bf26:
	ldr	r7, [r7, #4]
	cmp	r7, #0
	bne	.L1bf10
.L1bf2c:
	mov	r0, #2
	bl	Func_30f8
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r7, [r3]
	cmp	r7, #0
	beq	.L1bf56
	mov	r2, #0
	mov	r8, r2
.L1bf42:
	cmp	r7, r6
	beq	.L1bf50
	ldrh	r0, [r7, #0xc]
	bl	Func_3f3c
	mov	r3, r8
	strh	r3, [r7, #0xa]
.L1bf50:
	ldr	r7, [r7, #4]
	cmp	r7, #0
	bne	.L1bf42
.L1bf56:
	mov	r0, #0xd2
	lsl	r0, #2
	add	r3, r5, r0
	str	r6, [r3]
	mov	r3, #0
	str	r3, [r6]
	str	r3, [r6, #4]
	mov	r1, #0xd3
	mov	r3, #4
	strh	r3, [r6, #0x18]
	lsl	r1, #2
	add	r3, r5, r1
	ldr	r7, [r3]
	mov	r2, #0
	mov	r8, r2
	cmp	r7, #0
	beq	.L1bf88
.L1bf78:
	ldrh	r3, [r6, #0x18]
	add	r3, #0x10
	strh	r3, [r6, #0x18]
	ldr	r7, [r7, #4]
	mov	r3, #1
	add	r8, r3
	cmp	r7, #0
	bne	.L1bf78
.L1bf88:
	mov	r0, r8
	lsl	r1, r0, #1
	mov	r3, #0xe9
	mov	r0, #0xe7
	lsl	r3, #2
	lsl	r0, #2
	add	r2, r1, r3
	add	r3, r5, r0
	ldrh	r3, [r3]
	strh	r3, [r5, r2]
	ldr	r3, =0x39e
	mov	r2, #0xeb
	lsl	r2, #2
	add	r0, r1, r2
	add	r1, r5, r3
	ldrh	r3, [r1]
	add	r2, r5, #2
	strh	r3, [r2, r0]
	mov	r0, #0x10
	ldrsh	r2, [r6, r0]
	mov	r0, #0x18
	ldrsh	r3, [r6, r0]
	ldr	r0, =0x39a
	sub	r3, r2
	mov	r2, #0
	mov	r8, r2
	asr	r3, #1
	strh	r3, [r6, #0x14]
	mov	r2, r8
	add	r3, r5, r0
	strh	r2, [r3]
	ldr	r3, .L1bff8	@ 0x80
	ldrh	r2, [r1]
	orr	r3, r2
	strh	r3, [r1]
	mov	r0, #2
	bl	Func_30f8
	mov	r0, #1
	bl	Func_1a910
	ldrh	r3, [r6, #0xa]
	mov	r7, r0
	strh	r3, [r7, #0xa]
	ldrh	r3, [r6, #0x20]
	strh	r3, [r7, #0x20]
	ldrh	r3, [r6, #8]
	strh	r3, [r7, #8]
	ldrh	r3, [r6, #0xc]
	strh	r3, [r7, #0xc]
	ldrh	r3, [r6, #0xe]
	strh	r3, [r7, #0xe]
	ldrh	r2, [r6, #0x10]
	strh	r2, [r7, #0x10]
	b	.L1c010

	.align	2, 0
.L1bff8:
	.word	0x80
	.pool

.L1c010:
	ldrh	r3, [r6, #0x12]
	strh	r2, [r7, #0x18]
	strh	r3, [r7, #0x12]
	strh	r3, [r7, #0x1a]
	ldrh	r3, [r6, #0x1c]
	strh	r3, [r7, #0x1c]
	ldrh	r3, [r6, #0x1e]
	strh	r3, [r7, #0x1e]
	mov	r3, r8
	strh	r3, [r7, #0x14]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r0, r8
	strh	r0, [r7, #0x16]
	strh	r3, [r7, #0x22]
	strh	r3, [r7, #0x26]
	mov	r0, r7
	add	r0, #0x28
	ldrb	r3, [r0, #5]
	mov	r2, #0xd
	neg	r2, r2
	and	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	ldrb	r1, [r0, #7]
	and	r2, r3
	mov	r4, #0x3f
	add	r3, #0x10
	and	r2, r3
	mov	r3, r4
	and	r3, r1
	and	r2, r4
	mov	r1, #0x40
	strb	r2, [r0, #5]
	orr	r3, r1
	ldrb	r2, [r0, #9]
	strb	r3, [r0, #7]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r0, #9]
	ldrh	r3, [r7, #0xe]
	ldr	r2, =0x3ff
	ldrh	r1, [r0, #8]
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	mov	r2, #0xd2
	mov	r1, r8
	lsl	r2, #2
	strh	r3, [r0, #8]
	strh	r1, [r6, #0xa]
	add	r3, r5, r2
	mov	r0, r8
	mov	r1, #0xd3
	str	r0, [r3]
	lsl	r1, #2
	add	r0, r5, r1
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1c0a4
	mov	r6, r3
	ldr	r2, [r6, #4]
	cmp	r2, #0
	beq	.L1c09c
.L1c092:
	mov	r6, r2
	ldr	r3, [r6, #4]
	mov	r2, r3
	cmp	r3, #0
	bne	.L1c092
.L1c09c:
	mov	r3, #0
	str	r7, [r6, #4]
	str	r6, [r7]
	b	.L1c0a8
.L1c0a4:
	str	r7, [r0]
	str	r3, [r7]
.L1c0a8:
	str	r3, [r7, #4]
	mov	r0, r9
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1be80

.thumb_func_start Func_1c0c4
	bx	lr
.func_end Func_1c0c4

.thumb_func_start Func_1c0c8
	bx	lr
.func_end Func_1c0c8

.thumb_func_start Func_1c0cc
	bx	lr
.func_end Func_1c0cc

.thumb_func_start Func_1c0d0
	bx	lr
.func_end Func_1c0d0

.thumb_func_start Func_1c0d4
	bx	lr
.func_end Func_1c0d4

.thumb_func_start Func_1c0d8
	bx	lr
.func_end Func_1c0d8

.thumb_func_start Func_1c0dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =.L342f8
	mov	r5, r0
	mov	r8, r3
	mov	r6, r1
	bl	Func_4080
	mov	r2, r8
	str	r0, [r6]
	mov	r1, #0x80
	bl	Func_3fa4
	ldr	r3, .L1c134	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r0, #0xd
	strh	r3, [r5, #8]
	neg	r0, r0
	ldrb	r3, [r5, #5]
	mov	r2, r0
	and	r2, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r2, r3
	mov	r3, #0x20
	orr	r2, r3
	mov	r3, #4
	ldrb	r1, [r5, #7]
	neg	r3, r3
	and	r2, r3
	sub	r3, #0x3b
	and	r3, r1
	mov	r1, #0x3f
	and	r3, r1
	strb	r3, [r5, #7]
	and	r2, r1
	mov	r3, #0x80
	orr	r2, r3
	b	.L1c140

	.align	2, 0
.L1c134:
	.word	0x3ff
	.pool

.L1c140:
	ldrb	r3, [r5, #9]
	and	r0, r3
	strb	r2, [r5, #5]
	strb	r0, [r5, #9]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_1c0dc

.thumb_func_start Func_1c154
	push	{lr}
	ldr	r3, =0x1ff
	ldrh	r4, [r0, #6]
	and	r1, r3
	ldr	r3, =0xfffffe00
	and	r3, r4
	orr	r3, r1
	mov	r1, #0xfc
	strh	r3, [r0, #6]
	strb	r2, [r0, #4]
	bl	Func_3dec
	b	.L1c178

	.pool_aligned

.L1c178:
	pop	{r0}
	bx	r0
.func_end Func_1c154

.thumb_func_start Func_1c17c
	push	{lr}
	bl	Func_3f3c
	pop	{r0}
	bx	r0
.func_end Func_1c17c

.thumb_func_start Func_1c188
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e98
	ldr	r5, [r3]
	mov	r0, r5
	bl	Func_1b36c
	mov	r6, r0
	ldrh	r3, [r6, #0xa]
	cmp	r3, #1
	beq	.L1c1a4
	cmp	r3, #6
	bne	.L1c206
.L1c1a4:
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	bl	Func_48b0
	mov	r3, #0xc3
	lsl	r3, #2
	add	r5, r3
	ldrh	r3, [r6, #8]
	mov	r7, r0
	ldr	r0, =0xf1
	mov	r8, r3
	bl	Func_2f40
	ldr	r3, =0x604
	add	r2, r7, r3
	ldrh	r3, [r6, #8]
	lsl	r3, #1
	ldrh	r3, [r3, r0]
	add	r0, r3
	str	r0, [r2]
	mov	r1, r7
	bl	Func_53e8
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	bne	.L1c1e0
	bl	Func_4080
	strh	r0, [r5, #0xc]
.L1c1e0:
	mov	r1, #0x80
	ldrh	r0, [r5, #0xc]
	lsl	r1, #3
	mov	r2, r7
	bl	Func_3fa4
	mov	r3, #1
	strh	r3, [r5, #0xa]
	mov	r3, r8
	strh	r3, [r5, #8]
	mov	r3, #0x28
	strh	r3, [r5, #0x22]
	strh	r3, [r5, #0x24]
	mov	r3, #0xf0
	strh	r0, [r5, #0xe]
	strh	r3, [r5, #0x26]
	mov	r0, #0x11
	bl	Func_2dd8
.L1c206:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1c188

.thumb_func_start Func_1c21c
	push	{r5, lr}
	ldr	r3, =iwram_1e98
	mov	r2, #0xc3
	ldr	r3, [r3]
	lsl	r2, #2
	add	r5, r3, r2
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	beq	.L1c238
	ldrh	r0, [r5, #0xc]
	bl	Func_3f3c
	mov	r3, #0
	strh	r3, [r5, #0xa]
.L1c238:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_1c21c

.thumb_func_start Func_1c244
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r6, [r3]
	mov	r5, #0
.L1c24c:
	bl	Func_1c2d0
	mov	r0, r5
	bl	Func_28920
	mov	r5, r0
	bl	Func_1c2e4
	cmp	r5, #4
	bhi	.L1c2c2
	ldr	r2, =.L1c268
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1c268:
	.word	.L1c27c
	.word	.L1c290
	.word	.L1c29e
	.word	.L1c2a8
	.word	.L1c2b6
.L1c27c:
	bl	_Func_8ce74
	cmp	r0, #0
	bne	.L1c286
	mov	r0, #0xff
.L1c286:
	mov	r2, #0xbd
	lsl	r2, #1
	add	r3, r6, r2
	strh	r0, [r3]
	b	.L1c2c2
.L1c290:
	bl	_Func_a5b94
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L1c2c2
	b	.L1c24c
.L1c29e:
	bl	_Func_aa56c
	cmp	r0, #0
	beq	.L1c2c2
	b	.L1c24c
.L1c2a8:
	bl	_Func_a24d0
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L1c2c2
	b	.L1c24c
.L1c2b6:
	bl	_Func_a7478
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1c24c
.L1c2c2:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_1c244

.thumb_func_start Func_1c2d0
	push	{lr}
	mov	r0, #1
	bl	Func_1ef08
	mov	r0, #1
	bl	Func_30f8
	pop	{r0}
	bx	r0
.func_end Func_1c2d0

.thumb_func_start Func_1c2e4
	push	{lr}
	bl	Func_1f5d4
	pop	{r0}
	bx	r0
.func_end Func_1c2e4

.thumb_func_start Func_1c2f0
	push	{lr}
	bl	Func_1a66c
	bl	Func_1a778
	mov	r0, #1
	bl	Func_30f8
	pop	{r0}
	bx	r0
.func_end Func_1c2f0

.thumb_func_start Func_1c304
	push	{r5, lr}
	ldr	r3, =iwram_1e98
	ldr	r1, =0x39e
	ldr	r3, [r3]
	add	r2, r3, r1
	strh	r0, [r2]
	mov	r2, #0xee
	lsl	r2, #2
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	Func_1a7f4
	bl	Func_1b228
	mov	r1, #5
	mov	r0, #0
	bl	Func_1b010
	bl	Func_1a968
	mov	r0, #1
	bl	Func_1b424
	mov	r5, r0
	bl	Func_1b148
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_1c304

.thumb_func_start Func_1c34c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	sub	sp, #0x14
	ldr	r6, [r3]
	ldr	r2, =ewram_240
	mov	r3, #8
	mov	r1, #0xe0
	str	r3, [sp, #0x10]
	str	r3, [sp, #0xc]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_Func_8b158
	ldr	r3, =0x99b
	mov	r5, r0
	add	r5, r3
	add	r0, sp, #4
	add	r1, sp, #0x10
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r0, [sp]
	mov	r0, r5
	bl	Func_187ac
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0xa
	sub	r0, r2
	sub	r1, r3
	mov	r4, #2
	asr	r1, #1
	asr	r0, #1
	str	r1, [sp, #0xc]
	str	r4, [sp]
	str	r0, [sp, #0x10]
	bl	Func_162d4
	mov	r2, #0x8c
	lsl	r2, #2
	mov	r1, r0
	add	r3, r6, r2
	str	r1, [r3]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e74c
	mov	r3, #0x8d
	lsl	r3, #2
	add	r2, r6, r3
	mov	r1, #0xc8
	mov	r3, #0x5a
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_1c3e8
	bl	Func_41d8
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_1c34c

.thumb_func_start Func_1c3e8
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0x8d
	ldr	r1, [r3]
	lsl	r0, #2
	add	r2, r1, r0
	ldrh	r3, [r2]
	ldr	r0, =0xffff
	add	r3, r0
	strh	r3, [r2]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L1c416
	mov	r2, #0x8c
	lsl	r2, #2
	add	r3, r1, r2
	ldr	r0, [r3]
	mov	r1, #2
	bl	Func_16418
	ldr	r0, =Func_1c3e8
	bl	Func_4278
.L1c416:
	pop	{r0}
	bx	r0
.func_end Func_1c3e8

.thumb_func_start Func_1c428
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0x8c
	ldr	r3, [r3]
	lsl	r2, #2
	add	r3, r2
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L1c44c
	ldrh	r3, [r0, #0x16]
	cmp	r3, #0
	beq	.L1c44c
	mov	r1, #2
	bl	Func_16418
	ldr	r0, =Func_1c3e8
	bl	Func_4278
.L1c44c:
	pop	{r0}
	bx	r0
.func_end Func_1c428

.thumb_func_start Func_1c458
	push	{lr}
	mov	r0, r1
	bl	_Func_789dc
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Func_1c458

.thumb_func_start Func_1c468
	mov	r0, #1
	bx	lr
.func_end Func_1c468

.thumb_func_start Func_1c46c
	push	{lr}
	ldr	r2, =0x205
	ldr	r1, =ewram_240
	add	r3, r1, r2
	ldrb	r2, [r3]
	mov	r3, #0x20
	and	r0, r3
	cmp	r0, #0
	beq	.L1c484
	mov	r3, r2
	add	r3, #0xff
	b	.L1c486
.L1c484:
	add	r3, r2, #1
.L1c486:
	lsl	r3, #24
	lsr	r2, r3, #24
	ldr	r0, =0x205
	add	r3, r1, r0
	strb	r2, [r3]
	pop	{r0}
	bx	r0
.func_end Func_1c46c

.thumb_func_start Func_1c49c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r8, r0
	mov	r0, #0xe0
	mov	r1, #1
	lsl	r0, #3
	mov	r11, r1
	bl	Func_4938
	mov	r1, #0x8c
	mov	r7, r0
	mov	r0, #0
	bl	_Func_78e28
	mov	r1, #0x8c
	mov	r0, #1
	bl	_Func_78e28
	mov	r1, #0x8c
	mov	r0, #2
	bl	_Func_78e28
	mov	r1, #0x8d
	mov	r0, #2
	bl	_Func_78e28
	mov	r1, #0x4e
	mov	r0, #2
	bl	_Func_78e28
	mov	r1, #0x5d
	mov	r0, #3
	bl	_Func_78e28
	mov	r1, #0x8c
	mov	r0, #5
	bl	_Func_78e28
	mov	r3, #0
	mov	r0, r7
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x10]
	bl	Func_1c7fc
	mov	r10, r0
	cmp	r0, #0
	bne	.L1c50c
	b	.L1c7b6
.L1c50c:
	add	r0, sp, #0x10
	add	r1, sp, #0xc
	mov	r2, r7
	bl	Func_1c8a0
	mov	r5, #2
	mov	r1, #6
	mov	r2, #0x14
	mov	r3, #7
	mov	r0, #4
	str	r5, [sp]
	bl	Func_162d4
	mov	r1, #3
	mov	r2, #0x14
	mov	r3, #3
	mov	r6, r0
	mov	r0, #4
	str	r5, [sp]
	bl	Func_162d4
	mov	r1, #0xe
	str	r0, [sp, #8]
	mov	r2, #0x14
	mov	r3, #5
	mov	r0, #4
	str	r5, [sp]
	bl	Func_162d4
	mov	r9, r0
	bl	Func_4080
	mov	r5, r0
	cmp	r5, #0
	beq	.L1c56e
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	Func_3fa4
	mov	r0, #0
	mov	r1, #0x80
	str	r0, [sp]
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r6
	mov	r3, #0
	bl	Func_1eadc
	str	r0, [sp, #4]
.L1c56e:
	ldr	r5, =0xb19
	ldr	r1, [sp, #8]
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #0
	bl	Func_1e7c0
.L1c57c:
	mov	r1, r11
	cmp	r1, #0
	bne	.L1c584
	b	.L1c6a8
.L1c584:
	ldr	r0, [sp, #0x10]
	mov	r3, #0
	mov	r1, r10
	add	r0, r10
	mov	r11, r3
	bl	Func_b50_from_thumb
	str	r0, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	mov	r1, r10
	add	r0, r10
	bl	Func_b50_from_thumb
	mov	r2, r8
	add	r2, #2
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r3, #1
	sub	r2, r3
	ldrh	r3, [r6, #0xe]
	mov	r8, r2
	lsl	r3, #3
	lsl	r2, #4
	str	r0, [sp, #0xc]
	add	r2, r3
	ldr	r0, [sp, #4]
	add	r2, #0x1c
	strh	r2, [r0, #8]
	strb	r2, [r0, #0x14]
	mov	r0, r6
	bl	Func_16498
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #1
	mov	r2, #2
	mov	r3, #0x11
	bl	Func_1e41c
	ldr	r0, =0xb1e
	mov	r1, r6
	mov	r2, #0x30
	mov	r3, #0
	bl	Func_1e7c0
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, r7
	ldr	r5, =0x333
	ldrh	r0, [r3, #2]
	mov	r1, r6
	add	r0, r5
	mov	r2, #0x38
	mov	r3, #0x10
	bl	Func_1e7c0
	ldr	r3, [sp, #0xc]
	lsl	r3, #2
	add	r3, r7
	ldrh	r0, [r3, #2]
	mov	r1, r6
	add	r0, r5
	mov	r2, #0x38
	mov	r3, #0x20
	bl	Func_1e7c0
	ldr	r0, =0xb1e
	mov	r1, r6
	sub	r0, #2
	mov	r2, #0x10
	mov	r3, #0x10
	bl	Func_1e7c0
	ldr	r0, =0xb1e
	mov	r1, r6
	sub	r0, #1
	mov	r2, #0x10
	mov	r3, #0x20
	bl	Func_1e7c0
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	ldrh	r0, [r3, r7]
	ldr	r5, =0x66
	mov	r1, r6
	add	r0, r5
	mov	r2, #0x68
	mov	r3, #0x10
	bl	Func_1e7c0
	ldr	r3, [sp, #0xc]
	lsl	r3, #2
	ldrh	r0, [r3, r7]
	mov	r1, r6
	mov	r2, #0x68
	mov	r3, #0x20
	add	r0, r5
	bl	Func_1e7c0
	mov	r0, r9
	bl	Func_16498
	mov	r1, r9
	ldr	r0, =0xaec
	mov	r2, #0
	mov	r3, #0x10
	bl	Func_1e7c0
	mov	r1, r8
	cmp	r1, #0
	beq	.L1c676
	ldr	r3, [sp, #0xc]
	lsl	r3, #2
	add	r3, r7
	ldrh	r0, [r3, #2]
	bl	_Func_78b9c
	ldr	r3, [sp, #0xc]
	b	.L1c684
.L1c676:
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, r7
	ldrh	r0, [r3, #2]
	bl	_Func_78b9c
	ldr	r3, [sp, #0x10]
.L1c684:
	lsl	r3, #2
	add	r3, r7
	ldrb	r0, [r0, #9]
	ldrh	r5, [r3, #2]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #2
	mov	r2, r9
	mov	r3, #0x40
	bl	Func_1e9d4
	ldr	r0, =0x53a
	mov	r1, r9
	add	r0, r5, r0
	mov	r2, #0
	mov	r3, #0
	bl	Func_1e7c0
.L1c6a8:
	mov	r0, #1
	bl	Func_30f8
	ldr	r5, =iwram_1b04
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1c6da
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, r8
	cmp	r3, #0
	beq	.L1c6ce
	ldr	r3, [sp, #0xc]
	sub	r3, #1
	str	r3, [sp, #0xc]
	b	.L1c6d4
.L1c6ce:
	ldr	r3, [sp, #0x10]
	sub	r3, #1
	str	r3, [sp, #0x10]
.L1c6d4:
	mov	r0, #1
	ldr	r5, =iwram_1b04
	mov	r11, r0
.L1c6da:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1c704
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r1, r8
	cmp	r1, #0
	beq	.L1c6f8
	ldr	r3, [sp, #0xc]
	add	r3, #1
	str	r3, [sp, #0xc]
	b	.L1c6fe
.L1c6f8:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
.L1c6fe:
	mov	r3, #1
	ldr	r5, =iwram_1b04
	mov	r11, r3
.L1c704:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L1c71e
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r0, #1
	neg	r0, r0
	mov	r1, #1
	add	r8, r0
	mov	r11, r1
.L1c71e:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1c734
	mov	r0, #0x6f
	bl	_Func_f9080
	mov	r3, #1
	add	r8, r3
	mov	r11, r3
.L1c734:
	ldr	r1, =iwram_1c94
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1c748
	mov	r0, #0x70
	bl	_Func_f9080
	b	.L1c76c
.L1c748:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1c75a
	mov	r0, #0x71
	bl	_Func_f9080
	b	.L1c76c
.L1c75a:
	ldr	r3, [r1]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L1c766
	b	.L1c57c
.L1c766:
	mov	r0, #0x71
	bl	_Func_f9080
.L1c76c:
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, r7
	ldrh	r2, [r3]
	ldr	r1, =ewram_240
	ldrh	r3, [r3, #2]
	mov	r0, #0x88
	lsl	r0, #2
	lsl	r2, #10
	orr	r2, r3
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r3, [sp, #0xc]
	lsl	r3, #2
	add	r3, r7
	ldrh	r2, [r3]
	ldrh	r3, [r3, #2]
	lsl	r2, #10
	orr	r2, r3
	ldr	r3, =0x222
	add	r1, r3
	strh	r2, [r1]
	mov	r0, r6
	mov	r1, #1
	bl	Func_16418
	mov	r1, #1
	ldr	r0, [sp, #8]
	bl	Func_16418
	mov	r0, r9
	mov	r1, #1
	bl	Func_16418
	mov	r0, #1
	bl	Func_30f8
.L1c7b6:
	mov	r0, r7
	bl	Func_2df0
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1c49c

.thumb_func_start Func_1c7fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r0, [sp, #8]
	add	r5, sp, #0xc
	mov	r0, #0
	mov	r9, r0
	mov	r0, r5
	bl	_Func_796c4
	cmp	r9, r0
	bge	.L1c88c
	mov	r11, r5
	mov	r10, r0
.L1c822:
	mov	r3, r11
	ldrh	r3, [r3]
	mov	r0, #2
	mov	r8, r3
	add	r11, r0
	mov	r0, r8
	bl	_Func_77394
	mov	r3, #0x58
	ldr	r2, =0x3fff
	ldrh	r3, [r0, r3]
	mov	r5, r2
	and	r5, r3
	mov	r1, #0
	cmp	r5, #0
	beq	.L1c880
	mov	r7, r0
	mov	r0, r9
	lsl	r3, r0, #2
	ldr	r0, [sp, #8]
	add	r7, #0x58
	add	r6, r3, r0
	b	.L1c854

	.pool_aligned

.L1c854:
	mov	r0, r5
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	_Func_78b9c
	ldr	r1, [sp, #4]
	mov	r3, r8
	mov	r0, #1
	add	r1, #1
	strh	r3, [r6]
	strh	r5, [r6, #2]
	add	r9, r0
	add	r6, #4
	ldr	r2, [sp]
	cmp	r1, #0x1f
	bgt	.L1c880
	add	r7, #4
	ldrh	r3, [r7]
	mov	r5, r2
	and	r5, r3
	cmp	r5, #0
	bne	.L1c854
.L1c880:
	mov	r3, #1
	neg	r3, r3
	add	r10, r3
	mov	r0, r10
	cmp	r0, #0
	bne	.L1c822
.L1c88c:
	mov	r0, r9
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1c7fc

.thumb_func_start Func_1c8a0
	push	{r5, r6, r7, lr}
	mov	r3, #0
	mov	r6, r0
	str	r3, [r6]
	mov	r7, r2
	str	r3, [r1]
	mov	r2, #0x88
	ldr	r3, =ewram_240
	lsl	r2, #2
	add	r3, r2
	ldrh	r3, [r3]
	ldr	r2, =0x3ff
	ldr	r5, =0x1bf
	mov	r14, r1
	and	r2, r3
	mov	r1, #0
	lsr	r0, r3, #10
	mov	r4, r7
.L1c8c4:
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	bne	.L1c8d4
	ldrh	r3, [r4]
	cmp	r3, r0
	bne	.L1c8d4
	str	r1, [r6]
	b	.L1c8dc
.L1c8d4:
	add	r1, #1
	add	r4, #4
	cmp	r1, r5
	ble	.L1c8c4
.L1c8dc:
	ldr	r3, =ewram_462
	ldr	r6, =0x3ff
	ldr	r5, =0x1bf
	mov	r1, #0
	mov	r12, r3
	mov	r0, r7
.L1c8e8:
	mov	r2, r12
	ldrh	r4, [r2]
	mov	r3, r6
	ldrh	r2, [r0, #2]
	and	r3, r4
	cmp	r2, r3
	bne	.L1c904
	ldrh	r2, [r0]
	lsr	r3, r4, #10
	cmp	r2, r3
	bne	.L1c904
	mov	r3, r14
	str	r1, [r3]
	b	.L1c90c
.L1c904:
	add	r1, #1
	add	r0, #4
	cmp	r1, r5
	ble	.L1c8e8
.L1c90c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1c8a0

.thumb_func_start Func_1c924
	push	{lr}
	bl	Func_1c49c
	pop	{r0}
	bx	r0
.func_end Func_1c924

.thumb_func_start Func_1c930
	push	{lr}
	ldr	r1, =0x1004
	mov	r0, #0x13
	bl	Func_48f4
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r2, =0x352
	add	r0, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end Func_1c930

.thumb_func_start Func_1c954
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e9c
	ldr	r2, =0xff4
	ldr	r5, [r3]
	add	r3, r5, r2
	ldr	r0, [r3]
	mov	r1, #0
	bl	Func_16418
	ldr	r3, =0xff4
	add	r6, r5, r3
	b	.L1c972
.L1c96c:
	mov	r0, #1
	bl	Func_30f8
.L1c972:
	ldr	r0, [r6]
	bl	Func_17394
	cmp	r0, #0
	beq	.L1c96c
	mov	r3, r5
	add	r3, #0x46
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1c990
	mov	r3, r5
	add	r3, #0x48
	ldrh	r0, [r3]
	bl	Func_3f3c
.L1c990:
	ldr	r2, =0x352
	add	r3, r5, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1c9a4
	add	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_3f3c
.L1c9a4:
	mov	r0, #0x13
	bl	Func_2dd8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_1c954

.thumb_func_start Func_1c9bc
	bx	lr
.func_end Func_1c9bc

.thumb_func_start Func_1c9c0
	bx	lr
.func_end Func_1c9c0

.thumb_func_start Func_1c9c4
	bx	lr
.func_end Func_1c9c4

.thumb_func_start Func_1c9c8
	mov	r1, #0x80
	lsl	r1, #3
	mov	r2, #0
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x34
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #0x3c
	strh	r2, [r3, #0xa]
	add	r3, r0, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r0, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r0, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r0, r1
	strh	r2, [r3]
	ldr	r3, =0x57c
	add	r0, r3
	strh	r2, [r0]
	bx	lr
.func_end Func_1c9c8

	.section .rodata

.L33ef8:
	.incrom 0x33ef8, 0x342f8
.L342f8:
	.incrom 0x342f8, 0x346f8
