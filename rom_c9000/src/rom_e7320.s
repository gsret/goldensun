	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_e7320
	push	{lr}
	mov	r1, #0
	bl	Func_e7404
	pop	{r0}
	bx	r0
.func_end Func_e7320

.thumb_func_start Func_e732c
	push	{lr}
	mov	r1, #1
	bl	Func_e7404
	pop	{r0}
	bx	r0
.func_end Func_e732c

.thumb_func_start Func_e7338
	push	{r5, r6, r7, lr}
	mov	r7, r9
	push	{r7}
	sub	sp, #4
	mov	r4, r9
	mov	r3, sp
	str	r4, [r3]
	mov	r3, r4
	mov	r5, r1
	mov	r1, r3
	sub	r1, #0x88
	ldr	r3, [r1]
	mov	r7, #0xe8
	lsl	r7, #7
	mov	r6, r2
	add	r2, r3, r7
	ldr	r3, [r2, #0x18]
	mov	r7, #1
	neg	r7, r7
	mov	r4, #0
	cmp	r3, r7
	bne	.Le7368
	str	r4, [r2, #0x18]
	b	.Le738c
.Le7368:
	add	r4, #1
	cmp	r4, #0x10
	beq	.Le7392
	lsl	r3, r4, #3
	sub	r3, r4
	ldr	r2, [r1]
	lsl	r3, #2
	add	r2, r3
	mov	r3, #0xe8
	lsl	r3, #7
	add	r2, r3
	mov	r7, #1
	ldr	r3, [r2, #0x18]
	neg	r7, r7
	cmp	r3, r7
	bne	.Le7368
	mov	r3, #0
	str	r3, [r2, #0x18]
.Le738c:
	str	r0, [r2]
	str	r5, [r2, #4]
	str	r6, [r2, #0xc]
.Le7392:
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e7338

.thumb_func_start Func_e73a0
	push	{r5, r6, lr}
	mov	r6, r9
	push	{r6}
	sub	sp, #4
	mov	r2, r9
	mov	r3, sp
	str	r2, [r3]
	mov	r3, r2
	mov	r5, r1
	mov	r1, r3
	sub	r1, #0x88
	ldr	r3, [r1]
	mov	r6, #0xe1
	lsl	r6, #7
	add	r2, r3, r6
	ldr	r3, [r2, #0x18]
	mov	r6, #1
	neg	r6, r6
	mov	r4, #0
	cmp	r3, r6
	bne	.Le73ce
	str	r4, [r2, #0x18]
	b	.Le73f2
.Le73ce:
	add	r4, #1
	cmp	r4, #0x20
	beq	.Le73f6
	lsl	r3, r4, #3
	sub	r3, r4
	ldr	r2, [r1]
	lsl	r3, #2
	add	r2, r3
	mov	r3, #0xe1
	lsl	r3, #7
	add	r2, r3
	mov	r6, #1
	ldr	r3, [r2, #0x18]
	neg	r6, r6
	cmp	r3, r6
	bne	.Le73ce
	mov	r3, #0
	str	r3, [r2, #0x18]
.Le73f2:
	str	r0, [r2]
	str	r5, [r2, #4]
.Le73f6:
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_e73a0

.thumb_func_start Func_e7404
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x11c
	str	r1, [sp, #0x4c]
	ldr	r3, =iwram_1ef0
	mov	r2, sp
	ldr	r1, [r3]
	add	r2, #0x94
	str	r2, [sp, #0x3c]
	str	r1, [sp, #0x48]
	sub	r3, #4
	ldr	r3, [r3]
	ldr	r4, =0x7828
	str	r3, [r2]
	add	r3, r4
	str	r0, [r3]
	mov	r0, #0x80
	lsl	r0, #6
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le7474	@ 0x100
	strh	r3, [r2]
	ldr	r0, [sp, #0x4c]
	cmp	r0, #1
	bne	.Le74b8
	ldr	r1, [sp, #0x3c]
	ldr	r2, =0x7828
	ldr	r3, [r1]
	add	r3, r2
	ldr	r3, [r3]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	mov	r3, #0xa0
	ldr	r2, [r0]
	lsl	r3, #12
	str	r3, [r2, #0x28]
	ldr	r3, =0x91eb
	str	r3, [r2, #0x48]
	ldr	r4, [sp, #0x3c]
	ldr	r0, =0x7828
	ldr	r3, [r4]
	add	r3, r0
	ldr	r3, [r3]
	mov	r5, #1
	ldr	r0, [r3, #8]
	neg	r5, r5
	mov	r3, #0
	b	.Le7488

	.align	2, 0
.Le7474:
	.word	0x100
	.pool

.Le7488:
	str	r3, [sp]
	mov	r1, r5
	mov	r2, #2
	mov	r3, r5
	bl	Func_d6888
	mov	r0, #0x91
	bl	_Func_f9080
	ldr	r1, [sp, #0x3c]
	ldr	r2, =0x7828
	ldr	r3, [r1]
	add	r3, r2
	ldr	r3, [r3]
	ldr	r4, [sp, #0x4c]
	ldr	r3, [r3, #4]
	str	r4, [sp, #0x40]
	cmp	r3, #1
	beq	.Le74be
	str	r5, [sp, #0x40]
	b	.Le74be

	.pool_aligned

.Le74b8:
	mov	r0, #1
	neg	r0, r0
	str	r0, [sp, #0x40]
.Le74be:
	bl	Func_c9048
	ldr	r2, =0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r1, [sp, #0x3c]
	mov	r2, #0xef
	ldr	r3, [r1]
	ldr	r5, =Func_cd260
	lsl	r2, #7
	add	r3, r2
	mov	r1, #0x90
	mov	r2, #0
	str	r2, [r3]
	lsl	r1, #3
	mov	r0, r5
	bl	Func_41d8
	mov	r0, #0
	mov	r1, #0
	bl	Func_cd104
	mov	r0, r5
	bl	Func_4278
	ldr	r3, [sp, #0x4c]
	b	.Le7504

	.pool_aligned

.Le7504:
	cmp	r3, #1
	bne	.Le755c
	mov	r4, #0
	ldr	r5, =0x77d8
	ldr	r6, =0x1e3
	mov	r8, r4
.Le7510:
	mov	r0, r6
	bl	_Func_bc70
	ldr	r1, [sp, #0x3c]
	ldr	r3, [r1]
	str	r0, [r3, r5]
	cmp	r0, #0
	beq	.Le753c
	mov	r2, r0
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #2
	bl	_Func_ba30
	ldr	r2, [sp, #0x3c]
	ldr	r3, [r2]
	ldr	r1, [r3, r5]
	ldrb	r3, [r1, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1, #9]
.Le753c:
	mov	r4, #1
	ldr	r3, =0x2001
	add	r8, r4
	mov	r0, r8
	add	r5, #4
	add	r6, r3
	cmp	r0, #2
	bne	.Le7510
	b	.Le7566

	.pool_aligned

.Le755c:
	ldr	r1, =0x17d
	mov	r0, #1
	mov	r2, #3
	bl	Func_dbb24
.Le7566:
	ldr	r2, [sp, #0x3c]
	mov	r3, #1
	ldr	r1, [r2]
	ldr	r0, =0xc1
	mov	r2, #1
	bl	Func_e0524
	ldr	r3, [sp, #0x4c]
	cmp	r3, #1
	bne	.Le758e
	ldr	r0, =0xc4
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Le758e:
	mov	r4, #0x8c
	lsl	r4, #1
	add	r4, sp
	ldr	r3, =0x1010101
	mov	r9, r4
	str	r3, [r4]
	mov	r0, r9
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =ewram_10000
	ldr	r2, =0x85002000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xf0
	ldr	r3, =Func_1af8
	lsl	r2, #7
	ldr	r0, =0x6008000
	bl	_call_via_r3
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Le75dc	@ 0
	strh	r3, [r2]
	ldr	r3, .Le75e0	@ 0x100
	sub	r2, #0x30
	strh	r3, [r2]
	ldr	r3, .Le75e4	@ 0x1f80
	sub	r2, #0x16
	strh	r3, [r2]
	ldr	r3, .Le75e8	@ 0x2787
	add	r2, #2
	ldr	r1, =0x5000100
	mov	r0, #0
	strh	r3, [r2]
	mov	r8, r0
	mov	r7, #0xf
	mov	r10, r1
	b	.Le7618

	.align	2, 0
.Le75dc:
	.word	0
.Le75e0:
	.word	0x100
.Le75e4:
	.word	0x1f80
.Le75e8:
	.word	0x2787
	.pool

.Le7618:
	bl	Func_4458
	mov	r6, r0
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	and	r5, r7
	and	r0, r7
	add	r5, #0x10
	add	r0, #0x10
	and	r6, r7
	lsl	r0, #10
	lsl	r5, #5
	add	r6, #0x10
	orr	r0, r5
	mov	r4, #1
	orr	r0, r6
	mov	r2, r10
	add	r8, r4
	strh	r0, [r2]
	mov	r3, #2
	mov	r0, r8
	add	r10, r3
	cmp	r0, #0x3f
	bne	.Le7618
	mov	r1, r9
	mov	r3, #0
	str	r3, [r1]
	mov	r0, r9
	ldr	r3, =REG_DMA3SAD
	ldr	r1, [sp, #0x48]
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0
	mov	r3, #0x7f
	mov	r8, r2
	mov	r10, r3
	mov	r7, #7
.Le766a:
	bl	Func_4458
	mov	r4, r10
	mov	r6, r0
	and	r6, r4
	bl	Func_4458
	mov	r5, r0
	mov	r0, r10
	and	r5, r0
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	mov	r1, r3
	add	r1, #0x40
	mov	r3, r5
	cmp	r5, #0
	bge	.Le7692
	add	r3, r5, #7
.Le7692:
	asr	r3, #3
	mov	r2, r6
	cmp	r6, #0
	bge	.Le769c
	add	r2, r6, #7
.Le769c:
	asr	r2, #3
	lsl	r3, #4
	add	r3, r2
	and	r5, r7
	lsl	r3, #3
	add	r3, r5
	and	r6, r7
	lsl	r3, #3
	ldr	r2, [sp, #0x48]
	add	r3, r6
	strb	r1, [r2, r3]
	mov	r4, #0x80
	mov	r3, #1
	add	r8, r3
	lsl	r4, #1
	cmp	r8, r4
	bne	.Le766a
	mov	r2, #0x80
	ldr	r1, [sp, #0x48]
	ldr	r3, =Func_1af8
	lsl	r2, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r2, =iwram_1ce0
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	ldr	r0, [sp, #0x3c]
	ldr	r1, =0x7828
	ldr	r3, [r0]
	add	r3, r1
	ldr	r0, [r3]
	bl	Func_d6750
	ldr	r3, [sp, #0x3c]
	ldr	r4, =0x77d0
	ldr	r2, [r3]
	ldr	r0, =0x77d4
	add	r3, r2, r4
	mov	r1, #0
	str	r1, [r3]
	sub	r4, #0x40
	add	r3, r2, r0
	str	r1, [r3]
	sub	r0, #0x40
	add	r3, r2, r4
	str	r1, [r3]
	add	r1, r2, r0
	mov	r3, #2
	str	r3, [r1]
	ldr	r4, [sp, #0x40]
	ldr	r3, =0x7798
	add	r0, #8
	add	r1, r2, r3
	lsl	r3, r4, #7
	add	r2, r0
	str	r3, [r1]
	mov	r1, r8
	str	r1, [r2]
	ldr	r0, =Func_c9138
	ldr	r1, =0x4ff
	bl	Func_41d8
	mov	r1, #0x90
	ldr	r0, =Func_cd358
	lsl	r1, #3
	bl	Func_41d8
	add	r2, sp, #0x98
	mov	r10, r2
	mov	r7, #0x3f
	mov	r5, r10
	add	r6, sp, #0x118
.Le772e:
	bl	Func_4458
	and	r0, r7
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Le772e
	mov	r3, #1
	mov	r6, #0
	mov	r8, r3
	mov	r5, #0
.Le7744:
	mov	r4, r8
	lsr	r3, r4, #31
	add	r3, r8
	asr	r3, #1
	mov	r0, #4
	add	r6, r3
	add	r8, r0
	cmp	r5, r6
	beq	.Le77b4
	mov	r1, #0x7f
	mov	r2, #0
	mov	r7, r10
	mov	r4, #7
	mov	r14, r1
	mov	r12, r2
.Le7762:
	mov	r0, #0
.Le7764:
	mov	r1, r14
	mov	r3, r0
	and	r3, r1
	ldrb	r3, [r7, r3]
	sub	r1, r5, r3
	cmp	r1, #0
	blt	.Le77a4
	cmp	r1, #0x7f
	bgt	.Le77a4
	mov	r2, r1
	cmp	r1, #0
	bge	.Le777e
	add	r2, r1, #7
.Le777e:
	asr	r2, #3
	mov	r3, r0
	cmp	r0, #0
	bge	.Le7788
	add	r3, r0, #7
.Le7788:
	asr	r3, #3
	lsl	r2, #5
	add	r2, r3
	and	r1, r4
	lsl	r2, #3
	add	r2, r1
	mov	r3, r0
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	ldr	r3, =ewram_10000
	mov	r1, r12
	add	r2, r3
	strb	r1, [r2]
.Le77a4:
	mov	r2, #0x80
	add	r0, #1
	lsl	r2, #1
	cmp	r0, r2
	bne	.Le7764
	add	r5, #1
	cmp	r5, r6
	bne	.Le7762
.Le77b4:
	ldr	r4, [sp, #0x3c]
	ldr	r0, =0x7824
	ldr	r3, [r4]
	mov	r2, #1
	add	r3, r0
	str	r2, [r3]
	mov	r0, #1
	bl	Func_30f8
	cmp	r6, #0xbf
	ble	.Le7744
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Le7804	@ 0x3f42
	strh	r3, [r2]
	ldr	r3, .Le7808	@ 0x1010
	add	r2, #2
	strh	r3, [r2]
	ldr	r2, =iwram_1ad0
	ldrh	r1, [r2, #4]
	str	r1, [sp, #0x38]
	ldrh	r3, [r2, #6]
	ldr	r5, =iwram_1f00
	str	r3, [sp, #0x34]
	ldr	r4, [r5]
	mov	r3, #0
	str	r4, [sp, #0x30]
	strh	r3, [r2, #4]
	mov	r3, #0x20
	strh	r3, [r2, #6]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r5, [r5, #8]
	ldr	r0, [sp, #0x3c]
	b	.Le7850

	.align	2, 0
.Le7804:
	.word	0x3f42
.Le7808:
	.word	0x1010
	.pool

.Le7850:
	str	r5, [sp, #0x44]
	mov	r3, #0xef
	ldr	r2, [r0]
	lsl	r3, #7
	add	r1, r2, r3
	ldr	r4, =0x7784
	mov	r3, #3
	str	r3, [r1]
	ldr	r3, =ewram_20202
	add	r2, r4
	str	r3, [r2]
	ldr	r1, =0x4fe
	ldr	r0, =Func_e72e0
	bl	Func_41d8
	ldr	r1, [sp, #0x3c]
	ldr	r4, =0x7098
	ldr	r3, [r1]
	mov	r0, #0
	mov	r2, #1
	mov	r8, r0
	neg	r2, r2
	add	r3, r4
.Le787e:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r1, #0x40
	bne	.Le787e
	ldr	r2, [sp, #0x30]
	mov	r3, #1
	str	r3, [r2, #0x10]
	ldr	r4, [sp, #0x3c]
	ldr	r0, =0x778c
	ldr	r3, [r4]
	mov	r2, #0
	add	r3, r0
	str	r2, [r3]
	mov	r11, r2
	mov	r1, sp
	mov	r2, sp
	add	r1, #0x84
	add	r2, #0x58
	mov	r3, #0
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x2c]
	str	r4, [sp, #0x28]
	str	r3, [sp, #0x10]
.Le78b2:
	ldr	r4, [sp, #0x3c]
	ldr	r1, =0x778c
	ldr	r0, [r4]
	add	r3, r0, r1
	ldr	r2, [r3]
	mov	r3, r2
	cmp	r3, #0
	bge	.Le78c4
	add	r3, #3
.Le78c4:
	asr	r4, r3, #2
	mov	r2, #0xfc
	ldr	r3, [sp, #0x4c]
	lsl	r2, #5
	add	r5, r0, r2
	cmp	r3, #1
	bne	.Le78e6
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Le78fa
	mov	r0, r11
	cmp	r0, #0x10
	ble	.Le78fa
	b	.Le7cba
.Le78e6:
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Le78fa
	mov	r1, r11
	cmp	r1, #4
	ble	.Le78fa
	b	.Le7cba
.Le78fa:
	mov	r2, r11
	cmp	r2, #0
	bne	.Le790a
	mov	r0, #0x8d
	str	r4, [sp, #8]
	bl	_Func_f9080
	ldr	r4, [sp, #8]
.Le790a:
	mov	r3, #0
	mov	r8, r3
.Le790e:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	strh	r3, [r5]
	add	r5, #2
	cmp	r1, #0xf
	bne	.Le790e
.Le791c:
	mov	r1, r8
	sub	r1, #0x10
	mov	r3, r1
	cmp	r1, #0
	bge	.Le792a
	mov	r3, r8
	sub	r3, #0xd
.Le792a:
	asr	r3, #2
	add	r2, r3, r4
	mov	r3, r2
	mov	r1, r2
	sub	r3, #0x20
	sub	r1, #0x50
	cmp	r3, #0
	bge	.Le793c
	mov	r3, #0
.Le793c:
	cmp	r3, #0x1f
	ble	.Le7942
	mov	r3, #0x1f
.Le7942:
	cmp	r1, #0
	bge	.Le7948
	mov	r1, #0
.Le7948:
	cmp	r1, #0x1f
	ble	.Le794e
	mov	r1, #0x1f
.Le794e:
	lsl	r2, r1, #5
	lsl	r3, #10
	orr	r3, r2
	asr	r2, r1, #1
	orr	r3, r2
	mov	r2, #1
	add	r8, r2
	strh	r3, [r5]
	mov	r3, r8
	add	r5, #2
	cmp	r3, #0x87
	bne	.Le791c
	ldr	r3, .Le7988	@ 0
.Le7968:
	mov	r4, #1
	add	r8, r4
	mov	r0, r8
	strh	r3, [r5]
	add	r5, #2
	cmp	r0, #0xa0
	bne	.Le7968
	ldr	r1, [sp, #0x40]
	cmp	r1, #1
	bne	.Le79a8
	mov	r3, r11
	cmp	r3, #0
	bge	.Le7984
	add	r3, #3
.Le7984:
	asr	r7, r3, #2
	b	.Le79b6

	.align	2, 0
.Le7988:
	.word	0
	.pool

.Le79a8:
	mov	r2, r11
	cmp	r2, #0
	bge	.Le79b0
	add	r2, #3
.Le79b0:
	asr	r2, #2
	mov	r3, #0x40
	sub	r7, r3, r2
.Le79b6:
	mov	r2, #0x60
	mov	r3, r11
	sub	r3, r2, r3
	ldr	r4, [sp, #0x18]
	mov	r10, r3
	mov	r3, #0
	str	r3, [r4, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r4, #4]
	ldr	r0, [sp, #0x4c]
	cmp	r0, #1
	bne	.Le7a1e
	ldr	r1, [sp, #0x10]
	mov	r2, #0xa0
	ldr	r3, [sp, #0x2c]
	lsl	r2, #8
	add	r6, r1, r2
	str	r6, [sp, #0x58]
	mov	r4, #0xa0
	str	r6, [r3, #4]
	ldr	r0, [sp, #0x18]
	lsl	r4, #15
	lsl	r3, r7, #16
	add	r3, r4
	str	r3, [r0]
	mov	r1, r10
	mov	r3, #0x40
	sub	r3, r1
	lsl	r3, #16
	str	r3, [r0, #8]
	ldr	r2, [sp, #0x28]
	ldr	r4, =0x77d8
	ldr	r3, [r2]
	add	r3, r4
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x2c]
	mov	r3, #0
	bl	_Func_b168
	ldr	r0, [sp, #0x28]
	ldr	r1, =0x77dc
	ldr	r3, [r0]
	add	r3, r1
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x2c]
	mov	r3, #0
	bl	_Func_b168
	b	.Le7a54
.Le7a1e:
	ldr	r3, [sp, #0x10]
	mov	r4, #0x80
	ldr	r0, [sp, #0x2c]
	lsl	r4, #9
	add	r6, r3, r4
	str	r6, [sp, #0x58]
	mov	r1, #0xc0
	str	r6, [r0, #4]
	lsl	r1, #15
	ldr	r4, [sp, #0x18]
	lsl	r3, r7, #16
	add	r3, r1
	mov	r0, r10
	str	r3, [r4]
	sub	r3, r2, r0
	lsl	r3, #16
	str	r3, [r4, #8]
	ldr	r1, [sp, #0x3c]
	ldr	r2, =0x77d8
	ldr	r3, [r1]
	add	r3, r2
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x2c]
	mov	r3, #0
	bl	_Func_b168
.Le7a54:
	mov	r3, #0
	mov	r4, r10
	mov	r8, r3
	mov	r3, #0x20
	sub	r4, r3, r4
	mov	r10, r4
	mov	r2, #0
.Le7a62:
	ldr	r0, [sp, #0x3c]
	ldr	r3, [r0]
	mov	r1, #0xe1
	add	r3, r2
	lsl	r1, #7
	add	r5, r3, r1
	mov	r4, #1
	ldr	r3, [r5, #0x18]
	neg	r4, r4
	cmp	r3, r4
	bne	.Le7ad2
	bl	Func_4458
	ldr	r3, =0x7fff
	and	r3, r0
	mov	r0, #0x80
	lsl	r0, #7
	add	r1, r3, r0
	mov	r3, #0
	str	r3, [r5, #0x18]
	mov	r0, r1
	str	r1, [sp, #0xc]
	bl	Func_2322
	mov	r3, r7
	add	r3, #0x60
	lsl	r2, r3, #16
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	ldr	r1, [sp, #0xc]
	cmp	r3, #0
	bge	.Le7aa8
	ldr	r4, =0xffff
	add	r3, r4
.Le7aa8:
	asr	r3, #16
	mul	r3, r6
	add	r3, r2, r3
	str	r3, [r5]
	mov	r0, r1
	bl	Func_231c
	lsl	r3, r0, #4
	sub	r3, r0
	mov	r1, r10
	lsl	r3, #1
	lsl	r2, r1, #16
	cmp	r3, #0
	bge	.Le7ac8
	ldr	r4, =0xffff
	add	r3, r4
.Le7ac8:
	asr	r3, #16
	mul	r3, r6
	sub	r3, r2, r3
	str	r3, [r5, #4]
	b	.Le7ade
.Le7ad2:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r2, #0x1c
	cmp	r1, #0x20
	bne	.Le7a62
.Le7ade:
	add	r5, sp, #0x60
	mov	r3, #0
	str	r3, [r5]
	str	r3, [r5, #4]
	mov	r3, #0x80
	lsl	r3, #18
	str	r3, [r5, #8]
	bl	Func_49ac
	mov	r0, r5
	bl	Func_4cb4
	mov	r0, #0x80
	lsl	r0, #4
	bl	Func_4c6c
	ldr	r0, [sp, #0x10]
	bl	Func_4c1c
	mov	r2, #0
	ldr	r7, =.Leee76
	mov	r8, r2
	add	r6, sp, #0x78
	add	r5, sp, #0x6c
.Le7b0e:
	ldrh	r3, [r7]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	mov	r4, #2
	ldrsh	r3, [r7, r4]
	add	r3, r11
	lsl	r3, #16
	str	r3, [r6, #4]
	ldrh	r3, [r7, #4]
	asr	r2, #1
	lsl	r2, #16
	lsl	r3, #16
	str	r2, [r6]
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	lsl	r2, #16
	mov	r1, r5
	str	r2, [r6, #8]
	mov	r0, r6
	bl	Func_e3944
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	mov	r3, r2
	add	r3, #0x80
	str	r3, [r5]
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	mov	r1, r3
	add	r1, #0x3c
	str	r1, [r5, #4]
	ldr	r4, [sp, #0x3c]
	mov	r0, #0xfa
	ldr	r1, [r4]
	lsl	r0, #5
	add	r1, r0
	mov	r0, #8
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r2, #0x7c
	add	r3, #0x38
	ldr	r0, =ewram_10000
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r7, #6
	cmp	r1, #7
	bne	.Le7b0e
	ldr	r2, [sp, #0x40]
	cmp	r2, #1
	bne	.Le7b92
	mov	r3, r11
	cmp	r3, #0
	bge	.Le7b8a
	add	r3, #3
.Le7b8a:
	asr	r3, #2
	mov	r7, r3
	sub	r7, #0x10
	b	.Le7ba0
.Le7b92:
	mov	r2, r11
	cmp	r2, #0
	bge	.Le7b9a
	add	r2, #3
.Le7b9a:
	asr	r2, #2
	mov	r3, #0x10
	sub	r7, r3, r2
.Le7ba0:
	mov	r3, #0x60
	neg	r3, r3
	add	r3, r11
	mov	r4, #0
	ldr	r5, =.Leeea0
	mov	r10, r3
	mov	r8, r4
.Le7bae:
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	add	r3, r10
	cmp	r3, #0x5d
	bgt	.Le7bf8
	ldr	r2, [sp, #0x3c]
	ldr	r1, [r2]
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	mov	r4, #0xe4
	mov	r0, #0x18
	lsl	r4, #5
	add	r2, r7
	add	r1, r4
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r2, #0xc
	sub	r3, #0xc
	ldr	r0, =ewram_10000
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	b	.Le7c10

	.pool_aligned

.Le7bf8:
	cmp	r3, #0x5f
	bgt	.Le7c10
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	add	r2, sp, #0x11c
	add	r0, r7
	mov	r9, r2
	lsl	r0, #16
	lsl	r1, r3, #16
	mov	r2, #1
	bl	Func_e7338
.Le7c10:
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	add	r5, #4
	cmp	r4, #7
	bne	.Le7bae
	ldr	r1, [sp, #0x40]
	lsl	r3, r1, #2
	mov	r0, #0
	add	r3, r1
	mov	r8, r0
	lsl	r7, r3, #14
	mov	r6, #0
.Le7c2a:
	ldr	r3, [sp, #0x3c]
	ldr	r2, [r3]
	mov	r4, #0xe1
	add	r3, r2, r6
	lsl	r4, #7
	add	r5, r3, r4
	ldr	r1, [r5, #0x18]
	cmp	r1, #0
	blt	.Le7c78
	lsl	r1, #10
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	add	r1, r2, r1
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	mov	r0, #0x20
	sub	r3, #0x10
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r2, #0x10
	ldr	r0, =ewram_10000
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	ldr	r3, [r5]
	sub	r3, r7
	str	r3, [r5]
	ldr	r0, =0xfffb0000
	ldr	r3, [r5, #4]
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #6
	bne	.Le7c78
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Le7c78:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0x1c
	cmp	r2, #0x20
	bne	.Le7c2a
	ldr	r4, [sp, #0x28]
	ldr	r0, =0x7824
	ldr	r3, [r4]
	mov	r2, #1
	add	r3, r0
	str	r2, [r3]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0x80
	ldr	r1, [sp, #0x10]
	lsl	r2, #1
	add	r1, r2
	str	r1, [sp, #0x10]
	ldr	r4, [sp, #0x28]
	ldr	r0, =0x778c
	ldr	r2, [r4]
	mov	r3, #1
	add	r2, r0
	add	r11, r3
	ldr	r3, [r2]
	mov	r1, r11
	add	r3, #1
	str	r3, [r2]
	cmp	r1, #0xc0
	beq	.Le7cba
	b	.Le78b2
.Le7cba:
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x30]
	mov	r5, #0
	str	r5, [r2, #0x10]
	ldr	r0, =Func_c9138
	bl	Func_4278
	ldr	r0, =Func_e72e0
	bl	Func_4278
	ldr	r0, =Func_cd358
	bl	Func_4278
	add	r4, sp, #0x38
	add	r0, sp, #0x34
	ldr	r3, =iwram_1ad0
	ldrh	r4, [r4]
	ldrh	r0, [r0]
	strh	r4, [r3, #4]
	strh	r0, [r3, #6]
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_d67dc
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le7d2c	@ 0x80
	strh	r3, [r2]
	ldr	r3, =REG_BG2X
	str	r5, [r3]
	ldr	r3, =0xfffff000
	add	r2, #0xc
	str	r3, [r2]
	ldr	r3, .Le7d30	@ 0x1010
	add	r2, #0x26
	strh	r3, [r2]
	ldr	r3, .Le7d34	@ 0xae0
	sub	r2, #0x46
	strh	r3, [r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r2, [sp, #0x3c]
	str	r3, [sp, #0x44]
	ldr	r0, =0xc0
	ldr	r1, [r2]
	b	.Le7d6c

	.align	2, 0
.Le7d2c:
	.word	0x80
.Le7d30:
	.word	0x1010
.Le7d34:
	.word	0x2784
	.pool

.Le7d6c:
	mov	r3, #0
	mov	r2, #1
	bl	Func_e0524
	mov	r3, #0
	mov	r8, r3
	mov	r7, #0x7f
	mov	r6, #0
.Le7d7c:
	ldr	r4, [sp, #0x3c]
	ldr	r5, [r4]
	mov	r0, #0xe1
	add	r5, r6
	lsl	r0, #7
	add	r5, r0
	bl	Func_4458
	and	r0, r7
	str	r0, [r5]
	bl	Func_4458
	mov	r1, #1
	and	r0, r7
	add	r8, r1
	add	r0, #0x7f
	mov	r2, r8
	str	r0, [r5, #4]
	add	r6, #0x1c
	cmp	r2, #0x20
	bne	.Le7d7c
	mov	r3, #0
	ldr	r5, =ewram_10000
	mov	r8, r3
	mov	r6, #0
	mov	r7, #0xff
.Le7db0:
	str	r6, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x7f
	mov	r4, #1
	lsl	r0, #12
	add	r8, r4
	str	r0, [r5, #0x14]
	mov	r0, r8
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r0, #0x80
	bne	.Le7db0
	mov	r1, #0
	ldr	r5, =ewram_10e00
	mov	r8, r1
	mov	r6, #0
	mov	r7, #0xff
.Le7df0:
	str	r6, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
	lsl	r0, #13
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
	mov	r2, #1
	mov	r3, #0x80
	lsl	r0, #13
	add	r8, r2
	lsl	r3, #2
	str	r0, [r5, #0x14]
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r8, r3
	bne	.Le7df0
	ldr	r4, [sp, #0x3c]
	mov	r0, #0xef
	ldr	r2, [r4]
	lsl	r0, #7
	add	r1, r2, r0
	mov	r3, #1
	str	r3, [r1]
	ldr	r1, =0x7784
	ldr	r3, =0x10101010
	add	r2, r1
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r0, #0xe8
	ldr	r3, [sp, #0x3c]
	mov	r4, sp
	add	r4, #0x50
	lsl	r0, #9
	mov	r2, #0
	str	r3, [sp, #0x20]
	str	r4, [sp, #0x1c]
	str	r0, [sp, #0x14]
	mov	r11, r2
.Le7e5c:
	ldr	r3, =iwram_1e80
	mov	r1, r11
	sub	r1, #0x10
	ldr	r5, [r3]
	str	r1, [sp, #0x24]
	cmp	r1, #0x13
	ble	.Le7e74
	mov	r0, #2
	mov	r1, #2
	mov	r2, #2
	bl	Func_e727c
.Le7e74:
	mov	r2, r11
	cmp	r2, #0
	bne	.Le7e80
	mov	r0, #0x9c
	bl	_Func_f9080
.Le7e80:
	mov	r3, r11
	cmp	r3, #0x28
	bne	.Le7e8c
	mov	r0, #0x91
	bl	_Func_f9080
.Le7e8c:
	mov	r4, r11
	cmp	r4, #0x30
	bne	.Le7ebe
	ldr	r0, [sp, #0x4c]
	cmp	r0, #1
	bne	.Le7eb8
	ldr	r1, [sp, #0x20]
	ldr	r2, =0x77d8
	ldr	r3, [r1]
	add	r3, r2
	ldr	r0, [r3]
	bl	_Func_bdd4
	ldr	r4, [sp, #0x20]
	ldr	r0, =0x77dc
	ldr	r3, [r4]
	add	r3, r0
	ldr	r0, [r3]
	bl	_Func_bdd4
	bl	_Func_b6c90
.Le7eb8:
	mov	r0, #0x86
	bl	_Func_bd7dc
.Le7ebe:
	bl	Func_49ac
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
	ldr	r7, =ewram_10e00
	mov	r1, #0
	mov	r2, #0x3f
	mov	r8, r1
	mov	r10, r2
.Le7ed6:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.Le7f96
	add	r6, sp, #0x60
	mov	r0, r7
	mov	r1, r6
	bl	Func_e3944
	ldr	r3, [r6]
	ldr	r2, [r6, #8]
	asr	r3, #1
	str	r3, [r6]
	cmp	r2, #0x9f
	bgt	.Le7ef8
	mov	r3, #0xa0
	str	r3, [r6, #8]
	mov	r2, #0xa0
.Le7ef8:
	ldr	r3, =0x31f
	cmp	r2, r3
	ble	.Le7f02
	str	r3, [r6, #8]
	mov	r2, r3
.Le7f02:
	mov	r3, r2
	sub	r3, #0xa0
	cmp	r3, #0
	bge	.Le7f0c
	add	r3, #0x3f
.Le7f0c:
	asr	r3, #6
	mov	r0, #9
	sub	r0, r3
	ldr	r2, =Data_ede48
	lsl	r5, r0, #1
	sub	r3, r5, #2
	ldrh	r4, [r2, r3]
	mov	r3, #1
	mov	r2, r8
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #7
	add	r3, r2
	ldr	r2, [sp, #0x3c]
	lsl	r3, #1
	ldr	r1, [r2]
	add	r4, r3
	mov	r3, #0xc8
	add	r1, r4
	lsl	r3, #6
	add	r1, r3
	lsr	r3, r0, #31
	ldr	r2, [r6]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	ldr	r4, [sp, #0x44]
	sub	r3, r0
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x48]
	bl	_call_via_r4
	ldr	r2, =0xffffe000
	mov	r0, r7
	mov	r1, #0x40
	bl	Func_e38b8
	mov	r2, #0xa0
	ldr	r3, [r7, #4]
	lsl	r2, #13
	cmp	r3, r2
	bgt	.Le7f96
	mov	r3, #0
	str	r3, [r7]
	str	r3, [r7, #8]
	str	r2, [r7, #4]
	bl	Func_4458
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x20
	lsl	r0, #15
	str	r0, [r7, #0xc]
	bl	Func_4458
	mov	r2, r10
	and	r0, r2
	lsl	r0, #13
	str	r0, [r7, #0x10]
	bl	Func_4458
	mov	r3, r10
	and	r0, r3
	sub	r0, #0x20
	lsl	r0, #15
	str	r0, [r7, #0x14]
.Le7f96:
	mov	r4, #1
	add	r8, r4
	mov	r0, r8
	add	r7, #0x1c
	cmp	r0, #0x40
	bne	.Le7ed6
	mov	r1, #0
	mov	r8, r1
	mov	r10, r1
.Le7fa8:
	ldr	r2, [sp, #0x3c]
	mov	r5, #7
	ldr	r1, [r2]
	mov	r2, r8
	and	r5, r2
	mov	r4, r10
	add	r3, r1, r4
	mov	r0, #0xe1
	add	r4, r5, #3
	ldr	r2, =Data_ede48
	lsl	r6, r4, #1
	lsl	r0, #7
	add	r7, r3, r0
	sub	r3, r6, #2
	ldrh	r0, [r2, r3]
	mov	r3, #1
	mov	r2, r8
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #7
	add	r3, r2
	lsl	r3, #1
	ldr	r2, [r7]
	add	r0, r3
	lsr	r3, r4, #1
	add	r1, r0
	sub	r2, r3
	mov	r0, #0xc8
	ldr	r3, [r7, #4]
	lsl	r0, #6
	sub	r3, r4
	add	r1, r0
	str	r4, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x48]
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	ldr	r3, [r7, #4]
	mov	r0, #0xa
	sub	r3, r5
	sub	r3, #8
	neg	r0, r0
	str	r3, [r7, #4]
	cmp	r3, r0
	bge	.Le800a
	mov	r3, #0x80
	str	r3, [r7, #4]
.Le800a:
	mov	r2, #1
	add	r8, r2
	mov	r1, #0x1c
	mov	r3, r8
	add	r10, r1
	cmp	r3, #0x40
	bne	.Le7fa8
	mov	r4, #0
	mov	r0, #0xff
	ldr	r7, =ewram_10000
	mov	r8, r4
	mov	r10, r4
	mov	r9, r0
.Le8024:
	mov	r1, #3
	mov	r0, r8
	bl	Func_af0_from_thumb
	ldr	r1, [sp, #0x24]
	cmp	r0, r1
	bge	.Le80bc
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.Le80bc
	add	r5, sp, #0x60
	mov	r0, r7
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r6, r3, #1
	str	r6, [r5]
	ldr	r2, [r7, #0x18]
	cmp	r2, #0xd
	bhi	.Le807a
	lsr	r3, r2, #31
	add	r3, r2, r3
	ldr	r4, [sp, #0x3c]
	ldr	r2, =.Leeebc
	asr	r3, #1
	lsl	r3, #1
	ldrh	r2, [r2, r3]
	ldr	r1, [r4]
	add	r1, r2
	ldr	r2, =.Leeeca
	ldrh	r4, [r2, r3]
	ldr	r3, [r5, #4]
	lsr	r0, r4, #1
	sub	r2, r6, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x48]
	ldr	r4, [sp, #0x44]
	bl	_call_via_r4
	ldr	r2, [r7, #0x18]
.Le807a:
	add	r3, r2, #1
	str	r3, [r7, #0x18]
	cmp	r3, #0xe
	bne	.Le80b2
	mov	r3, #0xa0
	lsl	r3, #13
	mov	r0, r10
	str	r3, [r7, #4]
	str	r0, [r7]
	bl	Func_4458
	mov	r1, r9
	and	r0, r1
	sub	r0, #0x7f
	lsl	r0, #16
	mov	r2, r10
	str	r0, [r7, #8]
	str	r2, [r7, #0xc]
	bl	Func_4458
	mov	r3, r9
	and	r0, r3
	mov	r4, r10
	lsl	r0, #11
	str	r0, [r7, #0x10]
	str	r4, [r7, #0x14]
	str	r4, [r7, #0x18]
	b	.Le80bc
.Le80b2:
	mov	r0, r7
	mov	r1, #0x40
	mov	r2, #1
	bl	Func_e38b8
.Le80bc:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r7, #0x1c
	cmp	r1, #0x40
	bne	.Le8024
	ldr	r2, [sp, #0x40]
	cmp	r2, #1
	bne	.Le8110
	mov	r4, r11
	lsr	r3, r4, #31
	add	r3, r11
	asr	r3, #1
	mov	r1, r3
	add	r1, #0x18
	b	.Le811c

	.pool_aligned

.Le8110:
	mov	r0, r11
	lsr	r3, r0, #31
	add	r3, r11
	asr	r3, #1
	mov	r2, #0x38
	sub	r1, r2, r3
.Le811c:
	mov	r3, r11
	lsl	r2, r3, #1
	mov	r4, r11
	mov	r3, #0x40
	sub	r0, r3, r2
	lsl	r3, r4, #8
	mov	r4, #0x80
	lsl	r4, #10
	add	r2, r3, r4
	ldr	r4, [sp, #0x18]
	mov	r3, #0
	str	r3, [r4, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r4, #4]
	ldr	r3, [sp, #0x4c]
	cmp	r3, #1
	bne	.Le8186
	ldr	r4, [sp, #0x14]
	ldr	r2, [sp, #0x1c]
	str	r4, [sp, #0x50]
	str	r4, [r2, #4]
	mov	r4, #0xc0
	lsl	r3, r1, #16
	lsl	r4, #15
	ldr	r1, [sp, #0x18]
	add	r3, r4
	str	r3, [r1]
	mov	r3, #0x60
	sub	r3, r0
	lsl	r3, #16
	str	r3, [r1, #8]
	ldr	r2, [sp, #0x20]
	ldr	r4, =0x77d8
	ldr	r3, [r2]
	add	r3, r4
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r3, #0
	bl	_Func_b168
	ldr	r0, [sp, #0x20]
	ldr	r1, =0x77dc
	ldr	r3, [r0]
	add	r3, r1
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r3, #0
	bl	_Func_b168
	b	.Le81b4
.Le8186:
	ldr	r3, [sp, #0x1c]
	str	r2, [sp, #0x50]
	mov	r4, #0xc0
	str	r2, [r3, #4]
	lsl	r4, #15
	lsl	r3, r1, #16
	ldr	r1, [sp, #0x18]
	add	r3, r4
	str	r3, [r1]
	mov	r3, #0x60
	sub	r3, r0
	lsl	r3, #16
	str	r3, [r1, #8]
	ldr	r2, [sp, #0x3c]
	ldr	r4, =0x77d8
	ldr	r3, [r2]
	add	r3, r4
	ldr	r0, [r3]
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	mov	r3, #0
	bl	_Func_b168
.Le81b4:
	ldr	r0, [sp, #0x20]
	ldr	r1, =0x77a8
	ldr	r3, [r0]
	mov	r2, #1
	add	r3, r1
	str	r2, [r3]
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	ldr	r4, [sp, #0x20]
	ldr	r0, =0x7824
	ldr	r3, [r4]
	mov	r1, #1
	add	r3, r0
	str	r1, [r3]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0x80
	ldr	r2, [sp, #0x14]
	mov	r4, #1
	lsl	r3, #1
	add	r11, r4
	add	r2, r3
	mov	r0, r11
	str	r2, [sp, #0x14]
	cmp	r0, #0x36
	beq	.Le81f0
	b	.Le7e5c
.Le81f0:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r1, [sp, #0x4c]
	cmp	r1, #0
	bne	.Le8210
	ldr	r2, [sp, #0x3c]
	ldr	r4, =0x77d8
	ldr	r3, [r2]
	add	r3, r4
	ldr	r0, [r3]
	bl	_Func_bdd4
.Le8210:
	bl	Func_cdbc0
	add	sp, #0x11c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e7404

.thumb_func_start Func_e823c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ef0
	ldr	r1, [r3]
	sub	sp, #0x54
	str	r1, [sp, #0x30]
	sub	r2, r3, #4
	ldr	r2, [r2]
	str	r2, [sp, #0x2c]
	ldr	r3, [r3, #4]
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	add	r5, r2, r3
	str	r0, [r5]
	mov	r0, #0
	bl	Func_cd594
	bl	Func_c9048
	ldr	r2, .Le82ac	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r6, [sp, #0x2c]
	mov	r7, #0xef
	lsl	r7, #7
	add	r2, r6, r7
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r1, #0
	mov	r0, #1
	bl	Func_cd104
	ldr	r0, [r5]
	bl	Func_d6750
	ldr	r1, =0x17b
	mov	r0, #9
	mov	r2, #2
	bl	Func_dbb24
	mov	r1, #0xd
	b	.Le82c0

	.align	2, 0
.Le82ac:
	.word	0
	.pool

.Le82c0:
	mov	r0, #0
	neg	r1, r1
	ldr	r6, =0x77fc
	mov	r8, r0
	mov	r7, r1
.Le82ca:
	mov	r0, #0xc3
	lsl	r0, #1
	bl	_Func_bc70
	ldr	r2, [sp, #0x2c]
	mov	r5, r0
	str	r5, [r6, r2]
	cmp	r5, #0
	beq	.Le8302
	mov	r2, r5
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #3
	mov	r0, r8
	bl	Func_b1c_from_thumb
	mov	r1, r0
	mov	r0, r5
	bl	_Func_ba30
	ldr	r3, [sp, #0x2c]
	ldr	r1, [r6, r3]
	ldrb	r3, [r1, #9]
	mov	r2, #4
	and	r3, r7
	orr	r3, r2
	strb	r3, [r1, #9]
.Le8302:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #4
	cmp	r1, #6
	bne	.Le82ca
	mov	r6, #2
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
	str	r3, [sp, #0x3c]
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	str	r3, [sp]
	bl	Func_ed408
	add	r5, #0xbc
	mov	r2, sp
	ldr	r3, [r5]
	add	r2, #0x3c
	str	r2, [sp, #0x10]
	str	r3, [r2, #4]
	ldr	r2, =REG_WININ
	ldr	r3, .Le8380	@ 0x2737
	strh	r3, [r2]
	ldr	r3, .Le8384	@ 0xf0
	sub	r2, #8
	strh	r3, [r2]
	ldr	r3, .Le8388	@ 0x1088
	add	r2, #6
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0
	ldr	r1, =0x3c
	mov	r0, #1
	bl	_Func_c08ec
	mov	r0, #1
	mov	r1, #1
	bl	Func_cd104
	ldr	r0, =0x73
	ldr	r1, [sp, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0xc0
	ldr	r1, [sp, #0x2c]
	b	.Le83a4

	.align	2, 0
.Le8380:
	.word	0x2737
.Le8384:
	.word	0xf0
.Le8388:
	.word	0x1088
	.pool

.Le83a4:
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r3, =0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, =0x80
	add	r2, #0x20
	strh	r3, [r2]
	ldr	r3, =0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r3, =0x3f44
	sub	r2, #2
	strh	r3, [r2]
	ldr	r7, [sp, #0x2c]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r3, r7, r0
	str	r6, [r3]
	add	r2, r7, r1
	mov	r3, #0x32
	str	r3, [r2]
	mov	r2, #0xbc
	mov	r3, #0xb8
	lsl	r3, #15
	lsl	r2, #16
	mov	r6, #0xa0
	b	.Le83f8

	.pool_aligned

.Le83f8:
	ldr	r0, [sp, #0x2c]
	mov	r1, #0xe1
	lsl	r6, #16
	mov	r7, #0
	lsl	r1, #7
	str	r2, [sp, #0x1c]
	str	r3, [sp, #0x20]
	str	r3, [sp, #0x18]
	str	r6, [sp, #0x14]
	mov	r8, r7
	mov	r6, #0
	add	r5, r0, r1
.Le8410:
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	lsl	r3, #16
	str	r3, [r5]
	mov	r3, #1
	ldr	r2, =0xfff00000
	add	r8, r3
	mov	r0, r8
	str	r7, [r5, #4]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x18]
	add	r7, r2
	add	r5, #0x1c
	cmp	r0, #6
	bne	.Le8410
	ldr	r6, [sp, #0x2c]
	ldr	r7, =0x7140
	mov	r1, #0
	mov	r8, r1
	mov	r2, #0x18
	add	r3, r6, r7
.Le8440:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r1, #0x3a
	bne	.Le8440
	mov	r2, #0
	mov	r8, r2
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	neg	r1, r1
	lsl	r2, #3
.Le845c:
	mov	r6, #1
	add	r8, r6
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Le845c
	ldr	r7, [sp, #0x2c]
	ldr	r0, =0x77b4
	ldr	r1, =0x77b8
	add	r2, r7, r0
	mov	r3, #0x18
	str	r3, [r2]
	mov	r3, #0
	add	r2, r7, r1
	str	r3, [r2]
	str	r3, [sp, #0x28]
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Le848a
	b	.Le8968
.Le848a:
	mov	r2, sp
	mov	r3, sp
	add	r2, #0x44
	add	r3, #0x34
	str	r2, [sp, #8]
	str	r3, [sp, #0xc]
.Le8496:
	ldr	r6, [sp, #0x28]
	cmp	r6, #0x5e
	bne	.Le84a2
	mov	r0, #0x9c
	bl	_Func_f9080
.Le84a2:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x88
	bne	.Le84ae
	mov	r0, #0x9c
	bl	_Func_f9080
.Le84ae:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0xb2
	bne	.Le84ba
	mov	r0, #0x9c
	bl	_Func_f9080
.Le84ba:
	mov	r2, #0x82
	ldr	r1, [sp, #0x28]
	lsl	r2, #1
	cmp	r1, r2
	bne	.Le84ca
	mov	r0, #0x91
	bl	_Func_f9080
.Le84ca:
	ldr	r3, =Data_edac8
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	str	r3, [sp, #0x34]
	str	r4, [sp, #0x38]
	ldr	r3, [sp, #0x28]
	sub	r3, #0x60
	cmp	r3, #0x9b
	bhi	.Le84e4
	ldr	r3, [sp, #0x2c]
	ldr	r6, =0x77a8
	add	r2, r3, r6
	b	.Le84f4
.Le84e4:
	ldr	r7, [sp, #0x28]
	ldr	r0, =0xfffffefc
	add	r3, r7, r0
	cmp	r3, #3
	bhi	.Le84f8
	ldr	r1, [sp, #0x2c]
	ldr	r3, =0x77a8
	add	r2, r1, r3
.Le84f4:
	mov	r3, #1
	str	r3, [r2]
.Le84f8:
	mov	r3, #0
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x77d8
	str	r3, [sp, #0x50]
	str	r3, [sp, #0x48]
	ldr	r5, [sp, #8]
	ldr	r7, =0xffe00000
	mov	r8, r3
	add	r6, r0, r1
.Le850a:
	ldr	r3, =.Leeed8
	mov	r2, r8
	ldrb	r3, [r3, r2]
	ldr	r0, [sp, #0x1c]
	lsl	r3, #16
	add	r3, r0
	add	r3, r7
	str	r3, [r5]
	ldr	r3, =.Leeee1
	ldrb	r3, [r3, r2]
	ldr	r1, [sp, #0x20]
	lsl	r3, #16
	add	r3, r1
	add	r3, r7
	str	r3, [r5, #8]
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	ldmia	r6!, {r0}
	mov	r1, r5
	bl	_Func_b168
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #7
	bne	.Le850a
	ldr	r6, [sp, #0x28]
	cmp	r6, #0x5a
	bgt	.Le8566
	lsl	r5, r6, #9
	mov	r0, r5
	bl	Func_2322
	mov	r7, #0x9c
	lsl	r0, #4
	lsl	r7, #16
	add	r7, r0, r7
	mov	r0, r5
	str	r7, [sp, #0x14]
	bl	Func_231c
	mov	r1, #0xb8
	lsl	r0, #4
	lsl	r1, #15
	add	r1, r0, r1
	str	r1, [sp, #0x18]
.Le8566:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0xc4
	bgt	.Le8600
	ldr	r7, [sp, #0x2c]
	mov	r3, #0
	mov	r8, r3
	mov	r6, #0x5b
	mov	r10, r7
.Le8576:
	ldr	r0, [sp, #0x28]
	cmp	r0, r6
	blt	.Le858c
	add	r3, r6, #4
	cmp	r0, r3
	bge	.Le858c
	ldr	r1, [sp, #0x18]
	mov	r2, #0x80
	lsl	r2, #12
	add	r2, r1, r2
	str	r2, [sp, #0x18]
.Le858c:
	ldr	r7, [sp, #0x28]
	add	r3, r6, #3
	cmp	r7, r3
	bne	.Le85d8
	ldr	r5, =0x7128
	mov	r0, #0xff
	mov	r7, #0
	mov	r9, r0
	add	r5, r10
.Le859e:
	mov	r3, #0x80
	lsl	r3, #15
	str	r3, [r5]
	mov	r3, #0xc0
	lsl	r3, #15
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r1, r9
	and	r0, r1
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r2, r9
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #4
	bne	.Le859e
.Le85d8:
	mov	r3, r6
	ldr	r7, [sp, #0x28]
	add	r3, #0x14
	cmp	r7, r3
	blt	.Le85f0
	add	r3, #0x10
	cmp	r7, r3
	bge	.Le85f0
	ldr	r0, [sp, #0x18]
	ldr	r1, =0xfffe0000
	add	r1, r0, r1
	str	r1, [sp, #0x18]
.Le85f0:
	mov	r3, #1
	add	r8, r3
	mov	r2, #0xe0
	mov	r7, r8
	add	r6, #0x28
	add	r10, r2
	cmp	r7, #3
	bne	.Le8576
.Le8600:
	ldr	r3, [sp, #0x28]
	sub	r3, #0xf4
	cmp	r3, #7
	bhi	.Le8610
	ldr	r0, [sp, #0x14]
	ldr	r1, =0xffff0000
	add	r1, r0, r1
	str	r1, [sp, #0x14]
.Le8610:
	ldr	r3, [sp, #0x28]
	sub	r3, #0xfc
	cmp	r3, #0x17
	bhi	.Le8624
	ldr	r3, [sp, #0x28]
	ldr	r2, [sp, #0x14]
	sub	r3, #0xfa
	lsl	r3, #16
	sub	r3, r2, r3
	str	r3, [sp, #0x14]
.Le8624:
	ldr	r3, [sp, #0x28]
	ldr	r6, =0x103
	cmp	r3, r6
	bgt	.Le866e
	ldr	r0, [sp, #0x18]
	mov	r3, #0xff
	ldr	r1, [sp, #0x2c]
	lsl	r3, #24
	ldr	r2, =0x77f4
	str	r3, [sp, #0x48]
	add	r3, r0, r3
	str	r3, [sp, #0x4c]
	add	r3, r1, r2
	ldr	r7, [sp, #0x14]
	ldr	r0, [r3]
	add	r3, sp, #0x44
	mov	r1, r3
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	str	r7, [sp, #0x44]
	bl	_Func_b168
	mov	r7, #0x80
	ldr	r6, [sp, #0x14]
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x77f8
	lsl	r7, #14
	add	r3, r6, r7
	add	r2, sp, #0x44
	str	r3, [sp, #0x44]
	add	r3, r0, r1
	ldr	r0, [r3]
	mov	r1, r2
	mov	r3, #0
	ldr	r2, [sp, #0xc]
	bl	_Func_b168
.Le866e:
	ldr	r6, [sp, #8]
	mov	r3, #0
	str	r3, [r6, #4]
	ldr	r7, [sp, #0x2c]
	mov	r0, #0xe1
	lsl	r0, #7
	mov	r8, r3
	mov	r11, r6
	add	r5, r7, r0
	mov	r9, r7
.Le8682:
	ldr	r3, [r5, #0x18]
	cmp	r3, #2
	bne	.Le868a
	b	.Le8796
.Le868a:
	ldr	r3, [r5]
	mov	r1, r11
	str	r3, [r1]
	ldr	r3, [r5, #4]
	mov	r2, r8
	str	r3, [r1, #8]
	ldr	r6, =0x77fc
	lsl	r3, r2, #2
	ldr	r7, [sp, #0x2c]
	add	r3, r6
	ldr	r0, [r7, r3]
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	bl	_Func_b168
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x60
	ble	.Le86c6
	mov	r1, #0x80
	lsl	r1, #7
	add	r3, r2, r1
	str	r3, [r5, #0x10]
.Le86c6:
	mov	r2, #0xf0
	ldr	r3, [r5, #4]
	lsl	r2, #15
	cmp	r3, r2
	ble	.Le8796
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #1
	bne	.Le8788
	ldr	r3, [r5, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	ldr	r6, =0x73c8
	str	r3, [r5, #0x10]
	mov	r3, #0xff
	mov	r7, #0
	mov	r10, r3
	add	r6, r9
.Le86f0:
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6]
	ldr	r0, =0xffe00000
	ldr	r3, [r5, #4]
	add	r3, r0
	str	r3, [r6, #4]
	bl	Func_4458
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r6, #0xc]
	bl	Func_4458
	mov	r2, r10
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #10
	str	r0, [r6, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r7, #1
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r7, #2
	bne	.Le86f0
	b	.Le8796

	.pool_aligned

.Le8788:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0xc7
	bgt	.Le8796
	mov	r3, #0
	str	r3, [r5, #4]
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x18]
.Le8796:
	mov	r7, #1
	add	r8, r7
	mov	r6, #0x38
	mov	r0, r8
	add	r5, #0x1c
	add	r9, r6
	cmp	r0, #6
	beq	.Le87a8
	b	.Le8682
.Le87a8:
	ldr	r2, [sp, #0x2c]
	ldr	r3, =0x7128
	mov	r1, #0
	mov	r8, r1
	add	r5, r2, r3
.Le87b2:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0
	blt	.Le87fc
	cmp	r0, #0x17
	bhi	.Le87ec
	mov	r1, #6
	bl	Func_af0_from_thumb
	ldr	r3, =.Leeeea
	add	r0, #3
	lsl	r0, #1
	ldrh	r1, [r3, r0]
	ldr	r3, =.Leeef8
	ldr	r6, [sp, #0x2c]
	ldrh	r4, [r3, r0]
	mov	r7, #2
	ldrsh	r2, [r5, r7]
	add	r1, r6, r1
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	lsr	r0, r4, #1
	sub	r2, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x3c]
	bl	_call_via_r4
.Le87ec:
	mov	r0, r5
	mov	r1, #0x3c
	ldr	r2, =0xffffc000
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
.Le87fc:
	mov	r7, #1
	add	r8, r7
	mov	r0, r8
	add	r5, #0x1c
	cmp	r0, #0x38
	bne	.Le87b2
	mov	r2, #0x82
	ldr	r1, [sp, #0x28]
	lsl	r2, #1
	cmp	r1, r2
	bne	.Le88c8
	mov	r3, #0
	mov	r8, r3
	ldr	r6, [sp, #0x2c]
	ldr	r3, =0x7828
	ldr	r3, [r6, r3]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Le8854
	ldr	r7, =0x7828
	add	r5, r6, r7
	mov	r6, #0x24
.Le8828:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r1, #4
	bl	_Func_b8228
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r8
	neg	r2, r2
	bl	Func_d6888
	mov	r3, #1
	add	r8, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	cmp	r8, r3
	bne	.Le8828
.Le8854:
	ldr	r6, [sp, #0x2c]
	ldr	r7, =0x77a8
	mov	r3, #8
	add	r2, r6, r7
	str	r3, [r2]
	mov	r1, #0x82
	ldr	r0, [sp, #0x28]
	lsl	r1, #1
	cmp	r0, r1
	bne	.Le88c8
	mov	r2, #0
	ldr	r7, =ewram_10000
	mov	r8, r2
.Le886e:
	bl	Func_4458
	ldr	r5, =0x3ff
	and	r5, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r7]
	mov	r3, #0xb8
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x20
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	mov	r6, #0x80
	mov	r3, #1
	add	r8, r3
	lsl	r6, #2
	add	r7, #0x1c
	cmp	r8, r6
	bne	.Le886e
.Le88c8:
	ldr	r0, =Data_ede48
	mov	r7, #0
	ldr	r6, =ewram_10000
	mov	r8, r7
	mov	r10, r0
.Le88d2:
	ldr	r0, [r6, #0x18]
	cmp	r0, #0
	blt	.Le8922
	asr	r0, #3
	add	r0, #1
	lsl	r5, r0, #1
	mov	r1, r8
	sub	r3, r5, #2
	mov	r2, r10
	mov	r4, #1
	and	r4, r1
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x24]
	add	r1, r3, r1
	lsr	r3, r0, #31
	mov	r7, #2
	ldrsh	r2, [r6, r7]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r6, r7]
	str	r0, [sp]
	sub	r3, r0
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x10]
	lsl	r4, #2
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x3e
	lsl	r2, #5
	bl	Func_e3908
	ldr	r3, [r6, #0x18]
	sub	r3, #1
	str	r3, [r6, #0x18]
.Le8922:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #2
	add	r6, #0x1c
	cmp	r8, r2
	bne	.Le88d2
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r6, =0x7824
	ldr	r3, [sp, #0x2c]
	add	r2, r3, r6
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	ldr	r7, [sp, #0x28]
	mov	r0, #0xa0
	add	r7, #1
	lsl	r0, #1
	str	r7, [sp, #0x28]
	cmp	r7, r0
	beq	.Le8968
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Le8968
	b	.Le8496
.Le8968:
	mov	r0, #0x86
	bl	_Func_bd7dc
	bl	Func_d67dc
	ldr	r3, =0x77d8
	ldr	r2, [sp, #0x2c]
	mov	r1, #0
	mov	r8, r1
	add	r5, r2, r3
.Le897c:
	mov	r6, #1
	add	r8, r6
	ldmia	r5!, {r0}
	mov	r7, r8
	bl	_Func_bdd4
	cmp	r7, #0xf
	bne	.Le897c
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x54
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e823c

.thumb_func_start Func_e89ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1eec
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0xe4
	str	r3, [sp, #0x2c]
	mov	r3, #0
	str	r3, [sp, #0x24]
	str	r3, [sp, #0x1c]
	str	r3, [sp, #0x18]
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r2, #8]
	add	r3, r9
	str	r2, [sp, #0x14]
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le8a54	@ 0x1010
	ldr	r0, =0xc2
	strh	r3, [r2]
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r5, #0xea
	ldr	r0, =0xfffff1f0
	mov	r1, #0xb4
	lsl	r5, #2
	lsl	r1, #5
	mov	r2, r9
	mov	r7, #1
	mov	r14, r0
	mov	r12, r1
	add	r4, r2, r5
.Le8a46:
	mov	r3, r14
	mov	r2, r9
	mov	r6, #0
	lsl	r0, r7, #2
	add	r1, r4, r3
	add	r2, r12
	b	.Le8a6c

	.align	2, 0
.Le8a54:
	.word	0x1010
	.pool

.Le8a6c:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r7, #0xa
	ble	.Le8a80
	sub	r3, r0
	add	r3, #0x28
	cmp	r3, #0
	bge	.Le8a7e
	mov	r3, #0
.Le8a7e:
	strb	r3, [r1]
.Le8a80:
	add	r6, #1
	add	r1, #1
	cmp	r6, r5
	bne	.Le8a6c
	mov	r0, #0xea
	lsl	r0, #2
	add	r7, #1
	add	r4, r0
	cmp	r7, #0x14
	bne	.Le8a46
	ldr	r1, [sp, #0x14]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	mov	r1, #0xf0
	lsl	r1, #6
	ldr	r0, =0xb4
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #1
	ldr	r0, =0x7d
	ldr	r1, =ewram_10000
	mov	r3, #0
	bl	Func_e0524
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x30
	str	r1, [sp, #0x10]
	bl	Func_cef64
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	ldr	r5, =0x7160
	mov	r6, #0
	mov	r7, #0x3f
	add	r5, r9
.Le8af2:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le8b02
	ldr	r3, =0xffc80000
	b	.Le8b06
.Le8b02:
	mov	r3, #0xe0
	lsl	r3, #14
.Le8b06:
	str	r3, [r5]
	mov	r3, #0
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #13
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #14
	mov	r3, #1
	add	r6, #1
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r6, #0x28
	bne	.Le8af2
	ldr	r5, =0x75c0
	mov	r6, #0
	mov	r8, r6
	mov	r7, #0x3f
	add	r5, r9
.Le8b46:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le8b56
	ldr	r3, =0xffc80000
	b	.Le8b5a
.Le8b56:
	mov	r3, #0xe0
	lsl	r3, #14
.Le8b5a:
	str	r3, [r5]
	mov	r3, #0xa0
	lsl	r3, #13
	mov	r2, r8
	str	r3, [r5, #4]
	str	r2, [r5, #8]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #12
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #14
	mov	r3, r8
	add	r6, #1
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r6, #0x10
	bne	.Le8b46
	mov	r5, #0xe1
	lsl	r5, #7
	ldr	r6, =0xffffc000
	mov	r7, #0
	add	r5, r9
.Le8b9e:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le8bbc
	mov	r0, r6
	bl	Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	add	r3, #0x58
	b	.Le8bce
.Le8bbc:
	mov	r0, r6
	bl	Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	neg	r3, r3
	asr	r3, #16
	add	r3, #0x10
.Le8bce:
	str	r3, [r5]
	mov	r0, r6
	bl	Func_231c
	lsl	r0, #4
	asr	r0, #16
	add	r0, #0x28
	str	r0, [r5, #4]
	lsl	r3, r7, #1
	mov	r0, #0x80
	neg	r3, r3
	lsl	r0, #5
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r6, r0
	add	r5, #0x1c
	cmp	r7, #8
	bne	.Le8b9e
	ldr	r0, =0xd3
	bl	Func_2f40
	ldr	r2, =0x7828
	mov	r1, #0
	add	r2, r9
	str	r0, [sp, #0x20]
	str	r1, [sp, #0x28]
	str	r2, [sp, #0xc]
.Le8c04:
	ldr	r3, =iwram_1e80
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x53
	bne	.Le8c16
	mov	r0, #0x86
	bl	_Func_bd7dc
.Le8c16:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0
	bne	.Le8c22
	mov	r0, #0x88
	bl	_Func_f9080
.Le8c22:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x32
	bne	.Le8c2e
	mov	r0, #0x88
	bl	_Func_f9080
.Le8c2e:
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le8c4a
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x3f
	bgt	.Le8c5e
	mov	r0, r11
	ldrh	r3, [r0, #0x36]
	ldr	r1, =0xffffff00
	mov	r2, r11
	add	r3, r1
	b	.Le8c5c
.Le8c4a:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x3f
	bgt	.Le8c5e
	mov	r0, r11
	ldrh	r3, [r0, #0x36]
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r1
	mov	r2, r11
.Le8c5c:
	strh	r3, [r2, #0x36]
.Le8c5e:
	mov	r3, #0x64
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	_Func_c0cec
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x11
	bgt	.Le8cce
	mov	r0, r3
	mov	r1, #3
	bl	Func_af0_from_thumb
	ldr	r2, =Data_edeb2
	mov	r5, r0
	lsl	r0, r5, #1
	ldrh	r1, [r2, r0]
	mov	r10, r0
	mov	r3, #0xf0
	ldr	r0, =Data_edeab
	lsl	r3, #6
	mov	r8, r3
	ldrb	r3, [r0, r5]
	ldr	r0, =Data_ede9f
	ldrb	r2, [r0, r5]
	ldr	r6, =Data_edea5
	str	r2, [sp]
	ldrb	r2, [r6, r5]
	add	r1, r9
	add	r1, r8
	add	r3, #0x3c
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x30]
	mov	r2, #0x30
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r2, =Data_edeb2
	ldr	r0, =Data_edeab
	mov	r3, r10
	ldrh	r1, [r2, r3]
	ldrb	r3, [r0, r5]
	ldr	r0, =Data_ede9f
	ldrb	r2, [r0, r5]
	str	r2, [sp]
	ldrb	r2, [r6, r5]
	str	r2, [sp, #4]
	ldr	r2, [sp, #0x10]
	add	r1, r9
	ldr	r4, [r2, #4]
	add	r1, r8
	add	r3, #0x3c
	ldr	r0, [sp, #0x2c]
	mov	r2, #0x38
	bl	_call_via_r4
.Le8cce:
	ldr	r3, [sp, #0x28]
	sub	r3, #0x12
	str	r3, [sp, #8]
	cmp	r3, #0x28
	bhi	.Le8d1a
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x12
	bne	.Le8d00
	ldr	r1, [sp, #0x20]
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1, #1]
	lsl	r3, #8
	add	r3, r2
	str	r3, [sp, #0x1c]
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1, #3]
	lsl	r3, #8
	add	r3, r2
	add	r3, #0x10
	add	r1, #4
	str	r3, [sp, #0x18]
	str	r1, [sp, #0x20]
	b	.Le8d1a
.Le8d00:
	ldr	r2, [sp, #0x20]
	ldr	r0, [sp, #0x1c]
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	add	r0, r3
	str	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x18]
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	add	r2, #2
	add	r1, r3
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x20]
.Le8d1a:
	ldr	r3, [sp, #0x28]
	sub	r3, #0x4e
	cmp	r3, #0x28
	bhi	.Le8d3a
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x4e
	bne	.Le8d34
	mov	r3, #0x38
	neg	r3, r3
	mov	r0, #0x30
	str	r3, [sp, #0x1c]
	str	r0, [sp, #0x18]
	b	.Le8d3a
.Le8d34:
	ldr	r1, [sp, #0x18]
	sub	r1, #0x10
	str	r1, [sp, #0x18]
.Le8d3a:
	mov	r2, #0x18
	mov	r3, #0x27
	mov	r6, #0x13
	mov	r10, r2
	mov	r8, r3
	mov	r7, #0x9c
.Le8d46:
	mov	r3, r6
	ldr	r0, [sp, #0x28]
	add	r3, #0x12
	cmp	r0, r3
	ble	.Le8daa
	add	r3, #0x41
	cmp	r0, r3
	bgt	.Le8daa
	lsl	r0, r6, #3
	mov	r3, r0
	add	r2, sp, #0x44
	sub	r3, #8
	ldr	r3, [r2, r3]
	str	r3, [r2, r0]
	sub	r3, r0, #4
	ldr	r5, [r2, r3]
	str	r5, [r2, r7]
	cmp	r6, #0xa
	ble	.Le8d90
	mov	r3, #0xea
	lsl	r3, #2
	mov	r1, r6
	mul	r1, r3
	ldr	r3, =0xfffff1f0
	add	r1, r9
	ldr	r2, [r2, r0]
	add	r1, r3
	mov	r0, r10
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	mov	r3, r5
	bl	_call_via_r4
	b	.Le8daa
.Le8d90:
	mov	r1, r8
	ldr	r2, [r2, r0]
	str	r1, [sp, #4]
	mov	r1, #0xb4
	mov	r0, r10
	lsl	r1, #5
	str	r0, [sp]
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	add	r1, r9
	mov	r3, r5
	bl	_call_via_r4
.Le8daa:
	sub	r6, #1
	sub	r7, #8
	cmp	r6, #0
	bne	.Le8d46
	bl	Func_49ac
	mov	r1, r11
	add	r1, #0xc
	mov	r0, r11
	bl	Func_51d8
	ldr	r2, [sp, #8]
	cmp	r2, #0x41
	bhi	.Le8eb4
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le8e2c
	ldr	r3, [sp, #0x1c]
	lsr	r2, r3, #31
	add	r2, r3, r2
	asr	r2, #1
	mov	r3, #0x40
	add	r1, sp, #0x38
	sub	r3, r2
	b	.Le8e38

	.pool_aligned

.Le8e2c:
	ldr	r0, [sp, #0x1c]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	add	r1, sp, #0x38
	add	r3, #0x40
.Le8e38:
	str	r3, [r1]
	ldr	r2, [sp, #0x18]
	mov	r3, #0x3c
	sub	r3, r2
	str	r3, [r1, #4]
	add	r4, sp, #0x44
	ldr	r2, [r4, #4]
	sub	r3, r2
	sub	r3, #0x18
	lsr	r2, r3, #31
	add	r3, r2
	asr	r0, r3, #1
	cmp	r0, #2
	ble	.Le8e56
	mov	r0, #2
.Le8e56:
	mov	r3, #2
	neg	r3, r3
	cmp	r0, r3
	bge	.Le8e62
	mov	r0, #2
	neg	r0, r0
.Le8e62:
	ldr	r2, [sp, #0x24]
	add	r2, r0
	str	r2, [sp, #0x24]
	cmp	r2, #8
	ble	.Le8e70
	mov	r3, #8
	str	r3, [sp, #0x24]
.Le8e70:
	mov	r2, #8
	ldr	r0, [sp, #0x24]
	neg	r2, r2
	cmp	r0, r2
	bge	.Le8e7c
	str	r2, [sp, #0x24]
.Le8e7c:
	ldr	r3, [sp, #0x24]
	cmp	r3, #0
	bge	.Le8e84
	add	r3, #3
.Le8e84:
	ldr	r2, [r1]
	asr	r3, #2
	add	r0, r3, #2
	mov	r3, r2
	sub	r3, #0xc
	str	r3, [r4]
	ldr	r3, [r1, #4]
	mov	r1, r3
	sub	r1, #0x14
	str	r1, [r4, #4]
	lsl	r1, r0, #3
	add	r1, r0
	mov	r0, #0x18
	lsl	r1, #7
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	add	r1, r9
	sub	r2, #0x12
	sub	r3, #0x16
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Le8eb4:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x53
	bne	.Le8ee4
	ldr	r3, =0x77a8
	mov	r2, #8
	add	r3, r9
	str	r2, [r3]
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #7
	str	r2, [sp]
	mov	r3, #0
	mov	r2, #5
	bl	Func_d6888
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_b8228
.Le8ee4:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x53
	ble	.Le8fac
	ldr	r6, =0x7160
	mov	r7, #0
	add	r6, r9
.Le8ef0:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	blt	.Le8fa4
	add	r5, sp, #0x38
	mov	r0, r6
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r5, #8]
	cmp	r3, #0x9f
	bgt	.Le8f10
	mov	r3, #0xa0
	str	r3, [r5, #8]
.Le8f10:
	ldr	r2, =0x31f
	cmp	r3, r2
	ble	.Le8f1a
	str	r2, [r5, #8]
	mov	r3, r2
.Le8f1a:
	mov	r2, r3
	sub	r2, #0xa0
	cmp	r2, #0
	bge	.Le8f24
	add	r2, #0x3f
.Le8f24:
	asr	r2, #6
	mov	r3, #9
	sub	r4, r3, r2
	cmp	r7, #0x2f
	ble	.Le8f60
	ldr	r3, [r6, #0x18]
	cmp	r3, #0xb
	bgt	.Le8f86
	lsr	r1, r3, #31
	add	r1, r3, r1
	asr	r1, #1
	ldr	r3, =ewram_10000
	lsl	r1, #11
	ldr	r2, [r5]
	add	r1, r3
	mov	r0, #0x20
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x40
	sub	r3, #0x20
	str	r0, [sp, #4]
	sub	r2, #0x10
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
	add	r3, #1
	str	r3, [r6, #0x18]
	b	.Le8f86
.Le8f60:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x14]
	lsr	r3, r4, #31
	add	r3, r4, r3
	add	r1, r2, r1
	ldr	r2, [r5]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r4, [sp]
	sub	r3, r4
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Le8f86:
	ldr	r3, [r6]
	ldr	r2, [r6, #0xc]
	add	r3, r2
	ldr	r1, [r6, #0x10]
	str	r3, [r6]
	ldr	r3, [r6, #4]
	add	r3, r1
	str	r3, [r6, #4]
	ldr	r2, [r6, #0x14]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
	ldr	r3, =0xffffe000
	add	r1, r3
	str	r1, [r6, #0x10]
.Le8fa4:
	add	r7, #1
	add	r6, #0x1c
	cmp	r7, #0x38
	bne	.Le8ef0
.Le8fac:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x32
	bne	.Le8fd0
	ldr	r2, =0x77a8
	mov	r3, #0xc
	add	r2, r9
	str	r3, [r2]
	ldr	r1, [sp, #0xc]
	ldr	r3, [r1]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
.Le8fd0:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x31
	ble	.Le902a
	mov	r6, #0xe1
	lsl	r6, #7
	mov	r7, #0
	add	r6, r9
.Le8fde:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0xb
	bhi	.Le901e
	lsr	r4, r3, #31
	add	r4, r3, r4
	asr	r4, #1
	ldr	r0, =Data_edeb2
	lsl	r3, r4, #1
	ldrh	r1, [r0, r3]
	ldr	r3, =Data_ede9f
	mov	r2, #0xf0
	ldrb	r5, [r3, r4]
	lsl	r2, #6
	add	r1, r9
	add	r1, r2
	ldr	r2, [r6]
	lsr	r3, r5, #1
	sub	r2, r3
	ldr	r3, =Data_edeab
	ldrb	r0, [r3, r4]
	ldr	r3, [r6, #4]
	str	r5, [sp]
	add	r3, r0
	ldr	r0, =Data_edea5
	ldrb	r0, [r0, r4]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x10]
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
.Le901e:
	add	r3, #1
	add	r7, #1
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r7, #8
	bne	.Le8fde
.Le902a:
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
	ldr	r1, [sp, #0x28]
	add	r1, #1
	str	r1, [sp, #0x28]
	cmp	r1, #0x96
	beq	.Le9050
	b	.Le8c04
.Le9050:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0xe4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e89ec

.thumb_func_start Func_e90a8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1eec
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x58
	str	r3, [sp, #0x24]
	ldr	r3, [r2, #8]
	str	r3, [sp, #0x20]
	sub	r2, #0x6c
	ldr	r5, =0x7828
	mov	r11, r1
	ldr	r2, [r2]
	add	r5, r11
	str	r2, [sp, #0x1c]
	ldr	r7, =ewram_10000
	str	r0, [r5]
	mov	r0, #0
	bl	Func_cd594
	ldr	r0, =0x96
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r1, r7
	ldr	r0, =0x63
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #0
	ldr	r1, [sp, #0x20]
	ldr	r0, =0x73
	mov	r3, #0
	bl	Func_e0524
	ldr	r3, [r5]
	mov	r2, #0x24
	ldrsh	r1, [r3, r2]
	ldr	r0, [r3, #8]
	mov	r2, #4
	mov	r3, #0
	bl	_Func_b82c4
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r5]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	mov	r5, #0xe1
	mov	r2, #0
	lsl	r5, #7
	ldr	r6, [r0]
	mov	r8, r2
	mov	r7, #0xff
	add	r5, r11
.Le912e:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x7f
	ldr	r3, [r5]
	lsl	r0, #12
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Le9168
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le9168:
	mov	r3, r8
	cmp	r3, #0
	bge	.Le9170
	add	r3, #3
.Le9170:
	asr	r3, #2
	lsl	r3, #1
	add	r3, #0x10
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r0, r8
	add	r5, #0x1c
	cmp	r0, #0x40
	bne	.Le912e
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r2, sp
	add	r2, #0x40
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r2
	str	r2, [sp, #0x18]
	bl	Func_e396c
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	str	r3, [r2]
	mov	r3, #0
	mov	r9, r3
	ldr	r1, [sp, #0x1c]
	ldr	r2, =0x7828
	ldr	r3, =0xffffaf00
	mov	r0, sp
	add	r0, #0x4c
	add	r1, #0xc
	add	r2, r11
	add	r3, r11
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x14]
	str	r3, [sp, #8]
.Le91d2:
	mov	r0, r9
	cmp	r0, #8
	bne	.Le91de
	mov	r0, #0x86
	bl	_Func_bd7dc
.Le91de:
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	cmp	r3, #0
	beq	.Le91f4
	mov	r2, r9
	cmp	r2, #8
	bne	.Le91f4
	mov	r0, #0xd4
	bl	_Func_f9080
.Le91f4:
	ldr	r5, =0x7828
	add	r5, r11
	ldr	r3, [r5]
	ldr	r1, [sp, #0x10]
	ldr	r0, [r3, #8]
	bl	Func_e396c
	mov	r3, r9
	sub	r3, #6
	cmp	r3, #5
	bhi	.Le92ae
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le9222
	mov	r3, #3
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	str	r3, [sp]
	bl	Func_ed408
	b	.Le9232
.Le9222:
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
.Le9232:
	ldr	r3, =iwram_1e50
	ldr	r0, [sp, #0x14]
	add	r3, #0xb8
	ldr	r4, [r3]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	str	r4, [sp, #0x28]
	cmp	r3, #0
	bne	.Le928c
	ldr	r2, [sp, #0x4c]
	lsr	r3, r2, #31
	add	r2, r3
	mov	r1, #0x30
	ldr	r3, [sp, #0x50]
	asr	r2, #1
	str	r1, [sp]
	mov	r1, #0x48
	str	r1, [sp, #4]
	sub	r2, #0x18
	sub	r3, #0x18
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #8]
	bl	_call_via_r4
	b	.Le92a8

	.pool_aligned

.Le928c:
	ldr	r2, [sp, #0x4c]
	lsr	r3, r2, #31
	add	r2, r3
	mov	r1, #0x30
	ldr	r3, [sp, #0x50]
	str	r1, [sp]
	mov	r1, #0x48
	str	r1, [sp, #4]
	asr	r2, #1
	sub	r3, #0x18
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #8]
	bl	_call_via_r4
.Le92a8:
	mov	r0, #0x2e
	bl	Func_2dd8
.Le92ae:
	mov	r2, r9
	sub	r2, #0x10
	cmp	r2, #0x1f
	bhi	.Le9328
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r5, r3, #1
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	bl	Func_ed408
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	cmp	r5, #2
	ble	.Le92da
	mov	r5, #2
.Le92da:
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	mov	r2, #0
	cmp	r3, #0
	beq	.Le92ea
	mov	r2, #0x96
	lsl	r2, #6
.Le92ea:
	lsl	r1, r5, #1
	add	r1, r5
	lsl	r1, #3
	add	r1, r5
	lsl	r1, #7
	ldr	r3, [sp, #0x18]
	add	r1, r2, r1
	ldr	r2, =ewram_10000
	add	r1, r2
	ldr	r2, [r3]
	ldr	r0, [sp, #0x18]
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0, #4]
	mov	r0, #0x28
	str	r0, [sp]
	asr	r2, #1
	mov	r0, #0x50
	str	r0, [sp, #4]
	sub	r2, #0x14
	sub	r3, #0x30
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	ldr	r0, =0x2710
	bl	Func_d655c
	mov	r0, #0x2e
	bl	Func_2dd8
.Le9328:
	mov	r1, r9
	cmp	r1, #8
	bne	.Le933e
	ldr	r3, =0x3f3f3f3f
	add	r0, sp, #0x30
	str	r3, [r0]
	ldr	r1, [sp, #0x24]
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Le933e:
	bl	Func_49ac
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0xc]
	bl	Func_51d8
	mov	r2, r9
	cmp	r2, #3
	ble	.Le93e8
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	add	r1, sp, #0x28
	ldr	r0, [r3, #4]
	mov	r10, r1
	bl	Func_cef64
	mov	r7, #0xe1
	mov	r2, #0
	lsl	r7, #7
	mov	r8, r2
	add	r6, sp, #0x34
	add	r7, r11
.Le936a:
	ldr	r5, [r7, #0x18]
	cmp	r5, #0
	ble	.Le93d0
	mov	r1, r6
	mov	r0, r7
	bl	Func_e3944
	ldr	r2, [r6]
	asr	r2, #1
	str	r2, [r6]
	ldr	r0, [sp, #0x18]
	ldr	r3, [r6, #4]
	ldr	r1, [r0, #4]
	add	r3, r1
	mov	r1, r8
	lsr	r4, r1, #31
	asr	r5, #3
	add	r4, r8
	add	r5, #2
	mov	r1, #1
	asr	r4, #1
	sub	r3, #0x70
	and	r4, r1
	lsl	r1, r5, #1
	str	r3, [r6, #4]
	ldr	r0, =Data_ede48
	str	r1, [sp, #4]
	sub	r1, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0x20]
	add	r1, r0, r1
	lsr	r0, r5, #31
	add	r0, r5, r0
	str	r5, [sp]
	asr	r0, #1
	sub	r2, r0
	lsl	r4, #2
	mov	r0, r10
	sub	r3, r5
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	mov	r0, r7
	mov	r1, #0x3c
	ldr	r2, =0xfffffc00
	bl	Func_e38b8
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.Le93d0:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r7, #0x1c
	cmp	r2, #0x40
	bne	.Le936a
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
.Le93e8:
	mov	r3, r9
	cmp	r3, #8
	bne	.Le9404
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_Func_b8228
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r11
	str	r3, [r2]
.Le9404:
	mov	r2, r9
	cmp	r2, #6
	bne	.Le9422
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	mov	r2, #1
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0xa
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Le9422:
	mov	r2, r9
	cmp	r2, #0xe
	bne	.Le9440
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	mov	r2, #1
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0xa
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Le9440:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #0xd8
	ldr	r2, [sp, #8]
	mov	r0, #1
	lsl	r3, #4
	add	r9, r0
	add	r2, r3
	mov	r1, r9
	str	r2, [sp, #8]
	cmp	r1, #0x40
	beq	.Le9470
	b	.Le91d2
.Le9470:
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x58
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e90a8

.thumb_func_start Func_e94b8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1eec
	mov	r3, r2
	mov	r5, r0
	ldmia	r3!, {r0}
	ldr	r3, [r3]
	sub	sp, #0x34
	str	r3, [sp, #0x28]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x20]
	mov	r11, r0
	ldr	r0, [r5, #8]
	bl	_Func_b7dd0
	ldr	r6, =0x7828
	ldr	r0, [r0]
	mov	r3, #1
	add	r6, r11
	str	r0, [sp, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, #1
	str	r5, [r6]
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le9534	@ 0x1010
	strh	r3, [r2]
	ldr	r3, [r6]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x2c
	str	r1, [sp, #0x18]
	bl	Func_cef64
	mov	r1, #2
	ldr	r0, [sp, #0x1c]
	bl	_Func_c300
	mov	r1, #0x30
	ldr	r0, [sp, #0x1c]
	bl	_Func_c344
	ldr	r0, =0x55
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r1, #0x80
	lsl	r1, #6
	ldr	r0, =0x7d
	add	r1, r11
	mov	r2, #1
	mov	r3, #0
	b	.Le954c

	.align	2, 0
.Le9534:
	.word	0x1010
	.pool

.Le954c:
	bl	Func_e0524
	mov	r2, #0
	ldr	r0, =0x73
	ldr	r1, [sp, #0x20]
	mov	r3, #0
	bl	Func_e0524
	mov	r2, #0
	str	r2, [sp, #0x24]
	mov	r9, r2
	mov	r8, r11
.Le9564:
	mov	r7, #0xe1
	mov	r3, #0
	lsl	r7, #7
	mov	r10, r3
	add	r7, r8
.Le956e:
	mov	r0, r10
	lsl	r6, r0, #1
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	str	r3, [r7]
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r1, r10
	neg	r3, r3
	str	r3, [r7, #4]
	lsr	r3, r1, #31
	add	r3, r10
	asr	r3, #1
	mov	r2, #1
	add	r3, #0x19
	add	r10, r2
	str	r3, [r7, #0x18]
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Le956e
	mov	r1, r9
	lsl	r3, r1, #3
	sub	r3, r1
	ldr	r2, =ewram_10000
	mov	r0, #0
	lsl	r3, #2
	mov	r10, r0
	add	r7, r3, r2
.Le95be:
	bl	Func_4458
	ldr	r5, =0x1ff
	and	r5, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r0, [sp, #0x24]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.Leef06
	add	r3, r0, r3
	ldrb	r3, [r1, r3]
	lsl	r3, #16
	str	r3, [r7]
	mov	r3, #0xb0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x20
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	mov	r2, #1
	mov	r3, #0xaa
	add	r10, r2
	lsl	r3, #1
	add	r7, #0x1c
	cmp	r10, r3
	bne	.Le95be
	ldr	r1, [sp, #0x24]
	mov	r0, #0xe0
	lsl	r0, #1
	add	r1, #1
	add	r9, r3
	add	r8, r0
	str	r1, [sp, #0x24]
	cmp	r1, #3
	bne	.Le9564
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
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r2, #0
	mov	r9, r2
.Le965c:
	mov	r3, r9
	cmp	r3, #4
	bne	.Le9668
	mov	r0, #0xd4
	bl	_Func_f9080
.Le9668:
	mov	r0, r9
	cmp	r0, #8
	bne	.Le9674
	ldr	r3, =0x77a8
	add	r3, r11
	str	r0, [r3]
.Le9674:
	mov	r1, r9
	cmp	r1, #0x12
	bne	.Le9680
	mov	r0, #0x91
	bl	_Func_f9080
.Le9680:
	mov	r2, r9
	cmp	r2, #0x28
	bne	.Le968c
	mov	r0, #0x86
	bl	_Func_bd7dc
.Le968c:
	mov	r3, r9
	cmp	r3, #0x27
	bgt	.Le9724
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r1, #0x80
	cmp	r3, #1
	bne	.Le96ce
	mov	r0, r9
	cmp	r0, #9
	bgt	.Le96b8
	lsl	r3, r0, #2
	add	r3, r9
	lsl	r3, #1
	mov	r2, r3
	lsl	r3, r0, #4
	mov	r5, r3
	sub	r2, #8
	sub	r5, #0x80
	b	.Le96fe
.Le96b8:
	mov	r2, r9
	cmp	r2, #0x14
	ble	.Le96ca
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r5, r3
	add	r2, #0x3e
	sub	r5, #0x18
	b	.Le96fe
.Le96ca:
	mov	r2, #0x52
	b	.Le96fc
.Le96ce:
	mov	r2, r9
	cmp	r2, #9
	bgt	.Le96e6
	lsl	r3, r2, #2
	add	r3, r9
	lsl	r3, #1
	mov	r0, r9
	sub	r2, r1, r3
	lsl	r3, r0, #4
	mov	r5, r3
	sub	r5, #0x80
	b	.Le96fe
.Le96e6:
	mov	r2, r9
	cmp	r2, #0x14
	ble	.Le96fa
	mov	r3, #0x3a
	mov	r0, r9
	sub	r2, r3, r2
	lsl	r3, r0, #1
	mov	r5, r3
	sub	r5, #0x18
	b	.Le96fe
.Le96fa:
	mov	r2, #0x26
.Le96fc:
	mov	r5, #0x10
.Le96fe:
	mov	r3, r5
	add	r3, #0x80
	cmp	r3, #0x68
	ble	.Le970c
	sub	r3, r1, r5
	mov	r1, r3
	sub	r1, #0x18
.Le970c:
	cmp	r1, #0
	ble	.Le9724
	mov	r3, #0x40
	str	r3, [sp]
	str	r1, [sp, #4]
	sub	r2, #0x20
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x28]
	mov	r1, r11
	mov	r3, r5
	bl	_call_via_r4
.Le9724:
	mov	r1, r9
	cmp	r1, #0x10
	ble	.Le9730
	ldr	r0, =0xc0
	bl	Func_e46f0
.Le9730:
	mov	r2, #0
	mov	r3, #0x16
	mov	r0, #0x10
	mov	r1, r11
	str	r2, [sp, #0x24]
	str	r3, [sp, #0x14]
	str	r2, [sp, #0x10]
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
.Le9742:
	ldr	r2, [sp, #0x24]
	ldr	r3, [sp, #0xc]
	lsl	r1, r2, #3
	cmp	r9, r3
	bne	.Le9754
	ldr	r2, =0x77a8
	mov	r3, #0xc
	add	r2, r11
	str	r3, [r2]
.Le9754:
	ldr	r0, [sp, #0xc]
	cmp	r9, r0
	blt	.Le980c
	mov	r3, r1
	add	r3, #0x12
	cmp	r9, r3
	bge	.Le9790
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, [sp, #0x24]
	ldr	r1, =.Leef06
	add	r3, r2, r3
	ldrb	r2, [r1, r3]
	mov	r3, #0x20
	mov	r1, #0x80
	str	r3, [sp]
	lsl	r1, #6
	mov	r3, #0x40
	str	r3, [sp, #4]
	sub	r2, #0x10
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x28]
	add	r1, r11
	mov	r3, #0x38
	bl	_call_via_r4
.Le9790:
	ldr	r0, =.Leef0c
	ldr	r1, [sp, #8]
	mov	r2, #0xe1
	mov	r3, #0
	lsl	r2, #7
	mov	r10, r3
	mov	r8, r0
	add	r5, r1, r2
.Le97a0:
	mov	r3, #6
	ldrsh	r7, [r5, r3]
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, [sp, #0x24]
	mov	r0, #2
	ldrsh	r1, [r5, r0]
	ldr	r0, =.Leef06
	add	r3, r2, r3
	ldrb	r3, [r0, r3]
	ldr	r0, [r5, #0x18]
	add	r6, r1, r3
	cmp	r0, #0x11
	bhi	.Le97f2
	mov	r1, #3
	bl	Func_af0_from_thumb
	mov	r2, r8
	ldrb	r1, [r2, r0]
	mov	r3, #0x80
	lsl	r1, #11
	lsl	r3, #6
	mov	r0, #0x20
	add	r1, r11
	add	r1, r3
	str	r0, [sp]
	mov	r2, r6
	mov	r0, #0x40
	mov	r3, r7
	str	r0, [sp, #4]
	sub	r2, #0x10
	add	r3, #0x38
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	ldr	r0, [r5, #0x18]
.Le97f2:
	cmp	r0, #0
	ble	.Le97fa
	sub	r3, r0, #1
	b	.Le97fe
.Le97fa:
	mov	r3, #1
	neg	r3, r3
.Le97fe:
	str	r3, [r5, #0x18]
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r5, #0x1c
	cmp	r1, #0xc
	bne	.Le97a0
.Le980c:
	ldr	r3, [sp, #0xc]
	add	r3, #5
	cmp	r9, r3
	ble	.Le98e2
	mov	r2, #0
	ldr	r7, [sp, #0x10]
	mov	r10, r2
.Le981a:
	lsl	r3, r7, #4
	add	r3, r7, r3
	lsl	r3, #2
	add	r3, r10
	lsl	r2, r3, #3
	sub	r2, r3
	ldr	r3, =ewram_10000
	lsl	r2, #2
	add	r6, r2, r3
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Le98d6
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x40
	lsl	r2, #5
	bl	Func_e3908
	ldr	r3, [r6, #0x18]
	mov	r0, #0xd8
	ldr	r1, [r6, #4]
	sub	r3, #1
	lsl	r0, #15
	str	r3, [r6, #0x18]
	cmp	r1, r0
	ble	.Le9888
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Le98d6

	.pool_aligned

.Le9888:
	ldr	r0, [r6]
	ldr	r2, =0x7effff
	cmp	r0, r2
	bhi	.Le98d6
	cmp	r1, #0
	blt	.Le98d6
	asr	r1, #16
	mov	r8, r1
	asr	r6, r0, #16
	mov	r1, #5
	mov	r0, r3
	bl	Func_af0_from_thumb
	add	r0, #1
	lsl	r5, r0, #1
	mov	r3, r10
	ldr	r2, =Data_ede48
	mov	r4, #1
	and	r4, r3
	sub	r3, r5, #2
	ldrh	r1, [r2, r3]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r6, r3
	mov	r3, r8
	ldr	r2, [sp, #0x20]
	sub	r3, r0
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x18]
	lsl	r4, #2
	add	r1, r2, r1
	ldr	r4, [r4, r0]
	mov	r2, r6
	ldr	r0, [sp, #0x28]
	mov	r8, r3
	bl	_call_via_r4
.Le98d6:
	mov	r1, #1
	mov	r2, #0x80
	add	r10, r1
	lsl	r2, #1
	cmp	r10, r2
	bne	.Le981a
.Le98e2:
	ldr	r2, =0x7828
	mov	r3, #0
	mov	r0, r11
	mov	r10, r3
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Le992e
	ldr	r1, [sp, #0x14]
	mov	r6, #0x24
	mov	r8, r1
.Le98f8:
	cmp	r9, r8
	bne	.Le991c
	mov	r3, r11
	add	r5, r3, r2
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r10
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #4
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
.Le991c:
	ldr	r2, =0x7828
	mov	r3, #1
	mov	r0, r11
	add	r10, r3
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	cmp	r10, r3
	bne	.Le98f8
.Le992e:
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #0x10]
	add	r1, #8
	add	r2, #5
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #8]
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x10]
	mov	r1, #0xe0
	ldr	r2, [sp, #0x24]
	lsl	r1, #1
	add	r3, #8
	add	r0, r1
	add	r2, #1
	str	r3, [sp, #0xc]
	str	r0, [sp, #8]
	str	r2, [sp, #0x24]
	cmp	r2, #2
	beq	.Le9956
	b	.Le9742
.Le9956:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r3, =0x7824
	mov	r5, #1
	add	r3, r11
	str	r5, [r3]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0x50
	beq	.Le997c
	b	.Le965c
.Le997c:
	ldr	r0, [sp, #0x1c]
	mov	r1, #0x10
	bl	_Func_c344
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
.func_end Func_e94b8

.thumb_func_start Func_e99c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1eec
	mov	r3, r6
	ldmia	r3!, {r1}
	sub	sp, #0x34
	str	r1, [sp, #0x24]
	ldr	r3, [r3]
	str	r3, [sp, #0x20]
	ldr	r3, =0x7828
	ldr	r2, [r6, #8]
	add	r5, r1, r3
	str	r2, [sp, #0x14]
	str	r0, [r5]
	mov	r0, #1
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le9a2c	@ 0x1010
	strh	r3, [r2]
	ldr	r3, [r5]
	add	r5, sp, #0x28
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r1, r5
	bl	Func_e3980
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp, #0x10]
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r0, [r6, #0x1c]
	mov	r3, #1
	str	r0, [sp, #0x18]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	b	.Le9a3c

	.align	2, 0
.Le9a2c:
	.word	0x1010
	.pool

.Le9a3c:
	bl	Func_ed408
	ldr	r3, =0x4e20
	ldr	r2, [sp, #0x24]
	ldr	r6, [r6, #0x20]
	add	r1, r2, r3
	ldr	r0, =0x56
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #0x1c]
	bl	Func_e0524
	ldr	r0, =0x85
	ldr	r1, [sp, #0x24]
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r6, #0xdd
	ldr	r4, [sp, #0x24]
	lsl	r6, #4
	add	r1, r4, r6
	ldr	r0, =0x7d
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x73
	ldr	r1, [sp, #0x14]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	mov	r1, #0xef
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	add	r3, r0, r1
	str	r5, [r3]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r0, r3
	mov	r3, #0x4b
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r6, #0xe1
	ldr	r5, [sp, #0x24]
	mov	r4, #0
	lsl	r6, #7
	mov	r8, r4
	add	r7, r5, r6
.Le9aa6:
	mov	r0, r8
	lsl	r6, r0, #1
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	str	r3, [r7]
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r1, r8
	neg	r3, r3
	str	r3, [r7, #4]
	lsr	r3, r1, #31
	add	r3, r8
	asr	r3, #1
	mov	r2, #1
	add	r3, #0x19
	add	r8, r2
	str	r3, [r7, #0x18]
	mov	r3, r8
	add	r7, #0x1c
	cmp	r3, #0x20
	bne	.Le9aa6
	mov	r4, #0
	mov	r1, #1
	mov	r2, #0xab
	ldr	r3, =ewram_10018
	mov	r8, r4
	neg	r1, r1
	lsl	r2, #2
.Le9af4:
	mov	r5, #1
	add	r8, r5
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Le9af4
	ldr	r0, [sp, #0x10]
	lsl	r0, #16
	mov	r6, #0
	str	r0, [sp, #8]
	ldr	r7, =ewram_14ad0
	mov	r8, r6
.Le9b0c:
	bl	Func_4458
	ldr	r6, =0x1ff
	and	r6, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	ldr	r1, [sp, #8]
	and	r5, r3
	mov	r3, #0xb0
	lsl	r3, #15
	str	r1, [r7]
	str	r3, [r7, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x20
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
	mov	r2, #1
	mov	r3, #0xaa
	add	r8, r2
	lsl	r3, #1
	add	r7, #0x1c
	cmp	r8, r3
	bne	.Le9b0c
	mov	r4, #0
	mov	r11, r4
.Le9b66:
	mov	r3, r11
	sub	r3, #0x19
	cmp	r3, #0x16
	bhi	.Le9b74
	ldr	r0, =0xc0
	bl	Func_e46f0
.Le9b74:
	mov	r5, r11
	cmp	r5, #0x38
	ble	.Le9b80
	ldr	r0, =0xc4
	bl	Func_e46f0
.Le9b80:
	mov	r6, r11
	cmp	r6, #8
	bne	.Le9b8e
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x77a8
	add	r3, r0, r1
	str	r6, [r3]
.Le9b8e:
	mov	r2, r11
	cmp	r2, #0x30
	bne	.Le9b9e
	ldr	r3, [sp, #0x24]
	ldr	r4, =0x77a8
	add	r2, r3, r4
	mov	r3, #8
	str	r3, [r2]
.Le9b9e:
	mov	r5, r11
	cmp	r5, #0x3c
	bne	.Le9bae
	ldr	r6, [sp, #0x24]
	ldr	r0, =0x77a8
	mov	r3, #0x10
	add	r2, r6, r0
	str	r3, [r2]
.Le9bae:
	mov	r1, r11
	cmp	r1, #4
	bne	.Le9bba
	mov	r0, #0xd4
	bl	_Func_f9080
.Le9bba:
	mov	r2, r11
	cmp	r2, #0x20
	bne	.Le9bc6
	mov	r0, #0xa4
	bl	_Func_f9080
.Le9bc6:
	mov	r3, r11
	cmp	r3, #0x3c
	bne	.Le9bd8
	mov	r0, #0x91
	bl	_Func_f9080
	mov	r0, #0x86
	bl	_Func_bd7dc
.Le9bd8:
	mov	r4, r11
	cmp	r4, #0x37
	ble	.Le9c86
	ldr	r6, =.Leef12
	ldr	r0, [sp, #0x24]
	mov	r1, #0xe1
	mov	r5, #0
	lsl	r1, #7
	mov	r8, r5
	mov	r10, r6
	add	r5, r0, r1
.Le9bee:
	ldr	r0, [sp, #0x10]
	mov	r4, #2
	ldrsh	r3, [r5, r4]
	add	r6, r3, r0
	ldr	r0, [r5, #0x18]
	mov	r2, #6
	ldrsh	r7, [r5, r2]
	cmp	r0, #0x11
	bhi	.Le9c30
	mov	r1, #3
	bl	Func_af0_from_thumb
	mov	r2, r10
	ldrb	r1, [r2, r0]
	ldr	r3, [sp, #0x24]
	mov	r0, #0x20
	lsl	r1, #11
	mov	r4, #0xdd
	add	r1, r3, r1
	lsl	r4, #4
	mov	r2, r6
	str	r0, [sp]
	mov	r3, r7
	mov	r0, #0x40
	str	r0, [sp, #4]
	add	r1, r4
	sub	r2, #0x10
	add	r3, #0x30
	ldr	r0, [sp, #0x20]
	ldr	r6, [sp, #0x18]
	bl	_call_via_r6
	ldr	r0, [r5, #0x18]
.Le9c30:
	cmp	r0, #0
	ble	.Le9c74
	sub	r3, r0, #1
	b	.Le9c78

	.pool_aligned

.Le9c74:
	mov	r3, #1
	neg	r3, r3
.Le9c78:
	str	r3, [r5, #0x18]
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x10
	bne	.Le9bee
.Le9c86:
	mov	r2, r11
	cmp	r2, #0x1c
	bne	.Le9d0a
	mov	r3, #0
	mov	r4, #0x3f
	ldr	r7, =ewram_10000
	mov	r8, r3
	mov	r10, r4
.Le9c96:
	mov	r5, #1
	ldr	r3, [r7, #0x18]
	neg	r5, r5
	cmp	r3, r5
	bne	.Le9cfc
	bl	Func_4458
	mov	r6, r0
	mov	r0, r10
	and	r6, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	ldr	r1, [sp, #8]
	asr	r3, #3
	add	r3, r1
	str	r3, [r7]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r2, #0xc0
	lsl	r2, #15
	asr	r3, #2
	add	r3, r2
	str	r3, [r7, #4]
	bl	Func_4458
	mov	r3, r10
	and	r0, r3
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r7, #0xc]
	bl	Func_4458
	mov	r4, r10
	and	r0, r4
	neg	r0, r0
	sub	r0, #8
	lsl	r0, #13
	mov	r3, #0
	str	r0, [r7, #0x10]
	str	r3, [r7, #0x18]
.Le9cfc:
	mov	r5, #1
	mov	r6, #0x80
	add	r8, r5
	lsl	r6, #1
	add	r7, #0x1c
	cmp	r8, r6
	bne	.Le9c96
.Le9d0a:
	mov	r0, r11
	sub	r0, #0x20
	str	r0, [sp, #0xc]
	cmp	r0, #0x1f
	bhi	.Le9dec
	mov	r1, #0
	mov	r2, #0x3f
	ldr	r7, =ewram_10000
	mov	r9, r1
	mov	r8, r1
	mov	r10, r2
.Le9d20:
	mov	r4, #1
	ldr	r3, [r7, #0x18]
	neg	r4, r4
	cmp	r3, r4
	bne	.Le9d90
	bl	Func_4458
	mov	r6, r0
	bl	Func_4458
	mov	r5, r10
	ldr	r3, =0xffff
	and	r6, r5
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	ldr	r0, [sp, #8]
	asr	r3, #3
	add	r3, r0
	str	r3, [r7]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r1, #0xc0
	lsl	r1, #15
	asr	r3, #2
	add	r3, r1
	str	r3, [r7, #4]
	bl	Func_4458
	mov	r2, r10
	and	r0, r2
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r7, #0xc]
	bl	Func_4458
	mov	r3, r10
	and	r0, r3
	neg	r0, r0
	mov	r4, #1
	sub	r0, #8
	add	r9, r4
	lsl	r0, #13
	mov	r3, #0
	mov	r5, r9
	str	r0, [r7, #0x10]
	str	r3, [r7, #0x18]
	cmp	r5, #0x10
	beq	.Le9d9e
.Le9d90:
	mov	r6, #1
	mov	r0, #0xab
	add	r8, r6
	lsl	r0, #2
	add	r7, #0x1c
	cmp	r8, r0
	bne	.Le9d20
.Le9d9e:
	ldr	r1, [sp, #0xc]
	cmp	r1, #0x1f
	bhi	.Le9dec
	mov	r2, r11
	ldr	r3, [sp, #0x10]
	ldr	r1, =0xffffff00
	lsl	r0, r2, #4
	mov	r4, #0x22
	sub	r3, #0x11
	add	r0, r1
	mov	r1, #0x68
	mov	r10, r3
	mov	r8, r4
	ldr	r5, [sp, #0x18]
	bl	Func_b1c_from_thumb
	mov	r9, r5
	mov	r2, r8
	mov	r5, r0
	mov	r6, #0x68
	mov	r3, #4
	sub	r3, r5
	str	r2, [sp]
	ldr	r1, [sp, #0x24]
	mov	r2, r10
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r9
	mov	r3, #0x6c
	mov	r4, r8
	sub	r3, r5
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x24]
	mov	r2, r10
	bl	_call_via_r9
.Le9dec:
	mov	r5, r11
	cmp	r5, #0x47
	bgt	.Le9ee8
	mov	r6, #0
	ldr	r5, =ewram_10000
	mov	r8, r6
.Le9df8:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Le9eda
	mov	r0, r8
	mov	r1, #3
	bl	Func_b1c_from_thumb
	ldr	r3, [r5, #0x10]
	add	r4, r0, #2
	cmp	r3, #0
	ble	.Le9e10
	add	r4, #2
.Le9e10:
	mov	r0, r11
	cmp	r0, #0x44
	ble	.Le9e1c
	cmp	r4, #5
	bgt	.Le9e1c
	mov	r4, #6
.Le9e1c:
	mov	r1, r11
	cmp	r1, #0x46
	ble	.Le9e28
	cmp	r4, #6
	bgt	.Le9e28
	mov	r4, #7
.Le9e28:
	mov	r2, r11
	cmp	r2, #0x48
	ble	.Le9e34
	cmp	r4, #7
	bgt	.Le9e34
	mov	r4, #8
.Le9e34:
	mov	r3, r11
	cmp	r3, #0x4a
	ble	.Le9e40
	cmp	r4, #8
	bgt	.Le9e40
	mov	r4, #9
.Le9e40:
	mov	r6, r11
	cmp	r6, #0x4c
	ble	.Le9e48
	mov	r4, #0xa
.Le9e48:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x14]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r4, #31
	add	r3, r4, r3
	asr	r3, #1
	sub	r2, r3
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	str	r4, [sp]
	sub	r3, r4
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r1, [r5, #0x10]
	ldr	r3, [r5, #4]
	mov	r6, r11
	add	r3, r1
	str	r3, [r5, #4]
	cmp	r6, #0x50
	ble	.Le9e8e
	ldr	r0, =0xffff8000
	add	r3, r1, r0
	b	.Le9e9c
.Le9e8e:
	mov	r2, #3
	mov	r4, r8
	ldr	r3, =.Leef18
	and	r2, r4
	lsl	r2, #2
	ldr	r3, [r3, r2]
	add	r3, r1, r3
.Le9e9c:
	str	r3, [r5, #0x10]
	ldr	r2, [r5, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #1
	cmp	r3, #0
	bge	.Le9eac
	add	r3, #0x3f
.Le9eac:
	ldr	r2, [r5, #0x10]
	asr	r3, #6
	str	r3, [r5, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r2, r3, #1
	cmp	r2, #0
	bge	.Le9ebe
	add	r2, #0x3f
.Le9ebe:
	ldr	r3, [r5, #0x18]
	asr	r2, #6
	add	r3, #1
	str	r2, [r5, #0x10]
	str	r3, [r5, #0x18]
	cmp	r2, #0
	ble	.Le9eda
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	cmp	r3, #0x6c
	ble	.Le9eda
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Le9eda:
	mov	r0, #1
	mov	r1, #0xab
	add	r8, r0
	lsl	r1, #1
	add	r5, #0x1c
	cmp	r8, r1
	bne	.Le9df8
.Le9ee8:
	mov	r2, r11
	cmp	r2, #0x5f
	bgt	.Le9f4e
	ldr	r2, [sp, #0x10]
	mov	r3, r11
	sub	r2, #0x12
	mov	r1, #0x78
	cmp	r3, #0x3c
	ble	.Le9f02
	ldr	r5, =0xfffffe3e
	lsl	r3, #3
	add	r4, r3, r5
	b	.Le9f26
.Le9f02:
	mov	r6, r11
	cmp	r6, #0x20
	ble	.Le9f16
	ldr	r0, [sp, #0xc]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	mov	r4, r3
	add	r4, #0x10
	b	.Le9f26
.Le9f16:
	mov	r3, r11
	cmp	r3, #9
	bgt	.Le9f24
	lsl	r3, #4
	mov	r4, r3
	sub	r4, #0x80
	b	.Le9f26
.Le9f24:
	mov	r4, #0x10
.Le9f26:
	mov	r3, r4
	add	r3, #0x78
	cmp	r3, #0x6c
	ble	.Le9f34
	sub	r3, r1, r4
	mov	r1, r3
	sub	r1, #0xc
.Le9f34:
	cmp	r1, #0
	ble	.Le9f4e
	ldr	r5, [sp, #0x24]
	ldr	r6, =0x4e20
	mov	r3, #0x24
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r3, r4
	ldr	r0, [sp, #0x20]
	add	r1, r5, r6
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Le9f4e:
	mov	r5, r11
	cmp	r5, #0x3b
	ble	.Le9ffc
	mov	r6, #0
	ldr	r7, =ewram_14ad0
	mov	r8, r6
.Le9f5a:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	ble	.Le9fee
	mov	r2, #0x80
	mov	r0, r7
	mov	r1, #0x40
	lsl	r2, #6
	bl	Func_e3908
	ldr	r3, [r7, #0x18]
	mov	r1, #0xd8
	ldr	r6, [r7, #4]
	sub	r0, r3, #1
	lsl	r1, #15
	str	r0, [r7, #0x18]
	cmp	r6, r1
	ble	.Le9fb0
	ldr	r3, [r7, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r7, #0x10]
	b	.Le9fee

	.pool_aligned

.Le9fb0:
	ldr	r5, [r7]
	ldr	r2, =0x7effff
	cmp	r5, r2
	bhi	.Le9fee
	cmp	r6, #0
	blt	.Le9fee
	mov	r1, #5
	bl	Func_af0_from_thumb
	add	r0, #1
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x14]
	add	r1, r3, r1
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	asr	r5, #16
	asr	r6, #16
	sub	r5, r3
	sub	r6, r0
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x20]
	mov	r2, r5
	mov	r3, r6
	ldr	r4, [sp, #0x18]
	bl	_call_via_r4
.Le9fee:
	mov	r5, #1
	mov	r6, #0xaa
	add	r8, r5
	lsl	r6, #1
	add	r7, #0x1c
	cmp	r8, r6
	bne	.Le9f5a
.Le9ffc:
	mov	r0, r11
	cmp	r0, #0x44
	bne	.Lea042
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x24]
	ldr	r3, [r2, r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	beq	.Lea042
	ldr	r3, =0x7828
	mov	r6, #0x24
	add	r5, r2, r3
.Lea018:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r8
	bl	Func_d6888
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r1, #7
	bl	_Func_b8228
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r6, #2
	cmp	r8, r3
	bne	.Lea018
.Lea042:
	mov	r3, r11
	cmp	r3, #9
	bne	.Lea056
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x20]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Lea056:
	mov	r4, r11
	cmp	r4, #0x3c
	bne	.Lea06a
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x20]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Lea06a:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r6, =0x7824
	ldr	r5, [sp, #0x24]
	mov	r3, #1
	add	r2, r5, r6
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	mov	r0, #1
	add	r11, r0
	mov	r1, r11
	cmp	r1, #0x66
	beq	.Lea092
	b	.Le9b66
.Lea092:
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
.func_end Func_e99c0

	.section .rodata

.Leee76:
	.incrom 0xeee76, 0xeeea0
.Leeea0:
	.incrom 0xeeea0, 0xeeebc
.Leeebc:
	.incrom 0xeeebc, 0xeeeca
.Leeeca:
	.incrom 0xeeeca, 0xeeed8
.Leeed8:
	.incrom 0xeeed8, 0xeeee1
.Leeee1:
	.incrom 0xeeee1, 0xeeeea
.Leeeea:
	.incrom 0xeeeea, 0xeeef8
.Leeef8:
	.incrom 0xeeef8, 0xeef06
.Leef06:
	.incrom 0xeef06, 0xeef0c
.Leef0c:
	.incrom 0xeef0c, 0xeef12
.Leef12:
	.incrom 0xeef12, 0xeef18
.Leef18:
	.incrom 0xeef18, 0xeef28
