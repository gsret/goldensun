	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_cd260
	push	{r5, r6, lr}
	ldr	r0, =iwram_1eec
	ldr	r2, =0x7824
	ldr	r6, [r0]
	add	r3, r6, r2
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lcd326
	sub	r2, #0xa4
	add	r3, r6, r2
	ldr	r3, [r3]
	ldr	r5, [r0, #4]
	cmp	r3, #4
	bhi	.Lcd316
	ldr	r2, =.Lcd284
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lcd284:
	.word	.Lcd298
	.word	.Lcd2a8
	.word	.Lcd2ca
	.word	.Lcd2f0
	.word	.Lcd304
.Lcd298:
	mov	r2, #0x80
	ldr	r3, =Func_1af8
	ldr	r0, =0x6004000
	mov	r1, r5
	lsl	r2, #7
	bl	_call_via_r3
	b	.Lcd316
.Lcd2a8:
	mov	r2, #0x80
	ldr	r3, =Func_1af8
	mov	r1, r5
	lsl	r2, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r2, =0x7784
	mov	r1, #0x80
	add	r3, r6, r2
	ldr	r2, [r3]
	mov	r0, r5
	ldr	r3, =Func_8d8
	lsl	r1, #7
	bl	_call_via_r3
	b	.Lcd316
.Lcd2ca:
	ldr	r2, =0x7784
	add	r3, r6, r2
	ldr	r3, [r3]
	cmp	r3, #0x32
	bne	.Lcd2e2
	mov	r2, #0x80
	ldr	r1, =0x6004000
	lsl	r2, #7
	mov	r0, r5
	bl	Func_5534
	b	.Lcd316
.Lcd2e2:
	mov	r2, #0x80
	ldr	r1, =0x6004000
	lsl	r2, #7
	mov	r0, r5
	bl	Func_54e4
	b	.Lcd316
.Lcd2f0:
	ldr	r2, =0x7784
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r3, #0x80
	ldr	r2, =0x6004000
	lsl	r3, #7
	mov	r0, r5
	bl	Func_5490
	b	.Lcd316
.Lcd304:
	ldr	r2, =0x7784
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r3, #0x80
	ldr	r2, =0x6004000
	lsl	r3, #7
	mov	r0, r5
	bl	Func_543c
.Lcd316:
	ldr	r3, =0x7824
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, =0x7820
	add	r2, r6, r3
	mov	r3, #1
	b	.Lcd32e
.Lcd326:
	ldr	r3, =0x7820
	add	r2, r6, r3
	ldr	r3, [r2]
	add	r3, #1
.Lcd32e:
	str	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_cd260

.thumb_func_start Func_cd358
	push	{r5, lr}
	ldr	r3, =iwram_1eec
	ldr	r2, =0x7824
	ldr	r5, [r3]
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lcd3f6
	sub	r2, #0xa4
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.Lcd396
	cmp	r3, #1
	bgt	.Lcd37c
	cmp	r3, #0
	beq	.Lcd386
	b	.Lcd3ee
.Lcd37c:
	cmp	r3, #2
	beq	.Lcd3b8
	cmp	r3, #3
	beq	.Lcd3dc
	b	.Lcd3ee
.Lcd386:
	mov	r2, #0xf0
	ldr	r3, =Func_1af8
	ldr	r0, =0x6008000
	ldr	r1, =ewram_10000
	lsl	r2, #7
	bl	_call_via_r3
	b	.Lcd3ee
.Lcd396:
	mov	r2, #0xf0
	ldr	r3, =Func_1af8
	ldr	r1, =ewram_10000
	lsl	r2, #7
	ldr	r0, =0x6008000
	bl	_call_via_r3
	ldr	r2, =0x7784
	mov	r1, #0xf0
	add	r3, r5, r2
	ldr	r2, [r3]
	ldr	r0, =ewram_10000
	ldr	r3, =Func_8d8
	lsl	r1, #7
	bl	_call_via_r3
	b	.Lcd3ee
.Lcd3b8:
	ldr	r2, =0x7784
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #0x32
	bne	.Lcd3ce
	ldr	r1, =0x6008000
	add	r2, #0x7c
	ldr	r0, =ewram_10000
	bl	Func_5534
	b	.Lcd3ee
.Lcd3ce:
	mov	r2, #0xf0
	ldr	r1, =0x6008000
	lsl	r2, #7
	ldr	r0, =ewram_10000
	bl	Func_54e4
	b	.Lcd3ee
.Lcd3dc:
	ldr	r2, =0x7784
	add	r3, r5, r2
	ldr	r1, [r3]
	mov	r3, #0xf0
	ldr	r2, =0x6008000
	lsl	r3, #7
	ldr	r0, =ewram_10000
	bl	Func_5490
.Lcd3ee:
	ldr	r3, =0x7824
	add	r2, r5, r3
	mov	r3, #0
	str	r3, [r2]
.Lcd3f6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_cd358

.thumb_func_start Func_cd418
	ldr	r3, =iwram_1eec
	ldr	r0, =0x77bc
	ldr	r2, [r3]
	add	r3, r2, r0
	ldrh	r3, [r3]
	ldr	r1, =REG_WIN0H
	add	r0, #2
	strh	r3, [r1]
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #4
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	sub	r1, #2
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #4
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #2
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #2
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	sub	r1, #0x4a
	strh	r3, [r1]
	add	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r3]
	add	r1, #0x50
	strh	r3, [r1]
	ldr	r3, =0x77cc
	add	r2, r3
	ldrh	r3, [r2]
	add	r1, #2
	strh	r3, [r1]
	bx	lr
.func_end Func_cd418

.thumb_func_start Func_cd488
	ldr	r3, =iwram_1eec
	ldr	r0, =0x77d0
	ldr	r2, [r3]
	add	r3, r2, r0
	ldr	r3, [r3]
	ldr	r1, =REG_BG2X
	str	r3, [r1]
	ldr	r3, =0x77d4
	add	r2, r3
	ldr	r3, [r2]
	add	r1, #4
	str	r3, [r1]
	bx	lr
.func_end Func_cd488

.thumb_func_start Func_cd4b4
	push	{r5, lr}
	ldr	r3, =iwram_1e74
	ldr	r1, =0x77b4
	ldr	r2, [r3, #0x78]
	add	r5, r2, r1
	ldr	r0, [r3]
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.Lcd4f2
	add	r1, #4
	add	r3, r2, r1
	ldr	r2, [r3]
	add	r2, #1
	str	r2, [r3]
	ldr	r3, =0x544
	add	r0, r3
	lsl	r3, r2, #4
	add	r3, r2
	lsl	r3, #4
	add	r3, r2
	mov	r2, #0x80
	lsl	r3, #2
	lsl	r2, #9
	sub	r2, r3
	ldr	r1, =0x50000c0
	mov	r3, #0x80
	bl	_Func_c1724
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
.Lcd4f2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_cd4b4
