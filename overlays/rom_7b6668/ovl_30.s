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
	ldr	r2, =.L15a4
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
	ldr	r3, =.L15a4
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
	mov	r0, #0x16
	mov	r1, #1
	mov	r2, #2
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_324
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xe
	ldrsh	r3, [r0, r2]
	cmp	r3, #0x1f
	ble	.L344
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	b	.L352
.L344:
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
.L352:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_324

.thumb_func_start OvlFunc_358
	push	{lr}
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r2, [r0, #0x50]
	mov	r1, #0xa0
	ldrh	r3, [r2, #0x1e]
	lsl	r1, #5
	add	r3, r1
	strh	r3, [r2, #0x1e]
	pop	{r0}
	bx	r0
.func_end OvlFunc_358

.thumb_func_start OvlFunc_370
	push	{r5, lr}
	mov	r0, #0xe
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	bne	.L3b6
	add	r4, sp, #0x10
	mov	r3, #1
	str	r3, [r4]
	mov	r3, #9
	str	r3, [r4, #4]
	mov	r3, #0xa9
	strh	r3, [r4, #0x18]
	ldr	r3, =.L1740
	ldr	r2, [r5, #0x10]
	str	r3, [r4, #0x1c]
	ldr	r3, =0xffff0000
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	add	r2, r3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xcc
	lsl	r3, #14
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	OvlFunc_13c
.L3b6:
	add	sp, #0x38
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_370

.thumb_func_start OvlFunc_3cc
	push	{r5, lr}
	ldmia	r0!, {r5}
	ldmia	r1!, {r3}
	ldmia	r0!, {r4}
	sub	r5, r3
	ldmia	r1!, {r3}
	ldr	r2, [r1]
	sub	r4, r3
	ldr	r3, [r0]
	sub	r3, r2
	asr	r5, #16
	asr	r4, #16
	asr	r3, #16
	mov	r0, r5
	mul	r0, r5
	mov	r2, r4
	mul	r2, r4
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3cc

.thumb_func_start OvlFunc_408
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r11, r1
	mov	r1, #0
	str	r2, [sp, #4]
	mov	r5, r0
	str	r1, [sp]
	mov	r2, #0x5b
	add	r2, r5
	mov	r6, r3
	ldrb	r3, [r2]
	mov	r10, r2
	cmp	r3, #1
	bne	.L448
	mov	r3, #0x64
	add	r3, r5
	mov	r9, r3
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L44e
	mov	r1, #1
	bl	__Func_c300
	mov	r0, #1
	b	.L4ea
.L448:
	mov	r2, #0x64
	add	r2, r5
	mov	r9, r2
.L44e:
	mov	r3, #8
	add	r3, r5
	mov	r7, r11
	mov	r8, r3
	add	r7, #8
	mov	r1, r8
	mov	r0, r7
	bl	OvlFunc_3cc
	ldr	r1, [sp, #4]
	cmp	r0, r1
	blt	.L46a
	cmp	r6, #0
	beq	.L4d8
.L46a:
	mov	r2, r11
	ldr	r0, [r2, #0x10]
	ldr	r3, [r5, #0x10]
	mov	r2, r8
	sub	r0, r3
	ldr	r1, [r7]
	ldr	r3, [r2]
	sub	r1, r3
	bl	__Func_44d0
	ldr	r3, =0xfffff000
	lsl	r0, #16
	mov	r2, #0x80
	lsr	r0, #16
	lsl	r2, #5
	add	r4, r0, r3
	add	r1, r0, r2
	mov	r3, #0xf0
	ldrh	r2, [r5, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L4bc
	cmp	r1, r3
	beq	.L4bc
	cmp	r4, r3
	beq	.L4bc
	cmp	r6, #0
	bne	.L4bc
	mov	r3, r10
	mov	r1, #2
	strb	r6, [r3]
	mov	r0, r5
	bl	__Func_c300
	mov	r1, r9
	strh	r6, [r1]
	b	.L4e8
.L4bc:
	mov	r3, #1
	mov	r2, r10
	strb	r3, [r2]
	mov	r1, #1
	mov	r0, r5
	bl	__Func_c300
	mov	r3, #1
	str	r3, [sp]
	mov	r1, sp
	ldrh	r1, [r1]
	mov	r2, r9
	strh	r1, [r2]
	b	.L4e8
.L4d8:
	mov	r2, r10
	strb	r6, [r2]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_c300
	mov	r3, r9
	strh	r6, [r3]
.L4e8:
	ldr	r0, [sp]
.L4ea:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_408

.thumb_func_start OvlFunc_500
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r3, #0x80
	ldr	r2, [r5, #0x38]
	lsl	r3, #24
	mov	r6, #0
	cmp	r2, r3
	bne	.L518
	ldr	r3, [r5, #0x40]
	mov	r0, #0
	cmp	r3, r2
	beq	.L594
.L518:
	mov	r0, #0
	bl	__Func_92054
	mov	r1, r0
	ldr	r0, [r1, #8]
	asr	r3, r0, #20
	sub	r3, #0x11
	cmp	r3, #1
	bhi	.L552
	ldr	r3, [r1, #0x10]
	asr	r3, #20
	cmp	r3, #0xe
	bne	.L552
	ldr	r2, [r5, #8]
	asr	r3, r2, #20
	cmp	r3, #0x13
	bgt	.L552
	ldr	r3, [r5, #0x24]
	cmp	r3, #0
	bgt	.L552
	cmp	r0, r2
	bgt	.L55a
	mov	r2, r5
	add	r2, #0x62
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r6, #1
	b	.L55a
.L552:
	mov	r2, r5
	add	r2, #0x62
	mov	r3, #0
	strb	r3, [r2]
.L55a:
	cmp	r6, #0
	beq	.L57e
	mov	r2, #0x62
	add	r2, r5
	ldrb	r3, [r2]
	mov	r12, r2
	cmp	r3, #0x77
	bls	.L57e
	ldr	r3, =iwram_1ebc
	mov	r2, #0xc1
	ldr	r3, [r3]
	lsl	r2, #1
	add	r0, r3, r2
	mov	r3, #0xc8
	ldr	r2, .L58c	@ 0
	strh	r3, [r0]
	mov	r3, r12
	strb	r2, [r3]
.L57e:
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, r6
	bl	OvlFunc_408
	mov	r0, #0
	b	.L594

	.align	2, 0
.L58c:
	.word	0
	.pool

.L594:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_500

.thumb_func_start OvlFunc_59c
	ldr	r0, =.L17e8
	bx	lr
.func_end OvlFunc_59c

.thumb_func_start OvlFunc_5a4
	mov	r0, #0
	bx	lr
.func_end OvlFunc_5a4

.thumb_func_start OvlFunc_5a8
	ldr	r0, =.L18d8
	bx	lr
.func_end OvlFunc_5a8

.thumb_func_start OvlFunc_5b0
	push	{lr}
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5c4
	ldr	r3, =.L1900
	mov	r2, #0
	add	r3, #0xbe
	strb	r2, [r3]
.L5c4:
	ldr	r0, =.L1900
	pop	{r1}
	bx	r1
.func_end OvlFunc_5b0

.thumb_func_start OvlFunc_5d4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x17e8
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5d4

.thumb_func_start OvlFunc_5f4
	push	{r5, r6, r7, lr}
	mov	r0, #0x14
	sub	sp, #8
	bl	__Func_92054
	mov	r6, r0
	bl	__Func_916b0
	mov	r0, #0x12
	bl	__Func_92054
	mov	r7, #0
	str	r7, [r0, #0x6c]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L628
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x13
	bgt	.L6a2
.L628:
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	mov	r2, #0
	ldrh	r5, [r0, #6]
	mov	r0, #0x12
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x17fb
	bl	__Func_92b94
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L67e
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92f84
	mov	r0, #0x12
	bl	__Func_92054
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0x12
	bl	__Func_92054
	strh	r5, [r0, #6]
	b	.L692
.L67e:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
.L692:
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, =OvlFunc_500
	str	r3, [r0, #0x6c]
	bl	__Func_91750
	b	.L916
.L6a2:
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x1b
	ble	.L756
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x1d
	bgt	.L756
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1a
	beq	.L756
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r2, [r5, #8]
	ldr	r3, [r0, #8]
	cmp	r2, r3
	bge	.L72a
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r1, [r0, #8]
	asr	r1, #20
	lsl	r1, #4
	sub	r1, #8
	mov	r0, #0
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r7, #1
	b	.L750
.L72a:
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r1, [r0, #8]
	asr	r1, #20
	lsl	r1, #4
	add	r1, #0x18
	mov	r0, #0
	mov	r2, #0xe8
	bl	__Func_9218c
.L750:
	mov	r0, #0
	bl	__Func_923c4
.L756:
	mov	r0, #0x12
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0x12
	bl	__Func_92054
	str	r5, [r0, #0x3c]
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #1
	str	r5, [r0, #0x40]
	mov	r0, #0x12
	bl	__Func_9207c
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r3, =0x4ccc
	mov	r0, #0x12
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, #0x80
	lsl	r3, #12
	asr	r2, #20
	lsl	r5, #20
	add	r5, r3
	lsl	r2, #20
	add	r2, r3
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x10
	mov	r1, #0x10
	str	r5, [sp]
	bl	__Func_10704
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_92b08
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r5, =0x1999
.L7fe:
	mov	r0, #3
	bl	__Func_30f8
	ldr	r3, [r6, #0x1c]
	ldr	r2, [r6, #0x18]
	add	r3, r5
	str	r3, [r6, #0x1c]
	ldr	r3, =0xffff
	add	r2, r5
	str	r2, [r6, #0x18]
	cmp	r2, r3
	ble	.L7fe
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x46
	bl	__Func_937b8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0x12
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_9259c
	mov	r0, #0x46
	bl	__Func_9163c
	ldr	r0, =0x17fa
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_9202c
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1a
	bne	.L87a
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	ble	.L87a
	mov	r7, #1
.L87a:
	cmp	r7, #0
	beq	.L8c4
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
.L8c4:
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xe
	beq	.L8ee
	mov	r0, #0x12
	bl	__Func_92054
	mov	r2, #0xe8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r0, #0x12
	bl	__Func_921c4
.L8ee:
	mov	r1, #0x8c
	mov	r2, #0xe8
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_921c4
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	bl	__Func_91750
.L916:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5f4

.thumb_func_start OvlFunc_94c
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	bgt	.L964
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_92b08
.L964:
	pop	{r0}
	bx	r0
.func_end OvlFunc_94c

.thumb_func_start OvlFunc_968
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #3
	mov	r1, #0x11
	str	r5, [sp]
	bl	__Func_10704
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_324
	bl	__Func_41d8
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_92b08
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968

.thumb_func_start OvlFunc_9dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	bl	__Func_916b0
	ldr	r0, =0x202
	bl	__Func_79338
	mov	r7, r0
	cmp	r7, #0
	beq	.La2a
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x17f4
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	b	.Lc9c
.La2a:
	ldr	r0, =0x17f2
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	add	r5, sp, #0x38
	and	r3, r2
	strb	r3, [r0]
	str	r7, [r5]
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r5
	ldrh	r1, [r0, #6]
	ldr	r0, =0xfff80000
	bl	__Func_447c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	ldr	r1, [r5]
	cmp	r1, #0
	bge	.La7a
	ldr	r2, =0xffff
	add	r1, r2
.La7a:
	ldr	r2, [r5, #8]
	asr	r1, #16
	cmp	r2, #0
	bge	.La86
	ldr	r3, =0xffff
	add	r2, r3
.La86:
	asr	r2, #16
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_925cc
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #0x9c
	mov	r10, r2
	lsl	r3, #17
	ldr	r2, =0x3333
	mov	r5, #0xc0
	mov	r8, r3
	ldr	r6, =0x20001
	lsl	r5, #16
	str	r2, [sp]
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	ldr	r3, =0x1999
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [sp]
	mov	r0, r5
	ldr	r3, =0x3333
	mov	r1, #0
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #0x84
	bl	__Func_f9080
	ldr	r5, =OvlFunc_370
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r0, #0x48]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0xc0
	mov	r2, #0xc0
	str	r7, [r0, #0x44]
	lsl	r1, #10
	mov	r0, #0xe
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0x9c
	lsl	r2, #1
	mov	r1, #0xa8
	mov	r0, #0xe
	bl	__Func_92128
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r0, #0x86
	bl	__Func_f9080
	ldr	r1, =.L16a0
	mov	r0, #0x13
	bl	__Func_9207c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_358
	bl	__Func_41d8
	ldr	r3, =0x11b
	mov	r2, r10
	strh	r3, [r2, #0x18]
	ldr	r3, =.L1714
	str	r3, [r2, #0x1c]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r2, #0x20]
	mov	r3, #0xa8
	lsl	r3, #16
	mov	r9, r3
	mov	r3, #0xe4
	lsl	r3, #15
	str	r3, [sp, #8]
	mov	r2, #0xa6
	mov	r3, r10
	str	r3, [sp, #0xc]
	lsl	r2, #17
	mov	r3, #0
	mov	r0, r9
	mov	r1, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_13c
	mov	r2, #0x9c
	mov	r1, #0x92
	lsl	r2, #1
	mov	r0, #0xe
	bl	__Func_92128
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r0, r5
	bl	__Func_4278
	mov	r5, #0x90
	lsl	r5, #16
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r2, =0xffffcccd
	ldr	r3, =0x1999
	mov	r11, r2
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	mov	r3, r11
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r2, =0xffff8000
	mov	r10, r2
	mov	r1, #0
	mov	r2, r8
	mov	r3, r10
	mov	r0, r5
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #0x13
	bl	__Func_920e8
	mov	r0, #0x7c
	bl	__Func_f9080
	mov	r5, #0x80
	lsl	r5, #12
	mov	r0, r9
	mov	r1, r5
	mov	r2, r8
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, r9
	mov	r1, r5
	mov	r2, r8
	ldr	r3, =0x3333
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r1, r5
	mov	r2, r8
	mov	r3, r11
	mov	r0, r9
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r0, =OvlFunc_358
	bl	__Func_4278
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r2, r10
	strh	r2, [r3, #0x1e]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r0, #0x48]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0xe
	bl	__Func_93040
	ldr	r0, =0x202
	bl	__Func_79358
	bl	__Func_9202c
	bl	__Func_91750
.Lc9c:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9dc

.thumb_func_start OvlFunc_cec
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x17f7
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_cec

.thumb_func_start OvlFunc_d0c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	mov	r0, #0x80
	lsl	r0, #2
	mov	r8, r3
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ldd8
	ldr	r3, [r5, #8]
	ldr	r1, =0xfff00000
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r6, #8]
	mov	r3, #0x80
	ldrh	r1, [r5, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #14
	mov	r2, r6
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_120dc
	cmp	r0, #0
	bne	.Ldd8
	bl	__Func_916b0
	mov	r1, #6
	mov	r0, r5
	bl	__Func_c300
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_92158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c528
	mov	r3, r8
	strb	r3, [r7]
	bl	__Func_91750
.Ldd8:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d0c

.thumb_func_start OvlFunc_de8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_92064
	cmp	r5, #6
	bne	.Le20
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_9228c
	b	.Le2c
.Le20:
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_92208
.Le2c:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r5
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_de8

.thumb_func_start OvlFunc_e4c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #6
	bhi	.Lefc
	ldr	r2, =.Le70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2,0
.Le70:
	.word	.Le8c
	.word	.Le9e
	.word	.Leaa
	.word	.Leb6
	.word	.Lec8
	.word	.Leda
	.word	.Leec
.Le8c:
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L1778
	mov	r1, #0x51
	mov	r2, #0x12
	bl	__Func_10560
	b	.Lefc
.Le9e:
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L178e
	mov	r1, #0x53
	b	.Lee4
.Leaa:
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L178e
	mov	r1, #0x56
	b	.Lee4
.Leb6:
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L17a4
	mov	r1, #0x54
	mov	r2, #0x18
	bl	__Func_10560
	b	.Lefc
.Lec8:
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L17a4
	mov	r1, #0x48
	mov	r2, #7
	bl	__Func_10560
	b	.Lefc
.Leda:
	mov	r0, #0xbc
	bl	__Func_f9080
	ldr	r0, =.L17ba
	mov	r1, #0x45
.Lee4:
	mov	r2, #0xb
	bl	__Func_10560
	b	.Lefc
.Leec:
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L17d0
	mov	r1, #0x53
	mov	r2, #7
	bl	__Func_10560
.Lefc:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	OvlFunc_de8
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e4c

.thumb_func_start OvlFunc_f30
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0x10
	bl	__Func_916b0
	ldr	r1, =.L16a0
	mov	r0, #0x13
	bl	__Func_9207c
	ldr	r3, =OvlFunc_358
	mov	r1, #0xc8
	mov	r11, r3
	lsl	r1, #4
	mov	r0, r11
	bl	__Func_41d8
	mov	r0, #0x13
	bl	__Func_920e8
	mov	r0, #0x7c
	bl	__Func_f9080
	mov	r3, #0xa8
	lsl	r3, #16
	mov	r9, r3
	mov	r3, #0x80
	lsl	r3, #12
	mov	r8, r3
	mov	r3, #0x9c
	lsl	r3, #17
	mov	r10, r3
	ldr	r6, =0x20001
	mov	r5, #0
	mov	r0, r9
	mov	r1, r8
	mov	r2, r10
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r3, =0x3333
	mov	r0, r9
	mov	r1, r8
	mov	r2, r10
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r3, =0xffffcccd
	mov	r1, r8
	mov	r2, r10
	mov	r0, r9
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, r11
	bl	__Func_4278
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r1, r9
	mov	r2, r10
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0x13
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x17fd
	bl	__Func_92b94
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1014
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1014:
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	ldr	r0, =0x203
	bl	__Func_79358
	bl	__Func_9202c
	bl	__Func_91750
	add	sp, #0x10
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f30

.thumb_func_start OvlFunc_1060
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_9207c
	mov	r0, #0x12
	bl	__Func_92054
	mov	r6, #0
	str	r6, [r0, #0x6c]
	mov	r0, #0x12
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0x12
	bl	__Func_92054
	str	r5, [r0, #0x40]
	mov	r0, #0x12
	bl	__Func_92054
	str	r6, [r0, #0x24]
	mov	r0, #0x12
	bl	__Func_92054
	str	r6, [r0, #0x2c]
	mov	r0, #0x12
	bl	__Func_92054
	str	r6, [r0, #0x30]
	mov	r0, #0x12
	bl	__Func_92054
	mov	r2, #0
	str	r6, [r0, #0x34]
	ldr	r1, =0x103
	mov	r0, #0x12
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x8c
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r1, #0x94
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x12
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	ldr	r1, =.L15b0
	mov	r0, #0x12
	bl	__Func_9207c
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, =OvlFunc_500
	str	r3, [r0, #0x6c]
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1060

.thumb_func_start OvlFunc_1140
	ldr	r0, =.L1ac8
	bx	lr
.func_end OvlFunc_1140

.thumb_func_start OvlFunc_1148
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r2, #0x80
	add	r3, r0
	lsl	r2, #1
	str	r2, [r3]
	mov	r0, #0xa9
	sub	sp, #8
	bl	__Func_91ff0
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #9
	ble	.L117c
	ldr	r0, =0x12f
	bl	__Func_79374
.L117c:
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	beq	.L11be
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x92
	mov	r2, #0x9c
	mov	r0, #0xe
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	ldr	r0, =0x89a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L11be
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L11be:
	mov	r0, #0x8b
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L11d4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L11d4:
	mov	r2, #0
	mov	r6, #0
	mov	r8, r2
.L11da:
	mov	r0, r6
	add	r0, #0x17
	bl	__Func_92054
	mov	r5, r0
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r2, [r1, #9]
	neg	r0, r0
	mov	r3, r0
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	mov	r3, r5
	strb	r2, [r1, #9]
	add	r3, #0x55
	mov	r2, r5
	mov	r7, #0
	add	r2, #0x59
	strb	r7, [r3]
	mov	r3, #8
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #0xf
	add	r5, #0x23
	bl	__Func_929d8
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #2
	orr	r3, r2
	add	r6, #1
	strb	r3, [r5]
	cmp	r6, #2
	bls	.L11da
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L124c
	mov	r1, #0x92
	mov	r2, #0x9c
	mov	r0, #0xe
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
.L124c:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L128c
	mov	r1, #5
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x11
	asr	r5, #20
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_324
	lsl	r1, #4
	bl	__Func_41d8
.L128c:
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_92950
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, =OvlFunc_500
	str	r3, [r0, #0x6c]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	ldr	r3, =0x8ccc
	str	r3, [r0, #0x18]
	ldr	r3, =0x6666
	ldr	r2, [r0, #0x50]
	str	r3, [r0, #0x1c]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r5, .L12f4	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	str	r7, [r0, #0xc]
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	add	sp, #8
	mov	r0, #0
	b	.L1324

	.align	2, 0
.L12f4:
	.word	0
	.pool

.L1324:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1148

	.section .data

	.incbin "overlays/rom_7b6668/orig.bin", 0x14fc, (0x15a4-0x14fc)
.L15a4:
	.incbin "overlays/rom_7b6668/orig.bin", 0x15a4, (0x15b0-0x15a4)
.L15b0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x15b0, (0x16a0-0x15b0)
.L16a0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x16a0, (0x1714-0x16a0)
.L1714:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1714, (0x1740-0x1714)
.L1740:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1740, (0x1778-0x1740)
.L1778:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1778, (0x178e-0x1778)
.L178e:
	.incbin "overlays/rom_7b6668/orig.bin", 0x178e, (0x17a4-0x178e)
.L17a4:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17a4, (0x17ba-0x17a4)
.L17ba:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17ba, (0x17d0-0x17ba)
.L17d0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17d0, (0x17e8-0x17d0)
.L17e8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17e8, (0x18d8-0x17e8)
.L18d8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x18d8, (0x1900-0x18d8)
.L1900:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1900, (0x1ac8-0x1900)
.L1ac8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1ac8
