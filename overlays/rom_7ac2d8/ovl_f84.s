	.include "macros.inc"

.thumb_func_start OvlFunc_f84
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r3, =OvlFunc_cd0
	str	r3, [r5, #0x6c]
	ldr	r3, =0x3333
	mov	r0, #0
	str	r3, [r5, #0x30]
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #6
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0
	str	r3, [r5, #0x6c]
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, r6
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f84

.thumb_func_start OvlFunc_ffc
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r2, =0x3333
	mov	r0, #0
	ldr	r1, =0x6666
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
	mov	r2, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, #0x80
	lsl	r3, #12
	lsl	r5, #19
	add	r5, r3
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ffc

.thumb_func_start OvlFunc_1060
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x32
	bl	OvlFunc_f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_1060

.thumb_func_start OvlFunc_1080
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x32
	bl	OvlFunc_f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_1080

.thumb_func_start OvlFunc_10a0
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x32
	bl	OvlFunc_f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_10a0

.thumb_func_start OvlFunc_10c0
	push	{lr}
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1140
	ldr	r0, =0x311
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1140
	ldr	r0, =0x312
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1140
	ldr	r0, =0x876
	bl	__Func_79358
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0xd
	bl	__Func_91e9c
	b	.L1146
.L1140:
	ldr	r0, =0x876
	bl	__Func_79374
.L1146:
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c0

.thumb_func_start OvlFunc_1164
	push	{r5, r6, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r6, sp, #8
	mov	r0, r6
	bl	OvlFunc_758
	cmp	r0, #0
	bne	.L117a
	b	.L1326
.L117a:
	ldr	r3, [r6, #4]
	cmp	r3, #9
	beq	.L1192
	cmp	r3, #9
	bcs	.L1186
	b	.L1322
.L1186:
	cmp	r3, #0xa
	beq	.L1230
	cmp	r3, #0xb
	bne	.L1190
	b	.L12e4
.L1190:
	b	.L1322
.L1192:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.L11e0
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r1, #9
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	ldr	r0, [r6]
	bl	OvlFunc_8ec
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x77
	mov	r1, #9
	mov	r2, #0x6d
	mov	r3, #0xb
	bl	__Func_10424
	mov	r2, #0xb4
	mov	r3, #0x80
	ldr	r0, =0x2d60000
	lsl	r2, #16
	lsl	r3, #8
	mov	r1, #0
	bl	OvlFunc_3c48
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79358
	b	.L1322
.L11e0:
	mov	r5, #1
	mov	r0, #0x75
	mov	r1, #9
	mov	r2, #0x68
	mov	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x77
	mov	r1, #8
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x76
	mov	r1, #8
	mov	r2, #0x68
	mov	r3, #0xd
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_8ec
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79374
	b	.L1322
.L1230:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #0xc
	bne	.L128a
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	mov	r1, #0xa
	ldr	r0, [r6]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_8ec
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1282
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x76
	mov	r1, #9
	mov	r2, #0x68
	mov	r3, #0xd
	bl	__Func_10424
	mov	r0, #0xa1
	mov	r2, #0xd2
	mov	r3, #0x80
	lsl	r0, #18
	lsl	r2, #16
	lsl	r3, #7
	mov	r1, #0
	bl	OvlFunc_3c48
.L1282:
	ldr	r0, =0x311
	bl	__Func_79358
	b	.L1322
.L128a:
	mov	r5, #1
	mov	r0, #0x77
	mov	r1, #8
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12c8
	mov	r0, #0x77
	mov	r1, #9
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x76
	mov	r1, #8
	mov	r2, #0x68
	mov	r3, #0xd
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
.L12c8:
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_8ec
	ldr	r0, =0x311
	bl	__Func_79374
	b	.L1322
.L12e4:
	ldr	r4, [r6, #8]
	asr	r3, r4, #20
	cmp	r3, #0x28
	bne	.L1308
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r1, #0xb
	ldr	r0, [r6]
	mov	r2, r4
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_8ec
	ldr	r0, =0x312
	bl	__Func_79358
	b	.L1322
.L1308:
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r1, #0xb
	ldr	r0, [r6]
	mov	r2, r4
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_8ec
	ldr	r0, =0x312
	bl	__Func_79374
.L1322:
	bl	OvlFunc_10c0
.L1326:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1164

.thumb_func_start OvlFunc_1340
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_3a64
	bl	__Func_41d8
	mov	r1, #0xa0
	mov	r2, #0xa0
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #10
	bl	__Func_92064
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xe4
	bl	__Func_f9080
	mov	r2, #0xb6
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	bne	.L1396
	mov	r2, #0x9a
	mov	r0, #0
	mov	r1, #0xe8
	b	.L13ae
.L1396:
	cmp	r3, #3
	bne	.L13a4
	mov	r1, #0xb4
	mov	r2, #0xb6
	mov	r0, #0
	lsl	r1, #1
	b	.L13ae
.L13a4:
	cmp	r3, #4
	bne	.L13b6
	mov	r2, #0xc6
	mov	r0, #0
	mov	r1, #0xf8
.L13ae:
	lsl	r2, #2
	bl	__Func_92128
	b	.L13d8
.L13b6:
	mov	r1, #0xae
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92158
	mov	r1, #0xae
	mov	r2, #0x96
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_92128
	mov	r0, #0x1e
	bl	__Func_9163c
.L13d8:
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =OvlFunc_3a64
	bl	__Func_4278
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1340

.thumb_func_start OvlFunc_1408
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_3a8
	bl	__Func_91750
	bl	OvlFunc_1420
	pop	{r0}
	bx	r0
.func_end OvlFunc_1408

.thumb_func_start OvlFunc_1420
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1434
	ldr	r2, =0xfffff
	add	r3, r2
.L1434:
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1446
	ldr	r2, =0xfffff
	add	r3, r2
.L1446:
	asr	r5, r3, #20
	bl	__Func_916b0
	cmp	r6, #5
	bne	.L14b0
	cmp	r5, #0xd
	bne	.L14b0
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #2
	mov	r3, #0xb
	mov	r2, #5
	mov	r0, #5
	bl	__Func_10424
	mov	r0, #0xd9
	bl	__Func_f9080
	ldr	r0, =.L6010
	mov	r1, #9
	mov	r2, #7
	bl	__Func_10560
	mov	r3, #9
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #5
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r0, =0x874
	bl	__Func_79358
.L14b0:
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1420

.thumb_func_start OvlFunc_14cc
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1552
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__Func_92054
	sub	r5, #0x54
	mov	r2, #0x12
	ldrsh	r3, [r0, r2]
	cmp	r5, #7
	bhi	.L1552
	cmp	r3, #0xd3
	ble	.L1552
	cmp	r3, #0xdb
	bgt	.L1552
	bl	__Func_916b0
	ldr	r0, =0x256
	bl	__Func_79358
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	mov	r0, #5
	bl	__Func_10424
	mov	r0, #0xd9
	bl	__Func_f9080
	ldr	r0, =.L6010
	mov	r1, #9
	mov	r2, #7
	bl	__Func_10560
	bl	__Func_91750
.L1552:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_14cc

.thumb_func_start OvlFunc_1568
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L15ce
	bl	__Func_916b0
	ldr	r0, =0x256
	bl	__Func_79374
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, #5
	str	r3, [r5, #0x3c]
	bl	__Func_9163c
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	mov	r0, #7
	bl	__Func_10424
	mov	r0, #0xd9
	bl	__Func_f9080
	ldr	r0, =.L603a
	mov	r1, #9
	mov	r2, #7
	bl	__Func_10560
	bl	__Func_91750
.L15ce:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1568

.thumb_func_start OvlFunc_15e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r8, r0
	mov	r5, r1
	mov	r9, r2
	cmp	r0, #0
	beq	.L1600
	mov	r0, #0xdb
	bl	__Func_f9080
.L1600:
	mov	r6, r5
	cmp	r6, r9
	bcs	.L169a
	mov	r2, #1
	mov	r3, #4
	mov	r10, r2
	mov	r11, r3
.L160e:
	lsl	r3, r6, #1
	mov	r2, #0x2d
	sub	r0, r2, r3
	mov	r2, #0x2c
	sub	r2, r3
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r1, #0x20
	mov	r3, #0x20
	add	r7, r6, #1
	str	r7, [sp]
	bl	__Func_10424
	mov	r3, #0x2d
	sub	r2, r3, r6
	mov	r3, r10
	str	r3, [sp]
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, r2
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__Func_10424
	mov	r5, #0x6d
	mov	r3, r10
	sub	r5, r6
	str	r3, [sp]
	mov	r2, #0x6c
	mov	r3, r11
	str	r3, [sp, #4]
	sub	r2, r6
	mov	r0, r5
	mov	r1, #0x20
	mov	r3, #0x20
	bl	__Func_10424
	mov	r2, r10
	mov	r3, r11
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r5
	mov	r0, r5
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__Func_10424
	mov	r2, r8
	cmp	r2, #0
	beq	.L1694
	mov	r0, #0xa0
	lsl	r0, #11
	mov	r2, #0x80
	mov	r1, r0
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r0, r8
	bl	__Func_9163c
.L1694:
	mov	r6, r7
	cmp	r6, r9
	bcc	.L160e
.L169a:
	mov	r3, #0x2a
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x34
	mov	r2, #4
	mov	r3, #5
	bl	__Func_10704
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15e0

.thumb_func_start OvlFunc_16c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0xdb
	sub	sp, #8
	bl	__Func_f9080
	mov	r1, #6
	mov	r10, r1
	mov	r3, #0x29
	mov	r1, #2
	mov	r5, #0
	mov	r8, r3
	mov	r6, #0x28
	mov	r9, r1
.L16e8:
	mov	r3, #3
	sub	r3, r5
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0x20
	mov	r2, r8
	mov	r3, #0x20
	bl	__Func_10424
	mov	r3, #1
	mov	r1, r10
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x33
	mov	r2, r6
	mov	r3, #0x20
	bl	__Func_10424
	mov	r3, #4
	mov	r1, r9
	mov	r2, r5
	str	r1, [sp]
	str	r3, [sp, #4]
	add	r2, #0x6a
	mov	r0, #0x69
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__Func_10424
	cmp	r7, #0
	beq	.L1750
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r0, r7
	bl	__Func_9163c
.L1750:
	mov	r3, #2
	add	r5, #1
	add	r8, r3
	add	r6, #2
	cmp	r5, #2
	bls	.L16e8
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r3, #0x2a
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6a
	mov	r1, #0x21
	mov	r2, #4
	mov	r3, #5
	bl	__Func_10704
	bl	__Func_12350
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16c4

.thumb_func_start OvlFunc_1790
	push	{lr}
	mov	r2, #0x92
	ldr	r0, =0x2b20000
	lsl	r2, #18
	mov	r1, #0
	bl	OvlFunc_3b24
	pop	{r0}
	bx	r0
.func_end OvlFunc_1790

.thumb_func_start OvlFunc_17a8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x3c
	mov	r5, #1
	str	r0, [sp, #0x10]
	mov	r1, #0x3b
	mov	r0, #0x4e
	mov	r2, #0x6e
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, #0x6d
	mov	r3, #0x24
	mov	r0, #0x4c
	mov	r1, #0x3b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	add	r2, sp, #0x14
	mov	r3, #7
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0
	mov	r11, r2
	mov	r10, r3
.L17f0:
	mov	r2, r10
	lsl	r2, #4
	mov	r9, r2
	mov	r2, r10
	lsl	r3, r2, #20
	mov	r2, #0xb6
	neg	r3, r3
	lsl	r2, #18
	add	r2, r3
	mov	r7, #0
	mov	r8, r2
.L1806:
	mov	r3, r7
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1868
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	ldr	r3, =0xffff3334
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	ldr	r2, =0xffff3334
	add	r3, r2
	str	r3, [sp, #4]
	mov	r3, #0x90
	mov	r2, #0
	lsl	r3, #12
	str	r2, [sp]
	str	r3, [sp, #8]
	mov	r2, #0x92
	mov	r3, r11
	str	r3, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0
	lsl	r2, #18
	mov	r3, r5
	bl	OvlFunc_common0_10c
	mov	r0, #1
	neg	r6, r7
	bl	__Func_9163c
	b	.L186a
.L1868:
	neg	r6, r7
.L186a:
	mov	r2, r9
	sub	r0, r6, r2
	mov	r3, #0xb6
	lsl	r3, #18
	lsl	r0, #16
	mov	r2, #0x92
	lsl	r2, #18
	add	r0, r3
	mov	r1, #0
	bl	OvlFunc_3b24
	ldr	r2, =0xffff0000
	add	r7, #1
	add	r8, r2
	cmp	r7, #7
	bls	.L1806
	mov	r3, r10
	mov	r2, #0x6c
	sub	r2, r3
	mov	r3, #2
	str	r3, [sp]
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x3b
	mov	r3, #0x24
	bl	__Func_10424
	mov	r5, r10
	add	r5, #1
	mov	r1, r10
	ldr	r0, [sp, #0x10]
	mov	r2, r5
	bl	OvlFunc_15e0
	mov	r10, r5
	cmp	r5, #1
	bls	.L17f0
	ldr	r0, [sp, #0x10]
	bl	__Func_9163c
	add	r2, r5, #1
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_15e0
	mov	r0, #0xd3
	bl	__Func_f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1790
	bl	__Func_41d8
	bl	__Func_12350
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17a8

.thumb_func_start OvlFunc_18f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x6e
	mov	r3, #0x24
	mov	r0, #0x4e
	mov	r1, #0x3a
	bl	__Func_10424
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #1
	mov	r8, r2
	mov	r7, #0
	mov	r10, r3
.L192a:
	ldr	r6, =0xfffe0000
	mov	r5, #1
.L192e:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L1972
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	mov	r2, #0x92
	lsr	r3, #16
	lsl	r2, #2
	sub	r2, r3
	lsl	r0, r7, #19
	mov	r3, #0xb6
	lsl	r3, #18
	sub	r0, r6, r0
	add	r0, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r2, #16
	mov	r1, #0
	ldr	r3, =0xffffc000
	bl	OvlFunc_common0_10c
	mov	r0, #1
	bl	__Func_9163c
.L1972:
	ldr	r2, =0xfffe0000
	add	r5, #1
	add	r6, r2
	cmp	r5, #7
	bls	.L192e
	mov	r3, r10
	mov	r2, #0x6d
	sub	r2, r7
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x23
	mov	r3, #0x24
	add	r7, #1
	bl	__Func_10424
	cmp	r7, #2
	bls	.L192a
	ldr	r0, =OvlFunc_1790
	bl	__Func_4278
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_18f8

.thumb_func_start OvlFunc_19b8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r6, sp, #8
	mov	r0, r6
	bl	OvlFunc_758
	cmp	r0, #0
	bne	.L19d2
	b	.L1bae
.L19d2:
	ldr	r3, [r6, #4]
	cmp	r3, #8
	beq	.L19da
	b	.L1b1a
.L19da:
	ldr	r4, [r6, #8]
	asr	r3, r4, #20
	cmp	r3, #0xb
	bne	.L1a78
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r2, r4
	ldr	r3, [r6, #0xc]
	mov	r1, #8
	ldr	r0, [r6]
	bl	OvlFunc_8ec
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xd3
	bl	__Func_f9080
	bl	OvlFunc_3860
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #1
	mov	r8, r3
	mov	r0, #0x4c
	mov	r1, #0x3c
	mov	r2, #0x4a
	mov	r3, #0x26
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r6, #2
	mov	r0, #0x4d
	mov	r1, #0x3c
	mov	r2, #0x4c
	mov	r3, #0x26
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r1, #0x3a
	mov	r0, #0x4b
	mov	r2, #0x56
	mov	r3, #0x29
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #0x4b
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4c
	mov	r1, #0x3b
	mov	r2, #0x50
	mov	r3, #0x31
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4d
	mov	r1, #0x3b
	mov	r2, #0x52
	mov	r3, #0x31
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	ldr	r0, =0x302
	bl	__Func_79358
	b	.L1bae
.L1a78:
	ldr	r3, =OvlFunc_3948
	mov	r5, #1
	str	r3, [r6, #0x14]
	mov	r0, #0x4b
	mov	r1, #0x39
	mov	r2, #0x56
	mov	r3, #0x29
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x50
	mov	r3, #0x31
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x51
	mov	r3, #0x31
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x52
	mov	r3, #0x31
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4e
	mov	r1, #0x3a
	mov	r2, #0x53
	mov	r3, #0x31
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_8ec
	ldr	r0, =0x302
	bl	__Func_79374
	b	.L1bae
.L1b1a:
	cmp	r3, #0xa
	bne	.L1bae
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #0x28
	bne	.L1b86
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	mov	r1, #0xa
	ldr	r0, [r6]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_8ec
	ldr	r0, =0x307
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1b78
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x94
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	ldr	r0, =0x2ca0000
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0x307
	bl	__Func_79358
	mov	r0, #5
	bl	OvlFunc_17a8
	mov	r0, #0x32
	bl	__Func_9163c
	b	.L1b7e
.L1b78:
	mov	r0, #5
	bl	OvlFunc_17a8
.L1b7e:
	ldr	r0, =0x306
	bl	__Func_79358
	b	.L1bae
.L1b86:
	cmp	r3, #0x2a
	bne	.L1bae
	ldr	r3, =OvlFunc_18f8
	str	r3, [r6, #0x14]
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r1, #0xa
	ldr	r0, [r6]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_8ec
	mov	r0, #5
	bl	OvlFunc_16c4
	ldr	r0, =0x306
	bl	__Func_79374
.L1bae:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19b8

.thumb_func_start OvlFunc_1bd8
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_3a8
	bl	__Func_91750
	bl	OvlFunc_1bf0
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bd8

.thumb_func_start OvlFunc_1bf0
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1c04
	ldr	r2, =0xfffff
	add	r3, r2
.L1c04:
	mov	r0, #8
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1c16
	ldr	r2, =0xfffff
	add	r3, r2
.L1c16:
	asr	r5, r3, #20
	bl	__Func_916b0
	cmp	r6, #0xa
	bne	.L1c7e
	cmp	r5, #0x17
	bne	.L1c7e
	mov	r0, #8
	bl	__Func_92054
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r3, #0x17
	mov	r2, #0xa
	mov	r0, #6
	bl	__Func_10424
	mov	r0, #0xd9
	bl	__Func_f9080
	ldr	r0, =.L6064
	mov	r1, #0xa
	mov	r2, #0x12
	bl	__Func_10560
	mov	r3, #0x13
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	ldr	r0, =0x878
	bl	__Func_79358
.L1c7e:
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bf0

.thumb_func_start OvlFunc_1c9c
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d28
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__Func_92054
	sub	r5, #0xa4
	mov	r2, #0x12
	ldrsh	r3, [r0, r2]
	cmp	r5, #7
	bhi	.L1d28
	mov	r2, #0xba
	lsl	r2, #1
	cmp	r3, r2
	blt	.L1d28
	add	r2, #8
	cmp	r3, r2
	bge	.L1d28
	bl	__Func_916b0
	ldr	r0, =0x256
	bl	__Func_79358
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0xa
	mov	r3, #0x17
	mov	r0, #6
	bl	__Func_10424
	mov	r0, #0xd9
	bl	__Func_f9080
	ldr	r0, =.L6064
	mov	r1, #0xa
	mov	r2, #0x12
	bl	__Func_10560
	bl	__Func_91750
.L1d28:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c9c

.thumb_func_start OvlFunc_1d3c
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1da2
	bl	__Func_916b0
	ldr	r0, =0x256
	bl	__Func_79374
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, #5
	str	r3, [r5, #0x3c]
	bl	__Func_9163c
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0xa
	mov	r3, #0x17
	mov	r0, #8
	bl	__Func_10424
	mov	r0, #0xd9
	bl	__Func_f9080
	ldr	r0, =.L608e
	mov	r1, #0xa
	mov	r2, #0x12
	bl	__Func_10560
	bl	__Func_91750
.L1da2:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d3c

	.section .data

.L6010:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6010, (0x603a-0x6010)
.L603a:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x603a, (0x6064-0x603a)
.L6064:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6064, (0x608e-0x6064)
.L608e:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x608e, (0x60b8-0x608e)
