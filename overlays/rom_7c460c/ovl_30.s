	.include "macros.inc"

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
	ldr	r2, =.L1be0
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
	ldr	r3, =.L1be0
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
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.L332
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L332
	ldr	r0, =.L1d3c
	b	.L334
.L332:
	ldr	r0, =.L1bec
.L334:
	pop	{r1}
	bx	r1
.func_end OvlFunc_314

.thumb_func_start OvlFunc_34c
	mov	r0, #0
	bx	lr
.func_end OvlFunc_34c

.thumb_func_start OvlFunc_350
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.L36e
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L36e
	ldr	r0, =.L1e04
	b	.L370
.L36e:
	ldr	r0, =.L1dcc
.L370:
	pop	{r1}
	bx	r1
.func_end OvlFunc_350

.thumb_func_start OvlFunc_388
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.L3a6
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L3a6
	ldr	r0, =.L1f64
	b	.L3a8
.L3a6:
	ldr	r0, =.L1e14
.L3a8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_388

.thumb_func_start OvlFunc_3c0
	push	{lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_923e4
	ldr	r0, =0xfd1
	bl	__Func_79358
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_91a58
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3c0

.thumb_func_start OvlFunc_3f4
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xe
	mov	r5, #4
	str	r3, [sp]
	mov	r0, #0x11
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	cmp	r6, #0
	beq	.L458
	mov	r0, r6
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #1
	strb	r3, [r2]
.L458:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3f4

.thumb_func_start OvlFunc_468
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	blt	.L48a
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	b	.L494
.L48a:
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x23
.L494:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_468

.thumb_func_start OvlFunc_49c
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L4b0
	ldr	r2, =0xfffff
	add	r3, r2
.L4b0:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L4bc
	ldr	r3, =0xfffff
	add	r0, r3
.L4bc:
	asr	r5, r0, #20
	ldr	r0, =0xf27
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4fc
	cmp	r6, #7
	bne	.L4da
	cmp	r5, #0x10
	bne	.L4da
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_92304
.L4da:
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x66
	neg	r1, r1
	neg	r2, r2
	bl	__Func_8edac
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x1f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L4fc:
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	mov	r7, #0x2e
	str	r7, [sp]
	bl	__Func_105d4
	mov	r3, #0xd
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #3
	mov	r0, #0x22
	mov	r1, #0x25
	str	r2, [sp, #4]
	bl	__Func_10704
	mov	r1, #0xe8
	mov	r2, #0x90
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0
	str	r3, [r0, #0xc]
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L57c
	mov	r6, #1
	mov	r5, #0xe
	mov	r0, #0x29
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x21
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_105d4
	b	.L5be
.L57c:
	mov	r1, #0xe0
	mov	r2, #0x86
	lsl	r1, #14
	lsl	r2, #17
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	cmp	r0, #0
	beq	.L5be
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #8
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r0, #0xc]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0x13333
	str	r3, [r0, #0x18]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r0, #0x1c]
.L5be:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_468
	bl	__Func_41d8
	ldr	r0, =0x201
	bl	__Func_79374
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_49c

.thumb_func_start OvlFunc_5f0
	push	{lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #0x2e
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	mov	r3, #0xd
	str	r3, [sp]
	mov	r2, #3
	mov	r0, #0x25
	mov	r1, #0x25
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xe
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #8
	mov	r1, #0x10
	mov	r2, #1
	bl	__Func_10704
	mov	r0, #0x66
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8edac
	mov	r3, #1
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r2, #3
	mov	r1, #0x2a
	mov	r0, #0x20
	bl	__Func_105d4
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c598
	ldr	r0, =OvlFunc_468
	bl	__Func_4278
	ldr	r0, =0x201
	bl	__Func_79358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_5f0

.thumb_func_start OvlFunc_6bc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_1776c
	ldr	r0, =0x29e1
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_6bc

.thumb_func_start OvlFunc_6e4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L702
	ldr	r0, =0x941
	bl	__Func_79338
	ldr	r0, =.L23b4
	b	.L718
.L702:
	ldr	r3, =0x68
	cmp	r2, r3
	bne	.L716
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L716
	ldr	r0, =.L21bc
	b	.L718
.L716:
	ldr	r0, =.L1fc4
.L718:
	pop	{r1}
	bx	r1
.func_end OvlFunc_6e4

.thumb_func_start OvlFunc_738
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0x11
	bl	__Func_937b8
	ldr	r0, =0x1b9c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_738

.thumb_func_start OvlFunc_764
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x85a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L784
	ldr	r0, =0x1be1
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	b	.L7d8
.L784:
	ldr	r0, =0x1b9f
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L7d0
	ldr	r5, =iwram_1ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #0x12
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L7d0
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L7d0:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
.L7d8:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_764

.thumb_func_start OvlFunc_7f4
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	bne	.L81e
	ldr	r0, =0x85a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L80e
	ldr	r0, =0x1be2
	b	.L810
.L80e:
	ldr	r0, =0x1ba5
.L810:
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	b	.L82c
.L81e:
	ldr	r0, =0x250c
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
.L82c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f4

.thumb_func_start OvlFunc_844
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1ba6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_844

.thumb_func_start OvlFunc_864
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1baa
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_864

.thumb_func_start OvlFunc_884
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1bb0
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_884

.thumb_func_start OvlFunc_8a4
	push	{lr}
	bl	__Func_916b0
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_925cc
	ldr	r0, =0x24d1
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_8a4

.thumb_func_start OvlFunc_8cc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x24d3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_8cc

.thumb_func_start OvlFunc_8ec
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L906
	ldr	r0, =0x2411
	bl	__Func_92b94
	b	.L952
.L906:
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L94c
	ldr	r0, =0x94d
	bl	__Func_79338
	cmp	r0, #0
	bne	.L94c
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #8
	bl	__Func_937b8
	ldr	r5, =0x24db
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	add	r5, #1
	mov	r0, #8
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, r5
	bl	__Func_92b94
	ldr	r0, =0x9af
	bl	__Func_79358
	b	.L952
.L94c:
	ldr	r0, =0x1bb5
	bl	__Func_92b94
.L952:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8ec

.thumb_func_start OvlFunc_980
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L99a
	ldr	r0, =0x2412
	bl	__Func_92b94
	b	.L9b2
.L99a:
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9ac
	ldr	r0, =0x24dd
	bl	__Func_92b94
	b	.L9b2
.L9ac:
	ldr	r0, =0x1bb6
	bl	__Func_92b94
.L9b2:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_980

.thumb_func_start OvlFunc_9d4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.La54
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.La54
	ldr	r0, =0x94d
	bl	__Func_79338
	cmp	r0, #0
	bne	.La54
	ldr	r0, =0x9af
	bl	__Func_79338
	cmp	r0, #0
	bne	.La36
	ldr	r3, =iwram_1ebc
	mov	r2, #0xbf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bl	__Func_97608
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x24db
	bl	__Func_92b94
	ldr	r0, =0x9af
	bl	__Func_79358
	b	.La3c
.La36:
	ldr	r0, =0x24e7
	bl	__Func_92b94
.La3c:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #8
	mov	r1, #1
	bl	__Func_9259c
	ldr	r0, =0x24dc
	bl	__Func_92b94
	b	.La5a
.La54:
	ldr	r0, =0x1bbf
	bl	__Func_92b94
.La5a:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_9d4

.thumb_func_start OvlFunc_a90
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.Laa4
	ldr	r0, =0x24e8
	bl	__Func_92b94
	b	.Laaa
.Laa4:
	ldr	r0, =0x1bc0
	bl	__Func_92b94
.Laaa:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_a90

.thumb_func_start OvlFunc_ac4
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lad6
	ldr	r2, =0xfffff
	add	r3, r2
.Lad6:
	ldr	r0, =0x243
	asr	r5, r3, #20
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lafa
	cmp	r5, #0xa
	bne	.Lafa
	ldr	r0, =0x243
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x14
	strh	r2, [r3]
.Lafa:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ac4

.thumb_func_start OvlFunc_b0c
	push	{lr}
	bl	__Func_916b0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	ldr	r0, =0x24cf
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x64
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0xc
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	ldr	r0, =0x243
	bl	__Func_79374
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_b0c

.thumb_func_start OvlFunc_b6c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	bl	__Func_916b0
	mov	r5, #8
	mov	r6, #0
.Lb7a:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb8a
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.Lb8a:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lb7a
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	sub	r5, #4
	lsl	r4, r5, #3
	ldr	r0, =.L250c
	add	r3, r4, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r4]
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	cmp	r5, #6
	beq	.Lbec
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_92208
	mov	r0, #0xa
	bl	__Func_9163c
.Lbec:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b6c

.thumb_func_start OvlFunc_c10
	push	{r5, lr}
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc5c
	ldr	r0, =0x201
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.Lc5c
	ldr	r2, =0x1999
	ldr	r1, =0x3333
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_92208
	mov	r0, #0xd
	bl	__Func_9163c
	mov	r0, #0xc
	bl	__Func_91e9c
.Lc5c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c10

.thumb_func_start OvlFunc_c74
	push	{r5, r6, lr}
	ldr	r0, =0x242
	sub	sp, #8
	bl	__Func_79358
	bl	__Func_916b0
	ldr	r2, =0x1999
	ldr	r1, =0x3333
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_922c4
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r5, #0x29
	mov	r6, #4
	mov	r1, #4
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x35
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #6
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x35
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c74

.thumb_func_start OvlFunc_d08
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_d08

.thumb_func_start OvlFunc_d14
	push	{lr}
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld26
	mov	r0, #0x53
	bl	__Func_f9080
.Ld26:
	pop	{r0}
	bx	r0
.func_end OvlFunc_d14

.thumb_func_start OvlFunc_d30
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x201
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld46
	b	.Le98
.Ld46:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld52
	b	.Le98
.Ld52:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #0xd2
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_30f8
	mov	r6, #1
	mov	r5, #0xe
	mov	r0, #0x20
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x21
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x23
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r10, r3
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x26
	str	r6, [sp]
	bl	__Func_105d4
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r0, #0x29
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x2f
	str	r6, [sp]
	bl	__Func_105d4
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r0, #0x32
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x35
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x38
	str	r6, [sp]
	bl	__Func_105d4
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r0, #0x20
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x23
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x26
	str	r6, [sp]
	bl	__Func_105d4
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r0, #0x29
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_105d4
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r0, =0x202
	bl	__Func_79358
.Le98:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d30

.thumb_func_start OvlFunc_eb0
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	bne	.Lf8c
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #2
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0xf
	mov	r0, #9
	bl	__Func_937b8
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0x98
	mov	r2, #0xa8
	bl	__Func_9218c
	mov	r2, #0xa8
	mov	r1, #0xa8
	mov	r0, #9
	bl	__Func_9218c
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #8
	bl	__Func_920a0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #9
	bl	__Func_920a0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_92adc
	ldr	r0, =0x24da
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, #7
	str	r3, [sp]
	mov	r5, #0xb
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	bl	__Func_91750
.Lf8c:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_eb0

.thumb_func_start OvlFunc_f9c
	bx	lr
.func_end OvlFunc_f9c

.thumb_func_start OvlFunc_fa0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #7
	str	r3, [sp]
	mov	r5, #0xb
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #9
	str	r3, [sp]
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	mov	r0, #6
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x241
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fa0

.thumb_func_start OvlFunc_ff0
	push	{r5, r6, lr}
	mov	r0, #0x91
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1000
	b	.L117a
.L1000:
	mov	r0, #0x91
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_937b8
	ldr	r5, =0x2409
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
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
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #9
	lsl	r1, #10
	bl	__Func_92064
	mov	r1, #4
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #0x23
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x1e
	ldr	r1, =0x103
	mov	r0, #8
	bl	__Func_937b8
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #9
	bl	__Func_924d4
	add	r5, #3
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r3, #0xa
	ldrsh	r1, [r6, r3]
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	sub	r1, #1
	mov	r0, #8
	bl	__Func_9218c
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #0xa0
	mov	r2, #0xd8
	bl	__Func_9218c
	mov	r0, #8
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r1, #0xa8
	mov	r2, #0xc8
	mov	r0, #9
	bl	__Func_9218c
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_9280c
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r2, #0x88
	mov	r0, #0
	mov	r1, #0xa0
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0x80
	mov	r0, #8
	mov	r1, #0x98
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0x80
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_9218c
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #0
	bl	__Func_923c4
	bl	__Func_91750
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_1240
	lsl	r1, #4
	bl	__Func_41d8
.L117a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ff0

.thumb_func_start OvlFunc_118c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #7
	str	r3, [sp]
	mov	r5, #0xb
	mov	r0, #7
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_118c

.thumb_func_start OvlFunc_11d0
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x241
	ldr	r5, [r3]
	bl	__Func_79374
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_79374
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xff97ffff
	ldr	r3, [r0, #8]
	add	r3, r2
	ldr	r2, =0x87fffe
	cmp	r3, r2
	bhi	.L1218
	mov	r3, #0xa0
	ldr	r0, [r0, #0x10]
	lsl	r3, #16
	cmp	r0, r3
	ble	.L1218
	mov	r2, #0xf8
	lsl	r2, #16
	cmp	r0, r2
	bge	.L1218
	ldr	r0, =OvlFunc_1240
	bl	__Func_4278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.L1218:
	bl	OvlFunc_118c
	mov	r0, #0x91
	lsl	r0, #2
	bl	__Func_79374
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11d0

.thumb_func_start OvlFunc_1240
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0
	ldr	r5, [r3]
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L128c
	ldr	r2, =0xff700000
	ldr	r3, [r0, #8]
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #14
	cmp	r3, r2
	bhi	.L128c
	mov	r3, #0xa8
	ldr	r0, [r0, #0x10]
	lsl	r3, #16
	cmp	r0, r3
	blt	.L128c
	mov	r2, #0xb0
	lsl	r2, #16
	cmp	r0, r2
	bge	.L128c
	ldr	r0, =OvlFunc_1240
	bl	__Func_4278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.L128c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1240

.thumb_func_start OvlFunc_12a4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0x1c
	bl	__Func_92054
	ldr	r3, =iwram_1e40
	ldr	r7, [r3]
	mov	r3, #0xf
	and	r7, r3
	mov	r8, r0
	cmp	r7, #0
	bne	.L130c
	bl	__Func_4458
	mov	r3, #0x34
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #6
	mov	r5, r3
	add	r5, #0xe6
	mov	r0, r5
	bl	__Func_231c
	add	r6, sp, #0x10
	cmp	r0, #0
	bge	.L12de
	add	r0, #3
.L12de:
	asr	r3, r0, #2
	mov	r0, r5
	str	r3, [r6]
	str	r7, [r6, #4]
	bl	__Func_2322
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	str	r0, [r6, #8]
	mov	r3, r8
	ldr	r5, [r3, #8]
	ldr	r4, [r6, #4]
	ldr	r1, [r3, #0xc]
	ldr	r2, [r3, #0x10]
	ldr	r3, [r6]
	str	r0, [sp, #4]
	mov	r0, r5
	str	r4, [sp]
	str	r7, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
.L130c:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12a4

.thumb_func_start OvlFunc_131c
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x98
	mov	r2, #0xe0
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xa8
	mov	r2, #0xe0
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9335c
	bl	__Func_91dc8
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_92064
	mov	r0, #8
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_92064
	mov	r0, #9
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_92064
	mov	r2, #0x90
	mov	r0, #8
	mov	r1, #0x98
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0x90
	lsl	r2, #1
	mov	r0, #9
	mov	r1, #0xa8
	bl	__Func_9218c
	mov	r0, #0
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0x94
	lsl	r2, #1
	mov	r0, #0
	mov	r1, #0xa0
	bl	__Func_92128
	ldr	r6, =OvlFunc_12a4
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r6
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x79
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92b08
	mov	r0, #0x79
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	mov	r1, #4
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x79
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, r6
	bl	__Func_4278
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0xc0
	lsl	r5, #11
	str	r5, [r0, #0x28]
	mov	r0, #0
	bl	__Func_92054
	str	r5, [r0, #0x2c]
	mov	r0, #1
	bl	__Func_9163c
	b	.L1480
.L147a:
	mov	r0, #1
	bl	__Func_9163c
.L1480:
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L147a
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x7f
	bl	__Func_f9080
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_12a4
	bl	__Func_41d8
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r0, #0x28]
	mov	r0, #1
	bl	__Func_9163c
	b	.L14da
.L14d4:
	mov	r0, #1
	bl	__Func_9163c
.L14da:
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L14d4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	ldr	r0, =OvlFunc_12a4
	bl	__Func_4278
	mov	r0, #0x32
	bl	__Func_9163c
	ldr	r0, =0x2410
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0x80
	orr	r5, r3
	mov	r2, #0x80
	strb	r5, [r0]
	lsl	r1, #9
	mov	r0, #8
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r2, #0xc8
	mov	r1, #0xb0
	mov	r0, #9
	bl	__Func_9218c
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_131c

.thumb_func_start OvlFunc_15bc
	push	{lr}
	bl	__Func_916b0
	bl	__Func_91dc8
	mov	r2, #0xa8
	mov	r1, #0x98
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x92
	mov	r1, #1
	bl	__Func_96fb0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_970f8
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	bl	__Func_97174
	mov	r1, #0x90
	mov	r2, #0xb8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x58
	mov	r2, #0xb8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x58
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x48
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r2, #0x90
	mov	r1, #0x48
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r2, #0x90
	mov	r1, #0x58
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_15bc

.thumb_func_start OvlFunc_1668
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	bne	.L16b4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	OvlFunc_5f0
	ldr	r0, =0xfd1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L169e
	mov	r0, #0x14
	bl	OvlFunc_1840
.L169e:
	mov	r0, #8
	bl	__Func_92054
	cmp	r0, #0
	beq	.L16ae
	mov	r1, #0
	bl	__Func_c528
.L16ae:
	ldr	r0, =0x201
	bl	__Func_79358
.L16b4:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L1778
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r3, =0x242
	mov	r1, #0xe1
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L16f6
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16f6
	bl	OvlFunc_131c
.L16f6:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L1714
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1714
	bl	OvlFunc_15bc
.L1714:
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1732
	ldr	r0, =0x94d
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1732
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_ac4
	lsl	r1, #4
	bl	__Func_41d8
.L1732:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1240
	bl	__Func_41d8
	ldr	r0, =0x944
	bl	__Func_79374
	ldr	r0, =0x945
	bl	__Func_79374
	ldr	r0, =0x946
	bl	__Func_79374
	ldr	r0, =0x947
	bl	__Func_79374
	ldr	r0, =0x948
	bl	__Func_79374
	ldr	r0, =0x943
	bl	__Func_79374
	ldr	r0, =0x949
	bl	__Func_79374
	ldr	r0, =0x94a
	bl	__Func_79374
	ldr	r0, =0x94b
	bl	__Func_79374
	ldr	r0, =0x94c
	bl	__Func_79374
.L1778:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1668

.thumb_func_start OvlFunc_17d8
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_2322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L17ec
	neg	r5, r5
.L17ec:
	ldr	r0, [r6, #0x30]
	bl	__Func_231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__Func_231c
	cmp	r0, #0
	bge	.L1812
	add	r0, #7
.L1812:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_17d8

.thumb_func_start OvlFunc_1840
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__Func_92054
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L18a4
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L18a4:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	mov	r5, r0
	mov	r0, #0xb5
	bl	__Func_1a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_17d8
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1840

	.section .data

	.incbin "overlays/rom_7c460c/orig.bin", 0x1b38, (0x1be0-0x1b38)
.L1be0:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1be0, (0x1bec-0x1be0)
.L1bec:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1bec, (0x1d3c-0x1bec)
.L1d3c:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1d3c, (0x1dcc-0x1d3c)
.L1dcc:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1dcc, (0x1e04-0x1dcc)
.L1e04:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1e04, (0x1e14-0x1e04)
.L1e14:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1e14, (0x1f64-0x1e14)
.L1f64:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1f64, (0x1fc4-0x1f64)
.L1fc4:
	.incbin "overlays/rom_7c460c/orig.bin", 0x1fc4, (0x21bc-0x1fc4)
.L21bc:
	.incbin "overlays/rom_7c460c/orig.bin", 0x21bc, (0x23b4-0x21bc)
.L23b4:
	.incbin "overlays/rom_7c460c/orig.bin", 0x23b4, (0x250c-0x23b4)
.L250c:
	.incbin "overlays/rom_7c460c/orig.bin", 0x250c
