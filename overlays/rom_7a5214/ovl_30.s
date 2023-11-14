	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, [r0, #0x50]
	mov	r3, #3
	ldrb	r2, [r0, #9]
	and	r1, r3
	mov	r3, #0xd
	neg	r3, r3
	lsl	r1, #2
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #9]
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_48
	push	{r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r0, r3
	mov	r2, r5
	mov	r1, r4
	mov	r3, r6
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L96
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, r5
	strb	r3, [r1, #9]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	add	r2, #4
	mov	r3, #8
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #0xe
	bl	__Func_929d8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c548
	mov	r0, r5
	b	.L98
.L96:
	mov	r0, #0
.L98:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_48

.thumb_func_start OvlFunc_a0
	push	{r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r0, r3
	mov	r2, r5
	mov	r1, r4
	mov	r3, r6
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.Lfa
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, r5
	strb	r3, [r1, #9]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	add	r2, #4
	mov	r3, #8
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #0xf
	bl	__Func_929d8
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r5
	b	.Lfc
.Lfa:
	mov	r0, #0
.Lfc:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_a0

.thumb_func_start OvlFunc_104
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x44]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r2, [r0, #0x48]
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, [r0, #0x4c]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r2, [r0, #0x30]
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldr	r1, [r0, #0x50]
	add	r0, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r0]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	bx	lr
.func_end OvlFunc_104

.thumb_func_start OvlFunc_13c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r6, r1
	ldr	r1, [sp, #0x30]
	mov	r5, r0
	mov	r0, #0
	mov	r8, r2
	str	r3, [sp, #4]
	mov	r10, r1
	ldr	r7, [sp, #0x34]
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #13
	mov	r2, r10
	and	r3, r2
	mov	r9, r0
	cmp	r3, #0
	beq	.L17a
	cmp	r7, #0
	beq	.L17a
	mov	r3, #0x18
	ldrsh	r0, [r7, r3]
	mov	r2, r6
	b	.L17e
.L17a:
	mov	r2, r6
	mov	r0, #0xde
.L17e:
	mov	r1, r5
	mov	r3, r8
	bl	__Func_c150
	mov	r6, r0
	cmp	r6, #0
	bne	.L18e
	b	.L2f6
.L18e:
	ldr	r1, [r6, #0x50]
	mov	r8, r1
	mov	r1, r10
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	mov	r0, r6
	bl	__Func_c300
	mov	r3, r10
	ldr	r2, =.L1da8
	and	r3, r5
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, r6
	mov	r11, r3
	bl	__Func_c2d8
	mov	r3, r6
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, r8
	add	r3, #0x26
	strb	r0, [r3]
	ldr	r3, =OvlFunc_104
	str	r3, [r6, #0x6c]
	ldr	r3, [sp, #4]
	str	r3, [r6, #0x44]
	ldr	r3, [sp, #0x28]
	str	r3, [r6, #0x48]
	ldr	r3, [sp, #0x2c]
	mov	r1, r9
	str	r3, [r6, #0x4c]
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r8
	ldrb	r1, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	mov	r9, r3
	and	r3, r1
	orr	r3, r2
	mov	r2, r6
	mov	r1, r8
	add	r2, #0x64
	strb	r3, [r1, #9]
	mov	r3, r2
	str	r0, [r6, #0x30]
	str	r0, [r6, #0x34]
	str	r2, [sp]
	strh	r0, [r3]
	ldr	r3, =0xffff0000
	mov	r1, r10
	and	r3, r1
	mov	r5, #3
	cmp	r3, #0
	beq	.L2f6
	cmp	r7, #0
	beq	.L2f6
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.L21c
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	__Func_929d8
.L21c:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L248
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r8
	ldrb	r2, [r7]
	ldrb	r1, [r3, #9]
	and	r2, r5
	mov	r3, r9
	and	r3, r1
	lsl	r2, #2
	orr	r3, r2
	mov	r1, r8
	strb	r3, [r1, #9]
.L248:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r10
	and	r2, r3
	cmp	r2, #0
	beq	.L25c
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.L25c:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L2a6
	ldr	r3, =.L1da8
	mov	r1, r11
	ldr	r5, [r3, r1]
	cmp	r2, #0
	beq	.L28a
	ldr	r0, [r7, #0x10]
	ldr	r3, [r6, #0x18]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	bl	_Func_af0
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r3, [r6, #0x1c]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	b	.L2a0
.L28a:
	ldr	r0, [r7, #0x10]
	ldr	r2, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r2
	bl	_Func_af0
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r3, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r3
.L2a0:
	bl	_Func_af0
	str	r0, [r6, #0x34]
.L2a6:
	mov	r3, #0x80
	lsl	r3, #14
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L2c2
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	ldr	r1, [r7, #0x1c]
	mov	r0, r6
	bl	__Func_c2d8
.L2c2:
	mov	r3, #0x80
	lsl	r3, #15
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2d4
	ldrh	r3, [r7, #0x20]
	mov	r1, r8
	strh	r3, [r1, #0x1e]
.L2d4:
	mov	r3, #0x80
	lsl	r3, #16
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2e6
	ldrh	r3, [r7, #0x22]
	ldr	r1, [sp]
	strh	r3, [r1]
.L2e6:
	mov	r3, #0x80
	lsl	r3, #17
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2f6
	ldr	r3, [r7, #0x24]
	str	r3, [r6, #0x6c]
.L2f6:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13c

.thumb_func_start OvlFunc_314
	ldr	r0, =.L25cc
	bx	lr
.func_end OvlFunc_314

.thumb_func_start OvlFunc_31c
	ldr	r0, =.L29d4
	bx	lr
.func_end OvlFunc_31c

.thumb_func_start OvlFunc_324
	ldr	r0, =.L2a14
	bx	lr
.func_end OvlFunc_324

.thumb_func_start OvlFunc_32c
	ldr	r0, =.L2a58
	bx	lr
.func_end OvlFunc_32c

.thumb_func_start OvlFunc_334
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r1, [sp, #8]
	mov	r11, r2
	mov	r1, #0xee
	ldr	r2, =ewram_240
	str	r0, [sp, #0xc]
	lsl	r1, #1
	mov	r9, r3
	add	r3, r2, r1
	ldr	r3, [r3]
	asr	r3, #20
	add	r3, #0x40
	add	r1, #8
	mov	r10, r3
	add	r3, r2, r1
	ldr	r3, [r3]
	add	r1, #0x10
	asr	r3, #20
	mov	r8, r3
	add	r3, r2, r1
	ldr	r7, [r3]
	mov	r0, r7
	bl	__Func_92054
	ldr	r5, =.L2dd0
	ldr	r2, [r5]
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	mov	r6, r0
	cmp	r9, r3
	bne	.L382
	b	.L480
.L382:
	mov	r3, r9
	strh	r3, [r2]
	ldr	r0, [sp, #0xc]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3b4
	mov	r1, r10
	mov	r3, r8
	str	r1, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #8]
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	ldr	r0, [sp, #0xc]
	bl	__Func_79358
	b	.L480

	.pool_aligned

.L3b4:
	ldr	r2, [r5]
	ldr	r3, =0xffffffff
	strh	r3, [r2]
	mov	r3, r10
	str	r3, [sp]
	mov	r1, r11
	mov	r3, r8
	str	r3, [sp, #4]
	ldr	r0, [sp, #8]
	mov	r2, #1
	mov	r3, #1
	add	r1, #1
	bl	__Func_105d4
	mov	r0, #0xce
	bl	__Func_f9080
	bl	__Func_916b0
	ldr	r0, =0x2d
	mov	r1, r9
	bl	__Func_91e3c
	mov	r0, r7
	mov	r1, #0x1b
	bl	__Func_924d4
	mov	r0, r7
	bl	__Func_92054
	mov	r1, #0
	b	.L3fc

	.pool_aligned

.L3fc:
	bl	__Func_c528
	mov	r0, r7
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	mov	r3, #0
	bl	__Func_933f8
	mov	r3, r6
	mov	r5, #2
	add	r3, #0x55
	strb	r5, [r3]
	ldr	r3, =0xff600000
	str	r3, [r6, #0x14]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #0x48]
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r0, #3
	bl	__Func_9163c
	mov	r3, r6
	add	r3, #0x22
	strb	r5, [r3]
	mov	r0, r7
	mov	r1, #3
	bl	__Func_92b08
	ldr	r7, .L474	@ 0x2000
	mov	r5, #0x1d
.L450:
	ldrh	r3, [r6, #6]
	add	r3, r7
	strh	r3, [r6, #6]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_30f8
	cmp	r5, #0
	bge	.L450
	mov	r1, r9
	cmp	r1, #0x32
	beq	.L480
	mov	r0, #0x91
	lsl	r0, #1
	bl	__Func_79358
	b	.L480

	.align	2, 0
.L474:
	.word	0x2000
	.pool

.L480:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_334

.thumb_func_start OvlFunc_494
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	mov	r1, #0x40
	mov	r2, #0x23
	mov	r3, #0x15
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_494

.thumb_func_start OvlFunc_4a8
	push	{lr}
	ldr	r0, =0x201
	mov	r1, #0x41
	mov	r2, #0x23
	mov	r3, #0x16
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_4a8

.thumb_func_start OvlFunc_4c0
	push	{lr}
	ldr	r0, =0x202
	mov	r1, #0x42
	mov	r2, #0x23
	mov	r3, #0x17
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c0

.thumb_func_start OvlFunc_4d8
	push	{lr}
	ldr	r0, =0x203
	mov	r1, #0x43
	mov	r2, #0x23
	mov	r3, #0x18
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d8

.thumb_func_start OvlFunc_4f0
	push	{lr}
	mov	r0, #0x81
	lsl	r0, #2
	mov	r1, #0x44
	mov	r2, #0x23
	mov	r3, #0x19
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_4f0

.thumb_func_start OvlFunc_504
	push	{lr}
	ldr	r0, =0x205
	mov	r1, #0x45
	mov	r2, #0x23
	mov	r3, #0x1a
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_504

.thumb_func_start OvlFunc_51c
	push	{lr}
	ldr	r0, =0x206
	mov	r1, #0x46
	mov	r2, #0x23
	mov	r3, #0x1b
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_51c

.thumb_func_start OvlFunc_534
	push	{lr}
	ldr	r0, =0x207
	mov	r1, #0x47
	mov	r2, #0x23
	mov	r3, #0x1c
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_534

.thumb_func_start OvlFunc_54c
	push	{lr}
	mov	r0, #0x82
	lsl	r0, #2
	mov	r1, #0x48
	mov	r2, #0x23
	mov	r3, #0x1d
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_54c

.thumb_func_start OvlFunc_560
	push	{lr}
	ldr	r0, =0x209
	mov	r1, #0x49
	mov	r2, #0x23
	mov	r3, #0x1f
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_560

.thumb_func_start OvlFunc_578
	push	{lr}
	ldr	r0, =0x20a
	mov	r1, #0x4a
	mov	r2, #0x23
	mov	r3, #0x20
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_578

.thumb_func_start OvlFunc_590
	push	{lr}
	ldr	r0, =0x20b
	mov	r1, #0x4f
	mov	r2, #0x23
	mov	r3, #0x32
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_590

.thumb_func_start OvlFunc_5a8
	push	{lr}
	mov	r0, #0x83
	lsl	r0, #2
	mov	r1, #0x4b
	mov	r2, #0x23
	mov	r3, #0x33
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_5a8

.thumb_func_start OvlFunc_5bc
	push	{lr}
	ldr	r0, =0x20d
	mov	r1, #0x4c
	mov	r2, #0x23
	mov	r3, #0x34
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_5bc

.thumb_func_start OvlFunc_5d4
	push	{lr}
	ldr	r0, =0x20e
	mov	r1, #0x4d
	mov	r2, #0x23
	mov	r3, #0x35
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_5d4

.thumb_func_start OvlFunc_5ec
	push	{lr}
	ldr	r0, =0x20f
	mov	r1, #0x4e
	mov	r2, #0x23
	mov	r3, #0x36
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_5ec

.thumb_func_start OvlFunc_604
	push	{lr}
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, #0x50
	mov	r2, #0x23
	mov	r3, #0x37
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_604

.thumb_func_start OvlFunc_618
	push	{lr}
	ldr	r0, =0x211
	mov	r1, #0x51
	mov	r2, #0x23
	mov	r3, #0x38
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_618

.thumb_func_start OvlFunc_630
	push	{lr}
	ldr	r0, =0x212
	mov	r1, #0x52
	mov	r2, #0x23
	mov	r3, #0x39
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_630

.thumb_func_start OvlFunc_648
	push	{lr}
	ldr	r0, =0x213
	mov	r1, #0x53
	mov	r2, #0x23
	mov	r3, #0x3a
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_648

.thumb_func_start OvlFunc_660
	push	{lr}
	mov	r0, #0x85
	lsl	r0, #2
	mov	r1, #0x54
	mov	r2, #0x23
	mov	r3, #0x3b
	bl	OvlFunc_334
	pop	{r0}
	bx	r0
.func_end OvlFunc_660

.thumb_func_start OvlFunc_674
	push	{lr}
	bl	__Func_93c00
	cmp	r0, #0
	bne	.L686
	ldr	r3, =.L2dd0
	ldr	r2, [r3]
	ldr	r3, .L68c	@ 0xffffffff
	strh	r3, [r2]
.L686:
	pop	{r0}
	bx	r0

	.align	2, 0
.L68c:
	.word	0xffffffff
.func_end OvlFunc_674

.thumb_func_start OvlFunc_694
	ldr	r0, =.L2ae8
	bx	lr
.func_end OvlFunc_694

.thumb_func_start OvlFunc_69c
	push	{r5, r6, lr}
	mov	r0, #3
	bl	__Func_79338
	mov	r6, r0
	bl	__Func_916b0
	mov	r0, #0x11
	bl	__Func_f9080
	ldr	r0, =0x14ce
	bl	__Func_92b94
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x8009
	bl	__Func_93040
	mov	r0, #0x1d
	bl	__Func_f9080
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
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #3
	bl	__Func_92064
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L742
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L742:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L756
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L756:
	cmp	r6, #0
	beq	.L776
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L76e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L76e:
	ldr	r1, =.L1e2c
	mov	r0, #3
	bl	__Func_9207c
.L776:
	ldr	r1, =.L1db4
	mov	r0, #0
	bl	__Func_9207c
	ldr	r1, =.L1ddc
	mov	r0, #1
	bl	__Func_9207c
	ldr	r1, =.L1e04
	mov	r0, #2
	bl	__Func_920fc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0xb
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #8
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	bl	OvlFunc_1424
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0xb
	bl	OvlFunc_1424
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xb
	bl	OvlFunc_1424
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x2d
	mov	r1, #0x13
	bl	__Func_91f90
	mov	r0, #0x24
	mov	r1, #0
	bl	__Func_91eb0
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_69c

.thumb_func_start OvlFunc_918
	push	{r5, r6, r7, lr}
	mov	r0, #3
	sub	sp, #8
	bl	__Func_79338
	mov	r7, r0
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	mov	r1, #2
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0xb8
	bl	__Func_78698
	mov	r0, #0x11
	bl	__Func_f9080
	bl	__Func_916b0
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xa6
	mov	r2, #0xa0
	lsl	r1, #16
	lsl	r2, #15
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r6, #0xc0
	lsl	r6, #8
	mov	r1, #0x94
	mov	r2, #0xb4
	lsl	r1, #16
	lsl	r2, #15
	strh	r6, [r0, #6]
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #0xb6
	mov	r2, #0xb4
	strh	r6, [r0, #6]
	lsl	r1, #16
	mov	r0, #2
	lsl	r2, #15
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_92054
	strh	r6, [r0, #6]
	cmp	r7, #0
	beq	.L9ec
	mov	r1, #0xa6
	mov	r2, #0xd0
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r0, #3
	bl	__Func_92054
	strh	r6, [r0, #6]
.L9ec:
	mov	r0, #0
	bl	OvlFunc_1424
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x30
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_933d4
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0x98
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #0x1a
	mov	r1, #3
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #4
	bl	__Func_30f8
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r1, #0x23
	mov	r3, #4
	mov	r2, #1
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #0x50
	bl	__Func_30f8
	ldr	r0, =0x14d3
	bl	__Func_92b94
	mov	r2, #0x14
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	bl	OvlFunc_1424
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_f9080
	mov	r0, #4
	bl	OvlFunc_1424
	ldr	r0, =0x8009
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x50
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x8009
	bl	__Func_93040
	mov	r0, #0
	bl	OvlFunc_1424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0xa
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x8002
	bl	__Func_93040
	mov	r0, #0
	bl	OvlFunc_1424
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0xa
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r1, r6
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #4
	bl	OvlFunc_1424
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_92c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.Lcf6
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	ldr	r0, =0x14dd
	bl	__Func_92b94
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #2
	ldr	r1, =0x103
	mov	r2, #0xa
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__Func_92f84
.Lcf6:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #4
	bl	OvlFunc_1424
	ldr	r0, =0x14df
	bl	__Func_92b94
	ldr	r0, =0x8009
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0xa
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_93040
	mov	r0, #0
	bl	OvlFunc_1424
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	b	.Ld90

	.pool_aligned

.Ld90:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r6
	mov	r2, #0x14
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r2, =.L2dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L2dc0
	mov	r3, #0xa8
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_162c
	mov	r3, #0xd0
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0xdc
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r0, #4
	bl	OvlFunc_1424
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_93040
	mov	r0, #0
	bl	OvlFunc_1424
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_92f84
	ldr	r1, =.L1e54
	mov	r0, #8
	bl	__Func_920fc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	ldr	r0, =0x8002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	cmp	r7, #0
	beq	.Leba
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	ldr	r0, =0x8003
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
.Leba:
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	ldr	r5, =.L1ec8
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	cmp	r7, #0
	beq	.Lef0
	mov	r0, #3
	mov	r1, r5
	bl	__Func_9207c
.Lef0:
	mov	r1, r5
	mov	r0, #2
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x844
	bl	__Func_79358
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1244
	bl	__Func_41d8
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918

.thumb_func_start OvlFunc_f58
	push	{r5, r6, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.Lf6e
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lf6e
	bl	OvlFunc_918
.Lf6e:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x844
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lfde
	mov	r3, #0x5d
	str	r3, [sp]
	mov	r6, #0xa
	mov	r0, #0x79
	mov	r1, #0x22
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r5, #0x1e
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #3
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_105d4
	b	.Lff2
.Lfde:
	mov	r3, #0xa
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10704
.Lff2:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f58

.thumb_func_start OvlFunc_1004
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	bl	__Func_92054
	ldr	r2, =.L2dd0
	ldr	r3, =ewram_1000
	mov	r8, r0
	str	r3, [r2]
	bl	OvlFunc_1224
	ldr	r5, =0xfff60000
	mov	r3, r8
	mov	r1, r8
	add	r3, #0x55
	mov	r6, #0
	strb	r6, [r3]
	mov	r0, #9
	str	r5, [r1, #0xc]
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
	mov	r1, #0xf
	str	r5, [r0, #0xc]
	mov	r0, #9
	bl	__Func_92950
	mov	r0, #0
	bl	OvlFunc_1424
	ldr	r7, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r2, r7
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	mov	r8, r2
	cmp	r3, #0x13
	beq	.L1062
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_1244
	lsl	r1, #4
	bl	__Func_41d8
.L1062:
	ldr	r0, =0x844
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1080
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L1080:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L108e
	bl	OvlFunc_17ec
.L108e:
	ldr	r6, =iwram_1e70
	ldr	r2, [r6]
	mov	r14, r2
	mov	r3, r14
	add	r3, #0xec
	ldr	r0, [r3]
	mov	r5, #0x82
	mov	r3, #0xa0
	lsl	r3, #16
	lsl	r5, #1
	add	r5, r14
	ldr	r4, =Func_888
	add	r0, r3
	ldr	r1, =0x1999
	.call_via r4
	ldr	r3, [r5, #8]
	add	r3, r0
	str	r3, [r5, #8]
	mov	r3, r14
	add	r3, #0xf0
	ldr	r0, [r3]
	mov	r1, #0x88
	lsl	r1, #16
	add	r0, r1
	ldr	r1, =0x1999
	.call_via r4
	ldr	r3, [r5, #0xc]
	add	r3, r0
	str	r3, [r5, #0xc]
	ldr	r3, =0xe666
	ldr	r0, =0x201
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x14]
	bl	__Func_79358
	ldr	r0, =0x20d
	bl	__Func_79358
	ldr	r0, =0x20f
	bl	__Func_79358
	ldr	r0, =0x213
	bl	__Func_79358
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	bl	OvlFunc_f58
	ldr	r3, [r6, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r1, r8
	sub	r2, #0xe
	mov	r3, #0
	ldrsh	r6, [r1, r3]
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r8, r3
	mov	r0, r8
	bl	__Func_92054
	mov	r7, r0
	cmp	r6, #0x32
	beq	.L112a
	cmp	r6, #0x28
	beq	.L112a
	cmp	r6, #0x1e
	beq	.L112a
	cmp	r6, #0x14
	bne	.L11b0
.L112a:
	bl	__Func_91dc8
	mov	r1, #0x1b
	mov	r0, r8
	bl	__Func_924d4
	mov	r0, r8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r8
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	mov	r3, #0
	bl	__Func_933f8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #2
	strb	r5, [r3]
	mov	r3, #0xc8
	lsl	r3, #15
	str	r3, [r7, #0xc]
	ldr	r3, =0xff600000
	str	r3, [r7, #0x14]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x48]
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r1, r6
	sub	r1, #0xa
	ldr	r0, =0x2d
	bl	__Func_91e3c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, r7
	add	r3, #0x22
	strb	r5, [r3]
	mov	r1, #3
	mov	r0, r8
	bl	__Func_92b08
	mov	r0, #2
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #8
	bl	__Func_9163c
	b	.L11ce
.L11b0:
	cmp	r6, #0xa
	bne	.L11c4
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L11ce
	bl	OvlFunc_18b8
	b	.L11ce
.L11c4:
	cmp	r6, #0x13
	bne	.L11ce
	mov	r0, #1
	bl	OvlFunc_f58
.L11ce:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1004

.thumb_func_start OvlFunc_1224
	ldr	r2, =iwram_1ed0
	mov	r0, #0xa0
	ldr	r1, [r2]
	ldr	r3, =REG_DMA3SAD
	lsl	r0, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_1224

.thumb_func_start OvlFunc_1244
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xbf
	ldr	r2, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r1, #1
	mov	r8, r3
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #4
	cmp	r3, #0
	beq	.L1268
	b	.L1400
.L1268:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0x1f
	and	r3, r2
	cmp	r3, #0
	beq	.L1276
	b	.L1400
.L1276:
	ldr	r1, =0x5000020
	mov	r3, #0x20
	mov	r2, #0
	add	r8, r3
	mov	r9, r1
	mov	r10, r2
.L1282:
	ldr	r3, =.L2db8
	ldr	r3, [r3]
	ldr	r1, =.L1f00
	lsl	r3, #2
	add	r2, r3, #4
	ldr	r4, [r1, r3]
	add	r3, #8
	ldr	r6, [r1, r3]
	mov	r3, r10
	ldr	r7, [r1, r2]
	cmp	r3, #0x2f
	bls	.L12da
	lsr	r5, r4, #31
	mov	r0, r4
	mov	r1, #3
	str	r4, [sp]
	add	r5, r4, r5
	bl	_Func_af0
	asr	r5, #1
	ldr	r4, [sp]
	add	r5, r0
	sub	r4, r5
	mov	r0, r7
	mov	r1, #3
	str	r4, [sp]
	bl	_Func_af0
	lsr	r5, r7, #31
	add	r5, r7, r5
	asr	r5, #1
	add	r5, r0
	mov	r1, #3
	mov	r0, r6
	bl	_Func_af0
	sub	r7, r5
	lsr	r5, r6, #31
	add	r5, r6, r5
	asr	r5, #1
	add	r5, r0
	sub	r6, r5
	ldr	r4, [sp]
	b	.L1384
.L12da:
	mov	r1, r10
	cmp	r1, #0x1f
	bls	.L1330
	mov	r0, r4
	mov	r1, #3
	str	r4, [sp]
	bl	_Func_af0
	ldr	r4, [sp]
	mov	r3, r4
	cmp	r4, #0
	bge	.L12f4
	add	r3, r4, #3
.L12f4:
	asr	r3, #2
	add	r3, r0, r3
	sub	r4, r3
	mov	r0, r7
	mov	r1, #3
	str	r4, [sp]
	bl	_Func_af0
	mov	r3, r7
	ldr	r4, [sp]
	cmp	r7, #0
	bge	.L130e
	add	r3, r7, #3
.L130e:
	asr	r3, #2
	add	r3, r0, r3
	mov	r1, #3
	mov	r0, r6
	sub	r7, r3
	str	r4, [sp]
	bl	_Func_af0
	mov	r3, r6
	ldr	r4, [sp]
	cmp	r6, #0
	bge	.L1328
	add	r3, r6, #3
.L1328:
	asr	r3, #2
	add	r3, r0, r3
	sub	r6, r3
	b	.L1384
.L1330:
	mov	r2, r10
	cmp	r2, #0xf
	bls	.L1384
	mov	r5, r4
	cmp	r4, #0
	bge	.L133e
	add	r5, r4, #3
.L133e:
	mov	r0, r4
	mov	r1, #5
	str	r4, [sp]
	bl	_Func_af0
	asr	r5, #2
	ldr	r4, [sp]
	add	r5, r0
	sub	r4, r5
	mov	r5, r7
	cmp	r7, #0
	bge	.L1358
	add	r5, r7, #3
.L1358:
	mov	r0, r7
	mov	r1, #5
	str	r4, [sp]
	bl	_Func_af0
	asr	r5, #2
	add	r5, r0
	sub	r7, r5
	ldr	r4, [sp]
	mov	r5, r6
	cmp	r6, #0
	bge	.L1372
	add	r5, r6, #3
.L1372:
	mov	r0, r6
	mov	r1, #5
	str	r4, [sp]
	bl	_Func_af0
	asr	r5, #2
	add	r5, r0
	ldr	r4, [sp]
	sub	r6, r5
.L1384:
	mov	r1, r8
	ldrh	r3, [r1]
	mov	r2, #0x1f
	mov	r0, r3
	lsr	r1, r3, #5
	and	r0, r2
	lsr	r3, #10
	and	r1, r2
	and	r3, r2
	add	r0, r4
	add	r1, r7
	add	r3, r6
	cmp	r0, #0x1f
	ble	.L13a2
	mov	r0, #0x1f
.L13a2:
	cmp	r1, #0x1f
	ble	.L13a8
	mov	r1, #0x1f
.L13a8:
	cmp	r3, #0x1f
	ble	.L13ae
	mov	r3, #0x1f
.L13ae:
	cmp	r0, #0
	bge	.L13b4
	mov	r0, #0
.L13b4:
	cmp	r1, #0
	bge	.L13ba
	mov	r1, #0
.L13ba:
	cmp	r3, #0
	bge	.L13c0
	mov	r3, #0
.L13c0:
	lsl	r2, r1, #5
	lsl	r3, #10
	orr	r3, r2
	mov	r1, #1
	mov	r2, r9
	orr	r3, r0
	add	r10, r1
	strh	r3, [r2]
	mov	r3, #2
	mov	r2, r10
	add	r9, r3
	add	r8, r3
	cmp	r2, #0x3e
	bhi	.L13de
	b	.L1282
.L13de:
	ldr	r5, =.L2db8
	bl	__Func_4458
	mov	r3, #7
	and	r0, r3
	lsl	r2, r0, #1
	ldr	r3, [r5]
	add	r2, r0
	add	r3, r2
	str	r3, [r5]
	ldr	r2, =.L1f00
	lsl	r3, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0x63
	bne	.L1400
	mov	r3, #0
	str	r3, [r5]
.L1400:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1244

.thumb_func_start OvlFunc_1424
	push	{lr}
	cmp	r0, #0xc
	bls	.L142c
	b	.L159c
.L142c:
	ldr	r2, =.L1434
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1434:
	.word	.L1468
	.word	.L14e8
	.word	.L1480
	.word	.L1498
	.word	.L14b0
	.word	.L14f2
	.word	.L159c
	.word	.L150a
	.word	.L158a
	.word	.L1522
	.word	.L153a
	.word	.L1552
	.word	.L1594
.L1468:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	b	.L159c
.L1480:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	b	.L159c
.L1498:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #4
	bl	__Func_924d4
	b	.L159c
.L14b0:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #3
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #3
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
.L14e8:
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	b	.L159c
.L14f2:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	b	.L159c
.L150a:
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #8
	bl	__Func_924d4
	b	.L159c
.L1522:
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #9
	bl	__Func_924d4
	b	.L159c
.L153a:
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_924d4
	b	.L159c
.L1552:
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #8
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #8
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
.L158a:
	mov	r0, #8
	mov	r1, #6
	bl	__Func_924d4
	b	.L159c
.L1594:
	mov	r0, #8
	mov	r1, #6
	bl	__Func_924d4
.L159c:
	mov	r0, #0xc
	bl	__Func_30f8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1424

.thumb_func_start OvlFunc_15ac
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x64
	mov	r1, #0
	ldrsh	r2, [r7, r1]
	sub	sp, #0xc
	cmp	r2, #0x4f
	bgt	.L1610
	ldr	r3, [r6, #0x38]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x3c]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x40]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r1, r2, #1
	add	r1, r2
	lsl	r1, #8
	add	r1, r3
	lsl	r0, r2, #16
	mov	r2, r5
	bl	__Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	ldrh	r2, [r7]
	cmp	r3, #0x27
	bgt	.L160a
	ldr	r2, =0xfffffae2
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldrh	r2, [r7]
.L160a:
	add	r3, r2, #1
	strh	r3, [r7]
	b	.L161e
.L1610:
	ldr	r3, [r6, #0x50]
	ldrb	r0, [r3, #0x1c]
	bl	__Func_3f3c
	mov	r0, r6
	bl	__Func_c0f4
.L161e:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15ac

.thumb_func_start OvlFunc_162c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.L2dcc
	ldr	r5, [r7]
	mov	r0, #0
	mov	r11, r0
	mov	r1, #0xa
	mov	r0, r5
	bl	_Func_af0
	mov	r6, r0
	cmp	r5, #0x2c
	bls	.L1652
	b	.L17b2
.L1652:
	ldr	r2, =.L165c
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L165c:
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17aa
.L1710:
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r3, #6
	mov	r7, #0
	sub	r1, r3, r6
	cmp	r7, r1
	bcs	.L17aa
	mov	r3, #0xb4
	mov	r2, #0
	lsl	r3, #1
	ldr	r6, =.L2dc0
	mov	r9, r2
	mov	r8, r1
	mov	r10, r3
.L172e:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L17a4
	mov	r1, r11
	ldr	r0, [r5, #0x50]
	bl	__Func_96c48
	mov	r3, r5
	add	r3, #0x55
	mov	r11, r0
	mov	r0, r9
	strb	r0, [r3]
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r9
	strh	r2, [r3]
	mov	r1, r8
	mov	r0, r10
	bl	_Func_b60
	mul	r0, r7
	mov	r1, r10
	lsl	r0, #16
	bl	_Func_b60
	mov	r3, r5
	add	r3, #0x66
	strh	r0, [r3]
	ldr	r3, [r6]
	str	r3, [r5, #0x38]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x3c]
	ldr	r3, [r6, #8]
	str	r3, [r5, #0x40]
	ldr	r3, =0x19999
	str	r3, [r5, #0x30]
	ldr	r3, =OvlFunc_15ac
	str	r3, [r5, #0x6c]
.L17a4:
	add	r7, #1
	cmp	r7, r8
	bcc	.L172e
.L17aa:
	ldr	r0, =0x121
	bl	__Func_f9080
	ldr	r7, =.L2dcc
.L17b2:
	ldr	r3, [r7]
	add	r3, #1
	str	r3, [r7]
	cmp	r3, #0x78
	ble	.L17c0
	mov	r3, #0
	str	r3, [r7]
.L17c0:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_162c

.thumb_func_start OvlFunc_17ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r6, =.L1ca8
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #1
	neg	r2, r2
	sub	sp, #8
	cmp	r3, r2
	beq	.L183c
	mov	r8, r2
	mov	r5, #0
	mov	r7, #1
.L1808:
	ldrsh	r0, [r6, r5]
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1832
	add	r3, r5, #2
	ldrsh	r3, [r6, r3]
	cmp	r3, #0
	beq	.L1832
	add	r3, r5, #4
	ldrsh	r0, [r6, r3]
	add	r3, r5, #6
	ldrsh	r1, [r6, r3]
	add	r3, #2
	ldrsh	r2, [r6, r3]
	add	r3, #2
	ldrsh	r3, [r6, r3]
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	__Func_10424
.L1832:
	ldr	r6, =.L1ca8
	add	r5, #0xc
	ldrsh	r3, [r6, r5]
	cmp	r3, r8
	bne	.L1808
.L183c:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17ec

.thumb_func_start OvlFunc_184c
	push	{lr}
	ldr	r0, =OvlFunc_1244
	bl	__Func_4278
	pop	{r0}
	bx	r0
.func_end OvlFunc_184c

.thumb_func_start OvlFunc_185c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, [r6, #0x44]
	ldr	r3, [r6, #8]
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, [r6, #0x48]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r7, [r6, #0x4c]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	add	r3, r7
	mov	r1, #0x12
	str	r3, [r6, #0x10]
	bl	_Func_af0
	sub	r5, r0
	str	r5, [r6, #0x44]
	mov	r3, r7
	cmp	r7, #0
	bge	.L188c
	add	r3, #0xf
.L188c:
	asr	r3, #4
	sub	r3, r7, r3
	str	r3, [r6, #0x4c]
	ldr	r2, [r6, #0x30]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r2, [r6, #0x34]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldr	r1, [r6, #0x50]
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r2]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_185c

.thumb_func_start OvlFunc_18b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x44
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r10, r0
	add	r0, sp, #0x1c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_185c
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	add	r6, sp, #0x10
.L194c:
	lsl	r5, r7, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r3, #0
	str	r0, [r6]
	mov	r0, r5
	str	r3, [r6, #4]
	bl	__Func_2322
	ldr	r3, [r6]
	lsr	r2, r3, #31
	add	r2, r3, r2
	asr	r2, #1
	add	r3, r2
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r2, r10
	ldr	r5, [r2, #8]
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	mov	r0, r5
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_13c
	cmp	r7, #0x10
	bls	.L194c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_924d4
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_12330
	bl	__Func_12350
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	bl	__Func_91750
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_18b8

	.section .data

	.incbin "overlays/rom_7a5214/orig.bin", 0x1c00, (0x1ca8-0x1c00)
.L1ca8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ca8, (0x1da8-0x1ca8)
.L1da8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1da8, (0x1db4-0x1da8)
.L1db4:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1db4, (0x1ddc-0x1db4)
.L1ddc:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ddc, (0x1e04-0x1ddc)
.L1e04:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e04, (0x1e2c-0x1e04)
.L1e2c:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e2c, (0x1e54-0x1e2c)
.L1e54:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e54, (0x1ec8-0x1e54)
.L1ec8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ec8, (0x1f00-0x1ec8)
.L1f00:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1f00, (0x25cc-0x1f00)
.L25cc:
	.incbin "overlays/rom_7a5214/orig.bin", 0x25cc, (0x29d4-0x25cc)
.L29d4:
	.incbin "overlays/rom_7a5214/orig.bin", 0x29d4, (0x2a14-0x29d4)
.L2a14:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2a14, (0x2a58-0x2a14)
.L2a58:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2a58, (0x2ae8-0x2a58)
.L2ae8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2ae8, (0x2db8-0x2ae8)
.L2db8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2db8

	.section .bss

	.lcomm	.L2dc0, 0xc
	.lcomm	.L2dcc, 4
	.lcomm	.L2dd0, 4
