	.include "macros.inc"

.thumb_func_start Func_db6c8
	push	{lr}
	mov	r1, #1
	bl	Func_db6e0
	pop	{r0}
	bx	r0
.func_end Func_db6c8

.thumb_func_start Func_db6d4
	push	{lr}
	mov	r1, #0
	bl	Func_db6e0
	pop	{r0}
	bx	r0
.func_end Func_db6d4

.thumb_func_start Func_db6e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #0x28]
	ldr	r3, =iwram_1eec
	ldmia	r3!, {r1}
	ldr	r5, =0x7828
	mov	r10, r1
	ldr	r3, [r3]
	add	r5, r10
	str	r3, [sp, #0x24]
	str	r0, [r5]
	mov	r0, #1
	bl	Func_cd594
	mov	r2, #1
	ldr	r0, =0xc0
	mov	r1, r10
	mov	r3, #0
	bl	Func_e0524
	ldr	r2, [sp, #0x28]
	cmp	r2, #1
	bne	.Ldb744
	mov	r3, #0
	mov	r0, #0xa0
	mov	r8, r3
	lsl	r0, #19
.Ldb722:
	mov	r4, r8
	lsr	r3, r4, #31
	add	r3, r8
	asr	r3, #1
	lsl	r1, r3, #5
	lsl	r2, r3, #10
	orr	r2, r1
	mov	r1, #1
	orr	r2, r3
	add	r8, r1
	strh	r2, [r0]
	mov	r2, r8
	add	r0, #2
	cmp	r2, #0x40
	bne	.Ldb722
	str	r1, [sp, #0x18]
	b	.Ldb75e
.Ldb744:
	ldr	r0, =0x96
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	str	r3, [sp, #0x18]
.Ldb75e:
	mov	r5, #0xe1
	mov	r3, #0
	lsl	r5, #7
	mov	r8, r3
	mov	r7, #0
	mov	r6, #0x3f
	add	r5, r10
.Ldb76c:
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldb77e
	mov	r3, #0xc8
	lsl	r3, #14
	b	.Ldb780
.Ldb77e:
	ldr	r3, =0xffce0000
.Ldb780:
	str	r3, [r5]
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x20
	lsl	r0, #13
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	add	r0, #0x10
	lsl	r0, #12
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x20
	mov	r4, #1
	lsl	r0, #13
	add	r8, r4
	str	r0, [r5, #0x14]
	mov	r0, r8
	str	r7, [r5, #0x18]
	add	r5, #0x1c
	cmp	r0, #0x20
	bne	.Ldb76c
	mov	r1, #0
	ldr	r5, =ewram_10000
	mov	r8, r1
	mov	r6, #0
	mov	r7, #0x3f
.Ldb7c2:
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldb7d4
	mov	r3, #0xc8
	lsl	r3, #14
	b	.Ldb7d6
.Ldb7d4:
	ldr	r3, =0xffce0000
.Ldb7d6:
	str	r3, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #13
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #8
	lsl	r3, #13
	str	r3, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x20
	mov	r2, #1
	mov	r3, #0x80
	lsl	r0, #13
	add	r8, r2
	lsl	r3, #3
	str	r0, [r5, #0x14]
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r8, r3
	bne	.Ldb7c2
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x1c]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r10
	str	r5, [r3]
	add	r2, r10
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r1, [sp, #0x18]
	ldr	r3, [sp, #0x18]
	lsl	r1, #1
	str	r1, [sp, #0xc]
	add	r2, r1, r3
	ldr	r0, =.Leeae2
	add	r1, r2, #2
	ldrb	r3, [r0, r1]
	mov	r4, #0
	mov	r9, r4
	cmp	r3, #0
	bne	.Ldb85e
	b	.Ldbaf0
.Ldb85e:
	mov	r4, r2
	add	r4, #1
	str	r2, [sp, #0x10]
	str	r4, [sp, #8]
	str	r1, [sp, #0x14]
	mov	r11, r0
.Ldb86a:
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	bl	Func_49ac
	mov	r1, r5
	mov	r0, r5
	add	r1, #0xc
	bl	Func_51d8
	mov	r0, r9
	cmp	r0, #2
	bne	.Ldb888
	mov	r0, #0x90
	bl	_Func_f9080
.Ldb888:
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #0x18]
	ldr	r6, =.Leeae2
	add	r5, r1, r2
	add	r3, r5, #2
	ldrb	r3, [r6, r3]
	sub	r3, #0x30
	cmp	r9, r3
	bne	.Ldb8a0
	mov	r0, #0x85
	bl	_Func_bd7dc
.Ldb8a0:
	mov	r3, #0
	mov	r8, r3
	ldrb	r3, [r6, r5]
	cmp	r3, #0
	beq	.Ldb94e
	ldr	r6, =ewram_10000
.Ldb8ac:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	blt	.Ldb93e
	add	r5, sp, #0x2c
	mov	r0, r6
	mov	r1, r5
	bl	Func_e3944
	ldr	r2, [r5]
	ldr	r3, =0x7828
	asr	r2, #1
	add	r3, r10
	str	r2, [r5]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	lsl	r3, #5
	add	r2, r3
	sub	r2, #0x10
	str	r2, [r5]
	ldr	r2, [r5, #8]
	cmp	r2, #0x9f
	bgt	.Ldb8de
	mov	r3, #0xa0
	str	r3, [r5, #8]
	mov	r2, #0xa0
.Ldb8de:
	ldr	r3, =0x31f
	cmp	r2, r3
	ble	.Ldb8e8
	str	r3, [r5, #8]
	mov	r2, r3
.Ldb8e8:
	mov	r3, r2
	sub	r3, #0xa0
	cmp	r3, #0
	bge	.Ldb8f2
	add	r3, #0x3f
.Ldb8f2:
	asr	r3, #6
	mov	r0, #9
	sub	r0, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	mov	r3, r8
	mov	r2, #1
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #7
	add	r3, r2
	lsl	r3, #1
	add	r1, r3
	mov	r2, #0xc8
	lsl	r2, #6
	lsr	r3, r0, #31
	add	r1, r10
	add	r1, r2
	add	r3, r0, r3
	ldr	r2, [r5]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x40
	ldr	r2, =0xffffe000
	bl	Func_e38b8
.Ldb93e:
	ldr	r2, [sp, #0x10]
	mov	r1, r11
	mov	r0, #1
	ldrb	r3, [r1, r2]
	add	r8, r0
	add	r6, #0x1c
	cmp	r8, r3
	bne	.Ldb8ac
.Ldb94e:
	mov	r3, r9
	cmp	r3, #2
	ble	.Ldb9e4
	ldr	r0, [sp, #8]
	mov	r2, r11
	ldrb	r3, [r2, r0]
	mov	r4, #0
	mov	r8, r4
	cmp	r3, #0
	beq	.Ldb9e4
	mov	r6, #0xe1
	lsl	r6, #7
	add	r6, r10
.Ldb968:
	cmp	r8, r9
	bge	.Ldb9d6
	ldr	r3, [r6, #4]
	cmp	r3, #0
	blt	.Ldb9d6
	add	r5, sp, #0x2c
	mov	r0, r6
	mov	r1, r5
	bl	Func_e3944
	ldr	r2, [r5]
	ldr	r3, =0x7828
	asr	r2, #1
	add	r3, r10
	str	r2, [r5]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	lsl	r3, #5
	add	r2, r3
	mov	r7, r2
	sub	r7, #0x10
	str	r7, [r5]
	ldr	r0, [r6, #0x18]
	cmp	r0, #0x14
	bhi	.Ldb9c2
	mov	r1, #3
	bl	Func_af0_from_thumb
	ldr	r3, =.Leeaec
	lsl	r0, #1
	ldrh	r1, [r3, r0]
	ldr	r3, =.Leeafa
	ldrh	r4, [r3, r0]
	ldr	r3, [r5, #4]
	lsr	r0, r4, #1
	sub	r2, r7, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	add	r1, r10
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
	ldr	r0, [r6, #0x18]
.Ldb9c2:
	cmp	r0, #0x14
	bgt	.Ldb9ca
	add	r3, r0, #1
	str	r3, [r6, #0x18]
.Ldb9ca:
	ldr	r2, =0xffffe000
	mov	r0, r6
	mov	r1, #0x40
	bl	Func_e38b8
	ldr	r2, =.Leeae2
.Ldb9d6:
	ldr	r1, [sp, #8]
	mov	r0, #1
	ldrb	r3, [r2, r1]
	add	r8, r0
	add	r6, #0x1c
	cmp	r8, r3
	bne	.Ldb968
.Ldb9e4:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0
	bne	.Ldba78
	ldr	r2, =0x7828
	mov	r3, #0
	add	r2, r10
	mov	r8, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ldbab8
	mov	r5, r2
	mov	r6, #0x24
.Ldb9fe:
	mov	r3, r8
	add	r3, #6
	cmp	r9, r3
	bne	.Ldba22
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0xa
	mov	r1, #7
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r8
	bl	Func_d6888
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r1, #2
	bl	_Func_b8228
.Ldba22:
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r6, #2
	cmp	r8, r3
	bne	.Ldb9fe
	b	.Ldbab8

	.pool_aligned

.Ldba78:
	ldr	r2, =0x7828
	mov	r3, #0
	mov	r4, r10
	mov	r8, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ldbab8
	mov	r5, #0x24
.Ldba8a:
	mov	r3, r8
	add	r3, #6
	cmp	r9, r3
	bne	.Ldbaa6
	mov	r0, r10
	ldr	r3, [r0, r2]
	ldrsh	r0, [r3, r5]
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r8
	bl	Func_d6888
.Ldbaa6:
	mov	r2, #1
	add	r8, r2
	ldr	r2, =0x7828
	mov	r4, r10
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	add	r5, #2
	cmp	r8, r3
	bne	.Ldba8a
.Ldbab8:
	mov	r0, r9
	cmp	r0, #2
	bne	.Ldbac6
	ldr	r2, =0x77a8
	mov	r3, #6
	add	r2, r10
	str	r3, [r2]
.Ldbac6:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r3, =0x7824
	mov	r2, #1
	add	r3, r10
	str	r2, [r3]
	mov	r0, #1
	bl	Func_30f8
	ldr	r4, [sp, #0x14]
	mov	r2, r11
	mov	r1, #1
	ldrb	r3, [r2, r4]
	add	r9, r1
	cmp	r9, r3
	beq	.Ldbaf0
	b	.Ldb86a
.Ldbaf0:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_db6e0

	.section .rodata

.Leeae2:
	.incrom 0xeeae2, 0xeeaec
.Leeaec:
	.incrom 0xeeaec, 0xeeafa
.Leeafa:
	.incrom 0xeeafa, 0xeeb40
