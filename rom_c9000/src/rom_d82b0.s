	.include "macros.inc"

.thumb_func_start Func_d82b0
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
	sub	sp, #0x38
	str	r1, [sp, #0x1c]
	ldr	r3, [r3]
	str	r3, [sp, #0x18]
	ldr	r2, [r5, #8]
	ldr	r4, =0x7828
	str	r2, [sp, #0x10]
	mov	r3, r5
	sub	r3, #0x6c
	ldr	r6, [r3]
	add	r3, r1, r4
	str	r0, [r3]
	mov	r0, #1
	bl	Func_cd594
	mov	r2, #0
	ldr	r1, [sp, #0x10]
	mov	r3, #0
	ldr	r0, =0x73
	bl	Func_e0524
	ldr	r0, =0xb9
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r5, [r5, #0x1c]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x80
	str	r5, [sp, #0x14]
	ldr	r3, =ewram_10018
	mov	r8, r0
	neg	r1, r1
	lsl	r2, #3
.Ld8324:
	mov	r4, #1
	add	r8, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Ld8324
	bl	Func_49ac
	mov	r1, r6
	add	r1, #0xc
	mov	r0, r6
	bl	Func_51d8
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r11, r0
	cmp	r3, #0
	beq	.Ld8436
	mov	r3, #0x2c
	mov	r4, #0x20
	mov	r0, #0x24
	mov	r1, #0
	add	r3, sp
	add	r4, sp
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	mov	r9, r3
	mov	r10, r4
.Ld8362:
	ldr	r3, [sp, #0x1c]
	add	r5, r3, r2
	ldr	r4, [sp, #0xc]
	ldr	r3, [r5]
	ldrsh	r0, [r3, r4]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r2, [sp, #0xc]
	ldr	r6, [r0]
	ldrsh	r0, [r3, r2]
	bl	_Func_b8530
	lsr	r3, r0, #31
	add	r0, r3
	ldr	r3, [r6, #8]
	mov	r1, r9
	asr	r0, #1
	str	r0, [r1, #4]
	str	r3, [r1]
	ldr	r3, [r6, #0x10]
	mov	r0, r9
	str	r3, [r1, #8]
	mov	r1, r10
	bl	Func_e3944
	mov	r2, r10
	ldr	r3, [r2]
	asr	r3, #1
	str	r3, [r2]
	ldr	r4, [sp, #8]
	ldr	r0, =ewram_10000
	mov	r3, #0
	mov	r8, r3
	add	r7, r4, r0
.Ld83a8:
	bl	Func_4458
	mov	r1, #0xff
	mov	r6, r0
	and	r6, r1
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	Func_2322
	mov	r2, r6
	mul	r2, r0
	mov	r4, r10
	ldr	r3, [r4]
	asr	r2, #7
	lsl	r3, #16
	add	r2, r3
	str	r2, [r7]
	mov	r0, r5
	bl	Func_231c
	mov	r2, r6
	mul	r2, r0
	mov	r0, r10
	ldr	r3, [r0, #4]
	asr	r2, #3
	lsl	r3, #16
	add	r2, r3
	str	r2, [r7, #4]
	bl	Func_4458
	mov	r1, #0xff
	and	r0, r1
	mov	r3, #0x80
	sub	r3, r0
	lsl	r3, #9
	str	r3, [r7, #0xc]
	bl	Func_4458
	mov	r2, #0xff
	mov	r3, #0
	and	r0, r2
	str	r3, [r7, #0x18]
	neg	r0, r0
	mov	r3, #1
	sub	r0, #0x80
	add	r8, r3
	lsl	r0, #10
	mov	r4, r8
	str	r0, [r7, #0x10]
	add	r7, #0x1c
	cmp	r4, #0x80
	bne	.Ld83a8
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #8]
	mov	r2, #0xe0
	lsl	r2, #4
	add	r1, r2
	add	r0, #2
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x1c]
	add	r11, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r11, r3
	bne	.Ld8362
.Ld8436:
	ldr	r0, [sp, #0x1c]
	mov	r1, #0xef
	lsl	r1, #7
	add	r2, r0, r1
	mov	r3, #2
	str	r3, [r2]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r0, r3
	mov	r3, #0x32
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x1c]
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r2, #0x38
	mov	r4, #0
	lsl	r3, #2
	neg	r2, r2
	mov	r9, r4
	cmp	r3, r2
	bne	.Ld8472
	b	.Ld8578
.Ld8472:
	add	r6, r0, r1
.Ld8474:
	mov	r3, r9
	cmp	r3, #0x20
	bne	.Ld8480
	mov	r0, #0
	bl	_Func_bd7dc
.Ld8480:
	ldr	r3, [r6]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r11, r4
	cmp	r3, #0
	beq	.Ld854e
	mov	r0, #0
	mov	r7, #0
	mov	r10, r0
.Ld8492:
	cmp	r9, r7
	bne	.Ld84b6
	mov	r0, #0x8f
	bl	_Func_f9080
	mov	r1, r11
	ldr	r2, [r6]
	lsl	r3, r1, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	mov	r3, #0x14
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	mov	r3, r11
	bl	Func_d6888
.Ld84b6:
	cmp	r9, r7
	ble	.Ld853a
	ldr	r5, =ewram_10000
	mov	r0, #0
	mov	r8, r0
	add	r5, r10
.Ld84c2:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld852e
	mov	r1, #3
	mov	r0, r8
	bl	Func_b1c_from_thumb
	add	r0, #1
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x10]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r14, r2
	mov	r3, #6
	ldrsh	r2, [r5, r3]
	str	r0, [sp]
	sub	r3, r2, r0
	str	r4, [sp, #4]
	mov	r2, r14
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
	mov	r0, #3
	mov	r3, r8
	ldr	r2, =.Lee9f8
	and	r3, r0
	lsl	r3, #2
	ldr	r2, [r2, r3]
	mov	r0, r5
	mov	r1, #0x3e
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	ble	.Ld852e
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	cmp	r3, #0x70
	ble	.Ld852e
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ld852e:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x80
	bne	.Ld84c2
.Ld853a:
	ldr	r3, [r6]
	mov	r4, #0xe0
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	lsl	r4, #4
	add	r11, r0
	add	r7, #0x14
	add	r10, r4
	cmp	r11, r3
	bne	.Ld8492
.Ld854e:
	bl	Func_cd52c
	ldr	r3, =0x7824
	ldr	r1, [sp, #0x1c]
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r6]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r4, #1
	lsl	r3, #2
	add	r9, r4
	add	r3, #0x38
	cmp	r9, r3
	beq	.Ld8578
	b	.Ld8474
.Ld8578:
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
.func_end Func_d82b0

.thumb_func_start Func_d85d0
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
	sub	sp, #0x40
	str	r3, [sp, #0x30]
	ldr	r3, [r2, #8]
	str	r3, [sp, #0x28]
	sub	r2, #0x6c
	ldr	r2, [r2]
	str	r2, [sp, #0x24]
	ldr	r3, [r0, #0x18]
	neg	r5, r3
	orr	r5, r3
	ldr	r3, =0x7828
	mov	r9, r1
	add	r3, r9
	str	r0, [r3]
	mov	r0, #1
	bl	Func_cd594
	lsr	r5, #31
	ldr	r0, =0x73
	ldr	r1, [sp, #0x28]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	cmp	r5, #0
	bne	.Ld861e
	ldr	r0, =0xb9
	b	.Ld8620
.Ld861e:
	ldr	r0, =0xc0
.Ld8620:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r7, #0
	neg	r1, r1
	lsl	r2, #3
.Ld863e:
	add	r7, #1
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r7, r2
	bne	.Ld863e
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r8, r4
	cmp	r3, #0
	beq	.Ld86f0
	mov	r3, #0x24
	mov	r1, #0xff
	str	r3, [sp, #0x18]
	str	r4, [sp, #0x10]
	mov	r11, r1
.Ld8662:
	mov	r4, r9
	add	r5, r4, r2
	ldr	r3, [r5]
	ldr	r1, [sp, #0x18]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r4, [sp, #0x18]
	ldr	r6, [r0]
	ldrsh	r0, [r3, r4]
	bl	_Func_b8530
	lsr	r3, r0, #31
	add	r0, r3
	ldr	r2, [sp, #0x10]
	ldr	r3, =ewram_10000
	asr	r0, #1
	mov	r10, r0
	mov	r7, #0
	add	r5, r2, r3
.Ld868c:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	add	r3, r10
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r4, r11
	and	r0, r4
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r1, r11
	and	r0, r1
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r2, r11
	and	r0, r2
	sub	r0, #0x80
	lsl	r0, #10
	mov	r3, #0
	add	r7, #1
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x80
	bne	.Ld868c
	ldr	r3, [sp, #0x18]
	ldr	r4, [sp, #0x10]
	mov	r0, #0xe0
	lsl	r0, #4
	add	r3, #2
	add	r4, r0
	str	r4, [sp, #0x10]
	str	r3, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	mov	r1, #1
	ldr	r3, [r3, #0x14]
	add	r8, r1
	cmp	r8, r3
	bne	.Ld8662
.Ld86f0:
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
	mov	r2, #0xef
	lsl	r2, #7
	str	r3, [sp, #0x2c]
	add	r2, r9
	mov	r3, #3
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r3, =0x4040404
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #0x8e
	bl	_Func_f9080
	ldr	r1, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r1]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r4, #0x48
	mov	r0, #0
	lsl	r3, #2
	neg	r4, r4
	mov	r11, r0
	cmp	r3, r4
	bne	.Ld8746
	b	.Ld88e4
.Ld8746:
	ldr	r0, [sp, #0x24]
	add	r0, #0xc
	str	r0, [sp, #0x1c]
.Ld874c:
	mov	r2, r9
	add	r5, r2, r1
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r10, r0
	ldr	r0, [r3, #8]
	bl	_Func_b8530
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	mov	r3, r11
	str	r0, [sp, #0x20]
	cmp	r3, #0x40
	bne	.Ld8778
	mov	r0, #0x85
	bl	_Func_bd7dc
.Ld8778:
	bl	Func_49ac
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x1c]
	bl	Func_51d8
	mov	r4, r11
	cmp	r4, #0x28
	bne	.Ld879e
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Ld879e:
	ldr	r1, [r5]
	ldr	r2, [r1, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	add	r3, #0x34
	cmp	r11, r3
	bne	.Ld87c2
	mov	r3, #0
	mov	r2, #1
	ldr	r0, [r1, #8]
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
	ldr	r1, [r5]
.Ld87c2:
	ldr	r3, [r1, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Ld88b8
	str	r0, [sp, #8]
	str	r0, [sp, #0x14]
.Ld87d0:
	ldr	r1, [sp, #8]
	cmp	r11, r1
	bne	.Ld87f2
	ldr	r3, =0x7828
	mov	r4, r8
	add	r3, r9
	ldr	r2, [r3]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r8
	bl	Func_d6888
.Ld87f2:
	ldr	r2, [sp, #8]
	cmp	r11, r2
	ble	.Ld8898
	ldr	r3, [sp, #0x14]
	ldr	r4, =ewram_10000
	mov	r7, #0
	add	r6, sp, #0x34
	add	r5, r3, r4
.Ld8802:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld8890
	mov	r1, r6
	mov	r0, r5
	bl	Func_e3944
	ldr	r2, [r6]
	ldr	r3, =Data_ede48
	asr	r2, #1
	str	r2, [r6]
	ldrh	r1, [r3, #0xa]
	ldr	r0, [sp, #0x28]
	ldr	r3, [r6, #4]
	add	r1, r0, r1
	mov	r4, #6
	mov	r0, #0xc
	sub	r3, #6
	str	r4, [sp]
	str	r0, [sp, #4]
	sub	r2, #3
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x2c]
	bl	_call_via_r4
	mov	r0, r5
	mov	r1, #0x3e
	mov	r2, #0
	bl	Func_e38b8
	ldr	r0, [sp, #8]
	add	r3, r0, r7
	add	r3, #0xa
	cmp	r11, r3
	ble	.Ld8890
	mov	r1, r10
	ldr	r0, [r1, #8]
	ldr	r3, [r5]
	ldr	r2, [sp, #0x20]
	ldr	r1, [r1, #0xc]
	sub	r0, r3
	ldr	r3, [r5, #4]
	add	r1, r2
	sub	r1, r3
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	ldr	r3, [r5, #8]
	sub	r2, r3
	ldr	r3, [r5, #0xc]
	asr	r0, #8
	add	r3, r0
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	asr	r1, #8
	add	r3, r1
	str	r3, [r5, #0x10]
	ldr	r4, =0xfff
	ldr	r3, [r5, #0x14]
	asr	r2, #8
	ldr	r1, =0x1ffe
	add	r3, r2
	add	r0, r4
	str	r3, [r5, #0x14]
	cmp	r0, r1
	bhi	.Ld8890
	add	r3, r2, r4
	cmp	r3, r1
	bhi	.Ld8890
	mov	r0, #1
	neg	r0, r0
	str	r0, [r5, #0x18]
.Ld8890:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x20
	bne	.Ld8802
.Ld8898:
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x14]
	mov	r3, #0xe0
	lsl	r3, #4
	add	r2, r3
	add	r1, #0x14
	ldr	r3, =0x7828
	str	r1, [sp, #8]
	str	r2, [sp, #0x14]
	add	r3, r9
	ldr	r3, [r3]
	mov	r4, #1
	ldr	r3, [r3, #0x14]
	add	r8, r4
	cmp	r8, r3
	bne	.Ld87d0
.Ld88b8:
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r1]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r0, #1
	lsl	r3, #2
	add	r11, r0
	add	r3, #0x48
	cmp	r11, r3
	beq	.Ld88e4
	b	.Ld874c
.Ld88e4:
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
.func_end Func_d85d0

	.section .rodata

.Lee9f8:
	.incrom 0xee9f8, 0xeea08
