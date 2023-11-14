	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_d9194
	push	{lr}
	mov	r1, #0
	bl	Func_d91dc
	pop	{r0}
	bx	r0
.func_end Func_d9194

.thumb_func_start Func_d91a0
	push	{lr}
	mov	r1, #1
	bl	Func_d91dc
	pop	{r0}
	bx	r0
.func_end Func_d91a0

.thumb_func_start Func_d91ac
	push	{lr}
	mov	r1, #2
	bl	Func_d91dc
	pop	{r0}
	bx	r0
.func_end Func_d91ac

.thumb_func_start Func_d91b8
	push	{lr}
	mov	r1, #3
	bl	Func_d91dc
	pop	{r0}
	bx	r0
.func_end Func_d91b8

.thumb_func_start Func_d91c4
	push	{lr}
	mov	r1, #5
	bl	Func_d91dc
	pop	{r0}
	bx	r0
.func_end Func_d91c4

.thumb_func_start Func_d91d0
	push	{lr}
	mov	r1, #4
	bl	Func_d91dc
	pop	{r0}
	bx	r0
.func_end Func_d91d0

.thumb_func_start Func_d91dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x84
	str	r1, [sp, #0x48]
	ldr	r3, =iwram_1eec
	mov	r6, r0
	ldmia	r3!, {r0}
	str	r0, [sp, #0x44]
	ldr	r1, =0x7828
	ldr	r3, [r3]
	add	r5, r0, r1
	str	r3, [sp, #0x40]
	mov	r0, #0
	str	r6, [r5]
	bl	Func_cd594
	ldr	r5, [r5]
	ldr	r3, [r5, #0x1c]
	cmp	r3, #1
	bne	.Ld9272
	ldr	r2, [sp, #0x48]
	cmp	r2, #3
	bne	.Ld9226
	ldr	r2, [r5, #4]
	eor	r2, r3
	add	r3, sp, #0x50
	str	r3, [sp]
	add	r3, sp, #0x4c
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0
	b	.Ld9240
.Ld9226:
	ldr	r4, [sp, #0x48]
	cmp	r4, #2
	beq	.Ld9230
	cmp	r4, #4
	bne	.Ld9250
.Ld9230:
	ldr	r2, [r5, #4]
	eor	r2, r3
	add	r3, sp, #0x50
	str	r3, [sp]
	add	r3, sp, #0x4c
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #3
.Ld9240:
	mov	r3, #1
	bl	Func_de2f8
	b	.Ld9266

	.pool_aligned

.Ld9250:
	ldr	r2, [r5, #4]
	eor	r2, r3
	add	r3, sp, #0x50
	str	r3, [sp]
	add	r3, sp, #0x4c
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #2
	mov	r3, #1
	bl	Func_de2f8
.Ld9266:
	ldr	r0, [sp, #0x50]
	mov	r1, #5
	lsl	r0, #2
	bl	Func_af0_from_thumb
	str	r0, [sp, #0x50]
.Ld9272:
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld92ac	@ 0xcc
	strh	r3, [r2]
	ldr	r1, [sp, #0x44]
	ldr	r0, =0x76
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r2, =0x60e
	ldr	r5, [sp, #0x44]
	mov	r3, #1
	add	r1, r5, r2
	ldr	r0, =0xb7
	mov	r2, #1
	bl	Func_e0524
	ldr	r3, [sp, #0x48]
	cmp	r3, #3
	beq	.Ld929e
	cmp	r3, #5
	bne	.Ld92ee
.Ld929e:
	ldr	r4, [sp, #0x44]
	ldr	r5, =0x2b8e
	ldr	r0, =0xb0
	add	r1, r4, r5
	mov	r2, #1
	b	.Ld92c8

	.align	2, 0
.Ld92ac:
	.word	0xcc
	.pool

.Ld92c8:
	mov	r3, #1
	bl	Func_e0524
	ldr	r0, [sp, #0x48]
	cmp	r0, #3
	bne	.Ld92d8
	ldr	r0, =0x93
	b	.Ld92da
.Ld92d8:
	ldr	r0, =0x8d
.Ld92da:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	b	.Ld9364
.Ld92ee:
	ldr	r1, [sp, #0x48]
	cmp	r1, #4
	bne	.Ld9306
	ldr	r2, [sp, #0x44]
	ldr	r3, =0x2b8e
	ldr	r0, =0xa5
	add	r1, r2, r3
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Ld9364
.Ld9306:
	ldr	r4, [sp, #0x48]
	cmp	r4, #0
	bne	.Ld931e
	ldr	r2, =0x2b8e
	ldr	r5, [sp, #0x44]
	ldr	r0, =0x9c
	add	r1, r5, r2
	mov	r3, #0
	mov	r2, #1
	bl	Func_e0524
	b	.Ld932e
.Ld931e:
	ldr	r3, [sp, #0x44]
	ldr	r4, =0x2b8e
	ldr	r0, =0x9b
	add	r1, r3, r4
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
.Ld932e:
	ldr	r5, [sp, #0x48]
	cmp	r5, #0
	bne	.Ld9338
	ldr	r0, =0x8d
	b	.Ld9352
.Ld9338:
	ldr	r0, [sp, #0x48]
	cmp	r0, #2
	beq	.Ld9342
	cmp	r0, #4
	bne	.Ld9346
.Ld9342:
	ldr	r0, =0x8f
	b	.Ld9352
.Ld9346:
	ldr	r1, [sp, #0x48]
	cmp	r1, #1
	bne	.Ld9350
	ldr	r0, =0x8d
	b	.Ld9352
.Ld9350:
	ldr	r0, =0xbb
.Ld9352:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ld9364:
	ldr	r2, [sp, #0x48]
	cmp	r2, #3
	bne	.Ld9374
	ldr	r3, [sp, #0x44]
	ldr	r4, =0x65c0
	ldr	r0, =0x93
	add	r1, r3, r4
	b	.Ld9386
.Ld9374:
	ldr	r5, [sp, #0x48]
	cmp	r5, #2
	beq	.Ld937e
	cmp	r5, #4
	bne	.Ld9390
.Ld937e:
	ldr	r2, [sp, #0x44]
	ldr	r3, =0x65c0
	ldr	r0, =0x8f
	add	r1, r2, r3
.Ld9386:
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	b	.Ld93a0
.Ld9390:
	ldr	r4, [sp, #0x44]
	ldr	r5, =0x65c0
	ldr	r0, =0x8d
	add	r1, r4, r5
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
.Ld93a0:
	mov	r0, #0
	ldr	r5, =ewram_10000
	mov	r10, r0
.Ld93a6:
	bl	Func_4458
	mov	r1, #0xc8
	bl	Func_b50_from_thumb
	sub	r0, #0x64
	lsl	r0, #14
	str	r0, [r5]
	bl	Func_4458
	mov	r1, #0xc8
	bl	Func_b50_from_thumb
	sub	r0, #0x64
	lsl	r0, #15
	str	r0, [r5, #4]
	bl	Func_4458
	mov	r1, #0xc8
	bl	Func_b50_from_thumb
	mov	r1, #1
	sub	r0, #0x64
	mov	r2, #0x80
	lsl	r0, #14
	mov	r3, #0
	add	r10, r1
	lsl	r2, #2
	str	r0, [r5, #8]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r10, r2
	bne	.Ld93a6
	ldr	r4, [sp, #0x44]
	ldr	r5, =0x7828
	add	r3, r4, r5
	ldr	r2, [r3]
	ldr	r3, [r2, #0x14]
	cmp	r3, #1
	bne	.Ld9414
	add	r5, sp, #0x78
	mov	r1, #0x24
	ldrsh	r0, [r2, r1]
	mov	r1, r5
	bl	Func_e396c
	ldr	r0, [r5]
	neg	r0, r0
	lsl	r0, #2
	mov	r1, #5
	bl	Func_af0_from_thumb
	add	r0, #0x40
	str	r0, [sp, #0x30]
	b	.Ld9424
.Ld9414:
	ldr	r3, [r2, #4]
	mov	r2, #0x40
	neg	r2, r2
	str	r2, [sp, #0x30]
	cmp	r3, #1
	beq	.Ld9424
	mov	r3, #0
	str	r3, [sp, #0x30]
.Ld9424:
	ldr	r4, [sp, #0x30]
	ldr	r2, =REG_BG2X
	lsl	r3, r4, #8
	str	r3, [r2]
	ldr	r5, [sp, #0x44]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r2, r5, r0
	mov	r3, #2
	str	r3, [r2]
	add	r2, r5, r1
	mov	r3, #0x32
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	ldr	r2, =0x7828
	add	r3, r5, r2
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r4, #7
	str	r4, [sp, #0x2c]
	cmp	r3, #1
	beq	.Ld945e
	mov	r5, #3
	str	r5, [sp, #0x2c]
.Ld945e:
	mov	r0, #0x8e
	bl	_Func_f9080
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x44]
	add	r3, r1, r2
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0x6c
	mov	r0, #0
	lsl	r3, #3
	neg	r4, r4
	mov	r11, r0
	cmp	r3, r4
	bne	.Ld947e
	b	.Ld9a86
.Ld947e:
	ldr	r5, =iwram_1e80
	str	r5, [sp, #0x24]
.Ld9482:
	ldr	r0, [sp, #0x24]
	ldr	r0, [r0]
	mov	r1, r11
	str	r0, [sp, #0x28]
	cmp	r1, #0x50
	bne	.Ld9494
	mov	r0, #0
	bl	_Func_bd7dc
.Ld9494:
	ldr	r2, [sp, #0x44]
	ldr	r4, =0x7828
	add	r3, r2, r4
	ldr	r3, [r3]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	bne	.Ld9554
	mov	r0, r11
	lsl	r5, r0, #11
	mov	r0, r5
	bl	Func_2322
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, [sp, #0x50]
	lsl	r3, #2
	ldr	r1, [sp, #0x30]
	asr	r3, #16
	add	r3, r2
	add	r3, r1
	sub	r3, #0x14
	mov	r0, r5
	mov	r10, r3
	bl	Func_231c
	ldr	r3, [sp, #0x4c]
	ldr	r2, [sp, #0x2c]
	lsl	r0, #2
	asr	r0, #16
	mov	r5, #4
	eor	r5, r2
	add	r0, r3
	mov	r3, #2
	str	r3, [sp]
	mov	r7, r0
	mov	r3, r5
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r3, [sp, #0x24]
	add	r3, #0x88
	ldr	r3, [r3]
	str	r3, [sp, #0x38]
	mov	r8, r3
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r3, r5
	mov	r1, #7
	mov	r2, #7
	bl	Func_ed408
	ldr	r3, =iwram_1f0c
	ldr	r4, [r3]
	mov	r5, r11
	sub	r7, #0x18
	str	r4, [sp, #0x3c]
	cmp	r5, #0x20
	ble	.Ld9516
	lsl	r3, r5, #1
	sub	r3, r7, r3
	mov	r7, r3
	add	r7, #0x40
.Ld9516:
	ldr	r0, [sp, #0x44]
	ldr	r1, =0x65c0
	mov	r5, #0x28
	add	r6, r0, r1
	mov	r2, r10
	str	r4, [sp, #8]
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x40]
	mov	r1, r6
	mov	r3, r7
	bl	_call_via_r8
	mov	r2, r11
	ldr	r4, [sp, #8]
	cmp	r2, #3
	bgt	.Ld9548
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x40]
	mov	r1, r6
	mov	r2, r10
	mov	r3, r7
	bl	_call_via_r4
.Ld9548:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
.Ld9554:
	mov	r3, #0
	str	r3, [sp, #0x34]
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x44]
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld9566
	b	.Ld9a5c
.Ld9566:
	ldr	r5, [sp, #0x28]
	mov	r0, sp
	add	r5, #0xc
	mov	r1, sp
	mov	r3, sp
	str	r5, [sp, #0x20]
	add	r0, #0x54
	add	r1, #0x60
	add	r3, #0x6c
	mov	r4, #0
	mov	r5, #0x24
	str	r0, [sp, #0x1c]
	str	r1, [sp, #0x18]
	str	r3, [sp, #0x14]
	str	r4, [sp, #0x10]
	str	r5, [sp, #0xc]
	mov	r9, r11
.Ld9588:
	ldr	r0, [sp, #0x44]
	add	r6, r0, r2
	ldr	r1, [sp, #0xc]
	ldr	r3, [r6]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [r6]
	ldr	r4, [sp, #0xc]
	ldr	r5, [r0]
	ldrsh	r0, [r3, r4]
	bl	_Func_b8530
	mov	r1, #3
	lsl	r0, #1
	bl	Func_af0_from_thumb
	ldr	r3, [sp, #0x10]
	add	r3, #0x50
	mov	r7, r0
	cmp	r11, r3
	bne	.Ld95ba
	mov	r0, #0xd4
	bl	_Func_f9080
.Ld95ba:
	bl	Func_49ac
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x20]
	bl	Func_51d8
	ldr	r3, [r5, #8]
	ldr	r2, [sp, #0x1c]
	str	r3, [r2]
	str	r7, [r2, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r2, #8]
	ldr	r0, [sp, #0x1c]
	bl	Func_4cb4
	ldr	r3, [sp, #0x10]
	add	r3, #0x30
	cmp	r11, r3
	bne	.Ld95f6
	ldr	r3, [r6]
	ldr	r4, [sp, #0xc]
	mov	r2, #1
	ldrsh	r0, [r3, r4]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	ldr	r3, [sp, #0x34]
	bl	Func_d6888
.Ld95f6:
	ldr	r0, [sp, #0x10]
	cmp	r11, r0
	bgt	.Ld95fe
	b	.Ld979c
.Ld95fe:
	mov	r1, #2
	str	r1, [sp]
	ldr	r3, [sp, #0x2c]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r2, =iwram_1f08
	ldr	r2, [r2]
	mov	r3, #3
	str	r2, [sp, #0x38]
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	ldr	r3, [sp, #0x2c]
	bl	Func_ed408
	ldr	r4, =iwram_1f0c
	ldr	r5, [sp, #0x48]
	ldr	r4, [r4]
	str	r4, [sp, #0x3c]
	cmp	r5, #0
	bne	.Ld963c
	mov	r1, r11
	neg	r0, r1
	lsl	r0, #10
	bl	Func_4bd4
	b	.Ld96a8
.Ld963c:
	ldr	r2, [sp, #0x48]
	cmp	r2, #1
	beq	.Ld96a8
	cmp	r2, #2
	bne	.Ld9698
	mov	r3, r11
	lsl	r0, r3, #10
	bl	Func_4c1c
	b	.Ld96a8

	.pool_aligned

.Ld9698:
	mov	r4, r11
	lsl	r5, r4, #10
	mov	r0, r5
	bl	Func_4c1c
	mov	r0, r5
	bl	Func_4c6c
.Ld96a8:
	ldr	r0, [sp, #0x34]
	lsl	r2, r0, #6
	lsl	r3, r0, #9
	sub	r3, r2
	ldr	r1, [sp, #0x18]
	ldr	r2, =ewram_10000
	mov	r5, #0
	lsl	r3, #2
	mov	r10, r5
	mov	r8, r1
	add	r6, r3, r2
.Ld96be:
	ldr	r3, [sp, #0x10]
	add	r3, r10
	cmp	r11, r3
	ble	.Ld9784
	ldr	r3, [r6]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r6, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	ldr	r3, [r6, #8]
	asr	r3, #8
	mov	r4, r3
	mul	r4, r3
	add	r0, r2
	mov	r3, r4
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	asr	r7, r0, #9
	cmp	r7, #0
	beq	.Ld9784
	mov	r5, r8
	mov	r1, r8
	mov	r0, r6
	bl	Func_e3944
	ldr	r0, [r5]
	mov	r1, #5
	lsl	r0, #2
	bl	Func_af0_from_thumb
	ldr	r1, [sp, #0x30]
	ldr	r2, [r5, #8]
	ldr	r3, =0x139
	add	r0, r1
	str	r0, [r5]
	cmp	r2, r3
	bgt	.Ld971a
	ldr	r4, [sp, #0x18]
	add	r3, #1
	str	r3, [r4, #8]
	mov	r2, r3
.Ld971a:
	ldr	r3, =0x27a
	cmp	r2, r3
	ble	.Ld9726
	ldr	r5, [sp, #0x18]
	str	r3, [r5, #8]
	mov	r2, r3
.Ld9726:
	ldr	r0, =0xfffffec6
	add	r3, r2, r0
	cmp	r3, #0
	bge	.Ld9732
	mov	r3, r2
	sub	r3, #0xfb
.Ld9732:
	asr	r3, #6
	mov	r0, #6
	sub	r0, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede5c
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x44]
	ldr	r3, [sp, #0x18]
	add	r1, r2, r1
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	sub	r2, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x40]
	ldr	r4, [sp, #0x3c]
	bl	_call_via_r4
	ldr	r5, [r6]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6]
	ldr	r5, [r6, #4]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #4]
	ldr	r5, [r6, #8]
	mov	r1, r7
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r6, #8]
.Ld9784:
	mov	r5, #1
	add	r10, r5
	mov	r0, r10
	add	r6, #0x1c
	cmp	r0, #0x20
	bne	.Ld96be
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
.Ld979c:
	ldr	r1, [sp, #0x14]
	mov	r3, #0
	str	r3, [r1]
	str	r3, [r1, #4]
	str	r3, [r1, #8]
	add	r2, sp, #0x60
	mov	r1, r2
	ldr	r0, [sp, #0x14]
	bl	Func_e3944
	ldr	r0, [sp, #0x60]
	mov	r1, #5
	lsl	r0, #2
	bl	Func_af0_from_thumb
	ldr	r3, [sp, #0x30]
	add	r0, r3
	ldr	r3, [sp, #0x10]
	add	r3, #0x34
	str	r0, [sp, #0x60]
	cmp	r11, r3
	blt	.Ld9828
	ldr	r3, [sp, #0x10]
	add	r3, #0x4c
	cmp	r11, r3
	bge	.Ld9828
	mov	r3, r9
	sub	r3, #0x34
	cmp	r3, #0
	bge	.Ld97da
	add	r3, #3
.Ld97da:
	asr	r0, r3, #2
	mov	r1, #6
	bl	Func_b1c_from_thumb
	mov	r4, #2
	mov	r5, r0
	ldr	r3, [sp, #0x2c]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r4, [sp]
	bl	Func_ed408
	lsl	r1, r5, #1
	add	r1, r5
	lsl	r1, #3
	ldr	r2, [sp, #0x44]
	add	r1, r5
	ldr	r0, =iwram_1f08
	ldr	r5, [sp, #0x18]
	ldr	r3, =0x60e
	lsl	r1, #6
	add	r1, r2, r1
	ldr	r4, [r0]
	ldr	r2, [r5]
	add	r1, r3
	ldr	r3, [r5, #4]
	mov	r0, #0x28
	str	r0, [sp]
	str	r0, [sp, #4]
	str	r4, [sp, #0x38]
	sub	r2, #0x14
	sub	r3, #0x14
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	Func_2dd8
.Ld9828:
	ldr	r0, [sp, #0x48]
	cmp	r0, #0
	bne	.Ld9892
	ldr	r3, [sp, #0x10]
	add	r3, #0x50
	cmp	r11, r3
	bge	.Ld9838
	b	.Ld9a36
.Ld9838:
	ldr	r3, [sp, #0x10]
	add	r3, #0x6c
	cmp	r11, r3
	blt	.Ld9842
	b	.Ld9a36
.Ld9842:
	mov	r3, r9
	sub	r3, #0x50
	cmp	r3, #0
	bge	.Ld984c
	add	r3, #3
.Ld984c:
	asr	r0, r3, #2
	mov	r1, #7
	bl	Func_b1c_from_thumb
	mov	r1, #2
	mov	r5, r0
	str	r1, [sp]
	ldr	r3, [sp, #0x2c]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	bl	Func_ed408
	lsl	r1, r5, #4
	ldr	r2, =iwram_1f08
	ldr	r3, [sp, #0x44]
	sub	r1, r5
	lsl	r1, #6
	ldr	r4, [r2]
	add	r1, r3, r1
	ldr	r2, [sp, #0x60]
	ldr	r3, [sp, #0x64]
	mov	r0, #0x18
	ldr	r5, =0x2b8e
	str	r0, [sp]
	mov	r0, #0x28
	str	r0, [sp, #4]
	str	r4, [sp, #0x38]
	add	r1, r5
	sub	r2, #0xc
	sub	r3, #0x14
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	b	.Ld999e
.Ld9892:
	ldr	r0, [sp, #0x48]
	cmp	r0, #3
	beq	.Ld989c
	cmp	r0, #5
	bne	.Ld98fe
.Ld989c:
	ldr	r3, [sp, #0x10]
	add	r3, #0x50
	cmp	r11, r3
	bge	.Ld98a6
	b	.Ld9a36
.Ld98a6:
	ldr	r3, [sp, #0x10]
	add	r3, #0x68
	cmp	r11, r3
	blt	.Ld98b0
	b	.Ld9a36
.Ld98b0:
	mov	r3, r9
	sub	r3, #0x50
	cmp	r3, #0
	bge	.Ld98ba
	add	r3, #3
.Ld98ba:
	asr	r0, r3, #2
	mov	r1, #6
	bl	Func_b1c_from_thumb
	mov	r1, #2
	str	r1, [sp]
	ldr	r3, [sp, #0x2c]
	mov	r5, r0
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r2, =iwram_1f08
	ldr	r3, [sp, #0x44]
	ldr	r0, =0x2b8e
	lsl	r5, #11
	ldr	r4, [r2]
	add	r5, r3, r5
	ldr	r2, [sp, #0x60]
	ldr	r3, [sp, #0x64]
	mov	r1, #0x20
	add	r5, r0
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	str	r4, [sp, #0x38]
	sub	r2, #0x10
	sub	r3, #0x20
	ldr	r0, [sp, #0x40]
	mov	r1, r5
	bl	_call_via_r4
	b	.Ld999e
.Ld98fe:
	ldr	r1, [sp, #0x48]
	cmp	r1, #4
	bne	.Ld99d0
	ldr	r3, [sp, #0x10]
	add	r3, #0x50
	cmp	r11, r3
	bge	.Ld990e
	b	.Ld9a36
.Ld990e:
	ldr	r3, [sp, #0x10]
	add	r3, #0x68
	cmp	r11, r3
	blt	.Ld9918
	b	.Ld9a36
.Ld9918:
	mov	r0, r9
	sub	r0, #0x50
	lsr	r3, r0, #31
	add	r0, r3
	mov	r1, #6
	asr	r0, #1
	bl	Func_b1c_from_thumb
	mov	r2, #2
	str	r2, [sp]
	ldr	r3, [sp, #0x2c]
	mov	r5, r0
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	bl	Func_ed408
	ldr	r3, =iwram_1f08
	mov	r4, #2
	ldr	r3, [r3]
	str	r4, [sp]
	ldr	r4, [sp, #0x2c]
	str	r3, [sp, #0x38]
	mov	r8, r3
	mov	r3, #8
	orr	r3, r4
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r1, [sp, #0x44]
	ldr	r0, =iwram_1f0c
	ldr	r2, =0x2b8e
	lsl	r5, #11
	add	r5, r1, r5
	ldr	r0, [r0]
	ldr	r3, [sp, #0x64]
	add	r5, r2
	ldr	r2, [sp, #0x60]
	mov	r4, #0x40
	mov	r6, #0x20
	str	r0, [sp, #0x3c]
	str	r4, [sp]
	str	r4, [sp, #8]
	str	r6, [sp, #4]
	mov	r10, r0
	sub	r2, #0x20
	ldr	r0, [sp, #0x40]
	sub	r3, #0x18
	mov	r1, r5
	bl	_call_via_r8
	ldr	r2, [sp, #0x60]
	ldr	r3, [sp, #0x64]
	ldr	r4, [sp, #8]
	sub	r2, #0x20
	add	r3, #8
	str	r4, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x40]
	mov	r1, r5
	bl	_call_via_r10
	mov	r0, #0x2f
	bl	Func_2dd8
.Ld999e:
	mov	r0, #0x2e
	bl	Func_2dd8
	b	.Ld9a36

	.pool_aligned

.Ld99d0:
	ldr	r3, [sp, #0x10]
	add	r3, #0x50
	cmp	r11, r3
	blt	.Ld9a36
	ldr	r3, [sp, #0x10]
	add	r3, #0x68
	cmp	r11, r3
	bge	.Ld9a36
	mov	r3, r9
	sub	r3, #0x50
	cmp	r3, #0
	bge	.Ld99ea
	add	r3, #3
.Ld99ea:
	asr	r0, r3, #2
	mov	r1, #6
	bl	Func_b1c_from_thumb
	mov	r3, #3
	mov	r5, r0
	str	r3, [sp]
	mov	r1, #7
	ldr	r3, [sp, #0x2c]
	mov	r2, #7
	mov	r0, #0x2e
	bl	Func_ed408
	lsl	r1, r5, #1
	add	r1, r5
	lsl	r1, #3
	ldr	r2, [sp, #0x44]
	add	r1, r5
	ldr	r0, =iwram_1f08
	ldr	r3, =0x2b8e
	lsl	r1, #6
	add	r1, r2, r1
	ldr	r4, [r0]
	add	r1, r3
	ldr	r2, [sp, #0x60]
	ldr	r3, [sp, #0x64]
	mov	r0, #0x28
	str	r0, [sp]
	str	r0, [sp, #4]
	str	r4, [sp, #0x38]
	sub	r2, #0x14
	sub	r3, #0x14
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	Func_2dd8
.Ld9a36:
	ldr	r5, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x34]
	mov	r4, #8
	neg	r4, r4
	add	r5, #8
	add	r0, #2
	add	r1, #1
	str	r5, [sp, #0x10]
	str	r0, [sp, #0xc]
	str	r1, [sp, #0x34]
	add	r9, r4
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x44]
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	beq	.Ld9a5c
	b	.Ld9588
.Ld9a5c:
	bl	Func_cd52c
	ldr	r0, =0x7824
	ldr	r5, [sp, #0x44]
	mov	r3, #1
	add	r2, r5, r0
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =0x7828
	add	r3, r5, r2
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #1
	lsl	r3, #3
	add	r11, r1
	add	r3, #0x6c
	cmp	r11, r3
	beq	.Ld9a86
	b	.Ld9482
.Ld9a86:
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
.func_end Func_d91dc
