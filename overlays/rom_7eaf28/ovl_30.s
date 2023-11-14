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
	ldr	r2, =.L1424
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
	ldr	r3, =.L1424
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
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x2d
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_324
	push	{r5, lr}
	mov	r1, #0
	mov	r5, r0
	bl	__Func_c528
	add	r5, #0x59
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_324

.thumb_func_start OvlFunc_33c
	add	r0, #0x54
	ldrb	r3, [r0]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bx	lr
.func_end OvlFunc_33c

.thumb_func_start OvlFunc_34c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.L364
	ldr	r0, =.L1488
	b	.L37a
.L364:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.L36e
	ldr	r0, =.L14d0
	b	.L37a
.L36e:
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.L378
	ldr	r0, =.L1548
	b	.L37a
.L378:
	ldr	r0, =.L1458
.L37a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_34c

.thumb_func_start OvlFunc_3a0
	mov	r0, #0
	bx	lr
.func_end OvlFunc_3a0

.thumb_func_start OvlFunc_3a4
	ldr	r0, =.L15c0
	bx	lr
.func_end OvlFunc_3a4

.thumb_func_start OvlFunc_3ac
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.L3c4
	ldr	r0, =.L1610
	b	.L3da
.L3c4:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.L3ce
	ldr	r0, =.L16b8
	b	.L3da
.L3ce:
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.L3d8
	ldr	r0, =.L1790
	b	.L3da
.L3d8:
	ldr	r0, =.L15f8
.L3da:
	pop	{r1}
	bx	r1
.func_end OvlFunc_3ac

.thumb_func_start OvlFunc_400
	push	{r5, r6, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_92054
	ldr	r3, =iwram_1ebc
	ldr	r6, [r3]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	lsl	r3, #12
	strh	r3, [r0, #6]
	mov	r0, #0x84
	lsl	r0, #2
	bl	__Func_793b8
	mov	r5, r0
	cmp	r5, #0
	beq	.L448
	cmp	r5, #1
	bne	.L43a
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x63
	strh	r3, [r2]
	b	.L448
.L43a:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L448
	sub	r5, #1
.L448:
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, r5
	bl	__Func_793c8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_400

.thumb_func_start OvlFunc_464
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =ewram_240
	mov	r3, #0xfa
	mov	r9, r2
	lsl	r3, #1
	add	r3, r9
	ldr	r6, [r3]
	mov	r10, r0
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	mov	r0, r10
	bl	__Func_92054
	ldr	r0, =0x20f
	bl	__Func_79338
	mov	r8, r0
	cmp	r0, #0
	bne	.L536
	bl	__Func_916b0
	mov	r0, r6
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r0, r6
	mov	r1, #9
	bl	__Func_924d4
	mov	r0, r10
	bl	__Func_92054
	cmp	r0, #0
	beq	.L4c2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__Func_92128
.L4c2:
	mov	r0, r6
	bl	__Func_923c4
	mov	r0, #0xf4
	bl	__Func_f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_400
	mov	r7, r5
	bl	__Func_41d8
	add	r7, #0x55
	mov	r2, r8
	strb	r2, [r7]
	mov	r3, #0x80
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	ldr	r1, [r5, #8]
	add	r2, r3
	mov	r0, r5
	ldr	r3, [r5, #0x10]
	bl	__Func_d14c
	mov	r0, r6
	bl	__Func_923c4
	mov	r2, r8
	str	r2, [r5, #0x28]
	mov	r2, #0xf9
	mov	r3, #4
	lsl	r2, #1
	add	r2, r9
	strb	r3, [r7]
	mov	r3, #2
	strb	r3, [r2]
	ldr	r0, =0x20f
	bl	__Func_79358
	mov	r0, #0x86
	lsl	r0, #2
	mov	r1, r10
	bl	__Func_793c8
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, #0xb4
	bl	__Func_793c8
	bl	__Func_91750
	ldr	r3, =iwram_1ebc
	mov	r2, #0xbe
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, r8
	strh	r2, [r3]
.L536:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_464

.thumb_func_start OvlFunc_558
	push	{lr}
	mov	r0, #8
	bl	OvlFunc_464
	pop	{r0}
	bx	r0
.func_end OvlFunc_558

.thumb_func_start OvlFnuc_564
	push	{lr}
	mov	r0, #9
	bl	OvlFunc_464
	pop	{r0}
	bx	r0
.func_end OvlFnuc_564

.thumb_func_start OvlFunc_570
	push	{lr}
	mov	r0, #0xa
	bl	OvlFunc_464
	pop	{r0}
	bx	r0
.func_end OvlFunc_570

.thumb_func_start OvlFunc_57c
	push	{lr}
	mov	r0, #0xb
	bl	OvlFunc_464
	pop	{r0}
	bx	r0
.func_end OvlFunc_57c

.thumb_func_start OvlFunc_588
	push	{lr}
	mov	r0, #0xc
	bl	OvlFunc_464
	pop	{r0}
	bx	r0
.func_end OvlFunc_588

.thumb_func_start OvlFunc_594
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r10, r0
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r5, r0
	mov	r0, r10
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_79338
	mov	r3, #0xa
	ldrsh	r2, [r5, r3]
	mov	r9, r2
	mov	r2, #0x12
	ldrsh	r1, [r5, r2]
	mov	r8, r0
	mov	r11, r1
	ldr	r6, =REG_IME
	bl	__Func_916b0
	mov	r0, #0xf4
	bl	__Func_f9080
	mov	r2, #0
.L5e0:
	mov	r1, #0x80
	lsl	r1, #4
	lsl	r3, r2, #11
	add	r3, r1
	mov	r1, #0x80
	str	r3, [r7, #0x18]
	lsl	r1, #5
	lsl	r3, r2, #12
	add	r3, r1
	str	r3, [r7, #0x1c]
	mov	r3, r8
	cmp	r3, #0
	bne	.L630
	ldr	r1, =ewram_2090
	add	r5, r2, #1
	ldrh	r3, [r6]
	mov	r0, r3
	strh	r6, [r6]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L62c
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r5
	add	r2, r1
	lsl	r3, #8
	add	r2, #4
	orr	r3, r5
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L62c:
	strh	r0, [r6]
	b	.L632
.L630:
	add	r5, r2, #1
.L632:
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, r5
	cmp	r2, #0xf
	ble	.L5e0
	mov	r0, #0xff
	lsl	r0, #1
	add	r0, r10
	bl	__Func_79358
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L65e
	b	.L7cc
.L65e:
	ldr	r0, =0x9b6
	bl	__Func_79338
	cmp	r0, #0
	beq	.L66a
	b	.L7cc
.L66a:
	ldr	r0, =0x9b6
	bl	__Func_79358
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L6a0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_923e4
.L6a0:
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, r11
	strb	r3, [r0]
	sub	r2, #0x10
	mov	r1, r9
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, r9
	and	r5, r3
	mov	r2, r11
	add	r1, #8
	sub	r2, #0x28
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	ldr	r0, =0x262e
	bl	__Func_92b94
	mov	r1, #0x83
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L7bc
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xd
	bl	__Func_92128
.L7bc:
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L7cc:
	bl	__Func_91750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_594

.thumb_func_start OvlFunc_7fc
	push	{lr}
	mov	r0, #8
	bl	OvlFunc_594
	pop	{r0}
	bx	r0
.func_end OvlFunc_7fc

.thumb_func_start OvlFunc_808
	push	{lr}
	mov	r0, #9
	bl	OvlFunc_594
	pop	{r0}
	bx	r0
.func_end OvlFunc_808

.thumb_func_start OvlFunc_814
	push	{lr}
	mov	r0, #0xa
	bl	OvlFunc_594
	pop	{r0}
	bx	r0
.func_end OvlFunc_814

.thumb_func_start OvlFunc_820
	push	{lr}
	mov	r0, #0xb
	bl	OvlFunc_594
	pop	{r0}
	bx	r0
.func_end OvlFunc_820

.thumb_func_start OvlFunc_82c
	push	{lr}
	mov	r0, #0xc
	bl	OvlFunc_594
	pop	{r0}
	bx	r0
.func_end OvlFunc_82c

.thumb_func_start OvlFunc_838
	push	{lr}
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L848
	b	.L9ae
.L848:
	ldr	r0, =0x1b7
	bl	__Func_79338
	cmp	r0, #0
	beq	.L854
	b	.L9ae
.L854:
	mov	r0, #0x9b
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L862
	b	.L9ae
.L862:
	ldr	r0, =0x9b5
	bl	__Func_79358
	bl	__Func_916b0
	ldr	r0, =0x2633
	bl	__Func_92b94
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L886
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_923e4
.L886:
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xdc
	mov	r2, #0x9d
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xde
	mov	r2, #0x9b
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_93054
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x83
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r2, #0x9d
	lsl	r2, #3
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L99a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xd
	bl	__Func_92128
.L99a:
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
.L9ae:
	pop	{r0}
	bx	r0
.func_end OvlFunc_838

.thumb_func_start OvlFunc_9cc
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	sub	sp, #0x38
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r7, r6
	str	r3, [r6, #0x30]
	add	r7, #0x55
	mov	r3, #0
	strb	r3, [r7]
	mov	r1, #0
	mov	r5, r0
	mov	r0, r6
	bl	__Func_c528
	mov	r1, r6
	add	r1, #0x54
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	mov	r0, #0x82
	strb	r3, [r1]
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.La20
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	b	.La80
.La20:
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x38]
	ldr	r3, [r5, #0x14]
	str	r3, [r6, #0x3c]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #0x40]
	ldr	r1, [r6, #8]
	ldr	r3, [r5, #8]
	sub	r2, r1, r3
	cmp	r2, #0
	bge	.La38
	sub	r2, r3, r1
.La38:
	ldr	r0, [r6, #0x10]
	ldr	r1, [r5, #0x10]
	sub	r3, r0, r1
	cmp	r3, #0
	blt	.La4e
	add	r3, r2, r3
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r3, r2
	blt	.La5a
	b	.La82
.La4e:
	sub	r3, r1, r0
	add	r3, r2, r3
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r3, r2
	bge	.La82
.La5a:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La72
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x37
	strh	r3, [r2]
.La72:
	mov	r3, #3
	strb	r3, [r7]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x38]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #0x3c]
	ldr	r3, [r5, #0x10]
.La80:
	str	r3, [r6, #0x40]
.La82:
	ldr	r3, =iwram_1e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	cmp	r7, #0
	bne	.Labc
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Func_4458
	mov	r2, #0xf8
	lsl	r0, #12
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	strh	r0, [r5, #0x22]
	ldr	r3, =0x880001
	ldr	r0, [r6, #8]
	str	r3, [sp, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
.Labc:
	mov	r0, #1
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_9cc

.thumb_func_start OvlFunc_adc
	push	{lr}
	ldr	r0, =0x9b7
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lb04
	ldr	r0, =0x20e
	bl	__Func_79358
	mov	r1, #0xf0
	mov	r2, #0xce
	mov	r0, #0xc
	lsl	r1, #15
	lsl	r2, #18
	bl	__Func_923e4
	ldr	r1, =.L17a8
	mov	r0, #0xc
	bl	__Func_9207c
.Lb04:
	pop	{r0}
	bx	r0
.func_end OvlFunc_adc

.thumb_func_start OvlFunc_b14
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r2, #1
	add	r3, #0x34
	strb	r2, [r3]
	bx	lr
.func_end OvlFunc_b14

.thumb_func_start OvlFunc_b24
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r6, r1
	ldr	r3, [r3]
	mov	r1, #0xc1
	lsl	r1, #1
	add	r2, r3, r1
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0x63
	bne	.Lb3e
	mov	r3, #0
	strh	r3, [r2]
.Lb3e:
	ldr	r0, =0x20f
	bl	__Func_79374
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.Lb60
	ldr	r2, =0x2f9
	add	r0, r6, r2
	bl	__Func_79358
	b	.Lb6e
.Lb60:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lb6e
	ldr	r3, =0x309
	add	r0, r6, r3
	bl	__Func_79358
.Lb6e:
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0x62
	mov	r1, #5
	bl	__Func_91eb0
	ldr	r1, =ewram_240
	ldr	r3, =0x22b
	add	r2, r1, r3
	mov	r3, #3
	strb	r3, [r2]
	mov	r5, r1
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lbc6
	cmp	r6, #0xb
	bne	.Lbaa
	mov	r0, #0x62
	mov	r1, #7
	bl	__Func_91eb0
	b	.Lbc6
.Lbaa:
	cmp	r6, #0xc
	bne	.Lbc6
	mov	r1, #6
	mov	r0, #0x62
	bl	__Func_91eb0
	mov	r0, #0xc
	bl	__Func_920a0
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.Lbc6:
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b24

.thumb_func_start OvlFunc_c00
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_793b8
	ldr	r5, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r5, r1
	mov	r6, r0
	ldr	r0, [r5]
	bl	__Func_92054
	mov	r7, r0
	mov	r0, r6
	bl	__Func_92054
	mov	r8, r0
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0xdb
	bl	__Func_f9080
	ldr	r0, [r5]
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r8
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, r7
	add	r2, #0x55
	strb	r3, [r2]
	str	r3, [r7, #0x28]
	add	r2, #0xc
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r8
	add	r2, #0x61
	strb	r3, [r2]
	ldr	r6, =0x3333
	mov	r5, #0x3b
.Lc6c:
	ldr	r3, [r7, #0x28]
	add	r3, r6
	str	r3, [r7, #0x28]
	mov	r2, r8
	ldr	r3, [r2, #0x28]
	add	r3, r6
	str	r3, [r2, #0x28]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_30f8
	cmp	r5, #0
	bge	.Lc6c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	mov	r0, #0x91
	lsl	r0, #1
	bl	__Func_79358
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lcc2
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_793b8
	cmp	r0, #0xb
	bne	.Lcc2
	ldr	r0, =2
	mov	r1, #0x4d
	bl	__Func_91e3c
	b	.Lcca
.Lcc2:
	ldr	r0, =2
	mov	r1, #0x1b
	bl	__Func_91e3c
.Lcca:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c00

.thumb_func_start OvlFunc_ce4
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0x3f
	and	r3, r2
	lsl	r3, #16
	lsr	r2, r3, #16
	cmp	r2, #0x1f
	bls	.Lcfc
	ldr	r3, .Ld14	@ 0x40
	sub	r3, r2
	lsl	r3, #16
.Lcfc:
	lsr	r3, #17
	add	r3, #7
	lsl	r1, r3, #5
	lsl	r2, r3, #10
	orr	r2, r1
	orr	r3, r2
	lsl	r3, #16
	ldr	r2, =0x500019e
	lsr	r3, #16
	strh	r3, [r2]
	b	.Ld20

	.align	2, 0
.Ld14:
	.word	0x40
	.pool

.Ld20:
	pop	{r0}
	bx	r0
.func_end OvlFunc_ce4

.thumb_func_start OvlFunc_d24
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	sub	sp, #8
	cmp	r2, r3
	bne	.Ldae
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xe
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #0xf
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x10
	mov	r1, #0x2c
	mov	r2, #1
	bl	__Func_10704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8edac
	mov	r3, #0x7f
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x47
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0xc
	mov	r2, #0x47
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x47
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0xb
	bl	__Func_10704
	ldr	r0, =OvlFunc_ce4
	bl	__Func_4278
	ldr	r3, =.L1a00
	ldrh	r2, [r3]
	ldr	r3, =0x500019e
	strh	r2, [r3]
.Ldae:
	add	sp, #8
	pop	{r1}
	bx	r1
.func_end OvlFunc_d24

.thumb_func_start OvlFunc_dc8
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	sub	sp, #8
	cmp	r2, r3
	bne	.Le48
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	mov	r1, #0xf8
	mov	r2, #0xb2
	strb	r5, [r0]
	lsl	r1, #16
	mov	r0, #0xe
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0xf
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x1f
	mov	r1, #0x5f
	mov	r2, #1
	bl	__Func_10704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_8edac
	bl	__Func_8ee0c
	mov	r3, #0xc
	mov	r2, #0x47
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7f
	mov	r1, #0x7f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_ce4
	lsl	r1, #4
	bl	__Func_41d8
.Le48:
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_dc8

.thumb_func_start OvlFunc_e5c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.Le74
	ldr	r0, =.L19c4
	b	.Le76
.Le74:
	ldr	r0, =.L17b4
.Le76:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e5c

.thumb_func_start OvlFunc_e8c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e70
	mov	r1, #0xe0
	ldr	r7, [r3]
	ldr	r3, [r3, #0x4c]
	lsl	r1, #1
	ldr	r2, =0x201
	add	r3, r1
	mov	r0, #0x84
	str	r2, [r3]
	lsl	r0, #2
	bl	__Func_793b8
	cmp	r0, #0
	beq	.Lec0
	ldr	r3, =ewram_240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r1, #0xc8
	strb	r3, [r2]
	ldr	r0, =OvlFunc_400
	lsl	r1, #4
	bl	__Func_41d8
.Lec0:
	ldr	r5, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r6, =0xa4
	cmp	r2, r6
	beq	.Led8
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lee4
.Led8:
	ldr	r2, =0x500019e
	ldr	r3, =.L1a00
	ldrh	r2, [r2]
	strh	r2, [r3]
	bl	OvlFunc_d24
.Lee4:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, r6
	bne	.Lef8
	bl	OvlFunc_f50
	b	.Lf0c
.Lef8:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lf04
	bl	OvlFunc_1094
	b	.Lf0c
.Lf04:
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
.Lf0c:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.Lf24
	ldrh	r2, [r7, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	strh	r3, [r7, #0x14]
.Lf24:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_e8c

.thumb_func_start OvlFunc_f50
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf6a
	ldr	r0, =0x206
	bl	__Func_79358
.Lf6a:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf7a
	ldr	r0, =0x207
	bl	__Func_79358
.Lf7a:
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf8c
	mov	r0, #0x82
	lsl	r0, #2
	bl	__Func_79358
.Lf8c:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf9e
	ldr	r0, =0x209
	bl	__Func_79358
.Lf9e:
	ldr	r0, =0x305
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lfae
	ldr	r0, =0x20a
	bl	__Func_79358
.Lfae:
	mov	r7, #0x80
	mov	r6, #8
	lsl	r7, #4
.Lfb4:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.Lfd6
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lfce
	str	r7, [r5, #0x18]
	str	r7, [r5, #0x1c]
.Lfce:
	ldr	r3, [r5, #0x50]
	mov	r2, #0
	add	r3, #0x26
	strb	r2, [r3]
.Lfd6:
	add	r6, #1
	cmp	r6, #0xc
	ble	.Lfb4
	ldr	r6, =ewram_2090
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L1008
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x3f42
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L1008:
	strh	r1, [r5]
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1020
	mov	r3, #0x10
	mov	r0, #0xf4
	mov	r8, r3
	bl	__Func_91ff0
.L1020:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r6]
	cmp	r3, #0x1f
	bgt	.L1050
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	mov	r0, r8
	strh	r3, [r6]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r0
	add	r2, r6
	lsl	r3, #8
	add	r2, #4
	orr	r3, r0
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L1050:
	strh	r1, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f50

.thumb_func_start OvlFunc_1094
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r0, =0x311
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10ae
	ldr	r0, =0x206
	bl	__Func_79358
.L10ae:
	ldr	r0, =0x312
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10be
	ldr	r0, =0x207
	bl	__Func_79358
.L10be:
	ldr	r0, =0x313
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10d0
	mov	r0, #0x82
	lsl	r0, #2
	bl	__Func_79358
.L10d0:
	mov	r7, #0x80
	mov	r6, #8
	lsl	r7, #4
.L10d6:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L10fa
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L10f0
	str	r7, [r5, #0x18]
	str	r7, [r5, #0x1c]
.L10f0:
	ldr	r0, [r5, #0x50]
	mov	r2, r0
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
.L10fa:
	add	r6, #1
	cmp	r6, #0xa
	ble	.L10d6
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L1128
	ldr	r0, [r5, #0x50]
	ldr	r2, [r0, #0x28]
	cmp	r2, #0
	beq	.L1118
	mov	r3, #0xa
	strb	r3, [r2, #5]
.L1118:
	mov	r1, r0
	mov	r2, #1
	add	r1, #0x25
	strb	r2, [r1]
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
.L1128:
	ldr	r0, =0x315
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1138
	ldr	r0, =0x9b7
	bl	__Func_79358
.L1138:
	ldr	r6, =ewram_2090
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L1164
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x3f42
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L1164:
	strh	r1, [r5]
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L117c
	mov	r3, #0x10
	mov	r0, #0xf4
	mov	r8, r3
	bl	__Func_91ff0
.L117c:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r6]
	cmp	r3, #0x1f
	bgt	.L11ac
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	mov	r0, r8
	strh	r3, [r6]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r0
	add	r2, r6
	lsl	r3, #8
	add	r2, #4
	orr	r3, r0
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L11ac:
	strh	r1, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1094

	.section .data

	.incbin "overlays/rom_7eaf28/orig.bin", 0x137c, (0x1424-0x137c)
.L1424:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1424, (0x1458-0x1424)
.L1458:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1458, (0x1488-0x1458)
.L1488:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1488, (0x14d0-0x1488)
.L14d0:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x14d0, (0x1548-0x14d0)
.L1548:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1548, (0x15c0-0x1548)
.L15c0:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x15c0, (0x15f8-0x15c0)
.L15f8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x15f8, (0x1610-0x15f8)
.L1610:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1610, (0x16b8-0x1610)
.L16b8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x16b8, (0x1790-0x16b8)
.L1790:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1790, (0x17a8-0x1790)
.L17a8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x17a8, (0x17b4-0x17a8)
.L17b4:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x17b4, (0x19c4-0x17b4)
.L19c4:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x19c4, (0x1a00-0x19c4)
.L1a00:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1a00
