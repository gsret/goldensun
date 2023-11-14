	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_cfef4
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
	sub	sp, #0x4c
	str	r1, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	add	r1, r3
	str	r0, [r1]
	mov	r2, #0
	mov	r0, #0
	mov	r8, r1
	mov	r10, r2
	bl	Func_cdb24
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lcff60	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Lcff64	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r0, =0xab
	bl	Func_2f40
	mov	r7, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	mov	r1, r7
	lsl	r0, #19
	bl	_call_via_r3
	add	r7, #0x80
	ldr	r1, [sp, #0x28]
	mov	r0, r7
	bl	Func_5340
	ldr	r0, =0xac
	bl	Func_2f40
	ldr	r5, =ewram_10000
	mov	r7, r0
	add	r7, #0x80
	mov	r1, r5
	mov	r0, r7
	b	.Lcff84

	.align	2, 0
.Lcff60:
	.word	0x100
.Lcff64:
	.word	0x1010
	.pool

.Lcff84:
	bl	Func_5340
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x1c]
	mov	r2, #7
	str	r3, [sp, #0x2c]
	mov	r1, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x20]
	mov	r4, sp
	mov	r6, #0x90
	add	r4, #0x2c
	lsl	r6, #3
	str	r4, [sp, #0x10]
	mov	r1, r6
	str	r3, [r4, #4]
	ldr	r0, =Func_dbb9c
	bl	Func_41d8
	mov	r2, #0xef
	ldr	r1, [sp, #0x28]
	lsl	r2, #7
	ldr	r4, =0x7784
	add	r3, r1, r2
	str	r5, [r3]
	add	r3, r1, r4
	mov	r1, r10
	str	r1, [r3]
	ldr	r0, =Func_cd260
	mov	r1, r6
	bl	Func_41d8
	str	r5, [sp, #0x18]
	mov	r2, r8
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lcffec
	ldr	r3, =0xffb00000
	str	r3, [sp, #0x1c]
	b	.Lcfff2
.Lcffec:
	mov	r4, #0xe0
	lsl	r4, #15
	str	r4, [sp, #0x1c]
.Lcfff2:
	ldr	r4, =0x7828
	ldr	r3, [sp, #0x28]
	ldr	r1, =0xffe00000
	add	r4, r3, r4
	mov	r2, #0
	str	r1, [sp, #0x20]
	str	r4, [sp, #0x14]
	mov	r8, r2
.Ld0002:
	mov	r1, r8
	lsl	r5, r1, #9
	mov	r0, r5
	bl	Func_2322
	ldr	r2, [sp, #0x1c]
	lsl	r0, #4
	asr	r3, r2, #16
	asr	r0, #16
	add	r3, r0
	mov	r0, r5
	mov	r7, r3
	bl	Func_231c
	ldr	r4, [sp, #0x20]
	lsl	r0, #2
	asr	r3, r4, #16
	asr	r0, #16
	add	r3, r0
	add	r3, #0x10
	mov	r1, r8
	add	r7, #0x30
	mov	r11, r3
	cmp	r1, #0x58
	bne	.Ld003a
	mov	r0, #0x86
	bl	_Func_f9080
.Ld003a:
	mov	r2, r8
	cmp	r2, #0x20
	bne	.Ld0060
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld0050
	ldr	r1, =0xffe00000
	str	r1, [sp, #0x1c]
	b	.Ld0056
.Ld0050:
	mov	r2, #0x90
	lsl	r2, #15
	str	r2, [sp, #0x1c]
.Ld0056:
	mov	r3, #0xc0
	lsl	r3, #13
	mov	r4, #0
	str	r3, [sp, #0x20]
	str	r4, [sp, #0x18]
.Ld0060:
	mov	r1, r8
	cmp	r1, #0x21
	bne	.Ld0070
	ldr	r3, .Ld0098	@ 0x1010
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	mov	r3, #1
	str	r3, [sp, #0x18]
.Ld0070:
	mov	r4, r8
	cmp	r4, #0x40
	bne	.Ld00c6
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	add	r5, sp, #0x34
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	Func_e396c
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld00b8
	ldr	r3, [r5]
	sub	r3, #0x80
	b	.Ld00bc

	.align	2, 0
.Ld0098:
	.word	0x1010
	.pool

.Ld00b8:
	ldr	r3, [r5]
	sub	r3, #0x40
.Ld00bc:
	lsl	r3, #16
	str	r3, [sp, #0x1c]
	mov	r1, #0
	str	r1, [sp, #0x20]
	str	r1, [sp, #0x18]
.Ld00c6:
	mov	r2, r8
	cmp	r2, #0x41
	bne	.Ld00d6
	ldr	r3, .Ld0100	@ 0x1010
	ldr	r4, =REG_BLDALPHA
	mov	r1, #1
	strh	r3, [r4]
	str	r1, [sp, #0x18]
.Ld00d6:
	ldr	r2, [sp, #0x28]
	mov	r3, #0xd3
	lsl	r3, #7
	add	r1, r2, r3
	mov	r2, r8
	mov	r4, #0
	cmp	r2, #0x1f
	bgt	.Ld0112
	cmp	r2, #0xf
	ble	.Ld0130
	lsl	r3, r2, #1
	mov	r4, r3
	ldr	r3, .Ld0104	@ 0x1f
	sub	r3, r2
	ldr	r2, .Ld0108	@ 0x1000
	orr	r3, r2
	ldr	r2, =REG_BLDALPHA
	sub	r4, #0x20
	strh	r3, [r2]
	b	.Ld0110

	.align	2, 0
.Ld0100:
	.word	0x1010
.Ld0104:
	.word	0x1f
.Ld0108:
	.word	0x1000
	.pool

.Ld0110:
	b	.Ld0130
.Ld0112:
	mov	r3, r8
	cmp	r3, #0x3f
	bgt	.Ld0130
	cmp	r3, #0x2f
	ble	.Ld0130
	lsl	r3, #1
	mov	r4, r3
	ldr	r3, =0x3f
	mov	r2, r8
	sub	r3, r2
	ldr	r2, =0x1000
	orr	r3, r2
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	sub	r4, #0x60
.Ld0130:
	cmp	r4, #0
	bge	.Ld0136
	mov	r4, #0
.Ld0136:
	mov	r3, #6
	sub	r3, r7
	lsl	r7, r3, #8
	mov	r3, r8
	mov	r6, #0
	lsl	r5, r3, #11
	b	.Ld0150

	.pool_aligned

.Ld0150:
	mov	r0, r5
	str	r1, [sp, #0xc]
	str	r4, [sp, #8]
	bl	Func_2322
	ldr	r4, [sp, #8]
	mov	r3, r4
	mul	r3, r0
	ldr	r1, [sp, #0xc]
	asr	r3, #10
	mov	r2, #0x80
	sub	r3, r7, r3
	lsl	r2, #4
	add	r6, #1
	stmia	r1!, {r3}
	add	r5, r2
	cmp	r6, #0xa0
	bne	.Ld0150
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	bne	.Ld017c
	b	.Ld035e
.Ld017c:
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Ld018e
	mov	r1, #0
	mov	r7, #0
	mov	r9, r1
	b	.Ld0194
.Ld018e:
	mov	r2, #0
	mov	r7, #1
	mov	r9, r2
.Ld0194:
	mov	r3, r8
	cmp	r3, #0x57
	bgt	.Ld01cc
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r2, =.Lee10c
	ldr	r0, [r3, #4]
	lsl	r3, r7, #3
	mov	r4, r9
	sub	r3, r7
	ldrb	r2, [r2, r3]
	ldr	r1, =.Lee11a
	lsl	r3, r4, #3
	sub	r3, r4
	ldrb	r3, [r1, r3]
	mov	r1, #0x39
	str	r1, [sp]
	mov	r1, #0x62
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	bl	_call_via_r4
	b	.Ld035e
.Ld01cc:
	mov	r2, r8
	cmp	r2, #0x5b
	bgt	.Ld0204
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	ldr	r2, =.Lee10c
	lsl	r6, r7, #3
	ldr	r0, [r3, #4]
	sub	r3, r6, r7
	ldrb	r2, [r2, r3]
	mov	r3, r9
	ldr	r1, =.Lee11a
	lsl	r5, r3, #3
	sub	r3, r5, r3
	ldrb	r3, [r1, r3]
	mov	r1, #0x39
	str	r1, [sp]
	mov	r1, #0x62
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	bl	_call_via_r4
	b	.Ld020a
.Ld0204:
	mov	r2, r9
	lsl	r6, r7, #3
	lsl	r5, r2, #3
.Ld020a:
	ldr	r3, [sp, #0x28]
	ldr	r4, =0x7828
	add	r3, r4
	mov	r10, r3
	ldr	r3, [r3]
	ldr	r1, =.Lee10c
	sub	r6, r7
	ldr	r0, [r3, #4]
	add	r3, r6, #1
	ldrb	r3, [r1, r3]
	mov	r2, r9
	ldr	r7, =.Lee11a
	sub	r5, r2
	mov	r12, r3
	add	r3, r5, #1
	ldrb	r3, [r7, r3]
	mov	r1, #0x63
	str	r1, [sp]
	add	r3, r11
	mov	r1, #0x45
	mov	r14, r3
	str	r1, [sp, #4]
	ldr	r3, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r3]
	ldr	r2, [sp, #0x28]
	ldr	r3, =0x15d2
	ldr	r0, [sp, #0x24]
	add	r1, r2, r3
	mov	r3, r14
	mov	r2, r12
	bl	_call_via_r4
	mov	r3, r8
	sub	r3, #0x58
	cmp	r3, #1
	bhi	.Ld0262
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Ld0262:
	mov	r3, r8
	sub	r3, #0x5a
	cmp	r3, #1
	bhi	.Ld029e
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r1, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #2
	ldrb	r3, [r1, r3]
	mov	r1, #0x80
	mov	r12, r3
	add	r3, r5, #2
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x5b
	str	r1, [sp, #4]
	ldr	r2, [sp, #0x10]
	lsl	r0, #2
	add	r3, r11
	mov	r14, r3
	ldr	r4, [r0, r2]
	ldr	r3, [sp, #0x28]
	ldr	r2, =0x3081
	ldr	r0, [sp, #0x24]
	add	r1, r3, r2
	mov	r2, r12
	mov	r3, r14
	bl	_call_via_r4
.Ld029e:
	mov	r3, r8
	sub	r3, #0x5c
	cmp	r3, #1
	bhi	.Ld02ce
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r1, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #3
	ldrb	r2, [r1, r3]
	mov	r1, #0x80
	add	r3, r5, #3
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x5b
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, =ewram_10000
	bl	_call_via_r4
.Ld02ce:
	mov	r3, r8
	sub	r3, #0x5e
	cmp	r3, #1
	bhi	.Ld02fe
	mov	r2, r10
	ldr	r3, [r2]
	ldr	r4, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #4
	ldrb	r2, [r4, r3]
	mov	r1, #0x80
	add	r3, r5, #4
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x3b
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, =ewram_12d80
	bl	_call_via_r4
.Ld02fe:
	mov	r3, r8
	sub	r3, #0x60
	cmp	r3, #1
	bhi	.Ld032e
	mov	r2, r10
	ldr	r3, [r2]
	ldr	r4, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #5
	ldrb	r2, [r4, r3]
	mov	r1, #0x7a
	add	r3, r5, #5
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x1d
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, =ewram_14b00
	bl	_call_via_r4
.Ld032e:
	mov	r3, r8
	sub	r3, #0x62
	cmp	r3, #1
	bhi	.Ld035e
	mov	r2, r10
	ldr	r3, [r2]
	ldr	r4, =.Lee10c
	ldr	r0, [r3, #4]
	add	r3, r6, #6
	ldrb	r2, [r4, r3]
	mov	r1, #0x4c
	add	r3, r5, #6
	ldrb	r3, [r7, r3]
	str	r1, [sp]
	mov	r1, #0x19
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r1]
	add	r3, r11
	ldr	r0, [sp, #0x24]
	ldr	r1, =ewram_158d2
	bl	_call_via_r4
.Ld035e:
	mov	r2, r8
	cmp	r2, #0x58
	bne	.Ld03b0
	ldr	r4, [sp, #0x14]
	ldr	r3, [r4]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	mov	r3, #0x80
	ldr	r0, [r0]
	lsl	r3, #9
	str	r3, [r0, #0x28]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x34]
	str	r3, [r0, #0x30]
	mov	r3, r0
	mov	r5, #0
	add	r3, #0x5a
	str	r5, [r0, #0x48]
	strb	r5, [r3]
	sub	r3, #2
	strb	r5, [r3]
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	lsl	r1, #1
	mov	r2, #0
	bl	_Func_d14c
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r3, #1
	neg	r3, r3
	mov	r1, r3
	mov	r2, #5
	str	r5, [sp]
	bl	Func_d6888
.Ld03b0:
	mov	r1, r8
	cmp	r1, #0x78
	bne	.Ld03c8
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_Func_b7dd0
	ldr	r3, =0xab85
	ldr	r2, [r0]
	str	r3, [r2, #0x48]
.Ld03c8:
	ldr	r1, [sp, #0x28]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r4, #1
	add	r8, r4
	mov	r1, r8
	cmp	r1, #0x84
	beq	.Ld03e4
	b	.Ld0002
.Ld03e4:
	ldr	r0, =Func_cd260
	bl	Func_4278
	ldr	r0, =Func_dbb9c
	bl	Func_4278
	ldr	r3, =iwram_1e74
	mov	r2, #0xc9
	ldr	r3, [r3]
	lsl	r2, #3
	add	r3, r2
	ldrh	r1, [r3]
	mov	r2, #0x18
	mov	r0, #1
	bl	_Func_c08ec
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x4c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_cfef4

.thumb_func_start Func_d0468
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, =0x5000040
	mov	r5, #0
.Ld0476:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r2, r5, #10
	lsl	r1, r3, #5
	orr	r2, r1
	orr	r2, r3
	add	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, #0x20
	bne	.Ld0476
	ldr	r3, =iwram_1ef4
	mov	r2, #0x10
	ldr	r3, [r3]
	mov	r1, #0
	mov	r10, r2
	mov	r2, #0xf0
	mov	r9, r3
	mov	r8, r1
	ldr	r3, =Func_1af8
	ldr	r0, =ewram_10000
	ldr	r1, =0x6008000
	lsl	r2, #7
	bl	_call_via_r3
	mov	r6, #0x80
	lsl	r6, #1
	mov	r7, #0x3f
	mov	r5, r9
	add	r6, r9
.Ld04b4:
	bl	Func_4458
	and	r0, r7
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Ld04b4
	mov	r6, #0
	mov	r5, #0
.Ld04c6:
	mov	r3, r10
	cmp	r3, #0
	bge	.Ld04ce
	add	r3, #3
.Ld04ce:
	asr	r3, #2
	add	r8, r3
	mov	r3, #1
	add	r10, r3
	cmp	r6, r8
	beq	.Ld0576
	ldr	r7, .Ld04fc	@ 0x1f
.Ld04dc:
	mov	r0, #0
.Ld04de:
	mov	r1, r9
	ldrb	r3, [r1, r0]
	sub	r1, r6, r3
	cmp	r1, #0
	blt	.Ld0566
	cmp	r1, #0x77
	bgt	.Ld0566
	mov	r4, #7
	mov	r3, r0
	and	r3, r4
	mov	r2, r0
	cmp	r0, #0
	bge	.Ld0514
	add	r2, r0, #7
	b	.Ld0514

	.align	2, 0
.Ld04fc:
	.word	0x1f
	.pool

.Ld0514:
	asr	r2, #3
	lsl	r2, #6
	add	r2, r3, r2
	mov	r3, r1
	and	r3, r4
	lsl	r3, #3
	add	r2, r3
	mov	r3, r1
	cmp	r3, #0
	bge	.Ld052a
	add	r3, #7
.Ld052a:
	asr	r3, #3
	lsl	r3, #11
	add	r3, r2, r3
	ldr	r2, =ewram_10000
	add	r4, r3, r2
	ldrb	r3, [r4]
	mov	r1, #0xa0
	lsl	r1, #19
	lsl	r3, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r3, #0xf8
	lsl	r2, #16
	lsl	r3, #13
	and	r3, r2
	lsr	r1, r3, #16
	lsr	r3, r2, #21
	and	r3, r7
	lsr	r2, #26
	and	r2, r7
	cmp	r1, r3
	bge	.Ld055a
	mov	r1, r3
.Ld055a:
	cmp	r1, r2
	bge	.Ld0560
	mov	r1, r2
.Ld0560:
	mov	r3, #0x3f
	sub	r3, r1
	strb	r3, [r4]
.Ld0566:
	mov	r2, #0x80
	add	r0, #1
	lsl	r2, #1
	cmp	r0, r2
	bne	.Ld04de
	add	r6, #1
	cmp	r6, r8
	bne	.Ld04dc
.Ld0576:
	mov	r2, #0xf0
	ldr	r3, =Func_1af8
	ldr	r1, =ewram_10000
	lsl	r2, #7
	ldr	r0, =0x6008000
	bl	_call_via_r3
	mov	r0, #1
	bl	Func_30f8
	mov	r3, r8
	cmp	r3, #0xf8
	bgt	.Ld0596
	add	r5, #1
	cmp	r5, #0x1b
	bne	.Ld04c6
.Ld0596:
	ldr	r0, =0x50000c0
	mov	r5, #0
.Ld059a:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r2, r5, #10
	lsl	r1, r3, #5
	orr	r2, r1
	orr	r2, r3
	add	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, #0x20
	bne	.Ld059a
	mov	r1, #0xf0
	ldr	r2, =ewram_10000
	mov	r5, #0
	lsl	r1, #7
.Ld05ba:
	ldrb	r3, [r2]
	add	r5, #1
	add	r3, #0x40
	strb	r3, [r2]
	add	r2, #1
	cmp	r5, r1
	bne	.Ld05ba
	mov	r2, #0xf0
	ldr	r3, =Func_1af8
	ldr	r1, =ewram_10000
	lsl	r2, #7
	ldr	r0, =0x6008000
	bl	_call_via_r3
	mov	r0, #1
	bl	Func_30f8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d0468

.thumb_func_start Func_d05fc
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
	sub	sp, #0x84
	str	r1, [sp, #0x40]
	ldr	r3, [r3]
	str	r3, [sp, #0x3c]
	mov	r3, r6
	sub	r3, #0x6c
	ldr	r3, [r3]
	ldr	r2, [r6, #8]
	str	r3, [sp, #0x30]
	ldr	r3, =0x7828
	mov	r5, r0
	add	r7, r1, r3
	str	r5, [r7]
	mov	r0, #1
	mov	r8, r2
	bl	Func_cd594
	ldr	r2, [r7]
	ldr	r3, [r2, #0x1c]
	cmp	r3, #1
	bne	.Ld064e
	add	r3, sp, #0x50
	ldr	r2, [r2, #4]
	str	r3, [sp]
	add	r3, sp, #0x4c
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #3
	mov	r3, #0
	bl	Func_de2f8
.Ld064e:
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld0690	@ 0x100
	ldr	r0, =0x79
	strh	r3, [r2]
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	mov	r1, r5
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x40]
	mov	r0, r5
	bl	Func_5340
	ldr	r0, =0x73
	bl	Func_2f40
	mov	r1, r8
	bl	Func_5340
	ldr	r0, =0x76
	bl	Func_2f40
	mov	r3, #0x80
	ldr	r2, [sp, #0x40]
	lsl	r3, #5
	b	.Ld06b0

	.align	2, 0
.Ld0690:
	.word	0x100
	.pool

.Ld06b0:
	add	r1, r2, r3
	bl	Func_5340
	ldr	r0, =0x8f
	bl	Func_2f40
	mov	r3, #0x80
	ldr	r2, [sp, #0x40]
	mov	r5, r0
	lsl	r3, #6
	add	r5, #0x80
	add	r1, r2, r3
	mov	r0, r5
	bl	Func_5340
	mov	r3, #0xef
	ldr	r1, [sp, #0x40]
	lsl	r3, #7
	add	r2, r1, r3
	mov	r3, #3
	str	r3, [r2]
	ldr	r3, =0x7784
	add	r2, r1, r3
	ldr	r3, =0x4040404
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r3, [r7]
	mov	r2, sp
	add	r2, #0x78
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r2
	str	r2, [sp, #0x28]
	bl	Func_e396c
	ldr	r3, [sp, #0x28]
	ldr	r2, [r3]
	mov	r3, #0x40
	sub	r3, r2
	ldr	r2, =REG_BG2X
	str	r3, [sp, #0x2c]
	lsl	r3, #8
	str	r3, [r2]
	mov	r0, #0x8e
	bl	_Func_f9080
	mov	r1, #0
	str	r1, [sp, #0x38]
	ldr	r3, [r7]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r2, #0x48
	lsl	r3, #2
	neg	r2, r2
	cmp	r3, r2
	bne	.Ld072c
	b	.Ld0ab2
.Ld072c:
	mov	r3, sp
	add	r3, #0x44
	str	r3, [sp, #0x14]
.Ld0732:
	ldr	r1, [sp, #0x38]
	cmp	r1, #0x40
	bne	.Ld073e
	mov	r0, #0
	bl	_Func_bd7dc
.Ld073e:
	ldr	r2, =0x5555
	mov	r3, #0
	ldr	r0, [sp, #0x38]
	ldr	r1, =0xaaab
	bl	Func_d40ec
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x40]
	add	r7, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	bne	.Ld07e2
	ldr	r1, [sp, #0x38]
	lsl	r5, r1, #11
	mov	r0, r5
	bl	Func_2322
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, [sp, #0x50]
	lsl	r3, #2
	asr	r3, #16
	add	r3, r2
	ldr	r2, [sp, #0x2c]
	add	r3, r2
	sub	r3, #0x14
	mov	r0, r5
	mov	r8, r3
	bl	Func_231c
	ldr	r3, [sp, #0x4c]
	lsl	r0, #2
	asr	r0, #16
	add	r0, r3
	ldr	r3, [r7]
	mov	r6, r0
	ldr	r1, [sp, #0x14]
	ldr	r0, [r3, #4]
	bl	Func_cef64
	ldr	r3, [sp, #0x38]
	sub	r6, #0x18
	cmp	r3, #0x20
	ble	.Ld07a0
	lsl	r3, #1
	sub	r3, r6, r3
	mov	r6, r3
	add	r6, #0x40
.Ld07a0:
	ldr	r1, [sp, #0x40]
	mov	r2, #0x80
	lsl	r2, #6
	add	r7, r1, r2
	mov	r5, #0x28
	mov	r3, r6
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x3c]
	mov	r1, r7
	mov	r2, r8
	bl	_call_via_r4
	ldr	r3, [sp, #0x38]
	cmp	r3, #3
	bgt	.Ld07d6
	ldr	r1, [sp, #0x14]
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x3c]
	ldr	r4, [r1, #4]
	mov	r2, r8
	mov	r1, r7
	mov	r3, r6
	bl	_call_via_r4
.Ld07d6:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
.Ld07e2:
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
	mov	r1, #7
	str	r3, [sp, #0x44]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	Func_ed408
	ldr	r2, =iwram_1f0c
	ldr	r1, [sp, #0x14]
	ldr	r3, [r2]
	str	r3, [r1, #4]
	ldr	r2, [sp, #0x38]
	cmp	r2, #0x10
	ble	.Ld082c
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.Ld082c
	ldr	r3, [sp, #0x40]
	ldr	r1, =0x7784
	add	r2, r3, r1
	ldr	r3, [r2]
	ldr	r1, =0x1010101
	add	r3, r1
	str	r3, [r2]
.Ld082c:
	ldr	r1, [sp, #0x38]
	lsl	r3, r1, #1
	add	r3, r1
	mov	r2, #0
	lsl	r3, #9
	str	r2, [sp, #0x34]
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	mov	r11, r1
.Ld083e:
	ldr	r2, [sp, #0x40]
	ldr	r1, =0x7828
	add	r3, r2, r1
	ldr	r1, [sp, #0x34]
	ldr	r2, [r3]
	lsl	r3, r1, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	mov	r2, r11
	ldr	r6, [r0]
	cmp	r2, #0x5f
	bls	.Ld085c
	b	.Ld0a18
.Ld085c:
	bl	Func_49ac
	ldr	r0, [sp, #0x30]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	ldr	r3, [r6, #8]
	add	r5, sp, #0x6c
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	add	r3, sp, #0x60
	mov	r9, r3
	mov	r1, r9
	mov	r0, r5
	bl	Func_e3944
	ldr	r1, [sp, #0x28]
	ldr	r2, [sp, #0x2c]
	ldr	r3, [r1]
	mov	r1, r9
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r1, #4]
	mov	r2, r11
	sub	r3, #0x18
	str	r3, [r1, #4]
	cmp	r2, #0x43
	ble	.Ld089e
	b	.Ld09dc
.Ld089e:
	mov	r1, #0
	str	r1, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	lsl	r2, r1, #3
	sub	r2, r1
	ldr	r1, [sp, #0x40]
	lsl	r2, #2
	add	r2, r1
	mov	r1, #0xe1
	lsl	r1, #7
	add	r5, r2, r1
	mov	r3, #0xa8
	ldr	r2, [sp, #8]
	lsl	r3, #10
	sub	r2, r3, r2
	mov	r1, r11
	mov	r3, #0x40
	sub	r3, r1
	lsl	r3, #9
	mov	r7, #0
	add	r6, sp, #0x54
	mov	r8, r2
	mov	r10, r3
.Ld08cc:
	bl	Func_49ac
	mov	r2, r11
	cmp	r2, #0x3f
	bgt	.Ld08f0
	mov	r3, r8
	str	r3, [r6]
	str	r3, [r6, #4]
	str	r3, [r6, #8]
	mov	r0, r6
	bl	Func_4cf0
	mov	r0, r10
	bl	Func_4c6c
	mov	r0, r10
	bl	Func_4c1c
.Ld08f0:
	ldr	r0, [sp, #0x10]
	bl	Func_4c6c
	add	r2, sp, #0x6c
	mov	r1, r2
	ldr	r0, =.Lee128
	bl	Func_e3944
	mov	r1, r9
	ldr	r3, [r1]
	ldr	r2, [sp, #0x6c]
	add	r2, r3
	str	r2, [r5, #0xc]
	ldr	r3, [sp, #0x70]
	ldr	r2, [r1, #4]
	add	r3, r2
	add	r3, #0x10
	str	r3, [r5, #0x10]
	ldr	r2, [sp, #0x10]
	ldr	r3, =0x5555
	add	r7, #1
	add	r2, r3
	str	r2, [sp, #0x10]
	add	r5, #0x1c
	cmp	r7, #3
	bne	.Ld08cc
	ldr	r1, [sp, #0xc]
	str	r1, [sp, #0x20]
	mov	r7, #0
.Ld092a:
	ldr	r3, [sp, #0x20]
	add	r2, r7, r3
	lsl	r3, r2, #3
	ldr	r1, [sp, #0x40]
	sub	r3, r2
	lsl	r3, #2
	mov	r2, #0xe1
	lsl	r2, #7
	add	r3, r1, r3
	add	r7, #1
	add	r3, r2
	mov	r1, #3
	mov	r0, r7
	str	r3, [sp, #0x24]
	str	r7, [sp, #0x18]
	bl	Func_b1c_from_thumb
	ldr	r3, [sp, #0x20]
	add	r0, r3
	lsl	r3, r0, #3
	sub	r3, r0
	ldr	r1, [sp, #0x40]
	lsl	r3, #2
	mov	r2, #0xe1
	lsl	r2, #7
	add	r3, r1, r3
	add	r3, r2
	mov	r2, r11
	str	r3, [sp, #0x1c]
	cmp	r2, #0
	bge	.Ld096a
	add	r2, #0xf
.Ld096a:
	asr	r2, #4
	mov	r3, #5
	sub	r3, r2
	mov	r8, r3
	mov	r1, r8
	mov	r3, #0
	mov	r10, r3
	lsl	r7, r1, #1
.Ld097a:
	ldr	r2, [sp, #0x1c]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r2, #0xc]
	ldr	r6, [r1, #0xc]
	sub	r3, r6
	mov	r0, r10
	mul	r0, r3
	mov	r1, #0x18
	bl	Func_af0_from_thumb
	ldr	r2, [sp, #0x1c]
	ldr	r1, [sp, #0x24]
	ldr	r3, [r2, #0x10]
	ldr	r5, [r1, #0x10]
	sub	r3, r5
	add	r6, r0
	mov	r1, #0x18
	mov	r0, r10
	mul	r0, r3
	bl	Func_af0_from_thumb
	ldr	r2, =Data_ede5c
	sub	r3, r7, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x40]
	add	r5, r0
	add	r1, r3, r1
	mov	r2, #0x80
	mov	r3, r8
	lsl	r2, #5
	sub	r6, r3
	sub	r5, r3
	add	r1, r2
	str	r7, [sp]
	mov	r2, r6
	str	r7, [sp, #4]
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x3c]
	mov	r3, r5
	bl	_call_via_r4
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x18
	bne	.Ld097a
	ldr	r7, [sp, #0x18]
	cmp	r7, #3
	bne	.Ld092a
.Ld09dc:
	mov	r3, r11
	cmp	r3, #0x3f
	ble	.Ld0a18
	mov	r1, r9
	ldr	r2, [r1]
	ldr	r3, [r1, #4]
	mov	r5, #0x30
	mov	r1, #0x18
	sub	r2, #0x18
	sub	r3, #0x18
	str	r1, [sp]
	ldr	r4, [sp, #0x44]
	ldr	r1, [sp, #0x40]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x3c]
	bl	_call_via_r4
	mov	r3, r9
	mov	r1, #0x18
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	str	r1, [sp]
	str	r5, [sp, #4]
	ldr	r1, [sp, #0x14]
	sub	r3, #0x18
	ldr	r4, [r1, #4]
	ldr	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x40]
	bl	_call_via_r4
.Ld0a18:
	ldr	r3, [sp, #8]
	ldr	r1, =0xffffd000
	ldr	r2, [sp, #0xc]
	add	r3, r1
	add	r2, #0x20
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x34]
	str	r2, [sp, #0xc]
	mov	r2, #8
	neg	r2, r2
	add	r3, #1
	add	r11, r2
	str	r3, [sp, #0x34]
	cmp	r3, #1
	beq	.Ld0a38
	b	.Ld083e
.Ld0a38:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r2, =0x7824
	ldr	r1, [sp, #0x40]
	add	r3, r1, r2
	ldr	r1, [sp, #0x34]
	mov	r0, #1
	str	r1, [r3]
	bl	Func_30f8
	ldr	r2, [sp, #0x38]
	add	r2, #1
	str	r2, [sp, #0x38]
	ldr	r1, [sp, #0x40]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	ldr	r1, [sp, #0x38]
	add	r3, #0x48
	b	.Ld0aac

	.pool_aligned

.Ld0aac:
	cmp	r1, r3
	beq	.Ld0ab2
	b	.Ld0732
.Ld0ab2:
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d05fc

.thumb_func_start Func_d0ad4
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
	sub	sp, #0x78
	str	r2, [sp, #0x44]
	ldr	r3, [r3]
	str	r3, [sp, #0x40]
	mov	r3, r8
	ldr	r4, =0x7828
	ldr	r6, [r3, #8]
	sub	r3, #0x6c
	ldr	r3, [r3]
	add	r5, r2, r4
	str	r3, [sp, #0x2c]
	str	r0, [r5]
	mov	r0, #0
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld0b48
	ldr	r0, =0x79
	strh	r3, [r2]
	bl	Func_2f40
	mov	r7, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	mov	r1, r7
	lsl	r0, #19
	bl	_call_via_r3
	add	r7, #0x80
	ldr	r1, [sp, #0x44]
	mov	r0, r7
	bl	Func_5340
	ldr	r0, =0x73
	bl	Func_2f40
	mov	r1, r6
	bl	Func_5340
	ldr	r0, =0x76
	bl	Func_2f40
	mov	r3, #0x80
	ldr	r2, [sp, #0x44]
	lsl	r3, #5
	b	.Ld0b68

	.align	2, 0
.Ld0b48:
	.word	0x100
	.pool

.Ld0b68:
	add	r1, r2, r3
	mov	r7, r0
	bl	Func_5340
	mov	r1, #0xef
	ldr	r4, [sp, #0x44]
	lsl	r1, #7
	add	r2, r4, r1
	mov	r3, #3
	str	r3, [r2]
	ldr	r3, =0x7784
	add	r2, r4, r3
	ldr	r3, =0x4040404
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r3, [r5]
	mov	r1, sp
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	add	r1, #0x6c
	str	r1, [sp, #0x24]
	bl	Func_e396c
	ldr	r3, [sp, #0x24]
	ldr	r2, [r3]
	mov	r3, #0x40
	sub	r3, r2
	ldr	r2, =REG_BG2X
	str	r3, [sp, #0x28]
	lsl	r3, #8
	str	r3, [r2]
	mov	r0, #0x8e
	bl	_Func_f9080
	mov	r4, #0
	str	r4, [sp, #0x3c]
	ldr	r3, [r5]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r5, #0x48
	lsl	r3, #2
	neg	r5, r5
	cmp	r3, r5
	bne	.Ld0bcc
	b	.Ld0e8a
.Ld0bcc:
	ldr	r1, [sp, #0x3c]
	cmp	r1, #0x40
	bne	.Ld0bd8
	mov	r0, #0
	bl	_Func_bd7dc
.Ld0bd8:
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0x2e
	bne	.Ld0bf4
	ldr	r4, [sp, #0x44]
	ldr	r5, =0x7828
	add	r3, r4, r5
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r1, [r3, r2]
	ldr	r0, [r3, #8]
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_b82c4
.Ld0bf4:
	ldr	r0, [sp, #0x3c]
	ldr	r1, =0xaaab
	ldr	r2, =0x5555
	mov	r3, #0
	bl	Func_d40ec
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
	mov	r0, #0x2f
	str	r3, [sp, #0x34]
	mov	r1, #7
	mov	r3, #7
	mov	r2, #7
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, =iwram_1f0c
	ldr	r4, [sp, #0x3c]
	ldr	r3, [r3]
	str	r3, [sp, #0x38]
	cmp	r4, #0x10
	ble	.Ld0c48
	mov	r3, #0xf
	and	r3, r4
	cmp	r3, #0
	bne	.Ld0c48
	ldr	r5, [sp, #0x44]
	ldr	r1, =0x7784
	add	r2, r5, r1
	ldr	r3, [r2]
	ldr	r4, =0x1010101
	add	r3, r4
	str	r3, [r2]
.Ld0c48:
	ldr	r1, [sp, #0x3c]
	lsl	r3, r1, #1
	add	r3, r1
	mov	r5, #0
	lsl	r3, #9
	str	r5, [sp, #0x30]
	str	r5, [sp, #0x10]
	str	r3, [sp, #0xc]
	mov	r11, r1
.Ld0c5a:
	ldr	r2, [sp, #0x44]
	ldr	r4, =0x7828
	ldr	r5, [sp, #0x30]
	add	r3, r2, r4
	ldr	r2, [r3]
	lsl	r3, r5, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	mov	r2, r11
	ldr	r6, [r0]
	cmp	r2, #0x5f
	bls	.Ld0c78
	b	.Ld0e30
.Ld0c78:
	bl	Func_49ac
	ldr	r0, [sp, #0x2c]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	ldr	r3, [r6, #8]
	add	r5, sp, #0x60
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	add	r3, sp, #0x54
	mov	r10, r3
	mov	r1, r10
	mov	r0, r5
	bl	Func_e3944
	ldr	r4, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	ldr	r3, [r4]
	mov	r2, r10
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r2, #4]
	sub	r3, #0x18
	str	r3, [r2, #4]
	mov	r3, r11
	cmp	r3, #0x43
	ble	.Ld0cba
	b	.Ld0df6
.Ld0cba:
	ldr	r5, [sp, #0x10]
	lsl	r2, r5, #3
	sub	r2, r5
	ldr	r1, [sp, #0x44]
	mov	r4, #0
	lsl	r2, #2
	add	r2, r1
	mov	r3, #0xa8
	str	r4, [sp, #0x14]
	ldr	r1, [sp, #0xc]
	mov	r4, #0xe1
	lsl	r3, #10
	lsl	r4, #7
	sub	r1, r3, r1
	add	r5, r2, r4
	mov	r3, #0x40
	mov	r2, r11
	sub	r3, r2
	lsl	r3, #9
	mov	r7, #0
	add	r6, sp, #0x48
	mov	r8, r1
	mov	r9, r3
.Ld0ce8:
	bl	Func_49ac
	mov	r3, r11
	cmp	r3, #0x3f
	bgt	.Ld0d0c
	mov	r4, r8
	str	r4, [r6]
	str	r4, [r6, #4]
	str	r4, [r6, #8]
	mov	r0, r6
	bl	Func_4cf0
	mov	r0, r9
	bl	Func_4c6c
	mov	r0, r9
	bl	Func_4c1c
.Ld0d0c:
	ldr	r0, [sp, #0x14]
	bl	Func_4c6c
	add	r2, sp, #0x60
	mov	r1, r2
	ldr	r0, =.Lee134
	bl	Func_e3944
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r2, [sp, #0x60]
	add	r2, r3
	str	r2, [r5, #0xc]
	ldr	r3, [sp, #0x64]
	ldr	r2, [r4, #4]
	add	r3, r2
	add	r3, #0x10
	str	r3, [r5, #0x10]
	ldr	r1, [sp, #0x14]
	ldr	r2, =0x5555
	add	r7, #1
	add	r1, r2
	str	r1, [sp, #0x14]
	add	r5, #0x1c
	cmp	r7, #3
	bne	.Ld0ce8
	ldr	r3, [sp, #0x10]
	str	r3, [sp, #0x1c]
	mov	r7, #0
.Ld0d46:
	ldr	r4, [sp, #0x1c]
	add	r2, r7, r4
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r5, [sp, #0x44]
	lsl	r3, #2
	mov	r1, #0xe1
	lsl	r1, #7
	add	r7, #1
	add	r3, r5, r3
	add	r3, r1
	mov	r0, r7
	mov	r1, #3
	str	r3, [sp, #0x20]
	str	r7, [sp, #0x18]
	bl	Func_b1c_from_thumb
	ldr	r2, [sp, #0x1c]
	add	r0, r2
	lsl	r3, r0, #3
	sub	r3, r0
	lsl	r3, #2
	mov	r4, #0xe1
	add	r3, r5, r3
	lsl	r4, #7
	add	r4, r3
	mov	r2, r11
	mov	r9, r4
	cmp	r2, #0
	bge	.Ld0d84
	add	r2, #0xf
.Ld0d84:
	asr	r2, #4
	mov	r3, #5
	sub	r4, r3, r2
	mov	r5, #0
	mov	r8, r5
	lsl	r7, r4, #1
.Ld0d90:
	ldr	r2, [sp, #0x20]
	mov	r1, r9
	ldr	r6, [r2, #0xc]
	ldr	r3, [r1, #0xc]
	sub	r3, r6
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0x18
	str	r4, [sp, #8]
	bl	Func_af0_from_thumb
	ldr	r1, [sp, #0x20]
	mov	r5, r9
	ldr	r3, [r5, #0x10]
	ldr	r5, [r1, #0x10]
	sub	r3, r5
	add	r6, r0
	mov	r1, #0x18
	mov	r0, r8
	mul	r0, r3
	bl	Func_af0_from_thumb
	ldr	r2, =Data_ede5c
	sub	r3, r7, #2
	ldrh	r1, [r2, r3]
	ldr	r4, [sp, #8]
	ldr	r3, [sp, #0x44]
	add	r5, r0
	mov	r2, #0x80
	sub	r5, r4
	sub	r6, r4
	add	r1, r3, r1
	lsl	r2, #5
	add	r1, r2
	mov	r3, r5
	mov	r2, r6
	str	r7, [sp]
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x40]
	ldr	r5, [sp, #0x34]
	bl	_call_via_r5
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	ldr	r4, [sp, #8]
	cmp	r2, #0x18
	bne	.Ld0d90
	ldr	r7, [sp, #0x18]
	cmp	r7, #3
	bne	.Ld0d46
.Ld0df6:
	mov	r3, r11
	cmp	r3, #0x3f
	ble	.Ld0e30
	mov	r4, r10
	ldr	r2, [r4]
	ldr	r3, [r4, #4]
	mov	r5, #0x18
	str	r5, [sp]
	mov	r5, #0x30
	sub	r2, #0x18
	sub	r3, #0x18
	str	r5, [sp, #4]
	ldr	r1, [sp, #0x44]
	ldr	r4, [sp, #0x34]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	mov	r1, r10
	ldr	r3, [r1, #4]
	mov	r4, #0x18
	ldr	r2, [r1]
	sub	r3, #0x18
	str	r5, [sp, #4]
	str	r4, [sp]
	ldr	r0, [sp, #0x40]
	ldr	r1, [sp, #0x44]
	ldr	r5, [sp, #0x38]
	bl	_call_via_r5
.Ld0e30:
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	ldr	r5, [sp, #0x30]
	ldr	r3, =0xffffd000
	mov	r4, #8
	add	r1, #0x20
	add	r2, r3
	neg	r4, r4
	add	r5, #1
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	add	r11, r4
	str	r5, [sp, #0x30]
	cmp	r5, #1
	beq	.Ld0e50
	b	.Ld0c5a
.Ld0e50:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r2, =0x7824
	ldr	r1, [sp, #0x44]
	add	r3, r1, r2
	str	r5, [r3]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x44]
	add	r3, #1
	ldr	r5, =0x7828
	str	r3, [sp, #0x3c]
	add	r3, r4, r5
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	ldr	r1, [sp, #0x3c]
	add	r3, #0x48
	cmp	r1, r3
	beq	.Ld0e8a
	b	.Ld0bcc
.Ld0e8a:
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x78
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d0ad4

.thumb_func_start Func_d0ee0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1eec
	mov	r3, r6
	mov	r5, r0
	ldmia	r3!, {r0}
	sub	sp, #0x74
	str	r0, [sp, #0x4c]
	ldr	r3, [r3]
	str	r3, [sp, #0x48]
	ldr	r1, [r6, #8]
	mov	r3, r6
	str	r1, [sp, #0x34]
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x30]
	ldr	r0, [r5, #8]
	bl	_Func_b7dd0
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x4c]
	ldr	r0, [r0]
	add	r2, r3
	str	r5, [r2]
	mov	r10, r0
	mov	r0, #1
	mov	r8, r2
	bl	Func_cd594
	ldr	r0, =0x79
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r0, =0x73
	bl	Func_2f40
	ldr	r1, [sp, #0x34]
	bl	Func_5340
	mov	r0, r10
	mov	r1, #2
	bl	_Func_c300
	mov	r0, r10
	mov	r1, #0x30
	bl	_Func_c344
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	mov	r0, #0xef
	ldr	r4, [sp, #0x4c]
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r3, r4, r0
	add	r2, r4, r1
	str	r5, [r3]
	ldr	r6, [r6, #0x1c]
	mov	r3, #0x4b
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Func_cd260
	str	r6, [sp, #0x3c]
	bl	Func_41d8
	mov	r2, r8
	ldr	r3, [r2]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	mov	r4, r8
	ldr	r3, [r4]
	ldr	r6, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	mov	r2, #0
	ldr	r0, [r0]
	ldr	r3, [sp, #0x4c]
	mov	r4, #0xe1
	lsl	r4, #7
	str	r2, [sp, #0x38]
	mov	r11, r0
	add	r5, r3, r4
.Ld0fac:
	ldr	r2, [r6, #8]
	str	r2, [r5]
	mov	r0, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r0, #14
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r1, [sp, #0x38]
	cmp	r1, #0
	bne	.Ld0fce
	mov	r3, r11
	ldr	r0, [r3, #8]
	mov	r1, #0xc
	sub	r0, r2
	b	.Ld0fd8
.Ld0fce:
	mov	r4, r11
	ldr	r0, [r4, #8]
	lsl	r0, #1
	sub	r0, r2
	mov	r1, #0xc
.Ld0fd8:
	bl	Func_af0_from_thumb
	str	r0, [r5, #0xc]
	mov	r1, r11
	ldr	r0, [r1, #0xc]
	ldr	r3, [r5, #4]
	mov	r2, #0xa0
	sub	r0, r3
	lsl	r2, #14
	add	r0, r2
	mov	r1, #0xc
	bl	Func_af0_from_thumb
	str	r0, [r5, #0x10]
	mov	r3, r11
	ldr	r0, [r3, #0x10]
	ldr	r3, [r5, #8]
	mov	r1, #0xc
	sub	r0, r3
	bl	Func_af0_from_thumb
	mov	r3, #0
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	ldr	r4, [sp, #0x38]
	add	r4, #1
	add	r5, #0x1c
	str	r4, [sp, #0x38]
	cmp	r4, #3
	bne	.Ld0fac
	str	r3, [sp, #0x44]
.Ld1016:
	ldr	r0, [sp, #0x44]
	cmp	r0, #0x2f
	bgt	.Ld104a
	ldr	r3, =iwram_1e80
	mov	r2, #0x80
	ldr	r1, [r3]
	cmp	r0, #0x27
	ble	.Ld1030
	ldr	r3, [sp, #0x44]
	lsl	r2, r3, #4
	mov	r3, #0xc0
	lsl	r3, #2
	sub	r2, r3, r2
.Ld1030:
	ldr	r4, [sp, #0x4c]
	ldr	r0, =0x7828
	add	r3, r4, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Ld1044
	ldrh	r3, [r1, #0x36]
	sub	r3, r2
	b	.Ld1048
.Ld1044:
	ldrh	r3, [r1, #0x36]
	add	r3, r2
.Ld1048:
	strh	r3, [r1, #0x36]
.Ld104a:
	mov	r3, #0xe1
	ldr	r2, [sp, #0x4c]
	lsl	r3, #7
	mov	r1, #0
	add	r3, r2, r3
	str	r1, [sp, #0x38]
	str	r1, [sp, #0x18]
	str	r3, [sp, #0x14]
	str	r1, [sp, #0x10]
.Ld105c:
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x10]
	cmp	r4, r0
	bge	.Ld1066
	b	.Ld12d2
.Ld1066:
	ldr	r1, [sp, #0x14]
	sub	r5, r4, r0
	mov	r10, r1
	mov	r3, r5
	cmp	r5, #0
	bge	.Ld1074
	add	r3, r5, #3
.Ld1074:
	asr	r3, #2
	add	r3, #2
	mov	r8, r3
	cmp	r3, #0xa
	ble	.Ld1082
	mov	r2, #0xa
	mov	r8, r2
.Ld1082:
	bl	Func_49ac
	ldr	r0, [sp, #0x30]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	ldr	r0, [sp, #0x14]
	bl	Func_4cb4
	mov	r3, #0
	ldr	r2, [sp, #0x18]
	mov	r0, #0x80
	str	r3, [sp, #0x2c]
	lsl	r0, #5
	lsl	r3, r5, #12
	add	r0, r3, r0
	lsl	r3, r2, #3
	str	r0, [sp, #0x24]
	mov	r1, #0x5c
	sub	r3, r2
	ldr	r0, =ewram_10000
	add	r1, sp
	lsl	r3, #2
	str	r5, [sp, #0x28]
	mov	r4, #0
	add	r7, sp, #0x50
	add	r6, sp, #0x68
	mov	r9, r1
	add	r5, r3, r0
.Ld10be:
	str	r4, [sp, #0xc]
	bl	Func_49e8
	ldr	r1, [sp, #0x28]
	lsl	r0, r1, #10
	bl	Func_4c6c
	mov	r0, #0x80
	lsl	r0, #7
	bl	Func_4c1c
	mov	r3, #0x80
	ldr	r2, [sp, #0x24]
	lsl	r3, #9
	str	r2, [r7]
	ldr	r4, [sp, #0xc]
	cmp	r2, r3
	ble	.Ld10e4
	str	r3, [r7]
.Ld10e4:
	ldr	r3, [r7]
	mov	r0, r7
	str	r3, [r7, #4]
	str	r3, [r7, #8]
	str	r4, [sp, #0xc]
	bl	Func_4cf0
	ldr	r3, =0x199a
	ldr	r4, [sp, #0xc]
	mov	r0, r4
	mul	r0, r3
	bl	Func_4c6c
	ldr	r4, [sp, #0xc]
	mov	r3, #1
	and	r3, r4
	lsl	r0, r3, #1
	add	r0, r3
	ldr	r3, =.Lee140
	lsl	r0, #2
	add	r0, r3
	mov	r1, r6
	bl	Func_e3944
	ldr	r3, [sp, #0x2c]
	ldr	r4, [sp, #0xc]
	cmp	r3, r0
	bge	.Ld111e
	str	r0, [sp, #0x2c]
.Ld111e:
	ldr	r2, [r6]
	asr	r2, #1
	str	r2, [r6]
	mov	r0, r9
	ldr	r3, [r0]
	add	r2, r3
	str	r2, [r5, #0xc]
	ldr	r3, [r0, #4]
	ldr	r2, [r6, #4]
	add	r2, r3
	str	r2, [r5, #0x10]
	ldr	r3, [r6]
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x10]
	str	r4, [sp, #0xc]
	bl	Func_4a5c
	ldr	r4, [sp, #0xc]
	add	r4, #1
	add	r5, #0x1c
	cmp	r4, #0xa
	bne	.Ld10be
	ldr	r1, [sp, #0x2c]
	ldr	r2, =0x61a7f
	cmp	r1, r2
	bgt	.Ld11ea
	ldr	r3, [sp, #0x18]
	mov	r1, r8
	str	r3, [sp, #0x20]
	lsr	r3, r1, #31
	add	r3, r8
	mov	r0, r8
	asr	r3, #1
	lsl	r0, #1
	str	r3, [sp, #0x1c]
	mov	r4, #0
	mov	r9, r0
.Ld116a:
	ldr	r3, [sp, #0x20]
	add	r2, r4, r3
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r0, =ewram_10000
	lsl	r3, #2
	add	r4, #1
	add	r7, r3, r0
	mov	r1, #0xa
	mov	r0, r4
	str	r4, [sp, #8]
	bl	Func_b1c_from_thumb
	ldr	r1, [sp, #0x20]
	add	r0, r1
	lsl	r3, r0, #3
	sub	r3, r0
	ldr	r2, =ewram_10000
	lsl	r3, #2
	add	r6, r3, r2
	mov	r5, #0
.Ld1194:
	ldr	r3, [r6, #0xc]
	ldr	r2, [r7, #0xc]
	sub	r3, r2
	mul	r3, r5
	cmp	r3, #0
	bge	.Ld11a2
	add	r3, #0xf
.Ld11a2:
	asr	r3, #4
	add	r0, r2, r3
	ldr	r3, [r6, #0x10]
	ldr	r2, [r7, #0x10]
	sub	r3, r2
	mul	r3, r5
	cmp	r3, #0
	bge	.Ld11b4
	add	r3, #0xf
.Ld11b4:
	asr	r3, #4
	add	r2, r3
	mov	r12, r2
	ldr	r3, =Data_ede48
	mov	r2, r9
	sub	r2, #2
	ldrh	r1, [r3, r2]
	ldr	r4, [sp, #0x34]
	ldr	r3, [sp, #0x1c]
	add	r1, r4, r1
	sub	r2, r0, r3
	mov	r4, r12
	mov	r0, r8
	sub	r3, r4, r0
	mov	r4, r9
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x48]
	ldr	r4, [sp, #0x3c]
	add	r5, #1
	bl	_call_via_r4
	cmp	r5, #0x10
	bne	.Ld1194
	ldr	r4, [sp, #8]
	cmp	r4, #0xa
	bne	.Ld116a
.Ld11ea:
	mov	r0, r10
	ldr	r3, [r0]
	ldr	r2, [r0, #0xc]
	add	r3, r2
	str	r3, [r0]
	ldr	r2, [r0, #0x10]
	ldr	r3, [r0, #4]
	add	r3, r2
	str	r3, [r0, #4]
	ldr	r2, [r0, #0x14]
	ldr	r3, [r0, #8]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0x38]
	ldr	r4, [sp, #0x44]
	add	r3, r1, r2
	add	r3, #0xa
	cmp	r4, r3
	bne	.Ld12d2
	mov	r3, #0x80
	mov	r0, r11
	lsl	r3, #10
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x30]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	ldr	r3, =0xab85
	mov	r2, r11
	str	r3, [r0, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_c4ac
	mov	r2, r11
	ldr	r1, [r2, #8]
	cmp	r1, #0
	bge	.Ld124e
	ldr	r3, =0xffd80000
	mov	r0, r11
	add	r1, r3
	ldr	r3, [r2, #0x10]
	mov	r2, #0
	bl	_Func_d14c
	b	.Ld125e
.Ld124e:
	mov	r4, #0xa0
	lsl	r4, #14
	mov	r0, r11
	add	r1, r4
	ldr	r3, [r0, #0x10]
	mov	r2, #0
	bl	_Func_d14c
.Ld125e:
	ldr	r1, [sp, #0x38]
	cmp	r1, #2
	bne	.Ld12a8
	mov	r0, #0x86
	bl	_Func_bd7dc
	b	.Ld12c8

	.pool_aligned

.Ld12a8:
	mov	r0, #0x86
	bl	_Func_f9080
	ldr	r4, =0x7828
	ldr	r2, [sp, #0x4c]
	add	r3, r2, r4
	ldr	r3, [r3]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
.Ld12c8:
	ldr	r3, [sp, #0x4c]
	ldr	r4, =0x77a8
	add	r2, r3, r4
	mov	r3, #4
	str	r3, [r2]
.Ld12d2:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0x38]
	add	r0, #0xa
	add	r1, #0x1c
	add	r2, #0xc
	add	r3, #1
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x10]
	str	r3, [sp, #0x38]
	cmp	r3, #3
	beq	.Ld12f0
	b	.Ld105c
.Ld12f0:
	mov	r1, #8
	mov	r0, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r0, =0x7824
	ldr	r4, [sp, #0x4c]
	mov	r3, #1
	add	r2, r4, r0
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	cmp	r1, #0x3c
	beq	.Ld1318
	b	.Ld1016
.Ld1318:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x74
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d0ee0

.thumb_func_start Func_d1350
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
	sub	sp, #0x40
	str	r1, [sp, #0x30]
	ldr	r3, [r3]
	str	r3, [sp, #0x2c]
	ldr	r2, [r6, #8]
	mov	r3, r6
	str	r2, [sp, #0x18]
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x14]
	ldr	r3, =0x7828
	add	r1, r3
	str	r0, [r1]
	mov	r0, #1
	mov	r8, r1
	bl	Func_cd594
	ldr	r0, =0x79
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r0, =0x73
	bl	Func_2f40
	ldr	r1, [sp, #0x18]
	bl	Func_5340
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	mov	r1, #0xef
	ldr	r0, [sp, #0x30]
	lsl	r1, #7
	add	r3, r0, r1
	str	r5, [r3]
	ldr	r3, =0x7784
	ldr	r6, [r6, #0x1c]
	add	r2, r0, r3
	mov	r1, #0x90
	mov	r3, #0x32
	str	r3, [r2]
	lsl	r1, #3
	mov	r5, r8
	ldr	r0, =Func_cd260
	str	r6, [sp, #0x20]
	bl	Func_41d8
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r10, r0
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	mov	r5, #0xe1
	mov	r2, #0
	ldr	r3, [sp, #0x30]
	ldr	r7, [r0]
	lsl	r5, #7
	str	r2, [sp, #0x1c]
	add	r6, r3, r5
.Ld13fc:
	mov	r1, r10
	ldr	r3, [r1, #8]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	ldr	r0, [sp, #0x1c]
	str	r3, [r6]
	mov	r2, #0xf0
	ldr	r3, [r1, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r1, #0x10]
	str	r3, [r6, #8]
	lsl	r5, r0, #3
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x40
	ldr	r0, [r7, #8]
	lsl	r3, #16
	add	r0, r3
	ldr	r3, [r6]
	mov	r1, #0xc
	sub	r0, r3
	bl	Func_af0_from_thumb
	str	r0, [r6, #0xc]
	ldr	r0, [r7, #0xc]
	ldr	r3, [r6, #4]
	sub	r0, r3
	mov	r3, #0xa0
	lsl	r3, #13
	add	r0, r3
	mov	r1, #0xc
	bl	Func_af0_from_thumb
	str	r0, [r6, #0x10]
	ldr	r3, [r6, #8]
	ldr	r0, [r7, #0x10]
	mov	r1, #0xc
	sub	r0, r3
	bl	Func_af0_from_thumb
	str	r0, [r6, #0x14]
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, r5
	str	r3, [r6, #0x18]
	ldr	r5, [sp, #0x1c]
	add	r5, #1
	add	r6, #0x1c
	str	r5, [sp, #0x1c]
	cmp	r5, #8
	bne	.Ld13fc
	mov	r0, #0
	str	r0, [sp, #0x28]
.Ld1474:
	ldr	r1, =0xaaab
	ldr	r0, [sp, #0x28]
	ldr	r2, =0x5555
	mov	r3, #0
	bl	Func_d40ec
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x60
	bne	.Ld148c
	mov	r0, #0x86
	bl	_Func_bd7dc
.Ld148c:
	mov	r2, #0
	ldr	r3, [sp, #0x30]
	mov	r5, #0xe1
	lsl	r5, #7
	str	r2, [sp, #0x1c]
	str	r2, [sp, #0x10]
	add	r7, r3, r5
.Ld149a:
	ldr	r3, [r7, #0x18]
	ldr	r0, [sp, #0x28]
	cmp	r0, r3
	bge	.Ld14a4
	b	.Ld166e
.Ld14a4:
	bl	Func_49ac
	ldr	r0, [sp, #0x14]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	add	r5, sp, #0x34
	mov	r0, r7
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	add	r3, #8
	cmp	r3, #0x87
	bls	.Ld14ca
	b	.Ld15ee
.Ld14ca:
	ldr	r3, [r5, #4]
	cmp	r3, #0x7f
	ble	.Ld14d2
	b	.Ld15ee
.Ld14d2:
	mov	r1, #8
	neg	r1, r1
	cmp	r3, r1
	bge	.Ld14dc
	b	.Ld15ee
.Ld14dc:
	ldr	r3, [sp, #0x1c]
	lsl	r2, r3, #2
	add	r2, r3
	lsl	r3, r2, #3
	mov	r10, r5
	sub	r3, r2
	ldr	r5, =.Lee158
	ldr	r0, =ewram_10000
	lsl	r3, #3
	mov	r4, #0
	mov	r8, r5
	add	r1, r3, r0
.Ld14f4:
	ldr	r3, =0x199a
	mov	r6, r4
	mul	r6, r3
	ldr	r2, [sp, #0x28]
	ldr	r0, [r7, #0x18]
	sub	r0, r2, r0
	lsl	r0, #11
	sub	r0, r6, r0
	str	r1, [sp, #0xc]
	str	r4, [sp, #8]
	bl	Func_2322
	ldr	r4, [sp, #8]
	mov	r5, #1
	and	r5, r4
	mov	r2, r8
	ldrb	r3, [r2, r5]
	mov	r2, r3
	mul	r2, r0
	mov	r0, r10
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0]
	ldr	r1, [sp, #0xc]
	asr	r2, #17
	add	r3, r2
	str	r3, [r1, #0xc]
	ldr	r2, [sp, #0x28]
	ldr	r3, [r7, #0x18]
	sub	r3, r2, r3
	lsl	r3, #11
	sub	r6, r3
	mov	r0, r6
	bl	Func_231c
	mov	r2, r8
	ldrb	r3, [r2, r5]
	mov	r2, r3
	mul	r2, r0
	mov	r5, r10
	ldr	r3, [r5, #4]
	ldr	r4, [sp, #8]
	ldr	r1, [sp, #0xc]
	asr	r2, #16
	sub	r3, r2
	add	r4, #1
	str	r3, [r1, #0x10]
	add	r1, #0x1c
	cmp	r4, #0xa
	bne	.Ld14f4
	ldr	r0, [sp, #0x10]
	mov	r4, #0
	mov	r11, r0
.Ld155e:
	mov	r1, r11
	add	r2, r4, r1
	lsl	r3, r2, #3
	add	r4, #1
	sub	r3, r2
	ldr	r2, =ewram_10000
	lsl	r3, #2
	mov	r9, r4
	add	r2, r3
	mov	r0, r9
	mov	r1, #0xa
	mov	r10, r2
	bl	Func_b1c_from_thumb
	add	r0, r11
	lsl	r3, r0, #3
	sub	r3, r0
	ldr	r5, =ewram_10000
	lsl	r3, #2
	add	r5, r3
	mov	r8, r5
	mov	r4, #0
.Ld158a:
	mov	r0, r8
	mov	r1, r10
	ldr	r6, [r1, #0xc]
	ldr	r3, [r0, #0xc]
	sub	r3, r6
	mov	r0, r4
	mul	r0, r3
	mov	r1, #0xc
	str	r4, [sp, #8]
	bl	Func_af0_from_thumb
	mov	r2, r8
	add	r6, r0
	mov	r0, r10
	ldr	r3, [r2, #0x10]
	ldr	r5, [r0, #0x10]
	ldr	r4, [sp, #8]
	sub	r3, r5
	mov	r0, r4
	mul	r0, r3
	mov	r1, #0xc
	bl	Func_af0_from_thumb
	ldr	r2, =Data_ede48
	mov	r3, #4
	sub	r3, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x18]
	add	r5, r0
	mov	r0, #1
	add	r1, r3, r1
	sub	r6, r0
	sub	r5, #2
	mov	r2, #2
	mov	r3, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x2c]
	mov	r3, r5
	mov	r2, r6
	ldr	r5, [sp, #0x20]
	bl	_call_via_r5
	ldr	r4, [sp, #8]
	add	r4, #1
	cmp	r4, #0xc
	bne	.Ld158a
	mov	r4, r9
	cmp	r4, #0xa
	bne	.Ld155e
.Ld15ee:
	ldr	r3, [r7, #4]
	ldr	r0, =0x1dffff
	cmp	r3, r0
	bgt	.Ld1656
	ldr	r3, [r7, #0x10]
	neg	r3, r3
	str	r3, [r7, #0x10]
	ldr	r3, [r7, #0xc]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r7, #0x14]
	ldr	r1, [sp, #0x30]
	ldr	r3, =0x77a8
	add	r2, r1, r3
	mov	r3, #4
	str	r3, [r2]
	mov	r0, #0x86
	bl	_Func_f9080
	ldr	r3, =0x7828
	ldr	r5, [sp, #0x30]
	ldr	r3, [r5, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Ld1656
	ldr	r0, =0x7828
	mov	r6, #0x24
	add	r5, r0
.Ld1634:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
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
	bne	.Ld1634
.Ld1656:
	ldr	r3, [r7]
	ldr	r2, [r7, #0xc]
	add	r3, r2
	str	r3, [r7]
	ldr	r2, [r7, #0x10]
	ldr	r3, [r7, #4]
	add	r3, r2
	str	r3, [r7, #4]
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #8]
	add	r3, r2
	str	r3, [r7, #8]
.Ld166e:
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0x1c]
	add	r2, #0xa
	add	r3, #1
	str	r2, [sp, #0x10]
	add	r7, #0x1c
	str	r3, [sp, #0x1c]
	cmp	r3, #8
	beq	.Ld1682
	b	.Ld149a
.Ld1682:
	mov	r1, #4
	mov	r0, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r0, =0x7824
	ldr	r5, [sp, #0x30]
	mov	r3, #1
	add	r2, r5, r0
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x28]
	add	r1, #1
	str	r1, [sp, #0x28]
	cmp	r1, #0x80
	beq	.Ld16aa
	b	.Ld1474
.Ld16aa:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
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
.func_end Func_d1350

	.section .rodata

.Lee10c:
	.incrom 0xee10c, 0xee11a
.Lee11a:
	.incrom 0xee11a, 0xee128
.Lee128:
	.incrom 0xee128, 0xee134
.Lee134:
	.incrom 0xee134, 0xee140
.Lee140:
	.incrom 0xee140, 0xee158
.Lee158:
	.incrom 0xee158, 0xee15a
