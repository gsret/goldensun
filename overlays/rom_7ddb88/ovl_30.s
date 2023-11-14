	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L4414
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L4474
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L448c
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_50
	push	{lr}
	bl	OvlFunc_3b90
	pop	{r0}
	bx	r0
.func_end OvlFunc_50

.thumb_func_start OvlFunc_5c
	push	{lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x24
	bne	.L8a
	ldr	r0, =0x335
	bl	__Func_79358
	mov	r3, #0x23
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.La4
.L8a:
	ldr	r0, =0x335
	bl	__Func_79374
	mov	r3, #0x23
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x22
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.La4:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_5c

.thumb_func_start OvlFunc_b0
	push	{lr}
	bl	OvlFunc_3b90
	bl	OvlFunc_5c
	pop	{r0}
	bx	r0
.func_end OvlFunc_b0

.thumb_func_start OvlFunc_c0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0xe
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x64
	bl	__Func_10704
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xd0
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_793c8
	mov	r5, #0x10
	mov	r2, #1
	mov	r1, #0x10
	mov	r3, #1
	mov	r0, #0x47
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xd2
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_793c8
	mov	r2, #1
	mov	r1, #0x10
	mov	r3, #1
	mov	r0, #0x47
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xd4
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_793c8
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c0

.thumb_func_start OvlFunc_150
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r2, #1
	add	r3, #0x35
	strb	r2, [r3]
	bx	lr
.func_end OvlFunc_150

.thumb_func_start OvlFunc_160
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x1e
	sub	sp, #8
	bl	__Func_92054
	mov	r8, r0
	ldr	r6, [r0, #0x50]
	mov	r0, #0xcc
	lsl	r0, #2
	bl	__Func_79358
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r2, #0x34]
	ldr	r3, =0x13333
	mov	r0, #0xe3
	str	r3, [r2, #0x30]
	bl	__Func_f9080
	mov	r1, #0xa8
	mov	r2, #0xa0
	mov	r3, #0x84
	mov	r0, r8
	lsl	r1, #17
	lsl	r2, #12
	lsl	r3, #17
	bl	__Func_d14c
	mov	r7, #0
	mov	r5, #9
.L1a0:
	ldrh	r3, [r6, #0x1e]
	sub	r3, r7
	strh	r3, [r6, #0x1e]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_30f8
	add	r7, #0x24
	cmp	r5, #0
	bge	.L1a0
	mov	r1, #0xa5
	mov	r3, #0x84
	mov	r0, r8
	lsl	r1, #17
	ldr	r2, =0xfff00000
	lsl	r3, #17
	bl	__Func_d14c
	mov	r7, #0xb4
	lsl	r7, #1
	mov	r5, #0x15
.L1ca:
	ldrh	r3, [r6, #0x1e]
	sub	r3, r7
	strh	r3, [r6, #0x1e]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_30f8
	add	r7, #0x24
	cmp	r5, #0
	bge	.L1ca
	mov	r0, r8
	bl	__Func_ca6c
	mov	r0, #2
	bl	__Func_9163c
	mov	r5, #0
	mov	r0, #0xf0
	bl	__Func_f9080
	strh	r5, [r6, #0x1e]
	mov	r0, #0x1e
	mov	r1, #4
	bl	__Func_924d4
	mov	r3, #0xa8
	mov	r2, r8
	lsl	r3, #17
	str	r3, [r2, #8]
	ldr	r3, =0xfff80000
	str	r3, [r2, #0xc]
	mov	r3, #0x84
	lsl	r3, #17
	str	r3, [r2, #0x10]
	str	r5, [r2, #0x28]
	str	r5, [r2, #0x24]
	mov	r3, #0x14
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0x15
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_160

.thumb_func_start OvlFunc_258
	push	{lr}
	ldr	r0, =0x331
	sub	sp, #8
	bl	__Func_79358
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_258

.thumb_func_start OvlFunc_28c
	push	{lr}
	ldr	r0, =0x332
	sub	sp, #8
	bl	__Func_79358
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_28c

.thumb_func_start OvlFunc_2c0
	push	{lr}
	ldr	r0, =0x333
	sub	sp, #8
	bl	__Func_79358
	mov	r3, #0x20
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c0

.thumb_func_start OvlFunc_2e8
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92708
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e8

.thumb_func_start OvlFunc_304
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_304

.thumb_func_start OvlFunc_310
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp]
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	mov	r7, r0
	bl	__Func_916b0
	ldr	r3, [sp, #4]
	lsl	r3, #16
	mov	r11, r3
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	add	r3, r11
	mov	r5, #0x80
	lsl	r5, #12
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [sp]
	lsl	r3, #16
	mov	r9, r3
	ldr	r3, [r6, #0x10]
	add	r3, r9
	mov	r10, r2
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r6, #0x30]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	mov	r8, r2
	str	r2, [r6, #0x34]
	mov	r0, r6
	ldr	r2, [r6, #0xc]
	bl	__Func_d14c
	mov	r0, r6
	mov	r1, #0x1b
	bl	__Func_c300
	ldr	r3, [r7, #8]
	mov	r2, r10
	add	r3, r11
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [r7, #0x10]
	add	r3, r9
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r7, #0x30]
	mov	r2, r8
	add	r3, r5
	str	r2, [r7, #0x34]
	mov	r0, r7
	ldr	r2, [r7, #0xc]
	bl	__Func_d14c
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L3b4
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L3be
.L3b4:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_c300
	b	.L3c6
.L3be:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
.L3c6:
	mov	r0, #0xe2
	bl	__Func_f9080
	mov	r0, r6
	bl	__Func_ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, r7
	mov	r1, #2
	bl	__Func_c300
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_310

.thumb_func_start OvlFunc_400
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	mov	r5, #0
	mov	r7, #0x20
	cmp	r3, #0xc
	ble	.L424
	mov	r7, #0x21
.L424:
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r6
	bne	.L4ae
	cmp	r6, #0x33
	ble	.L448
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L456
	mov	r5, #0x40
	neg	r5, r5
	b	.L456
.L448:
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L456
	mov	r5, #0x40
.L456:
	cmp	r5, #0
	beq	.L4ae
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	bl	OvlFunc_310
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #0xa
	mov	r2, #5
	mov	r3, #6
	mov	r5, #0xa
	mov	r0, #0x78
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r1, #0x1c
	asr	r6, r3, #20
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x34
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x21
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_10704
.L4ae:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_400

.thumb_func_start OvlFunc_4c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	mov	r9, r3
	mov	r5, r0
	mov	r0, r9
	mov	r10, r2
	sub	sp, #4
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #5
	add	r2, r3
	mov	r3, #0xe0
	mov	r5, r0
	lsl	r3, #8
	and	r2, r3
	ldr	r1, [r5, #8]
	lsr	r3, r7, #31
	add	r3, r7, r3
	mov	r8, r2
	asr	r3, #1
	asr	r2, r1, #20
	mov	r0, #0
	cmp	r2, r3
	beq	.L514
	mov	r0, #1
.L514:
	mov	r3, r10
	lsl	r3, #19
	lsl	r7, #19
	mov	r10, r3
	cmp	r0, #0
	beq	.L530
	sub	r3, r7, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r1, #0
	mov	r11, r3
	str	r1, [sp]
	b	.L542
.L530:
	ldr	r3, [r5, #0x10]
	mov	r1, r10
	mov	r2, #0
	sub	r3, r1, r3
	mov	r11, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.L542:
	bl	__Func_916b0
	mov	r0, r9
	mov	r1, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	ldr	r3, =0x3333
	mov	r2, #0x80
	lsl	r2, #8
	str	r3, [r5, #0x34]
	mov	r3, r8
	str	r2, [r5, #0x30]
	ldr	r2, =.L40c0
	cmp	r3, #0
	bge	.L56a
	ldr	r1, =0x3fff
	add	r3, r1
.L56a:
	asr	r3, #14
	ldrb	r1, [r2, r3]
	mov	r0, r5
	bl	__Func_c300
	mov	r3, r10
	mov	r2, #0
	mov	r1, r7
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, r9
	mov	r1, #2
	bl	__Func_924d4
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__Func_48f4
	mov	r2, #0xf0
	lsl	r2, #1
	add	r0, r2
	mov	r1, r5
	ldr	r0, [r0]
	bl	__Func_c4bc
	mov	r1, #0x80
	mov	r0, r9
	ldr	r2, =0x3333
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, r6
	mov	r1, #2
	bl	__Func_c300
	ldr	r1, [r6, #8]
	ldr	r2, [sp]
	ldr	r3, [r6, #0x10]
	add	r1, r11
	add	r3, r2
	mov	r0, r6
	mov	r2, #0
	bl	__Func_d14c
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r0, r6
	bl	__Func_ca6c
	mov	r1, #1
	mov	r0, r6
	bl	__Func_c300
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd5
	bl	__Func_f9080
	mov	r1, #1
	mov	r0, r5
	bl	__Func_c300
	mov	r0, #0xf
	bl	__Func_9163c
	bl	__Func_91750
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c0

.thumb_func_start OvlFunc_62c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0xe
	str	r3, [sp]
	mov	r5, #0xb
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x64
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #4
	mov	r0, #0xd
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #4
	mov	r0, #0xd
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r2, r3, #20
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x1c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_62c

.thumb_func_start OvlFunc_69c
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x1d
	mov	r2, #0x1a
	bl	OvlFunc_4c0
	bl	OvlFunc_62c
	pop	{r0}
	bx	r0
.func_end OvlFunc_69c

.thumb_func_start OvlFunc_6b0
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x21
	mov	r2, #0x1a
	bl	OvlFunc_4c0
	bl	OvlFunc_62c
	pop	{r0}
	bx	r0
.func_end OvlFunc_6b0

.thumb_func_start OvlFunc_6c4
	push	{lr}
	mov	r0, #0x10
	mov	r1, #0x2d
	mov	r2, #0x1a
	bl	OvlFunc_4c0
	bl	OvlFunc_62c
	pop	{r0}
	bx	r0
.func_end OvlFunc_6c4

.thumb_func_start OvlFunc_6d8
	push	{lr}
	mov	r0, #0x10
	mov	r1, #0x31
	mov	r2, #0x1a
	bl	OvlFunc_4c0
	bl	OvlFunc_62c
	pop	{r0}
	bx	r0
.func_end OvlFunc_6d8

.thumb_func_start OvlFunc_6ec
	push	{lr}
	mov	r0, #0x11
	mov	r1, #0x28
	mov	r2, #0x17
	bl	OvlFunc_4c0
	bl	OvlFunc_62c
	pop	{r0}
	bx	r0
.func_end OvlFunc_6ec

.thumb_func_start OvlFunc_700
	push	{lr}
	mov	r0, #0x11
	mov	r1, #0x28
	mov	r2, #0x19
	bl	OvlFunc_4c0
	bl	OvlFunc_62c
	pop	{r0}
	bx	r0
.func_end OvlFunc_700

.thumb_func_start OvlFunc_714
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_92054
	mov	r7, #0x16
	mov	r6, r0
.L72a:
	mov	r0, r7
	bl	__Func_92054
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #8]
	ldr	r3, [r6, #8]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L74c
	ldr	r3, =0x9ffff
	cmp	r2, r3
	ble	.L754
	b	.L786
.L74c:
	ldr	r2, =0x9ffff
	sub	r3, r1
	cmp	r3, r2
	bgt	.L786
.L754:
	ldr	r1, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L766
	ldr	r3, =0x9ffff
	cmp	r2, r3
	ble	.L76e
	b	.L786
.L766:
	ldr	r2, =0x9ffff
	sub	r3, r1
	cmp	r3, r2
	bgt	.L786
.L76e:
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L77e
	ldr	r3, [r5, #0x10]
	b	.L784
.L77e:
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x2c]
	add	r3, r2
.L784:
	str	r3, [r6, #0x10]
.L786:
	add	r7, #1
	cmp	r7, #0x19
	ble	.L72a
	ldr	r3, =.L4838
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L7cc
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L7cc
	ldr	r3, =.L4834
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L7b6
	mov	r3, #0x3a
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x1c
	mov	r2, #7
	b	.L7c4
.L7b6:
	mov	r3, #0x3a
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0xa
	mov	r2, #1
.L7c4:
	mov	r3, #1
	bl	__Func_10704
	b	.L7f2
.L7cc:
	mov	r3, #0xb
	mov	r5, #0x3a
	str	r3, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0xe
	mov	r2, #7
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
.L7f2:
	ldr	r5, =.L4838
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L8ba
	ldr	r3, =.L4834
	ldr	r2, [r3]
	mov	r1, #1
	eor	r2, r1
	str	r2, [r3]
	cmp	r2, #0
	beq	.L862
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0xea
	mov	r3, #0xb8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0xf2
	mov	r3, #0xf8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0xfa
	mov	r3, #0xb8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #0x81
	mov	r3, #0xf8
	lsl	r1, #19
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	mov	r0, #0x1f
	mov	r1, #0xb
	bl	__Func_924d4
	b	.L8ba
.L862:
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0xea
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0xf2
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0xfa
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #0x81
	mov	r3, #0xd8
	lsl	r1, #19
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_924d4
.L8ba:
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x77
	bls	.L8d2
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L8d2
	str	r0, [r5]
.L8d2:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_714

.thumb_func_start OvlFunc_8ec
	push	{lr}
	ldr	r3, =.L4838
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, =.L4834
	ldr	r0, =OvlFunc_714
	str	r2, [r3]
	bl	__Func_4278
	mov	r1, #0xea
	mov	r2, #0xd8
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xf2
	mov	r2, #0xd8
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xfa
	mov	r2, #0xd8
	mov	r0, #0x18
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x81
	mov	r2, #0xd8
	mov	r0, #0x19
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_8ec

.thumb_func_start OvlFunc_950
	push	{lr}
	ldr	r1, =0xc85
	ldr	r0, =OvlFunc_714
	bl	__Func_41d8
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_950

.thumb_func_start OvlFunc_970
	push	{r5, lr}
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r3, =.L4834
	ldr	r3, [r3]
	mov	r5, #0
	b	.L994
.L980:
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #0x96
	add	r5, #1
	lsl	r3, #2
	cmp	r5, r3
	bge	.L9a0
	ldr	r3, =.L4834
	ldr	r3, [r3]
.L994:
	cmp	r3, #0
	bne	.L980
	ldr	r3, =.L4838
	ldr	r3, [r3]
	cmp	r3, #0x4b
	bne	.L980
.L9a0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970

.thumb_func_start OvlFunc_9b0
	push	{r5, lr}
	mov	r0, #0x1f
	sub	sp, #8
	bl	__Func_9ad90
	mov	r0, #0xcd
	lsl	r0, #2
	bl	__Func_79358
	ldr	r3, =.L4834
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L9d0
	ldr	r2, =.L4838
	mov	r3, #0
	str	r3, [r2]
.L9d0:
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =OvlFunc_714
	bl	__Func_4278
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r5, #0x3a
	mov	r0, #0x3a
	mov	r1, #0x1c
	mov	r2, #7
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9b0

.thumb_func_start OvlFunc_a1c
	push	{r5, r6, lr}
	bl	OvlFunc_3228
	bl	__Func_916b0
	mov	r1, #0x59
	mov	r0, #0x4d
	bl	OvlFunc_3344
	mov	r6, r0
	bl	OvlFunc_3238
	mov	r5, #9
.La36:
	mov	r0, #8
	sub	r5, #1
	bl	__Func_920e8
	cmp	r5, #0
	bge	.La36
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x80
	mov	r0, #8
	mov	r1, #0x58
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, #0
	mov	r1, #0x78
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0x80
	mov	r0, #0
	mov	r1, #0x70
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, #8
	mov	r1, #0x60
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_924d4
	mov	r1, #9
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	sub	r1, r6
	add	r1, #1
	mov	r0, #0x48
	bl	__Func_91eb0
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0x90
	mov	r1, #4
	mov	r0, r5
	bl	__Func_91f90
	mov	r0, r5
	mov	r1, #5
	bl	__Func_91fa8
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a1c

.thumb_func_start OvlFunc_b30
	ldr	r0, =.L483c
	bx	lr
.func_end OvlFunc_b30

.thumb_func_start OvlFunc_b38
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_92924
	mov	r0, #0x29
	bl	__Func_92924
	mov	r0, #1
	bl	__Func_7808c
	bl	__Func_916b0
	mov	r1, #0xb0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xf0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_9280c
	cmp	r5, #0
	bge	.Lb9c
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0x23
	bl	__Func_924d4
	b	.Lbac
.Lb9c:
	mov	r0, #8
	mov	r1, #8
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0x1c
	bl	__Func_924d4
.Lbac:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xd0
	mov	r2, #0xc0
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #15
	bl	__Func_933f8
	mov	r0, r5
	bl	OvlFunc_2adc
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b38

.thumb_func_start OvlFunc_bd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	mov	r0, #0xa2
	str	r2, [r3]
	lsl	r0, #1
	sub	sp, #0xc
	bl	__Func_79358
	mov	r3, #0x64
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #0x78
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r2, #5
	mov	r1, #0xa
	mov	r3, #6
	bl	__Func_10704
	mov	r2, #2
	mov	r6, #0x1a
	mov	r7, #0
	mov	r8, r2
.Lc24:
	mov	r0, r6
	bl	__Func_92054
	mov	r1, #4
	mov	r5, r0
	bl	__Func_c300
	mov	r3, r5
	add	r3, #0x55
	strb	r7, [r3]
	mov	r1, r8
	sub	r3, #0x32
	add	r6, #1
	str	r7, [r5, #0xc]
	strb	r1, [r3]
	cmp	r6, #0x1e
	ble	.Lc24
	mov	r0, #0x12
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xcc
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lca0
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r3, #0xa8
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	ldr	r3, =0xfff80000
	str	r3, [r5, #0xc]
	mov	r3, #0x84
	lsl	r3, #17
	str	r3, [r5, #0x10]
	mov	r2, #0x10
	mov	r3, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0x15
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.Lcb4
.Lca0:
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r1, #3
	mov	r5, r0
	bl	__Func_c300
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #0xc]
.Lcb4:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #2
	mov	r8, r3
	add	r0, #0x23
	mov	r1, r8
	mov	r2, #0
	strb	r1, [r0]
	ldr	r0, =0x335
	mov	r10, r2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lce6
	mov	r3, #0x23
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.Lce6:
	ldr	r0, =0x333
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld0c
	mov	r0, #0x13
	mov	r1, #4
	bl	__Func_924d4
	mov	r3, #0x20
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
.Ld0c:
	ldr	r0, =0x331
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld4a
	mov	r0, #0x14
	bl	__Func_92054
	mov	r2, r10
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, r8
	add	r0, #0x23
	strb	r3, [r0]
	mov	r1, #5
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r3, #0x2c
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.Ld4a:
	ldr	r0, =0x332
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld88
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, r10
	add	r0, #0x55
	strb	r1, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	mov	r2, r8
	add	r0, #0x23
	strb	r2, [r0]
	mov	r1, #5
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r3, #0x32
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.Ld88:
	mov	r0, #0x20
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r10
	strb	r1, [r3]
	sub	r3, #0x32
	mov	r1, r8
	strb	r1, [r3]
	mov	r3, #0xa
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x34
	bl	__Func_10704
	mov	r0, #0x21
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r10
	strb	r1, [r3]
	sub	r3, #0x32
	mov	r1, r8
	strb	r1, [r3]
	mov	r3, #0xd
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Ldf0
	mov	r6, #0x49
.Ldf0:
	mov	r0, #0xc
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r3, r6, #20
	lsl	r2, #12
	mov	r5, r0
	add	r3, r2
	str	r3, [r5, #8]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r8
	sub	r3, #0x32
	strb	r2, [r3]
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	mov	r7, #0x10
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xd2
	lsl	r0, #2
	bl	__Func_793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Le32
	mov	r6, #0x4c
.Le32:
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #0x80
	lsl	r3, r6, #20
	lsl	r1, #12
	mov	r5, r0
	add	r3, r1
	str	r3, [r5, #8]
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r1, r8
	sub	r3, #0x32
	strb	r1, [r3]
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xd4
	lsl	r0, #2
	bl	__Func_793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Le72
	mov	r6, #0x4f
.Le72:
	mov	r0, #0xe
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r3, r6, #20
	mov	r5, r0
	add	r3, r2
	str	r3, [r5, #8]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r8
	sub	r3, #0x32
	strb	r2, [r3]
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_10704
	bl	OvlFunc_62c
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_924d4
	mov	r0, #0xcd
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf02
	mov	r3, #0xd
	mov	r6, #0x16
	mov	r8, r3
	mov	r7, #0x3a
.Lec2:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #4
	bl	__Func_c300
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x38
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	add	r6, #1
	str	r7, [sp]
	bl	__Func_10704
	add	r7, #2
	cmp	r6, #0x19
	ble	.Lec2
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_924d4
	mov	r0, #0x1f
	bl	__Func_9ad90
	b	.Lf40
.Lf02:
	mov	r2, #2
	mov	r7, #0x80
	mov	r6, #0x16
	mov	r8, r2
	lsl	r7, #8
.Lf0c:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x23
	mov	r1, r8
	strb	r1, [r3]
	mov	r1, #4
	bl	__Func_c300
	ldr	r3, =0x3333
	add	r6, #1
	str	r7, [r5, #0x30]
	str	r3, [r5, #0x34]
	cmp	r6, #0x19
	ble	.Lf0c
	ldr	r5, =OvlFunc_714
	ldr	r1, =0xc85
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_4358
.Lf40:
	mov	r0, #8
	mov	r1, #9
	bl	__Func_924d4
	ldr	r5, =ewram_240
	mov	r3, #0xf9
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0x59
	mov	r0, #0x29
	bl	OvlFunc_3138
	mov	r1, #0x4d
	mov	r0, #0x28
	bl	OvlFunc_3138
	mov	r1, #1
	mov	r0, #8
	bl	__Func_92950
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #4
	bls	.Lf7e
	b	.L10c0
.Lf7e:
	ldr	r2, =.Lf88
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lf88:
	.word	.Lfc8
	.word	.L105c
	.word	.L108e
	.word	.L10a4
	.word	.L10b2

	.pool_aligned

.Lfc8:
	mov	r2, #0x80
	lsl	r2, #17
	str	r2, [sp]
	mov	r2, #0x28
	str	r2, [sp, #4]
	mov	r3, #0xd0
	mov	r2, #0x29
	str	r2, [sp, #8]
	lsl	r3, #15
	mov	r1, #8
	mov	r2, #5
	mov	r0, #0
	bl	OvlFunc_39fc
	mov	r3, #0x4f
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x7f
	bl	__Func_10788
	mov	r0, #0x22
	bl	__Func_92924
	mov	r0, #0x23
	bl	__Func_92924
	mov	r0, #0x24
	bl	__Func_92924
	mov	r0, #0x25
	bl	__Func_92924
	mov	r0, #0x26
	bl	__Func_92924
	mov	r0, #0x27
	bl	__Func_92924
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L103c
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0
	bl	OvlFunc_1ba8
	bl	OvlFunc_1b30
	mov	r0, #2
	bl	OvlFunc_29d0
.L103c:
	mov	r0, #1
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_920c0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_920c0
	ldr	r0, =0xe5
	bl	OvlFunc_3ae4
	b	.L10c0
.L105c:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1c78
	bl	__Func_41d8
	mov	r0, #0x28
	bl	__Func_92924
	mov	r0, #0x29
	bl	__Func_92924
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L10c0
	bl	OvlFunc_1b30
	mov	r0, #1
	bl	OvlFunc_1ba8
	mov	r0, #0
	bl	OvlFunc_29d0
	b	.L10c0
.L108e:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L10c0
	mov	r0, #0x22
	bl	OvlFunc_10dc
	bl	OvlFunc_1fb8
	b	.L10c0
.L10a4:
	mov	r0, #2
	bl	OvlFunc_b38
	mov	r0, #4
	bl	__Func_91e9c
	b	.L10c0
.L10b2:
	mov	r0, #2
	neg	r0, r0
	bl	OvlFunc_b38
	mov	r0, #5
	bl	__Func_91e9c
.L10c0:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_bd4

.thumb_func_start OvlFunc_10dc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	bl	__Func_92054
	mov	r3, #0xa
	ldrsh	r2, [r0, r3]
	mov	r9, r2
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r10, r2
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r7
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r3, r10
	lsl	r5, r3, #16
	mov	r2, r9
	ldr	r3, =0xffd00000
	lsl	r6, r2, #16
	mov	r1, r6
	add	r2, r5, r3
	mov	r0, #0
	bl	__Func_923e4
	ldr	r3, =0xffd80000
	ldr	r2, =0xfff00000
	add	r3, r5
	mov	r8, r3
	add	r1, r6, r2
	mov	r0, #1
	mov	r2, r8
	bl	__Func_923e4
	mov	r2, #0x80
	lsl	r2, #13
	add	r1, r6, r2
	mov	r0, #2
	mov	r2, r8
	bl	__Func_923e4
	ldr	r3, =0xffe00000
	mov	r1, r6
	add	r2, r5, r3
	mov	r0, #3
	bl	__Func_923e4
	ldr	r2, =0xffb00000
	add	r5, r2
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r6, #0xc0
	lsl	r6, #8
	mov	r1, #0
	strh	r6, [r0, #6]
	mov	r0, #0
	bl	__Func_9335c
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r0, =0x20e9
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1238
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1238:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1258
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L1258:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1278
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L1278:
	mov	r5, r9
	sub	r5, #0x10
	mov	r2, r10
	mov	r0, r7
	mov	r1, r5
	sub	r2, #0x40
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, r10
	mov	r0, r7
	mov	r1, r5
	sub	r2, #0x10
	bl	__Func_921c4
	mov	r0, r7
	mov	r1, r9
	mov	r2, r10
	bl	__Func_921c4
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10dc

.thumb_func_start OvlFunc_12f0
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L130a
	bl	OvlFunc_1df4
	b	.L1412
.L130a:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_1ffc
	mov	r7, r0
	cmp	r7, #0
	bne	.L13f2
	ldr	r0, =0x209e
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x99
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x9f
	lsl	r1, #3
	mov	r2, #0xa8
	mov	r0, #0
	bl	OvlFunc_2ba8
	mov	r5, #0xa1
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r5, #3
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r1, r5
	mov	r2, #0xd8
	sub	r5, #0x40
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r2, #0xd8
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r5
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r1, #0x95
	mov	r2, #0xf8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #0x1c
	mov	r0, #0
	bl	__Func_924d4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_2d84
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_20b8
	b	.L1404
.L13f2:
	cmp	r7, #1
	bne	.L1404
	ldr	r0, =0x209d
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.L1404:
	mov	r1, r6
	mov	r2, #1
	mov	r0, r7
	bl	OvlFunc_2114
	bl	__Func_91750
.L1412:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12f0

.thumb_func_start OvlFunc_1424
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L143e
	bl	OvlFunc_1df4
	b	.L1524
.L143e:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_1ffc
	mov	r7, r0
	cmp	r7, #0
	bne	.L1504
	ldr	r0, =0x20a2
	bl	__Func_92b94
	bl	OvlFunc_8ec
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xf6
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	mov	r5, #0x87
	bl	OvlFunc_950
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	lsl	r5, #3
	mov	r2, #0x84
	lsl	r2, #1
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_2ba8
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r1, #0x85
	lsl	r1, #3
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_30e8
	bl	OvlFunc_970
	bl	__Func_93c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_2d84
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_20b8
	b	.L1516
.L1504:
	cmp	r7, #1
	bne	.L1516
	ldr	r0, =0x20a1
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.L1516:
	mov	r1, r6
	mov	r2, #2
	mov	r0, r7
	bl	OvlFunc_2114
	bl	__Func_91750
.L1524:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1424

.thumb_func_start OvlFunc_1538
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L1556
	bl	OvlFunc_1df4
	b	.L16be
.L1556:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_1ffc
	mov	r8, r0
	cmp	r0, #0
	beq	.L156a
	b	.L169c
.L156a:
	ldr	r0, =0x20a6
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xc0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	mov	r5, #0xd6
	mov	r6, #0x84
	bl	__Func_933f8
	lsl	r5, #2
	bl	__Func_93530
	lsl	r6, #1
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	OvlFunc_2ba8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r2, #0xe8
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xd2
	lsl	r1, #2
	mov	r2, #0xe8
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x40
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0x21
	bl	OvlFunc_310
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xbe
	lsl	r1, #2
	mov	r2, #0xe8
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_2d84
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r1, #0xd2
	mov	r2, #0xe8
	mov	r0, #0x21
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_20b8
	b	.L16b0
.L169c:
	mov	r3, r8
	cmp	r3, #1
	bne	.L16b0
	ldr	r0, =0x20a5
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L16b0:
	mov	r1, r7
	mov	r2, #3
	mov	r0, r8
	bl	OvlFunc_2114
	bl	__Func_91750
.L16be:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1538

.thumb_func_start OvlFunc_16d4
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L16ee
	bl	OvlFunc_1df4
	b	.L1884
.L16ee:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_1ffc
	mov	r7, r0
	cmp	r7, #0
	beq	.L1702
	b	.L1864
.L1702:
	ldr	r0, =0x20aa
	bl	__Func_92b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xf0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x2d
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	mov	r5, #0x84
	bl	__Func_93530
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	lsl	r5, #1
	mov	r1, #0x9e
	lsl	r1, #2
	mov	r2, r5
	mov	r0, #0
	bl	OvlFunc_2ba8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x9a
	mov	r0, #0
	lsl	r1, #2
	mov	r2, r5
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	bl	__Func_93fa0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #7
	lsl	r1, #4
	bl	__Func_933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92064
	mov	r1, #0xa
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r2, [r0, #0xc]
	lsl	r3, #15
	ldr	r1, [r0, #8]
	add	r2, r3
	ldr	r3, [r0, #0x10]
	bl	__Func_d14c
	mov	r0, #0
	bl	__Func_923c4
	bl	__Func_93fa0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r0, r0
	neg	r1, r1
	bl	__Func_933f8
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92708
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xa0
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_2d84
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_20b8
	b	.L1876
.L1864:
	cmp	r7, #1
	bne	.L1876
	ldr	r0, =0x20a9
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.L1876:
	mov	r1, r6
	mov	r2, #4
	mov	r0, r7
	bl	OvlFunc_2114
	bl	__Func_91750
.L1884:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16d4

.thumb_func_start OvlFunc_1898
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r10, r2
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	mov	r9, r3
	mov	r5, r0
	mov	r0, r9
	mov	r6, r1
	sub	sp, #4
	bl	__Func_92054
	mov	r8, r0
	mov	r0, r5
	bl	__Func_92054
	mov	r7, r0
	ldr	r1, [r7, #8]
	lsr	r3, r6, #31
	add	r3, r6, r3
	asr	r2, r1, #20
	asr	r3, #1
	mov	r0, #0
	cmp	r2, r3
	beq	.L18dc
	mov	r0, #1
.L18dc:
	mov	r3, r10
	lsl	r3, #16
	lsl	r6, #16
	mov	r10, r3
	cmp	r0, #0
	beq	.L18f8
	sub	r3, r6, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r2, #0
	mov	r11, r3
	str	r2, [sp]
	b	.L190a
.L18f8:
	mov	r3, #0
	mov	r11, r3
	ldr	r3, [r7, #0x10]
	mov	r2, r10
	sub	r3, r2, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.L190a:
	mov	r1, #8
	mov	r0, r9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	ldr	r5, =0x3333
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
	mov	r3, r10
	mov	r1, r6
	mov	r2, #0
	mov	r0, r7
	bl	__Func_d14c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, r9
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, r9
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, r8
	mov	r1, #2
	bl	__Func_c300
	mov	r2, r8
	ldr	r1, [r2, #8]
	ldr	r3, [r2, #0x10]
	ldr	r2, [sp]
	add	r1, r11
	add	r3, r2
	mov	r0, r8
	mov	r2, #0
	bl	__Func_d14c
	mov	r0, r8
	bl	__Func_ca6c
	mov	r0, r8
	mov	r1, #1
	bl	__Func_c300
	mov	r0, r7
	bl	__Func_ca6c
	mov	r1, #1
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd5
	bl	__Func_f9080
	mov	r0, #0xf
	bl	__Func_9163c
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1898

.thumb_func_start OvlFunc_19bc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L19da
	bl	OvlFunc_1df4
	b	.L1b1a
.L19da:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_1ffc
	mov	r8, r0
	cmp	r0, #0
	beq	.L19ee
	b	.L1af8
.L19ee:
	ldr	r0, =0x20ae
	bl	__Func_92b94
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0x84
	lsl	r2, #17
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	mov	r5, #0xcc
	mov	r6, #0x84
	bl	__Func_933f8
	lsl	r5, #1
	bl	__Func_93530
	lsl	r6, #1
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	OvlFunc_2ba8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r0, #0x10
	mov	r2, #0xd0
	bl	OvlFunc_1898
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x2d
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	sub	r5, #0x20
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r1, r5
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r1, #0x9c
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0
	bl	OvlFunc_30e8
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_2d84
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r1, #0xc4
	mov	r2, #0xd0
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_20b8
	b	.L1b0c
.L1af8:
	mov	r3, r8
	cmp	r3, #1
	bne	.L1b0c
	ldr	r0, =0x20ad
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L1b0c:
	mov	r1, r7
	mov	r2, #5
	mov	r0, r8
	bl	OvlFunc_2114
	bl	__Func_91750
.L1b1a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19bc

.thumb_func_start OvlFunc_1b30
	push	{r5, r6, lr}
	mov	r0, #0xe0
	lsl	r0, #2
	bl	__Func_793b8
	mov	r5, r0
	mov	r0, #0xe2
	lsl	r0, #2
	bl	__Func_793b8
	mov	r6, #0x80
	lsl	r6, #12
	mov	r2, r0
	lsl	r5, #20
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r1, r5
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #0xe4
	lsl	r0, #2
	bl	__Func_793b8
	mov	r5, r0
	mov	r0, #0xe6
	lsl	r0, #2
	bl	__Func_793b8
	lsl	r5, #20
	mov	r2, r0
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r1, r5
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #0xe8
	lsl	r0, #2
	bl	__Func_793b8
	mov	r5, r0
	mov	r0, #0xea
	lsl	r0, #2
	bl	__Func_793b8
	lsl	r5, #20
	mov	r2, r0
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r0, #3
	mov	r1, r5
	bl	__Func_923e4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b30

.thumb_func_start OvlFunc_1ba8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_79664
	mov	r0, #1
	bl	__Func_79664
	mov	r0, #2
	bl	__Func_79664
	mov	r0, #3
	bl	__Func_79664
	mov	r0, #5
	bl	__Func_79664
	mov	r0, r5
	bl	__Func_7961c
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	str	r5, [r3]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r5
	bl	__Func_77394
	mov	r5, r0
	ldrh	r3, [r5, #0x34]
	ldr	r1, =0x131
	strh	r3, [r5, #0x38]
	ldrh	r3, [r5, #0x36]
	ldr	r2, .L1c1c	@ 0
	strh	r3, [r5, #0x3a]
	add	r3, r5, r1
	strb	r2, [r3]
	mov	r2, #0x38
	ldrsh	r0, [r5, r2]
	mov	r3, #0x34
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_Func_af0
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L1c28
	mov	r3, #0
	cmp	r0, #0
	blt	.L1c28
	mov	r3, r0
	b	.L1c28

	.align	2, 0
.L1c1c:
	.word	0
	.pool

.L1c28:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L1c3c
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L1c3c
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L1c3c:
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_Func_af0
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L1c5a
	mov	r3, #0
	cmp	r0, #0
	blt	.L1c5a
	mov	r3, r0
.L1c5a:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L1c6e
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L1c6e
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L1c6e:
	bl	__Func_91858
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ba8

.thumb_func_start OvlFunc_1c78
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xfa
	ldr	r5, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L1cae
	sub	r1, #0x76
	add	r3, r5, r1
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r3, #26
	cmp	r3, r2
	bne	.L1cae
	ldr	r0, =0x141
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1cae
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.L1cae:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c78

.thumb_func_start OvlFunc_1cc0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r9, r3
	mov	r3, #0x80
	mov	r2, #8
	lsl	r3, #13
	mov	r10, r2
	mov	r8, r3
	mov	r2, #0xfa
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	ldr	r7, [r3]
	mov	r0, r7
	bl	__Func_92054
	mov	r6, r0
	bl	__Func_916b0
	mov	r5, #8
.L1cf2:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1d4e
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L1d4e
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa5
	bne	.L1d4e
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.L1d20
	ldr	r3, =0xffff
	add	r2, r3
.L1d20:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L1d30
	ldr	r2, =0xffff
	add	r0, r2
.L1d30:
	asr	r0, #16
	cmp	r0, #0
	bgt	.L1d4e
	mov	r2, r1
	cmp	r2, #0
	bge	.L1d3e
	neg	r2, r2
.L1d3e:
	cmp	r0, #0
	bge	.L1d44
	neg	r0, r0
.L1d44:
	add	r0, r2, r0
	cmp	r0, r8
	bge	.L1d4e
	mov	r10, r5
	mov	r8, r0
.L1d4e:
	add	r5, #1
	cmp	r5, #0x42
	ble	.L1cf2
	ldr	r0, =0x2085
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r10
	bl	__Func_92f84
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r9
	mov	r8, r3
	mov	r3, #0x80
	lsl	r3, #2
	mov	r2, r8
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r2, r9
	mov	r3, #0xf
	str	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r1, [r6, #8]
	mov	r3, #0xdc
	lsl	r5, r7, #4
	lsl	r3, #2
	add	r0, r5, r3
	asr	r1, #20
	bl	__Func_793c8
	ldr	r1, [r6, #0x10]
	mov	r2, #0xde
	lsl	r2, #2
	asr	r1, #20
	add	r0, r5, r2
	add	r7, #1
	bl	__Func_793c8
	cmp	r7, #3
	ble	.L1dbe
	mov	r0, #0xa
	bl	__Func_91e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	b	.L1dd2
.L1dbe:
	mov	r0, r7
	bl	OvlFunc_1ba8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r3, #0
	mov	r2, r8
	str	r3, [r2]
.L1dd2:
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1cc0

.thumb_func_start OvlFunc_1df4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1ebc
	mov	r7, r0
	ldr	r0, [r5]
	mov	r9, r0
	mov	r0, r7
	bl	__Func_92054
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r6, [r3]
	mov	r0, r6
	bl	__Func_92054
	mov	r11, r0
	bl	__Func_916b0
	ldr	r3, =0x2086
	mov	r8, r3
	mov	r0, r8
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92c40
	ldr	r2, [r5]
	ldr	r0, =0xcc2
	ldr	r1, =0x2089
	add	r3, r2, r0
	strh	r1, [r3]
	ldr	r3, =0xcc4
	add	r2, r3
	mov	r3, #4
	strh	r3, [r2]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_91c7c
	mov	r10, r0
	cmp	r0, #0
	bne	.L1ed8
	mov	r0, r8
	add	r0, #1
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	mov	r7, #0xe0
	bl	__Func_92f84
	lsl	r7, #1
	mov	r3, #0x80
	mov	r2, #0xe4
	lsl	r3, #2
	add	r7, r9
	lsl	r2, #1
	add	r2, r9
	str	r3, [r7]
	mov	r3, #0xf
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, r11
	ldr	r1, [r0, #8]
	mov	r2, #0xdc
	lsl	r5, r6, #4
	lsl	r2, #2
	add	r0, r5, r2
	asr	r1, #20
	bl	__Func_793c8
	mov	r3, r11
	ldr	r1, [r3, #0x10]
	mov	r2, #0xde
	lsl	r2, #2
	asr	r1, #20
	add	r0, r5, r2
	add	r6, #1
	bl	__Func_793c8
	cmp	r6, #3
	ble	.L1ec4
	mov	r0, #0xa
	bl	__Func_91e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	b	.L1ee8
.L1ec4:
	mov	r0, r6
	bl	OvlFunc_1ba8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r3, r10
	str	r3, [r7]
	b	.L1ee8
.L1ed8:
	mov	r0, r8
	add	r0, #2
	bl	__Func_92b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
.L1ee8:
	bl	__Func_91750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1df4

.thumb_func_start OvlFunc_1f14
	push	{r5, r6, r7, lr}
	mov	r5, r0
	bl	__Func_92054
	mov	r3, #0xa
	ldrsh	r7, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	bl	__Func_916b0
	bl	__Func_795fc
	cmp	r0, #1
	bgt	.L1f96
	ldr	r0, =0x20e5
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_93054
	cmp	r0, #0
	bne	.L1fa4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, r6
	add	r2, #0x40
	mov	r1, r7
	mov	r0, r5
	bl	__Func_9218c
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, r7
	mov	r2, r6
	bl	__Func_921c4
	mov	r2, r6
	mov	r0, #0
	add	r2, #0x20
	mov	r1, r7
	bl	__Func_921c4
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xb
	bl	__Func_91e9c
	b	.L1fa4
.L1f96:
	ldr	r0, =0x20e8
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L1fa4:
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f14

.thumb_func_start OvlFunc_1fb8
	push	{lr}
	mov	r0, #0xe0
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xe2
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xe4
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xe6
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xe8
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0xea
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fb8

.thumb_func_start OvlFunc_1ffc
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r0
	bl	__Func_8e118
	mov	r1, #5
	mov	r0, r5
	bl	__Func_19908
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8f
	cmp	r2, r3
	bne	.L2024
	ldr	r0, =0x2076
	b	.L2030
.L2024:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.L202e
	ldr	r0, =0x2078
	b	.L2030
.L202e:
	ldr	r0, =0x207a
.L2030:
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x80
	lsl	r2, #2
	add	r0, r5, r2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2064
	mov	r3, #0x82
	lsl	r3, #2
	add	r5, r3
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2078
	mov	r0, #0
	bl	__Func_2106c
	cmp	r0, #1
	bne	.L2068
.L2064:
	mov	r0, #2
	b	.L2094
.L2068:
	cmp	r0, #2
	beq	.L2074
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.L2094
.L2074:
	mov	r0, #3
	b	.L2094
.L2078:
	mov	r0, r5
	bl	__Func_79358
	ldr	r0, =0x207c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
.L2094:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1ffc

.thumb_func_start OvlFunc_20b8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, r1
	mov	r1, #5
	bl	__Func_19908
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8f
	cmp	r2, r3
	bne	.L20da
	ldr	r0, =0x2076
	b	.L20e6
.L20da:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.L20e4
	ldr	r0, =0x2078
	b	.L20e6
.L20e4:
	ldr	r0, =0x207a
.L20e6:
	add	r0, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20b8

.thumb_func_start OvlFunc_2114
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	sub	sp, #0xc
	mov	r6, r0
	mov	r0, r10
	str	r2, [sp]
	bl	__Func_92054
	mov	r5, r0
	mov	r2, #0xa
	ldrsh	r0, [r5, r2]
	mov	r9, r0
	mov	r0, #0x12
	ldrsh	r3, [r5, r0]
	mov	r11, r3
	cmp	r6, #3
	beq	.L2226
	bl	__Func_795fc
	mov	r7, r0
	cmp	r7, #0
	ble	.L2166
	ldr	r3, =ewram_240
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, sp, #4
	add	r1, r3, r0
	mov	r5, r7
.L2158:
	ldrb	r3, [r1]
	sub	r5, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r5, #0
	bne	.L2158
.L2166:
	cmp	r7, #1
	bgt	.L216e
	ldr	r0, =0x2083
	b	.L2228
.L216e:
	ldr	r2, [sp]
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r2, r3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2182
	ldr	r0, =0x2084
	b	.L2228
.L2182:
	cmp	r6, #2
	bne	.L2190
	mov	r0, #6
	mov	r5, #0
	bl	__Func_30f8
	b	.L21a8
.L2190:
	ldr	r0, =0x207d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	mov	r5, r0
.L21a8:
	cmp	r5, #0
	bne	.L2226
	cmp	r5, r7
	bge	.L21c6
	add	r6, sp, #4
	mov	r5, r7
.L21b4:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_79664
	cmp	r5, #0
	bne	.L21b4
.L21c6:
	cmp	r7, #0
	ble	.L21e4
	add	r6, sp, #4
	mov	r5, r7
.L21ce:
	ldrb	r3, [r6]
	lsl	r3, #24
	asr	r0, r3, #24
	add	r6, #1
	cmp	r0, #0
	beq	.L21de
	bl	__Func_7961c
.L21de:
	sub	r5, #1
	cmp	r5, #0
	bne	.L21ce
.L21e4:
	bl	__Func_a7380
	mov	r8, r0
	cmp	r7, #0
	ble	.L2204
	add	r6, sp, #4
	mov	r5, r7
.L21f2:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_79664
	cmp	r5, #0
	bne	.L21f2
.L2204:
	cmp	r7, #0
	ble	.L221e
	add	r6, sp, #4
	mov	r5, r7
.L220c:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_7961c
	cmp	r5, #0
	bne	.L220c
.L221e:
	mov	r0, #1
	neg	r0, r0
	cmp	r8, r0
	bne	.L2236
.L2226:
	ldr	r0, =0x207e
.L2228:
	bl	__Func_92b94
	mov	r0, r10
	mov	r1, #0
	bl	__Func_92f84
	b	.L2356
.L2236:
	mov	r1, #1
	mov	r0, r8
	bl	__Func_19908
	ldr	r0, =0x207f
	bl	__Func_92b94
	mov	r0, r10
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L228a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	bl	__Func_923e4
.L228a:
	mov	r5, r11
	add	r5, #0x10
	mov	r6, r9
	mov	r2, r5
	add	r6, #0x10
	mov	r0, r8
	mov	r1, r9
	bl	__Func_921c4
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_921c4
	mov	r2, #0x1e
	mov	r0, r8
	mov	r1, #0
	bl	__Func_92848
	mov	r0, r8
	mov	r1, #3
	bl	__Func_924d4
	sub	r5, #0x20
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__Func_921c4
	mov	r2, r5
	mov	r1, r6
	mov	r0, r10
	bl	__Func_9218c
	mov	r0, #0
	mov	r1, r8
	bl	__Func_920c0
	mov	r2, r5
	mov	r0, r8
	mov	r1, r9
	bl	__Func_921c4
	mov	r0, r10
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, r11
	sub	r2, #0x30
	mov	r0, r8
	mov	r1, r9
	bl	__Func_921c4
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__Func_921c4
	mov	r1, r9
	mov	r2, r11
	mov	r0, r10
	bl	__Func_921c4
	mov	r0, r8
	bl	__Func_79664
	mov	r3, #0x80
	ldr	r2, [sp]
	lsl	r3, #2
	add	r0, r2, r3
	bl	__Func_79358
	mov	r0, r8
	bl	__Func_92054
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, r8
	mov	r2, #0xdc
	lsl	r6, r0, #4
	lsl	r2, #2
	asr	r1, #20
	add	r0, r6, r2
	bl	__Func_793c8
	ldr	r1, [r5, #0x10]
	mov	r3, #0xde
	lsl	r3, #2
	asr	r1, #20
	add	r0, r6, r3
	bl	__Func_793c8
.L2356:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2114

.thumb_func_start OvlFunc_2380
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r8, r1
	bl	__Func_77394
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	__Func_78588
	mov	r6, #0
	add	r5, #0xd8
.L239c:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r8
	bne	.L23ac
	mov	r0, r7
	mov	r1, r6
	bl	__Func_78708
.L23ac:
	add	r6, #1
	cmp	r6, #0xe
	ble	.L239c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2380

.thumb_func_start OvlFunc_23bc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0xe5
	lsl	r0, #5
	bl	__Func_4970
	ldr	r7, =.L4a1c
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r6, r0
	cmp	r3, r2
	bne	.L23e2
	bl	__Func_4080
	strh	r0, [r7]
.L23e2:
	ldr	r3, =.L40c4
	ldrb	r3, [r3, r5]
	mov	r8, r3
	cmp	r5, #8
	bne	.L23ee
	mov	r5, #4
.L23ee:
	ldr	r0, =0xe7
	bl	__Func_2f40
	mov	r1, r6
	bl	__Func_5340
	mov	r2, r8
	add	r0, r6, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50003e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	lsl	r2, r5, #10
	add	r2, r6
	mov	r1, #0x80
	add	r2, #0xa0
	lsl	r1, #3
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	bl	__Func_3fa4
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L2420:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L2420
	mov	r0, r6
	bl	__Func_2df0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_23bc

.thumb_func_start OvlFunc_2450
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =.L4c60
	sub	sp, #0x14
	str	r0, [sp, #8]
	ldr	r3, =.L4a1c
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	mov	r10, r0
	mov	r8, r3
.L2478:
	ldr	r1, =.L4c3c
	mov	r2, #0
	ldrsh	r4, [r1, r2]
	ldrh	r3, [r1]
	cmp	r4, #0
	bne	.L254e
	ldr	r5, =.L4c40
	ldr	r0, [r5]
	ldrh	r3, [r0]
	mov	r2, #0x80
	lsl	r3, #16
	add	r0, #2
	asr	r3, #16
	lsl	r2, #6
	str	r0, [r5]
	cmp	r3, r2
	beq	.L2514
	cmp	r3, r2
	bgt	.L24b0
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.L253c
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r3, r2
	beq	.L24fc
	b	.L2478
.L24b0:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	beq	.L24ce
	cmp	r3, r2
	bgt	.L24c6
	mov	r1, #0xc0
	lsl	r1, #6
	cmp	r3, r1
	beq	.L24e4
	b	.L2478
.L24c6:
	ldr	r2, =0x7fff
	cmp	r3, r2
	beq	.L2532
	b	.L2478
.L24ce:
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	ldr	r2, =.L4c10
	lsl	r3, #8
	str	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L4c98
	strh	r3, [r1]
	ldr	r3, =.L4c0c
	b	.L252a
.L24e4:
	ldr	r2, =.L4c98
	ldr	r1, =.L4c90
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L4c0c
	strh	r3, [r1]
	ldr	r3, =.L4c1c
	b	.L252a
.L24fc:
	ldr	r2, =.L4c18
	ldr	r1, =.L4c08
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L4bf4
	strh	r3, [r1]
	ldr	r3, =.L4c9c
	b	.L252a
.L2514:
	ldr	r2, =.L4c34
	ldr	r1, =.L4c38
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L4c48
	strh	r3, [r1]
	ldr	r3, =.L4c24
.L252a:
	add	r2, #2
	str	r2, [r5]
	strh	r4, [r3]
	b	.L2478
.L2532:
	ldrh	r3, [r0]
	strh	r3, [r1]
	add	r3, r0, #2
	str	r3, [r5]
	b	.L2478
.L253c:
	ldr	r0, =OvlFunc_2450
	bl	__Func_4278
	ldr	r3, =.L4a1c
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_3f3c
	b	.L2904
.L254e:
	sub	r3, #1
	strh	r3, [r1]
	ldr	r3, =.L4bf4
	mov	r5, #0
	ldrsh	r7, [r3, r5]
	mov	r9, r3
	cmp	r7, #0
	bne	.L2568
	ldr	r3, =.L4c18
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r11, r0
	b	.L259a
.L2568:
	ldr	r3, =.L4c08
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r2, =.L4c9c
	ldr	r3, =.L4c18
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_af0
	add	r6, r0
	mov	r11, r6
	cmp	r5, r7
	blt	.L259a
	ldr	r3, .L25b0	@ 0
	mov	r0, r9
	strh	r3, [r0]
.L259a:
	ldr	r1, =.L4c48
	mov	r2, #0
	ldrsh	r7, [r1, r2]
	mov	r9, r1
	cmp	r7, #0
	bne	.L2604
	ldr	r3, =.L4c34
	mov	r0, #0
	ldrsh	r5, [r3, r0]
	str	r5, [sp, #4]
	b	.L2636

	.align	2, 0
.L25b0:
	.word	0
	.pool

.L2604:
	ldr	r3, =.L4c38
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	ldr	r3, =.L4c34
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L4c24
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_af0
	add	r6, r0
	str	r6, [sp, #4]
	cmp	r5, r7
	blt	.L2636
	ldr	r3, .L264c	@ 0
	mov	r5, r9
	strh	r3, [r5]
.L2636:
	ldr	r0, =.L4c0c
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	mov	r9, r0
	cmp	r7, #0
	bne	.L2664
	ldr	r3, =.L4c98
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	b	.L2694

	.align	2, 0
.L264c:
	.word	0
	.pool

.L2664:
	ldr	r2, =.L4c1c
	ldr	r3, =.L4c90
	mov	r5, #0
	ldrsh	r6, [r3, r5]
	ldrh	r5, [r2]
	ldr	r3, =.L4c98
	add	r5, #1
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_af0
	add	r6, r0
	cmp	r5, r7
	blt	.L2694
	ldr	r3, .L26c8	@ 0
	mov	r1, r9
	strh	r3, [r1]
.L2694:
	add	r0, sp, #0xc
	ldr	r3, [r0, #4]
	ldr	r2, =0xffff0000
	and	r3, r2
	str	r3, [r0, #4]
	mov	r3, r11
	lsl	r1, r3, #16
	ldr	r3, [sp, #0xc]
	lsr	r1, #16
	and	r3, r2
	ldr	r2, =0xffff
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp, #0xc]
	bl	__Func_3d28
	ldr	r2, =.L4c10
	ldr	r3, [r2]
	lsl	r0, #16
	add	r3, r6
	asr	r0, #16
	str	r3, [r2]
	b	.L26e4

	.align	2, 0
.L26c8:
	.word	0
	.pool

.L26e4:
	cmp	r3, #0
	bge	.L26ea
	add	r3, #0xff
.L26ea:
	asr	r6, r3, #8
	ldr	r3, =.L4c30
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	cmp	r3, #2
	bne	.L26f8
	b	.L2850
.L26f8:
	cmp	r3, #2
	bgt	.L2702
	cmp	r3, #1
	beq	.L270c
	b	.L28a2
.L2702:
	cmp	r3, #3
	beq	.L2782
	cmp	r3, #4
	beq	.L27fe
	b	.L28a2
.L270c:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x38
	mov	r9, r0
.L2716:
	lsl	r3, r5, #5
	sub	r3, #0x30
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.L2726
	add	r3, #0xff
.L2726:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.L2776
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	mov	r3, #0xf4
	mov	r0, r1
	lsl	r3, #8
	mov	r1, r8
	orr	r3, r1
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_3dec
	ldr	r4, [sp]
.L2776:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #3
	ble	.L2716
	b	.L28a2
.L2782:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x30
	mov	r9, r0
.L278c:
	lsl	r3, r5, #5
	sub	r3, #0x10
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.L279c
	add	r3, #0xff
.L279c:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.L27f2
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	ldr	r3, =.L4c04
	mov	r0, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	lsl	r2, #8
	add	r3, r8
	orr	r3, r2
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_3dec
	ldr	r4, [sp]
.L27f2:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #1
	ble	.L278c
	b	.L28a2
.L27fe:
	mov	r3, r6
	mov	r5, #0x98
	mov	r2, r6
	add	r3, #0x78
	lsl	r5, #1
	mov	r7, #0x30
	ldr	r4, =0xc0004000
	add	r2, #0x38
	cmp	r3, r5
	bcs	.L28a2
	ldr	r3, =0x1ff
	mov	r1, r10
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r5, r1
	orr	r3, r2
	str	r5, [sp, #8]
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #8]
	ldr	r3, =.L4c04
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r1]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_3dec
	b	.L28a2
.L2850:
	mov	r3, r6
	mov	r1, #0x98
	mov	r4, #0x80
	mov	r2, r6
	add	r3, #0x98
	lsl	r1, #1
	mov	r7, #0x30
	lsl	r4, #24
	add	r2, #0x58
	cmp	r3, r1
	bcs	.L28a2
	ldr	r3, =0x1ff
	mov	r5, r10
	and	r2, r3
	mov	r3, #0
	stmia	r5!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r1, r5
	orr	r3, r2
	str	r1, [sp, #8]
	stmia	r5!, {r3}
	mov	r0, r5
	str	r0, [sp, #8]
	ldr	r3, =.L4c04
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r5]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_3dec
.L28a2:
	ldr	r0, =ewram_2090
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r2, [r0]
	cmp	r2, #0x1f
	bgt	.L28d0
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r0
	strh	r2, [r0]
	mov	r2, #0xfc
	add	r3, #4
	lsl	r2, #6
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L28d0:
	strh	r4, [r1]
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r3, [r0]
	cmp	r3, #0x1f
	bgt	.L2902
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r0]
	ldr	r5, [sp, #4]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r5
	add	r2, r0
	lsl	r3, #8
	add	r2, #4
	orr	r3, r5
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L2902:
	strh	r4, [r1]
.L2904:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2450

.thumb_func_start OvlFunc_2940
	push	{r5, r6, lr}
	ldr	r3, =.L4c30
	mov	r5, r0
	mov	r6, r1
	ldr	r2, =.L4c04
	strh	r5, [r3]
	mov	r1, #0xc8
	lsl	r3, r6, #4
	lsl	r1, #4
	strh	r3, [r2]
	ldr	r0, =OvlFunc_2450
	bl	__Func_41d8
	ldr	r1, =.L4a1e
	cmp	r5, #2
	bne	.L2962
	ldr	r1, =.L40ce
.L2962:
	cmp	r5, #4
	bne	.L2968
	ldr	r1, =.L4a4a
.L2968:
	cmp	r5, #3
	bne	.L2992
	cmp	r6, #0
	beq	.L2990
	ldr	r1, =.L40f6
	b	.L2992

	.pool_aligned

.L2990:
	ldr	r1, =.L4ac8
.L2992:
	ldr	r2, .L29ac	@ 0
	ldr	r3, =.L4c3c
	strh	r2, [r3]
	ldr	r3, =.L4c40
	str	r1, [r3]
	ldr	r3, =.L4c98
	strh	r2, [r3]
	ldr	r3, =.L4c0c
	strh	r2, [r3]
	ldr	r2, =.L4c10
	mov	r3, #0
	str	r3, [r2]
	b	.L29c8

	.align	2, 0
.L29ac:
	.word	0
	.pool

.L29c8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2940

.thumb_func_start OvlFunc_29d0
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	bne	.L2a0a
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x59
	bl	__Func_f9080
	mov	r0, #0
	bl	OvlFunc_23bc
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_2940
	mov	r0, #0x78
	bl	__Func_9163c
	bl	__Func_91750
	b	.L2ac8
.L2a0a:
	mov	r0, #0xf7
	bl	__Func_f9080
	bl	__Func_916b0
	bl	__Func_91dc8
	bl	__Func_91e20
	lsl	r2, r5, #4
	ldr	r3, =.L4a1e
	sub	r2, r5
	lsl	r2, #2
	strh	r2, [r3, #0x1e]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x5a
	bl	__Func_f9080
	mov	r0, r5
	bl	OvlFunc_23bc
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_2940
	mov	r0, #0x78
	bl	__Func_9163c
	b	.L2a50
.L2a4a:
	mov	r0, #1
	bl	__Func_30f8
.L2a50:
	bl	__Func_f954c
	cmp	r0, #0
	bne	.L2a4a
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #5
	bl	OvlFunc_23bc
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_2940
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	OvlFunc_2940
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #6
	bl	OvlFunc_23bc
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_2940
	mov	r0, #0xec
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #7
	bl	OvlFunc_23bc
	mov	r1, #0
	mov	r0, #4
	bl	OvlFunc_2940
	mov	r0, #0xed
	bl	__Func_f9080
	bl	__Func_8acc4
	bl	__Func_91750
	ldr	r0, =0x123
	bl	__Func_79358
.L2ac8:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_29d0

.thumb_func_start OvlFunc_2adc
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0xf7
	bl	__Func_f9080
	bl	__Func_91dc8
	bl	__Func_91e20
	lsl	r3, r5, #4
	ldr	r2, =.L4ac8
	sub	r3, r5
	lsl	r6, r3, #2
	strh	r6, [r2, #0x1a]
	ldr	r1, =.L40f6
	mov	r2, r5
	cmp	r5, #0
	bge	.L2b02
	neg	r2, r5
.L2b02:
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	strh	r3, [r1, #0x1a]
	cmp	r5, #0
	bge	.L2b38
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x56
	bl	__Func_f9080
	mov	r0, #8
	bl	OvlFunc_23bc
	mov	r1, #1
	mov	r0, #3
	bl	OvlFunc_2940
	lsl	r0, r5, #4
	sub	r0, r5, r0
	lsl	r0, #2
	add	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	b	.L2b5e
.L2b38:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x5a
	bl	__Func_f9080
	mov	r0, #4
	bl	OvlFunc_23bc
	mov	r1, #0
	mov	r0, #3
	bl	OvlFunc_2940
	mov	r0, r6
	add	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
.L2b5e:
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	b	.L2b6e
.L2b68:
	mov	r0, #1
	bl	__Func_30f8
.L2b6e:
	bl	__Func_f954c
	cmp	r0, #0
	bne	.L2b68
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	bl	__Func_91df4
	bl	__Func_91e20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2adc

.thumb_func_start OvlFunc_2ba8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e68
	sub	sp, #4
	ldr	r6, [r3]
	mov	r11, r0
	mov	r8, r1
	mov	r10, r2
	bl	__Func_92054
	mov	r3, #1
	strb	r3, [r6, #6]
	mov	r3, #4
	mov	r7, r0
	strb	r3, [r6, #7]
	ldr	r3, [r7, #8]
	ldr	r2, =.L4ca4
	str	r3, [r2]
	ldr	r3, [r7, #0x10]
	ldr	r2, =.L4bfc
	str	r3, [r2]
	ldr	r0, [r7, #0x50]
	ldrh	r3, [r7, #6]
	ldr	r2, =.L4c28
	mov	r9, r0
	str	r3, [r2]
	mov	r0, r11
	mov	r1, #2
	bl	__Func_92b08
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r5, r3
	strb	r5, [r2]
	mov	r5, #0x80
	lsl	r5, #7
	mov	r0, r7
	strh	r5, [r7, #6]
	mov	r1, #3
	bl	__Func_c528
	mov	r0, r7
	mov	r1, #0
	bl	__Func_c300
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c300
	mov	r3, r10
	lsl	r3, #16
	mov	r10, r3
	mov	r1, r8
	lsl	r1, #16
	mov	r0, r11
	mov	r2, r10
	mov	r8, r1
	bl	__Func_923e4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_9280c
	ldr	r4, =ewram_2090
	ldr	r6, =REG_IME
	ldrh	r3, [r6]
	mov	r1, r3
	strh	r6, [r6]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L2c64
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r4
	strh	r2, [r4]
	mov	r2, #0xf0
	add	r3, #4
	lsl	r2, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L2c64:
	strh	r1, [r6]
	mov	r0, r9
	mov	r2, #0xd
	ldrb	r1, [r0, #5]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	mov	r1, #4
	orr	r3, r1
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #0x11]
	and	r2, r3
	orr	r2, r1
	strb	r2, [r0, #0x11]
	mov	r0, #0xfc
	str	r4, [sp]
	bl	__Func_f9080
	ldr	r4, [sp]
	mov	r5, #0
.L2c8c:
	mov	r1, #0x80
	lsl	r2, r5, #12
	lsl	r1, #5
	add	r3, r2, r1
	str	r3, [r7, #0x18]
	mov	r3, #0xf8
	lsl	r3, #9
	sub	r3, r2
	str	r3, [r7, #0x1c]
	ldrh	r3, [r6]
	mov	r0, r3
	strh	r6, [r6]
	ldrh	r3, [r4]
	cmp	r3, #0x1f
	bgt	.L2cce
	lsl	r1, r3, #1
	add	r1, r3
	add	r3, #1
	strh	r3, [r4]
	mov	r3, #0xf
	lsl	r1, #2
	sub	r3, r5
	add	r1, r4, r1
	lsl	r3, #8
	add	r2, r5, #1
	add	r1, #4
	orr	r3, r2
	stmia	r1!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r1!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r1]
.L2cce:
	strh	r0, [r6]
	mov	r0, #1
	str	r4, [sp]
	bl	__Func_30f8
	add	r5, #2
	ldr	r4, [sp]
	cmp	r5, #0xf
	ble	.L2c8c
	ldr	r1, =ewram_2090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L2d0c
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	add	r3, #4
	strh	r2, [r1]
	mov	r2, #0x10
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDALPHA
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L2d0c:
	strh	r4, [r0]
	mov	r3, #0x88
	lsl	r3, #9
	str	r3, [r7, #0x18]
	mov	r3, #0xf0
	lsl	r3, #8
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__Func_9163c
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #0xd
	bl	__Func_9163c
	mov	r3, r9
	mov	r2, #0xd
	ldrb	r1, [r3, #5]
	neg	r2, r2
	mov	r3, r2
	mov	r0, r9
	and	r3, r1
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #0x11]
	and	r2, r3
	strb	r2, [r0, #0x11]
	mov	r1, #3
	mov	r0, r11
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ba8

.thumb_func_start OvlFunc_2d84
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e68
	mov	r6, r0
	ldr	r7, [r3]
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	ldrb	r3, [r2]
	mov	r5, r0
	cmp	r3, #1
	bne	.L2db8
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_924d4
	b	.L2dd2

	.pool_aligned

.L2db8:
	mov	r1, #0x80
	mov	r0, r6
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r0, r6
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
.L2dd2:
	mov	r2, #0
	mov	r3, #0xf
	strb	r2, [r7, #7]
	strb	r3, [r7, #6]
	ldr	r3, =.L4ca4
	ldr	r3, [r3]
	str	r3, [r5, #8]
	ldr	r3, =.L4bfc
	ldr	r3, [r3]
	str	r3, [r5, #0x10]
	ldr	r3, =.L4c28
	ldr	r3, [r3]
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r0, r5
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	add	r0, #0x55
	mov	r3, #3
	str	r2, [r5, #0x24]
	str	r2, [r5, #0x2c]
	ldr	r1, .L2e2c	@ 0
	strb	r3, [r0]
	mov	r3, r5
	add	r3, #0x22
	strb	r1, [r3]
	mov	r0, r5
	str	r2, [r5, #0xc]
	str	r2, [r5, #0x14]
	mov	r1, #1
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r0, #1
	bl	__Func_30f8
	b	.L2e3c

	.align	2, 0
.L2e2c:
	.word	0
	.pool

.L2e3c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d84

.thumb_func_start OvlFunc_2e44
	push	{r5, lr}
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e44

.thumb_func_start OvlFunc_2e64
	push	{r5, lr}
	ldr	r5, =.L4b46
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	bne	.L2e7a
	bl	__Func_209b0
	strh	r0, [r5]
.L2e7a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e64

.thumb_func_start OvlFunc_2e84
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L4b46
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	ldr	r2, =.L4c2c
	lsr	r3, #5
	ldr	r0, =.L4c50
	mov	r10, r3
	mov	r3, #0
	ldrsh	r7, [r2, r3]
	mov	r11, r0
	mov	r9, r2
	cmp	r7, #0
	beq	.L2f18
	ldr	r3, =.L4bf0
	ldrh	r5, [r3]
	add	r5, #1
	strh	r5, [r3]
	ldr	r0, =.L4c94
	ldr	r1, =.L4c44
	ldr	r3, =.L4c00
	mov	r8, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	lsl	r5, #16
	sub	r2, r3
	asr	r5, #16
	ldrh	r6, [r1]
	mov	r0, r5
	mul	r0, r2
	mov	r1, r7
	bl	_Func_af0
	ldr	r2, =.L4c20
	add	r6, r0
	mov	r1, r8
	strh	r6, [r1]
	mov	r8, r2
	ldr	r3, =.L4ca0
	ldr	r2, =.L4c5c
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	ldrh	r6, [r2]
	mov	r1, #0
	ldrsh	r2, [r2, r1]
	sub	r3, r2
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_af0
	mov	r2, r8
	add	r6, r0
	strh	r6, [r2]
	cmp	r5, r7
	blt	.L2f12
	ldr	r3, .L2f44	@ 0
	mov	r0, r9
	strh	r3, [r0]
.L2f12:
	ldr	r2, =.L4c14
	ldr	r3, .L2f44	@ 0
	strh	r3, [r2]
.L2f18:
	ldr	r2, =.L4c14
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0xd
	bgt	.L2fa4
	ldr	r3, =.L4c94
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =.L4c20
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, r11
	mov	r3, #0
	stmia	r0!, {r3}
	sub	r1, #8
	ldr	r3, =.L4bf8
	lsl	r1, #16
	b	.L2f7c

	.align	2, 0
.L2f44:
	.word	0
	.pool

.L2f7c:
	sub	r2, #8
	orr	r2, r1
	mov	r4, #0x80
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r4, #23
	lsl	r3, #28
	orr	r2, r4
	orr	r2, r3
	mov	r3, #0x80
	stmia	r0!, {r2}
	lsl	r3, #3
	mov	r2, r10
	orr	r2, r3
	str	r2, [r0]
	mov	r1, #0xff
	mov	r0, r11
	bl	__Func_3dec
	b	.L2fac
.L2fa4:
	cmp	r3, #0x13
	ble	.L2fac
	ldr	r3, =0
	strh	r3, [r2]
.L2fac:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e84

.thumb_func_start OvlFunc_2fc0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r8, r1
	mov	r5, r2
	bl	OvlFunc_2e64
	ldr	r3, =.L4c94
	strh	r6, [r3]
	ldr	r3, =.L4c20
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, .L2ff8	@ 3
	ldr	r2, =.L4bf8
	and	r5, r3
	strh	r5, [r2]
	ldr	r3, =.L4c14
	ldr	r2, .L2ffc	@ 0
	strh	r2, [r3]
	ldr	r3, =.L4c2c
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_2e84
	bl	__Func_41d8
	b	.L3018

	.align	2, 0
.L2ff8:
	.word	3
.L2ffc:
	.word	0
	.pool

.L3018:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2fc0

.thumb_func_start OvlFunc_3024
	push	{lr}
	ldr	r3, =.L4c00
	strh	r0, [r3]
	ldr	r3, =.L4ca0
	strh	r1, [r3]
	ldr	r3, =.L4c94
	ldr	r1, =.L4c44
	ldrh	r3, [r3]
	strh	r3, [r1]
	ldr	r3, =.L4c20
	ldr	r1, =.L4c5c
	ldrh	r3, [r3]
	strh	r3, [r1]
	ldr	r3, =.L4c2c
	strh	r2, [r3]
	ldr	r2, =.L4bf0
	ldr	r3, .L3058	@ 0
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_2e84
	bl	__Func_41d8
	pop	{r0}
	bx	r0

	.align	2, 0
.L3058:
	.word	0
.func_end OvlFunc_3024

.thumb_func_start OvlFunc_3080
	push	{r5, lr}
	ldr	r0, =OvlFunc_2e84
	bl	__Func_4278
	ldr	r5, =.L4b46
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_3f3c
	ldr	r3, .L309c	@ 0xffffffff
	strh	r3, [r5]
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L309c:
	.word	0xffffffff
	.pool
.func_end OvlFunc_3080

.thumb_func_start OvlFunc_30a8
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L30e2
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	asr	r3, #1
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
	bl	__Func_c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_d14c
.L30e2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_30a8

.thumb_func_start OvlFunc_30e8
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L3130
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	asr	r3, #1
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
	bl	__Func_c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
.L3130:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_30e8

.thumb_func_start OvlFunc_3138
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r9, r1
	bl	__Func_92054
	mov	r6, r0
	cmp	r6, #0
	beq	.L31ec
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #1
	bne	.L31ec
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	ldr	r7, [r6, #0x50]
	bl	__Func_48b0
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	mov	r2, #0
	add	r5, r3
	mov	r0, sp
	mov	r8, r2
	str	r2, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r9
	bl	__Func_1a370
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r7, #0x1c]
	bl	__Func_3fa4
	mov	r5, r0
	mov	r0, #0x11
	bl	__Func_2dd8
	mov	r3, r6
	add	r3, #0x5c
	mov	r2, r10
	strb	r2, [r3]
	ldr	r0, [r7, #0x28]
	bl	__Func_bc48
	mov	r3, r8
	str	r3, [r7, #0x28]
	mov	r3, r7
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r2, [r7, #5]
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, .L31dc	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r5, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r5
	strh	r3, [r7, #8]
	mov	r3, r7
	add	r3, #0x25
	mov	r2, r8
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	b	.L31ec

	.align	2, 0
.L31dc:
	.word	0x3ff
	.pool

.L31ec:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3138

.thumb_func_start OvlFunc_31fc
	push	{r5, lr}
	add	r0, #8
	mov	r3, #0
	ldr	r5, =.L4250
	strb	r3, [r0]
	mov	r2, #7
	sub	r0, #1
	mov	r4, #0xf
.L320c:
	mov	r3, r1
	and	r3, r4
	ldrb	r3, [r5, r3]
	sub	r2, #1
	strb	r3, [r0]
	lsr	r1, #4
	sub	r0, #1
	cmp	r2, #0
	bge	.L320c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_31fc

.thumb_func_start OvlFunc_3228
	bx	lr
.func_end OvlFunc_3228

.thumb_func_start OvlFunc_322c
	ldr	r2, =ewram_1000
	mov	r3, #9
	strh	r3, [r2]
	bx	lr
.func_end OvlFunc_322c

.thumb_func_start OvlFunc_3238
	push	{r5, lr}
	ldr	r5, =ewram_1000
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #9
	beq	.L3252
.L3244:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #9
	bne	.L3244
.L3252:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3238

.thumb_func_start OvlFunc_325c
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r3, [r5, #0x28]
	mov	r2, #0xff
	add	r3, #0xff
	lsl	r2, #1
	sub	sp, #0xc
	cmp	r3, r2
	bhi	.L3276
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L3276:
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #9
	bhi	.L32e0
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	lsl	r5, #4
	mov	r1, r0
	mov	r2, r6
	mov	r0, r5
	bl	__Func_447c
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L32e0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	ldr	r1, =.L4264
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c300
.L32e0:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_325c

.thumb_func_start OvlFunc_32f0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r0
	mov	r2, #0x64
	add	r2, r5
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r8, r2
	bl	__Func_92054
	ldr	r2, [r5, #0xc]
	mov	r3, #0x90
	lsl	r3, #14
	add	r2, r3
	mov	r6, r0
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r3, r6
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	ldr	r1, =.L4288
	mov	r0, r6
	bl	__Func_c2d8
	mov	r0, #0x53
	bl	__Func_f9080
	mov	r2, r8
	strh	r5, [r2]
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_32f0

.thumb_func_start OvlFunc_3344
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f3c
	mov	r10, r0
	ldr	r0, =0x211
	mov	r8, r1
	ldr	r5, [r3]
	bl	__Func_79338
	ldr	r3, =ewram_240
	mov	r7, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r3, r5
	mov	r6, r0
	add	r3, #0xe8
	ldr	r2, [r3]
	mov	r0, #0xc0
	ldr	r3, [r6, #8]
	lsl	r0, #12
	add	r1, r2, r0
	cmp	r2, r3
	blt	.L3382
	ldr	r3, =0xfff40000
	add	r1, r2, r3
.L3382:
	cmp	r7, #0
	beq	.L3398
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r0, #0x80
	lsl	r0, #13
	add	r4, r3, r0
	mov	r3, r5
	add	r3, #0xe4
	b	.L33a6
.L3398:
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r5
	add	r3, #0xe2
.L33a6:
	ldrh	r3, [r3]
	mov	r5, r6
	add	r5, #0x64
	strh	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, #0
	str	r3, [r6, #0x30]
	mov	r0, r6
	mov	r3, r4
	bl	__Func_d14c
	ldr	r0, =0x211
	bl	__Func_79358
	mov	r0, r6
	ldr	r1, =.L4b9c
	bl	__Func_c2d8
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L33e8
.L33da:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L33da
.L33e8:
	cmp	r7, #0
	bne	.L33fe
	mov	r1, r10
	mov	r0, #0
	bl	OvlFunc_2380
	mov	r0, r10
	mov	r1, #2
	bl	__Func_19908
	b	.L340e
.L33fe:
	mov	r1, r8
	mov	r0, #0
	bl	OvlFunc_2380
	mov	r0, r8
	mov	r1, #2
	bl	__Func_19908
.L340e:
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, #1
	bl	__Func_19908
	mov	r1, #3
	ldr	r0, =0x96a
	bl	__Func_1776c
	mov	r0, r6
	bl	__Func_c4ec
	mov	r0, r7
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3344

.thumb_func_start OvlFunc_3458
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r1, =ewram_1000
	ldr	r3, =iwram_1f3c
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	sub	sp, #4
	ldr	r6, [r3]
	mov	r8, r1
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	bne	.L3478
	b	.L362c
.L3478:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #1
	beq	.L3484
	b	.L35c8
.L3484:
	ldrh	r3, [r2, #6]
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #15
	add	r3, #0xf0
	ldrsh	r7, [r6, r3]
	add	r3, r2, #1
	lsl	r2, #16
	asr	r2, #15
	mov	r1, r8
	add	r2, #0xf0
	strh	r3, [r1, #6]
	ldrsh	r4, [r6, r2]
	cmp	r7, #0
	bne	.L3520
	cmp	r4, #0
	bne	.L3520
	mov	r3, #9
	strh	r3, [r1]
	mov	r1, #1
	bl	__Func_c300
	mov	r3, r6
	add	r3, #0xe8
	ldr	r2, [r3]
	mov	r1, #0xc0
	ldr	r3, [r5, #8]
	lsl	r1, #12
	add	r7, r2, r1
	cmp	r2, r3
	blt	.L34c6
	ldr	r3, =0xfff40000
	add	r7, r2, r3
.L34c6:
	ldr	r0, =0x211
	bl	__Func_79338
	cmp	r0, #0
	beq	.L34e2
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r1, #0x80
	lsl	r1, #13
	add	r4, r3, r1
	mov	r3, r6
	add	r3, #0xe4
	b	.L34f0
.L34e2:
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r6
	add	r3, #0xe2
.L34f0:
	ldrh	r2, [r3]
	mov	r3, r5
	add	r3, #0x64
	strh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r1, r7
	str	r3, [r5, #0x30]
	mov	r0, r5
	mov	r2, #0
	mov	r3, r4
	bl	__Func_d14c
	ldr	r0, =0x211
	bl	__Func_79358
	ldr	r1, =.L4b48
	mov	r0, r5
	bl	__Func_c2d8
	b	.L362c
.L3520:
	mov	r2, r8
	mov	r1, #2
	ldrsh	r3, [r2, r1]
	lsl	r7, #16
	lsl	r4, #16
	cmp	r3, #0
	beq	.L3538
	mov	r3, r6
	add	r3, #0xe8
	ldr	r3, [r3]
	lsl	r3, #1
	sub	r7, r3, r7
.L3538:
	ldr	r2, [r5, #8]
	cmp	r2, r7
	bne	.L3546
	ldr	r3, [r5, #0x10]
	cmp	r3, r4
	beq	.L3582
	b	.L3548
.L3546:
	ldr	r3, [r5, #0x10]
.L3548:
	sub	r0, r4, r3
	sub	r1, r7, r2
	str	r4, [sp]
	bl	__Func_44d0
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	mov	r2, #0x80
	asr	r0, #16
	lsl	r2, #5
	ldr	r4, [sp]
	cmp	r0, r2
	ble	.L356a
	mov	r0, r2
.L356a:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L3572
	mov	r0, r2
.L3572:
	add	r3, r0
	mov	r2, #0
	strh	r3, [r5, #6]
	mov	r3, r8
	str	r7, [r5, #8]
	str	r4, [r5, #0x10]
	strh	r2, [r3, #8]
	b	.L358c
.L3582:
	mov	r1, r8
	ldrh	r3, [r1, #8]
	mov	r2, r8
	add	r3, #1
	strh	r3, [r2, #8]
.L358c:
	mov	r2, r8
	mov	r1, #8
	ldrsh	r3, [r2, r1]
	cmp	r3, #2
	ble	.L35a0
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	b	.L362c
.L35a0:
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	b	.L362c

	.pool_aligned

.L35c8:
	cmp	r3, #2
	bne	.L362c
	mov	r2, r8
	mov	r3, #0xa
	ldrsh	r7, [r5, r3]
	ldrh	r3, [r2, #6]
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #15
	mov	r1, #0x12
	ldrsh	r4, [r5, r1]
	add	r3, #0xf0
	add	r1, r2, #1
	lsl	r2, #16
	strh	r7, [r6, r3]
	asr	r2, #15
	mov	r3, r8
	add	r2, #0xf0
	strh	r1, [r3, #6]
	lsl	r3, r1, #16
	strh	r4, [r6, r2]
	asr	r2, r3, #16
	ldr	r3, =0x383e
	cmp	r2, r3
	bne	.L362c
	add	r3, r1, #1
	lsl	r3, #16
	ldr	r1, .L3624	@ 0
	lsl	r2, #1
	asr	r3, #15
	add	r2, #0xf0
	add	r3, #0xf0
	strh	r1, [r6, r2]
	strh	r1, [r6, r3]
	mov	r3, r6
	add	r3, #0xe0
	ldrh	r3, [r3]
	mov	r1, r8
	strh	r3, [r1, #4]
	mov	r2, #0
	mov	r3, r8
	strh	r2, [r3, #6]
	mov	r3, #1
	strh	r3, [r1]
	b	.L362c

	.align	2, 0
.L3624:
	.word	0
	.pool

.L362c:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3458

.thumb_func_start OvlFunc_3638
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f3c
	ldr	r3, [r3]
	mov	r1, r3
	sub	sp, #0x14
	mov	r8, r1
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x10]
	mov	r7, r8
	add	r7, #0xd8
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	str	r3, [sp, #8]
	mov	r3, r8
	add	r3, #0xe6
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	sub	r3, #0xa
	mov	r11, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L3686
	mov	r6, r8
	add	r6, #0xda
	mov	r3, #2
	strh	r3, [r6]
	b	.L36f4
.L3686:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L36a6
	mov	r6, r8
	add	r6, #0xda
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	ble	.L36f4
	sub	r3, r2, #1
	strh	r3, [r6]
	b	.L36f4
.L36a6:
	mov	r6, r8
	add	r6, #0xda
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #1
	bgt	.L36f4
	add	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L36f4
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L4174
	ldr	r1, =0x50003c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_4970
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L4194
	bl	__Func_5340
	mov	r1, #0x80
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	lsl	r1, #2
	mov	r2, r5
	bl	__Func_3fa4
	mov	r0, r5
	bl	__Func_2df0
.L36f4:
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	cmp	r2, #0
	bne	.L370a
	ldr	r3, [sp, #0xc]
	add	r3, #0xd8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_3f78
	b	.L39ca
.L370a:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	mov	r7, r3
	sub	r7, #8
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	lsl	r3, #4
	str	r3, [sp, #4]
	mov	r2, #0x80
	ldr	r1, [sp, #4]
	lsl	r2, #8
	mov	r3, #0x68
	mov	r9, r2
	ldr	r2, [sp, #0xc]
	sub	r4, r3, r1
	mov	r3, #0
	stmia	r2!, {r3}
	lsl	r3, r4, #16
	mov	r1, r2
	str	r1, [sp, #0xc]
	orr	r3, r7
	mov	r1, r9
	orr	r3, r1
	stmia	r2!, {r3}
	ldr	r3, [sp, #8]
	mov	r5, #0xe4
	lsl	r5, #8
	mov	r1, r2
	orr	r3, r5
	str	r1, [sp, #0xc]
	stmia	r2!, {r3}
	mov	r1, r2
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	mov	r6, #0
	add	r8, r2
	bl	__Func_3dec
	cmp	r6, r11
	bcs	.L37a4
	ldr	r3, [sp, #8]
	mov	r1, #0x80
	add	r3, #2
	orr	r3, r5
	lsl	r1, #23
	ldr	r5, [sp, #0xc]
	mov	r9, r1
	mov	r10, r3
.L3772:
	lsl	r2, r6, #4
	mov	r3, #0x60
	sub	r4, r3, r2
	mov	r3, #0
	str	r3, [r5]
	lsl	r3, r4, #16
	mov	r2, r9
	orr	r3, r7
	orr	r3, r2
	str	r3, [r5, #4]
	mov	r3, r10
	str	r3, [r5, #8]
	ldr	r1, [sp, #0xc]
	add	r1, #0xc
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	add	r6, #1
	add	r8, r2
	add	r5, #0xc
	bl	__Func_3dec
	cmp	r6, r11
	bcc	.L3772
.L37a4:
	ldr	r2, [sp, #0xc]
	mov	r6, #0
	mov	r3, #0x80
	stmia	r2!, {r6}
	lsl	r3, #8
	mov	r9, r3
	mov	r3, #0xe0
	mov	r1, r2
	lsl	r3, #15
	str	r1, [sp, #0xc]
	orr	r3, r7
	mov	r1, r9
	orr	r3, r1
	stmia	r2!, {r3}
	ldr	r5, [sp, #8]
	mov	r1, r2
	mov	r2, #0xe4
	lsl	r2, #8
	add	r5, #6
	orr	r5, r2
	stmia	r1!, {r5}
	mov	r0, r8
	mov	r3, r1
	mov	r10, r2
	mov	r1, #0xff
	mov	r2, #0xc
	add	r8, r2
	str	r3, [sp, #0xc]
	bl	__Func_3dec
	ldr	r1, [sp, #0xc]
	stmia	r1!, {r6}
	mov	r3, r1
	str	r3, [sp, #0xc]
	mov	r3, #0xf0
	lsl	r3, #15
	mov	r2, r9
	orr	r3, r7
	orr	r3, r2
	mov	r2, #0x80
	lsl	r2, #21
	orr	r3, r2
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #0xc]
	stmia	r1!, {r5}
	mov	r3, r1
	mov	r1, #0xc
	mov	r0, r8
	add	r8, r1
	mov	r1, #0xff
	str	r3, [sp, #0xc]
	bl	__Func_3dec
	cmp	r6, r11
	bcs	.L3866
	ldr	r4, [sp, #8]
	mov	r2, #0x80
	mov	r1, #0x80
	mov	r3, r10
	add	r4, #2
	lsl	r2, #23
	lsl	r1, #16
	ldr	r5, [sp, #0xc]
	mov	r9, r2
	orr	r4, r3
	mov	r10, r1
.L382a:
	mov	r3, #0
	str	r3, [r5]
	mov	r2, r10
	mov	r3, r7
	orr	r3, r2
	mov	r1, r9
	mov	r2, #0x80
	orr	r3, r1
	lsl	r2, #21
	orr	r3, r2
	str	r3, [r5, #4]
	str	r4, [r5, #8]
	ldr	r2, [sp, #0xc]
	mov	r0, r8
	add	r2, #0xc
	mov	r3, #0xc
	mov	r1, #0xff
	str	r4, [sp]
	str	r2, [sp, #0xc]
	add	r8, r3
	bl	__Func_3dec
	mov	r1, #0x80
	lsl	r1, #13
	add	r6, #1
	add	r5, #0xc
	add	r10, r1
	ldr	r4, [sp]
	cmp	r6, r11
	bcc	.L382a
.L3866:
	mov	r2, #0x80
	ldr	r4, [sp, #4]
	lsl	r2, #8
	mov	r9, r2
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	add	r4, #0x80
	stmia	r2!, {r3}
	mov	r11, r3
	lsl	r3, r4, #16
	orr	r7, r3
	mov	r3, r9
	orr	r7, r3
	mov	r3, #0x80
	lsl	r3, #21
	mov	r1, r2
	orr	r7, r3
	str	r1, [sp, #0xc]
	stmia	r2!, {r7}
	ldr	r3, [sp, #8]
	mov	r1, r2
	mov	r2, #0xe4
	lsl	r2, #8
	orr	r3, r2
	mov	r10, r2
	mov	r2, r1
	stmia	r2!, {r3}
	mov	r1, r2
	mov	r3, #0xc
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0xff
	add	r8, r3
	bl	__Func_3dec
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #4
	bhi	.L38ba
	b	.L39ca
.L38ba:
	ldr	r3, [sp, #0x10]
	mov	r1, #0x80
	add	r3, #0xe0
	lsl	r1, #23
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r9, r1
	bl	__Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L3948
	ldr	r3, [sp, #0x10]
	add	r3, #0xe8
	ldr	r3, [r3]
	ldr	r0, [r6, #8]
	mov	r5, #0xe0
	lsl	r5, #12
	sub	r0, r3
	mov	r1, r5
	bl	_Func_af0
	ldr	r3, [sp, #0x10]
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r4, r0
	ldr	r0, [r6, #0x10]
	add	r4, #0x70
	mov	r1, r5
	sub	r0, r3
	str	r4, [sp]
	bl	_Func_af0
	ldr	r3, [sp, #0x10]
	add	r3, #0xda
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r0, r3
	ldr	r1, [sp, #0xc]
	sub	r7, r0, #4
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	stmia	r1!, {r3}
	ldr	r4, [sp]
	mov	r2, r1
	lsl	r3, r4, #16
	str	r2, [sp, #0xc]
	orr	r7, r3
	mov	r2, r9
	orr	r7, r2
	stmia	r1!, {r7}
	mov	r3, r1
	str	r3, [sp, #0xc]
	ldr	r3, [sp, #8]
	mov	r1, r10
	add	r3, #0xc
	orr	r3, r1
	ldr	r1, [sp, #0xc]
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	add	r8, r2
	bl	__Func_3dec
.L3948:
	ldr	r3, [sp, #0x10]
	add	r3, #0xde
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	__Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L39ca
	ldr	r3, [sp, #0x10]
	add	r3, #0xe8
	ldr	r3, [r3]
	ldr	r0, [r6, #8]
	mov	r5, #0xe0
	lsl	r5, #12
	sub	r0, r3
	mov	r1, r5
	bl	_Func_af0
	ldr	r3, [sp, #0x10]
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r4, r0
	ldr	r0, [r6, #0x10]
	add	r4, #0x70
	mov	r1, r5
	sub	r0, r3
	str	r4, [sp]
	bl	_Func_af0
	ldr	r3, [sp, #0x10]
	add	r3, #0xda
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r0, r3
	ldr	r1, [sp, #0xc]
	sub	r7, r0, #4
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	stmia	r1!, {r3}
	ldr	r4, [sp]
	mov	r2, r1
	lsl	r3, r4, #16
	str	r2, [sp, #0xc]
	orr	r7, r3
	mov	r2, r9
	orr	r7, r2
	stmia	r1!, {r7}
	mov	r3, r1
	str	r3, [sp, #0xc]
	ldr	r3, [sp, #8]
	mov	r1, r10
	add	r3, #8
	ldr	r2, [sp, #0xc]
	orr	r3, r1
	str	r3, [r2]
	mov	r3, r8
	mov	r0, r3
	mov	r1, #0xff
	bl	__Func_3dec
.L39ca:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3638

.thumb_func_start OvlFunc_39fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r1
	mov	r0, #0x3b
	ldr	r1, =0x7170
	ldr	r5, [sp, #0x28]
	ldr	r6, [sp, #0x2c]
	str	r3, [sp]
	mov	r9, r2
	bl	__Func_48f4
	mov	r7, r0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_4970
	mov	r3, r7
	add	r3, #0xde
	mov	r2, r8
	strh	r2, [r3]
	add	r3, #2
	mov	r2, r10
	strh	r2, [r3]
	add	r3, #2
	strh	r5, [r3]
	add	r3, #2
	strh	r6, [r3]
	mov	r2, r9
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, [sp]
	add	r3, #2
	str	r2, [r3]
	ldr	r2, [sp, #0x24]
	add	r3, #4
	str	r2, [r3]
	mov	r11, r0
	mov	r0, r8
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r10
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3a7c
	ldr	r2, [sp]
	lsl	r3, r2, #1
	ldr	r2, [r6, #8]
	sub	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
.L3a7c:
	ldr	r2, .L3abc	@ 0
	mov	r3, r7
	add	r3, #0xda
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, r11
	ldr	r0, =.L4194
	bl	__Func_5340
	bl	__Func_4080
	mov	r3, r7
	add	r3, #0xd8
	strh	r0, [r3]
	mov	r1, #0x80
	lsl	r0, #16
	mov	r2, r11
	lsl	r1, #2
	asr	r0, #16
	bl	__Func_3fa4
	ldr	r1, =0xc76
	ldr	r0, =OvlFunc_3638
	bl	__Func_41d8
	mov	r0, r11
	bl	__Func_2df0
	add	sp, #4
	b	.L3ad4

	.align	2, 0
.L3abc:
	.word	0
	.pool

.L3ad4:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_39fc

.thumb_func_start OvlFunc_3ae4
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f3c
	ldr	r6, [r3]
	ldr	r5, =ewram_1000
	bl	__Func_2f40
	mov	r1, r6
	add	r1, #0xf0
	bl	__Func_5340
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3b14
	mov	r3, #1
	strh	r3, [r5]
	strh	r3, [r5, #2]
	mov	r3, r6
	add	r3, #0xe0
	ldrh	r3, [r3]
	strh	r0, [r5, #8]
	strh	r3, [r5, #4]
	strh	r0, [r5, #6]
.L3b14:
	ldr	r1, =0xc85
	ldr	r0, =OvlFunc_3458
	bl	__Func_41d8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3ae4

.thumb_func_start OvlFunc_3b38
	ldr	r3, =iwram_1f3c
	ldr	r3, [r3]
	add	r3, #0xdc
	strh	r0, [r3]
	bx	lr
.func_end OvlFunc_3b38

.thumb_func_start OvlFunc_3b48
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	mov	r5, #8
	asr	r6, r3, #20
	add	r1, #0x34
.L3b5a:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, r3
	bne	.L3b7c
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #0xc]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L3b7c
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.L3b84
.L3b7c:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L3b5a
	mov	r0, #0
.L3b84:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3b48

.thumb_func_start OvlFunc_3b90
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	ldr	r2, =.L43d4
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r1, [r2, r5]
	ldr	r3, =0xffff0000
	mov	r9, r2
	mov	r2, r1
	and	r2, r3
	mov	r10, r3
	ldr	r3, [r0, #8]
	mov	r7, sp
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r8, r0
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r8
	bl	OvlFunc_3b48
	mov	r6, r0
	cmp	r6, #0
	beq	.L3cd6
	mov	r0, r9
	ldr	r1, [r0, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r6
	bl	OvlFunc_3b48
	cmp	r0, #0
	beq	.L3c1c
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L3cd6
.L3c1c:
	ldr	r3, [r6, #8]
	str	r3, [r7]
	mov	r0, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	mov	r1, r6
	bl	OvlFunc_3b48
	cmp	r0, #0
	beq	.L3c48
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L3cd6
.L3c48:
	mov	r3, #0
	mov	r2, r6
	add	r2, #0x22
	mov	r11, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r0, r9
	ldr	r1, [r0, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r6
	mov	r1, r7
	bl	__Func_120dc
	cmp	r0, #0
	bgt	.L3cd6
	ldr	r5, =0x3333
	mov	r1, #8
	mov	r0, r8
	bl	__Func_c300
	mov	r0, #0xf
	bl	__Func_30f8
	str	r5, [r6, #0x30]
	str	r5, [r6, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r6
	bl	__Func_d14c
	mov	r0, r8
	str	r5, [r0, #0x30]
	str	r5, [r0, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	__Func_d14c
	mov	r0, #0xee
	bl	__Func_f9080
	mov	r0, r6
	bl	__Func_ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	ldr	r3, [r7]
	str	r3, [r6, #8]
	ldr	r3, [r7, #8]
	mov	r2, r11
	str	r3, [r6, #0x10]
	str	r2, [r6, #0x24]
	str	r2, [r6, #0x2c]
	mov	r0, r8
	mov	r1, #1
	bl	__Func_c300
.L3cd6:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3b90

.thumb_func_start OvlFunc_3cf8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__Func_92054
	mov	r6, r0
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r7, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	ldr	r1, =0xfff00000
	and	r7, r3
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	and	r3, r1
	add	r3, r2
	lsl	r0, #13
	mov	r8, r1
	mov	r2, r5
	mov	r1, r7
	str	r3, [r5, #8]
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_3b48
	cmp	r0, #0
	bne	.L3d82
	ldr	r3, [r6, #8]
	mov	r2, r8
	mov	r1, #0x80
	lsl	r1, #12
	and	r3, r2
	add	r3, r1
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	and	r3, r2
	add	r3, r1
	lsl	r0, #14
	mov	r1, r7
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_3b48
.L3d82:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3cf8

	.section .data

.L40c0:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x40c0, (0x40c4-0x40c0)
.L40c4:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x40c4, (0x40ce-0x40c4)
.L40ce:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x40ce, (0x40f6-0x40ce)
.L40f6:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x40f6, (0x4174-0x40f6)
.L4174:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4174, (0x4194-0x4174)
.L4194:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4194, (0x4250-0x4194)
.L4250:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4250, (0x4264-0x4250)
.L4264:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4264, (0x4288-0x4264)
.L4288:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4288, (0x43d4-0x4288)
.L43d4:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x43d4, (0x4414-0x43d4)
.L4414:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4414, (0x4474-0x4414)
.L4474:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4474, (0x448c-0x4474)
.L448c:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x448c, (0x4834-0x448c)
.L4834:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4834, (0x4838-0x4834)
.L4838:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4838, (0x483c-0x4838)
.L483c:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x483c, (0x4a1c-0x483c)
.L4a1c:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4a1c, (0x4a1e-0x4a1c)
.L4a1e:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4a1e, (0x4a4a-0x4a1e)
.L4a4a:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4a4a, (0x4ac8-0x4a4a)
.L4ac8:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4ac8, (0x4b46-0x4ac8)
.L4b46:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4b46, (0x4b48-0x4b46)
.L4b48:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4b48, (0x4b9c-0x4b48)
.L4b9c:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4b9c

	.section .bss

	.lcomm	.L4bf0, 4
	.lcomm	.L4bf4, 4
	.lcomm	.L4bf8, 4
	.lcomm	.L4bfc, 4
	.lcomm	.L4c00, 4
	.lcomm	.L4c04, 4
	.lcomm	.L4c08, 4
	.lcomm	.L4c0c, 4
	.lcomm	.L4c10, 4
	.lcomm	.L4c14, 4
	.lcomm	.L4c18, 4
	.lcomm	.L4c1c, 4
	.lcomm	.L4c20, 4
	.lcomm	.L4c24, 4
	.lcomm	.L4c28, 4
	.lcomm	.L4c2c, 4
	.lcomm	.L4c30, 4
	.lcomm	.L4c34, 4
	.lcomm	.L4c38, 4
	.lcomm	.L4c3c, 4
	.lcomm	.L4c40, 4
	.lcomm	.L4c44, 4
	.lcomm	.L4c48, 4
	.lcomm	.Lunused_4c4c, 4
	.lcomm	.L4c50, 0xc
	.lcomm	.L4c5c, 4
	.lcomm	.L4c60, 0x30
	.lcomm	.L4c90, 4
	.lcomm	.L4c94, 4
	.lcomm	.L4c98, 4
	.lcomm	.L4c9c, 4
	.lcomm	.L4ca0, 4
	.lcomm	.L4ca4, 4
