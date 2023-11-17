	.include "macros.inc"

.thumb_func_start OvlFunc_1300
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x302
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	beq	.L135e
	ldr	r2, =0x24a
	ldr	r3, =ewram_240
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.L135e
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r0, #8
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x30]
	mov	r0, #8
	str	r3, [r6, #0x30]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x34]
	sub	r5, #0x2d
	str	r3, [r6, #0x34]
	ldr	r2, =.L1f00
	lsl	r5, #3
	add	r3, r5, #4
	ldr	r1, [r2, r5]
	mov	r0, #8
	ldr	r2, [r2, r3]
	bl	__Func_9218c
.L135e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1300

.thumb_func_start OvlFunc_1378
	push	{lr}
	bl	__Func_916b0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_924d4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1378

.thumb_func_start OvlFunc_1390
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r7, sp, #8
	mov	r0, r7
	bl	OvlFunc_758
	cmp	r0, #0
	beq	.L1498
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r7, #0xc]
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	OvlFunc_8ec
	ldr	r3, [r7, #8]
	asr	r3, #20
	cmp	r3, #0x11
	bne	.L1498
	mov	r1, #3
	ldr	r0, [r7, #4]
	bl	__Func_924d4
	ldr	r0, [r7, #4]
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	ldr	r0, [r7, #4]
	bl	__Func_92054
	mov	r1, #0xc
	str	r6, [r0, #0x44]
	mov	r2, #0
	neg	r1, r1
	ldr	r0, [r7, #4]
	bl	__Func_9228c
	ldr	r0, [r7, #4]
	bl	__Func_923c4
	ldr	r0, [r7, #4]
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92b08
	ldr	r0, [r7, #4]
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #6
	mov	r2, #0
	neg	r1, r1
	ldr	r0, [r7, #4]
	bl	__Func_9228c
	ldr	r0, [r7, #4]
	bl	__Func_92054
	bl	OvlFunc_cd0
	mov	r1, #8
	ldr	r0, [r7, #4]
	bl	__Func_924d4
	ldr	r0, [r7, #4]
	bl	__Func_92054
	mov	r3, #2
	mov	r8, r3
	add	r0, #0x23
	mov	r1, r8
	strb	r1, [r0]
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #8]
	asr	r2, #20
	mov	r5, #4
	asr	r1, #20
	sub	r2, #2
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_528
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #8]
	asr	r2, #20
	asr	r1, #20
	sub	r2, #2
	mov	r3, #1
	mov	r0, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_528
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0x12
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp, #4]
	bl	OvlFunc_528
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_528
	ldr	r0, =0x203
	bl	__Func_79358
	mov	r0, #0xf0
	bl	__Func_f9080
.L1498:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1390

.thumb_func_start OvlFunc_14ac
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	ldr	r2, =0x1999
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92064
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r1, #0x80
	ldr	r2, =0x1999
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92064
	mov	r1, #2
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #9
	bl	__Func_92054
	mov	r2, #0
	str	r6, [r0, #0x44]
	mov	r1, #0xc
	mov	r0, #9
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd5
	bl	__Func_f9080
	mov	r1, #3
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0
	mov	r1, #6
	mov	r0, #9
	bl	__Func_9228c
	mov	r0, #9
	bl	__Func_92054
	bl	OvlFunc_cd0
	mov	r0, #9
	mov	r1, #8
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92b08
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r5, #4
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_528
	mov	r1, #0xd
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_528
	ldr	r0, =0x202
	bl	__Func_79358
	mov	r0, #0xf0
	bl	__Func_f9080
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_14ac

.thumb_func_start OvlFunc_15cc
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_758
	cmp	r0, #0
	beq	.L168a
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #8]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	bl	OvlFunc_8ec
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #7
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_9228c
	mov	r0, #0x2d
	bl	__Func_9163c
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r1, #8
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	ldr	r2, [r5, #0x10]
	mov	r1, #0
	asr	r2, #20
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r3, #4
	sub	r2, #1
	mov	r0, #0
	mov	r1, #0xd
	bl	OvlFunc_528
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.L165c
	ldr	r0, =0x205
	bl	__Func_79358
	b	.L168a
.L165c:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, #0x10
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
.L168a:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15cc

	.section .data

.L1f00:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f00, (0x1f60-0x1f00)
