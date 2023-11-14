	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_dd2ac
	push	{lr}
	mov	r1, #0
	bl	Func_dd2c4
	pop	{r0}
	bx	r0
.func_end Func_dd2ac

.thumb_func_start Func_dd2b8
	push	{lr}
	mov	r1, #1
	bl	Func_dd2c4
	pop	{r0}
	bx	r0
.func_end Func_dd2b8

.thumb_func_start Func_dd2c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #0x2c]
	ldr	r3, =iwram_1eec
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	ldr	r3, =0x7828
	mov	r11, r1
	add	r3, r11
	str	r0, [r3]
	mov	r0, #1
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldd30c	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ldd310	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r2, [sp, #0x2c]
	cmp	r2, #1
	bne	.Ldd324
	ldr	r0, =0x83
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Ldd330

	.align	2, 0
.Ldd30c:
	.word	0x100
.Ldd310:
	.word	0
	.pool

.Ldd324:
	ldr	r0, =0x84
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
.Ldd330:
	ldr	r7, =0x7828
	add	r7, r11
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldd342
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
.Ldd342:
	mov	r6, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #0x30]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	Func_ed408
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r5, sp
	add	r5, #0x30
	str	r5, [sp, #0x1c]
	str	r3, [r5, #4]
	ldr	r3, [r7]
	ldr	r2, =.Leeb5e
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	lsl	r3, #2
	add	r3, #0x38
	str	r3, [sp, #0x20]
	mov	r6, #0
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r9, r6
	neg	r1, r1
	lsl	r2, #3
.Ldd392:
	mov	r0, #1
	add	r9, r0
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r9, r2
	bne	.Ldd392
	mov	r6, #0xe1
	mov	r1, #0
	lsl	r6, #7
	ldr	r7, =.Leeb4b
	mov	r9, r1
	add	r6, r11
.Ldd3aa:
	bl	Func_4458
	ldr	r3, =.Leeb61
	mov	r5, r9
	ldrb	r2, [r3, r5]
	mov	r3, #7
	and	r3, r0
	add	r2, r3
	lsr	r3, r5, #31
	add	r3, r9
	asr	r3, #1
	add	r3, #0x6c
	sub	r2, #4
	str	r3, [r6, #4]
	str	r2, [r6]
	bl	Func_4458
	mov	r5, #0x3f
	and	r5, r0
	add	r5, #0x37
	str	r5, [r6, #0x10]
	mov	r0, r9
	mov	r1, #3
	bl	Func_b1c_from_thumb
	ldrb	r3, [r7, r0]
	cmp	r3, r5
	bge	.Ldd3e4
	str	r3, [r6, #0x10]
.Ldd3e4:
	mov	r0, r9
	mov	r1, #1
	lsl	r3, r0, #2
	add	r9, r1
	add	r3, #8
	mov	r2, r9
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r2, #0x10
	bne	.Ldd3aa
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #1
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	ldr	r5, [sp, #0x20]
	mov	r3, #0
	str	r3, [sp, #0x24]
	cmp	r5, #0
	bne	.Ldd420
	b	.Ldd714
.Ldd420:
	ldr	r6, [sp, #0x20]
	ldr	r0, [sp, #0x20]
	sub	r5, #0x40
	sub	r6, #0x14
	sub	r0, #4
	str	r5, [sp, #0x18]
	str	r6, [sp, #0x14]
	str	r0, [sp, #0x10]
.Ldd430:
	ldr	r1, [sp, #0x24]
	ldr	r2, [sp, #0x18]
	cmp	r1, r2
	bne	.Ldd43e
	mov	r0, #0x84
	bl	_Func_bd7dc
.Ldd43e:
	ldr	r3, [sp, #0x24]
	ldr	r5, [sp, #0x14]
	cmp	r3, r5
	blt	.Ldd464
	ldr	r6, [sp, #0x10]
	cmp	r3, r6
	blt	.Ldd44e
	b	.Ldd642
.Ldd44e:
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Ldd488	@ 0x3f44
	strh	r3, [r2]
	ldr	r2, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	sub	r3, r0, r2
	ldr	r2, .Ldd48c	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	sub	r3, #5
	orr	r3, r2
	strh	r3, [r1]
.Ldd464:
	ldr	r3, [sp, #0x24]
	ldr	r5, [sp, #0x10]
	cmp	r3, r5
	blt	.Ldd46e
	b	.Ldd642
.Ldd46e:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r0, =.Leeb5e
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r0, r3]
	mov	r6, #0
	mov	r9, r6
	cmp	r3, #0
	bne	.Ldd484
	b	.Ldd642
.Ldd484:
	b	.Ldd4c4

	.align	2, 0
.Ldd488:
	.word	0x3f44
.Ldd48c:
	.word	0x1000
	.pool

.Ldd4c4:
	mov	r2, #0xe1
	mov	r1, #8
	lsl	r2, #7
	add	r2, r11
	str	r1, [sp, #0xc]
	mov	r10, r2
.Ldd4d0:
	mov	r5, r9
	lsl	r3, r5, #2
	ldr	r6, [sp, #0x24]
	add	r3, #9
	cmp	r6, r3
	bne	.Ldd4e4
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r11
	str	r3, [r2]
.Ldd4e4:
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0xc]
	cmp	r0, r1
	ble	.Ldd57c
	mov	r0, r9
	mov	r1, #3
	bl	Func_b1c_from_thumb
	ldr	r5, [sp, #0xc]
	ldr	r2, [sp, #0x24]
	mov	r6, r10
	sub	r3, r2, r5
	lsl	r5, r3, #3
	ldr	r3, [r6, #0x10]
	mov	r4, r0
	cmp	r5, r3
	ble	.Ldd508
	mov	r5, r3
.Ldd508:
	ldr	r0, [sp, #0x2c]
	cmp	r0, #0
	bne	.Ldd53e
	ldr	r2, =.Leeb4e
	lsl	r3, r4, #1
	mov	r1, r9
	mov	r0, #1
	and	r0, r1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leeb48
	mov	r6, r10
	ldrb	r4, [r3, r4]
	ldr	r2, [r6]
	lsr	r3, r4, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	str	r5, [sp, #4]
	sub	r3, r5
	str	r4, [sp]
	ldr	r5, [sp, #0x1c]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	add	r1, r11
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	b	.Ldd57c
.Ldd53e:
	ldr	r2, =.Leeb71
	mov	r3, #7
	mov	r6, r9
	and	r3, r6
	ldrsb	r3, [r2, r3]
	cmp	r5, r3
	ble	.Ldd54e
	mov	r5, r3
.Ldd54e:
	ldr	r2, =.Leeb58
	lsl	r3, r4, #1
	mov	r1, r9
	mov	r0, #1
	and	r0, r1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leeb54
	mov	r6, r10
	ldrb	r4, [r3, r4]
	ldr	r2, [r6]
	lsr	r3, r4, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	str	r5, [sp, #4]
	sub	r3, r5
	str	r4, [sp]
	ldr	r5, [sp, #0x1c]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	add	r1, r11
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
.Ldd57c:
	ldr	r2, =0x7828
	add	r2, r11
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldd5d4
	ldr	r7, [sp, #0xc]
	mov	r0, #1
	mov	r1, r9
	and	r1, r0
	add	r7, #4
	mov	r8, r1
	mov	r5, r2
	mov	r4, #0x24
.Ldd59a:
	ldr	r2, [sp, #0x24]
	cmp	r2, r7
	bne	.Ldd5c6
	mov	r3, r8
	cmp	r3, #0
	bne	.Ldd5b0
	mov	r0, #0x85
	str	r4, [sp, #8]
	bl	_Func_f9080
	ldr	r4, [sp, #8]
.Ldd5b0:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r4]
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r6
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r4, [sp, #8]
.Ldd5c6:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r4, #2
	cmp	r6, r3
	bne	.Ldd59a
	b	.Ldd5d8
.Ldd5d4:
	ldr	r7, [sp, #0xc]
	add	r7, #4
.Ldd5d8:
	ldr	r2, [sp, #0x24]
	cmp	r2, r7
	beq	.Ldd5e6
	ldr	r3, [sp, #0xc]
	add	r3, #8
	cmp	r2, r3
	bne	.Ldd622
.Ldd5e6:
	ldr	r5, =ewram_10000
	mov	r6, #0
	mov	r7, #0xf
	b	.Ldd5f2
.Ldd5ee:
	add	r5, #0x1c
	add	r6, #1
.Ldd5f2:
	mov	r3, #0x80
	lsl	r3, #2
	cmp	r6, r3
	beq	.Ldd622
	mov	r0, #1
	ldr	r3, [r5, #0x18]
	neg	r0, r0
	cmp	r3, r0
	bne	.Ldd5ee
	bl	Func_4458
	mov	r1, r10
	ldr	r3, [r1]
	and	r0, r7
	add	r0, r3
	sub	r0, #8
	str	r0, [r5]
	bl	Func_4458
	and	r0, r7
	add	r0, #0x50
	mov	r3, #0
	str	r0, [r5, #4]
	str	r3, [r5, #0x18]
.Ldd622:
	ldr	r2, [sp, #0xc]
	mov	r3, #0x1c
	add	r2, #4
	add	r10, r3
	ldr	r3, =0x7828
	str	r2, [sp, #0xc]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r6, =.Leeb5e
	ldr	r3, [r3, #0x18]
	mov	r5, #1
	ldrb	r3, [r6, r3]
	add	r9, r5
	cmp	r9, r3
	beq	.Ldd642
	b	.Ldd4d0
.Ldd642:
	ldr	r1, =ewram_10000
	mov	r0, #0
	mov	r9, r0
	mov	r8, r1
.Ldd64a:
	mov	r3, r8
	ldr	r2, [r3, #0x18]
	cmp	r2, #0
	blt	.Ldd6dc
	lsr	r3, r2, #31
	ldr	r5, =0x1e59
	ldr	r6, [sp, #0x2c]
	add	r3, r2, r3
	asr	r7, r3, #1
	mov	r10, r5
	cmp	r6, #0
	beq	.Ldd666
	ldr	r0, =0xaff
	mov	r10, r0
.Ldd666:
	ldr	r3, =.Leeb79
	ldr	r2, =.Leeb88
	ldrsb	r5, [r3, r7]
	ldr	r3, =.Leeb80
	lsl	r6, r7, #1
	mov	r0, r8
	ldrh	r1, [r2, r6]
	ldr	r2, [r0]
	ldrb	r0, [r3, r7]
	lsl	r0, #24
	asr	r4, r0, #24
	mov	r3, r8
	lsr	r0, #31
	ldr	r3, [r3, #4]
	add	r0, r4, r0
	asr	r0, #1
	add	r1, r10
	sub	r2, r5
	sub	r3, r0
	str	r5, [sp]
	str	r4, [sp, #4]
	add	r1, r11
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	ldr	r3, =.Leeb80
	ldrb	r0, [r3, r7]
	ldr	r5, =.Leeb88
	lsl	r0, #24
	ldrh	r1, [r5, r6]
	asr	r4, r0, #24
	mov	r6, r8
	lsr	r0, #31
	ldr	r3, [r6, #4]
	add	r0, r4, r0
	ldr	r5, =.Leeb79
	asr	r0, #1
	sub	r3, r0
	ldrsb	r0, [r5, r7]
	ldr	r2, [r6]
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r6, [sp, #0x1c]
	add	r1, r10
	add	r1, r11
	ldr	r4, [r6, #4]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	add	r3, #1
	str	r3, [r0, #0x18]
	cmp	r3, #0xe
	bne	.Ldd6dc
	mov	r3, #1
	neg	r3, r3
	str	r3, [r0, #0x18]
.Ldd6dc:
	mov	r2, #1
	mov	r3, #0x80
	mov	r1, #0x1c
	add	r9, r2
	lsl	r3, #2
	add	r8, r1
	cmp	r9, r3
	bne	.Ldd64a
	mov	r0, #4
	mov	r1, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r5, [sp, #0x24]
	ldr	r6, [sp, #0x20]
	add	r5, #1
	str	r5, [sp, #0x24]
	cmp	r5, r6
	beq	.Ldd714
	b	.Ldd430
.Ldd714:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
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
.func_end Func_dd2c4

.thumb_func_start Func_dd77c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_1eec
	mov	r8, r1
	mov	r3, r8
	ldmia	r3!, {r2}
	ldr	r5, =0x7828
	ldr	r3, [r3]
	sub	sp, #0x30
	mov	r10, r2
	add	r5, r10
	mov	r11, r3
	add	r3, sp, #0x14
	ldr	r2, [r0, #4]
	str	r0, [r5]
	str	r3, [sp]
	add	r3, sp, #0x10
	str	r3, [sp, #4]
	mov	r1, #4
	mov	r3, #4
	bl	Func_de2f8
	mov	r0, #1
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldd7f4	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ldd7f8	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	mov	r1, r10
	mov	r2, #1
	ldr	r0, =0xa6
	mov	r3, #1
	bl	Func_e0524
	ldr	r3, [r5]
	add	r6, sp, #0x24
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r6
	bl	Func_e396c
	ldr	r2, [r5]
	ldr	r3, [r2, #0x14]
	lsl	r3, #1
	add	r5, sp, #0x18
	add	r3, #0x22
	ldrsh	r0, [r2, r3]
	mov	r1, r5
	bl	Func_e396c
	ldr	r1, [r6]
	b	.Ldd80c

	.align	2, 0
.Ldd7f4:
	.word	0x100
.Ldd7f8:
	.word	0
	.pool

.Ldd80c:
	ldr	r3, [r5]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	mov	r3, #0x40
	ldr	r2, =REG_BG2X
	sub	r3, r1
	lsl	r3, #8
	str	r1, [r6]
	mov	r5, #1
	str	r3, [r2]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	mov	r2, r8
	ldr	r3, [r2, #0x1c]
	mov	r1, #7
	str	r3, [sp, #8]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	mov	r0, r8
	ldr	r3, [r0, #0x20]
	add	r1, sp, #8
	mov	r2, #0xe1
	mov	r9, r1
	str	r3, [r1, #4]
	lsl	r2, #7
	ldr	r1, =.Leeb96
	mov	r6, #0
	add	r2, r10
.Ldd85c:
	ldrb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	add	r3, #0x40
	add	r6, #1
	str	r3, [r2]
	add	r1, #1
	add	r2, #0x1c
	cmp	r6, #0x10
	bne	.Ldd85c
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #1
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0
	add	r2, r10
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r2, #0
	mov	r8, r2
.Ldd890:
	mov	r3, r8
	cmp	r3, #0x20
	bne	.Ldd8ce
	mov	r0, #0x8f
	bl	_Func_f9080
	ldr	r3, =0x7828
	mov	r0, r10
	ldr	r3, [r0, r3]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldd8ce
	ldr	r5, =0x7828
	mov	r7, #0x24
	add	r5, r10
.Ldd8b0:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r7]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r6
	mov	r2, #5
	bl	Func_d6888
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r7, #2
	cmp	r6, r3
	bne	.Ldd8b0
.Ldd8ce:
	mov	r7, #0xe1
	lsl	r7, #7
	mov	r6, #0
	add	r7, r10
.Ldd8d6:
	lsl	r3, r6, #2
	add	r3, #5
	cmp	r8, r3
	bne	.Ldd8e6
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r10
	str	r3, [r2]
.Ldd8e6:
	lsl	r5, r6, #1
	add	r3, r5, #4
	cmp	r8, r3
	ble	.Ldd94e
	mov	r0, r8
	cmp	r0, #0
	bge	.Ldd8f6
	add	r0, #3
.Ldd8f6:
	asr	r0, #2
	add	r0, r6
	mov	r1, #5
	bl	Func_b1c_from_thumb
	mov	r3, r5
	add	r3, #0x20
	cmp	r8, r3
	bge	.Ldd91a
	mov	r2, r8
	sub	r3, r2, r5
	lsl	r3, #2
	mov	r5, r3
	sub	r5, #0x10
	cmp	r5, #0x20
	ble	.Ldd924
	mov	r5, #0x20
	b	.Ldd924
.Ldd91a:
	mov	r1, r8
	sub	r3, r1, r5
	lsl	r3, #2
	mov	r2, #0xa0
	sub	r5, r2, r3
.Ldd924:
	cmp	r5, #0
	ble	.Ldd94e
	lsl	r1, r0, #10
	mov	r4, #1
	mov	r0, #0x20
	mov	r3, #7
	ldr	r2, [r7]
	and	r4, r6
	str	r0, [sp]
	and	r3, r6
	str	r5, [sp, #4]
	mov	r0, r9
	lsl	r4, #2
	sub	r3, r5
	ldr	r4, [r4, r0]
	add	r1, r10
	sub	r2, #0x10
	add	r3, #0x68
	mov	r0, r11
	bl	_call_via_r4
.Ldd94e:
	add	r6, #1
	add	r7, #0x1c
	cmp	r6, #0x10
	bne	.Ldd8d6
	mov	r1, #4
	mov	r0, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x46
	bne	.Ldd890
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dd77c

.thumb_func_start Func_dd9c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =iwram_1eec
	mov	r3, r7
	ldmia	r3!, {r1}
	ldr	r6, =0x7828
	mov	r9, r1
	ldr	r3, [r3]
	sub	sp, #0x34
	add	r6, r9
	str	r3, [sp, #0x30]
	str	r0, [r6]
	mov	r0, #1
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldda18	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ldda1c	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r3, .Ldda20	@ 0x1010
	add	r2, #2
	strh	r3, [r2]
	ldr	r0, =0x7e
	mov	r3, #1
	mov	r1, r9
	mov	r2, #1
	bl	Func_e0524
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldda3c
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
	b	.Ldda3c

	.align	2, 0
.Ldda18:
	.word	0x100
.Ldda1c:
	.word	0
.Ldda20:
	.word	0x1010
	.pool

.Ldda3c:
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r2, [r7, #0x1c]
	mov	r1, #7
	str	r2, [sp, #0x24]
	mov	r3, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r9
	str	r5, [r3]
	add	r2, r9
	mov	r3, #0
	ldr	r7, [r7, #0x20]
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	str	r7, [sp, #0x28]
	bl	Func_41d8
	ldr	r3, [r6]
	ldr	r2, =.Leebb6
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	lsl	r3, #3
	add	r3, #0x38
	str	r3, [sp, #0x20]
	mov	r3, #0
	mov	r11, r3
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	neg	r1, r1
	lsl	r2, #3
.Ldda98:
	mov	r4, #1
	add	r11, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r11, r2
	bne	.Ldda98
	ldr	r0, [sp, #0x20]
	mov	r6, #0
	str	r6, [sp, #0x2c]
	cmp	r0, #0
	bne	.Lddab0
	b	.Lddd90
.Lddab0:
	ldr	r1, [sp, #0x20]
	sub	r0, #0x40
	sub	r1, #0x10
	str	r0, [sp, #0x1c]
	str	r1, [sp, #0x18]
.Lddaba:
	ldr	r2, [sp, #0x2c]
	ldr	r3, [sp, #0x1c]
	cmp	r2, r3
	bne	.Lddac8
	mov	r0, #0x84
	bl	_Func_bd7dc
.Lddac8:
	ldr	r4, [sp, #0x2c]
	ldr	r6, [sp, #0x18]
	cmp	r4, r6
	blt	.Lddae4
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lddb0c	@ 0x3f44
	strh	r3, [r2]
	ldr	r0, [sp, #0x20]
	ldr	r2, .Lddb10	@ 0x1000
	sub	r3, r0, r4
	ldr	r1, =REG_BLDALPHA
	sub	r3, #1
	orr	r3, r2
	strh	r3, [r1]
.Lddae4:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r2, =.Leebb6
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	mov	r1, #0
	mov	r11, r1
	cmp	r3, #0
	bne	.Lddafa
	b	.Lddcda
.Lddafa:
	ldr	r4, =.Leebae
	ldr	r6, [sp, #0x2c]
	mov	r3, #0xc
	mov	r0, #8
	sub	r6, #8
	str	r3, [sp, #0x14]
	str	r4, [sp, #0x10]
	str	r0, [sp, #0xc]
	b	.Lddb34

	.align	2, 0
.Lddb0c:
	.word	0x3f44
.Lddb10:
	.word	0x1000
	.pool

.Lddb34:
	mov	r8, r6
.Lddb36:
	ldr	r1, [sp, #0x2c]
	ldr	r2, [sp, #0xc]
	cmp	r1, r2
	bgt	.Lddb40
	b	.Lddc6c
.Lddb40:
	ldr	r3, =.Leeba6
	mov	r4, r11
	ldrb	r2, [r3, r4]
	mov	r3, r2
	cmp	r3, #1
	bhi	.Lddba6
	mov	r6, r8
	lsl	r3, r6, #1
	add	r3, r8
	lsl	r0, r6, #4
	lsl	r1, r3, #1
	cmp	r0, #0x50
	ble	.Lddb5c
	mov	r0, #0x50
.Lddb5c:
	cmp	r1, #0x1e
	ble	.Lddb62
	mov	r1, #0x1e
.Lddb62:
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lddb88
	ldr	r3, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r4, #0x6c
	sub	r2, r1
	mov	r1, #0x30
	sub	r3, r4, r0
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r1, r9
	ldr	r0, [sp, #0x30]
	ldr	r6, [sp, #0x28]
	bl	_call_via_r6
	b	.Lddc02
.Lddb88:
	ldr	r3, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r4, #0x6c
	add	r2, r1
	mov	r1, #0x30
	sub	r3, r4, r0
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r1, r9
	ldr	r0, [sp, #0x30]
	ldr	r6, [sp, #0x24]
	bl	_call_via_r6
	b	.Lddc02
.Lddba6:
	mov	r1, r8
	lsl	r0, r1, #3
	cmp	r0, #0x40
	ble	.Lddbb0
	mov	r0, #0x40
.Lddbb0:
	mov	r3, r8
	cmp	r3, #8
	ble	.Lddbb8
	mov	r1, #8
.Lddbb8:
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lddbe2
	ldr	r4, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	sub	r2, r1
	mov	r1, #0x20
	str	r1, [sp]
	mov	r1, #0xf0
	mov	r6, #0x6c
	lsl	r1, #4
	sub	r3, r6, r0
	str	r0, [sp, #4]
	add	r1, r9
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x28]
	bl	_call_via_r4
	b	.Lddc02
.Lddbe2:
	ldr	r6, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r6, r2]
	add	r2, r1
	mov	r1, #0x6c
	sub	r3, r1, r0
	mov	r1, #0x20
	str	r1, [sp]
	mov	r1, #0xf0
	lsl	r1, #4
	str	r0, [sp, #4]
	add	r1, r9
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	bl	_call_via_r4
.Lddc02:
	ldr	r3, [sp, #0xc]
	ldr	r6, [sp, #0x2c]
	add	r3, #1
	cmp	r6, r3
	bne	.Lddc14
	ldr	r2, =0x77a8
	mov	r3, #3
	add	r2, r9
	str	r3, [r2]
.Lddc14:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x2c]
	add	r3, #3
	cmp	r0, r3
	bge	.Lddc6c
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	mov	r1, r3
	ldr	r7, =ewram_10000
	add	r1, #0x48
	mov	r6, #0
	b	.Lddc36
.Lddc30:
	mov	r7, r5
	add	r7, #0x1c
	add	r6, #1
.Lddc36:
	cmp	r6, #0x40
	beq	.Lddc6c
	mov	r5, r7
	mov	r2, #1
	ldr	r3, [r5, #0x18]
	neg	r2, r2
	cmp	r3, r2
	bne	.Lddc30
	str	r1, [sp, #8]
	bl	Func_4458
	ldr	r3, [sp, #0x10]
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r3, #0x1f
	and	r3, r0
	add	r2, r3
	add	r2, #0x20
	str	r2, [r5]
	ldr	r1, [sp, #8]
	cmp	r2, #0x60
	ble	.Lddc66
	mov	r3, #0x60
	str	r3, [r5]
.Lddc66:
	mov	r3, #0
	str	r1, [r7, #4]
	str	r3, [r7, #0x18]
.Lddc6c:
	ldr	r2, =0x7828
	add	r2, r9
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Lddcac
	ldr	r4, [sp, #0x14]
	mov	r5, r2
	mov	r10, r4
	mov	r7, #0x24
.Lddc82:
	ldr	r0, [sp, #0x2c]
	cmp	r0, r10
	bne	.Lddca0
	mov	r0, #0x84
	bl	_Func_f9080
	ldr	r3, [r5]
	ldrsh	r0, [r3, r7]
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r6
	bl	Func_d6888
.Lddca0:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r7, #2
	cmp	r6, r3
	bne	.Lddc82
.Lddcac:
	ldr	r3, [sp, #0x10]
	ldr	r2, [sp, #0x14]
	ldr	r6, [sp, #0xc]
	add	r3, #1
	str	r3, [sp, #0x10]
	add	r2, #8
	add	r6, #8
	ldr	r3, =0x7828
	str	r2, [sp, #0x14]
	str	r6, [sp, #0xc]
	add	r3, r9
	ldr	r3, [r3]
	ldr	r1, =.Leebb6
	ldr	r3, [r3, #0x18]
	mov	r4, #8
	mov	r0, #1
	ldrb	r3, [r1, r3]
	neg	r4, r4
	add	r11, r0
	add	r8, r4
	cmp	r11, r3
	beq	.Lddcda
	b	.Lddb36
.Lddcda:
	ldr	r3, =.Leebc0
	mov	r2, #0
	ldr	r7, =ewram_10000
	mov	r11, r2
	mov	r10, r3
.Lddce4:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	blt	.Lddd5c
	lsr	r5, r3, #31
	add	r5, r3, r5
	asr	r5, #1
	ldr	r6, =.Leebc8
	ldr	r0, =.Leebb9
	lsl	r4, r5, #1
	mov	r3, r10
	ldrh	r1, [r6, r4]
	ldrsb	r6, [r0, r5]
	ldrb	r0, [r3, r5]
	lsl	r0, #24
	mov	r8, r4
	asr	r4, r0, #24
	lsr	r0, #31
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r0, r4, r0
	asr	r0, #1
	sub	r2, r6
	sub	r3, r0
	str	r6, [sp]
	str	r4, [sp, #4]
	add	r1, r9
	ldr	r4, [sp, #0x24]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	ldr	r6, =.Leebc8
	mov	r0, r8
	mov	r3, r10
	ldrh	r1, [r6, r0]
	ldrb	r0, [r3, r5]
	lsl	r0, #24
	asr	r4, r0, #24
	lsr	r0, #31
	ldr	r3, [r7, #4]
	add	r0, r4, r0
	ldr	r6, =.Leebb9
	asr	r0, #1
	sub	r3, r0
	ldrsb	r0, [r6, r5]
	ldr	r2, [r7]
	add	r1, r9
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x28]
	bl	_call_via_r4
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
	cmp	r3, #0xe
	bne	.Lddd5c
	mov	r3, #1
	neg	r3, r3
	str	r3, [r7, #0x18]
.Lddd5c:
	mov	r6, #1
	add	r11, r6
	mov	r0, r11
	add	r7, #0x1c
	cmp	r0, #0x40
	bne	.Lddce4
	mov	r1, #8
	mov	r0, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x20]
	add	r1, #1
	str	r1, [sp, #0x2c]
	cmp	r1, r2
	beq	.Lddd90
	b	.Lddaba
.Lddd90:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dd9c0

.thumb_func_start Func_ddde0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1eec
	mov	r3, r5
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x40
	str	r3, [sp, #0x30]
	ldr	r3, =0x7828
	mov	r11, r1
	ldr	r2, [r5, #8]
	add	r3, r11
	str	r2, [sp, #0x1c]
	str	r0, [r3]
	mov	r0, #1
	bl	Func_cd594
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r5, [r5, #0x1c]
	ldr	r0, =0xce
	mov	r1, r11
	mov	r2, #1
	mov	r3, #0
	str	r5, [sp, #0x20]
	bl	Func_e0524
	ldr	r1, =0xc56
	ldr	r0, =0xc4
	add	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #0
	ldr	r1, [sp, #0x1c]
	mov	r3, #0
	ldr	r0, =0x73
	bl	Func_e0524
	mov	r3, #0
	mov	r10, r3
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r1, #0
	lsl	r2, #3
.Ldde52:
	mov	r4, #1
	add	r10, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Ldde52
	ldr	r3, =0x7098
	mov	r0, #0
	mov	r2, #1
	mov	r10, r0
	neg	r2, r2
	add	r3, r11
.Ldde6a:
	mov	r1, #1
	add	r10, r1
	mov	r4, r10
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r4, #0x40
	bne	.Ldde6a
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #0x8a
	bl	_Func_f9080
	mov	r0, #0
	ldr	r3, =0x7828
	str	r0, [sp, #0x28]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #0x28
	lsl	r3, #3
	neg	r1, r1
	cmp	r3, r1
	bne	.Lddeb2
	b	.Lde2a0
.Lddeb2:
	ldr	r2, =0x7828
	add	r2, r11
	str	r2, [sp, #0x14]
.Lddeb8:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x18
	bne	.Lddec4
	mov	r0, #0x85
	bl	_Func_bd7dc
.Lddec4:
	mov	r4, #0
	str	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lddefc
	ldr	r5, =Func_8d8
.Ldded4:
	ldr	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x28]
	lsl	r3, r1, #3
	cmp	r2, r3
	bne	.Lddeea
	mov	r1, #0x80
	ldr	r0, [sp, #0x30]
	lsl	r1, #7
	ldr	r2, =0x10101010
	bl	_call_via_r5
.Lddeea:
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	str	r3, [sp, #0x2c]
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r0, [sp, #0x2c]
	ldr	r3, [r3, #0x14]
	cmp	r0, r3
	bne	.Ldded4
.Lddefc:
	mov	r1, #0
	str	r1, [sp, #0x2c]
	ldr	r2, =0x7828
	mov	r4, r11
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Lddf0e
	b	.Lde1f0
.Lddf0e:
	mov	r0, sp
	add	r0, #0x34
	mov	r1, #0x24
	mov	r3, #0
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x10]
	str	r3, [sp, #0xc]
.Lddf1c:
	mov	r0, r11
	add	r5, r0, r2
	ldr	r3, [r5]
	ldr	r1, [sp, #0x10]
	ldr	r4, [sp, #0x2c]
	ldrsh	r0, [r3, r1]
	lsl	r4, #3
	ldr	r1, [sp, #0x18]
	mov	r8, r4
	bl	Func_e3980
	ldr	r4, [sp, #0x18]
	ldr	r3, [r4]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r4]
	ldr	r0, [sp, #0x28]
	mov	r3, r8
	add	r3, #1
	cmp	r0, r3
	bne	.Lddf50
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r11
	str	r3, [r2]
.Lddf50:
	mov	r3, r8
	ldr	r1, [sp, #0x28]
	add	r3, #4
	cmp	r1, r3
	bne	.Lddf7a
	ldr	r3, [r5]
	ldr	r2, [sp, #0x10]
	ldrsh	r0, [r3, r2]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x2c]
	bl	Func_d6888
	ldr	r3, [r5]
	ldr	r1, [sp, #0x10]
	ldrsh	r0, [r3, r1]
	mov	r1, #6
	bl	_Func_b8228
.Lddf7a:
	mov	r3, #2
	ldr	r4, [sp, #0x28]
	add	r3, r8
	mov	r9, r3
	cmp	r4, r8
	bge	.Lddf88
	b	.Lde0da
.Lddf88:
	mov	r3, r8
	add	r3, #0x10
	cmp	r4, r3
	blt	.Lddf92
	b	.Lde0d4
.Lddf92:
	mov	r0, r8
	sub	r3, r4, r0
	lsl	r6, r3, #6
	cmp	r6, #0x68
	ble	.Lddf9e
	mov	r6, #0x68
.Lddf9e:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r7, =.Leebd6
	lsl	r3, #2
	add	r3, #3
	mov	r2, r7
	ldrb	r3, [r2, r3]
	mov	r1, #0
	mov	r10, r1
	cmp	r3, #0
	beq	.Lde004
	ldr	r3, [sp, #0x2c]
	ldr	r4, [sp, #0x28]
	mov	r9, r7
	add	r5, r3, r4
.Lddfbc:
	mov	r0, r10
	add	r3, r5, r0
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r2, #3
	and	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r1, r2, #4
	sub	r1, r2
	lsl	r1, #6
	ldr	r2, =0xc56
	add	r1, r11
	add	r1, r2
	ldr	r2, [sp, #0x34]
	mov	r3, #0x18
	sub	r2, #0xc
	str	r3, [sp]
	str	r6, [sp, #4]
	mov	r3, #0
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	add	r3, #3
	mov	r2, r9
	mov	r0, #1
	ldrb	r3, [r2, r3]
	add	r10, r0
	cmp	r10, r3
	bne	.Lddfbc
.Lde004:
	mov	r3, #2
	add	r3, r8
	ldr	r4, [sp, #0x28]
	mov	r9, r3
	cmp	r4, r9
	bne	.Lde0da
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	ldrb	r3, [r7, r3]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Lde0da
	ldr	r2, [sp, #0xc]
	ldr	r3, =ewram_10000
	add	r7, r2, r3
.Lde028:
	bl	Func_4458
	ldr	r6, =0x1ff
	and	r6, r0
	bl	Func_4458
	ldr	r3, [sp, #0x34]
	ldr	r5, =0x7fff
	ldr	r4, =0xffffc000
	lsl	r3, #16
	str	r3, [r7]
	and	r5, r0
	mov	r3, #0xd0
	add	r5, r4
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x40
	mov	r3, r6
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Leebd6
	lsl	r3, #2
	mov	r0, #1
	ldrb	r3, [r2, r3]
	add	r10, r0
	add	r7, #0x1c
	cmp	r10, r3
	bne	.Lde028
	b	.Lde0da

	.pool_aligned

.Lde0d4:
	mov	r3, #2
	add	r3, r8
	mov	r9, r3
.Lde0da:
	ldr	r4, [sp, #0x28]
	cmp	r4, r9
	blt	.Lde1ca
	mov	r3, r8
	add	r3, #0x18
	cmp	r4, r3
	bge	.Lde1ca
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Leebd6
	lsl	r3, #2
	add	r3, #1
	ldrb	r3, [r2, r3]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Lde1ca
	ldr	r7, =0x7828
	mov	r3, #3
	mov	r9, r3
	add	r7, r11
.Lde106:
	mov	r4, r10
	mov	r0, r9
	and	r4, r0
	str	r4, [sp, #8]
	bl	Func_4458
	ldr	r3, [r7]
	ldr	r3, [r3, #0x18]
	ldr	r1, =.Leebd6
	lsl	r3, #2
	add	r3, #2
	ldrb	r5, [r1, r3]
	mov	r1, r5
	bl	Func_b50_from_thumb
	ldr	r2, [sp, #0x18]
	ldr	r2, [r2, #4]
	mov	r8, r2
	mov	r3, r8
	ldr	r4, [sp, #8]
	sub	r3, r0
	sub	r5, r0
	ldr	r0, =Data_eded0
	mov	r8, r3
	ldrb	r3, [r0, r4]
	mov	r1, r8
	lsr	r3, #1
	sub	r1, r3
	mov	r2, #8
	mov	r8, r1
	add	r8, r2
	bl	Func_4458
	add	r5, #1
	ldr	r3, [sp, #0x18]
	mov	r1, r5
	ldr	r6, [r3]
	bl	Func_b50_from_thumb
	ldr	r4, [sp, #8]
	add	r6, r0
	ldr	r0, =Data_edeca
	lsr	r3, r5, #31
	add	r5, r3
	ldrb	r3, [r0, r4]
	asr	r5, #1
	lsr	r3, #1
	sub	r6, r5
	sub	r6, r3
	bl	Func_4458
	ldr	r3, =.Leebe2
	mov	r1, r9
	and	r0, r1
	ldrb	r2, [r3, r0]
	mov	r3, r9
	orr	r3, r2
	ldr	r2, [r7]
	ldr	r1, =.Leebe6
	ldr	r2, [r2, #0x18]
	ldrb	r2, [r1, r2]
	mov	r0, #0x2f
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	bl	Func_ed408
	ldr	r4, [sp, #8]
	ldr	r2, =Data_edebe
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r2, =Data_edeca
	ldrb	r3, [r2, r4]
	ldr	r0, =Data_eded0
	str	r3, [sp]
	ldrb	r3, [r0, r4]
	ldr	r2, =iwram_1f0c
	str	r3, [sp, #4]
	add	r1, r11
	ldr	r4, [r2]
	mov	r3, r8
	ldr	r0, [sp, #0x30]
	mov	r2, r6
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r3, #1
	add	r10, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #0x18]
	ldr	r4, =.Leebd6
	lsl	r3, #2
	add	r3, #1
	ldrb	r3, [r4, r3]
	cmp	r10, r3
	bne	.Lde106
.Lde1ca:
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	ldr	r3, [sp, #0x2c]
	mov	r2, #0xe0
	lsl	r2, #4
	add	r0, #2
	add	r1, r2
	add	r3, #1
	str	r0, [sp, #0x10]
	str	r3, [sp, #0x2c]
	str	r1, [sp, #0xc]
	ldr	r2, =0x7828
	mov	r4, r11
	ldr	r3, [r4, r2]
	ldr	r0, [sp, #0x2c]
	ldr	r3, [r3, #0x14]
	cmp	r0, r3
	beq	.Lde1f0
	b	.Lddf1c
.Lde1f0:
	mov	r1, #0
	ldr	r6, =ewram_10000
	mov	r10, r1
.Lde1f6:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Lde262
	sub	r3, #1
	mov	r2, #0x80
	str	r3, [r6, #0x18]
	lsl	r2, #5
	mov	r0, r6
	mov	r1, #0x3c
	bl	Func_e3908
	mov	r2, #0xd0
	ldr	r3, [r6, #4]
	lsl	r2, #15
	cmp	r3, r2
	ble	.Lde224
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Lde262
.Lde224:
	ldr	r2, [r6]
	ldr	r4, =0x7effff
	cmp	r2, r4
	bhi	.Lde262
	cmp	r3, #0
	blt	.Lde262
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	bge	.Lde238
	add	r4, #0xf
.Lde238:
	asr	r4, #4
	add	r4, #1
	lsl	r5, r4, #1
	ldr	r0, =Data_ede48
	sub	r1, r5, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0x1c]
	add	r1, r0, r1
	lsr	r0, r4, #31
	add	r0, r4, r0
	asr	r0, #1
	asr	r2, #16
	asr	r3, #16
	sub	r2, r0
	sub	r3, r4
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
.Lde262:
	mov	r0, #1
	mov	r1, #0x80
	add	r10, r0
	lsl	r1, #3
	add	r6, #0x1c
	cmp	r10, r1
	bne	.Lde1f6
	mov	r0, #2
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x28]
	add	r2, #1
	str	r2, [sp, #0x28]
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x28
	cmp	r2, r3
	beq	.Lde2a0
	b	.Lddeb8
.Lde2a0:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ddde0

.thumb_func_start Func_de2f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x6c
	mov	r6, r2
	ldr	r2, =iwram_1eec
	str	r3, [sp, #0x2c]
	mov	r3, r2
	mov	r5, r1
	ldmia	r3!, {r1}
	str	r1, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x18]
	ldr	r2, =0x7828
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r4, =0x77b4
	ldr	r3, [sp, #0x28]
	add	r2, r3, r4
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r7, [sp, #0x28]
	ldr	r1, =0x77b8
	mov	r3, #0
	add	r2, r7, r1
	str	r3, [r2]
	cmp	r5, #3
	ble	.Lde34a
	mov	r2, #0x54
	sub	r5, #4
	str	r2, [sp, #0x14]
	b	.Lde34e
.Lde34a:
	mov	r3, #0x40
	str	r3, [sp, #0x14]
.Lde34e:
	cmp	r5, #1
	beq	.Lde366
	cmp	r5, #1
	bgt	.Lde35c
	cmp	r5, #0
	beq	.Lde362
	b	.Lde36e
.Lde35c:
	cmp	r5, #2
	beq	.Lde36a
	b	.Lde36e
.Lde362:
	ldr	r0, =0x94
	b	.Lde370
.Lde366:
	ldr	r0, =0x92
	b	.Lde370
.Lde36a:
	ldr	r0, =0x8e
	b	.Lde370
.Lde36e:
	ldr	r0, =0x90
.Lde370:
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r1, r5
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x28]
	mov	r0, r5
	bl	Func_5340
	ldr	r0, =0x73
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	cmp	r6, #1
	bne	.Lde3c0
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	Func_ed408
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
	b	.Lde3de
.Lde3c0:
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	Func_ed408
.Lde3de:
	ldr	r3, =iwram_1e50
	ldr	r4, [sp, #0x28]
	mov	r2, r3
	ldr	r7, =0x7828
	add	r3, #0xbc
	ldr	r3, [r3]
	add	r5, r4, r7
	str	r3, [sp, #0x20]
	add	r2, #0xb8
	ldr	r3, [r5]
	ldr	r2, [r2]
	ldr	r0, [r3, #8]
	str	r2, [sp, #0x1c]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r9, r0
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	mov	r2, #0
	str	r0, [sp, #0x10]
	ldr	r7, =ewram_10000
	mov	r8, r2
	mov	r10, r2
.Lde416:
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	mov	r3, r10
	str	r3, [r7]
	mov	r5, #0xff
	and	r5, r0
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x14
	mov	r4, r10
	lsl	r3, #16
	str	r4, [r7, #8]
	str	r3, [r7, #4]
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x80
	mov	r3, r5
	mul	r3, r0
	mov	r1, r10
	asr	r3, #5
	str	r3, [r7, #0xc]
	str	r1, [r7, #0x10]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0x14]
	mov	r3, #1
	add	r8, r3
	mov	r2, r10
	mov	r4, r8
	str	r2, [r7, #0x18]
	add	r7, #0x1c
	cmp	r4, #0x40
	bne	.Lde416
	ldr	r7, [sp, #0x28]
	mov	r1, #0xef
	lsl	r1, #7
	add	r2, r7, r1
	mov	r3, #2
	str	r3, [r2]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r7, r3
	mov	r3, #0x4b
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r7, r9
	ldr	r3, [r7, #8]
	add	r4, sp, #0x60
	str	r3, [r4]
	mov	r3, #0
	str	r3, [r4, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r4, #8]
	ldr	r1, [sp, #0x2c]
	mov	r11, r4
	cmp	r1, #4
	bhi	.Lde558
	ldr	r2, =.Lde4b0
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lde4b0:
	.word	.Lde4c4
	.word	.Lde4d8
	.word	.Lde4de
	.word	.Lde4f2
	.word	.Lde506

.Lde4c4:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2, #8]
	add	r5, sp, #0x54
	str	r3, [r5]
	mov	r3, #0xf0
	lsl	r3, #14
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	b	.Lde55a
.Lde4d8:
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4, #8]
	b	.Lde4f6
.Lde4de:
	mov	r7, r9
	ldr	r3, [r7, #8]
	add	r5, sp, #0x54
	str	r3, [r5]
	mov	r3, #0xf0
	lsl	r3, #14
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	b	.Lde55a
.Lde4f2:
	mov	r1, r9
	ldr	r3, [r1, #8]
.Lde4f6:
	add	r5, sp, #0x54
	str	r3, [r5]
	mov	r3, #0xf0
	lsl	r3, #14
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	b	.Lde55a
.Lde506:
	mov	r3, #0xf0
	add	r5, sp, #0x54
	mov	r2, #0
	lsl	r3, #14
	str	r2, [r5]
	str	r3, [r5, #4]
	str	r2, [r5, #8]
	b	.Lde55a

	.pool_aligned

.Lde558:
	add	r5, sp, #0x54
.Lde55a:
	mov	r2, sp
	add	r2, #0x48
	str	r2, [sp, #0xc]
	mov	r4, r11
	ldr	r3, [r4]
	ldr	r0, [r5]
	mov	r1, #0x28
	sub	r0, r3
	bl	Func_af0_from_thumb
	ldr	r7, [sp, #0xc]
	str	r0, [r7]
	mov	r1, r11
	ldr	r3, [r1, #4]
	ldr	r0, [r5, #4]
	mov	r1, #0x28
	sub	r0, r3
	bl	Func_af0_from_thumb
	str	r0, [r7, #4]
	mov	r2, r11
	ldr	r3, [r2, #8]
	ldr	r0, [r5, #8]
	mov	r1, #0x28
	sub	r0, r3
	bl	Func_af0_from_thumb
	str	r0, [r7, #8]
	ldr	r4, [sp, #0x14]
	mov	r3, #0
	mov	r10, r3
	cmp	r4, #0
	bne	.Lde59e
	b	.Lde8f4
.Lde59e:
	ldr	r3, =iwram_1e80
	mov	r7, r10
	ldr	r5, [r3]
	cmp	r7, #0x4b
	ble	.Lde5b6
	ldr	r3, .Lde5c4	@ 0xa8
	lsl	r2, r7, #1
	sub	r3, r2
	ldr	r2, .Lde5c8	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	orr	r3, r2
	strh	r3, [r1]
.Lde5b6:
	mov	r1, r10
	cmp	r1, #8
	bne	.Lde5d4
	mov	r0, #0xd4
	bl	_Func_f9080
	b	.Lde5d4

	.align	2, 0
.Lde5c4:
	.word	0xa8
.Lde5c8:
	.word	0x1000
	.pool

.Lde5d4:
	bl	Func_49ac
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
	mov	r3, r10
	sub	r3, #6
	cmp	r3, #0x27
	bhi	.Lde608
	ldr	r4, [sp, #0xc]
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r2, [r4]
	mov	r7, r11
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r4, #4]
	add	r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r4, #8]
	add	r3, r2
	str	r3, [r7, #8]
.Lde608:
	mov	r0, r11
	bl	Func_4cb4
	mov	r1, r10
	cmp	r1, #0
	bne	.Lde62e
	ldr	r2, [sp, #0x28]
	ldr	r4, =0x7828
	add	r3, r2, r4
	ldr	r3, [r3]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #1
	str	r1, [sp]
	neg	r2, r2
	mov	r1, #7
	neg	r3, r3
	bl	Func_d6888
.Lde62e:
	mov	r7, r10
	cmp	r7, #0x18
	bne	.Lde64e
	ldr	r1, [sp, #0x28]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Lde64e:
	mov	r4, r10
	neg	r4, r4
	mov	r1, r10
	mov	r3, #0
	lsl	r1, #8
	str	r4, [sp, #8]
	ldr	r6, =ewram_10000
	mov	r8, r3
	lsl	r7, r4, #8
	mov	r9, r1
.Lde662:
	mov	r3, r8
	cmp	r3, #0
	bge	.Lde66a
	add	r3, #7
.Lde66a:
	asr	r3, #3
	cmp	r10, r3
	bge	.Lde672
	b	.Lde7a4
.Lde672:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	beq	.Lde67a
	b	.Lde7a4
.Lde67a:
	bl	Func_49e8
	mov	r3, #3
	mov	r2, r8
	and	r3, r2
	cmp	r3, #1
	beq	.Lde6a4
	cmp	r3, #1
	bgt	.Lde692
	cmp	r3, #0
	beq	.Lde69c
	b	.Lde6c0
.Lde692:
	cmp	r3, #2
	beq	.Lde6ac
	cmp	r3, #3
	beq	.Lde6b4
	b	.Lde6c0
.Lde69c:
	mov	r0, r9
	bl	Func_4c1c
	b	.Lde6c0
.Lde6a4:
	mov	r0, r7
	bl	Func_4bd4
	b	.Lde6c0
.Lde6ac:
	mov	r0, r7
	bl	Func_4c6c
	b	.Lde6c0
.Lde6b4:
	mov	r0, r7
	bl	Func_4bd4
	mov	r0, r7
	bl	Func_4c6c
.Lde6c0:
	add	r5, sp, #0x30
	mov	r1, r5
	mov	r0, r6
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	bl	Func_4a5c
	ldr	r2, [r5, #8]
	cmp	r2, #0xf9
	bgt	.Lde6e0
	mov	r3, #0xfa
	str	r3, [r5, #8]
	mov	r2, #0xfa
.Lde6e0:
	ldr	r3, =0x27a
	cmp	r2, r3
	ble	.Lde6ea
	str	r3, [r5, #8]
	mov	r2, r3
.Lde6ea:
	mov	r3, r2
	sub	r3, #0xfa
	cmp	r3, #0
	bge	.Lde6f4
	add	r3, #0x3f
.Lde6f4:
	asr	r3, #6
	mov	r0, #8
	sub	r0, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x18]
	add	r1, r3, r1
	lsr	r3, r0, #31
	ldr	r2, [r5]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e38b8
	mov	r3, r8
	cmp	r3, #0
	bge	.Lde732
	add	r3, #7
.Lde732:
	asr	r3, #3
	add	r3, #0x18
	cmp	r10, r3
	blt	.Lde7a4
	ldr	r3, [r6]
	neg	r3, r3
	asr	r5, r3, #7
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #4]
	neg	r3, r3
	asr	r4, r3, #7
	neg	r2, r2
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #0xc]
	asr	r2, #7
	add	r2, r3, r2
	ldr	r3, [r6, #0x14]
	add	r1, r5
	add	r0, r3, r4
	lsl	r3, r1, #5
	sub	r3, r1
	lsl	r3, #1
	str	r1, [r6, #0xc]
	str	r2, [r6, #0x10]
	str	r0, [r6, #0x14]
	cmp	r3, #0
	bge	.Lde76a
	add	r3, #0x3f
.Lde76a:
	asr	r3, #6
	str	r3, [r6, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #1
	cmp	r3, #0
	bge	.Lde77a
	add	r3, #0x3f
.Lde77a:
	asr	r3, #6
	str	r3, [r6, #0x10]
	lsl	r3, r0, #5
	sub	r3, r0
	lsl	r3, #1
	cmp	r3, #0
	bge	.Lde78a
	add	r3, #0x3f
.Lde78a:
	ldr	r1, =0x7ff
	asr	r3, #6
	ldr	r2, =0xffe
	str	r3, [r6, #0x14]
	add	r3, r5, r1
	cmp	r3, r2
	bhi	.Lde7a4
	add	r3, r4, r1
	cmp	r3, r2
	bhi	.Lde7a4
	mov	r2, #1
	neg	r2, r2
	str	r2, [r6, #0x18]
.Lde7a4:
	ldr	r4, [sp, #8]
	mov	r1, r10
	lsl	r3, r4, #5
	mov	r2, #1
	add	r7, r3
	add	r8, r2
	lsl	r3, r1, #5
	add	r9, r3
	mov	r3, r8
	add	r6, #0x1c
	cmp	r3, #0x20
	beq	.Lde7be
	b	.Lde662
.Lde7be:
	mov	r3, r10
	sub	r3, #0x36
	cmp	r3, #0xf
	bhi	.Lde80c
	lsl	r0, r1, #10
	bl	Func_2322
	mov	r3, #0
	add	r5, sp, #0x30
	add	r2, sp, #0x3c
	lsl	r0, #2
	str	r0, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	mov	r0, r2
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	ldr	r4, [sp, #0x8c]
	str	r3, [r4]
	ldr	r7, [sp, #0x90]
	ldr	r3, [r5, #4]
	str	r3, [r7]
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	asr	r2, #1
	mov	r1, #0x14
	str	r2, [r5]
	str	r1, [sp]
	mov	r1, #0x28
	str	r1, [sp, #4]
	sub	r2, #0xa
	sub	r3, #0x14
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Lde80c:
	mov	r7, r10
	cmp	r7, #0x40
	bne	.Lde876
	ldr	r2, [sp, #0x28]
	mov	r3, #0xe1
	mov	r1, #0
	lsl	r3, #7
	mov	r8, r1
	add	r7, r2, r3
.Lde81e:
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	ldr	r4, [sp, #0x8c]
	ldr	r3, [r4]
	lsl	r3, #15
	str	r3, [r7]
	ldr	r1, [sp, #0x90]
	ldr	r3, [r1]
	mov	r5, #0xff
	lsl	r3, #16
	str	r3, [r7, #4]
	and	r5, r0
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x80
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	mov	r2, #1
	add	r3, #8
	add	r8, r2
	str	r3, [r7, #0x18]
	mov	r3, r8
	add	r7, #0x1c
	cmp	r3, #0x40
	bne	.Lde81e
.Lde876:
	mov	r4, r10
	cmp	r4, #0x3f
	ble	.Lde8d8
	ldr	r1, [sp, #0x28]
	mov	r2, #0xe1
	mov	r7, #0
	lsl	r2, #7
	ldr	r6, =Data_ede48
	mov	r8, r7
	add	r5, r1, r2
.Lde88a:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0
	blt	.Lde8cc
	asr	r0, #3
	add	r0, #2
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r3, [sp, #0x18]
	add	r1, r3, r1
	lsr	r3, r0, #31
	mov	r7, #2
	ldrsh	r2, [r5, r7]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
	mov	r0, r5
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Lde8cc:
	mov	r7, #1
	add	r8, r7
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Lde88a
.Lde8d8:
	ldr	r3, [sp, #0x28]
	ldr	r4, =0x7824
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r7, #1
	ldr	r1, [sp, #0x14]
	add	r10, r7
	cmp	r10, r1
	beq	.Lde8f4
	b	.Lde59e
.Lde8f4:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_cd4b4
	bl	Func_4278
	mov	r1, #0x80
	ldr	r5, =Func_8d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	bl	_call_via_r5
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lde93c	@ 0x1010
	add	sp, #0x6c
	strh	r3, [r2]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lde93c:
	.word	0x1010
.func_end Func_de2f8

	.section .rodata

.Leeb48:
	.incrom 0xeeb48, 0xeeb4b
.Leeb4b:
	.incrom 0xeeb4b, 0xeeb4e
.Leeb4e:
	.incrom 0xeeb4e, 0xeeb54
.Leeb54:
	.incrom 0xeeb54, 0xeeb58
.Leeb58:
	.incrom 0xeeb58, 0xeeb5e
.Leeb5e:
	.incrom 0xeeb5e, 0xeeb61
.Leeb61:
	.incrom 0xeeb61, 0xeeb71
.Leeb71:
	.incrom 0xeeb71, 0xeeb79
.Leeb79:
	.incrom 0xeeb79, 0xeeb80
.Leeb80:
	.incrom 0xeeb80, 0xeeb88
.Leeb88:
	.incrom 0xeeb88, 0xeeb96
.Leeb96:
	.incrom 0xeeb96, 0xeeba6
.Leeba6:
	.incrom 0xeeba6, 0xeebae
.Leebae:
	.incrom 0xeebae, 0xeebb6
.Leebb6:
	.incrom 0xeebb6, 0xeebb9
.Leebb9:
	.incrom 0xeebb9, 0xeebc0
.Leebc0:
	.incrom 0xeebc0, 0xeebc8
.Leebc8:
	.incrom 0xeebc8, 0xeebd6
.Leebd6:
	.incrom 0xeebd6, 0xeebe2
.Leebe2:
	.incrom 0xeebe2, 0xeebe6
.Leebe6:
	.incrom 0xeebe6, 0xeebe9
