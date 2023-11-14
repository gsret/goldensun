	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_c91dc
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
	sub	sp, #0x24
	str	r3, [sp, #0x18]
	ldr	r3, =0x7828
	mov	r10, r1
	ldr	r2, [r2, #8]
	add	r3, r10
	str	r2, [sp, #0x10]
	str	r0, [r3]
	ldr	r0, =0x2001
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lc9244	@ 0x100
	ldr	r0, =0xb3
	strh	r3, [r2]
	mov	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #0
	mov	r3, #0
	ldr	r0, =0xba
	ldr	r1, [sp, #0x10]
	bl	Func_e0524
	bl	Func_c9048
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc9248	@ 0x3f44
	strh	r3, [r2]
	ldr	r3, .Lc924c	@ 0x3337
	sub	r2, #8
	strh	r3, [r2]
	mov	r6, #0xe1
	mov	r3, #0x80
	mov	r2, #0
	neg	r3, r3
	mov	r7, #0x10
	lsl	r6, #7
	b	.Lc926c

	.align	2, 0
.Lc9244:
	.word	0x100
.Lc9248:
	.word	0x3f44
.Lc924c:
	.word	0x3337
	.pool

.Lc926c:
	mov	r8, r2
	mov	r9, r3
	neg	r7, r7
	add	r6, r10
.Lc9274:
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r2, #0x3f
	mov	r3, #7
	and	r3, r0
	and	r2, r5
	add	r2, r3
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	add	r2, #0x18
	cmp	r3, #1
	bne	.Lc929e
	add	r3, r2, r7
	mov	r2, r3
	add	r2, #0x18
	b	.Lc92a4
.Lc929e:
	sub	r3, r2, r7
	mov	r2, r3
	add	r2, #0x50
.Lc92a4:
	mov	r1, r9
	lsl	r3, r2, #3
	str	r1, [r6, #4]
	mov	r2, #0x40
	mov	r1, #1
	str	r3, [r6]
	neg	r2, r2
	mov	r3, #1
	add	r8, r1
	neg	r3, r3
	add	r9, r2
	mov	r2, r8
	str	r3, [r6, #0x18]
	sub	r7, #8
	add	r6, #0x1c
	cmp	r2, #0x20
	bne	.Lc9274
	mov	r2, r3
	ldr	r3, =0x7418
	mov	r7, #0
	mov	r8, r7
	add	r3, r10
.Lc92d0:
	mov	r1, #1
	add	r8, r1
	mov	r7, r8
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r7, #0x20
	bne	.Lc92d0
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lc930a
	mov	r3, #2
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #2
	bl	Func_ed408
	b	.Lc932a
.Lc930a:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #6
	mov	r0, #0x2e
	bl	Func_ed408
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #6
	bl	Func_ed408
.Lc932a:
	ldr	r3, =iwram_1e50
	mov	r2, r3
	add	r2, #0xb8
	ldr	r2, [r2]
	str	r2, [sp, #0x1c]
	add	r3, #0xbc
	ldr	r3, [r3]
	add	r1, sp, #0x1c
	str	r3, [r1, #4]
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r11, r1
	cmp	r3, #0
	bne	.Lc93aa
	mov	r2, #0
	mov	r8, r2
	mov	r1, #0xe0
	ldr	r6, .Lc9378	@ 0xf0
	ldr	r2, =ewram_10000
	ldr	r5, .Lc937c	@ 0x888
	ldr	r4, .Lc9380	@ 0x100
	ldr	r0, =0xffffff00
	lsl	r1, #7
.Lc935c:
	mov	r3, r8
	sub	r3, #8
	cmp	r3, #0x5f
	bhi	.Lc936e
	mov	r7, r8
	sub	r3, r6, r7
	orr	r3, r1
	strh	r3, [r2]
	b	.Lc939a
.Lc936e:
	mov	r3, r8
	cmp	r3, #0x87
	bgt	.Lc9398
	strh	r5, [r2]
	b	.Lc939a

	.align	2, 0
.Lc9378:
	.word	0xf0
.Lc937c:
	.word	0x888
.Lc9380:
	.word	0x100
	.pool

.Lc9398:
	strh	r4, [r2]
.Lc939a:
	mov	r7, #1
	add	r8, r7
	mov	r3, r8
	add	r2, #2
	add	r1, r0
	cmp	r3, #0xa0
	bne	.Lc935c
	b	.Lc93f4
.Lc93aa:
	mov	r7, #0
	mov	r1, #0xc0
	mov	r0, #0x80
	ldr	r5, =0x78f8
	ldr	r4, =0x100
	ldr	r2, =ewram_10000
	mov	r8, r7
	lsl	r1, #5
	lsl	r0, #1
.Lc93bc:
	mov	r3, r8
	sub	r3, #8
	cmp	r3, #0x57
	bhi	.Lc93cc
	add	r3, #0xa0
	orr	r3, r1
	strh	r3, [r2]
	b	.Lc93e6
.Lc93cc:
	mov	r3, r8
	cmp	r3, #0x87
	bgt	.Lc93e4
	strh	r5, [r2]
	b	.Lc93e6

	.pool_aligned

.Lc93e4:
	strh	r4, [r2]
.Lc93e6:
	mov	r7, #1
	add	r8, r7
	mov	r3, r8
	add	r2, #2
	add	r1, r0
	cmp	r3, #0xa0
	bne	.Lc93bc
.Lc93f4:
	mov	r1, #0x90
	ldr	r0, =Func_c91a4
	lsl	r1, #3
	bl	Func_41d8
	mov	r2, #0xef
	lsl	r2, #7
	mov	r3, #2
	add	r2, r10
	str	r3, [r2]
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	cmp	r3, #1
	bne	.Lc941a
	ldr	r2, =0x7784
	mov	r3, #0x4b
	b	.Lc941e
.Lc941a:
	ldr	r2, =0x7784
	mov	r3, #0x32
.Lc941e:
	add	r2, r10
	str	r3, [r2]
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r7, #0
	str	r7, [sp, #0x14]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x18]
	ldr	r6, =.Leded6
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lc9446
	b	.Lc96d0
.Lc9446:
	mov	r3, r10
	add	r5, r3, r2
	ldr	r2, [r5]
	ldr	r3, [r2, #0x18]
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r6, r3]
	ldr	r7, [sp, #0x14]
	sub	r3, #0x10
	cmp	r7, r3
	bne	.Lc9464
	mov	r0, #0x84
	bl	_Func_bd7dc
	ldr	r2, [r5]
.Lc9464:
	ldr	r3, [r2, #0x18]
	lsl	r3, #1
	ldrb	r3, [r6, r3]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.Lc9474
	b	.Lc9612
.Lc9474:
	ldr	r2, =0x7828
	mov	r7, #0xe1
	add	r2, r10
	lsl	r7, #7
	mov	r9, r2
	add	r7, r10
.Lc9480:
	mov	r3, #1
	ldr	r0, [r7, #0x18]
	neg	r3, r3
	cmp	r0, r3
	bne	.Lc9542
	ldr	r2, [r7]
	cmp	r2, #0
	bge	.Lc9492
	add	r2, #7
.Lc9492:
	ldr	r3, [r7, #4]
	asr	r2, #3
	cmp	r3, #0
	bge	.Lc949c
	add	r3, #7
.Lc949c:
	mov	r1, r9
	asr	r5, r3, #3
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	mov	r1, #4
	cmp	r3, #2
	beq	.Lc94ac
	mov	r1, #0
.Lc94ac:
	mov	r3, #0x20
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	ldr	r4, [r1, r3]
	ldr	r0, [sp, #0x18]
	mov	r1, r10
	mov	r3, r5
	bl	_call_via_r4
	ldr	r3, [r7, #4]
	ldr	r1, =0x27f
	cmp	r3, r1
	bgt	.Lc94e6
	mov	r2, r9
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lc94d8
	ldr	r3, [r7]
	sub	r3, #0x40
	b	.Lc94dc
.Lc94d8:
	ldr	r3, [r7]
	add	r3, #0x40
.Lc94dc:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0x40
	str	r3, [r7, #4]
	b	.Lc9538
.Lc94e6:
	mov	r3, #3
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	bne	.Lc94f6
	mov	r0, #0x73
	bl	_Func_f9080
.Lc94f6:
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r10
	str	r3, [r2]
	mov	r3, #0
	str	r3, [r7, #0x18]
	ldr	r3, =0x7828
	mov	r2, r10
	ldr	r3, [r2, r3]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Lc9538
	ldr	r5, =0x7828
	mov	r4, #0x24
	add	r5, r10
.Lc9516:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r4]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #9
	mov	r3, r6
	mov	r2, #5
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r4, #2
	cmp	r6, r3
	bne	.Lc9516
.Lc9538:
	mov	r2, #1
	ldr	r0, [r7, #0x18]
	neg	r2, r2
	cmp	r0, r2
	beq	.Lc95fa
.Lc9542:
	ldr	r2, [r7]
	cmp	r2, #0
	bge	.Lc954a
	add	r2, #7
.Lc954a:
	ldr	r3, [r7, #4]
	asr	r2, #3
	cmp	r3, #0
	bge	.Lc9554
	add	r3, #7
.Lc9554:
	asr	r6, r3, #3
	sub	r3, r0, #1
	cmp	r3, #0xd
	bhi	.Lc9594
	mov	r1, r9
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	mov	r5, #4
	cmp	r3, #2
	beq	.Lc956a
	mov	r5, #0
.Lc956a:
	mov	r1, #3
	str	r2, [sp, #0xc]
	bl	Func_af0_from_thumb
	mov	r1, r0
	lsl	r1, #10
	mov	r3, #0x80
	lsl	r3, #3
	add	r1, r10
	add	r1, r3
	mov	r3, #0x20
	str	r3, [sp]
	str	r3, [sp, #4]
	add	r5, r11
	ldr	r4, [r5]
	ldr	r0, [sp, #0x18]
	ldr	r2, [sp, #0xc]
	mov	r3, r6
	bl	_call_via_r4
	ldr	r0, [r7, #0x18]
.Lc9594:
	mov	r3, r0
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lc95f2
	mov	r5, #0xe8
	lsl	r5, #7
	mov	r6, #0
	add	r5, r10
.Lc95a4:
	mov	r1, #1
	ldr	r3, [r5, #0x18]
	neg	r1, r1
	cmp	r3, r1
	bne	.Lc95ea
	mov	r3, #0x12
	str	r3, [r5, #0x18]
	bl	Func_4458
	mov	r3, #0x1f
	and	r0, r3
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.Lc95c2
	add	r3, #7
.Lc95c2:
	asr	r3, #3
	add	r3, r0, r3
	lsl	r3, #3
	add	r3, #8
	str	r3, [r5]
	bl	Func_4458
	mov	r3, #0xf
	and	r0, r3
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.Lc95dc
	add	r3, #7
.Lc95dc:
	asr	r3, #3
	add	r3, r0, r3
	sub	r3, #0xf
	lsl	r3, #3
	str	r3, [r5, #4]
	ldr	r0, [r7, #0x18]
	b	.Lc95f2
.Lc95ea:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #0x20
	bne	.Lc95a4
.Lc95f2:
	cmp	r0, #0xe
	bgt	.Lc95fa
	add	r3, r0, #1
	str	r3, [r7, #0x18]
.Lc95fa:
	mov	r1, r9
	ldr	r3, [r1]
	mov	r2, #1
	ldr	r3, [r3, #0x18]
	add	r8, r2
	ldr	r2, =.Leded6
	lsl	r3, #1
	ldrb	r3, [r2, r3]
	add	r7, #0x1c
	cmp	r8, r3
	beq	.Lc9612
	b	.Lc9480
.Lc9612:
	mov	r5, #0xe8
	mov	r2, #0
	lsl	r5, #7
	mov	r8, r2
	add	r5, r10
.Lc961c:
	mov	r3, #1
	ldr	r2, [r5, #0x18]
	neg	r3, r3
	cmp	r2, r3
	beq	.Lc968c
	cmp	r2, #0x11
	bgt	.Lc9680
	lsr	r3, r2, #31
	add	r3, r2, r3
	ldr	r2, [r5]
	asr	r0, r3, #1
	cmp	r2, #0
	bge	.Lc9638
	add	r2, #7
.Lc9638:
	ldr	r6, =Data_ede96
	ldrb	r3, [r6, r0]
	asr	r2, #3
	lsr	r1, r3, #1
	ldr	r3, [r5, #4]
	sub	r2, r1
	mov	r12, r2
	cmp	r3, #0
	bge	.Lc964c
	add	r3, #7
.Lc964c:
	asr	r3, #3
	sub	r7, r3, r1
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	mov	r4, #4
	cmp	r3, #2
	beq	.Lc9660
	mov	r4, #0
.Lc9660:
	ldr	r2, =Data_ede84
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldrb	r3, [r6, r0]
	ldr	r2, [sp, #0x10]
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	add	r1, r2, r1
	ldr	r4, [r4, r3]
	mov	r2, r12
	ldr	r0, [sp, #0x18]
	mov	r3, r7
	bl	_call_via_r4
	ldr	r2, [r5, #0x18]
.Lc9680:
	mov	r7, #1
	neg	r7, r7
	cmp	r2, r7
	ble	.Lc968c
	sub	r3, r2, #1
	str	r3, [r5, #0x18]
.Lc968c:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x1c
	cmp	r2, #0x20
	bne	.Lc961c
	bl	Func_cd52c
	mov	r1, #4
	mov	r0, #4
	bl	Func_e155c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [sp, #0x14]
	ldr	r2, =0x7828
	add	r3, #1
	str	r3, [sp, #0x14]
	mov	r7, r10
	ldr	r3, [r7, r2]
	ldr	r3, [r3, #0x18]
	ldr	r6, =.Leded6
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r6, r3]
	ldr	r1, [sp, #0x14]
	cmp	r1, r3
	beq	.Lc96d0
	b	.Lc9446
.Lc96d0:
	ldr	r0, =Func_cd260
	bl	Func_4278
	ldr	r0, =Func_c91a4
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	bl	Func_c9048
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_c91dc

.thumb_func_start Func_c972c
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
	sub	sp, #0x20
	str	r3, [sp, #0x1c]
	ldr	r3, =0x7828
	mov	r10, r1
	add	r3, r10
	str	r0, [r3]
	ldr	r0, =0x2001
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lc9790	@ 0x100
	ldr	r1, =0x604
	strh	r3, [r2]
	ldr	r0, =0xcc
	add	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r0, =0x76
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	bl	Func_c9048
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc9794	@ 0x3f44
	strh	r3, [r2]
	ldr	r3, .Lc9798	@ 0x3337
	sub	r2, #8
	strh	r3, [r2]
	mov	r1, #7
	mov	r3, #2
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	b	.Lc97bc

	.align	2, 0
.Lc9790:
	.word	0x100
.Lc9794:
	.word	0x3f44
.Lc9798:
	.word	0x3337
	.pool

.Lc97bc:
	bl	Func_ed408
	ldr	r2, [r5, #0x1c]
	mov	r3, #3
	str	r2, [sp, #0x10]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #2
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r5, [r5, #0x20]
	mov	r3, #0
	mov	r8, r3
	mov	r1, #1
	mov	r2, #0x80
	str	r5, [sp, #0x14]
	ldr	r3, =ewram_10158
	neg	r1, r1
	lsl	r2, #2
.Lc97e6:
	mov	r4, #1
	add	r8, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Lc97e6
	mov	r5, #0xe1
	mov	r7, #0
	lsl	r5, #7
	ldr	r6, =.Lededc
	mov	r8, r7
	add	r5, r10
.Lc97fe:
	bl	Func_4458
	mov	r3, #0x3f
	and	r0, r3
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r2, [r3]
	ldr	r3, [r2, #0x18]
	lsl	r3, #2
	add	r3, #2
	ldrb	r3, [r6, r3]
	mov	r1, r8
	mul	r1, r3
	mov	r3, r1
	add	r3, #0x10
	neg	r1, r3
	ldr	r3, [r2, #4]
	cmp	r3, #1
	bne	.Lc9832
	lsr	r3, r1, #31
	add	r3, r1, r3
	asr	r3, #1
	add	r3, r0, r3
	mov	r0, r3
	sub	r0, #0x30
	b	.Lc983e
.Lc9832:
	lsr	r3, r1, #31
	add	r3, r1, r3
	asr	r3, #1
	sub	r3, r0, r3
	mov	r0, r3
	add	r0, #0x48
.Lc983e:
	lsl	r3, r0, #3
	str	r3, [r5]
	lsl	r3, r1, #3
	str	r3, [r5, #4]
	mov	r2, #1
	mov	r3, #1
	neg	r3, r3
	add	r8, r2
	str	r3, [r5, #0x18]
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x40
	bne	.Lc97fe
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lc98c8
	mov	r4, #0
	mov	r8, r4
	ldr	r5, .Lc988c	@ 0x34
	ldr	r1, =ewram_10000
	ldr	r4, .Lc9890	@ 0xb4
	ldr	r0, .Lc9894	@ 0x80
.Lc9870:
	mov	r3, r8
	sub	r3, #8
	cmp	r3, #0x5f
	bhi	.Lc98a8
	mov	r7, r8
	lsr	r3, r7, #31
	add	r3, r8
	asr	r3, #1
	sub	r2, r5, r3
	lsl	r2, #8
	sub	r3, r4, r3
	orr	r2, r3
	strh	r2, [r1]
	b	.Lc98b6

	.align	2, 0
.Lc988c:
	.word	0x34
.Lc9890:
	.word	0xb4
.Lc9894:
	.word	0x80
	.pool

.Lc98a8:
	mov	r2, r8
	cmp	r2, #0x87
	bgt	.Lc98b2
	strh	r0, [r1]
	b	.Lc98b6
.Lc98b2:
	ldr	r3, =0x100
	strh	r3, [r1]
.Lc98b6:
	mov	r3, #1
	add	r8, r3
	mov	r7, r8
	add	r1, #2
	cmp	r7, #0xa0
	bne	.Lc9870
	b	.Lc9916

	.pool_aligned

.Lc98c8:
	mov	r0, #0
	mov	r8, r0
	ldr	r4, =0x70f0
	ldr	r0, =0x100
	ldr	r1, =ewram_10000
.Lc98d2:
	mov	r3, r8
	sub	r3, #8
	cmp	r3, #0x5f
	bhi	.Lc98f0
	mov	r2, r8
	lsr	r3, r2, #31
	add	r3, r8
	asr	r3, #1
	mov	r2, r3
	add	r2, #0x3c
	lsl	r2, #8
	add	r3, #0xbc
	orr	r2, r3
	strh	r2, [r1]
	b	.Lc990a
.Lc98f0:
	mov	r3, r8
	cmp	r3, #0x87
	bgt	.Lc9908
	strh	r4, [r1]
	b	.Lc990a

	.pool_aligned

.Lc9908:
	strh	r0, [r1]
.Lc990a:
	mov	r7, #1
	add	r8, r7
	mov	r2, r8
	add	r1, #2
	cmp	r2, #0xa0
	bne	.Lc98d2
.Lc9916:
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_c91a4
	bl	Func_41d8
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r1, [r3, #0x18]
	cmp	r1, #0
	bne	.Lc993e
	mov	r3, #0xef
	lsl	r3, #7
	add	r3, r10
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, =0x7784
	add	r3, r10
	str	r1, [r3]
	b	.Lc9964
.Lc993e:
	cmp	r1, #1
	bne	.Lc9952
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	b	.Lc9960
.Lc9952:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
.Lc9960:
	add	r2, r10
	str	r3, [r2]
.Lc9964:
	mov	r1, #0x90
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r3, #0
	str	r3, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r4, r10
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x18]
	ldr	r6, =.Lededc
	lsl	r3, #2
	add	r3, #3
	ldrb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lc9988
	b	.Lc9bf4
.Lc9988:
	mov	r7, r10
	add	r5, r7, r2
	ldr	r2, [r5]
	ldr	r3, [r2, #0x18]
	lsl	r3, #2
	add	r3, #3
	ldrb	r3, [r6, r3]
	ldr	r0, [sp, #0x18]
	sub	r3, #0x40
	cmp	r0, r3
	bne	.Lc99a6
	mov	r0, #0x84
	bl	_Func_bd7dc
	ldr	r2, [r5]
.Lc99a6:
	ldr	r3, [r2, #0x18]
	lsl	r3, #2
	ldrb	r3, [r6, r3]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.Lc99b6
	b	.Lc9b6c
.Lc99b6:
	mov	r7, #0xe1
	lsl	r7, #7
	add	r7, r10
.Lc99bc:
	ldr	r2, [r7]
	cmp	r2, #0
	bge	.Lc99c4
	add	r2, #7
.Lc99c4:
	ldr	r3, [r7, #4]
	asr	r6, r2, #3
	cmp	r3, #0
	bge	.Lc99ce
	add	r3, #7
.Lc99ce:
	asr	r5, r3, #3
	mov	r4, #1
	ldr	r3, [r7, #0x18]
	neg	r4, r4
	mov	r2, r3
	cmp	r3, r4
	beq	.Lc99de
	b	.Lc9b14
.Lc99de:
	ldr	r1, =0x604
	mov	r3, #0x18
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x1c]
	mov	r3, r5
	add	r1, r10
	mov	r2, r6
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
	ldr	r3, [r7, #4]
	ldr	r0, =0x27f
	cmp	r3, r0
	bgt	.Lc9a1c
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lc9a0e
	ldr	r3, [r7]
	sub	r3, #0x20
	b	.Lc9a12
.Lc9a0e:
	ldr	r3, [r7]
	add	r3, #0x20
.Lc9a12:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0x40
	str	r3, [r7, #4]
	b	.Lc9b52
.Lc9a1c:
	ldr	r1, =0x7828
	mov	r3, #0
	mov	r0, r10
	str	r3, [r7, #0x18]
	ldr	r3, [r0, r1]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Lededc
	lsl	r3, #2
	add	r3, #1
	ldrb	r3, [r2, r3]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lc9ace
	add	r6, #0xc
	lsl	r5, #16
	mov	r3, #0xff
	str	r6, [sp, #0xc]
	mov	r11, r5
	mov	r9, r3
.Lc9a42:
	mov	r0, r10
	add	r5, r0, r1
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	add	r3, #1
	ldrb	r3, [r2, r3]
	mov	r2, r8
	mul	r2, r3
	add	r2, r4
	lsl	r3, r2, #3
	ldr	r1, =ewram_10140
	sub	r3, r2
	ldr	r2, [sp, #0xc]
	lsl	r3, #2
	add	r6, r3, r1
	lsl	r3, r2, #16
	str	r3, [r6]
	mov	r3, r11
	str	r3, [r6, #4]
	str	r4, [sp, #8]
	bl	Func_4458
	mov	r1, r9
	and	r0, r1
	sub	r0, #0x80
	lsl	r0, #9
	str	r0, [r6, #0xc]
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r4, [sp, #8]
	cmp	r3, #2
	bne	.Lc9a96
	bl	Func_4458
	ldr	r3, =0x1ff
	ldr	r2, =0xfffffe80
	and	r3, r0
	add	r3, r2
	lsl	r3, #10
	str	r3, [r6, #0x10]
	b	.Lc9aa6
.Lc9a96:
	str	r4, [sp, #8]
	bl	Func_4458
	mov	r3, r9
	and	r0, r3
	sub	r0, #0xff
	lsl	r0, #10
	str	r0, [r6, #0x10]
.Lc9aa6:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	ldr	r1, =0x7828
	add	r3, #0x10
	mov	r0, r10
	str	r3, [r6, #0x18]
	ldr	r3, [r0, r1]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Lededc
	lsl	r3, #2
	ldr	r4, [sp, #8]
	add	r3, #1
	ldrb	r3, [r2, r3]
	add	r4, #1
	cmp	r4, r3
	bne	.Lc9a42
.Lc9ace:
	mov	r3, #3
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	bne	.Lc9ade
	mov	r0, #0x84
	bl	_Func_f9080
.Lc9ade:
	ldr	r2, =0x7828
	add	r2, r10
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lc9b52
	mov	r5, r2
	mov	r6, #0x24
.Lc9af0:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r4
	mov	r2, #5
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r4, #1
	add	r6, #2
	cmp	r4, r3
	bne	.Lc9af0
	b	.Lc9b52
.Lc9b14:
	cmp	r2, #3
	bhi	.Lc9b2a
	ldr	r1, =0x844
	mov	r3, #0x18
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x1c]
	mov	r3, r5
	add	r1, r10
	mov	r2, r6
	b	.Lc9b42
.Lc9b2a:
	cmp	r2, #7
	bgt	.Lc9b4a
	mov	r1, #0x2a
	str	r1, [sp]
	str	r1, [sp, #4]
	ldr	r1, =0xa84
	mov	r2, r6
	mov	r3, r5
	sub	r3, #9
	sub	r2, #9
	ldr	r0, [sp, #0x1c]
	add	r1, r10
.Lc9b42:
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
	ldr	r3, [r7, #0x18]
.Lc9b4a:
	cmp	r3, #0xe
	bgt	.Lc9b52
	add	r3, #1
	str	r3, [r7, #0x18]
.Lc9b52:
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	ldr	r1, =.Lededc
	lsl	r3, #2
	mov	r0, #1
	ldrb	r3, [r1, r3]
	add	r8, r0
	add	r7, #0x1c
	cmp	r8, r3
	beq	.Lc9b6c
	b	.Lc99bc
.Lc9b6c:
	mov	r2, #0
	ldr	r6, =Data_ede5c
	ldr	r5, =ewram_10140
	mov	r8, r2
.Lc9b74:
	mov	r3, #1
	ldr	r0, [r5, #0x18]
	neg	r3, r3
	cmp	r0, r3
	beq	.Lc9bb8
	add	r4, r0, #1
	cmp	r4, #6
	ble	.Lc9b86
	mov	r4, #6
.Lc9b86:
	lsl	r0, r4, #1
	sub	r3, r0, #2
	ldrh	r1, [r6, r3]
	mov	r7, #2
	ldrsh	r2, [r5, r7]
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	sub	r2, r4
	sub	r3, r4
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r10
	ldr	r0, [sp, #0x1c]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3c
	lsl	r2, #6
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Lc9bb8:
	mov	r7, #1
	mov	r0, #0x80
	add	r8, r7
	lsl	r0, #2
	add	r5, #0x1c
	cmp	r8, r0
	bne	.Lc9b74
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x18]
	add	r1, #1
	str	r1, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r4, r10
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x18]
	ldr	r6, =.Lededc
	lsl	r3, #2
	add	r3, #3
	ldrb	r3, [r6, r3]
	cmp	r1, r3
	beq	.Lc9bf4
	b	.Lc9988
.Lc9bf4:
	ldr	r0, =Func_c91a4
	bl	Func_4278
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	bl	Func_c9048
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_c972c

.thumb_func_start Func_c9c60
	push	{lr}
	mov	r1, #0
	bl	Func_c9ca8
	pop	{r0}
	bx	r0
.func_end Func_c9c60

.thumb_func_start Func_c9c6c
	push	{lr}
	mov	r1, #1
	bl	Func_c9ca8
	pop	{r0}
	bx	r0
.func_end Func_c9c6c

.thumb_func_start Func_c9c78
	push	{lr}
	mov	r1, #2
	bl	Func_c9ca8
	pop	{r0}
	bx	r0
.func_end Func_c9c78

.thumb_func_start Func_c9c84
	push	{lr}
	mov	r1, #4
	bl	Func_c9ca8
	pop	{r0}
	bx	r0
.func_end Func_c9c84

.thumb_func_start Func_c9c90
	push	{lr}
	mov	r1, #3
	bl	Func_c9ca8
	pop	{r0}
	bx	r0
.func_end Func_c9c90

.thumb_func_start Func_c9c9c
	push	{lr}
	mov	r1, #1
	bl	Func_c9ca8
	pop	{r0}
	bx	r0
.func_end Func_c9c9c

.thumb_func_start Func_c9ca8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x54
	ldr	r6, =iwram_1eec
	str	r1, [sp, #0x44]
	mov	r3, r6
	ldmia	r3!, {r1}
	str	r1, [sp, #0x40]
	ldr	r3, [r3]
	str	r3, [sp, #0x3c]
	mov	r3, r6
	ldr	r2, =0x7828
	sub	r3, #0x6c
	ldr	r3, [r3]
	add	r5, r1, r2
	str	r3, [sp, #0x2c]
	str	r0, [r5]
	mov	r0, #1
	bl	Func_cd594
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lc9d00
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x1c]
	mov	r0, #0x2f
	str	r3, [sp, #0x30]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	b	.Lc9d1c
.Lc9d00:
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r4, [r6, #0x1c]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	str	r4, [sp, #0x30]
.Lc9d1c:
	str	r5, [sp]
	bl	Func_ed408
	ldr	r6, [r6, #0x20]
	str	r6, [sp, #0x34]
	ldr	r0, =0x58
	ldr	r1, [sp, #0x40]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, [sp, #0x44]
	cmp	r0, #4
	bhi	.Lc9d84
	ldr	r3, =.Lc9d40
	lsl	r1, r0, #2
	ldr	r3, [r1, r3]
	mov	pc, r3
	.align	2, 0
.Lc9d40:
	.word	.Lc9d54
	.word	.Lc9d58
	.word	.Lc9d5c
	.word	.Lc9d60
	.word	.Lc9d84
.Lc9d54:
	ldr	r0, =0xb4
	b	.Lc9d86
.Lc9d58:
	ldr	r0, =0xa0
	b	.Lc9d86
.Lc9d5c:
	ldr	r0, =0xcb
	b	.Lc9d86
.Lc9d60:
	ldr	r0, =0x86
	b	.Lc9d86

	.pool_aligned

.Lc9d84:
	ldr	r0, =0xa3
.Lc9d86:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r4, #0xef
	ldr	r3, [sp, #0x40]
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #2
	str	r3, [r2]
	ldr	r0, [sp, #0x40]
	ldr	r1, =0x7784
	mov	r3, #0x32
	add	r2, r0, r1
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x40]
	add	r5, r2, r3
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r1, [r3, #0x14]
	mov	r4, #3
	mov	r2, r1
	mul	r2, r4
	lsl	r3, r2, #1
	ldr	r0, [r0]
	add	r3, r2
	lsl	r3, #1
	mov	r10, r0
	add	r3, #0x30
	mov	r0, #0
	str	r3, [sp, #0x28]
	str	r0, [sp, #0x38]
	cmp	r1, #0
	beq	.Lc9e84
	mov	r9, r0
.Lc9de8:
	ldr	r1, [sp, #0x40]
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x38]
	add	r3, r1, r2
	ldr	r2, [r3]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	mov	r4, r9
	mov	r8, r0
	ldr	r0, [sp, #0x40]
	lsl	r3, r4, #2
	mov	r1, #0xe1
	mov	r2, #0
	add	r3, r0
	lsl	r1, #7
	mov	r11, r2
	add	r7, r3, r1
.Lc9e12:
	mov	r2, r10
	ldr	r3, [r2, #8]
	str	r3, [r7]
	mov	r4, #0xa0
	ldr	r5, [r2, #0xc]
	lsl	r4, #13
	add	r5, r4
	str	r5, [r7, #4]
	ldr	r6, [r2, #0x10]
	str	r6, [r7, #8]
	mov	r1, r8
	ldr	r0, [r1, #8]
	mov	r1, #0x18
	sub	r0, r3
	bl	Func_af0_from_thumb
	str	r0, [r7, #0xc]
	mov	r2, r8
	ldr	r0, [r2, #0xc]
	mov	r3, #0xa0
	lsl	r3, #13
	add	r0, r3
	mov	r1, #0x18
	sub	r0, r5
	bl	Func_af0_from_thumb
	str	r0, [r7, #0x10]
	mov	r4, r8
	ldr	r0, [r4, #0x10]
	mov	r1, #0x18
	sub	r0, r6
	bl	Func_af0_from_thumb
	str	r0, [r7, #0x14]
	mov	r0, #1
	add	r11, r0
	mov	r3, #0
	mov	r1, r11
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r1, #3
	bne	.Lc9e12
	mov	r2, #3
	lsl	r3, r2, #3
	sub	r3, r2
	add	r9, r3
	ldr	r3, [sp, #0x38]
	ldr	r4, [sp, #0x40]
	add	r3, #1
	ldr	r0, =0x7828
	str	r3, [sp, #0x38]
	add	r3, r4, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0x38]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	bne	.Lc9de8
.Lc9e84:
	ldr	r3, [sp, #0x28]
	mov	r2, #0
	mov	r10, r2
	cmp	r3, #0
	bne	.Lc9e90
	b	.Lca1a4
.Lc9e90:
	ldr	r4, [sp, #0x2c]
	sub	r3, #0x10
	add	r4, #0xc
	str	r3, [sp, #0x18]
	str	r4, [sp, #0x1c]
.Lc9e9a:
	ldr	r0, [sp, #0x40]
	mov	r1, #0xd3
	mov	r2, #0
	lsl	r1, #7
	mov	r7, #0x80
	mov	r3, r10
	str	r2, [sp, #0x38]
	add	r6, r0, r1
	lsl	r7, #12
	lsl	r5, r3, #12
.Lc9eae:
	mov	r0, r5
	bl	Func_2322
	lsl	r0, #1
	sub	r0, r7, r0
	asr	r0, #10
	stmia	r6!, {r0}
	ldr	r0, [sp, #0x38]
	mov	r4, #0x80
	lsl	r4, #5
	add	r0, #1
	add	r5, r4
	str	r0, [sp, #0x38]
	cmp	r0, #0xa0
	bne	.Lc9eae
	ldr	r1, [sp, #0x18]
	cmp	r10, r1
	ble	.Lc9ee0
	ldr	r4, [sp, #0x28]
	mov	r0, r10
	ldr	r1, .Lc9f04	@ 0x1000
	ldr	r3, =REG_BLDALPHA
	sub	r2, r4, r0
	orr	r2, r1
	strh	r2, [r3]
.Lc9ee0:
	bl	Func_49ac
	ldr	r1, [sp, #0x1c]
	ldr	r0, [sp, #0x2c]
	bl	Func_51d8
	mov	r1, #0
	ldr	r3, [sp, #0x40]
	ldr	r4, =0x7828
	str	r1, [sp, #0x38]
	add	r2, r3, r4
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Lc9f00
	b	.Lca17c
.Lc9f00:
	b	.Lc9f20

	.align	2, 0
.Lc9f04:
	.word	0x1000
	.pool

.Lc9f20:
	mov	r1, r10
	str	r2, [sp, #0x24]
	mov	r0, #0x24
	mov	r2, #0
	sub	r1, #0x1e
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
.Lc9f32:
	ldr	r3, [sp, #0xc]
	cmp	r10, r3
	bge	.Lc9f3a
	b	.Lca152
.Lc9f3a:
	ldr	r0, [sp, #0x44]
	lsl	r0, #2
	mov	r4, #0
	str	r0, [sp, #0x20]
	mov	r11, r4
	mov	r9, r3
.Lc9f46:
	cmp	r10, r9
	blt	.Lca040
	ldr	r3, [sp, #8]
	add	r3, r11
	lsl	r2, r3, #3
	ldr	r1, [sp, #0x40]
	sub	r2, r3
	lsl	r2, #2
	mov	r3, #0xe1
	add	r2, r1, r2
	lsl	r3, #7
	add	r3, r2
	mov	r8, r3
	add	r6, sp, #0x48
	mov	r0, r8
	mov	r1, r6
	bl	Func_e3944
	ldr	r3, [r6]
	asr	r7, r3, #1
	str	r7, [r6]
	mov	r4, r8
	ldr	r5, [r4, #0x18]
	cmp	r5, #0
	bge	.Lc9f7a
	add	r5, #7
.Lc9f7a:
	asr	r2, r5, #3
	cmp	r2, #5
	ble	.Lc9f82
	mov	r2, #5
.Lc9f82:
	ldr	r3, =.Ledee8
	ldr	r0, [sp, #0x20]
	ldrsb	r3, [r3, r0]
	cmp	r3, #0
	beq	.Lc9fe8
	mov	r1, r10
	lsl	r5, r2, #1
	lsr	r0, r1, #31
	add	r5, r2
	add	r0, r10
	mov	r1, #3
	lsl	r5, #3
	asr	r0, #1
	add	r5, r2
	bl	Func_b1c_from_thumb
	lsl	r2, r0, #2
	add	r2, r0
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #6
	ldr	r2, [sp, #0x40]
	lsl	r5, #5
	add	r5, r3
	ldr	r3, [r6, #4]
	add	r5, r2, r5
	mov	r4, #0x14
	mov	r0, #0x28
	mov	r2, r7
	sub	r2, #0xa
	sub	r3, #0x28
	str	r4, [sp]
	str	r0, [sp, #4]
	mov	r1, r5
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x3c]
	bl	_call_via_r4
	ldr	r2, [r6]
	mov	r0, #0x14
	mov	r1, #0x28
	ldr	r3, [r6, #4]
	sub	r2, #0xa
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x3c]
	mov	r1, r5
	ldr	r4, [sp, #0x34]
	bl	_call_via_r4
	b	.Lca02e
.Lc9fe8:
	lsl	r5, r2, #1
	add	r5, r2
	lsl	r5, #3
	ldr	r0, [sp, #0x40]
	add	r5, r2
	lsl	r5, #5
	mov	r1, #0x96
	ldr	r3, [r6, #4]
	add	r5, r0, r5
	lsl	r1, #6
	add	r5, r1
	mov	r4, #0x14
	mov	r0, #0x28
	mov	r2, r7
	sub	r2, #0xa
	sub	r3, #0x28
	str	r4, [sp]
	str	r0, [sp, #4]
	mov	r1, r5
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x3c]
	bl	_call_via_r4
	ldr	r2, [r6]
	mov	r0, #0x14
	mov	r1, #0x28
	ldr	r3, [r6, #4]
	sub	r2, #0xa
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x3c]
	mov	r1, r5
	ldr	r4, [sp, #0x34]
	bl	_call_via_r4
.Lca02e:
	mov	r0, r8
	mov	r1, #0x40
	mov	r2, #0
	bl	Func_e38b8
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	add	r3, #1
	str	r3, [r0, #0x18]
.Lca040:
	mov	r2, #1
	add	r11, r2
	mov	r1, #6
	mov	r3, r11
	add	r9, r1
	cmp	r3, #3
	beq	.Lca050
	b	.Lc9f46
.Lca050:
	ldr	r3, [sp, #0x20]
	ldr	r1, =.Ledee8
	add	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.Lca0ca
	ldr	r3, [sp, #0xc]
	add	r3, #0x1e
	cmp	r10, r3
	blt	.Lca0ca
	ldr	r3, [sp, #0xc]
	add	r3, #0x3e
	cmp	r10, r3
	bge	.Lca0ca
	ldr	r4, [sp, #0x24]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r4]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r4, [sp, #0xc]
	mov	r3, r10
	sub	r2, r3, r4
	ldr	r3, [sp, #0x10]
	ldr	r0, [r0]
	ldr	r1, =.Ledefc
	cmp	r3, #0
	bge	.Lca08c
	mov	r3, r2
	sub	r3, #0x17
.Lca08c:
	ldr	r2, [sp, #0x10]
	asr	r3, #3
	lsl	r3, #3
	sub	r3, r2, r3
	ldrsb	r3, [r1, r3]
	ldr	r2, [r0, #8]
	lsl	r3, #16
	add	r2, r3
	str	r2, [r0, #8]
	cmp	r2, #0
	ble	.Lca0aa
	mov	r4, #0x80
	lsl	r4, #8
	add	r3, r2, r4
	b	.Lca0ae
.Lca0aa:
	ldr	r1, =0xffff8000
	add	r3, r2, r1
.Lca0ae:
	str	r3, [r0, #8]
	ldr	r2, [sp, #0x24]
	ldr	r3, [r2]
	ldr	r4, [sp, #0x14]
	ldrsh	r0, [r3, r4]
	mov	r3, #0
	mov	r1, #1
	str	r3, [sp]
	neg	r1, r1
	mov	r2, #5
	sub	r3, #1
	bl	Func_d6888
	ldr	r1, =.Ledee8
.Lca0ca:
	ldr	r3, [sp, #0x20]
	add	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.Lca126
	ldr	r3, [sp, #0xc]
	add	r3, #0x18
	cmp	r10, r3
	bne	.Lca106
	mov	r0, #0x85
	bl	_Func_f9080
	ldr	r2, [sp, #0x38]
	cmp	r2, #0
	bne	.Lca0f0
	mov	r0, #1
	neg	r0, r0
	bl	_Func_bd7dc
.Lca0f0:
	ldr	r4, [sp, #0x24]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r4]
	ldrsh	r0, [r3, r1]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x38]
	bl	Func_d6888
.Lca106:
	ldr	r3, [sp, #0xc]
	add	r3, #0x28
	cmp	r10, r3
	bne	.Lca124
	ldr	r4, [sp, #0x24]
	ldr	r3, [r4]
	ldr	r1, [sp, #0x14]
	ldrsh	r0, [r3, r1]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x38]
	bl	Func_d6888
.Lca124:
	ldr	r1, =.Ledee8
.Lca126:
	ldr	r3, [sp, #0x20]
	add	r3, #2
	ldrsb	r1, [r1, r3]
	mov	r3, #1
	neg	r3, r3
	cmp	r1, r3
	beq	.Lca152
	ldr	r3, [sp, #0xc]
	add	r3, #0x18
	cmp	r10, r3
	bne	.Lca152
	ldr	r4, [sp, #0x40]
	ldr	r0, =0x77a8
	mov	r3, #4
	add	r2, r4, r0
	str	r3, [r2]
	ldr	r2, [sp, #0x24]
	ldr	r4, [sp, #0x14]
	ldr	r3, [r2]
	ldrsh	r0, [r3, r4]
	bl	_Func_b8228
.Lca152:
	ldr	r3, [sp, #0x14]
	ldr	r4, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x38]
	add	r3, #2
	sub	r4, #0x20
	add	r0, #0x20
	add	r1, #3
	add	r2, #1
	str	r4, [sp, #0x10]
	str	r3, [sp, #0x14]
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #0x38]
	ldr	r4, [sp, #0x24]
	ldr	r3, [r4]
	ldr	r3, [r3, #0x14]
	cmp	r2, r3
	beq	.Lca17c
	b	.Lc9f32
.Lca17c:
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r1, =0x7824
	ldr	r0, [sp, #0x40]
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	ldr	r3, [sp, #0x28]
	add	r10, r2
	cmp	r10, r3
	beq	.Lca1a4
	b	.Lc9e9a
.Lca1a4:
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
.func_end Func_c9ca8

	.section .rodata

.Leded6:
	.incrom 0xeded6, 0xededc
.Lededc:
	.incrom 0xededc, 0xedee8
.Ledee8:
	.incrom 0xedee8, 0xedefc
.Ledefc:
	.incrom 0xedefc, 0xedf04
