	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L1658
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
 .func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L1688
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L168c
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	ldr	r0, =.L16a4
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_54
	push	{r5, r6, lr}
	mov	r0, #0
	ldr	r5, =0x1a
	bl	__Func_3b70
	ldr	r2, =REG_BG2CNT
	ldr	r3, .L98	@ 0x681
	strh	r3, [r2]
	ldr	r2, =iwram_1ad0
	mov	r3, #0
	strh	r3, [r2, #0xa]
	mov	r0, r5
	bl	__Func_2f40
	mov	r1, #0xa0
	ldr	r6, =0x1ff
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #1
	add	r4, r2
	mov	r0, r4
	ldr	r1, =ewram_10000
	bl	__Func_5340
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_10000
	ldr	r1, =0x6006800
	ldr	r2, =0x84002580
	b	.Lc0

	.align	2, 0
.L98:
	.word	0x681
	.pool

.Lc0:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xd0
	ldr	r1, =0x6003000
	lsl	r3, #1
	mov	r4, #0
.Lcc:
	mov	r0, #0
.Lce:
	mov	r2, r3
	mov	r5, #0x80
	lsl	r3, r2, #16
	lsl	r5, #9
	add	r3, r5
	add	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0x1d
	bls	.Lce
	strh	r6, [r1]
	add	r4, #1
	add	r1, #2
	strh	r6, [r1]
	add	r1, #2
	cmp	r4, #0x13
	bls	.Lcc
	ldr	r3, =iwram_1ad0
	mov	r4, #0
	mov	r2, #0
.Lf8:
	add	r4, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r4, #3
	bls	.Lf8
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_1ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1e70
	ldr	r2, [r3]
	mov	r3, #0xa0
	lsl	r3, #5
	strh	r3, [r2, #0x14]
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_92054
	ldr	r5, .L134	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.L134:
	.word	0
.func_end OvlFunc_54

.thumb_func_start OvlFunc_154
	push	{r5, r6, lr}
	ldr	r3, =.L16b0
	ldrh	r2, [r3]
	add	r2, #1
	strh	r2, [r3]
	ldr	r4, =ewram_2090
	lsl	r2, #16
	lsr	r5, r2, #17
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r1, r3
	strh	r0, [r0]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L18e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r4
	strh	r2, [r4]
	ldr	r2, =0x2e51
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L18e:
	strh	r1, [r0]
	ldrh	r3, [r0]
	mov	r6, r3
	strh	r0, [r0]
	ldrh	r3, [r4]
	cmp	r3, #0x1f
	bgt	.L1c4
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r0, r5, #16
	add	r3, #1
	lsr	r1, r0, #16
	strh	r3, [r4]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r1
	add	r2, r4
	lsl	r3, #8
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
	b	.L1c6
.L1c4:
	lsl	r0, r5, #16
.L1c6:
	ldr	r3, =REG_IME
	strh	r6, [r3]
	mov	r3, #0xf0
	lsl	r3, #12
	cmp	r0, r3
	bls	.L1d8
	ldr	r0, =OvlFunc_154
	bl	__Func_4278
.L1d8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_154

.thumb_func_start OvlFunc_1fc
	push	{r5, r6, r7, lr}
	ldr	r1, =.L16b2
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r12, r1
	cmp	r3, #0
	bne	.L276
	ldr	r5, =.L16ba
	mov	r3, #0
	ldrsh	r4, [r5, r3]
	cmp	r4, #0
	beq	.L220
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L276
	strh	r3, [r5]
	b	.L276
.L220:
	ldr	r6, =iwram_1ae8
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L276
	ldr	r1, =.L16b6
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	ldr	r7, =.L14d4
	lsl	r3, #1
	ldrh	r2, [r7, r3]
	ldr	r3, [r6]
	ldrh	r0, [r1]
	cmp	r3, r2
	bne	.L274
	ldr	r2, .L25c	@ 1
	add	r3, r0, #1
	strh	r3, [r1]
	strh	r2, [r5]
	lsl	r3, #16
	asr	r3, #15
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	bne	.L276
	mov	r3, r12
	strh	r2, [r3]
	mov	r0, #0x6e
	bl	__Func_f9080
	b	.L276

	.align	2, 0
.L25c:
	.word	1
	.pool

.L274:
	strh	r4, [r1]
.L276:
	ldr	r1, =.L16b4
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r12, r1
	cmp	r3, #0
	bne	.L2ee
	ldr	r5, =.L16bc
	mov	r3, #0
	ldrsh	r4, [r5, r3]
	cmp	r4, #0
	beq	.L298
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L2ee
	strh	r3, [r5]
	b	.L2ee
.L298:
	ldr	r6, =iwram_1ae8
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L2ee
	ldr	r1, =.L16b8
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	ldr	r7, =.L14dc
	lsl	r3, #1
	ldrh	r2, [r7, r3]
	ldr	r3, [r6]
	ldrh	r0, [r1]
	cmp	r3, r2
	bne	.L2ec
	ldr	r2, .L2d4	@ 1
	add	r3, r0, #1
	strh	r3, [r1]
	strh	r2, [r5]
	lsl	r3, #16
	asr	r3, #15
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	bne	.L2ee
	mov	r3, r12
	strh	r2, [r3]
	mov	r0, #0x6e
	bl	__Func_f9080
	b	.L2ee

	.align	2, 0
.L2d4:
	.word	1
	.pool

.L2ec:
	strh	r4, [r1]
.L2ee:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fc

.thumb_func_start OvlFunc_2f4
	push	{lr}
	mov	r3, #0
	strb	r3, [r1, #1]
	strb	r3, [r1, #2]
	cmp	r0, #7
	bgt	.L306
	mov	r3, r0
	add	r3, #0x41
	b	.L37c
.L306:
	cmp	r0, #0xc
	bgt	.L310
	mov	r3, r0
	add	r3, #0x42
	b	.L37c
.L310:
	cmp	r0, #0x17
	bgt	.L31a
	mov	r3, r0
	add	r3, #0x43
	b	.L37c
.L31a:
	cmp	r0, #0x1f
	bgt	.L324
	mov	r3, r0
	add	r3, #0x1a
	b	.L37c
.L324:
	cmp	r0, #0x2a
	bgt	.L32e
	mov	r3, r0
	add	r3, #0x41
	b	.L37c
.L32e:
	cmp	r0, #0x2c
	bgt	.L338
	mov	r3, r0
	add	r3, #0x42
	b	.L37c
.L338:
	cmp	r0, #0x37
	bgt	.L342
	mov	r3, r0
	add	r3, #0x43
	b	.L37c
.L342:
	cmp	r0, #0x38
	bne	.L34a
	mov	r3, #0x21
	b	.L37c
.L34a:
	cmp	r0, #0x39
	bne	.L352
	mov	r3, #0x3f
	b	.L37c
.L352:
	cmp	r0, #0x3a
	bne	.L35a
	mov	r3, #0x23
	b	.L37c
.L35a:
	cmp	r0, #0x3b
	bne	.L362
	mov	r3, #0x26
	b	.L37c
.L362:
	cmp	r0, #0x3c
	bne	.L36a
	mov	r3, #0x24
	b	.L37c
.L36a:
	cmp	r0, #0x3d
	bne	.L372
	mov	r3, #0x25
	b	.L37c
.L372:
	cmp	r0, #0x3e
	bne	.L37a
	mov	r3, #0x2b
	b	.L37c
.L37a:
	mov	r3, #0x3d
.L37c:
	strb	r3, [r1]
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f4

.thumb_func_start OvlFunc_384
	push	{lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L396
	mov	r0, #0
	b	.L3bc
.L396:
	ldr	r1, =0x23e
	ldr	r2, =ewram_240
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r0, #0
	cmp	r3, #2
	beq	.L3bc
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =2
	eor	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	neg	r0, r0
.L3bc:
	pop	{r1}
	bx	r1
.func_end OvlFunc_384

.thumb_func_start OvlFunc_3cc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =0xfffffddc
	mov	r0, #0
	add	sp, r5
	str	r0, [sp, #0x14]
	bl	OvlFunc_54
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1fc
	bl	__Func_41d8
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, [sp, #0x14]
	add	r3, r1
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r3, =ewram_240
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #2
	bne	.L4a0
.L416:
	ldr	r5, =7
	mov	r1, #5
	mov	r0, r5
	bl	__Func_1776c
	mov	r0, #1
	bl	__Func_91d84
	mov	r7, r0
	bl	__Func_19a54
	cmp	r7, #0
	bne	.L450
	add	r0, r5, #1
	mov	r1, #1
	bl	__Func_1776c
	ldr	r3, =ewram_240
	ldr	r2, =0x20f
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	bl	__Func_207c4
	mov	r3, #1
	mov	r7, r0
	neg	r3, r3
	cmp	r7, r3
	beq	.L416
.L450:
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_91df4
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_9163c
	ldr	r0, =2
	mov	r1, #0x48
	bl	__Func_91e3c
	bl	.Lcbe
.L474:
	mov	r0, #0x70
	bl	__Func_f9080
	mov	r0, r10
	bl	__Func_16478
	mov	r0, r10
	mov	r1, #2
	bl	__Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0x10]
	bl	__Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	__Func_16418
	mov	r0, #1
	bl	__Func_30f8
	b	.L4a8
.L4a0:
	add	r0, sp, #0x14
	ldr	r3, =iwram_1ca0
	ldrb	r0, [r0]
	strb	r0, [r3]
.L4a8:
	bl	__Func_1f77c
	mov	r6, r0
	cmp	r6, #0
	bge	.L4d2
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L4d2
	ldr	r1, =0x22a
	ldr	r3, =ewram_240
	mov	r2, #1
	add	r3, r1
	strb	r2, [r3]
	ldr	r3, =iwram_1d08
	ldr	r0, =0xa
	strb	r2, [r3]
	mov	r1, #1
	mov	r2, #8
	bl	__Func_19aa0
.L4d2:
	cmp	r6, #0
	bne	.L4f6
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	bne	.L4f6
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_154
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	str	r3, [sp, #0x14]
.L4f6:
	cmp	r6, #0
	ble	.L502
	bl	__Func_289e8
	mov	r6, r0
	b	.L504
.L502:
	mov	r6, #0
.L504:
	cmp	r6, #0
	bne	.L57a
	bl	__Func_77d38
	ldr	r2, =ewram_240
	ldr	r0, =0x205
	ldr	r1, =0x206
	add	r3, r2, r0
	add	r2, r1
	ldrb	r0, [r3]
	ldrb	r1, [r2]
	bl	__Func_1ccc0
	mov	r5, #1
	mov	r7, #0
.L522:
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, r7
	bl	__Func_20bd8
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	bne	.L540
	cmp	r7, #0
	beq	.L4a8
	sub	r7, #1
	b	.L522
.L540:
	ldr	r3, =.L16b2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	beq	.L54c
	mov	r5, #4
.L54c:
	ldr	r3, =.L16b4
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L558
	mov	r5, #7
.L558:
	add	r7, #1
	cmp	r7, r5
	blt	.L522
	bl	__Func_77f40
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	ldr	r3, =8
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe1
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x14
	strh	r3, [r2]
	b	.Lc96
.L57a:
	cmp	r6, #1
	beq	.L580
	b	.L6a0
.L580:
	mov	r0, #1
	bl	__Func_208e4
	mov	r6, r0
	mov	r0, #1
	neg	r0, r0
	cmp	r6, r0
	beq	.L4a8
	ldr	r0, =0x109
	bl	__Func_79358
	ldr	r5, =ewram_240
	ldr	r1, =0x205
	ldr	r2, =0x206
	add	r3, r5, r1
	ldrb	r0, [r3]
	add	r3, r5, r2
	ldrb	r1, [r3]
	bl	__Func_1ccc0
	bl	__Func_77cb8
	ldr	r3, [r5]
	cmp	r3, r0
	beq	.L5d8
	mov	r0, #0xe2
	lsl	r0, #1
	add	r3, r5, r0
	mov	r1, #0xe0
	ldrh	r2, [r3]
	lsl	r1, #1
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r2, #0xe3
	lsl	r2, #1
	add	r3, r5, r2
	sub	r0, #2
	ldrh	r3, [r3]
	add	r2, r5, r0
	strh	r3, [r2]
	sub	r0, #0xb9
	bl	__Func_79374
	b	.L696
.L5d8:
	ldr	r3, =iwram_1ae8
	mov	r2, #0x82
	ldr	r3, [r3]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, r2
	bne	.L61e
	bl	OvlFunc_384
	cmp	r0, #0
	beq	.L5f2
	ldr	r0, =6
	b	.L664
.L5f2:
	mov	r1, #0xe2
	lsl	r1, #1
	add	r3, r5, r1
	mov	r0, #0xe0
	ldrh	r2, [r3]
	lsl	r0, #1
	add	r3, r5, r0
	strh	r2, [r3]
	add	r1, #2
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r5, r0
	strh	r3, [r2]
	sub	r0, #0xb9
	bl	__Func_79374
	mov	r0, #0x9f
	lsl	r0, #1
	bl	__Func_79358
	b	.L696
.L61e:
	ldr	r3, =ewram_1000
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r1
	ldr	r2, [r5, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L696
	ldr	r6, =4
	mov	r1, #9
	mov	r0, r6
	bl	__Func_1776c
	add	r0, r6, #1
	mov	r1, #0xd
	bl	__Func_1776c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_28df4
	cmp	r0, #0
	beq	.L656
	bl	__Func_19a54
	b	.L4a8
.L656:
	bl	__Func_19a54
	bl	OvlFunc_384
	cmp	r0, #0
	beq	.L66c
	add	r0, r6, #2
.L664:
	mov	r1, #9
	bl	__Func_1776c
	b	.L4a8
.L66c:
	mov	r2, #0xe2
	lsl	r2, #1
	add	r3, r5, r2
	mov	r0, #0xe0
	ldrh	r2, [r3]
	lsl	r0, #1
	add	r3, r5, r0
	mov	r1, #0xe3
	strh	r2, [r3]
	lsl	r1, #1
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r5, r0
	strh	r3, [r2]
	sub	r0, #0xb9
	bl	__Func_79374
	ldr	r0, =0x13f
	bl	__Func_79358
.L696:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79374
	b	.Lc96
.L6a0:
	cmp	r6, #2
	bne	.L6aa
	bl	__Func_1fba8
	b	.L4a8
.L6aa:
	cmp	r6, #3
	bne	.L714
	bl	__Func_1fc84
	b	.L4a8

	.pool_aligned

.L714:
	cmp	r6, #4
	bne	.L7b2
	mov	r0, #4
	bl	__Func_208e4
	mov	r1, #1
	mov	r6, r0
	neg	r1, r1
	cmp	r6, r1
	bne	.L72a
	b	.L4a8
.L72a:
	ldr	r5, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	str	r2, [r3]
	ldr	r0, =0x952
	bl	__Func_79338
	cmp	r0, #0
	beq	.L774
	bl	__Func_7a7a0
	mov	r0, #0
	bl	__Func_79664
	mov	r0, #1
	bl	__Func_79664
	mov	r0, #2
	bl	__Func_79664
	mov	r0, #3
	bl	__Func_79664
	mov	r0, #0
	bl	__Func_7961c
	mov	r0, #1
	bl	__Func_7961c
	mov	r0, #2
	bl	__Func_7961c
	mov	r0, #3
	bl	__Func_7961c
.L774:
	ldr	r0, =0x205
	ldr	r1, =0x206
	add	r3, r5, r0
	ldrb	r0, [r3]
	add	r3, r5, r1
	ldrb	r1, [r3]
	bl	__Func_1ccc0
	ldr	r0, =0x109
	bl	__Func_79374
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79374
	mov	r0, #0xbf
	lsl	r0, #1
	bl	__Func_79358
	ldr	r2, =iwram_1ca0
	mov	r3, #1
	strb	r3, [r2]
	ldr	r0, =0xbe
	mov	r1, #1
	bl	__Func_91e3c
	b	.Lc96
.L7aa:
	mov	r7, #1
	b	.L8e0
.L7ae:
	mov	r4, #0
	b	.L95e
.L7b2:
	cmp	r6, #5
	beq	.L7b8
	b	.L4a8
.L7b8:
	mov	r0, #5
	bl	__Func_208e4
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	bne	.L7ca
	b	.L4a8
.L7ca:
	ldr	r2, =ewram_240
	ldr	r0, =0x205
	ldr	r1, =0x206
	add	r3, r2, r0
	add	r2, r1
	ldrb	r0, [r3]
	ldrb	r1, [r2]
	bl	__Func_1ccc0
.L7dc:
	mov	r0, #0
	bl	__Func_28c04
	mov	r2, #1
	mov	r6, r0
	neg	r2, r2
	cmp	r6, r2
	beq	.L7b8
	cmp	r6, #1
	beq	.L7f2
	b	.L9cc
.L7f2:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #5
	mov	r2, #0x12
	mov	r3, #8
	mov	r0, #6
	bl	__Func_162d4
	ldr	r5, =0xc83
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #4
	bl	__Func_1e74c
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #3
	bl	__Func_1e74c
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x24
	bl	__Func_1e74c
	bl	__Func_5d10
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r2, =ewram_2224
	ldr	r3, .L860	@ 0x30
	strh	r3, [r2]
	strh	r3, [r2, #2]
	strh	r3, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r2, .L860	@ 0x30
	ldr	r3, =ewram_2024
	mov	r7, #0
	mov	r5, #3
	mov	r1, #0
.L84c:
	add	r1, #1
	strh	r2, [r3]
	strh	r2, [r3, #2]
	strh	r2, [r3, #4]
	strh	r2, [r3, #6]
	add	r3, #0x18
	cmp	r1, #4
	bne	.L84c
	b	.L8ce

	.align	2, 0
.L860:
	.word	0x30
	.pool

.L88c:
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, r5
	and	r3, r2
	cmp	r3, r5
	bne	.L8c8
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	lsl	r3, #26
	mov	r2, #1
	lsr	r3, #30
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2024
	lsl	r2, #3
	add	r2, r3
	ldrh	r3, [r2]
	cmp	r3, #0x55
	bne	.L8c8
	ldrh	r3, [r2, #2]
	cmp	r3, #0x56
	bne	.L8c8
	ldrh	r3, [r2, #4]
	cmp	r3, #0x54
	bne	.L8c8
	ldrh	r3, [r2, #6]
	cmp	r3, #0x53
	bne	.L8c8
	b	.L7aa
.L8c8:
	mov	r0, #1
	bl	__Func_30f8
.L8ce:
	ldr	r3, =iwram_1c94
	ldr	r2, [r3]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L88c
	mov	r0, #0x71
	bl	__Func_f9080
.L8e0:
	mov	r0, r6
	mov	r1, #2
	bl	__Func_16418
	cmp	r7, #0
	bne	.L8ee
	b	.L7dc
.L8ee:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xa
	mov	r2, #0x14
	mov	r3, #4
	mov	r0, #5
	bl	__Func_162d4
	mov	r6, r0
	mov	r2, #0
	mov	r3, #4
	mov	r1, r6
	ldr	r0, =0xc85
	bl	__Func_1e74c
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r1, =0x1004
	ldr	r0, =ewram_0
	bl	__Func_63bc
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r5, #0
	mov	r1, #3
	mov	r4, #1
	mov	r7, #0
	b	.L93a
.L92a:
	mov	r0, #1
	str	r1, [sp, #8]
	str	r4, [sp, #4]
	bl	__Func_30f8
	ldr	r4, [sp, #4]
	ldr	r1, [sp, #8]
	add	r7, #1
.L93a:
	ldr	r3, =0x927bf
	cmp	r7, r3
	bgt	.L95e
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, r1
	and	r3, r2
	add	r5, #1
	cmp	r3, r1
	bne	.L950
	mov	r5, #0
.L950:
	cmp	r5, #0xa
	bne	.L956
	b	.L7ae
.L956:
	ldr	r3, =ewram_2080
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L92a
.L95e:
	cmp	r4, #0
	bne	.L986
	mov	r0, r6
	bl	__Func_16478
	ldr	r0, =0xc87
	mov	r1, r6
	mov	r2, #0
	mov	r3, #4
	bl	__Func_1e74c
	ldr	r7, =iwram_1c94
	mov	r5, #1
.L978:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r7]
	and	r3, r5
	cmp	r3, #0
	beq	.L978
.L986:
	mov	r0, #0xa
	bl	__Func_30f8
	bl	__Func_6358
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r0, r6
	bl	__Func_16478
	mov	r0, r6
	mov	r1, #2
	bl	__Func_16418
	b	.L4a8
.L9a6:
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r0, r10
	bl	__Func_16478
	mov	r0, r10
	mov	r1, #2
	bl	__Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0x10]
	bl	__Func_16418
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	__Func_16418
	b	.L9d2
.L9cc:
	cmp	r6, #0
	beq	.L9d2
	b	.Lc8a
.L9d2:
	mov	r0, #1
	bl	__Func_28c04
	mov	r6, r0
	mov	r0, #1
	neg	r0, r0
	cmp	r6, r0
	bne	.L9e4
	b	.L7dc
.L9e4:
	add	r5, sp, #0x15c
	mov	r2, r5
	mov	r1, r6
	mov	r0, #0
	bl	OvlFunc_de4
	mov	r1, r5
	mov	r9, r0
	bl	OvlFunc_12c8
	mov	r3, r9
	lsl	r0, #16
	add	r3, #1
	asr	r2, r0, #16
	mov	r1, r9
	lsr	r0, #24
	strb	r0, [r5, r1]
	strb	r2, [r5, r3]
	mov	r2, #2
	add	r9, r2
	mov	r1, r9
	add	r2, sp, #0x1c
	mov	r0, r5
	bl	OvlFunc_11e4
	mov	r9, r0
	bl	__Func_479c
	mov	r6, #2
	mov	r2, #0x14
	mov	r1, #4
	mov	r3, #0xc
	mov	r0, #5
	str	r6, [sp]
	bl	__Func_162d4
	mov	r3, #0
	mov	r1, #0x32
	mov	r10, r0
	mov	r0, r9
	mov	r11, r3
	bl	_Func_af0
	add	r0, #1
	mov	r8, r0
	mov	r1, #0
	mov	r2, #0xa
	mov	r3, #4
	mov	r0, #0xa
	str	r6, [sp]
	bl	__Func_162d4
	ldr	r5, =0xc82
	str	r0, [sp, #0xc]
	ldr	r1, [sp, #0xc]
	mov	r0, r5
	mov	r2, #6
	mov	r3, #4
	bl	__Func_1e74c
	mov	r0, r8
	mov	r7, #1
	cmp	r0, #1
	bne	.La82
	mov	r1, #0x10
	mov	r2, #0x14
	mov	r3, #3
	mov	r0, #5
	str	r6, [sp]
	bl	__Func_162d4
	str	r0, [sp, #0x10]
	ldr	r1, [sp, #0x10]
	sub	r0, r5, #2
	mov	r2, #0x50
	mov	r3, #0
	bl	__Func_1e7c0
	b	.La9e
.La82:
	mov	r1, #0x10
	mov	r2, #0x1c
	mov	r3, #3
	mov	r0, #1
	str	r6, [sp]
	bl	__Func_162d4
	str	r0, [sp, #0x10]
	ldr	r1, [sp, #0x10]
	sub	r0, r5, #1
	mov	r2, #0
	mov	r3, #0
	bl	__Func_1e7c0
.La9e:
	ldr	r0, =0x6006000
	bl	__Func_21a18
	mov	r0, r10
	bl	__Func_16478
.Laaa:
	ldr	r0, =0x6002500
	bl	__Func_219c8
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.Labe
	b	.L9a6
.Labe:
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lada
	add	r11, r3
	mov	r7, #1
	cmp	r11, r8
	bne	.Lad2
	b	.L474
.Lad2:
	mov	r0, #0x6f
	bl	__Func_f9080
	b	.Lb58
.Lada:
	ldr	r3, =iwram_1c94
	ldr	r2, [r3]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.Lb30
	mov	r0, r8
	cmp	r0, #1
	ble	.Lb30
	mov	r0, #0x6f
	bl	__Func_f9080
	mov	r0, r11
	add	r0, r8
	sub	r0, #1
	b	.Lb4e

	.pool_aligned

.Lb30:
	ldr	r1, =iwram_1c94
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.Lb58
	mov	r2, r8
	cmp	r2, #1
	ble	.Lb58
	mov	r0, #0x6f
	bl	__Func_f9080
	mov	r0, r11
	add	r0, r8
	add	r0, #1
.Lb4e:
	mov	r1, r8
	bl	_Func_b1c
	mov	r7, #1
	mov	r11, r0
.Lb58:
	cmp	r7, #1
	beq	.Lb5e
	b	.Lc82
.Lb5e:
	mov	r0, r10
	bl	__Func_16478
	mov	r7, #0
	mov	r5, #2
.Lb68:
	mov	r2, r5
	mov	r0, r10
	mov	r1, #0
	mov	r3, #0x12
	add	r7, #1
	str	r5, [sp]
	bl	__Func_1e41c
	add	r5, #2
	cmp	r7, #4
	bne	.Lb68
	mov	r3, r8
	cmp	r3, #1
	ble	.Lbf2
	mov	r7, #0
	cmp	r3, #0
	beq	.Lbb4
	neg	r3, r3
	mov	r5, r3
	mov	r6, #0
	add	r5, #0x12
.Lb92:
	ldr	r0, =0xf301
	add	r1, r7, r0
	cmp	r7, r11
	bne	.Lb9e
	ldr	r2, =0xf30b
	add	r1, r7, r2
.Lb9e:
	mov	r3, #1
	mov	r2, r5
	mov	r0, r10
	neg	r3, r3
	add	r7, #1
	str	r6, [sp]
	add	r5, #1
	bl	__Func_19000
	cmp	r7, r8
	bne	.Lb92
.Lbb4:
	mov	r3, r8
	mov	r2, #0x11
	sub	r2, r3
	mov	r3, #1
	mov	r5, #0
	mov	r0, r10
	ldr	r1, =0xf128
	neg	r3, r3
	str	r5, [sp]
	bl	__Func_19000
	mov	r3, #1
	mov	r0, r10
	ldr	r1, =0xf129
	mov	r2, #0x12
	neg	r3, r3
	str	r5, [sp]
	bl	__Func_19000
	ldr	r3, =iwram_1e8c
	mov	r2, r10
	ldr	r1, [r3]
	ldr	r0, =0xea3
	ldrh	r3, [r2, #0xe]
	add	r1, r0
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.Lbf2:
	mov	r3, #0x32
	mov	r0, r11
	mul	r0, r3
	mov	r6, r0
	add	r6, #0x32
	cmp	r6, r9
	ble	.Lc02
	mov	r6, r9
.Lc02:
	mov	r7, r0
	mov	r4, #0
	cmp	r7, r6
	beq	.Lc80
.Lc0a:
	add	r3, sp, #0x1c
	ldrb	r3, [r3, r7]
	mov	r0, #0x3f
	and	r0, r3
	add	r1, sp, #0x18
	str	r4, [sp, #4]
	bl	OvlFunc_2f4
	mov	r0, r7
	mov	r1, #0xa
	bl	_Func_b1c
	ldr	r4, [sp, #4]
	cmp	r0, #4
	ble	.Lc4a
	mov	r0, r4
	mov	r1, #0xa
	bl	_Func_b1c
	ldr	r4, [sp, #4]
	mov	r5, r0
	mov	r1, #0xa
	mov	r0, r4
	bl	_Func_af0
	lsl	r2, r5, #1
	mov	r3, r0
	add	r2, r5
	lsl	r2, #2
	lsl	r3, #4
	add	r2, #0x12
	b	.Lc6c
.Lc4a:
	mov	r0, r4
	mov	r1, #0xa
	str	r4, [sp, #4]
	bl	_Func_b1c
	ldr	r4, [sp, #4]
	mov	r5, r0
	mov	r1, #0xa
	mov	r0, r4
	bl	_Func_af0
	lsl	r2, r5, #1
	mov	r3, r0
	add	r2, r5
	lsl	r2, #2
	lsl	r3, #4
	add	r2, #8
.Lc6c:
	add	r3, #2
	add	r0, sp, #0x18
	mov	r1, r10
	bl	__Func_1e858
	ldr	r4, [sp, #4]
	add	r7, #1
	add	r4, #1
	cmp	r7, r6
	bne	.Lc0a
.Lc80:
	mov	r7, #0
.Lc82:
	mov	r0, #1
	bl	__Func_30f8
	b	.Laaa
.Lc8a:
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_30f8
	bl	.L4a8
.Lc96:
	ldr	r3, =iwram_1ebc
	mov	r0, #0xb8
	ldr	r3, [r3]
	ldr	r2, =0x3e7
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0x3c
	bl	__Func_9163c
.Lcbe:
	mov	r0, #0
	mov	r3, #0x89
	lsl	r3, #2
	add	sp, r3
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3cc

.thumb_func_start OvlFunc_cfc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e8c
	mov	r7, r0
	mov	r0, #0xc0
	lsl	r0, #2
	ldr	r6, [r3]
	mov	r5, r1
	bl	__Func_4970
	mov	r8, r0
	mov	r1, r8
	mov	r0, r5
	bl	__Func_5340
	ldrh	r3, [r7, #0xe]
	ldrh	r2, [r7, #0xc]
	lsl	r3, #5
	add	r3, r2
	ldr	r1, =0x6002000
	lsl	r3, #1
	ldr	r4, .Ld34	@ 0xfffff000
	add	r2, r3, r1
	add	r6, r3
	mov	r0, #0
.Ld30:
	mov	r1, #0
	b	.Ld40

	.align	2, 0
.Ld34:
	.word	0xfffff000
	.pool

.Ld40:
	ldrh	r3, [r7, #8]
	mul	r3, r0
	add	r3, r1
	orr	r3, r4
	lsl	r3, #16
	asr	r3, #16
	add	r1, #1
	strh	r3, [r2]
	strh	r3, [r6]
	add	r2, #2
	add	r6, #2
	cmp	r1, #0xf
	ble	.Ld40
	add	r0, #1
	add	r2, #0x20
	add	r6, #0x20
	cmp	r0, #7
	ble	.Ld30
	mov	r0, r8
	bl	__Func_2df0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cfc

.thumb_func_start OvlFunc_d74
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, =iwram_1e8c
	mov	r0, #0xc0
	lsl	r0, #2
	ldr	r6, [r3]
	bl	__Func_4970
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	lsl	r3, #5
	add	r3, r2
	ldr	r2, =0x6002000
	lsl	r3, #1
	mov	r7, r0
	mov	r5, #0
	ldr	r0, .Lda4	@ 0xfffff000
	add	r1, r3, r2
	add	r6, r3
	mov	r12, r5
.Ld9c:
	mov	r2, r12
	add	r2, #0x20
	mov	r4, #0xf
	b	.Ldb0

	.align	2, 0
.Lda4:
	.word	0xfffff000
	.pool

.Ldb0:
	mov	r3, r2
	orr	r3, r0
	lsl	r3, #16
	asr	r3, #16
	sub	r4, #1
	strh	r3, [r1]
	add	r2, #1
	strh	r3, [r6]
	add	r1, #2
	add	r6, #2
	cmp	r4, #0
	bge	.Ldb0
	mov	r3, #0x10
	add	r5, #1
	add	r1, #0x20
	add	r6, #0x20
	add	r12, r3
	cmp	r5, #7
	ble	.Ld9c
	mov	r0, r7
	bl	__Func_2df0
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d74

.thumb_func_start OvlFunc_de4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x40
	mov	r0, #0xb
	str	r1, [sp, #0x1c]
	mov	r11, r2
	str	r0, [sp, #0x18]
	cmp	r1, #1
	beq	.Le18
	cmp	r1, #1
	bgt	.Le0a
	cmp	r1, #0
	beq	.Le12
	b	.Le22
.Le0a:
	ldr	r1, [sp, #0x1c]
	cmp	r1, #2
	beq	.Le1e
	b	.Le22
.Le12:
	mov	r2, #0xad
	str	r2, [sp, #0x18]
	b	.Le22
.Le18:
	mov	r3, #0x27
	str	r3, [sp, #0x18]
	b	.Le22
.Le1e:
	mov	r4, #9
	str	r4, [sp, #0x18]
.Le22:
	ldr	r0, [sp, #0x18]
	mov	r6, #0
	mov	r9, r6
	cmp	r0, #0
	beq	.Le3e
	mov	r2, #0
	mov	r3, r11
.Le30:
	strb	r2, [r3]
	mov	r1, #1
	ldr	r4, [sp, #0x18]
	add	r9, r1
	add	r3, #1
	cmp	r9, r4
	bne	.Le30
.Le3e:
	mov	r0, sp
	mov	r6, #0
	add	r0, #0x20
	str	r6, [sp, #0x14]
	str	r6, [sp, #0x10]
	str	r6, [sp, #0xc]
	str	r6, [sp, #8]
	str	r0, [sp, #4]
	mov	r9, r6
	mov	r2, #0
	mov	r3, r0
.Le54:
	mov	r1, #1
	add	r9, r1
	mov	r4, r9
	stmia	r3!, {r2}
	cmp	r4, #8
	bne	.Le54
	mov	r6, #0
	ldr	r5, =.L16d0
	mov	r9, r6
	mov	r6, #1
.Le68:
	ldrh	r0, [r5]
	add	r5, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le84
	ldr	r1, [sp, #8]
	mov	r3, r6
	mov	r0, r9
	lsl	r3, r0
	orr	r1, r3
	lsl	r3, r1, #24
	lsr	r3, #24
	str	r3, [sp, #8]
.Le84:
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #6
	bne	.Le68
	mov	r4, #0
	ldr	r7, [sp, #4]
	mov	r9, r4
.Le94:
	ldr	r2, =.L16c0
	mov	r6, r9
	lsl	r3, r6, #2
	ldr	r0, [r2, r3]
	bl	__Func_77394
	mov	r12, r0
	mov	r1, r12
	add	r1, #0x10
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldr	r0, =0x7cf
	ldrh	r2, [r1]
	cmp	r3, r0
	ble	.Leb6
	strh	r0, [r1]
	mov	r2, r0
.Leb6:
	lsl	r3, r2, #16
	cmp	r3, #0
	bge	.Lec0
	mov	r3, #0
	strh	r3, [r1]
.Lec0:
	mov	r4, #2
	ldrsh	r3, [r1, r4]
	ldrh	r2, [r1, #2]
	cmp	r3, r0
	ble	.Lece
	strh	r0, [r1, #2]
	mov	r2, r0
.Lece:
	lsl	r3, r2, #16
	cmp	r3, #0
	bge	.Led8
	mov	r3, #0
	strh	r3, [r1, #2]
.Led8:
	ldrh	r3, [r1, #8]
	ldr	r2, =0x3e7
	cmp	r3, r2
	bls	.Lee2
	strh	r2, [r1, #8]
.Lee2:
	ldrh	r3, [r1, #0xa]
	cmp	r3, r2
	bls	.Leea
	strh	r2, [r1, #0xa]
.Leea:
	ldrh	r3, [r1, #0xc]
	cmp	r3, r2
	bls	.Lef2
	strh	r2, [r1, #0xc]
.Lef2:
	ldrb	r3, [r1, #0xe]
	cmp	r3, #0x63
	bls	.Lefc
	mov	r3, #0x63
	strb	r3, [r1, #0xe]
.Lefc:
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #2
	ldrsh	r3, [r1, r4]
	lsl	r2, #21
	lsl	r3, #10
	orr	r2, r3
	ldrh	r3, [r1, #8]
	orr	r2, r3
	str	r2, [r7]
	ldrh	r3, [r1, #0xc]
	ldrh	r2, [r1, #0xa]
	lsl	r3, #12
	lsl	r2, #22
	orr	r2, r3
	ldrb	r3, [r1, #0xe]
	lsl	r3, #4
	orr	r2, r3
	mov	r6, r9
	str	r2, [r7, #4]
	lsl	r0, r6, #3
	mov	r6, r12
	ldrb	r2, [r6, #0xf]
	mov	r3, r2
	cmp	r3, #0x63
	bls	.Lf36
	mov	r3, #0x63
	strb	r3, [r6, #0xf]
	mov	r2, #0x63
.Lf36:
	mov	r3, r2
	cmp	r3, #0
	bne	.Lf42
	mov	r3, #1
	mov	r1, r12
	strb	r3, [r1, #0xf]
.Lf42:
	mov	r2, r12
	ldrb	r3, [r2, #0xf]
	mov	r4, r9
	sub	r2, r0, r4
	ldr	r6, [sp, #0x14]
	lsl	r3, r2
	orr	r6, r3
	mov	r2, r12
	str	r6, [sp, #0x14]
	mov	r5, #0
	add	r2, #0xf8
	mov	r1, #0
.Lf5a:
	ldmia	r2!, {r3}
	ldr	r0, [sp, #0x10]
	lsl	r3, r1
	add	r0, r3
	add	r5, #1
	str	r0, [sp, #0x10]
	add	r1, #7
	cmp	r5, #4
	bne	.Lf5a
	ldr	r1, =0x1ff
	ldr	r2, =.L16dc
	mov	r3, #1
	mov	r0, r12
	mov	r5, #0
	mov	r8, r1
	mov	r14, r2
	mov	r10, r3
	add	r0, #0xd8
.Lf7e:
	ldrh	r3, [r0]
	mov	r1, r8
	mov	r4, #0
	and	r1, r3
	mov	r2, r14
.Lf88:
	ldrh	r3, [r2]
	add	r2, #2
	cmp	r1, r3
	bne	.Lf9e
	ldr	r6, [sp, #0xc]
	mov	r3, r10
	lsl	r3, r4
	orr	r6, r3
	lsl	r3, r6, #24
	lsr	r3, #24
	str	r3, [sp, #0xc]
.Lf9e:
	add	r4, #1
	cmp	r4, #8
	bne	.Lf88
	add	r5, #1
	add	r0, #2
	cmp	r5, #0xf
	bne	.Lf7e
	mov	r0, #1
	add	r9, r0
	mov	r1, r9
	add	r7, #8
	cmp	r1, #4
	beq	.Lfba
	b	.Le94
.Lfba:
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	beq	.Lfc2
	b	.L1108
.Lfc2:
	mov	r3, #0x27
	mov	r6, #0
	mov	r10, r3
	mov	r9, r6
.Lfca:
	mov	r4, r9
	ldr	r3, =.L16c0
	lsl	r2, r4, #2
	ldr	r0, [r3, r2]
	bl	__Func_77394
	mov	r5, r10
	mov	r4, r0
	mov	r0, #0xd8
	mov	r7, #0
	mov	r8, r0
	add	r5, r11
.Lfe2:
	mov	r1, r8
	ldrh	r0, [r1, r4]
	str	r4, [sp]
	bl	__Func_78414
	ldr	r4, [sp]
	mov	r2, r8
	ldrh	r1, [r2, r4]
	ldr	r3, .L1024	@ 0x1ff
	and	r1, r3
	add	r0, r6, #1
	ldrb	r3, [r5]
	mov	r2, r1
	asr	r2, r0
	add	r3, r2
	strb	r3, [r5]
	mov	r3, #7
	sub	r3, r6
	lsl	r1, r3
	ldrb	r3, [r5, #1]
	add	r3, r1
	strb	r3, [r5, #1]
	mov	r6, r0
	mov	r3, #1
	add	r5, #1
	add	r10, r3
	cmp	r6, #7
	bne	.L1040
	mov	r6, #0
	add	r5, #1
	add	r10, r3
	b	.L1040

	.align	2, 0
.L1024:
	.word	0x1ff
	.pool

.L1040:
	mov	r0, #2
	add	r7, #1
	add	r8, r0
	cmp	r7, #0xf
	bne	.Lfe2
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #4
	bne	.Lfca
	mov	r3, #0x6b
	mov	r6, #1
	mov	r4, #0
	mov	r10, r3
	neg	r6, r6
	mov	r9, r4
.L1060:
	ldr	r3, =.L16c0
	mov	r0, r9
	lsl	r2, r0, #2
	ldr	r0, [r3, r2]
	bl	__Func_77394
	ldr	r2, =.L16ec
	mov	r8, r0
	mov	r1, #0
	mov	r0, r10
	mov	r14, r1
	mov	r12, r2
	add	r0, r11
.L107a:
	mov	r3, r12
	mov	r1, r8
	ldrh	r4, [r3]
	mov	r5, #0
	mov	r7, #0
	add	r1, #0xd8
.L1086:
	ldrh	r2, [r1]
	ldr	r3, =0x1ff
	and	r3, r2
	add	r1, #2
	cmp	r3, r4
	bne	.L109a
	mov	r3, #0xf8
	lsl	r3, #8
	and	r3, r2
	lsr	r5, r3, #11
.L109a:
	add	r7, #1
	cmp	r7, #0xf
	bne	.L1086
	lsl	r2, r5, #16
	cmp	r6, #0
	bge	.L10be
	lsr	r1, r2, #16
	neg	r3, r6
	mov	r2, r1
	asr	r2, r3
	ldrb	r3, [r0]
	mov	r4, #1
	add	r3, r2
	strb	r3, [r0]
	add	r10, r4
	add	r0, #1
	add	r6, #8
	b	.L10c0
.L10be:
	lsr	r1, r2, #16
.L10c0:
	ldrb	r3, [r0]
	lsl	r1, r6
	add	r3, r1
	mov	r1, #5
	sub	r6, #5
	neg	r1, r1
	strb	r3, [r0]
	cmp	r6, r1
	bne	.L10da
	mov	r2, #1
	add	r0, #1
	add	r10, r2
	mov	r6, #3
.L10da:
	mov	r4, #1
	add	r14, r4
	mov	r3, #2
	mov	r1, r14
	add	r12, r3
	cmp	r1, #0x17
	bne	.L107a
	add	r9, r4
	mov	r2, r9
	cmp	r2, #4
	bne	.L1060
	ldr	r2, =ewram_240
	mov	r1, r11
	ldrh	r3, [r2, #0x12]
	add	r1, #0xa5
	strb	r3, [r1]
	ldr	r3, [r2, #0x10]
	add	r1, #1
	lsr	r3, #8
	strb	r3, [r1]
	ldr	r3, [r2, #0x10]
	add	r1, #1
	strb	r3, [r1]
.L1108:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #2
	beq	.L117c
	ldr	r4, [sp, #0x1c]
	neg	r3, r3
	orr	r3, r4
	lsr	r3, #31
	add	r3, #8
	mov	r6, #0
	mov	r1, r11
	ldr	r4, [sp, #4]
	mov	r9, r6
	add	r0, r3, r1
.L1122:
	ldr	r2, [r4]
	lsr	r3, r2, #24
	strb	r3, [r0]
	lsr	r3, r2, #16
	strb	r3, [r0, #1]
	lsr	r3, r2, #8
	strb	r3, [r0, #2]
	strb	r2, [r0, #3]
	ldr	r1, [r4, #4]
	lsr	r3, r1, #24
	strb	r3, [r0, #4]
	lsr	r3, r1, #16
	strb	r3, [r0, #5]
	lsr	r3, r1, #8
	strb	r1, [r0, #7]
	strb	r3, [r0, #6]
	ldr	r2, [r4, #8]
	lsr	r3, r2, #28
	orr	r1, r3
	lsr	r3, r2, #20
	strb	r3, [r0, #8]
	lsr	r3, r2, #12
	strb	r3, [r0, #9]
	lsr	r3, r2, #4
	lsl	r2, #4
	strb	r2, [r0, #0xb]
	strb	r3, [r0, #0xa]
	strb	r1, [r0, #7]
	ldr	r1, [r4, #0xc]
	lsr	r3, r1, #28
	orr	r2, r3
	strb	r2, [r0, #0xb]
	lsr	r3, r1, #20
	mov	r2, #1
	strb	r3, [r0, #0xc]
	add	r9, r2
	lsr	r3, r1, #12
	strb	r3, [r0, #0xd]
	lsr	r1, #4
	mov	r3, r9
	strb	r1, [r0, #0xe]
	add	r4, #0x10
	add	r0, #0xf
	cmp	r3, #2
	bne	.L1122
.L117c:
	add	r4, sp, #0x14
	ldrb	r4, [r4]
	mov	r6, r11
	strb	r4, [r6]
	ldr	r6, [sp, #0x14]
	mov	r0, r11
	lsr	r3, r6, #8
	strb	r3, [r0, #1]
	lsr	r3, r6, #16
	strb	r3, [r0, #2]
	lsr	r2, r6, #20
	mov	r3, #0xf0
	and	r2, r3
	ldr	r3, [sp, #0x10]
	mov	r1, #0xf
	and	r3, r1
	orr	r2, r3
	strb	r2, [r0, #3]
	ldr	r1, [sp, #0x10]
	lsr	r3, r1, #4
	strb	r3, [r0, #4]
	lsr	r3, r1, #12
	strb	r3, [r0, #5]
	lsr	r3, r1, #20
	strb	r3, [r0, #6]
	add	r2, sp, #8
	ldrb	r2, [r2]
	strb	r2, [r0, #7]
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0
	beq	.L11c0
	add	r4, sp, #0xc
	ldrb	r4, [r4]
	strb	r4, [r0, #8]
.L11c0:
	ldr	r0, [sp, #0x18]
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_de4

.thumb_func_start OvlFunc_11e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r0
	mov	r8, r1
	sub	sp, #8
	mov	r3, r9
	str	r2, [sp, #4]
	add	r3, r8
	sub	r3, #1
	ldrb	r5, [r3]
	mov	r3, r8
	mov	r2, #0
	sub	r3, #1
	mov	r10, r2
	mov	r1, #0
	cmp	r3, #0
	beq	.L1224
	mov	r12, r3
	mov	r4, r9
.L1214:
	ldrb	r2, [r4]
	mov	r3, r5
	eor	r3, r2
	add	r1, #1
	strb	r3, [r4]
	add	r4, #1
	cmp	r1, r12
	bne	.L1214
.L1224:
	ldr	r0, [sp, #4]
	mov	r3, #0
	mov	r2, #5
	mov	r5, #0
	mov	r7, #0
	mov	r12, r3
	mov	r14, r3
	mov	r11, r2
	add	r0, r10
.L1236:
	mov	r3, r9
	mov	r6, #0
	mov	r1, #0
	add	r4, r7, r3
	b	.L1242
.L1240:
	add	r1, #1
.L1242:
	cmp	r1, #6
	beq	.L126c
	ldrb	r2, [r4]
	mov	r3, #7
	sub	r3, r5
	asr	r2, r3
	str	r3, [sp]
	add	r5, #1
	mov	r3, #1
	and	r2, r3
	cmp	r5, #8
	bne	.L1260
	mov	r5, #0
	add	r4, #1
	add	r7, #1
.L1260:
	mov	r3, r11
	sub	r3, r1
	lsl	r2, r3
	orr	r6, r2
	cmp	r7, r8
	bne	.L1240
.L126c:
	mov	r2, #1
	add	r14, r2
	mov	r3, r14
	strb	r6, [r0]
	add	r10, r2
	add	r0, #1
	add	r12, r6
	cmp	r3, #9
	bne	.L1292
	mov	r3, #0x3f
	mov	r2, r12
	and	r2, r3
	strb	r2, [r0]
	mov	r3, #1
	mov	r2, #0
	add	r0, #1
	add	r10, r3
	mov	r12, r2
	mov	r14, r2
.L1292:
	cmp	r7, r8
	bne	.L1236
	mov	r3, r10
	mov	r1, #0
	cmp	r3, #0
	beq	.L12b2
	ldr	r2, [sp, #4]
	mov	r0, #0x3f
.L12a2:
	ldrb	r3, [r2]
	add	r3, r1
	and	r3, r0
	add	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, r10
	bne	.L12a2
.L12b2:
	mov	r0, r10
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_11e4

.thumb_func_start OvlFunc_12c8
	push	{r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, #0
	ldr	r0, =0xffff
	cmp	r4, #0
	beq	.L1300
	mov	r7, #0x80
	ldr	r6, =0xffffefdf
	lsl	r7, #8
.L12da:
	ldrb	r3, [r1]
	lsl	r3, #8
	eor	r0, r3
	mov	r2, #0
.L12e2:
	mov	r3, r0
	and	r3, r7
	cmp	r3, #0
	beq	.L12f0
	lsl	r3, r0, #1
	add	r0, r3, r6
	b	.L12f2
.L12f0:
	lsl	r0, #1
.L12f2:
	add	r2, #1
	cmp	r2, #8
	bne	.L12e2
	add	r5, #1
	add	r1, #1
	cmp	r5, r4
	bne	.L12da
.L1300:
	mvn	r0, r0
	lsl	r0, #16
	lsr	r0, #16
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_12c8

	.section .data

.L14d4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x14d4, (0x14dc-0x14d4)
.L14dc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x14dc, (0x1658-0x14dc)
.L1658:
	.incbin "overlays/rom_7795e8/orig.bin", 0x1658, (0x1688-0x1658)
.L1688:
	.incbin "overlays/rom_7795e8/orig.bin", 0x1688, (0x168c-0x1688)
.L168c:
	.incbin "overlays/rom_7795e8/orig.bin", 0x168c, (0x16a4-0x168c)
.L16a4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16a4, (0x16b0-0x16a4)
.L16b0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b0, (0x16b2-0x16b0)
.L16b2:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b2, (0x16b4-0x16b2)
.L16b4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b4, (0x16b6-0x16b4)
.L16b6:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b6, (0x16b8-0x16b6)
.L16b8:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b8, (0x16ba-0x16b8)
.L16ba:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16ba, (0x16bc-0x16ba)
.L16bc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16bc, (0x16c0-0x16bc)
.L16c0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16c0, (0x16d0-0x16c0)
.L16d0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16d0, (0x16dc-0x16d0)
.L16dc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16dc, (0x16ec-0x16dc)
.L16ec:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16ec
