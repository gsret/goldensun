	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_cb1a4
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
	ldr	r2, =0x7828
	mov	r11, r1
	ldr	r3, [r3]
	sub	sp, #0x54
	add	r2, r11
	str	r3, [sp, #0x38]
	str	r0, [r2]
	mov	r0, #0
	mov	r10, r2
	bl	Func_cd594
	ldr	r0, =0x7d
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r11
	add	r2, r11
	str	r5, [r3]
	ldr	r7, [r7, #0x1c]
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	str	r7, [sp, #0x30]
	bl	Func_41d8
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	mov	r1, r10
	ldr	r3, [r1]
	mov	r5, r0
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_b7dd0
	ldr	r7, [r5]
	ldr	r0, [r0]
	mov	r3, #0x5a
	ldr	r5, [r7, #8]
	mov	r8, r3
	ldr	r3, [r0, #8]
	sub	r3, r5
	mov	r9, r0
	mov	r1, #0x64
	mov	r0, r8
	mul	r0, r3
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [sp, #0x2c]
	mov	r4, r9
	ldr	r3, [r4, #0x10]
	ldr	r5, [r7, #0x10]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	mov	r1, r10
	ldr	r3, [r1]
	add	r5, r0
	ldr	r0, [r3, #8]
	bl	_Func_b8530
	str	r0, [sp, #0x28]
	mov	r2, r10
	ldr	r3, [r2]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_Func_b8530
	str	r0, [sp, #0x24]
	mov	r0, r7
	bl	_Func_c4ac
	mov	r3, r5
	ldr	r1, [sp, #0x2c]
	mov	r2, #0
	mov	r0, r7
	bl	_Func_d14c
	mov	r1, #2
	mov	r0, r7
	bl	_Func_c300
	mov	r3, r7
	mov	r2, #1
	add	r3, #0x58
	strb	r2, [r3]
	mov	r5, r7
	mov	r3, #0x80
	add	r5, #0x5a
	lsl	r3, #10
	str	r5, [sp, #0x20]
	strb	r2, [r5]
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r7, #0x30]
	mov	r0, #0x14
	bl	Func_30f8
	mov	r5, #0x2e
	mov	r2, sp
	mov	r3, sp
	mov	r4, #0x38
	add	r2, #0x48
	add	r3, #0x3c
	neg	r4, r4
	neg	r5, r5
	mov	r1, #0
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x18]
	str	r4, [sp, #0x10]
	str	r5, [sp, #0xc]
	mov	r10, r1
.Lcb2c4:
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	mov	r6, r5
	add	r6, #0xc
	bl	Func_49ac
	mov	r1, r6
	mov	r0, r5
	bl	Func_51d8
	mov	r1, r10
	cmp	r1, #0
	bne	.Lcb2f0
	mov	r2, #0xf0
	lsl	r2, #12
	mov	r3, r9
	str	r2, [r3, #0x28]
	ldr	r3, =0x91eb
	mov	r4, r9
	str	r3, [r4, #0x48]
	str	r2, [r7, #0x28]
	str	r3, [r7, #0x48]
.Lcb2f0:
	mov	r1, r10
	cmp	r1, #0xb
	bne	.Lcb314
	mov	r2, r9
	ldr	r3, [r2, #0x1c]
	neg	r3, r3
	str	r3, [r2, #0x1c]
	ldr	r3, [r7, #0x1c]
	neg	r3, r3
	str	r3, [r7, #0x1c]
	ldr	r4, [sp, #0x28]
	ldr	r3, [r7, #0xc]
	add	r3, r4
	str	r3, [r7, #0xc]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r2, #0xc]
	add	r3, r1
	str	r3, [r2, #0xc]
.Lcb314:
	mov	r2, r10
	cmp	r2, #0x36
	bne	.Lcb36c
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
	mov	r3, #0x80
	mov	r1, r9
	lsl	r3, #12
	str	r3, [r1, #0x28]
	ldr	r3, =0xab85
	str	r3, [r1, #0x48]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x28]
	ldr	r3, =0x7851
	str	r3, [r7, #0x48]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x30]
	ldr	r2, [sp, #0x20]
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r7
	bl	_Func_c4ac
	ldr	r3, [r7, #0x10]
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0
	bl	_Func_d14c
.Lcb36c:
	bl	Func_49ac
	mov	r0, r5
	mov	r1, r6
	bl	Func_51d8
	ldr	r3, [r7, #8]
	ldr	r4, [sp, #0x14]
	str	r3, [r4]
	ldr	r3, [r7, #0xc]
	str	r3, [r4, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r4, #8]
	ldr	r0, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	bl	Func_e3944
	ldr	r5, [sp, #0x18]
	ldr	r3, [r5]
	asr	r2, r3, #1
	mov	r3, r10
	sub	r3, #0x36
	str	r2, [r5]
	cmp	r3, #1
	bhi	.Lcb3b6
	ldr	r3, [r5, #4]
	mov	r1, #0x20
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x10
	ldr	r0, [sp, #0x38]
	mov	r1, r11
	ldr	r4, [sp, #0x30]
	bl	_call_via_r4
.Lcb3b6:
	ldr	r5, [sp, #0x10]
	cmp	r5, #0xb
	bhi	.Lcb414
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r3, #11
	ldr	r6, [sp, #0xc]
	mov	r4, #0
	mov	r8, r3
.Lcb3ca:
	lsl	r1, r4, #12
	mov	r0, r1
	str	r1, [sp, #0x1c]
	str	r4, [sp, #8]
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	ldr	r2, [sp, #0x18]
	ldr	r5, [r2]
	asr	r3, #16
	ldr	r0, [sp, #0x1c]
	add	r5, r3
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	mov	r1, r10
	mov	r2, #0x20
	asr	r3, #16
	sub	r3, r1
	sub	r5, #0x10
	str	r2, [sp]
	mov	r1, r11
	mov	r2, #0x40
	str	r2, [sp, #4]
	add	r3, #0x64
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	add	r1, r8
	ldr	r5, [sp, #0x30]
	bl	_call_via_r5
	ldr	r4, [sp, #8]
	add	r4, #1
	cmp	r4, #0x10
	bne	.Lcb3ca
.Lcb414:
	mov	r1, r10
	cmp	r1, #0x40
	bne	.Lcb440
	mov	r2, r9
	ldr	r3, [r2, #0x1c]
	neg	r3, r3
	str	r3, [r2, #0x1c]
	ldr	r3, [r7, #0x1c]
	neg	r3, r3
	str	r3, [r7, #0x1c]
	ldr	r4, [sp, #0x28]
	ldr	r3, [r7, #0xc]
	sub	r3, r4
	str	r3, [r7, #0xc]
	ldr	r5, [sp, #0x24]
	ldr	r3, [r2, #0xc]
	sub	r3, r5
	str	r3, [r2, #0xc]
	mov	r0, r7
	mov	r1, #0
	bl	_Func_c300
.Lcb440:
	mov	r1, r10
	cmp	r1, #0x36
	bne	.Lcb44c
	mov	r0, #0x86
	bl	_Func_bd7dc
.Lcb44c:
	mov	r2, r10
	cmp	r2, #0
	bne	.Lcb460
	mov	r0, #0x88
	bl	_Func_f9080
	ldr	r2, =0x77a8
	mov	r3, #6
	add	r2, r11
	str	r3, [r2]
.Lcb460:
	mov	r3, r10
	cmp	r3, #0x35
	bne	.Lcb46e
	ldr	r2, =0x77a8
	mov	r3, #6
	add	r2, r11
	str	r3, [r2]
.Lcb46e:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	Func_e155c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	ldr	r4, [sp, #0x10]
	ldr	r5, [sp, #0xc]
	add	r10, r1
	add	r4, #1
	add	r5, #1
	mov	r2, r10
	str	r4, [sp, #0x10]
	str	r5, [sp, #0xc]
	cmp	r2, #0x60
	beq	.Lcb49c
	b	.Lcb2c4
.Lcb49c:
	ldr	r0, =Func_cd260
	bl	Func_4278
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
.func_end Func_cb1a4

.thumb_func_start Func_cb4ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1eec
	mov	r3, r6
	ldmia	r3!, {r2}
	ldr	r3, [r3]
	sub	sp, #0x24
	str	r3, [sp, #0xc]
	ldr	r3, =0x7828
	mov	r11, r2
	add	r3, r11
	str	r0, [r3]
	mov	r0, #1
	mov	r8, r3
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lcb554	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Lcb558	@ 0x1000
	add	r2, #0x32
	strh	r3, [r2]
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x1c]
	mov	r1, #7
	str	r3, [sp, #0x10]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x20]
	mov	r0, sp
	add	r0, #0x10
	str	r0, [sp, #8]
	mov	r1, r11
	str	r3, [r0, #4]
	b	.Lcb568

	.align	2, 0
.Lcb554:
	.word	0x100
.Lcb558:
	.word	0x1000
	.pool

.Lcb568:
	mov	r2, #1
	ldr	r0, =0x78
	mov	r3, #1
	bl	Func_e0524
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r11
	str	r5, [r3]
	add	r2, r11
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r2, r8
	ldr	r3, [r2]
	add	r5, sp, #0x18
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	Func_e396c
	ldr	r2, [r5]
	mov	r3, #0x40
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	mov	r5, #0xe1
	str	r3, [r1]
	lsl	r5, #7
	mov	r3, #0
	mov	r9, r3
	add	r5, r11
.Lcb5b2:
	bl	Func_4458
	mov	r1, #0x60
	bl	Func_b50_from_thumb
	mov	r2, r9
	add	r0, #0x10
	str	r0, [r5]
	cmp	r2, #0
	bge	.Lcb5c8
	add	r2, #3
.Lcb5c8:
	asr	r2, #2
	mov	r3, #0x18
	sub	r3, r2
	lsl	r3, #16
	str	r3, [r5, #4]
	cmp	r0, #0x2b
	bgt	.Lcb5da
	mov	r3, #3
	b	.Lcb618
.Lcb5da:
	cmp	r0, #0x33
	bgt	.Lcb5e2
	mov	r3, #2
	b	.Lcb618
.Lcb5e2:
	cmp	r0, #0x3b
	bgt	.Lcb5ea
	mov	r3, #1
	b	.Lcb618
.Lcb5ea:
	cmp	r0, #0x43
	bgt	.Lcb5f2
	mov	r3, #0
	b	.Lcb618
.Lcb5f2:
	cmp	r0, #0x4b
	bgt	.Lcb5fa
	mov	r3, #1
	b	.Lcb616
.Lcb5fa:
	cmp	r0, #0x53
	bgt	.Lcb614
	mov	r3, #2
	b	.Lcb616

	.pool_aligned

.Lcb614:
	mov	r3, #3
.Lcb616:
	neg	r3, r3
.Lcb618:
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0xc]
	lsl	r3, #17
	str	r3, [r5, #0xc]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x10]
	mov	r0, #1
	ldr	r3, [r5]
	add	r9, r0
	lsl	r3, #16
	mov	r2, r9
	str	r3, [r5]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Lcb5b2
	mov	r0, #0xd4
	bl	_Func_f9080
	mov	r3, #0
	mov	r10, r3
.Lcb642:
	mov	r0, r10
	cmp	r0, #0x10
	bgt	.Lcb65c
	ldr	r2, .Lcb674	@ 0x1000
	mov	r3, r10
	orr	r3, r2
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	cmp	r0, #0x10
	bne	.Lcb65c
	ldr	r3, .Lcb678	@ 0
	sub	r2, #2
	strh	r3, [r2]
.Lcb65c:
	mov	r3, r10
	cmp	r3, #0x67
	ble	.Lcb68e
	ldr	r3, .Lcb67c	@ 0x78
	ldr	r2, .Lcb674	@ 0x1000
	mov	r0, r10
	sub	r3, r0
	orr	r3, r2
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	b	.Lcb684

	.align	2, 0
.Lcb674:
	.word	0x1000
.Lcb678:
	.word	0
.Lcb67c:
	.word	0x78
	.pool

.Lcb684:
	cmp	r0, #0x68
	bne	.Lcb68e
	ldr	r3, =0x3f44
	sub	r2, #2
	strh	r3, [r2]
.Lcb68e:
	ldr	r7, =0x7224
	mov	r3, #0xf
	mov	r9, r3
	add	r7, r11
.Lcb696:
	ldr	r6, [r7, #0xc]
	mov	r3, r6
	cmp	r6, #0
	bge	.Lcb6a0
	neg	r3, r6
.Lcb6a0:
	mov	r0, r9
	lsl	r0, #2
	mov	r8, r0
	asr	r4, r3, #17
	mov	r3, r8
	add	r3, #0x19
	cmp	r10, r3
	bge	.Lcb70a
	ldr	r2, =.Ledf88
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	b	.Lcb6c4

	.pool_aligned

.Lcb6c4:
	mov	r3, #2
	ldrsh	r2, [r7, r3]
	ldr	r3, =.Ledf7f
	ldrb	r5, [r3, r4]
	lsr	r3, r5, #1
	sub	r2, r3
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldr	r0, =.Ledf83
	ldrb	r4, [r0, r4]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r5, [sp]
	ldr	r0, [sp, #8]
	str	r4, [sp, #4]
	lsr	r6, #31
	lsl	r6, #2
	ldr	r4, [r6, r0]
	add	r1, r11
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
	mov	r3, r8
	add	r3, #0x10
	cmp	r10, r3
	blt	.Lcb73e
	ldr	r3, [r7]
	ldr	r2, [r7, #0xc]
	add	r3, r2
	str	r3, [r7]
	ldr	r2, [r7, #0x10]
	ldr	r3, [r7, #4]
	add	r3, r2
	str	r3, [r7, #4]
	b	.Lcb73e
.Lcb70a:
	ldr	r2, =.Ledf88
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	mov	r3, #2
	ldrsh	r2, [r7, r3]
	ldr	r3, =.Ledf7f
	ldrb	r5, [r3, r4]
	lsr	r3, r5, #1
	sub	r2, r3
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldr	r0, =.Ledf83
	ldrb	r4, [r0, r4]
	lsr	r0, r4, #1
	sub	r4, #4
	lsr	r6, #31
	sub	r3, r0
	str	r5, [sp]
	ldr	r0, [sp, #8]
	str	r4, [sp, #4]
	lsl	r6, #2
	ldr	r4, [r6, r0]
	add	r1, r11
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
.Lcb73e:
	mov	r2, #1
	neg	r2, r2
	add	r9, r2
	sub	r7, #0x1c
	cmp	r9, r2
	bne	.Lcb696
	mov	r3, r10
	sub	r3, #0x17
	cmp	r3, #0x40
	bhi	.Lcb78c
	mov	r3, #3
	mov	r0, r10
	and	r3, r0
	cmp	r3, #0
	bne	.Lcb78c
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #5
	mov	r3, #0
	mov	r1, #7
	bl	Func_d6888
	ldr	r2, =0x77a8
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, r10
	mov	r3, #7
	and	r3, r0
	cmp	r3, #0
	bne	.Lcb78c
	mov	r0, #0x85
	bl	_Func_f9080
.Lcb78c:
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0x78
	beq	.Lcb7b2
	b	.Lcb642
.Lcb7b2:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cb4ec

.thumb_func_start Func_cb7f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	ldr	r1, =0x782c
	mov	r0, #0x27
	sub	sp, #0x4c
	bl	Func_48b0
	mov	r1, #0x80
	mov	r9, r0
	lsl	r1, #7
	mov	r0, #0x28
	bl	Func_48b0
	ldr	r1, =0x60e
	str	r0, [sp, #0x24]
	mov	r0, #0x29
	bl	Func_48b0
	ldr	r3, =iwram_1e80
	str	r0, [sp, #0x18]
	ldr	r5, =0x7828
	ldr	r3, [r3]
	add	r5, r9
	str	r3, [sp, #0x14]
	mov	r0, #0
	str	r6, [r5]
	bl	Func_cd594
	ldr	r2, =0x77b4
	mov	r3, #0x18
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x77b8
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lcb880	@ 0x100c
	ldr	r6, =0x57
	strh	r3, [r2]
	ldr	r3, .Lcb884	@ 0x100
	sub	r2, #0x32
	strh	r3, [r2]
	mov	r0, r6
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r3, #0
	ldr	r0, =0x76
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	bl	Func_e0524
	ldr	r3, [r5]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.Lcb8bc
	cmp	r3, #1
	bgt	.Lcb8b2
	b	.Lcb8ac

	.align	2, 0
.Lcb880:
	.word	0x100c
.Lcb884:
	.word	0x100
	.pool

.Lcb8ac:
	cmp	r3, #0
	beq	.Lcb8b8
	b	.Lcb8cc
.Lcb8b2:
	cmp	r3, #2
	beq	.Lcb8c0
	b	.Lcb8cc
.Lcb8b8:
	ldr	r0, =0x48
	b	.Lcb8ce
.Lcb8bc:
	mov	r0, r6
	b	.Lcb8ce
.Lcb8c0:
	ldr	r0, =0x47
	b	.Lcb8ce

	.pool_aligned

.Lcb8cc:
	ldr	r0, =0x46
.Lcb8ce:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	ldr	r5, =ewram_10000
	mov	r1, #0
	mov	r8, r1
.Lcb8e6:
	mov	r3, #0
	str	r3, [r5, #4]
	bl	Func_4458
	ldr	r3, =0xffff
	and	r3, r0
	str	r3, [r5]
	bl	Func_4458
	ldr	r3, =0x1ff
	mov	r4, r8
	lsl	r2, r4, #1
	and	r3, r0
	mov	r1, #1
	add	r3, r2
	add	r8, r1
	str	r3, [r5, #8]
	mov	r2, r8
	neg	r3, r4
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x80
	bne	.Lcb8e6
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
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	ldr	r3, =iwram_1e50
	ldr	r1, =0x7828
	add	r3, #0xb8
	add	r1, r9
	ldr	r3, [r3]
	ldr	r2, [r1]
	str	r3, [sp, #0x1c]
	ldr	r3, [r2, #0x18]
	add	r3, #1
	str	r3, [r2, #0x18]
	cmp	r3, #0
	bgt	.Lcb95a
	mov	r3, #1
	str	r3, [r2, #0x18]
.Lcb95a:
	ldr	r2, [r1]
	ldr	r3, [r2, #0x18]
	cmp	r3, #4
	ble	.Lcb966
	mov	r3, #4
	str	r3, [r2, #0x18]
.Lcb966:
	mov	r0, #0xd4
	bl	_Func_f9080
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x14]
	mov	r4, sp
	add	r4, #0x40
	add	r1, #0xc
	add	r2, r9
	mov	r3, #0
	str	r4, [sp, #8]
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x10]
	mov	r10, r3
.Lcb982:
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4]
	ldr	r1, [sp, #8]
	ldr	r0, [r3, #8]
	bl	Func_e3980
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	mov	r4, #0x40
	ldr	r2, =REG_BG2X
	sub	r3, r4, r3
	lsl	r3, #8
	mov	r1, r10
	str	r3, [r2]
	cmp	r1, #0x31
	ble	.Lcb9b2
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, .Lcb9d4	@ 0x70
	sub	r3, r2
	ldr	r2, .Lcb9d8	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	orr	r3, r2
	strh	r3, [r1]
.Lcb9b2:
	mov	r4, r10
	cmp	r4, #0x10
	bne	.Lcba08
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #0x14
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	mov	r3, #0
	bl	Func_d6888
	b	.Lcba08

	.align	2, 0
.Lcb9d4:
	.word	0x70
.Lcb9d8:
	.word	0x1000
	.pool

.Lcba08:
	mov	r3, r10
	cmp	r3, #0x37
	bgt	.Lcbaf4
	lsr	r3, #31
	add	r3, r10
	asr	r3, #1
	mov	r8, r3
	mov	r0, r8
	cmp	r0, #0
	bge	.Lcba1e
	add	r0, #3
.Lcba1e:
	asr	r7, r0, #2
	mov	r11, r7
	mov	r4, r11
	lsl	r3, r4, #2
	mov	r1, r8
	mov	r2, #2
	sub	r7, r1, r3
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r3, =iwram_1f0c
	ldr	r4, [sp, #8]
	lsl	r1, r7, #4
	ldr	r6, [r3]
	add	r1, r7
	ldr	r3, [r4, #4]
	mov	r2, #0x11
	mov	r4, #0x40
	lsl	r1, #6
	str	r2, [sp]
	str	r6, [sp, #0x20]
	add	r1, r9
	sub	r3, #0x40
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	mov	r2, #0x2f
	bl	_call_via_r6
	mov	r0, r10
	cmp	r0, #0
	bge	.Lcba66
	add	r0, #3
.Lcba66:
	mov	r1, #3
	asr	r0, #2
	bl	Func_b1c_from_thumb
	mov	r7, r0
	lsl	r5, r7, #7
	ldr	r2, [sp, #8]
	add	r5, r7
	lsl	r5, #3
	mov	r1, #0x88
	ldr	r3, [r2, #4]
	lsl	r1, #5
	add	r5, r9
	mov	r4, #0x18
	add	r5, r1
	mov	r1, #0x2b
	str	r4, [sp]
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x24]
	sub	r3, #0x24
	mov	r1, r5
	mov	r2, #0x28
	bl	_call_via_r6
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r2, #2
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r3, =iwram_1f0c
	mov	r4, r11
	ldr	r6, [r3]
	mov	r1, r8
	lsl	r3, r4, #2
	ldr	r2, [sp, #8]
	sub	r7, r1, r3
	lsl	r1, r7, #4
	ldr	r3, [r2, #4]
	add	r1, r7
	mov	r4, #0x11
	mov	r2, #0x40
	lsl	r1, #6
	str	r4, [sp]
	str	r2, [sp, #4]
	str	r6, [sp, #0x20]
	add	r1, r9
	sub	r3, #0x40
	ldr	r0, [sp, #0x24]
	bl	_call_via_r6
	ldr	r4, [sp, #8]
	ldr	r3, [r4, #4]
	mov	r1, #0x18
	mov	r2, #0x2b
	str	r1, [sp]
	str	r2, [sp, #4]
	sub	r3, #0x24
	ldr	r0, [sp, #0x24]
	mov	r1, r5
	mov	r2, #0x40
	bl	_call_via_r6
	mov	r0, #0x2f
	bl	Func_2dd8
.Lcbaf4:
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	bl	Func_49ac
	ldr	r1, [sp, #0xc]
	ldr	r0, [sp, #0x14]
	bl	Func_51d8
	ldr	r5, =ewram_10000
	mov	r1, #0
	mov	r8, r1
	add	r7, sp, #0x28
	add	r6, sp, #0x34
.Lcbb14:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Lcbb96
	ldr	r0, [r5]
	bl	Func_2322
	ldr	r3, [r5, #8]
	mul	r3, r0
	asr	r3, #4
	str	r3, [r7]
	ldr	r0, [r5]
	bl	Func_231c
	ldr	r3, [r5, #8]
	mul	r3, r0
	asr	r3, #4
	neg	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r5, #4]
	str	r3, [r7, #4]
	mov	r2, #0x80
	ldr	r3, [r5]
	lsl	r2, #3
	add	r3, r2
	str	r3, [r5]
	mov	r4, #0xa0
	ldr	r3, [r5, #4]
	lsl	r4, #11
	add	r3, r4
	str	r3, [r5, #4]
	ldr	r3, [r5, #8]
	add	r3, #0x40
	str	r3, [r5, #8]
	mov	r1, r6
	mov	r0, r7
	bl	Func_e3944
	ldr	r2, [r6]
	lsr	r3, r2, #31
	add	r2, r3
	asr	r2, #1
	str	r2, [r6]
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4]
	mov	r1, r8
	ldr	r3, [r3, #0x18]
	mov	r0, #1
	and	r0, r1
	add	r0, r3
	lsl	r4, r0, #1
	ldr	r1, =Data_ede5c
	sub	r3, r4, #2
	ldrh	r1, [r1, r3]
	ldr	r3, [sp, #0x18]
	add	r1, r3, r1
	ldr	r3, [r6, #4]
	sub	r2, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
.Lcbb96:
	mov	r1, #1
	add	r8, r1
	add	r3, #1
	mov	r2, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x20
	bne	.Lcbb14
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	cmp	r4, #0x38
	beq	.Lcbbc4
	b	.Lcb982
.Lcbbc4:
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	mov	r0, #0x29
	bl	Func_2dd8
	mov	r0, #0x28
	bl	Func_2dd8
	mov	r0, #0x27
	bl	Func_2dd8
	add	sp, #0x4c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cb7f8

.thumb_func_start Func_cbc0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	ldr	r1, =0x782c
	mov	r0, #0x27
	sub	sp, #0x38
	bl	Func_48b0
	mov	r1, #0x80
	str	r0, [sp, #0x28]
	lsl	r1, #7
	mov	r0, #0x28
	bl	Func_48b0
	ldr	r1, =0x302
	str	r0, [sp, #0x24]
	mov	r0, #0x29
	bl	Func_48b0
	ldr	r3, =iwram_1e74
	ldr	r0, [r3]
	str	r0, [sp, #0x14]
	add	r3, #0x8c
	ldr	r1, [sp, #0x28]
	ldr	r3, [r3]
	ldr	r2, =0x7828
	mov	r9, r3
	add	r3, r1, r2
	str	r5, [r3]
	bl	Func_cd508
	mov	r4, r9
	ldr	r2, =iwram_1ad0
	mov	r3, #1
	str	r3, [r4, #0xc]
	mov	r3, #0x20
	strh	r3, [r2, #6]
	ldr	r7, [sp, #0x14]
	mov	r0, #0xc9
	lsl	r0, #3
	add	r3, r7, r0
	ldrh	r1, [r3]
	mov	r0, #1
	mov	r2, #0
	bl	_Func_c0774
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lcbcac	@ 0x784
	mov	r1, #0
	strh	r3, [r2]
	mov	r0, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	_Func_c0cec
	ldr	r3, =REG_BG2X
	mov	r5, #0
	mov	r1, r9
	str	r5, [r1, #0xc]
	ldr	r2, =REG_BG2Y
	str	r5, [r3]
	ldr	r3, =0xfffff000
	str	r3, [r2]
	ldr	r3, .Lcbcb0	@ 0x80
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =REG_BG2PB
	strh	r5, [r3]
	add	r3, #2
	strh	r5, [r3]
	ldr	r3, .Lcbcb4	@ 0x100
	add	r2, #6
	strh	r3, [r2]
	ldr	r1, .Lcbcb8	@ 0xf0
	b	.Lcbce4

	.align	2, 0
.Lcbcac:
	.word	0x784
.Lcbcb0:
	.word	0x80
.Lcbcb4:
	.word	0x100
.Lcbcb8:
	.word	0xf0
	.pool

.Lcbce4:
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lcbd1c	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lcbd20	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lcbd24	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	mov	r4, #0x80
	ldr	r2, =0x6003800
	mov	r3, #0x80
	mov	r6, #0
	lsl	r3, #1
	lsl	r4, #2
	mov	r12, r6
	mov	r8, r2
	mov	r10, r3
	mov	r14, r4
	mov	r7, #0
	b	.Lcbd34

	.align	2, 0
.Lcbd1c:
	.word	0x1088
.Lcbd20:
	.word	0x3537
.Lcbd24:
	.word	0x3f21
	.pool

.Lcbd34:
	mov	r1, r10
	add	r0, r7, r1
	mov	r4, #0
	lsl	r1, r5, #1
.Lcbd3c:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r11, r3
	mov	r3, r8
	add	r2, r6, r3
	add	r4, #1
	mov	r3, r11
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r6, #2
	cmp	r4, #8
	bne	.Lcbd3c
	mov	r0, #1
	mov	r4, #0x80
	add	r12, r0
	lsl	r4, #5
	mov	r1, r12
	add	r7, r4
	add	r5, #8
	cmp	r1, #0x10
	bne	.Lcbd34
	mov	r1, #0x80
	ldr	r5, =Func_8d4
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcbdb0
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcbdb0:
	strh	r4, [r0]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lcbdf0	@ 0x1010
	strh	r3, [r2]
	ldr	r3, .Lcbdf4	@ 0
	sub	r2, #2
	strh	r3, [r2]
	ldr	r1, [sp, #0x28]
	ldr	r0, =0x44
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r4, #0xef
	ldr	r2, [sp, #0x28]
	lsl	r4, #7
	add	r3, r2, r4
	mov	r5, #1
	str	r5, [r3]
	ldr	r7, [sp, #0x28]
	ldr	r0, =0x7784
	mov	r3, #0
	add	r2, r7, r0
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r1, #7
	mov	r2, #7
	b	.Lcbe1c

	.align	2, 0
.Lcbdf0:
	.word	0x1010
.Lcbdf4:
	.word	0
	.pool

.Lcbe1c:
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r5, =iwram_1e50
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x18]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	mov	r3, #3
	bl	Func_ed408
	add	r5, #0xbc
	ldr	r5, [r5]
	mov	r2, #0xe1
	mov	r1, #0
	lsl	r2, #7
	str	r5, [sp, #0x1c]
	str	r1, [sp, #0xc]
	ldr	r4, =.Lee037
	add	r1, r7, r2
	ldr	r0, =.Lee016
	ldr	r7, =0xffe00000
	ldr	r5, =0xffc40000
	mov	r6, #0
.Lcbe5a:
	ldrb	r2, [r0]
	ldrb	r3, [r4]
	lsl	r2, #16
	lsl	r3, #16
	str	r2, [r1]
	str	r3, [r1, #4]
	add	r2, r7
	add	r3, r5
	asr	r2, #2
	asr	r3, #2
	add	r6, #1
	str	r2, [r1, #0xc]
	str	r3, [r1, #0x10]
	add	r0, #1
	add	r4, #1
	add	r1, #0x1c
	cmp	r6, #0x21
	bne	.Lcbe5a
	mov	r2, #0xf0
	ldr	r3, =Func_1af8
	ldr	r1, =0x6008000
	lsl	r2, #7
	ldr	r0, =ewram_10000
	bl	_call_via_r3
	mov	r1, #0xf0
	ldr	r5, =Func_8d8
	lsl	r1, #7
	ldr	r2, =0x1010101
	ldr	r0, =ewram_10000
	bl	_call_via_r5
	mov	r3, #1
	mov	r4, r9
	str	r3, [r4, #0x10]
	ldr	r2, =iwram_1ad0
	ldr	r7, [sp, #0x28]
	ldr	r0, =0x77a0
	ldrh	r3, [r2, #4]
	add	r1, r7, r0
	str	r3, [r1]
	ldr	r3, =0x77a4
	add	r1, r7, r3
	ldrh	r3, [r2, #6]
	str	r3, [r1]
	ldr	r1, =ewram_2090
	mov	r3, #0
	strh	r3, [r2, #4]
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcbee4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x1f81
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BG1CNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcbee4:
	strh	r4, [r0]
	ldr	r0, =0x50000c0
	mov	r1, #0x80
	lsl	r1, #1
	ldr	r2, =0x7fff7fff
	bl	_call_via_r5
	mov	r0, #0xd4
	bl	_Func_f9080
	ldr	r5, =0x7828
	ldr	r4, [sp, #0x28]
	add	r3, r4, r5
	ldr	r3, [r3]
	mov	r7, #0x24
	ldrsh	r0, [r3, r7]
	mov	r3, #0x1e
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #3
	mov	r3, #0
	bl	Func_d6888
	mov	r0, #0
	str	r0, [sp, #0x20]
.Lcbf16:
	ldr	r1, [sp, #0x20]
	cmp	r1, #2
	bne	.Lcbf22
	mov	r0, #0xd4
	bl	_Func_f9080
.Lcbf22:
	ldr	r2, [sp, #0x20]
	cmp	r2, #3
	bne	.Lcbf2e
	mov	r0, #0xd4
	bl	_Func_f9080
.Lcbf2e:
	ldr	r3, [sp, #0x20]
	cmp	r3, #0x1c
	bne	.Lcbf50
	ldr	r4, [sp, #0x28]
	ldr	r5, =0x7828
	add	r3, r4, r5
	ldr	r3, [r3]
	mov	r7, #0x24
	ldrsh	r0, [r3, r7]
	mov	r3, #1
	mov	r2, #0
	neg	r3, r3
	str	r2, [sp]
	mov	r1, r3
	mov	r2, #3
	bl	Func_d6888
.Lcbf50:
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x20
	bne	.Lcbf5c
	mov	r0, #0x95
	bl	_Func_f9080
.Lcbf5c:
	ldr	r1, [sp, #0x20]
	cmp	r1, #5
	bne	.Lcbf88
	mov	r0, #0x91
	bl	_Func_f9080
	ldr	r4, [sp, #0x28]
	ldr	r5, =0x77a0
	add	r3, r4, r5
	ldr	r2, =iwram_1ad0
	ldr	r3, [r3]
	strh	r3, [r2, #4]
	ldr	r7, [sp, #0x14]
	mov	r0, #0xc9
	lsl	r0, #3
	add	r3, r7, r0
	mov	r2, #1
	ldrh	r1, [r3]
	mov	r0, #1
	neg	r2, r2
	bl	_Func_c08ec
.Lcbf88:
	ldr	r1, [sp, #0x20]
	cmp	r1, #7
	ble	.Lcc072
	ldr	r5, [sp, #0x14]
	ldr	r7, =0x544
	ldr	r2, =0x50000c0
	ldr	r3, .Lcbfa8	@ 0x1f
	mov	r4, #0x1f
	add	r5, r7
	mov	r14, r2
	mov	r6, #0
	mov	r12, r3
	mov	r8, r4
	mov	r9, r5
	b	.Lcc000

	.align	2, 0
.Lcbfa8:
	.word	0x1f
	.pool

.Lcc000:
	mov	r0, r14
	ldrh	r3, [r0]
	mov	r5, r8
	mov	r4, r9
	and	r5, r3
	lsl	r3, #16
	mov	r1, r12
	lsr	r2, r3, #21
	lsr	r0, r3, #26
	ldrh	r3, [r4]
	and	r2, r1
	and	r0, r1
	mov	r1, r8
	and	r1, r3
	lsl	r3, #16
	mov	r7, #2
	mov	r10, r3
	lsr	r4, r3, #21
	add	r9, r7
	mov	r3, r12
	mov	r7, r10
	and	r4, r3
	lsr	r3, r7, #26
	mov	r7, r12
	and	r3, r7
	cmp	r5, r1
	bge	.Lcc03a
	add	r5, #1
	b	.Lcc040
.Lcc03a:
	cmp	r5, r1
	ble	.Lcc040
	sub	r5, #1
.Lcc040:
	cmp	r2, r4
	bge	.Lcc048
	add	r2, #1
	b	.Lcc04e
.Lcc048:
	cmp	r2, r4
	ble	.Lcc04e
	sub	r2, #1
.Lcc04e:
	cmp	r0, r3
	bge	.Lcc056
	add	r0, #1
	b	.Lcc05c
.Lcc056:
	cmp	r0, r3
	ble	.Lcc05c
	sub	r0, #1
.Lcc05c:
	lsl	r3, r0, #10
	lsl	r2, #5
	orr	r3, r2
	mov	r0, r14
	orr	r3, r5
	mov	r1, #2
	add	r6, #1
	strh	r3, [r0]
	add	r14, r1
	cmp	r6, #0x80
	bne	.Lcc000
.Lcc072:
	ldr	r2, [sp, #0x20]
	cmp	r2, #4
	bne	.Lcc086
	mov	r1, #0xf0
	ldr	r3, .Lcc3e4	@ Func_8d8
	ldr	r0, .Lcc3e8	@ 0x6008000
	lsl	r1, #7
	ldr	r2, .Lcc3ec	@ ewram_20202
	bl	_call_via_r3
.Lcc086:
	ldr	r3, [sp, #0x20]
	cmp	r3, #3
	ble	.Lcc08e
	b	.Lcc32a
.Lcc08e:
	lsl	r1, r3, #2
	add	r1, #8
	lsl	r4, r3, #5
	lsl	r2, r1, #5
	lsl	r3, r1, #10
	ldr	r0, .Lcc3f0	@ 0x5000004
	orr	r3, r2
	orr	r3, r1
	str	r4, [sp, #0x10]
	strh	r3, [r0]
	ldr	r5, [sp, #0xc]
	cmp	r5, r4
	bne	.Lcc0aa
	b	.Lcc31c
.Lcc0aa:
	ldr	r7, [sp, #0xc]
	mov	r0, #0
	mov	r1, r7
	mov	r9, r7
	mov	r11, r0
	str	r7, [sp, #8]
	cmp	r1, #0
	bge	.Lcc0bc
	b	.Lcc30e
.Lcc0bc:
	mov	r4, r9
	mov	r3, #0x60
	mov	r5, #0x3c
	mov	r7, r11
	sub	r0, r3, r4
	mov	r2, r9
	mov	r4, r11
	sub	r6, r5, r7
	add	r2, #0x60
	mov	r14, r0
	add	r4, #0x3c
	cmp	r6, #0
	bge	.Lcc0d8
	mov	r6, #0
.Lcc0d8:
	cmp	r4, #0x77
	ble	.Lcc0de
	mov	r4, #0x77
.Lcc0de:
	cmp	r0, #0
	bge	.Lcc0e4
	mov	r0, #0
.Lcc0e4:
	cmp	r2, #0xff
	ble	.Lcc0ea
	mov	r2, #0xff
.Lcc0ea:
	mov	r5, #7
	and	r5, r2
	mov	r3, r2
	cmp	r2, #0
	bge	.Lcc0f6
	add	r3, r2, #7
.Lcc0f6:
	mov	r2, #7
	asr	r1, r3, #3
	and	r2, r4
	mov	r3, r4
	cmp	r4, #0
	bge	.Lcc104
	add	r3, r4, #7
.Lcc104:
	asr	r3, #3
	lsl	r3, #11
	mov	r12, r3
	lsl	r3, r1, #6
	lsl	r7, r2, #3
	add	r4, r3, r5
	ldr	r1, =ewram_10000
	add	r3, r7, r4
	add	r3, r12
	add	r3, r1
	mov	r2, #2
	mov	r1, #7
	strb	r2, [r3]
	and	r1, r6
	mov	r3, r6
	cmp	r6, #0
	bge	.Lcc128
	add	r3, r6, #7
.Lcc128:
	asr	r3, #3
	lsl	r5, r1, #3
	lsl	r6, r3, #11
	ldr	r2, =ewram_10000
	add	r3, r5, r4
	add	r3, r6, r3
	add	r3, r2
	mov	r2, #2
	strb	r2, [r3]
	mov	r3, #7
	and	r3, r0
	mov	r1, r0
	cmp	r0, #0
	bge	.Lcc146
	add	r1, r0, #7
.Lcc146:
	asr	r1, #3
	lsl	r1, #6
	add	r1, r3
	add	r3, r7, r1
	ldr	r4, =ewram_10000
	add	r3, r12
	add	r1, r5, r1
	add	r3, r4
	mov	r2, #2
	add	r1, r6, r1
	mov	r0, r14
	strb	r2, [r3]
	add	r1, r4
	mov	r3, #2
	mov	r2, r9
	add	r0, #1
	strb	r3, [r1]
	add	r2, #0x61
	cmp	r0, #0
	bge	.Lcc170
	mov	r0, #0
.Lcc170:
	cmp	r2, #0xff
	ble	.Lcc176
	mov	r2, #0xff
.Lcc176:
	mov	r1, #7
	and	r1, r2
	mov	r3, r2
	cmp	r2, #0
	bge	.Lcc182
	add	r3, r2, #7
.Lcc182:
	asr	r3, #3
	lsl	r3, #6
	add	r3, r1
	add	r2, r7, r3
	ldr	r1, =ewram_10000
	add	r2, r12
	add	r2, r1
	mov	r1, #2
	strb	r1, [r2]
	add	r3, r5, r3
	ldr	r2, =ewram_10000
	add	r3, r6, r3
	add	r3, r2
	strb	r1, [r3]
	mov	r3, #7
	and	r3, r0
	mov	r1, r0
	cmp	r0, #0
	bge	.Lcc1aa
	add	r1, r0, #7
.Lcc1aa:
	asr	r1, #3
	lsl	r1, #6
	add	r1, r3
	add	r3, r7, r1
	ldr	r4, =ewram_10000
	add	r1, r5, r1
	add	r3, r12
	add	r3, r4
	mov	r2, #2
	add	r1, r6, r1
	strb	r2, [r3]
	add	r1, r4
	mov	r3, #2
	mov	r5, #0x60
	mov	r7, r11
	strb	r3, [r1]
	mov	r2, r11
	sub	r0, r5, r7
	mov	r4, r9
	mov	r1, #0x3c
	mov	r3, r9
	add	r2, #0x60
	mov	r10, r0
	add	r4, #0x3c
	sub	r6, r1, r3
	cmp	r0, #0
	bge	.Lcc1e2
	mov	r0, #0
.Lcc1e2:
	cmp	r2, #0xff
	ble	.Lcc1e8
	mov	r2, #0xff
.Lcc1e8:
	cmp	r6, #0
	bge	.Lcc1ee
	mov	r6, #0
.Lcc1ee:
	cmp	r4, #0x77
	ble	.Lcc1f4
	mov	r4, #0x77
.Lcc1f4:
	mov	r5, #7
	and	r5, r2
	mov	r3, r2
	cmp	r2, #0
	bge	.Lcc200
	add	r3, r2, #7
.Lcc200:
	mov	r2, #7
	asr	r1, r3, #3
	and	r2, r4
	mov	r3, r4
	cmp	r4, #0
	bge	.Lcc20e
	add	r3, r4, #7
.Lcc20e:
	asr	r3, #3
	lsl	r3, #11
	mov	r8, r3
	lsl	r3, r1, #6
	lsl	r2, #3
	add	r5, r3, r5
	add	r3, r2, r5
	ldr	r7, =ewram_10000
	add	r3, r8
	add	r3, r7
	mov	r14, r2
	mov	r1, #7
	mov	r2, #2
	strb	r2, [r3]
	and	r1, r6
	mov	r3, r6
	cmp	r6, #0
	bge	.Lcc234
	add	r3, r6, #7
.Lcc234:
	asr	r3, #3
	lsl	r3, #11
	lsl	r7, r1, #3
	mov	r12, r3
	ldr	r1, =ewram_10000
	add	r3, r7, r5
	add	r3, r12
	add	r3, r1
	mov	r2, #2
	strb	r2, [r3]
	mov	r3, #7
	and	r3, r0
	mov	r1, r0
	cmp	r0, #0
	bge	.Lcc254
	add	r1, r0, #7
.Lcc254:
	asr	r1, #3
	lsl	r1, #6
	add	r1, r3
	mov	r5, r14
	ldr	r0, =ewram_10000
	add	r3, r5, r1
	add	r1, r7, r1
	add	r3, r8
	add	r1, r12
	add	r3, r0
	mov	r2, #2
	add	r1, r0
	mov	r0, r10
	strb	r2, [r3]
	add	r0, #1
	mov	r3, #2
	mov	r2, r11
	strb	r3, [r1]
	add	r2, #0x61
	cmp	r0, #0
	bge	.Lcc280
	mov	r0, #0
.Lcc280:
	cmp	r2, #0xff
	ble	.Lcc286
	mov	r2, #0xff
.Lcc286:
	mov	r1, #7
	mov	r10, r1
	mov	r3, r10
	mov	r1, r2
	and	r1, r3
	mov	r3, r2
	cmp	r2, #0
	bge	.Lcc298
	add	r3, r2, #7
.Lcc298:
	asr	r3, #3
	lsl	r3, #6
	add	r1, r3, r1
	mov	r5, r14
	add	r3, r5, r1
	ldr	r5, =ewram_10000
	add	r3, r8
	add	r3, r5
	mov	r5, #2
	strb	r5, [r3]
	add	r3, r7, r1
	ldr	r1, =ewram_10000
	add	r3, r12
	add	r3, r1
	strb	r5, [r3]
	mov	r2, r0
	mov	r3, r10
	and	r2, r3
	mov	r3, r0
	cmp	r0, #0
	bge	.Lcc2c4
	add	r3, r0, #7
.Lcc2c4:
	asr	r3, #3
	lsl	r3, #6
	add	r1, r3, r2
	mov	r4, r14
	add	r3, r4, r1
	ldr	r2, =ewram_10000
	add	r3, r8
	add	r3, r2
	strb	r5, [r3]
	ldr	r4, =ewram_10000
	add	r3, r7, r1
	add	r3, r12
	add	r3, r4
	mov	r5, #2
	strb	r5, [r3]
	ldr	r0, [sp, #8]
	mov	r7, r11
	lsl	r3, r7, #1
	sub	r3, r0, r3
	sub	r3, #1
	str	r3, [sp, #8]
	cmp	r3, #0
	bge	.Lcc304
	mov	r1, r9
	ldr	r2, [sp, #8]
	lsl	r3, r1, #1
	add	r3, r2, r3
	sub	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
.Lcc304:
	mov	r4, #1
	add	r11, r4
	cmp	r9, r11
	blt	.Lcc30e
	b	.Lcc0bc
.Lcc30e:
	ldr	r5, [sp, #0xc]
	ldr	r7, [sp, #0x10]
	add	r5, #1
	str	r5, [sp, #0xc]
	cmp	r5, r7
	beq	.Lcc31c
	b	.Lcc0aa
.Lcc31c:
	mov	r2, #0xf0
	ldr	r3, =Func_1af8
	ldr	r0, .Lcc3e8	@ 0x6008000
	ldr	r1, =ewram_10000
	lsl	r2, #7
	bl	_call_via_r3
.Lcc32a:
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x32
	bgt	.Lcc37a
	ldr	r1, [sp, #0x28]
	mov	r2, #0xe1
	lsl	r2, #7
	mov	r6, #0
	add	r5, r1, r2
.Lcc33a:
	ldr	r2, =.Ledfd2
	ldr	r0, =.Ledf90
	lsl	r3, r6, #1
	ldrh	r1, [r2, r3]
	ldrb	r0, [r0, r6]
	ldr	r3, [sp, #0x28]
	mov	r4, #2
	ldrsh	r2, [r5, r4]
	add	r1, r3, r1
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	ldr	r0, =.Ledfb1
	ldrb	r0, [r0, r6]
	ldr	r4, [sp, #0x18]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	ldr	r7, [sp, #0x20]
	cmp	r7, #3
	ble	.Lcc372
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x40
	lsl	r2, #7
	bl	Func_e3908
.Lcc372:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #0x21
	bne	.Lcc33a
.Lcc37a:
	ldr	r1, [sp, #0x20]
	sub	r1, #8
	cmp	r1, #0x2a
	bhi	.Lcc396
	mov	r0, r1
	cmp	r0, #0x1f
	ble	.Lcc38a
	mov	r0, #0x1f
.Lcc38a:
	lsl	r2, r0, #10
	lsl	r1, r0, #5
	ldr	r3, =0x5000002
	orr	r2, r1
	orr	r2, r0
	strh	r2, [r3]
.Lcc396:
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x33
	bne	.Lcc46c
	ldr	r0, =0x7d
	ldr	r1, [sp, #0x28]
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x5000002
	mov	r6, #1
.Lcc3ac:
	lsr	r3, r6, #31
	add	r3, r6, r3
	asr	r1, r3, #1
	cmp	r1, #0
	bge	.Lcc3b8
	mov	r1, #0
.Lcc3b8:
	lsr	r3, r1, #31
	add	r3, r1, r3
	asr	r3, #1
	lsl	r2, r1, #10
	lsl	r3, #5
	orr	r2, r3
	orr	r2, r1
	add	r6, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r6, #0x40
	bne	.Lcc3ac
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lcc3f4	@ 0x3f44
	strh	r3, [r2]
	ldr	r2, [sp, #0x28]
	mov	r3, #0xe1
	mov	r1, #0x1f
	lsl	r3, #7
	mov	r6, #0
	b	.Lcc418

	.align	2, 0
.Lcc3e4:
	.word	Func_8d8
.Lcc3e8:
	.word	0x6008000
.Lcc3ec:
	.word	ewram_20202
.Lcc3f0:
	.word	0x5000004
.Lcc3f4:
	.word	0x3f44
	.pool

.Lcc418:
	mov	r8, r1
	add	r5, r2, r3
	mov	r7, #0
.Lcc41e:
	bl	Func_4458
	mov	r4, r8
	and	r0, r4
	add	r0, #0x20
	lsl	r0, #16
	str	r0, [r5]
	bl	Func_4458
	mov	r1, r8
	and	r0, r1
	add	r0, #0x50
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	ldr	r3, =0x1ff
	ldr	r2, =0xffffff00
	and	r3, r0
	add	r3, r2
	lsl	r3, #12
	add	r6, #1
	str	r3, [r5, #0xc]
	str	r7, [r5, #0x10]
	str	r7, [r5, #0x18]
	add	r5, #0x1c
	cmp	r6, #0x20
	bne	.Lcc41e
	ldr	r3, [sp, #0x28]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #2
	str	r3, [r2]
	ldr	r5, [sp, #0x28]
	ldr	r7, =0x7784
	mov	r3, #0x32
	add	r2, r5, r7
	str	r3, [r2]
.Lcc46c:
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x34
	ble	.Lcc4de
	ldr	r1, [sp, #0x28]
	mov	r2, #0xe1
	lsl	r2, #7
	mov	r6, #0
	add	r5, r1, r2
.Lcc47c:
	mov	r3, r6
	cmp	r6, #0
	bge	.Lcc484
	add	r3, r6, #3
.Lcc484:
	asr	r3, #2
	ldr	r4, [sp, #0x20]
	add	r3, #0x34
	cmp	r4, r3
	blt	.Lcc4d6
	ldr	r3, [r5, #0x18]
	cmp	r3, #0x27
	bgt	.Lcc4d6
	mov	r1, r3
	cmp	r1, #0
	bge	.Lcc49c
	add	r1, #3
.Lcc49c:
	asr	r1, #2
	cmp	r1, #5
	ble	.Lcc4a4
	mov	r1, #5
.Lcc4a4:
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	ldr	r7, [sp, #0x28]
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	mov	r0, #0x20
	str	r0, [sp]
	lsl	r1, #11
	mov	r0, #0x40
	add	r1, r7, r1
	sub	r3, #0x20
	str	r0, [sp, #4]
	sub	r2, #0x10
	ldr	r0, [sp, #0x24]
	ldr	r7, [sp, #0x1c]
	bl	_call_via_r7
	mov	r0, r5
	mov	r1, #0x3c
	ldr	r2, =0xfffff000
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
.Lcc4d6:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #0x20
	bne	.Lcc47c
.Lcc4de:
	bl	Func_cd52c
	ldr	r1, =0x7824
	ldr	r0, [sp, #0x28]
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x20]
	add	r2, #1
	str	r2, [sp, #0x20]
	cmp	r2, #0x80
	beq	.Lcc4fe
	b	.Lcbf16
.Lcc4fe:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_cd260
	bl	Func_4278
	ldr	r5, =0x7828
	ldr	r4, [sp, #0x28]
	add	r3, r4, r5
	ldr	r3, [r3]
	mov	r7, #0x24
	ldrsh	r0, [r3, r7]
	mov	r3, #1
	neg	r3, r3
	mov	r2, #0
	str	r2, [sp]
	mov	r1, r3
	mov	r2, #1
	bl	Func_d6888
	ldr	r1, =0x77a0
	ldr	r0, [sp, #0x28]
	add	r3, r0, r1
	ldr	r2, =iwram_1ad0
	ldr	r3, [r3]
	strh	r3, [r2, #4]
	mov	r3, #0x20
	strh	r3, [r2, #6]
	ldr	r2, [sp, #0x14]
	mov	r4, #0xc9
	lsl	r4, #3
	add	r3, r2, r4
	ldrh	r1, [r3]
	mov	r2, #0
	mov	r0, #2
	bl	_Func_c0774
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcc582
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7541
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcc582:
	strh	r4, [r0]
	mov	r0, #0x29
	bl	Func_2dd8
	mov	r0, #0x28
	bl	Func_2dd8
	mov	r0, #0x27
	bl	Func_2dd8
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cbc0c

	.section .rodata

.Ledf7f:
	.incrom 0xedf7f, 0xedf83
.Ledf83:
	.incrom 0xedf83, 0xedf88
.Ledf88:
	.incrom 0xedf88, 0xedf90
.Ledf90:
	.incrom 0xedf90, 0xedfb1
.Ledfb1:
	.incrom 0xedfb1, 0xedfd2
.Ledfd2:
	.incrom 0xedfd2, 0xee016
.Lee016:
	.incrom 0xee016, 0xee037
.Lee037:
	.incrom 0xee037, 0xee058
