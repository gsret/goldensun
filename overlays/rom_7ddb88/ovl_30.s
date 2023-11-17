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
	bl	OvlFunc_common1_2060
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
	bl	OvlFunc_common1_2060
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
	bl	OvlFunc_common1_16f8
	bl	__Func_916b0
	mov	r1, #0x59
	mov	r0, #0x4d
	bl	OvlFunc_common1_1814
	mov	r6, r0
	bl	OvlFunc_common1_1708
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
	bl	OvlFunc_common1_fac
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
	bl	OvlFunc_common1_1608
	mov	r1, #0x4d
	mov	r0, #0x28
	bl	OvlFunc_common1_1608
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
	bl	OvlFunc_common1_1ecc
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
	bl	OvlFunc_common1_78
	bl	OvlFunc_common1_0
	mov	r0, #2
	bl	OvlFunc_common1_ea0
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
	bl	OvlFunc_common1_1fb4
	b	.L10c0
.L105c:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_148
	bl	__Func_41d8
	mov	r0, #0x28
	bl	__Func_92924
	mov	r0, #0x29
	bl	__Func_92924
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L10c0
	bl	OvlFunc_common1_0
	mov	r0, #1
	bl	OvlFunc_common1_78
	mov	r0, #0
	bl	OvlFunc_common1_ea0
	b	.L10c0
.L108e:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L10c0
	mov	r0, #0x22
	bl	OvlFunc_10dc
	bl	OvlFunc_common1_488
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
	bl	OvlFunc_common1_2c4
	b	.L1412
.L130a:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
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
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0xd8
	sub	r5, #0x40
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r2, #0xd8
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r5
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x95
	mov	r2, #0xf8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_common1_15b8
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
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L1524
.L143e:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
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
	bl	OvlFunc_common1_15b8
	mov	r1, #0x85
	lsl	r1, #3
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
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
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L16be
.L1556:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
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
	bl	OvlFunc_common1_15b8
	mov	r2, #0xe8
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, r7
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xd2
	lsl	r1, #2
	mov	r2, #0xe8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
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
	bl	OvlFunc_common1_1254
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
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L1884
.L16ee:
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
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
	bl	OvlFunc_common1_15b8
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
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
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
	bl	OvlFunc_common1_2c4
	b	.L1b1a
.L19da:
	bl	__Func_916b0
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_4cc
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
	bl	OvlFunc_common1_1078
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, r5
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
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
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x9c
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0
	mov	r0, r7
	bl	__Func_92f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
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
	bl	OvlFunc_common1_588
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
	bl	OvlFunc_common1_5e4
	bl	__Func_91750
.L1b1a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19bc

	.section .data

.L40c0:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x40c0, (0x40c4-0x40c0)

	.section .data1

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
