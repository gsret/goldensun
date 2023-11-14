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
	ldr	r2, =.L2120
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
	ldr	r3, =.L2120
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
	mov	r0, #0xd
	mov	r1, #3
	mov	r2, #3
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_324
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r1
	mov	r5, #0x3c
.L32c:
	cmp	r5, #0
	beq	.L33e
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r7, #0xc]
	sub	r5, #1
	cmp	r3, r6
	bgt	.L32c
.L33e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_324

.thumb_func_start OvlFunc_344
	push	{r5, r6, r7, lr}
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #7
	and	r3, r2
	sub	sp, #0x38
	mov	r7, r0
	cmp	r3, #0
	bne	.L35c
	mov	r0, #0x76
	bl	__Func_f9080
.L35c:
	ldr	r6, [r5]
	mov	r3, #0xf
	and	r6, r3
	mov	r0, #0
	cmp	r6, #0
	bne	.L398
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	ldr	r3, =0x880001
	strh	r0, [r5, #0x22]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #0
.L398:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_344

.thumb_func_start OvlFunc_3ac
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L3c4
	ldr	r0, =.L2174
	b	.L3e4
.L3c4:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L3ce
	ldr	r0, =.L21d4
	b	.L3e4
.L3ce:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L3d8
	ldr	r0, =.L2234
	b	.L3e4
.L3d8:
	ldr	r3, =0x5c
	cmp	r2, r3
	bne	.L3e2
	ldr	r0, =.L22dc
	b	.L3e4
.L3e2:
	ldr	r0, =.L212c
.L3e4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_3ac

.thumb_func_start OvlFunc_410
	mov	r0, #0
	bx	lr
.func_end OvlFunc_410

.thumb_func_start OvlFunc_414
	ldr	r0, =.L236c
	bx	lr
.func_end OvlFunc_414

.thumb_func_start OvlFunc_41c
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L444
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L444
	ldr	r0, =0x90a
	bl	__Func_79358
.L444:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L458
	ldr	r0, =.L23c8
	b	.L46e
.L458:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L462
	ldr	r0, =.L2410
	b	.L46e
.L462:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L46c
	ldr	r0, =.L24b8
	b	.L46e
.L46c:
	ldr	r0, =.L23b0
.L46e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_41c

.thumb_func_start OvlFunc_498
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4be
	ldr	r0, =0x8b3
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4be
	ldr	r0, =0x8b3
	bl	__Func_79358
	ldr	r0, =0x8b2
	bl	__Func_79358
.L4be:
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #3
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_498

.thumb_func_start OvlFunc_4dc
	ldr	r0, =.L2500
	bx	lr
.func_end OvlFunc_4dc

.thumb_func_start OvlFunc_4e4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x201
	sub	sp, #0xc
	bl	__Func_79374
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L590
	mov	r3, #0x16
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #8
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x17
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x10
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x24
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0xe
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	b	.L7e6
.L590:
	ldr	r3, =0x5a
	cmp	r2, r3
	beq	.L598
	b	.L6f8
.L598:
	mov	r3, #0x2a
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r5, #0x14
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xe
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r2, #0x38
	mov	r3, #0x12
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r8, r2
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0x18
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x19
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x26
	str	r3, [sp]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x1a
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x11
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x32
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r5, #0x22
	mov	r6, #0x2b
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #6
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x1b
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_105d4
	b	.L7e6
.L6f8:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L7e6
	mov	r3, #0x10
	str	r3, [sp, #4]
	mov	r6, #8
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_10788
	mov	r1, #6
	mov	r2, #0x14
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r8, r1
	mov	r10, r2
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10788
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10788
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0x12
	mov	r1, r8
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	mov	r2, r8
	mov	r3, r10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2b
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r6, #9
	mov	r5, #5
	mov	r0, #6
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_10704
.L7e6:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r5, #0x64
.L824:
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__Func_8edac
	cmp	r5, #0x6b
	ble	.L824
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5c
	cmp	r2, r3
	beq	.L866
	mov	r3, #0x80
	mov	r1, #0x80
	lsl	r3, #8
	lsl	r1, #7
	mov	r2, #0x80
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	mov	r3, #0x80
	mov	r1, #0x80
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #11
	lsl	r3, #6
	str	r2, [sp]
	bl	__Func_94730
.L866:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4e4

.thumb_func_start OvlFunc_88c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79374
	ldr	r0, =0x201
	bl	__Func_79358
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L948
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r6, #0x16
	mov	r0, #0x40
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #8
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x17
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x10
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x24
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0xe
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r1, #0xc8
	mov	r2, #0xb6
	mov	r0, #9
	lsl	r1, #17
	b	.Laee
.L948:
	ldr	r3, =0x5a
	cmp	r2, r3
	beq	.L950
	b	.Laf6
.L950:
	mov	r3, #0x2a
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r5, #0x14
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0xc
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xe
	str	r3, [sp]
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r2, #0x38
	mov	r3, #0x12
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r10, r2
	mov	r0, #0x4c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0x17
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r1, r8
	str	r1, [sp]
	mov	r5, #0x18
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x26
	str	r3, [sp]
	mov	r0, #0x58
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x1a
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x11
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x60
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x32
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x64
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r5, #0x22
	mov	r6, #0x2b
	mov	r0, #0x68
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #6
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x1b
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x70
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x74
	mov	r3, #2
	mov	r1, #0x7e
	mov	r2, #4
	str	r6, [sp]
	bl	__Func_105d4
	mov	r1, #0xb0
	mov	r2, #0xcc
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb8
	mov	r2, #0xc6
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x90
	mov	r2, #0xbe
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x90
	mov	r2, #0xb3
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xa2
	mov	r2, #0xcc
	mov	r0, #0xd
	lsl	r1, #18
.Laee:
	lsl	r2, #17
	bl	__Func_923e4
	b	.Lbde
.Laf6:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.Lbde
	mov	r1, #8
	mov	r3, #0xe
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r8, r1
	mov	r0, #0x40
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	bl	__Func_105d4
	mov	r3, #0x12
	str	r3, [sp, #4]
	mov	r6, #6
	mov	r0, #0x44
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #0x14
	str	r3, [sp, #4]
	mov	r0, #0x44
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0xa
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	bl	__Func_105d4
	mov	r2, r8
	str	r2, [sp]
	mov	r5, #0x20
	mov	r0, #0xa
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2b
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r5, #9
	mov	r7, #5
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r0, #3
	mov	r3, #1
	mov	r1, #0x78
	mov	r2, #3
	str	r7, [sp, #4]
	bl	__Func_105d4
	mov	r1, #0xa8
	mov	r2, #0xb8
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x9e
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #6
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x90a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lbde
	mov	r0, #0
	mov	r1, #0x77
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_105d4
.Lbde:
	mov	r5, #0x64
.Lbe0:
	mov	r1, #1
	mov	r2, #1
	mov	r0, r5
	neg	r1, r1
	neg	r2, r2
	add	r5, #1
	bl	__Func_8edac
	cmp	r5, #0x6b
	ble	.Lbe0
	bl	__Func_8ee0c
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5c
	cmp	r2, r3
	beq	.Lc0e
	bl	__Func_947e4
.Lc0e:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_88c

.thumb_func_start OvlFunc_c38
	push	{lr}
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x5b
	mov	r1, #5
	bl	__Func_91f90
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #5
	bl	__Func_91eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_c38

.thumb_func_start OvlFunc_c6c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r7, #0
	b	.Lc7a
.Lc78:
	add	r7, #1
.Lc7a:
	cmp	r7, #2
	bgt	.Lc9c
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r6, r3, #16
	ldr	r3, =0x303
	add	r5, r6, r3
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc78
	mov	r0, r5
	bl	__Func_79358
.Lc9c:
	bl	__Func_916b0
	mov	r3, r8
	lsl	r0, r3, #1
	add	r0, r8
	ldr	r3, =0x1a10
	add	r0, r6
	add	r0, r3
	bl	__Func_92b94
	add	r0, r6, #1
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c6c

.thumb_func_start OvlFunc_cd0
	push	{r5, r6, lr}
	ldr	r0, =0x232
	ldr	r3, =iwram_1ebc
	ldr	r2, =ewram_240
	ldr	r6, [r3]
	add	r3, r2, r0
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	mov	r3, #0x64
	mov	r0, r1
	mul	r0, r3
	mov	r1, #0x8b
	lsl	r1, #2
	add	r2, r1
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	bl	_Func_af0
	mov	r5, r0
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldda
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld28
	cmp	r5, #0x4a
	bgt	.Ld28
	ldr	r0, =0x302
	bl	__Func_79374
	ldr	r0, =0x303
	bl	__Func_79374
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x305
	bl	__Func_79374
.Ld28:
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld50
	cmp	r5, #0x31
	bgt	.Ld50
	ldr	r0, =0x301
	bl	__Func_79374
	ldr	r0, =0x303
	bl	__Func_79374
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x305
	bl	__Func_79374
.Ld50:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld7c
	cmp	r5, #0x18
	bgt	.Ld7c
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x303
	bl	__Func_79374
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x305
	bl	__Func_79374
.Ld7c:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld9e
	cmp	r5, #0x18
	ble	.Ld9e
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0xc1
	lsl	r0, #1
	add	r2, r6, r0
	mov	r3, #1
	strh	r3, [r2]
.Ld9e:
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldbc
	cmp	r5, #0x31
	ble	.Ldbc
	ldr	r0, =0x301
	bl	__Func_79358
	mov	r1, #0xc1
	lsl	r1, #1
	add	r2, r6, r1
	mov	r3, #2
	strh	r3, [r2]
.Ldbc:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldda
	cmp	r5, #0x4a
	ble	.Ldda
	ldr	r0, =0x302
	bl	__Func_79358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #3
	strh	r3, [r2]
.Ldda:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cd0

.thumb_func_start OvlFunc_e00
	push	{lr}
	ldmia	r0!, {r3}
	ldmia	r1!, {r4}
	ldr	r2, [r0, #4]
	sub	r4, r3
	ldr	r3, [r1]
	sub	r3, r2
	asr	r3, #16
	asr	r4, #16
	mov	r2, r3
	mul	r2, r3
	mov	r0, r4
	mul	r0, r4
	mov	r3, r2
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_e00

.thumb_func_start OvlFunc_e2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xf0
	ldr	r3, [r3]
	mov	r0, #0x80
	sub	sp, #0x68
	mov	r1, #0x3c
	lsl	r2, #16
	lsl	r0, #2
	str	r3, [sp, #0x14]
	str	r1, [sp, #0x10]
	mov	r11, r2
	bl	__Func_79358
	mov	r0, #1
	bl	OvlFunc_1c78
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.Le74
	ldr	r2, =.L1f30
	mov	r7, #3
	mov	r8, r2
	b	.Le88
.Le74:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.Le82
	ldr	r3, =.L1f48
	mov	r7, #5
	mov	r8, r3
	b	.Le88
.Le82:
	ldr	r1, =.L1f70
	mov	r7, #2
	mov	r8, r1
.Le88:
	mov	r9, r7
	mov	r5, r8
	cmp	r7, #0
	beq	.Leb8
	mov	r6, #0
.Le92:
	mov	r0, #0
	bl	__Func_92054
	mov	r1, r5
	add	r0, #8
	bl	OvlFunc_e00
	cmp	r0, r11
	bgt	.Leac
	mov	r2, r9
	sub	r2, r7
	mov	r11, r0
	mov	r10, r2
.Leac:
	add	r6, #8
	mov	r3, r8
	sub	r7, #1
	add	r5, r3, r6
	cmp	r7, #0
	bne	.Le92
.Leb8:
	mov	r1, r10
	lsl	r1, #1
	mov	r10, r1
	mov	r2, #0x80
	mov	r1, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r10
	lsl	r3, r2, #2
	add	r3, r8
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r3, [r3, #4]
	bl	__Func_d14c
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r1, [r0, #0xc]
	mov	r0, r5
	bl	OvlFunc_324
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xd6
	add	r4, sp, #0x40
	strh	r3, [r4, #0x18]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r4, #8]
	ldr	r3, =0xcccc
	str	r3, [r4, #0xc]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r4, #0x10]
	ldr	r3, =0x13333
	str	r3, [r4, #0x14]
	mov	r3, #0xe0
	ldr	r5, [r0, #8]
	lsl	r3, #13
	ldr	r1, [r0, #0xc]
	ldr	r2, [r0, #0x10]
	mov	r6, #0
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r1, #0x82
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_924d4
	ldr	r1, =0xcba
	ldr	r3, [sp, #0x14]
	ldr	r5, =ewram_472
	add	r6, r3, r1
	mov	r7, #0
.Lf6a:
	mov	r3, #0x96
	lsl	r3, #2
	strh	r3, [r6]
	ldr	r2, [sp, #0x10]
	sub	r2, #1
	str	r2, [sp, #0x10]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0
	beq	.Lf98
	sub	r3, r2, #5
	strh	r3, [r5]
	lsl	r3, #16
	cmp	r3, #0
	bgt	.Lf8e
	strh	r7, [r5]
	b	.Lf98
.Lf8e:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.Lf98
	mov	r3, #1
	str	r3, [sp, #0x10]
.Lf98:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r1, [sp, #0x10]
	cmp	r1, #0
	bne	.Lf6a
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xd6
	add	r4, sp, #0x18
	strh	r3, [r4, #0x18]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	str	r3, [r4, #0xc]
	ldr	r3, =0x13333
	lsl	r2, #8
	str	r2, [r4, #8]
	str	r2, [r4, #0x10]
	str	r3, [r4, #0x14]
	ldr	r3, [sp, #0x10]
	ldr	r2, [r0, #0x10]
	ldr	r1, [r0, #0xc]
	ldr	r5, [r0, #8]
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xe0
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, =0xcba
	ldr	r1, [sp, #0x14]
	add	r3, r1, r2
	add	r1, sp, #0x10
	ldrh	r1, [r1]
	mov	r0, #0
	strh	r1, [r3]
	bl	OvlFunc_1c78
	add	sp, #0x68
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e2c

.thumb_func_start OvlFunc_1054
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r5, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r3, =iwram_1ebc
	mov	r6, r0
	ldr	r1, [r3]
	mov	r2, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	beq	.L1156
	ldr	r3, =0x232
	add	r2, r5, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1e
	beq	.L1156
	mov	r2, #0x80
	ldr	r3, [r6, #0x30]
	lsl	r2, #9
	cmp	r3, r2
	bgt	.L1106
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L1156
	mov	r5, #0x80
	add	r7, sp, #0x10
	lsl	r5, #8
	mov	r3, #0
	str	r5, [r7, #8]
	str	r5, [r7, #0xc]
	mov	r8, r3
	bl	__Func_4458
	mov	r2, #0xf8
	lsl	r0, #12
	lsr	r0, #16
	lsl	r2, #8
	ldrh	r3, [r6, #6]
	add	r0, r2
	strh	r0, [r7, #0x22]
	cmp	r3, #0
	beq	.L10e8
	cmp	r3, r5
	beq	.L10e8
	ldr	r4, [r6, #0x10]
	mov	r3, #1
	asr	r2, r4, #20
	and	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #10
	sub	r2, r3
	mov	r8, r2
	b	.L10ea
.L10e8:
	ldr	r4, [r6, #0x10]
.L10ea:
	mov	r3, #0
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r3, =0x880001
	add	r0, r8
	str	r3, [sp, #8]
	mov	r2, r4
	mov	r3, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	b	.L1156
.L1106:
	ldr	r2, =iwram_1e40
	ldr	r7, [r2]
	mov	r3, #7
	and	r7, r3
	cmp	r7, #0
	bne	.L1156
	ldr	r3, [r2]
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	strh	r0, [r5, #0x22]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, =0x1999
	lsr	r3, #16
	mul	r3, r2
	ldr	r1, [r6, #0xc]
	mov	r2, #0x80
	lsl	r2, #10
	ldr	r0, [r6, #8]
	add	r1, r2
	ldr	r2, [r6, #0x10]
	str	r3, [sp]
	ldr	r3, =0x880001
	str	r3, [sp, #8]
	mov	r3, #0
	str	r7, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
.L1156:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1054

.thumb_func_start OvlFunc_1180
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0x80
	mov	r3, #9
	lsl	r0, #2
	mov	r8, r3
	bl	__Func_79358
	mov	r7, #0x80
	lsl	r7, #13
	mov	r5, #9
.L11a8:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L11ea
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.L11c0
	ldr	r3, =0xffff
	add	r2, r3
.L11c0:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L11d0
	ldr	r2, =0xffff
	add	r0, r2
.L11d0:
	mov	r2, r1
	asr	r0, #16
	cmp	r2, #0
	bge	.L11da
	neg	r2, r2
.L11da:
	cmp	r0, #0
	bge	.L11e0
	neg	r0, r0
.L11e0:
	add	r0, r2, r0
	cmp	r0, r7
	bge	.L11ea
	mov	r8, r5
	mov	r7, r0
.L11ea:
	add	r5, #1
	cmp	r5, #0xc
	ble	.L11a8
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
	mov	r2, #0
	mov	r1, r8
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	add	r3, r2
	ldr	r2, .L1284	@ 0xfffff000
	and	r3, r2
	strh	r3, [r5, #6]
	mov	r0, #0
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0x18
	bl	__Func_924ec
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =OvlFunc_344
	str	r3, [r0, #0x6c]
	mov	r0, r8
	bl	__Func_92054
	cmp	r0, #0
	beq	.L12ae
	b	.L12a0

	.align	2, 0
.L1284:
	.word	0xfffff000
	.pool

.L12a0:
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0
	bl	__Func_92128
.L12ae:
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x82
	mov	r2, #0
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r1, #4
	mov	r0, #0x35
	bl	__Func_91eb0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1180

.thumb_func_start OvlFunc_12fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x48
	bl	OvlFunc_1054
	ldr	r3, =iwram_1ebc
	mov	r0, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0xf0
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r1
	mov	r11, r3
	ldr	r2, [r2]
	mov	r0, r11
	str	r2, [sp, #0x10]
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r6, sp, #0x3c
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r2, #0xc0
	lsl	r2, #9
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r10, r3
	mov	r8, r0
	mov	r3, #4
	mov	r0, r10
	and	r0, r3
	mov	r10, r0
	cmp	r0, #0
	bne	.L13ba
	bl	__Func_4458
	add	r1, sp, #0x14
	lsl	r0, #12
	mov	r2, #0xf8
	mov	r9, r1
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	mov	r3, r9
	strh	r0, [r3, #0x22]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	ldr	r5, [r7, #8]
	lsr	r3, #16
	lsl	r3, #16
	ldr	r0, =0xfffa0000
	add	r5, r3
	add	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, =0x1999
	lsr	r3, #16
	mul	r3, r2
	ldr	r1, =0x7ffd
	add	r3, r1
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	str	r3, [sp, #4]
	mov	r3, #0x80
	lsl	r3, #16
	mov	r0, r10
	str	r3, [sp, #8]
	mov	r3, r9
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r3, #0
	bl	OvlFunc_13c
.L13ba:
	mov	r0, r8
	cmp	r0, #0
	bge	.L1408
	mov	r1, #0x81
	mov	r0, r11
	lsl	r1, #1
	bl	__Func_93874
	ldr	r3, [r7, #0x10]
	mov	r0, #0x80
	lsl	r0, #12
	add	r3, r0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	mov	r0, r7
	bl	__Func_d14c
	mov	r0, r7
	mov	r1, #7
	bl	__Func_c300
	mov	r0, r7
	bl	__Func_ca6c
.L13ea:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	cmp	r2, r3
	bne	.L13ea
	mov	r0, r7
	mov	r1, #6
	bl	__Func_c300
	mov	r0, #3
	bl	__Func_30f8
	b	.L147c
.L1408:
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, #0x80
	lsl	r1, #12
	add	r3, r1
	mov	r0, r7
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	mov	r8, r0
	cmp	r0, #0
	bgt	.L147c
	ldr	r3, [r7, #8]
	ldr	r2, =0x5b333
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, r7
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	mov	r8, r0
	cmp	r0, #0
	bgt	.L147c
	ldr	r3, [r7, #8]
	ldr	r2, =0xfffa4ccd
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x5b333
	mov	r1, r6
	add	r3, r0
	mov	r0, r7
	str	r3, [r6, #8]
	bl	__Func_120dc
	mov	r8, r0
	cmp	r0, #0
	bgt	.L147c
	ldr	r1, [sp, #0x10]
	mov	r2, #0xc0
	ldr	r3, [r1, #0x10]
	lsl	r2, #9
	add	r3, r2
	str	r3, [r1, #0x10]
	ldr	r3, [r7, #0x10]
	add	r3, r2
	str	r3, [r7, #0x10]
.L147c:
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12fc

.thumb_func_start OvlFunc_14b0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	sub	sp, #0xc
	ldr	r5, [r3]
	bl	OvlFunc_1054
	ldr	r0, =0x90a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L14cc
	b	.L1618
.L14cc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	beq	.L14dc
	b	.L1618
.L14dc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #1
	bl	OvlFunc_1c78
	ldr	r3, =0xcba
	add	r7, r5, r3
	mov	r3, #0x96
	lsl	r3, #2
	mov	r8, r3
	mov	r3, r8
	strh	r3, [r7]
	mov	r0, #0
	bl	__Func_92054
	str	r6, [r0, #0x24]
	mov	r0, #0
	bl	__Func_92054
	str	r6, [r0, #0x2c]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	str	r5, [r0, #0x40]
	mov	r0, #0
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	mov	r5, sp
	and	r3, r2
	strb	r3, [r0]
	str	r6, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r5
	ldrh	r1, [r0, #6]
	ldr	r0, =0xfff00000
	bl	__Func_447c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	ldr	r1, [r5]
	cmp	r1, #0
	bge	.L1594
	ldr	r3, =0xffff
	add	r1, r3
.L1594:
	ldr	r2, [r5, #8]
	asr	r1, #16
	cmp	r2, #0
	bge	.L15a0
	ldr	r3, =0xffff
	add	r2, r3
.L15a0:
	asr	r2, #16
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x94
	bl	__Func_f9080
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x68
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x5c
	bl	__Func_921c4
	mov	r3, r8
	strh	r3, [r7]
	mov	r0, #0
	bl	OvlFunc_1c78
.L1618:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_14b0

.thumb_func_start OvlFunc_1638
	push	{r5, lr}
	ldr	r0, =ewram_240
	mov	r3, #0x8b
	lsl	r3, #2
	add	r2, r0, r3
	add	r3, #0x2c
	strh	r3, [r2]
	ldr	r2, =0x22e
	mov	r1, #0
	add	r3, r0, r2
	strh	r1, [r3]
	mov	r3, #0x8c
	lsl	r3, #2
	add	r2, r0, r3
	ldr	r3, =0x119
	strh	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r5, r0, r2
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x5c
	sub	sp, #8
	cmp	r2, r3
	bne	.L166c
	b	.L1846
.L166c:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	OvlFunc_1c1c
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_cd0
	lsl	r1, #4
	bl	__Func_41d8
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L16f8
	mov	r3, #0x40
	mov	r5, #0x7e
	str	r3, [sp]
	mov	r0, #0x16
	mov	r1, #7
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0x17
	mov	r1, #0x15
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x4c
	str	r3, [sp]
	mov	r0, #0x10
	mov	r1, #0x2a
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x50
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #0x2c
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x54
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0x37
	b	.L17f2
.L16f8:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L17fe
	mov	r3, #0x40
	mov	r5, #0x7e
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #5
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0xb
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0xc
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x4c
	str	r3, [sp]
	mov	r0, #0x38
	mov	r1, #0x12
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x50
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0x16
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x54
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x17
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x58
	str	r3, [sp]
	mov	r0, #0x26
	mov	r1, #0x18
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x5c
	str	r3, [sp]
	mov	r0, #0x1a
	mov	r1, #0x1c
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x60
	str	r3, [sp]
	mov	r0, #0x11
	mov	r1, #0x23
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x64
	str	r3, [sp]
	mov	r0, #0x32
	mov	r1, #0x24
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x68
	str	r3, [sp]
	mov	r0, #0x22
	mov	r1, #0x2b
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x6c
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0x2e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x70
	str	r3, [sp]
	mov	r0, #0x1b
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x74
	str	r3, [sp]
	mov	r0, #0x2b
	mov	r1, #0x38
.L17f2:
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	b	.L1842
.L17fe:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L1842
	mov	r0, #0xa9
	bl	__Func_91ff0
	mov	r3, #0x40
	mov	r5, #0x7c
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0x12
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x15
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
.L1842:
	bl	OvlFunc_4e4
.L1846:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1638

.thumb_func_start OvlFunc_1874
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x60
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1874

.thumb_func_start OvlFunc_18a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L26d0
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	sub	sp, #0xc
	lsr	r3, #5
	str	r3, [sp, #8]
	ldr	r3, =.L3030
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L18da
	ldr	r2, =.L26be
	ldr	r3, .L18f8	@ 2
	mov	r4, r2
	strh	r3, [r2]
	b	.L1932
.L18da:
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L190c
	ldr	r4, =.L26be
	mov	r5, #0
	ldrsh	r3, [r4, r5]
	ldrh	r2, [r4]
	cmp	r3, #0
	ble	.L1932
	sub	r3, r2, #1
	strh	r3, [r4]
	b	.L1932

	.align	2, 0
.L18f8:
	.word	2
	.pool

.L190c:
	ldr	r4, =.L26be
	mov	r0, #0
	ldrsh	r3, [r4, r0]
	ldrh	r2, [r4]
	cmp	r3, #1
	bgt	.L1932
	add	r3, r2, #1
	mov	r1, #0x80
	strh	r3, [r4]
	lsl	r1, #9
	lsl	r3, #16
	cmp	r3, r1
	bne	.L1932
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L1f80
	ldr	r1, =0x50003c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L1932:
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	cmp	r0, #0
	bne	.L1960
	ldr	r3, =.L26d0
	mov	r5, #0
	ldrsh	r0, [r3, r5]
	bl	__Func_3f78
	b	.L1be4

	.pool_aligned

.L1960:
	ldr	r3, =iwram_1ecc
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L198c
	ldr	r2, =0x539
	add	r3, r1, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r1, r3
	lsl	r3, r0, #19
	asr	r2, r3, #16
	add	r1, #0x26
	mov	r4, #0
.L1982:
	add	r4, #1
	strh	r2, [r1]
	add	r1, #4
	cmp	r4, #0x8f
	bls	.L1982
.L198c:
	mov	r0, #0x90
	lsl	r0, #4
	bl	__Func_4938
	mov	r9, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L1f80
	mov	r1, r9
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r9
	add	r3, #0xc
	ldr	r5, .L19e4	@ 0x1f
	str	r3, [sp, #4]
	mov	r10, r3
	mov	r4, #6
	mov	r11, r5
.L19b0:
	mov	r1, r10
	mov	r0, #0
	ldrsh	r2, [r1, r0]
	mov	r3, #0xf8
	lsl	r2, #16
	lsl	r3, #13
	and	r3, r2
	lsr	r3, #16
	mov	r8, r3
	lsr	r5, r2, #21
	mov	r3, r11
	lsr	r2, #26
	and	r2, r3
	and	r5, r3
	ldr	r3, =.L26bc
	mov	r0, #0
	ldrsh	r6, [r3, r0]
	mov	r1, #3
	mov	r0, r6
	mov	r7, r2
	str	r4, [sp]
	bl	_Func_af0
	mov	r1, #6
	add	r8, r0
	b	.L1a00

	.align	2, 0
.L19e4:
	.word	0x1f
	.pool

.L1a00:
	mov	r0, r6
	bl	_Func_af0
	sub	r7, #0x14
	sub	r0, r7, r0
	mov	r7, r0
	add	r7, #0x14
	ldr	r4, [sp]
	cmp	r6, #0x3c
	ble	.L1a30
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1a30
	lsl	r0, r6, #6
	mov	r1, #0x78
	bl	_Func_af0
	add	r0, r5, r0
	mov	r5, r0
	ldr	r4, [sp]
	sub	r5, #0x20
.L1a30:
	mov	r1, r8
	cmp	r1, #0x1f
	bls	.L1a3a
	mov	r2, #0x1f
	mov	r8, r2
.L1a3a:
	cmp	r5, #0x1f
	bls	.L1a40
	mov	r5, #0x1f
.L1a40:
	cmp	r7, #0x1f
	bls	.L1a46
	mov	r7, #0x1f
.L1a46:
	lsl	r2, r5, #5
	lsl	r3, r7, #10
	orr	r3, r2
	mov	r5, r8
	mov	r0, r10
	orr	r3, r5
	mov	r1, #2
	add	r4, #1
	strh	r3, [r0]
	add	r10, r1
	cmp	r4, #0xb
	bls	.L19b0
	ldr	r2, [sp, #4]
	ldr	r5, =0x50003cc
	mov	r6, r9
	ldr	r1, [r2]
	mov	r0, r5
	add	r6, #0x10
	add	r5, #4
	bl	__Func_38bc
	mov	r0, r5
	ldr	r1, [r6]
	add	r5, #4
	add	r6, #4
	bl	__Func_38bc
	ldr	r1, [r6]
	mov	r0, r5
	bl	__Func_38bc
	ldr	r2, =ewram_240
	ldr	r0, =0x232
	add	r3, r2, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r0, r3, #4
	sub	r0, r3
	mov	r3, #0x8b
	lsl	r3, #2
	add	r2, r3
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	lsl	r0, #3
	bl	_Func_af0
	ldr	r5, =.L26bc
	mov	r1, #0xec
	strh	r0, [r5]
	lsl	r1, #15
	lsl	r0, #16
	cmp	r0, r1
	ble	.L1ab6
	ldr	r2, =.L26c0
	ldr	r3, .L1ae0	@ 0x77
	strh	r3, [r2]
.L1ab6:
	ldr	r1, =.L26c0
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldrh	r2, [r1]
	cmp	r3, #0
	beq	.L1ad4
	mov	r3, r2
	sub	r3, #8
	strh	r2, [r5]
	strh	r3, [r1]
	lsl	r3, #16
	cmp	r3, #0
	bgt	.L1ad4
	ldr	r3, .L1ae4	@ 0
	strh	r3, [r1]
.L1ad4:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L2730
	mov	r1, r9
	ldr	r2, =0x84000240
	b	.L1b0c

	.align	2, 0
.L1ae0:
	.word	0x77
.L1ae4:
	.word	0
	.pool

.L1b0c:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =.L26c0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x76
	bgt	.L1b52
	ldr	r3, =.L26bc
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	mov	r3, #0x80
	mov	r1, r9
	mov	r4, #0xc
	sub	r3, r2
	add	r1, #0x50
	ldr	r0, =0xeeeeeeee
	cmp	r4, r3
	bcs	.L1b48
	mov	r2, #7
	mov	r12, r3
.L1b34:
	mov	r3, r4
	and	r3, r2
	str	r0, [r1, #0x20]
	stmia	r1!, {r0}
	cmp	r3, #7
	bne	.L1b42
	add	r1, #0x20
.L1b42:
	add	r4, #1
	cmp	r4, r12
	bcc	.L1b34
.L1b48:
	mov	r0, r9
	ldr	r3, [r0]
	str	r3, [r1]
	ldr	r3, [r0, #0x20]
	str	r3, [r1, #0x20]
.L1b52:
	mov	r2, #0x90
	lsl	r2, #3
	ldr	r0, =0x47f
	mov	r1, r9
	add	r2, r9
	mov	r4, #0
.L1b5e:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r3, #0
	beq	.L1b68
	strb	r3, [r1]
.L1b68:
	add	r4, #1
	add	r1, #1
	cmp	r4, r0
	bls	.L1b5e
	ldr	r3, =.L26d0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #0x90
	mov	r2, r9
	lsl	r1, #3
	bl	__Func_3fa4
	ldr	r2, =0x80008000
	ldr	r5, =.L26e0
	mov	r8, r2
	mov	r4, #0
	mov	r7, #0
	mov	r6, #8
.L1b8c:
	ldr	r3, =.L26be
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	lsl	r3, #3
	mov	r2, r3
	ldr	r3, =0x1ff
	sub	r2, #0x10
	and	r2, r3
	cmp	r4, #4
	bne	.L1ba6
	mov	r1, #0x80
	lsl	r1, #23
	mov	r8, r1
.L1ba6:
	mov	r3, #0
	str	r3, [r5]
	lsl	r3, r2, #16
	orr	r3, r6
	mov	r2, r8
	orr	r3, r2
	str	r3, [r5, #4]
	ldr	r0, [sp, #8]
	mov	r3, #0xe4
	lsl	r3, #8
	orr	r3, r0
	ldr	r0, =.L26e0
	str	r3, [r5, #8]
	add	r0, r7, r0
	mov	r1, #0xff
	str	r4, [sp]
	bl	__Func_3dec
	ldr	r1, [sp, #8]
	ldr	r4, [sp]
	add	r1, #8
	add	r4, #1
	add	r5, #0xc
	str	r1, [sp, #8]
	add	r7, #0xc
	add	r6, #0x20
	cmp	r4, #4
	bls	.L1b8c
	mov	r0, r9
	bl	__Func_2df0
.L1be4:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_18a4

.thumb_func_start OvlFunc_1c1c
	push	{r5, lr}
	ldr	r1, =.L2730
	ldr	r0, =.L1fa0
	bl	__Func_5340
	ldr	r5, =.L26d0
	bl	__Func_4080
	mov	r1, #0x90
	strh	r0, [r5]
	lsl	r0, #16
	lsl	r1, #3
	mov	r2, #0
	asr	r0, #16
	bl	__Func_3fa4
	ldr	r2, .L1c50	@ 0
	ldr	r3, =.L26be
	strh	r2, [r3]
	ldr	r3, =.L3030
	ldr	r1, =0xc76
	strh	r2, [r3]
	ldr	r0, =OvlFunc_18a4
	bl	__Func_41d8
	b	.L1c70

	.align	2, 0
.L1c50:
	.word	0
	.pool

.L1c70:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c1c

.thumb_func_start OvlFunc_1c78
	ldr	r3, =.L3030
	strh	r0, [r3]
	bx	lr
.func_end OvlFunc_1c78

	.section .data

	.incbin "overlays/rom_7bc690/orig.bin", 0x1e88, (0x1f30-0x1e88)
.L1f30:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f30, (0x1f48-0x1f30)
.L1f48:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f48, (0x1f70-0x1f48)
.L1f70:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f70, (0x1f80-0x1f70)
.L1f80:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f80, (0x1fa0-0x1f80)
.L1fa0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1fa0, (0x2120-0x1fa0)
.L2120:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2120, (0x212c-0x2120)
.L212c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x212c, (0x2174-0x212c)
.L2174:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2174, (0x21d4-0x2174)
.L21d4:
	.incbin "overlays/rom_7bc690/orig.bin", 0x21d4, (0x2234-0x21d4)
.L2234:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2234, (0x22dc-0x2234)
.L22dc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x22dc, (0x236c-0x22dc)
.L236c:
	.incbin "overlays/rom_7bc690/orig.bin", 0x236c, (0x23b0-0x236c)
.L23b0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23b0, (0x23c8-0x23b0)
.L23c8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x23c8, (0x2410-0x23c8)
.L2410:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2410, (0x24b8-0x2410)
.L24b8:
	.incbin "overlays/rom_7bc690/orig.bin", 0x24b8, (0x2500-0x24b8)
.L2500:
	.incbin "overlays/rom_7bc690/orig.bin", 0x2500, (0x26bc-0x2500)
.L26bc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26bc, (0x26be-0x26bc)
.L26be:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26be, (0x26c0-0x26be)
.L26c0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26c0

	.section .bss

	.lcomm	.Lunused_26c8, 8
	.lcomm	.L26d0, 0x10
	.lcomm	.L26e0, 0x50
	.lcomm	.L2730, 0x900
	.lcomm	.L3030, 4
