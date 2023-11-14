	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_d5258
	push	{lr}
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.Ld5268
	mov	r1, #0
	bl	Func_d52c8
	b	.Ld526e
.Ld5268:
	mov	r1, #1
	bl	Func_d52c8
.Ld526e:
	pop	{r0}
	bx	r0
.func_end Func_d5258

.thumb_func_start Func_d5274
	push	{lr}
	mov	r1, #1
	bl	Func_d52c8
	pop	{r0}
	bx	r0
.func_end Func_d5274

.thumb_func_start Func_d5280
	push	{lr}
	mov	r1, #2
	bl	Func_d52c8
	pop	{r0}
	bx	r0
.func_end Func_d5280

.thumb_func_start Func_d528c
	push	{lr}
	mov	r1, #3
	bl	Func_d52c8
	pop	{r0}
	bx	r0
.func_end Func_d528c

.thumb_func_start Func_d5298
	push	{lr}
	mov	r1, #4
	bl	Func_d52c8
	pop	{r0}
	bx	r0
.func_end Func_d5298

.thumb_func_start Func_d52a4
	push	{lr}
	mov	r1, #5
	bl	Func_d52c8
	pop	{r0}
	bx	r0
.func_end Func_d52a4

.thumb_func_start Func_d52b0
	push	{lr}
	mov	r1, #7
	bl	Func_d52c8
	pop	{r0}
	bx	r0
.func_end Func_d52b0

.thumb_func_start Func_d52bc
	push	{lr}
	mov	r1, #6
	bl	Func_d52c8
	pop	{r0}
	bx	r0
.func_end Func_d52bc

.thumb_func_start Func_d52c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	mov	r8, r1
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x74
	str	r3, [sp, #0x44]
	ldr	r3, =0x7828
	mov	r9, r1
	mov	r2, #0x10
	add	r3, r9
	str	r2, [sp, #0x34]
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	mov	r3, #1
	ldr	r0, =0x9e
	mov	r1, r9
	mov	r2, #1
	bl	Func_e0524
	mov	r3, r8
	cmp	r3, #0
	bne	.Ld530a
	ldr	r0, =0xa0
	b	.Ld536e
.Ld530a:
	mov	r4, r8
	cmp	r4, #1
	bne	.Ld5314
	ldr	r0, =0xbb
	b	.Ld536e
.Ld5314:
	mov	r0, r8
	cmp	r0, #2
	bne	.Ld531e
	ldr	r0, =0xa3
	b	.Ld536e
.Ld531e:
	mov	r1, r8
	cmp	r1, #3
	bne	.Ld5328
	ldr	r0, =0xc0
	b	.Ld536e
.Ld5328:
	mov	r2, r8
	cmp	r2, #4
	bne	.Ld5332
	ldr	r0, =0xbb
	b	.Ld536e
.Ld5332:
	mov	r3, r8
	cmp	r3, #5
	bne	.Ld5340
	ldr	r5, =0xb7
	mov	r1, r9
	mov	r0, r5
	b	.Ld5364
.Ld5340:
	mov	r4, r8
	cmp	r4, #7
	bne	.Ld535a
	mov	r0, #0x18
	str	r0, [sp, #0x34]
	mov	r1, r9
	ldr	r0, =0xb7
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x8d
	b	.Ld536e
.Ld535a:
	ldr	r5, =0xcd
	mov	r1, #0x20
	str	r1, [sp, #0x34]
	mov	r0, r5
	mov	r1, r9
.Ld5364:
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r0, r5
.Ld536e:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	ldr	r3, =Func_1af8
	lsl	r0, #19
	bl	_call_via_r3
	mov	r2, r8
	cmp	r2, #4
	bne	.Ld5392
	ldr	r0, =0xaa
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
.Ld5392:
	mov	r3, r8
	cmp	r3, #3
	bne	.Ld53a8
	mov	r1, #0x96
	lsl	r1, #6
	ldr	r0, =0xce
	add	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
.Ld53a8:
	mov	r4, #0
	ldr	r5, =ewram_10000
	mov	r11, r4
	mov	r6, #0xff
.Ld53b0:
	mov	r0, r8
	cmp	r0, #1
	bls	.Ld53c6
	cmp	r0, #4
	beq	.Ld53c6
	cmp	r0, #5
	beq	.Ld53c6
	cmp	r0, #6
	beq	.Ld53c6
	cmp	r0, #7
	bne	.Ld53ea
.Ld53c6:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #14
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	b	.Ld540c
.Ld53ea:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #13
	str	r0, [r5]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0xff
	lsl	r0, #13
	str	r0, [r5, #4]
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #13
.Ld540c:
	str	r0, [r5, #8]
	mov	r1, #1
	mov	r2, #0x80
	mov	r3, #0
	add	r11, r1
	lsl	r2, #2
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r11, r2
	bne	.Ld53b0
	mov	r3, r8
	cmp	r3, #1
	bls	.Ld5436
	cmp	r3, #4
	beq	.Ld5436
	cmp	r3, #5
	beq	.Ld5436
	cmp	r3, #6
	beq	.Ld5436
	cmp	r3, #7
	bne	.Ld5444
.Ld5436:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x40
	b	.Ld5450
.Ld5444:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x20
.Ld5450:
	str	r3, [sp, #0x3c]
	mov	r4, r8
	cmp	r4, #1
	bls	.Ld5466
	cmp	r4, #3
	beq	.Ld5466
	mov	r1, #0x90
	ldr	r0, =Func_dbb9c
	lsl	r1, #3
	bl	Func_41d8
.Ld5466:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #0x8e
	bl	_Func_f9080
	ldr	r1, [sp, #0x3c]
	mov	r0, #0
	str	r0, [sp, #0x40]
	cmp	r1, #0
	bne	.Ld5494
	b	.Ld5972
.Ld5494:
	sub	r1, #0x20
	str	r1, [sp, #0x18]
.Ld5498:
	ldr	r3, =iwram_1e80
	ldr	r3, [r3]
	mov	r2, r8
	str	r3, [sp, #0x30]
	cmp	r2, #7
	bne	.Ld5538
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x40]
	sub	r3, #0x2e
	cmp	r4, r3
	bne	.Ld54c2
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r1, [r3, r2]
	ldr	r0, [r3, #8]
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_b82c4
.Ld54c2:
	ldr	r3, [sp, #0x40]
	ldr	r4, [sp, #0x18]
	cmp	r3, r4
	bne	.Ld5546
	mov	r0, #0x86
	bl	_Func_bd7dc
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_Func_b8228
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	b	.Ld5546

	.pool_aligned

.Ld5538:
	ldr	r2, [sp, #0x40]
	ldr	r3, [sp, #0x18]
	cmp	r2, r3
	bne	.Ld5546
	mov	r0, #0x85
	bl	_Func_bd7dc
.Ld5546:
	mov	r6, #0xd3
	ldr	r0, [sp, #0x40]
	lsl	r6, #7
	mov	r4, #0
	mov	r7, #0x80
	add	r6, r9
	mov	r11, r4
	lsl	r7, #11
	lsl	r5, r0, #12
.Ld5558:
	mov	r0, r5
	bl	Func_2322
	mov	r2, #1
	lsl	r0, #2
	sub	r0, r7, r0
	mov	r1, #0x80
	add	r11, r2
	asr	r0, #10
	lsl	r1, #4
	mov	r3, r11
	stmia	r6!, {r0}
	add	r5, r1
	cmp	r3, #0xa0
	bne	.Ld5558
	mov	r4, #0
	str	r4, [sp, #0x38]
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld5588
	b	.Ld594a
.Ld5588:
	ldr	r3, [sp, #0x30]
	mov	r1, sp
	add	r1, #0x48
	add	r3, #0xc
	mov	r4, sp
	ldr	r0, =iwram_1e50
	str	r1, [sp, #0x20]
	str	r3, [sp, #0x24]
	add	r4, #0x5c
	mov	r1, #0x24
	mov	r3, #0
	str	r4, [sp, #0x1c]
	str	r0, [sp, #0x28]
	str	r1, [sp, #0x10]
	str	r3, [sp, #0xc]
.Ld55a6:
	mov	r4, r9
	add	r5, r4, r2
	ldr	r3, [r5]
	ldr	r1, [sp, #0x10]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [sp, #0x38]
	ldr	r0, [r0]
	lsl	r3, #3
	mov	r4, r8
	str	r0, [sp, #0x2c]
	str	r3, [sp, #0x14]
	cmp	r4, #3
	bne	.Ld569a
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x40]
	str	r0, [sp, #0x14]
	cmp	r1, r0
	ble	.Ld569a
	mov	r3, r0
	add	r3, #0x20
	cmp	r1, r3
	bge	.Ld569a
	ldr	r3, [r5]
	ldr	r2, [sp, #0x10]
	add	r5, sp, #0x50
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	Func_e396c
	ldr	r2, =Data_eded0
	ldr	r7, [sp, #0x40]
	mov	r0, #0
	mov	r1, r8
	mov	r11, r0
	and	r7, r1
	mov	r10, r2
.Ld55f2:
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r2, r0
	and	r2, r3
	str	r2, [sp, #8]
	bl	Func_4458
	ldr	r2, [sp, #8]
	mov	r5, #0x1f
	and	r5, r0
	mov	r0, r2
	bl	Func_2322
	ldr	r6, [sp, #0x50]
	add	r5, #4
	lsr	r3, r6, #31
	add	r6, r3
	mov	r3, r5
	mul	r3, r0
	ldr	r4, =Data_edeca
	asr	r3, #17
	asr	r6, #1
	ldr	r2, [sp, #8]
	add	r6, r3
	ldrb	r3, [r4, r7]
	mov	r0, r2
	lsr	r3, #1
	sub	r6, r3
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	ldr	r5, [sp, #0x54]
	asr	r3, #16
	mov	r0, r10
	sub	r5, r3
	ldrb	r3, [r0, r7]
	lsr	r3, #1
	sub	r5, r3
	bl	Func_4458
	ldr	r3, =.Lee2ae
	mov	r1, #3
	and	r0, r1
	ldrb	r2, [r3, r0]
	mov	r3, #3
	orr	r3, r2
	mov	r2, #2
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r2, =Data_edebe
	ldr	r4, =Data_edeca
	lsl	r3, r7, #1
	ldrh	r1, [r2, r3]
	ldrb	r3, [r4, r7]
	str	r3, [sp]
	mov	r0, r10
	ldrb	r3, [r0, r7]
	mov	r2, #0x96
	lsl	r2, #6
	add	r1, r9
	str	r3, [sp, #4]
	add	r1, r2
	ldr	r2, =iwram_1f0c
	add	r5, #0x10
	ldr	r4, [r2]
	mov	r3, r5
	ldr	r0, [sp, #0x44]
	mov	r2, r6
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r3, #1
	add	r11, r3
	mov	r4, r11
	cmp	r4, #2
	bne	.Ld55f2
.Ld569a:
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	ldr	r3, [sp, #0x28]
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x48]
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r0, =iwram_1f0c
	ldr	r1, [sp, #0x20]
	ldr	r3, [r0]
	str	r3, [r1, #4]
	bl	Func_49ac
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0x24]
	bl	Func_51d8
	ldr	r2, [sp, #0x2c]
	ldr	r4, [sp, #0x1c]
	ldr	r3, [r2, #8]
	str	r3, [r4]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r4, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r4, #8]
	ldr	r0, [sp, #0x1c]
	bl	Func_4cb4
	ldr	r0, [sp, #0x40]
	ldr	r1, [sp, #0xc]
	cmp	r0, r1
	bgt	.Ld56f6
	b	.Ld58f4
.Ld56f6:
	lsl	r5, r0, #9
	mov	r0, r5
	bl	Func_4c1c
	mov	r2, r8
	cmp	r2, #1
	bls	.Ld5708
	cmp	r2, #4
	bne	.Ld570e
.Ld5708:
	mov	r0, r5
	bl	Func_4bd4
.Ld570e:
	ldr	r4, [sp, #0x34]
	mov	r3, #0
	mov	r11, r3
	cmp	r4, #0
	bne	.Ld571a
	b	.Ld58f4
.Ld571a:
	ldr	r0, [sp, #0x38]
	lsl	r2, r0, #6
	lsl	r3, r0, #9
	sub	r3, r2
	ldr	r1, =ewram_10000
	lsl	r3, #2
	add	r7, r3, r1
.Ld5728:
	ldr	r3, [sp, #0x14]
	ldr	r2, [sp, #0x40]
	add	r3, r11
	cmp	r2, r3
	bgt	.Ld5734
	b	.Ld58e6
.Ld5734:
	ldr	r3, [r7]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r7, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	ldr	r3, [r7, #8]
	asr	r3, #8
	mov	r4, r3
	mul	r4, r3
	add	r0, r2
	mov	r3, r4
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	asr	r0, #9
	mov	r10, r0
	cmp	r0, #0
	bne	.Ld5762
	b	.Ld58e6
.Ld5762:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0x17
	ble	.Ld576a
	b	.Ld58e6
.Ld576a:
	mov	r1, r3
	cmp	r1, #0
	bge	.Ld5772
	add	r1, #3
.Ld5772:
	add	r5, sp, #0x68
	asr	r6, r1, #2
	mov	r0, r7
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	mov	r0, r8
	asr	r2, r3, #1
	str	r2, [r5]
	cmp	r0, #5
	beq	.Ld578e
	cmp	r0, #7
	bne	.Ld57b2
.Ld578e:
	lsl	r1, r6, #1
	add	r1, r6
	mov	r0, #0x28
	lsl	r1, #3
	ldr	r3, [r5, #4]
	add	r1, r6
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x20]
	lsl	r1, #6
	ldr	r4, [r0, #4]
	add	r1, r9
	sub	r2, #0x14
	sub	r3, #0x14
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
	b	.Ld5828
.Ld57b2:
	mov	r1, r8
	cmp	r1, #6
	bne	.Ld57d8
	mov	r1, #0xc
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x18
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x20]
	mov	r1, #0xc0
	lsl	r1, #4
	ldr	r4, [r0, #4]
	sub	r2, #6
	sub	r3, #0xc
	ldr	r0, [sp, #0x44]
	add	r1, r9
	bl	_call_via_r4
	b	.Ld5828
.Ld57d8:
	mov	r1, r8
	cmp	r1, #4
	bne	.Ld57fa
	mov	r1, #0x16
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x2a
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x20]
	sub	r2, #0xb
	ldr	r4, [r0, #4]
	sub	r3, #0x15
	ldr	r0, [sp, #0x44]
	mov	r1, r9
	bl	_call_via_r4
	b	.Ld5828
.Ld57fa:
	mov	r1, r11
	mov	r3, #3
	and	r3, r1
	neg	r4, r3
	mov	r0, #0x18
	orr	r4, r3
	lsl	r1, r6, #3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	lsr	r4, #31
	ldr	r0, [sp, #0x20]
	add	r1, r6
	lsl	r4, #2
	lsl	r1, #7
	ldr	r4, [r4, r0]
	add	r1, r9
	sub	r2, #0xc
	sub	r3, #0x18
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
.Ld5828:
	mov	r1, r8
	cmp	r1, #1
	bls	.Ld583a
	cmp	r1, #4
	beq	.Ld583a
	cmp	r1, #5
	beq	.Ld583a
	cmp	r1, #6
	bne	.Ld5866
.Ld583a:
	ldr	r5, [r7]
	mov	r1, r10
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r7]
	ldr	r5, [r7, #4]
	mov	r1, r10
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r7, #4]
	ldr	r5, [r7, #8]
	mov	r1, r10
	mov	r0, r5
	bl	Func_af0_from_thumb
	sub	r5, r0
	str	r5, [r7, #8]
	b	.Ld5870
.Ld5866:
	ldr	r3, [r7, #4]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #4]
.Ld5870:
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
	cmp	r3, #0x18
	bne	.Ld58e6
	mov	r3, r8
	cmp	r3, #1
	bls	.Ld588c
	cmp	r3, #4
	beq	.Ld588c
	cmp	r3, #5
	beq	.Ld588c
	cmp	r3, #6
	bne	.Ld58bc
.Ld588c:
	mov	r3, #0
	str	r3, [r7, #0x18]
	b	.Ld58e6

	.pool_aligned

.Ld58bc:
	bl	Func_4458
	mov	r4, #0xff
	and	r0, r4
	sub	r0, #0x7f
	lsl	r0, #13
	str	r0, [r7]
	bl	Func_4458
	mov	r1, #0xff
	and	r0, r1
	sub	r0, #0xff
	lsl	r0, #12
	str	r0, [r7, #4]
	bl	Func_4458
	mov	r2, #0xff
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #13
	str	r0, [r7, #8]
.Ld58e6:
	mov	r3, #1
	ldr	r4, [sp, #0x34]
	add	r11, r3
	add	r7, #0x1c
	cmp	r11, r4
	beq	.Ld58f4
	b	.Ld5728
.Ld58f4:
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x40]
	add	r3, #0x10
	cmp	r0, r3
	bne	.Ld592a
	ldr	r1, [sp, #0x3c]
	sub	r2, r1, r0
	cmp	r2, #0x1f
	ble	.Ld5914
	mov	r2, #0x1f
.Ld5914:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r4, [sp, #0x10]
	ldrsh	r0, [r3, r4]
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x38]
	bl	Func_d6888
.Ld592a:
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0xc]
	ldr	r4, [sp, #0x38]
	add	r2, #2
	add	r3, #8
	add	r4, #1
	str	r2, [sp, #0x10]
	str	r3, [sp, #0xc]
	str	r4, [sp, #0x38]
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r4, r3
	beq	.Ld594a
	b	.Ld55a6
.Ld594a:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x40]
	ldr	r2, [sp, #0x3c]
	add	r1, #1
	str	r1, [sp, #0x40]
	cmp	r1, r2
	beq	.Ld5972
	b	.Ld5498
.Ld5972:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r3, r8
	cmp	r3, #1
	bls	.Ld5988
	cmp	r3, #3
	beq	.Ld5988
	ldr	r0, =Func_dbb9c
	bl	Func_4278
.Ld5988:
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
.func_end Func_d52c8

.thumb_func_start Func_d59b0
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
	ldr	r3, [r3]
	sub	sp, #0x28
	str	r3, [sp, #0x18]
	ldr	r3, =0x7828
	mov	r9, r1
	add	r3, r9
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld5a14	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ld5a18	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r0, =0xa8
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r2, [r6, #0x1c]
	mov	r0, #0x2f
	str	r2, [sp, #0xc]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	str	r5, [sp]
	bl	Func_ed408
	b	.Ld5a2c

	.align	2, 0
.Ld5a14:
	.word	0x100
.Ld5a18:
	.word	0
	.pool

.Ld5a2c:
	ldr	r6, [r6, #0x20]
	ldr	r5, =ewram_10000
	str	r6, [sp, #0x10]
	mov	r7, #0
.Ld5a34:
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	lsl	r3, #16
	str	r3, [r5]
	ldr	r3, =0xffe00000
	mov	r6, #0
	str	r3, [r5, #4]
	bl	Func_4458
	str	r6, [r5, #0x10]
	bl	Func_4458
	mov	r3, #3
	and	r3, r0
	str	r3, [r5, #8]
	bl	Func_4458
	mov	r3, #0xff
	and	r3, r0
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x20
	bne	.Ld5a34
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld5a7c
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
.Ld5a7c:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #1
	str	r3, [r2]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r3, r9
	str	r6, [r3]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r0, #0x8e
	bl	_Func_f9080
	mov	r3, #0
	str	r3, [sp, #0x14]
.Ld5aa0:
	ldr	r3, =iwram_1e80
	ldr	r4, [sp, #0x14]
	ldr	r3, [r3]
	mov	r11, r3
	cmp	r4, #0x50
	bne	.Ld5ab2
	mov	r0, #0
	bl	_Func_bd7dc
.Ld5ab2:
	ldr	r2, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Ld5b2c
	mov	r3, r11
	add	r3, #0xc
	mov	r4, #0x24
	str	r3, [sp, #8]
	add	r6, sp, #0x1c
	mov	r8, r4
	add	r7, r1, r2
.Ld5ad0:
	ldr	r3, [r7]
	mov	r1, r8
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r5, [r0]
	bl	Func_49ac
	mov	r0, r11
	ldr	r1, [sp, #8]
	bl	Func_51d8
	ldr	r3, [r5, #8]
	str	r3, [r6]
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_4cb4
	mov	r4, r10
	lsl	r3, r4, #4
	ldr	r0, [sp, #0x14]
	add	r3, #0x40
	cmp	r0, r3
	bne	.Ld5b1c
	ldr	r3, [r7]
	mov	r1, r8
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #5
	sub	r3, #1
	bl	Func_d6888
.Ld5b1c:
	mov	r3, #2
	add	r8, r3
	ldr	r3, [r7]
	mov	r4, #1
	ldr	r3, [r3, #0x14]
	add	r10, r4
	cmp	r10, r3
	bne	.Ld5ad0
.Ld5b2c:
	mov	r0, #0x20
	ldr	r6, =ewram_10000
	mov	r7, #0
	mov	r8, r0
.Ld5b34:
	ldr	r1, [sp, #0x14]
	lsl	r3, r7, #2
	cmp	r1, r3
	ble	.Ld5bcc
	ldr	r0, [r6, #4]
	ldr	r2, =0x7fffff
	cmp	r0, r2
	bgt	.Ld5bcc
	ldr	r1, [r6, #0x18]
	cmp	r1, #0
	bge	.Ld5b4c
	add	r1, #0xf
.Ld5b4c:
	asr	r1, #4
	mov	r3, #7
	and	r1, r3
	cmp	r1, #3
	bgt	.Ld5b74
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	mov	r4, r8
	asr	r3, r0, #16
	lsl	r1, #10
	str	r4, [sp]
	str	r4, [sp, #4]
	add	r1, r9
	sub	r2, #0x10
	sub	r3, #0x10
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0xc]
	bl	_call_via_r4
	b	.Ld5b94
.Ld5b74:
	ldr	r2, =0xfffff000
	lsl	r1, #10
	add	r1, r9
	add	r1, r2
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	mov	r4, r8
	asr	r3, r0, #16
	str	r4, [sp]
	str	r4, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x10
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
.Ld5b94:
	ldr	r4, [r6, #0x10]
	mov	r0, #0x80
	lsl	r0, #6
	ldr	r2, [r6, #4]
	add	r1, r4, r0
	ldr	r3, [r6, #0x18]
	ldr	r0, [r6, #8]
	mov	r5, #0xb8
	add	r2, r4
	add	r3, r0
	lsl	r5, #15
	str	r2, [r6, #4]
	str	r1, [r6, #0x10]
	str	r3, [r6, #0x18]
	cmp	r2, r5
	ble	.Ld5bcc
	cmp	r1, #0
	bne	.Ld5bcc
	ldr	r1, =0x2001
	add	r3, r4, r1
	add	r2, r0, #4
	neg	r3, r3
	str	r2, [r6, #8]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r5, [r6, #4]
	str	r3, [r6, #0x10]
.Ld5bcc:
	add	r7, #1
	add	r6, #0x1c
	cmp	r7, #0xc
	bne	.Ld5b34
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x14]
	add	r2, #1
	str	r2, [sp, #0x14]
	cmp	r2, #0x94
	beq	.Ld5bee
	b	.Ld5aa0
.Ld5bee:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d59b0

.thumb_func_start Func_d5c48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =iwram_1ef0
	ldr	r1, [r7]
	sub	sp, #0x24
	str	r1, [sp, #0x14]
	sub	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, =0x7828
	mov	r8, r3
	add	r6, r8
	str	r0, [r6]
	mov	r0, #1
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld5c98	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ld5c9c	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r0, =0x7a
	mov	r3, #1
	mov	r1, r8
	mov	r2, #1
	bl	Func_e0524
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld5cb8
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
	b	.Ld5cb8

	.align	2, 0
.Ld5c98:
	.word	0x100
.Ld5c9c:
	.word	0
	.pool

.Ld5cb8:
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r8
	str	r5, [r3]
	add	r2, r8
	mov	r3, #0
	ldr	r7, [r7, #0x18]
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	str	r7, [sp, #0xc]
	bl	Func_41d8
	ldr	r3, [r6]
	ldr	r3, [r3, #0x14]
	mov	r2, #0
	mov	r10, r2
	cmp	r3, #0
	beq	.Ld5d12
	ldr	r5, =0x7098
	mov	r6, #0x3f
	add	r5, r8
.Ld5cf8:
	bl	Func_4458
	mov	r3, #1
	add	r10, r3
	ldr	r3, =0x7828
	and	r0, r6
	add	r3, r8
	str	r0, [r5]
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	add	r5, #0x1c
	cmp	r10, r3
	bne	.Ld5cf8
.Ld5d12:
	ldr	r3, =0x7828
	add	r3, r8
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #0x20
	mov	r0, #0
	lsl	r3, #5
	neg	r1, r1
	mov	r9, r0
	cmp	r3, r1
	beq	.Ld5e1e
.Ld5d28:
	mov	r2, r9
	cmp	r2, #0x20
	bne	.Ld5d34
	mov	r0, #0
	bl	_Func_bd7dc
.Ld5d34:
	ldr	r2, =0x7828
	mov	r3, #0
	add	r2, r8
	mov	r10, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld5dfc
	mov	r0, #0xe1
	lsl	r0, #7
	add	r0, r8
	str	r0, [sp, #8]
	mov	r11, r2
.Ld5d4e:
	mov	r1, r10
	lsl	r6, r1, #4
	cmp	r9, r6
	bne	.Ld5d5c
	mov	r0, #0x8f
	bl	_Func_f9080
.Ld5d5c:
	cmp	r9, r6
	blt	.Ld5de8
	mov	r3, r6
	add	r3, #0x48
	cmp	r9, r3
	bge	.Ld5de8
	mov	r3, r11
	mov	r0, r10
	ldr	r2, [r3]
	lsl	r3, r0, #1
	add	r3, #0x24
	add	r5, sp, #0x18
	ldrsh	r0, [r2, r3]
	mov	r1, r5
	bl	Func_e396c
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld5d8c
	ldr	r3, [r5]
	sub	r3, #0x70
	str	r3, [r5]
.Ld5d8c:
	ldr	r3, [r5, #4]
	mov	r2, r3
	sub	r2, #0x10
	mov	r1, #0x14
	str	r2, [r5, #4]
	ldr	r2, [r5]
	str	r1, [sp, #4]
	mov	r1, #0xd8
	mov	r0, #0x10
	lsl	r1, #3
	str	r0, [sp]
	sub	r2, #8
	sub	r3, #0x14
	ldr	r7, [sp, #0xc]
	ldr	r0, [sp, #0x14]
	add	r1, r8
	bl	_call_via_r7
	cmp	r9, r6
	blt	.Ld5de8
	ldr	r2, [sp, #8]
	mov	r1, r9
	ldr	r3, [r2, #0x18]
	sub	r0, r1, r6
	add	r0, r3
	mov	r1, #6
	bl	Func_af0_from_thumb
	mov	r1, #9
	bl	Func_b1c_from_thumb
	lsl	r1, r0, #1
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	add	r1, r0
	mov	r0, #0x10
	lsl	r1, #6
	str	r0, [sp]
	mov	r0, #0xc
	str	r0, [sp, #4]
	add	r1, r8
	sub	r2, #8
	sub	r3, #0x10
	ldr	r0, [sp, #0x14]
	bl	_call_via_r7
.Ld5de8:
	ldr	r1, [sp, #8]
	add	r1, #0x1c
	str	r1, [sp, #8]
	mov	r0, r11
	ldr	r3, [r0]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r10, r2
	cmp	r10, r3
	bne	.Ld5d4e
.Ld5dfc:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r8
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =0x7828
	add	r3, r8
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #1
	lsl	r3, #5
	add	r9, r1
	add	r3, #0x20
	cmp	r9, r3
	bne	.Ld5d28
.Ld5e1e:
	ldr	r0, =Func_cd260
	bl	Func_4278
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
.func_end Func_d5c48

.thumb_func_start Func_d5e54
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
	sub	sp, #0xac
	str	r1, [sp, #0x4c]
	ldr	r3, [r3]
	str	r3, [sp, #0x48]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x40]
	ldr	r2, =0x7828
	add	r5, r1, r2
	str	r0, [r5]
	mov	r0, #0
	bl	Func_cd594
	ldr	r0, =0x92
	ldr	r1, [sp, #0x4c]
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r2, #0
	ldr	r1, [sp, #0x40]
	ldr	r0, =0x73
	mov	r3, #0
	bl	Func_e0524
	ldr	r3, [r5]
	ldr	r0, [r3, #4]
	mov	r3, #1
	eor	r0, r3
	mov	r3, sp
	add	r3, #0x50
	mov	r1, r3
	str	r3, [sp, #0x3c]
	bl	Func_cef64
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r9, r0
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	ldr	r7, =ewram_10000
	str	r0, [sp, #0x38]
	mov	r0, #0
	mov	r10, r0
	mov	r8, r0
.Ld5ece:
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	mov	r1, r8
	str	r1, [r7]
	mov	r5, #0xff
	and	r5, r0
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x14
	lsl	r3, #16
	mov	r2, r8
	str	r3, [r7, #4]
	str	r2, [r7, #8]
	mov	r0, r6
	bl	Func_2322
	add	r5, #0x80
	mov	r3, r5
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0xc]
	mov	r3, r8
	str	r3, [r7, #0x10]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	mov	r0, #1
	add	r10, r0
	asr	r3, #5
	mov	r5, r8
	mov	r1, r10
	str	r3, [r7, #0x14]
	str	r5, [r7, #0x18]
	add	r7, #0x1c
	cmp	r1, #0x40
	bne	.Ld5ece
	ldr	r3, [sp, #0x4c]
	mov	r5, #0xef
	lsl	r5, #7
	add	r2, r3, r5
	mov	r3, #2
	str	r3, [r2]
	ldr	r0, [sp, #0x4c]
	ldr	r1, =0x7784
	mov	r3, #0x4b
	add	r2, r0, r1
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r5, r9
	mov	r2, #0xa0
	ldr	r3, [r5, #8]
	add	r2, sp
	mov	r11, r2
	str	r3, [r2]
	mov	r0, r11
	mov	r2, #0
	str	r2, [r0, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, sp
	str	r3, [r0, #8]
	add	r1, #0x94
	ldr	r3, [sp, #0x38]
	str	r1, [sp, #0x34]
	mov	r5, sp
	ldr	r0, [r3, #8]
	mov	r3, #0xb4
	add	r5, #0x88
	lsl	r3, #15
	str	r0, [r1]
	str	r3, [r1, #4]
	str	r2, [r1, #8]
	str	r5, [sp, #0x30]
	mov	r1, r11
	ldr	r3, [r1]
	mov	r1, #0x28
	sub	r0, r3
	bl	Func_af0_from_thumb
	str	r0, [r5]
	ldr	r2, [sp, #0x34]
	mov	r5, r11
	ldr	r3, [r5, #4]
	ldr	r0, [r2, #4]
	mov	r1, #0x28
	sub	r0, r3
	bl	Func_af0_from_thumb
	ldr	r1, [sp, #0x30]
	str	r0, [r1, #4]
	ldr	r2, [sp, #0x34]
	ldr	r3, [r5, #8]
	ldr	r0, [r2, #8]
	mov	r1, #0x28
	sub	r0, r3
	bl	Func_af0_from_thumb
	ldr	r3, [sp, #0x30]
	mov	r5, #0
	str	r0, [r3, #8]
	mov	r9, r5
.Ld5fb0:
	ldr	r3, =iwram_1e80
	mov	r0, r9
	ldr	r5, [r3]
	cmp	r0, #8
	bne	.Ld5fc0
	mov	r0, #0xd4
	bl	_Func_f9080
.Ld5fc0:
	mov	r1, r9
	cmp	r1, #0x50
	bne	.Ld5fcc
	mov	r0, #0x8e
	bl	_Func_f9080
.Ld5fcc:
	bl	Func_49ac
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
	mov	r3, r9
	sub	r3, #0x1e
	cmp	r3, #0x27
	bhi	.Ld6000
	ldr	r5, [sp, #0x30]
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r2, [r5]
	mov	r0, r11
	add	r3, r2
	str	r3, [r0]
	ldr	r3, [r0, #4]
	ldr	r2, [r5, #4]
	add	r3, r2
	str	r3, [r0, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r5, #8]
	add	r3, r2
	str	r3, [r0, #8]
.Ld6000:
	mov	r0, r11
	bl	Func_4cb4
	mov	r1, r9
	cmp	r1, #0
	bne	.Ld6026
	ldr	r2, [sp, #0x4c]
	ldr	r5, =0x7828
	add	r3, r2, r5
	ldr	r3, [r3]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #1
	str	r1, [sp]
	neg	r2, r2
	mov	r1, #7
	neg	r3, r3
	bl	Func_d6888
.Ld6026:
	mov	r0, r9
	cmp	r0, #0x18
	bne	.Ld6046
	ldr	r1, [sp, #0x4c]
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
.Ld6046:
	mov	r0, r9
	neg	r0, r0
	mov	r1, r9
	mov	r5, #0
	lsl	r1, #8
	str	r0, [sp, #0x2c]
	ldr	r6, =ewram_10000
	mov	r10, r5
	lsl	r7, r0, #8
	mov	r8, r1
.Ld605a:
	cmp	r9, r10
	bgt	.Ld6060
	b	.Ld616a
.Ld6060:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	beq	.Ld6068
	b	.Ld616a
.Ld6068:
	bl	Func_49e8
	mov	r3, #3
	mov	r2, r10
	and	r3, r2
	cmp	r3, #1
	beq	.Ld6092
	cmp	r3, #1
	bgt	.Ld6080
	cmp	r3, #0
	beq	.Ld608a
	b	.Ld60d4
.Ld6080:
	cmp	r3, #2
	beq	.Ld609a
	cmp	r3, #3
	beq	.Ld60c8
	b	.Ld60d4
.Ld608a:
	mov	r0, r8
	bl	Func_4c1c
	b	.Ld60d4
.Ld6092:
	mov	r0, r7
	bl	Func_4bd4
	b	.Ld60d4
.Ld609a:
	mov	r0, r7
	bl	Func_4c6c
	b	.Ld60d4

	.pool_aligned

.Ld60c8:
	mov	r0, r7
	bl	Func_4bd4
	mov	r0, r7
	bl	Func_4c6c
.Ld60d4:
	add	r5, sp, #0x70
	mov	r1, r5
	mov	r0, r6
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	bl	Func_4a5c
	ldr	r2, [r5, #8]
	cmp	r2, #0xf9
	bgt	.Ld60f4
	mov	r3, #0xfa
	str	r3, [r5, #8]
	mov	r2, #0xfa
.Ld60f4:
	ldr	r3, =0x27a
	cmp	r2, r3
	ble	.Ld60fe
	str	r3, [r5, #8]
	mov	r2, r3
.Ld60fe:
	mov	r3, r2
	sub	r3, #0xfa
	cmp	r3, #0
	bge	.Ld6108
	add	r3, #0x3f
.Ld6108:
	asr	r3, #6
	mov	r0, #9
	sub	r0, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x40]
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
	ldr	r0, [sp, #0x48]
	ldr	r4, [sp, #0x50]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e38b8
	mov	r3, r10
	add	r3, #0x1e
	cmp	r9, r3
	ble	.Ld616a
	ldr	r2, [r6]
	ldr	r3, [r6, #0xc]
	neg	r2, r2
	asr	r2, #8
	ldr	r1, [r6, #4]
	add	r3, r2
	neg	r1, r1
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	asr	r1, #8
	ldr	r0, [r6, #8]
	add	r3, r1
	neg	r0, r0
	str	r3, [r6, #0x10]
	ldr	r3, [r6, #0x14]
	asr	r0, #8
	add	r3, r0
	str	r3, [r6, #0x14]
.Ld616a:
	ldr	r5, [sp, #0x2c]
	mov	r1, #1
	lsl	r3, r5, #5
	mov	r0, r9
	add	r10, r1
	add	r7, r3
	mov	r2, r10
	lsl	r3, r0, #5
	add	r8, r3
	add	r6, #0x1c
	cmp	r2, #0x20
	beq	.Ld6184
	b	.Ld605a
.Ld6184:
	cmp	r0, #0x52
	ble	.Ld61c6
	add	r6, sp, #0x7c
	mov	r3, #0
	str	r3, [r6]
	lsl	r0, #10
	bl	Func_2322
	mov	r5, #0
	lsl	r0, #2
	str	r5, [r6, #8]
	add	r5, sp, #0x70
	str	r0, [r6, #4]
	mov	r1, r5
	mov	r0, r6
	bl	Func_e3944
	ldr	r2, [r5]
	mov	r1, #0x14
	asr	r2, #1
	str	r2, [r5]
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x22
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x3c]
	sub	r2, #0xa
	ldr	r4, [r0, #4]
	sub	r3, #0x11
	ldr	r0, [sp, #0x48]
	ldr	r1, [sp, #0x4c]
	bl	_call_via_r4
.Ld61c6:
	ldr	r1, [sp, #0x4c]
	ldr	r3, =0x7824
	mov	r5, #1
	add	r2, r1, r3
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	add	r9, r5
	bl	Func_30f8
	mov	r0, r9
	cmp	r0, #0x62
	beq	.Ld61e2
	b	.Ld5fb0
.Ld61e2:
	mov	r1, #0
	ldr	r5, =ewram_10000
	mov	r10, r1
	mov	r6, #0xff
.Ld61ea:
	bl	Func_4458
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Func_4458
	mov	r3, #0x7f
	and	r3, r0
	add	r3, #0x40
	lsl	r3, #15
	str	r3, [r5, #4]
	bl	Func_4458
	mov	r3, #0
	and	r0, r6
	str	r3, [r5, #0x18]
	sub	r0, #0x7f
	mov	r2, #1
	mov	r3, #0x80
	lsl	r0, #15
	add	r10, r2
	lsl	r3, #2
	str	r0, [r5, #8]
	add	r5, #0x1c
	cmp	r10, r3
	bne	.Ld61ea
	ldr	r0, =0xba
	ldr	r1, [sp, #0x40]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x4c]
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r2, #0x48
	mov	r5, #0
	lsl	r3, #3
	neg	r2, r2
	mov	r9, r5
	cmp	r3, r2
	bne	.Ld6248
	b	.Ld64d6
.Ld6248:
	mov	r3, sp
	mov	r5, sp
	ldr	r2, [sp, #0x34]
	add	r3, #0x64
	add	r5, #0x58
	add	r1, r0, r1
	str	r3, [sp, #0x10]
	str	r5, [sp, #0x14]
	str	r1, [sp, #0x20]
	str	r2, [sp, #0x1c]
.Ld625c:
	ldr	r3, =iwram_1e80
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	bl	Func_49ac
	ldr	r3, [sp, #0x28]
	add	r3, #0xc
	mov	r1, r3
	ldr	r0, [sp, #0x28]
	str	r3, [sp, #0x24]
	bl	Func_51d8
	ldr	r5, [sp, #0x20]
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x28
	cmp	r9, r3
	blt	.Ld628e
	ldr	r0, [sp, #0x1c]
	mov	r1, #0x80
	ldr	r3, [r0, #4]
	lsl	r1, #11
	add	r3, r1
	str	r3, [r0, #4]
.Ld628e:
	ldr	r2, [sp, #0x1c]
	ldr	r5, [sp, #0x10]
	ldr	r3, [r2]
	str	r3, [r5]
	ldr	r3, [r2, #4]
	mov	r1, r9
	str	r3, [r5, #4]
	lsl	r0, r1, #11
	bl	Func_2322
	ldr	r5, [sp, #0x1c]
	lsl	r2, r0, #2
	ldr	r3, [r5, #8]
	add	r2, r0
	lsl	r2, #3
	ldr	r0, [sp, #0x10]
	add	r3, r2
	str	r3, [r0, #8]
	add	r2, sp, #0x58
	mov	r1, r2
	ldr	r0, [sp, #0x10]
	bl	Func_e3944
	ldr	r2, [sp, #0x58]
	ldr	r3, [sp, #0x5c]
	mov	r1, #0x14
	asr	r2, #1
	str	r1, [sp]
	mov	r1, #0x22
	str	r2, [sp, #0x58]
	sub	r3, #0x11
	str	r1, [sp, #4]
	sub	r2, #0xa
	ldr	r4, [sp, #0x50]
	ldr	r0, [sp, #0x48]
	ldr	r1, [sp, #0x4c]
	bl	_call_via_r4
	mov	r3, #0
	str	r3, [sp, #0x44]
	ldr	r5, [sp, #0x20]
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld62ea
	b	.Ld6484
.Ld62ea:
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x4c]
	mov	r2, #0x24
	add	r1, r0, r1
	mov	r3, #0
	str	r1, [sp, #0x18]
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
.Ld62fa:
	ldr	r5, [sp, #0x18]
	ldr	r1, [sp, #0xc]
	ldr	r3, [r5]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [sp, #0x44]
	lsl	r3, #3
	ldr	r5, [r0]
	mov	r8, r3
	bl	Func_49ac
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x24]
	bl	Func_51d8
	ldr	r3, [r5, #8]
	mov	r0, r11
	str	r3, [r0]
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r0, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r0, #8]
	bl	Func_4cb4
	mov	r3, r8
	add	r3, #0x1e
	cmp	r9, r3
	bne	.Ld633c
	mov	r0, #0x7e
	bl	_Func_f9080
.Ld633c:
	mov	r3, r8
	add	r3, #0x28
	cmp	r9, r3
	bne	.Ld635c
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0xc]
	ldr	r3, [r1]
	ldrsh	r0, [r3, r2]
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Ld635c:
	mov	r3, r8
	add	r3, #0x40
	cmp	r9, r3
	bne	.Ld637c
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0xc]
	ldr	r3, [r0]
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	bl	Func_d6888
.Ld637c:
	cmp	r9, r8
	ble	.Ld6462
	mov	r3, r9
	mov	r5, r8
	sub	r0, r3, r5
	lsl	r0, #9
	bl	Func_4c1c
	ldr	r2, =ewram_10000
	ldr	r1, [sp, #8]
	mov	r0, #0
	mov	r10, r0
	add	r6, r1, r2
.Ld6396:
	mov	r5, r10
	lsr	r3, r5, #31
	add	r3, r10
	asr	r3, #1
	add	r3, r8
	cmp	r9, r3
	ble	.Ld6456
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
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	asr	r7, r0, #9
	cmp	r7, #0
	beq	.Ld6456
	add	r2, sp, #0x58
	mov	r0, r6
	mov	r1, r2
	bl	Func_e3944
	ldr	r3, [sp, #0x58]
	asr	r3, #1
	str	r3, [sp, #0x58]
	ldr	r5, =0x139
	ldr	r3, [sp, #0x60]
	cmp	r3, r5
	bgt	.Ld63ee
	mov	r3, #0x9d
	ldr	r0, [sp, #0x14]
	lsl	r3, #1
	str	r3, [r0, #8]
.Ld63ee:
	ldr	r2, =0x27a
	cmp	r3, r2
	ble	.Ld63f8
	ldr	r1, [sp, #0x14]
	str	r2, [r1, #8]
.Ld63f8:
	mov	r3, r10
	lsl	r0, r3, #2
	mov	r1, #9
	add	r0, r9
	bl	Func_b1c_from_thumb
	ldr	r2, =Data_ede84
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =Data_ede96
	ldr	r5, [sp, #0x40]
	ldrb	r0, [r3, r0]
	ldr	r3, [sp, #0x14]
	add	r1, r5, r1
	ldr	r2, [r3]
	ldr	r5, [sp, #0x3c]
	ldr	r3, [r3, #4]
	str	r0, [sp]
	str	r0, [sp, #4]
	lsr	r4, r0, #1
	sub	r2, r4
	sub	r3, r4
	ldr	r0, [sp, #0x48]
	ldr	r4, [r5, #4]
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
.Ld6456:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r6, #0x1c
	cmp	r1, #0x40
	bne	.Ld6396
.Ld6462:
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #8]
	ldr	r0, [sp, #0x44]
	mov	r5, #0xe0
	lsl	r5, #3
	add	r3, r5
	add	r2, #2
	add	r0, #1
	str	r2, [sp, #0xc]
	str	r3, [sp, #8]
	str	r0, [sp, #0x44]
	ldr	r1, [sp, #0x18]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x14]
	cmp	r0, r3
	beq	.Ld6484
	b	.Ld62fa
.Ld6484:
	ldr	r3, [sp, #0x4c]
	ldr	r5, =0x7824
	add	r2, r3, r5
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x20]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x14]
	mov	r0, #1
	lsl	r3, #3
	b	.Ld64cc

	.pool_aligned

.Ld64cc:
	add	r9, r0
	add	r3, #0x48
	cmp	r9, r3
	beq	.Ld64d6
	b	.Ld625c
.Ld64d6:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0xac
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_d5e54

	.section .rodata

.Lee2ae:
	.incrom 0xee2ae, 0xee2b4
