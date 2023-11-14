	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_c10e8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	sub	sp, #0x1c
	mov	r8, r0
	mov	r10, r1
	ldr	r5, [r3]
	cmp	r1, #0
	bne	.Lc1122
	ldr	r0, =Func_c1084
	bl	Func_4278
	ldr	r3, =REG_BLDY
	mov	r1, r10
	strh	r1, [r3]
	bl	Func_c1054
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =REG_BLDCNT
	mov	r1, #0
	bl	Func_387c
.Lc1122:
	cmp	r5, #0
	beq	.Lc11c4
	mov	r2, r10
	cmp	r2, #0
	beq	.Lc11c4
	mov	r1, #0xca
	lsl	r1, #3
	add	r3, r5, r1
	mov	r1, r10
	strh	r1, [r3]
	ldr	r1, =0x64e
	mov	r2, #0
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r3, =REG_BLDY
	strh	r2, [r3]
	mov	r2, #0x10
	sub	r3, #2
	strh	r2, [r3]
	mov	r5, sp
	mov	r1, r5
	mov	r0, #3
	bl	Func_b6c08
	mov	r6, #0
	mov	r7, r0
	cmp	r6, r7
	bcs	.Lc1178
	mov	r2, #1
	mov	r11, r5
	mov	r9, r2
	mov	r5, #0
.Lc1162:
	mov	r3, r11
	ldrsh	r0, [r5, r3]
	mov	r2, r9
	mov	r1, r10
	and	r1, r2
	add	r6, #1
	bl	Func_c0f98
	add	r5, #2
	cmp	r6, r7
	bcc	.Lc1162
.Lc1178:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lc11ac
	ldrh	r0, [r3]
	mov	r1, #2
	mov	r6, #0
	add	r8, r1
	cmp	r0, #0xff
	beq	.Lc11ac
	mov	r7, #1
	mov	r5, r7
	mov	r2, r10
	and	r5, r2
.Lc1192:
	mov	r1, r5
	eor	r1, r7
	add	r6, #1
	bl	Func_c0f98
	cmp	r6, #0xd
	bhi	.Lc11ac
	mov	r3, r8
	ldrh	r0, [r3]
	mov	r1, #2
	add	r8, r1
	cmp	r0, #0xff
	bne	.Lc1192
.Lc11ac:
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =REG_BLDCNT
	mov	r1, #0
	bl	Func_387c
	mov	r1, #0x90
	ldr	r0, =Func_c1084
	lsl	r1, #3
	bl	Func_41d8
.Lc11c4:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_c10e8

.thumb_func_start Func_c11ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1e50
	mov	r12, r2
	mov	r3, r12
	add	r3, #0xa0
	ldr	r3, [r3]
	sub	sp, #0x10
	str	r3, [sp, #0xc]
	mov	r3, r12
	add	r3, #0x9c
	ldr	r3, [r3]
	mov	r2, #0x9e
	mov	r10, r3
	lsl	r2, #5
	add	r2, r10
	mov	r3, #0
	str	r3, [r2]
	mov	r3, r12
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r7, #0x8e
	mov	r11, r3
	mov	r2, #0xf
	ldr	r3, =Func_888
	lsl	r7, #5
	str	r2, [sp, #8]
	mov	r9, r3
	add	r7, r10
.Lc1230:
	ldr	r0, [r7, #0x18]
	cmp	r0, #0
	beq	.Lc12b4
	ldr	r3, [r7]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r7, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	mov	r3, r2
	add	r0, r3
	ldr	r3, [r7, #8]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	mov	r3, r2
	add	r0, r3
	bl	Func_45d4
	ldr	r3, =0xfff
	cmp	r0, r3
	bgt	.Lc1266
	mov	r3, #0
	str	r3, [r7, #0x18]
	b	.Lc12ae
.Lc1266:
	mov	r1, #0x80
	ldr	r3, =Func_8ac
	lsl	r1, #9
	bl	_call_via_r3
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	mov	r2, #2
	str	r3, [r7, #0x18]
	ldr	r6, =Func_888
	mov	r8, r0
	mov	r5, r7
	mov	r14, r2
.Lc1280:
	ldr	r4, [r5]
	neg	r0, r4
	asr	r0, #8
	mov	r1, r8
	.call_via r6
	mov	r1, #0x98
	lsl	r1, #9
	.call_via r6
	ldr	r3, [r5, #0xc]
	asr	r2, r3, #7
	sub	r3, r2
	add	r3, r0
	str	r3, [r5, #0xc]
	add	r4, r3
	mov	r3, #1
	neg	r3, r3
	add	r14, r3
	mov	r2, r14
	stmia	r5!, {r4}
	cmp	r2, #0
	bge	.Lc1280
.Lc12ae:
	ldr	r0, [r7, #0x18]
	cmp	r0, #0
	bne	.Lc1348
.Lc12b4:
	ldr	r3, =0x13bc
	add	r3, r10
	ldr	r3, [r3]
	cmp	r3, #0x18
	bgt	.Lc1344
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r3, #0x80
	lsl	r3, #9
	add	r3, r0
	lsr	r6, r3, #1
	mov	r0, r5
	mov	r8, r3
	bl	Func_231c
	mov	r1, r6
	.call_via r9
	str	r0, [r7]
	mov	r0, r5
	bl	Func_2322
	mov	r1, r6
	.call_via r9
	ldr	r2, [r7]
	mov	r1, #1
	mov	r3, r2
	and	r3, r1
	str	r0, [r7, #4]
	cmp	r3, #0
	beq	.Lc1302
	neg	r3, r2
	str	r3, [r7]
.Lc1302:
	ldr	r2, [r7, #4]
	mov	r3, r2
	and	r3, r1
	cmp	r3, #0
	beq	.Lc1310
	neg	r3, r2
	str	r3, [r7, #4]
.Lc1310:
	bl	Func_4458
	mov	r2, #0x80
	lsl	r2, #8
	add	r0, r2
	lsr	r0, #2
	ldr	r3, [r7, #4]
	str	r0, [r7, #8]
	ldr	r0, [r7]
	asr	r2, r3, #8
	neg	r0, r0
	neg	r3, r3
	asr	r1, r0, #7
	asr	r3, #7
	asr	r0, #8
	add	r3, r0
	add	r1, r2
	str	r3, [r7, #0x10]
	mov	r2, r8
	mov	r3, #0
	str	r3, [r7, #0x14]
	lsr	r3, r2, #13
	add	r3, #1
	str	r1, [r7, #0xc]
	str	r3, [r7, #0x18]
	mov	r0, r3
.Lc1344:
	cmp	r0, #0
	beq	.Lc1384
.Lc1348:
	ldr	r3, [r7]
	asr	r3, #10
	mov	r5, r3
	ldr	r3, [r7, #4]
	asr	r3, #10
	mov	r4, r3
	mov	r6, r0
	add	r5, #0x40
	add	r4, #0x40
	cmp	r6, #0
	bge	.Lc1362
	mov	r6, #0
	b	.Lc1368
.Lc1362:
	cmp	r6, #6
	ble	.Lc1368
	mov	r6, #6
.Lc1368:
	ldr	r3, =.Lc3620
	ldr	r2, =.Lc3604
	ldrb	r0, [r3, r6]
	lsl	r3, r6, #2
	ldr	r1, [r2, r3]
	lsr	r3, r0, #1
	sub	r2, r5, r3
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r10
	sub	r3, r4, r3
	ldr	r0, [sp, #0xc]
	bl	_call_via_r11
.Lc1384:
	ldr	r3, [sp, #8]
	sub	r3, #1
	add	r7, #0x1c
	str	r3, [sp, #8]
	cmp	r3, #0
	blt	.Lc1392
	b	.Lc1230
.Lc1392:
	ldr	r3, =iwram_1e50
	add	r3, #0xbc
	ldr	r3, [r3]
	mov	r5, #0x9c
	lsl	r5, #5
	mov	r11, r3
	add	r5, r10
	mov	r7, #2
.Lc13a2:
	ldr	r1, [r5]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #4]
	add	r1, r3
	ldr	r3, [r5, #0xc]
	str	r1, [r5]
	asr	r4, r1, #10
	ldr	r1, [r5, #0x10]
	add	r2, r3
	str	r2, [r5, #4]
	asr	r6, r2, #10
	mov	r2, r1
	cmp	r1, #0
	bge	.Lc13c0
	add	r2, r1, #7
.Lc13c0:
	asr	r2, #3
	mov	r3, #3
	sub	r0, r3, r2
	cmp	r0, #0
	blt	.Lc13ea
	add	r3, r1, #1
	str	r3, [r5, #0x10]
	ldr	r2, =.Lc3628
	lsl	r3, r0, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x20
	mov	r2, r4
	mov	r3, r6
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r10
	add	r2, #0x30
	add	r3, #0x30
	ldr	r0, [sp, #0xc]
	bl	_call_via_r11
.Lc13ea:
	sub	r7, #1
	add	r5, #0x14
	cmp	r7, #0
	bge	.Lc13a2
	ldr	r2, =0x13bc
	add	r2, r10
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	mov	r2, #0x9e
	lsl	r2, #5
	add	r2, r10
	mov	r3, #1
	str	r3, [r2]
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c11ec

.thumb_func_start Func_c1438
	push	{lr}
	ldr	r3, =iwram_1e50
	mov	r2, r3
	add	r2, #0xa0
	ldr	r0, [r2]
	add	r3, #0x9c
	ldr	r3, [r3]
	cmp	r0, #0
	beq	.Lc1464
	mov	r1, #0x9e
	lsl	r1, #5
	add	r2, r3, r1
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lc1464
	mov	r3, #0
	str	r3, [r2]
	mov	r2, #0x80
	ldr	r1, =0x6004000
	lsl	r2, #7
	bl	Func_54e4
.Lc1464:
	pop	{r1}
	bx	r1
.func_end Func_c1438

.thumb_func_start Func_c1470
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	str	r0, [sp, #4]
	ldr	r3, =iwram_1f00
	ldr	r2, [r3]
	mov	r3, #1
	str	r3, [r2, #8]
	ldr	r1, =0x13d0
	mov	r0, #0x27
	bl	Func_48f4
	mov	r1, #0x80
	mov	r11, r0
	lsl	r1, #7
	mov	r0, #0x28
	bl	Func_48b0
	ldr	r1, =Func_888
	mov	r7, #0x8e
	lsl	r7, #5
	mov	r2, #0xf
	mov	r10, r1
	add	r7, r11
	mov	r9, r2
.Lc14ac:
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	mov	r3, #0x80
	lsl	r3, #9
	add	r3, r0
	lsr	r6, r3, #1
	mov	r0, r5
	mov	r8, r3
	bl	Func_231c
	mov	r1, r6
	.call_via r10
	str	r0, [r7]
	mov	r0, r5
	bl	Func_2322
	mov	r1, r6
	.call_via r10
	ldr	r2, [r7]
	mov	r1, #1
	mov	r3, r2
	and	r3, r1
	str	r0, [r7, #4]
	cmp	r3, #0
	beq	.Lc14ee
	neg	r3, r2
	str	r3, [r7]
.Lc14ee:
	ldr	r2, [r7, #4]
	mov	r1, #1
	mov	r3, r2
	and	r3, r1
	cmp	r3, #0
	beq	.Lc14fe
	neg	r3, r2
	str	r3, [r7, #4]
.Lc14fe:
	bl	Func_4458
	mov	r2, #0x80
	lsl	r2, #8
	add	r0, r2
	lsr	r0, #2
	ldr	r3, [r7, #4]
	str	r0, [r7, #8]
	ldr	r0, [r7]
	asr	r2, r3, #8
	neg	r0, r0
	neg	r3, r3
	asr	r1, r0, #7
	asr	r3, #7
	asr	r0, #8
	add	r1, r2
	add	r3, r0
	str	r1, [r7, #0xc]
	str	r3, [r7, #0x10]
	mov	r1, r8
	mov	r3, #0
	mov	r2, #1
	str	r3, [r7, #0x14]
	neg	r2, r2
	lsr	r3, r1, #13
	add	r3, #1
	add	r9, r2
	str	r3, [r7, #0x18]
	mov	r3, r9
	add	r7, #0x1c
	cmp	r3, #0
	bge	.Lc14ac
	mov	r1, #0x80
	mov	r5, #0x9c
	lsl	r1, #5
	lsl	r5, #5
	mov	r2, #2
	ldr	r6, =Func_888
	mov	r8, r1
	mov	r7, #0
	add	r5, r11
	mov	r9, r2
.Lc1552:
	mov	r0, r7
	bl	Func_231c
	mov	r1, r8
	.call_via r6
	str	r0, [r5]
	mov	r0, r7
	bl	Func_2322
	mov	r1, r8
	.call_via r6
	str	r0, [r5, #4]
	mov	r0, r7
	bl	Func_231c
	mov	r1, #0x80
	lsl	r1, #2
	.call_via r6
	str	r0, [r5, #8]
	mov	r0, r7
	bl	Func_2322
	mov	r1, #0x80
	lsl	r1, #2
	.call_via r6
	mov	r1, #1
	ldr	r3, =0x5555
	neg	r1, r1
	add	r9, r1
	mov	r2, #0
	add	r7, r3
	mov	r3, r9
	str	r0, [r5, #0xc]
	str	r2, [r5, #0x10]
	add	r5, #0x14
	cmp	r3, #0
	bge	.Lc1552
	ldr	r3, =0x13bc
	add	r3, r11
	str	r2, [r3]
	mov	r3, #0x9e
	lsl	r3, #5
	add	r3, r11
	str	r2, [r3]
	ldr	r3, =0x13cc
	add	r3, r11
	str	r2, [r3]
	ldr	r3, =iwram_1e50
	mov	r1, #0x80
	add	r3, #0xa0
	lsl	r1, #7
	ldr	r0, [r3]
	ldr	r3, =Func_8d4
	bl	_call_via_r3
	ldr	r6, =0xc9
	mov	r0, r6
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	mov	r1, r5
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	add	r5, #0x80
	bl	_call_via_r3
	mov	r1, r11
	mov	r0, r5
	bl	Func_5340
	ldr	r1, [sp, #4]
	cmp	r1, #1
	beq	.Lc160a
	cmp	r1, #1
	bgt	.Lc15fe
	cmp	r1, #0
	beq	.Lc1606
	b	.Lc1612
.Lc15fe:
	ldr	r2, [sp, #4]
	cmp	r2, #2
	beq	.Lc160e
	b	.Lc1612
.Lc1606:
	ldr	r0, =0xc8
	b	.Lc1614
.Lc160a:
	mov	r0, r6
	b	.Lc1614
.Lc160e:
	ldr	r0, =0xca
	b	.Lc1614
.Lc1612:
	ldr	r0, =0xcb
.Lc1614:
	bl	Func_2f40
	mov	r5, r0
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	lsl	r1, #19
	ldr	r2, =0x84000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0
	sub	r3, #0xac
	str	r2, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r1, #0x80
	lsl	r1, #1
	sub	r3, #0xc
	strh	r1, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r1, [r3]
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	_Func_ed408
	mov	r5, #0xc8
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #7
	mov	r3, #3
	lsl	r5, #4
	mov	r1, #7
	mov	r0, #0x2f
	bl	_Func_ed408
	mov	r1, r5
	ldr	r0, =Func_c11ec
	bl	Func_41d8
	mov	r1, r5
	ldr	r0, =Func_c1438
	bl	Func_41d8
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c1470

.thumb_func_start Func_c16d0
	push	{lr}
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r3, =Func_8d4
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	mov	r0, #0x28
	bl	Func_2dd8
	mov	r0, #0x27
	bl	Func_2dd8
	ldr	r3, .Lc170c
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r0, =Func_c1438
	bl	Func_4278
	ldr	r0, =Func_c11ec
	bl	Func_4278
	b	.Lc1720

	.align	2, 0
.Lc170c:
	.word	0x1341
	.pool

.Lc1720:
	pop	{r1}
	bx	r1
.func_end Func_c16d0

.thumb_func_start Func_c1724
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, r2
	mov	r2, #0x80
	lsl	r2, #9
	mov	r6, r1
	cmp	r0, r2
	ble	.Lc173a
	mov	r0, r2
.Lc173a:
	cmp	r3, #0
	ble	.Lc178a
	mov	r1, #0x1f
	mov	r8, r1
	mov	r2, #0xf8
	mov	r1, #0xf8
	lsl	r2, #2
	lsl	r1, #7
	mov	r14, r2
	mov	r12, r1
	mov	r5, r3
.Lc1750:
	ldrh	r4, [r7]
	mov	r2, r8
	mov	r3, r4
	and	r3, r2
	mov	r1, r14
	mov	r2, r4
	and	r2, r1
	mul	r3, r0
	mov	r1, r12
	mul	r2, r0
	and	r1, r4
	mul	r1, r0
	lsr	r4, r3, #16
	mov	r3, r8
	and	r4, r3
	lsr	r2, #16
	mov	r3, r14
	and	r2, r3
	orr	r4, r2
	lsr	r1, #16
	mov	r2, r12
	and	r1, r2
	orr	r4, r1
	sub	r5, #1
	strh	r4, [r6]
	add	r7, #2
	add	r6, #2
	cmp	r5, #0
	bne	.Lc1750
.Lc178a:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_c1724

.thumb_func_start Func_c1798
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =iwram_1e80
	mov	r6, r3
	mov	r3, r7
	sub	r3, #0xc
	ldr	r3, [r3]
	sub	sp, #0xf0
	mov	r10, r0
	mov	r0, #1
	str	r3, [sp, #4]
	mov	r11, r1
	mov	r5, r2
	bl	Func_30f8
	mov	r1, #0xc9
	ldr	r0, [sp, #4]
	lsl	r1, #3
	add	r3, r0, r1
	mov	r2, #0
	ldrh	r1, [r3]
	mov	r0, #1
	bl	Func_c0774
	mov	r1, #0x80
	ldr	r3, =Func_8d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #0x80
	lsl	r0, #19
	ldr	r1, =0x3741
	bl	Func_387c
	ldr	r0, =REG_BG2CNT
	ldr	r1, =0x784
	bl	Func_387c
	ldr	r1, =0x3f44
	ldr	r0, =REG_BLDCNT
	bl	Func_387c
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0xf0
	ldr	r3, =REG_WIN0H
	strh	r2, [r3]
	ldr	r2, =0x1088
	add	r3, #4
	strh	r2, [r3]
	mov	r2, #0x3f
	add	r3, #4
	strh	r2, [r3]
	mov	r2, #0x11
	add	r3, #2
	strh	r2, [r3]
	cmp	r5, #0
	bne	.Lc18ce
	ldr	r0, =REG_BLDALPHA
	ldr	r1, =0x100e
	bl	Func_387c
	mov	r0, r11
	bl	Func_c1470
	ldr	r4, =0x644
	ldr	r3, [sp, #4]
	add	r4, r3, r4
	mov	r2, #0
	str	r4, [sp]
	ldr	r7, =REG_IME
	mov	r8, r2
	add	r6, sp, #0xbc
	mov	r9, r2
.Lc183a:
	ldr	r3, =iwram_1e50
	mov	r0, r8
	add	r3, #0x9c
	ldr	r5, [r3]
	cmp	r0, #0x18
	bgt	.Lc1860
	mov	r2, #0x80
	mov	r1, r9
	ldr	r3, [sp]
	lsl	r2, #9
	sub	r2, r1
	str	r2, [r3]
	ldr	r1, =0x544
	ldr	r4, [sp, #4]
	mov	r3, #0x80
	add	r0, r4, r1
	ldr	r1, =0x50000c0
	bl	Func_c1724
.Lc1860:
	mov	r1, r6
	mov	r0, r10
	bl	Func_b845c
	ldr	r3, [r6]
	mov	r4, #0x40
	ldr	r2, =0x13c4
	sub	r3, r4, r3
	add	r0, r5, r2
	lsl	r3, #8
	str	r3, [r0]
	ldr	r1, =0x13c8
	ldr	r3, [r6, #4]
	add	r2, r5, r1
	sub	r3, r4, r3
	ldr	r1, =ewram_2090
	lsl	r3, #8
	str	r3, [r2]
	ldrh	r3, [r7]
	mov	r4, r3
	strh	r7, [r7]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lc18a8
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r1
	add	r3, #4
	add	r2, #1
	stmia	r3!, {r0}
	strh	r2, [r1]
	ldr	r2, =REG_BG2X
	stmia	r3!, {r2}
	ldr	r2, =0x84000002
	str	r2, [r3]
.Lc18a8:
	strh	r4, [r7]
	ldr	r3, =0x13cc
	add	r2, r5, r3
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	mov	r0, #1
	ldr	r4, =0x444
	add	r8, r0
	mov	r1, r8
	add	r9, r4
	cmp	r1, #0x2c
	ble	.Lc183a
	mov	r0, r11
	bl	Func_c16d0
	b	.Lc199e
.Lc18ce:
	cmp	r5, #1
	bne	.Lc1958
	mov	r0, r11
	bl	_Func_ccaec
	ldr	r2, =ewram_2090
	mov	r3, #0x27
	mov	r4, #0x40
	ldr	r6, =REG_IME
	add	r7, sp, #0xb0
	mov	r9, r2
	mov	r8, r3
	mov	r11, r4
.Lc18e8:
	ldr	r0, =iwram_1eec
	mov	r1, r7
	ldr	r5, [r0]
	mov	r0, r10
	bl	Func_b845c
	ldr	r3, [r7]
	mov	r4, r11
	ldr	r2, =0x13c4
	sub	r3, r4, r3
	add	r1, r5, r2
	lsl	r3, #8
	str	r3, [r1]
	ldr	r3, [r7, #4]
	ldr	r0, =0x13c8
	sub	r3, r4, r3
	add	r2, r5, r0
	lsl	r3, #8
	str	r3, [r2]
	ldrh	r3, [r6]
	mov	r0, r3
	strh	r6, [r6]
	mov	r3, r9
	ldrh	r2, [r3]
	cmp	r2, #0x1f
	bgt	.Lc1936
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r9
	add	r3, #4
	add	r2, #1
	mov	r4, r9
	stmia	r3!, {r1}
	strh	r2, [r4]
	ldr	r2, =REG_BG2X
	stmia	r3!, {r2}
	ldr	r2, =0x84000002
	str	r2, [r3]
.Lc1936:
	strh	r0, [r6]
	ldr	r0, =0x13cc
	mov	r3, #1
	add	r2, r5, r0
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bge	.Lc18e8
	bl	_Func_ccbdc
	b	.Lc199e
.Lc1958:
	cmp	r5, #2
	bne	.Lc197e
	add	r0, sp, #0x5c
	mov	r3, #0
	str	r3, [r0, #0x1c]
	mov	r3, r11
	mov	r4, r10
	str	r3, [r0]
	mov	r1, r10
	mov	r3, #1
	str	r6, [r0, #0x18]
	str	r4, [r0, #8]
	strh	r1, [r0, #0x24]
	str	r4, [r0, #0xc]
	str	r3, [r0, #0x14]
	str	r3, [r0, #0x10]
	bl	_Func_cb7f8
	b	.Lc199e
.Lc197e:
	add	r0, sp, #8
	mov	r3, #0
	str	r3, [r0, #0x1c]
	str	r3, [r0, #0x18]
	mov	r3, r10
	mov	r2, r11
	str	r3, [r0, #8]
	mov	r4, r10
	str	r3, [r0, #0xc]
	mov	r3, #1
	str	r2, [r0]
	strh	r4, [r0, #0x24]
	str	r3, [r0, #0x14]
	str	r3, [r0, #0x10]
	bl	_Func_cc5d8
.Lc199e:
	add	sp, #0xf0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_c1798

.thumb_func_start Func_c1a14
	push	{lr}
	mov	r0, #0
	mov	r1, #0
	bl	Func_c0700
	pop	{r0}
	bx	r0
.func_end Func_c1a14

.thumb_func_start Func_c1a24
	push	{lr}
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	Func_307c
	pop	{r0}
	bx	r0
.func_end Func_c1a24

	.section .rodata

.Lc3604:
	.incrom 0xc3604, 0xc3620
.Lc3620:
	.incrom 0xc3620, 0xc3628
.Lc3628:
	.incrom 0xc3628, 0xc3734
