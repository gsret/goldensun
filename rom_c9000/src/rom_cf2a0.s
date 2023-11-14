	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_cf2a0
	push	{lr}
	mov	r1, #0
	bl	Func_cf2b8
	pop	{r0}
	bx	r0
.func_end Func_cf2a0

.thumb_func_start Func_cf2ac
	push	{lr}
	mov	r1, #1
	bl	Func_cf2b8
	pop	{r0}
	bx	r0
.func_end Func_cf2ac

.thumb_func_start Func_cf2b8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	mov	r6, r0
	ldmia	r3!, {r0}
	ldr	r5, =0x7828
	ldr	r3, [r3]
	mov	r11, r0
	sub	sp, #0x74
	add	r5, r11
	str	r3, [sp, #0x30]
	mov	r0, #0
	str	r6, [r5]
	mov	r7, r1
	bl	Func_cd594
	ldr	r5, [r5]
	ldr	r3, [r5, #0x1c]
	cmp	r3, #1
	bne	.Lcf300
	ldr	r2, [r5, #4]
	eor	r2, r3
	add	r3, sp, #0x40
	str	r3, [sp]
	add	r3, sp, #0x3c
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, r7
	mov	r3, #0
	bl	Func_de2f8
.Lcf300:
	ldr	r0, =0x7b
	bl	Func_2f40
	mov	r6, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	mov	r1, r6
	ldr	r5, =Func_1af8
	add	r6, #0x80
	lsl	r0, #19
	bl	_call_via_r5
	mov	r1, r11
	mov	r0, r6
	bl	Func_5340
	ldr	r0, =0xb1
	bl	Func_2f40
	mov	r6, r0
	mov	r0, #0xa0
	mov	r1, r6
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r5
	ldr	r1, =0x2710
	add	r6, #0x80
	add	r1, r11
	mov	r0, r6
	bl	Func_5340
	cmp	r7, #0
	bne	.Lcf348
	ldr	r0, =0x93
	b	.Lcf34a
.Lcf348:
	ldr	r0, =0x91
.Lcf34a:
	bl	Func_2f40
	mov	r6, r0
	mov	r0, #0xa0
	mov	r1, r6
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r1, =0x65c0
	add	r6, #0x80
	add	r1, r11
	mov	r0, r6
	bl	Func_5340
	ldr	r5, =ewram_10000
	mov	r1, #0
	mov	r9, r1
.Lcf370:
	mov	r3, #0
	str	r3, [r5]
	mov	r3, #0xa0
	lsl	r3, #15
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0x20
	neg	r3, r3
	orr	r3, r0
	lsl	r3, #14
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	str	r3, [r5, #0x18]
	mov	r2, #1
	mov	r3, #0x80
	add	r9, r2
	lsl	r3, #2
	add	r5, #0x1c
	cmp	r9, r3
	bne	.Lcf370
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lcf3c8	@ 0x100
	strh	r3, [r2]
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r2, [r3]
	ldr	r3, [r2, #0x14]
	cmp	r3, #1
	bne	.Lcf3f8
	mov	r5, #0x24
	ldrsh	r0, [r2, r5]
	add	r5, sp, #0x68
	mov	r1, r5
	bl	Func_e396c
	ldr	r2, [r5]
	mov	r3, #0x40
	sub	r3, r2
	str	r3, [sp, #0x28]
	b	.Lcf408

	.align	2, 0
.Lcf3c8:
	.word	0x100
	.pool

.Lcf3f8:
	ldr	r3, [r2, #4]
	mov	r0, #0x70
	neg	r0, r0
	str	r0, [sp, #0x28]
	cmp	r3, #1
	beq	.Lcf408
	mov	r1, #0
	str	r1, [sp, #0x28]
.Lcf408:
	ldr	r5, [sp, #0x28]
	ldr	r2, =REG_BG2X
	lsl	r3, r5, #8
	str	r3, [r2]
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #0
	ldr	r3, =0x7828
	str	r0, [sp, #0x2c]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #0x74
	lsl	r3, #4
	neg	r1, r1
	cmp	r3, r1
	bne	.Lcf444
	b	.Lcf84c
.Lcf444:
	mov	r2, sp
	add	r2, #0x34
	str	r2, [sp, #0x1c]
.Lcf44a:
	ldr	r3, =iwram_1e80
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, [sp, #0x2c]
	cmp	r3, #0x40
	bne	.Lcf45c
	mov	r0, #0xd4
	bl	_Func_f9080
.Lcf45c:
	ldr	r5, [sp, #0x2c]
	cmp	r5, #0x50
	bne	.Lcf468
	mov	r0, #0
	bl	_Func_bd7dc
.Lcf468:
	ldr	r7, =0x7828
	add	r7, r11
	ldr	r3, [r7]
	ldr	r3, [r3, #0x1c]
	mov	r8, r3
	cmp	r3, #1
	bne	.Lcf504
	ldr	r0, [sp, #0x2c]
	lsl	r5, r0, #11
	mov	r0, r5
	bl	Func_2322
	neg	r0, r0
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, [sp, #0x40]
	lsl	r3, #2
	ldr	r1, [sp, #0x28]
	asr	r3, #16
	add	r3, r2
	add	r3, r1
	sub	r3, #0x14
	mov	r0, r5
	mov	r10, r3
	bl	Func_231c
	ldr	r3, [sp, #0x3c]
	lsl	r0, #2
	asr	r0, #16
	add	r0, r3
	ldr	r3, [r7]
	mov	r6, r0
	ldr	r0, [r3, #4]
	mov	r2, r8
	eor	r0, r2
	ldr	r1, [sp, #0x1c]
	bl	Func_cef64
	ldr	r3, [sp, #0x2c]
	sub	r6, #0x18
	cmp	r3, #0x20
	ble	.Lcf4c4
	lsl	r3, #1
	sub	r3, r6, r3
	mov	r6, r3
	add	r6, #0x40
.Lcf4c4:
	mov	r5, #0x28
	ldr	r7, =0x65c0
	ldr	r0, [sp, #0x1c]
	str	r5, [sp]
	str	r5, [sp, #4]
	add	r7, r11
	ldr	r4, [r0, #4]
	mov	r1, r7
	ldr	r0, [sp, #0x30]
	mov	r2, r10
	mov	r3, r6
	bl	_call_via_r4
	ldr	r1, [sp, #0x2c]
	cmp	r1, #3
	bgt	.Lcf4f8
	ldr	r2, [sp, #0x1c]
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [r2, #4]
	mov	r1, r7
	mov	r2, r10
	mov	r3, r6
	bl	_call_via_r4
.Lcf4f8:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
.Lcf504:
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
	str	r3, [sp, #0x34]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	Func_ed408
	add	r5, #0xbc
	ldr	r3, [r5]
	ldr	r2, =0x7828
	ldr	r5, [sp, #0x1c]
	mov	r1, r11
	str	r3, [r5, #4]
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	bne	.Lcf546
	b	.Lcf678
.Lcf546:
	ldr	r3, [sp, #0x24]
	add	r3, #0xc
	str	r3, [sp, #0x20]
	str	r0, [sp, #0x10]
	add	r7, sp, #0x44
.Lcf550:
	mov	r5, r11
	mov	r0, r8
	ldr	r2, [r5, r2]
	lsl	r3, r0, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	mov	r2, r8
	lsl	r2, #4
	ldr	r5, [r0]
	mov	r10, r2
	bl	Func_49ac
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x20]
	bl	Func_51d8
	ldr	r3, [r5, #8]
	str	r3, [r7]
	mov	r3, #0
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	bl	Func_4cb4
	ldr	r3, [sp, #0x2c]
	cmp	r3, r10
	ble	.Lcf65c
	ldr	r0, [sp, #0x10]
	ldr	r1, =ewram_10000
	mov	r5, #0
	mov	r9, r5
	add	r6, r0, r1
.Lcf596:
	mov	r2, r9
	lsl	r3, r2, #3
	ldr	r5, [sp, #0x2c]
	add	r3, r10
	cmp	r5, r3
	ble	.Lcf650
	mov	r0, #0x80
	ldr	r3, [r6, #4]
	lsl	r0, #12
	cmp	r3, r0
	ble	.Lcf650
	add	r5, sp, #0x5c
	mov	r1, r5
	mov	r0, r6
	bl	Func_e3944
	ldr	r3, [r5]
	ldr	r1, [sp, #0x28]
	add	r3, r1
	str	r3, [r5]
	ldr	r0, [r6, #0x18]
	lsl	r0, #10
	bl	Func_2322
	mov	r3, #1
	mov	r2, r9
	lsl	r0, #4
	and	r3, r2
	asr	r0, #16
	cmp	r3, #0
	beq	.Lcf5fc
	ldr	r3, [r5]
	sub	r3, r0
	b	.Lcf600

	.pool_aligned

.Lcf5fc:
	ldr	r3, [r5]
	add	r3, r0
.Lcf600:
	str	r3, [r5]
	mov	r3, #1
	mov	r0, r9
	ldr	r1, [sp, #0x1c]
	and	r3, r0
	ldr	r2, [r6, #0x18]
	lsl	r3, #2
	add	r4, r3, r1
	ldr	r1, =.Lee0a2
	cmp	r2, #0
	bge	.Lcf618
	add	r2, #7
.Lcf618:
	mov	r3, #7
	asr	r2, #3
	and	r2, r3
	ldrb	r3, [r1, r2]
	lsl	r1, r3, #3
	add	r1, r3
	ldr	r2, =0x2710
	lsl	r1, #6
	mov	r0, #0x18
	add	r1, r11
	ldr	r3, [r5, #4]
	add	r1, r2
	ldr	r2, [r5]
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r3, #0xc
	sub	r2, #0xc
	ldr	r4, [r4]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	ldr	r5, =0xffff0000
	ldr	r3, [r6, #4]
	add	r3, r5
	str	r3, [r6, #4]
	ldr	r3, [r6, #0x18]
	add	r3, #1
	str	r3, [r6, #0x18]
.Lcf650:
	mov	r0, #1
	add	r9, r0
	mov	r1, r9
	add	r6, #0x1c
	cmp	r1, #8
	bne	.Lcf596
.Lcf65c:
	ldr	r2, [sp, #0x10]
	mov	r3, #0xe0
	lsl	r3, #3
	add	r2, r3
	str	r2, [sp, #0x10]
	ldr	r2, =0x7828
	mov	r0, r11
	ldr	r3, [r0, r2]
	mov	r5, #1
	ldr	r3, [r3, #0x14]
	add	r8, r5
	cmp	r8, r3
	beq	.Lcf678
	b	.Lcf550
.Lcf678:
	ldr	r2, =0x7828
	mov	r5, r11
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	mov	r1, #0
	mov	r9, r1
	cmp	r3, #0
	bne	.Lcf68a
	b	.Lcf81a
.Lcf68a:
	mov	r0, #0x24
	mov	r1, #0x48
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x18]
.Lcf692:
	mov	r3, r9
	ldr	r5, [sp, #0x2c]
	ldr	r0, [sp, #0x18]
	lsl	r3, #4
	mov	r8, r3
	cmp	r5, r0
	bge	.Lcf6a2
	b	.Lcf7fc
.Lcf6a2:
	mov	r1, r11
	add	r5, r1, r2
	ldr	r3, [r5]
	ldr	r2, [sp, #0x14]
	ldrsh	r0, [r3, r2]
	bl	_Func_b7dd0
	ldr	r6, [r0]
	bl	Func_49ac
	ldr	r0, [sp, #0x24]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	ldr	r2, [sp, #0x2c]
	ldr	r3, [sp, #0x18]
	cmp	r2, r3
	bne	.Lcf6de
	ldr	r3, [r5]
	ldr	r1, [sp, #0x14]
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #1
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Lcf6de:
	ldr	r4, [sp, #0x18]
	ldr	r3, [sp, #0x2c]
	add	r4, #0x10
	cmp	r3, r4
	bne	.Lcf702
	ldr	r3, [r5]
	ldr	r5, [sp, #0x14]
	mov	r2, #1
	ldrsh	r0, [r3, r5]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r4, [sp, #8]
.Lcf702:
	ldr	r3, [r6, #8]
	add	r0, sp, #0x50
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x10]
	add	r7, sp, #0x5c
	str	r3, [r0, #8]
	mov	r1, r7
	str	r4, [sp, #8]
	bl	Func_e3944
	ldr	r3, [r7]
	ldr	r5, [sp, #0x28]
	add	r2, r3, r5
	str	r2, [r7]
	mov	r3, r8
	ldr	r0, [sp, #0x2c]
	add	r3, #0x68
	ldr	r4, [sp, #8]
	cmp	r0, r3
	bge	.Lcf7fc
	mov	r3, r0
	cmp	r0, #0
	bge	.Lcf736
	add	r3, #3
.Lcf736:
	asr	r6, r3, #2
	ldr	r3, [sp, #0x2c]
	mov	r1, #6
	mov	r10, r1
	cmp	r3, r4
	ble	.Lcf758
	mov	r5, r8
	sub	r0, r3, r5
	mov	r1, #3
	sub	r0, #0x58
	str	r2, [sp, #0xc]
	bl	Func_af0_from_thumb
	mov	r1, r10
	sub	r1, r0
	ldr	r2, [sp, #0xc]
	mov	r10, r1
.Lcf758:
	cmp	r6, #2
	ble	.Lcf762
	mov	r3, #1
	and	r3, r6
	add	r6, r3, #1
.Lcf762:
	mov	r3, r8
	ldr	r5, [sp, #0x2c]
	add	r3, #0x64
	cmp	r5, r3
	bge	.Lcf7b4
	ldr	r3, =.Lee0b0
	ldr	r0, =.Lee0aa
	ldrb	r4, [r3, r6]
	ldr	r3, =.Lee0b3
	lsl	r5, r6, #1
	ldrh	r1, [r0, r5]
	ldrb	r0, [r3, r6]
	ldr	r3, [r7, #4]
	sub	r3, r0
	sub	r2, r4
	add	r1, r11
	add	r3, #8
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	ldr	r0, =.Lee0aa
	ldr	r3, =.Lee0b3
	ldrh	r1, [r0, r5]
	ldr	r5, =.Lee0b0
	ldrb	r4, [r3, r6]
	ldrb	r0, [r5, r6]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x1c]
	sub	r3, r4
	add	r1, r11
	ldr	r4, [r0, #4]
	add	r3, #8
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
.Lcf7b4:
	ldr	r3, [r7, #4]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	beq	.Lcf7fc
	mov	r5, r11
	mov	r6, r7
	add	r5, #5
	mov	r7, #1
.Lcf7c6:
	ldr	r2, [r6]
	mov	r3, r10
	sub	r2, r3
	str	r3, [sp]
	ldr	r4, [sp, #0x34]
	mov	r3, r8
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x30]
	mov	r1, r5
	bl	_call_via_r4
	mov	r0, r10
	ldr	r2, [r6]
	ldr	r1, [sp, #0x1c]
	str	r0, [sp]
	str	r7, [sp, #4]
	mov	r3, r8
	ldr	r4, [r1, #4]
	ldr	r0, [sp, #0x30]
	mov	r1, r5
	bl	_call_via_r4
	mov	r2, #1
	ldr	r3, [r6, #4]
	add	r8, r2
	cmp	r8, r3
	bne	.Lcf7c6
.Lcf7fc:
	ldr	r3, [sp, #0x14]
	ldr	r5, [sp, #0x18]
	add	r3, #2
	add	r5, #0x10
	str	r3, [sp, #0x14]
	str	r5, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r1, r11
	ldr	r3, [r1, r2]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r9, r0
	cmp	r9, r3
	beq	.Lcf81a
	b	.Lcf692
.Lcf81a:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x2c]
	ldr	r3, =0x7828
	add	r2, #1
	str	r2, [sp, #0x2c]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #4
	add	r3, #0x74
	cmp	r2, r3
	beq	.Lcf84c
	b	.Lcf44a
.Lcf84c:
	ldr	r0, =Func_cd260
	bl	Func_4278
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
.func_end Func_cf2b8

	.section .rodata

.Lee0a2:
	.incrom 0xee0a2, 0xee0aa
.Lee0aa:
	.incrom 0xee0aa, 0xee0b0
.Lee0b0:
	.incrom 0xee0b0, 0xee0b3
.Lee0b3:
	.incrom 0xee0b3, 0xee0b6
