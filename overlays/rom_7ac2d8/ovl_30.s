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
	ldr	r2, =.L5e64
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
	ldr	r3, =.L5e64
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
.func_end OvlFunc_314

.thumb_func_start OvlFunc_350
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	ldr	r6, =0xffff
	mov	r5, #8
	asr	r7, r3, #20
	add	r1, #0x34
.L364:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r7, r3
	bne	.L392
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bge	.L376
	add	r3, r6
.L376:
	asr	r2, r3, #16
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L380
	add	r3, r6
.L380:
	asr	r3, #16
	cmp	r2, r3
	bne	.L392
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.L39a
.L392:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L364
	mov	r0, #0
.L39a:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_350

.thumb_func_start OvlFunc_3a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	mov	r8, r0
	lsr	r3, #12
	ldr	r0, =.L5d50
	lsl	r5, r3, #2
	ldr	r2, =0xffff0000
	ldr	r1, [r0, r5]
	mov	r10, r2
	mov	r3, r10
	mov	r2, r1
	mov	r9, r0
	mov	r0, r8
	and	r2, r3
	ldr	r3, [r0, #8]
	mov	r7, sp
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r8
	bl	OvlFunc_350
	mov	r6, r0
	cmp	r6, #0
	bne	.L3f8
	b	.L50a
.L3f8:
	mov	r2, r9
	ldr	r1, [r2, r5]
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
	bl	OvlFunc_350
	cmp	r0, #0
	beq	.L42e
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L50a
.L42e:
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
	bl	OvlFunc_350
	cmp	r0, #0
	beq	.L45a
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L50a
.L45a:
	mov	r2, r6
	add	r2, #0x22
	mov	r3, #2
	strb	r3, [r2]
	mov	r2, r9
	ldr	r1, [r2, r5]
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
	bgt	.L50a
	mov	r3, r6
	add	r3, #0x62
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #0
	bne	.L50a
	mov	r1, #8
	mov	r0, r8
	bl	__Func_c300
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__Func_30f8
	mov	r0, #0xb9
	bl	__Func_f9080
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
	mov	r0, r6
	bl	__Func_ca6c
	bl	__Func_9202c
	ldr	r3, [r7]
	str	r3, [r6, #8]
	ldr	r3, [r7, #8]
	mov	r1, r10
	str	r3, [r6, #0x10]
	str	r1, [r6, #0x24]
	str	r1, [r6, #0x2c]
	mov	r3, #0x80
	mov	r2, r8
	lsl	r3, #24
	str	r3, [r2, #0x38]
	str	r3, [r2, #0x40]
	mov	r0, #0xa
	ldrsh	r3, [r2, r0]
	lsl	r3, #16
	str	r1, [r2, #0x24]
	str	r1, [r2, #0x2c]
	str	r3, [r2, #8]
	mov	r1, #0x12
	ldrsh	r3, [r2, r1]
	lsl	r3, #16
	str	r3, [r2, #0x10]
	mov	r0, r8
	mov	r1, #1
	bl	__Func_c300
.L50a:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a8

.thumb_func_start OvlFunc_528
	push	{r5, r6, lr}
	mov	r4, r3
	ldr	r3, [sp, #0xc]
	mov	r12, r3
	ldr	r3, =iwram_1e70
	mov	r6, r1
	mov	r1, r2
	ldr	r2, [r3]
	ldr	r5, [sp, #0x10]
	cmp	r2, #0
	beq	.L57c
	cmp	r0, #2
	bhi	.L552
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r2, r3]
	b	.L554
.L552:
	ldr	r0, =ewram_10000
.L554:
	lsl	r3, r1, #7
	add	r3, r6, r3
	lsl	r3, #2
	mov	r1, #0
	add	r0, r3
	cmp	r1, r12
	bcs	.L57c
.L562:
	lsl	r3, r1, #9
	mov	r2, #0
	add	r3, r0, r3
	cmp	r2, r4
	bcs	.L576
.L56c:
	add	r2, #1
	strb	r5, [r3, #2]
	add	r3, #4
	cmp	r2, r4
	bcc	.L56c
.L576:
	add	r1, #1
	cmp	r1, r12
	bcc	.L562
.L57c:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_528

.thumb_func_start OvlFunc_58c
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldrh	r3, [r5, #6]
	ldr	r2, =.L5d50
	lsr	r3, #12
	lsl	r7, r3, #2
	ldr	r1, [r2, r7]
	ldr	r2, =0xffff0000
	ldr	r3, [r5, #8]
	and	r2, r1
	sub	sp, #0xc
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r0, r6
	mov	r1, r5
	str	r3, [r6, #8]
	bl	OvlFunc_350
	cmp	r0, #0
	beq	.L5e6
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r2, =.L5d90
	mov	r1, #0
.L5cc:
	ldmia	r2!, {r3}
	cmp	r0, r3
	beq	.L61a
	add	r1, #1
	cmp	r1, #5
	bls	.L5cc
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
.L5e6:
	ldr	r3, =.L5d50
	ldr	r2, =0xffff0000
	ldr	r1, [r3, r7]
	ldr	r3, [r5, #8]
	and	r2, r1
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r0, r5
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	cmp	r0, #0
	ble	.L61a
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
.L61a:
	mov	r0, #0
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_58c

.thumb_func_start OvlFunc_630
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x18
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, =iwram_1ebc
	mov	r0, #0
	ldr	r5, [r3]
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	ldr	r1, [sp, #0x14]
	lsr	r3, #12
	mov	r2, #8
	str	r3, [r1]
	add	r5, #0x34
	str	r2, [sp, #8]
	mov	r9, r0
	mov	r11, r5
.L662:
	mov	r3, r11
	ldr	r3, [r3]
	mov	r10, r3
	ldr	r3, [r3, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =.L5d90
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L5da8
	str	r3, [sp]
	mov	r8, r4
.L67c:
	ldr	r1, [sp]
	ldmia	r1!, {r3}
	ldr	r2, [sp, #4]
	mov	r4, r1
	str	r4, [sp]
	cmp	r2, r3
	bne	.L71a
	ldr	r4, [sp, #0xc]
	mov	r3, r8
	str	r3, [r4]
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r4, =.L5d50
	lsl	r3, #2
	mov	r1, r9
	ldr	r2, [r4, r3]
	ldr	r1, [r1, #8]
	asr	r3, r2, #16
	mov	r14, r1
	asr	r1, #16
	add	r1, r3
	asr	r7, r1, #4
	mov	r1, r9
	ldr	r1, [r1, #0x10]
	lsl	r2, #16
	asr	r2, #16
	asr	r3, r1, #16
	add	r3, r2
	asr	r5, r3, #4
	mov	r3, r10
	mov	r12, r1
	mov	r2, #0xa
	ldrsh	r1, [r3, r2]
	ldr	r3, [r0]
	add	r3, r1, r3
	asr	r6, r3, #4
	mov	r3, r10
	mov	r4, #0x12
	ldrsh	r2, [r3, r4]
	ldr	r3, [r0, #4]
	add	r3, r2, r3
	asr	r4, r3, #4
	ldr	r3, [r0, #8]
	add	r1, r3
	ldr	r3, [r0, #0xc]
	add	r2, r3
	asr	r1, #4
	asr	r2, #4
	cmp	r6, r7
	bgt	.L71a
	cmp	r7, r1
	bge	.L71a
	cmp	r4, r5
	bgt	.L71a
	cmp	r5, r2
	bge	.L71a
	mov	r3, #1
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L708
	mov	r2, r14
	asr	r3, r2, #20
	cmp	r6, r3
	beq	.L71a
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #0x10]
	mov	r0, r10
	str	r3, [r4]
	b	.L736
.L708:
	mov	r1, r12
	asr	r3, r1, #20
	cmp	r4, r3
	beq	.L71a
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x10]
	mov	r0, r10
	str	r2, [r3]
	b	.L736
.L71a:
	mov	r4, #1
	add	r8, r4
	mov	r1, r8
	add	r0, #0x10
	cmp	r1, #5
	bls	.L67c
	ldr	r3, [sp, #8]
	mov	r2, #4
	add	r3, #1
	add	r11, r2
	str	r3, [sp, #8]
	cmp	r3, #0x41
	bls	.L662
	mov	r0, #0
.L736:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_630

.thumb_func_start OvlFunc_758
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	sub	sp, #0x20
	mov	r3, #0
	add	r0, sp, #0x10
	add	r1, r6, #4
	mov	r2, r6
	str	r3, [r6, #0x14]
	bl	OvlFunc_630
	mov	r10, r0
	cmp	r0, #0
	bne	.L782
	mov	r0, #0
	b	.L8cc
.L782:
	mov	r0, r10
	add	r0, #0x22
	mov	r3, #2
	str	r0, [sp, #4]
	strb	r3, [r0]
	ldr	r3, [r6]
	mov	r1, #0
	str	r1, [sp, #0xc]
	ldr	r5, =.L5da8
	lsl	r1, r3, #4
	add	r3, r1, #4
	ldr	r2, [r5, r3]
	cmp	r2, #0
	bge	.L7a0
	neg	r2, r2
.L7a0:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r5, r3]
	cmp	r3, #0
	bge	.L7ac
	neg	r3, r3
.L7ac:
	add	r3, r2, r3
	asr	r3, #4
	str	r3, [sp, #8]
	ldr	r2, [r5, r1]
	cmp	r2, #0
	bge	.L7ba
	neg	r2, r2
.L7ba:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r5, r3]
	cmp	r3, #0
	bge	.L7c6
	neg	r3, r3
.L7c6:
	add	r3, r2, r3
	asr	r3, #4
	mov	r9, r3
	ldr	r3, [sp, #0x10]
	ldr	r1, =.L5d50
	add	r2, sp, #0x14
	lsl	r3, #2
	mov	r8, r2
	ldr	r2, [r1, r3]
	ldr	r3, =0xffff0000
	mov	r4, r10
	and	r2, r3
	ldr	r3, [r4, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r0]
	ldr	r0, [r4, #0xc]
	mov	r2, r8
	str	r0, [r2, #4]
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	ldr	r2, [r1, r3]
	ldr	r3, [r4, #0x10]
	lsl	r2, #16
	mov	r4, r8
	add	r3, r2
	str	r3, [r4, #8]
	mov	r4, r6
	str	r0, [r6, #0xc]
	add	r4, #8
	mov	r11, r8
.L804:
	ldr	r3, [r6]
	ldr	r0, =.L5da8
	lsl	r3, #4
	add	r3, #4
	ldr	r2, [r0, r3]
	mov	r1, r8
	ldr	r3, [r1, #8]
	lsl	r2, #16
	add	r3, r2
	ldr	r2, [sp, #8]
	mov	r7, #0
	str	r3, [r6, #0x10]
	cmp	r7, r2
	bge	.L86a
.L820:
	ldr	r3, [r6]
	ldr	r0, =.L5da8
	lsl	r3, #4
	ldr	r2, [r0, r3]
	mov	r1, r8
	ldr	r3, [r1]
	lsl	r2, #16
	add	r3, r2
	mov	r5, #0
	str	r3, [r6, #8]
	cmp	r5, r9
	bge	.L858
.L838:
	mov	r1, r4
	mov	r0, r10
	str	r4, [sp]
	bl	__Func_120dc
	ldr	r4, [sp]
	cmp	r0, #2
	beq	.L894
	ldr	r3, [r4]
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	add	r5, #1
	str	r3, [r4]
	cmp	r5, r9
	blt	.L838
.L858:
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	lsl	r0, #13
	ldr	r1, [sp, #8]
	add	r3, r0
	add	r7, #1
	str	r3, [r6, #0x10]
	cmp	r7, r1
	blt	.L820
.L86a:
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #0x10]
	add	r2, #1
	str	r2, [sp, #0xc]
	ldr	r0, =.L5d50
	lsl	r3, #2
	ldr	r2, [r0, r3]
	ldr	r3, =0xffff0000
	mov	r1, r11
	and	r2, r3
	ldr	r3, [r1]
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [sp, #0x10]
	lsl	r3, #2
	ldr	r2, [r0, r3]
	ldr	r3, [r1, #8]
	lsl	r2, #16
	add	r3, r2
	str	r3, [r1, #8]
	b	.L804
.L894:
	ldr	r2, [sp, #4]
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, [sp, #0xc]
	mov	r0, #0
	cmp	r3, #0
	beq	.L8cc
	ldr	r3, [sp, #0x10]
	ldr	r2, =.L5d50
	lsl	r3, #2
	ldr	r2, [r2, r3]
	ldr	r3, =0xffff0000
	ldr	r4, [sp, #0xc]
	and	r3, r2
	mov	r1, r4
	mul	r1, r3
	lsl	r2, #16
	mul	r2, r4
	mov	r0, r10
	ldr	r3, [r0, #8]
	add	r3, r1
	str	r3, [r6, #8]
	ldr	r3, [r0, #0xc]
	str	r3, [r6, #0xc]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r6, #0x10]
	mov	r0, #1
.L8cc:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_758

.thumb_func_start OvlFunc_8ec
	sub	sp, #0x10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r0, [sp, #0x48]
	str	r1, [sp, #0x4c]
	str	r2, [sp, #0x50]
	str	r3, [sp, #0x54]
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	mov	r0, #0
	str	r3, [sp, #0xc]
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	ldr	r0, [sp, #0x4c]
	lsr	r3, #12
	mov	r8, r3
	bl	__Func_92054
	ldr	r3, [sp, #0x48]
	ldr	r4, =.L5da8
	lsl	r1, r3, #4
	add	r3, r1, #4
	ldr	r2, [r4, r3]
	mov	r7, r0
	cmp	r2, #0
	bge	.L930
	neg	r2, r2
.L930:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.L93c
	neg	r3, r3
.L93c:
	add	r3, r2, r3
	asr	r3, #4
	str	r3, [sp, #8]
	ldr	r2, [r4, r1]
	cmp	r2, #0
	bge	.L94a
	neg	r2, r2
.L94a:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.L956
	neg	r3, r3
.L956:
	add	r3, r2, r3
	asr	r3, #4
	mov	r9, r3
	ldr	r5, =0x1999
	ldr	r3, [r7, #8]
	mov	r6, #0x80
	add	r0, sp, #0x1c
	lsl	r6, #8
	str	r6, [r7, #0x30]
	str	r5, [r7, #0x34]
	str	r3, [r0]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #8]
	ldr	r2, [sp, #0x48]
	lsl	r2, #4
	ldr	r3, [r4, r2]
	ldr	r1, [r7, #8]
	lsl	r3, #16
	add	r1, r3
	mov	r11, r0
	add	r0, sp, #0x10
	str	r1, [r0]
	add	r2, #4
	ldr	r3, [r4, r2]
	ldr	r2, [r7, #0x10]
	lsl	r3, #16
	add	r2, r3
	asr	r1, #20
	asr	r2, #20
	str	r1, [r0]
	str	r2, [r0, #8]
	ldr	r3, [sp, #8]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r3, r9
	bl	OvlFunc_528
	mov	r2, r5
	mov	r0, #0
	mov	r1, r6
	bl	__Func_92064
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r4, r11
	ldr	r2, [sp, #0x50]
	ldr	r3, [r4]
	sub	r1, r2, r3
	cmp	r1, #0
	bge	.L9cc
	ldr	r0, =0x1ffff
	add	r1, r0
.L9cc:
	mov	r4, r11
	ldr	r2, [sp, #0x58]
	ldr	r3, [r4, #8]
	sub	r2, r3
	asr	r1, #17
	cmp	r2, #0
	bge	.L9de
	ldr	r0, =0x1ffff
	add	r2, r0
.L9de:
	asr	r2, #17
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =OvlFunc_58c
	str	r3, [r0, #0x6c]
	mov	r0, #4
	bl	__Func_9163c
	mov	r3, r8
	sub	r3, #6
	cmp	r3, #7
	bhi	.La08
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
	b	.La10
.La08:
	mov	r0, r7
	mov	r1, #2
	bl	__Func_c300
.La10:
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r0, r7
	ldr	r1, [sp, #0x50]
	ldr	r2, [sp, #0x54]
	ldr	r3, [sp, #0x58]
	bl	__Func_d14c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r2, =.L5d50
	mov	r1, r8
	lsl	r3, r1, #2
	ldr	r0, [r2, r3]
	asr	r3, r0, #16
	lsl	r3, #16
	lsl	r0, #16
	asr	r1, r3, #16
	asr	r2, r0, #16
	lsr	r3, #31
	lsr	r0, #31
	add	r1, r3
	add	r2, r0
	asr	r1, #1
	asr	r2, #1
	mov	r0, #0
	bl	__Func_9228c
	ldr	r3, [sp, #0x5c]
	cmp	r3, #0
	beq	.La68
	bl	_call_via_r3
.La68:
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0
	str	r2, [r0, #0x6c]
	mov	r0, r7
	bl	__Func_ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xd5
	bl	__Func_f9080
	ldr	r3, [sp, #0x50]
	str	r3, [r7, #8]
	ldr	r3, [sp, #0x58]
	str	r3, [r7, #0x10]
	mov	r3, #0
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x2c]
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c300
	ldr	r2, [sp, #0x48]
	ldr	r4, =.L5da8
	lsl	r2, #4
	ldr	r3, [r4, r2]
	ldr	r0, [sp, #0x50]
	lsl	r3, #16
	add	r2, #4
	add	r0, r3
	ldr	r3, [r4, r2]
	ldr	r1, [sp, #0x58]
	lsl	r3, #16
	add	r1, r3
	ldr	r2, [sp, #0xc]
	asr	r0, #20
	asr	r1, #20
	mov	r10, r4
	mov	r4, #0x9e
	str	r0, [sp, #0x50]
	str	r1, [sp, #0x58]
	lsl	r4, #1
	add	r3, r2, r4
	ldr	r3, [r3]
	mov	r8, r3
	mov	r2, r8
	asr	r2, #20
	ldr	r4, [sp, #0xc]
	mov	r8, r2
	mov	r2, #0xa0
	lsl	r2, #1
	add	r3, r4, r2
	ldr	r6, [r3]
	mov	r4, r8
	asr	r6, #20
	add	r3, r4, r0
	add	r2, r6, r1
	str	r3, [sp]
	str	r2, [sp, #4]
	ldr	r3, [sp, #8]
	mov	r2, r9
	bl	__Func_10704
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0x50]
	ldr	r2, [sp, #0x58]
	str	r0, [sp]
	mov	r5, #0xff
	mov	r3, r9
	mov	r0, #0
	str	r5, [sp, #4]
	bl	OvlFunc_528
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #0x50]
	ldr	r2, [sp, #0x58]
	str	r3, [sp]
	mov	r0, #2
	mov	r3, r9
	str	r5, [sp, #4]
	bl	OvlFunc_528
	ldr	r2, [sp, #0x48]
	mov	r4, r10
	lsl	r2, #4
	ldr	r3, [r4, r2]
	mov	r0, r11
	ldr	r1, [r0]
	lsl	r3, #16
	add	r2, #4
	add	r1, r3
	ldr	r3, [r4, r2]
	ldr	r2, [r0, #8]
	lsl	r3, #16
	add	r2, r3
	asr	r1, #20
	asr	r2, #20
	str	r1, [r0]
	str	r2, [r0, #8]
	add	r8, r1
	add	r6, r2
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r3, [sp, #8]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r9
	bl	__Func_10704
	ldr	r3, [sp, #8]
	mov	r2, r11
	ldr	r1, [r2]
	mov	r4, #0
	ldr	r2, [r2, #8]
	mov	r0, #2
	str	r3, [sp]
	mov	r3, r9
	str	r4, [sp, #4]
	bl	OvlFunc_528
	bl	__Func_9202c
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r3}
	add	sp, #0x10
	bx	r3
.func_end OvlFunc_8ec

.thumb_func_start OvlFunc_ba4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	sub	sp, #0x20
	mov	r10, r3
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r1, =.L5d90
	mov	r5, #0
	ldr	r3, [r1, r5]
	cmp	r2, r3
	bne	.Lbce
	add	r7, sp, #8
	b	.Lbf0
.Lbce:
	add	r7, sp, #8
	mov	r12, r7
	mov	r6, #7
	mov	r4, r1
.Lbd6:
	mov	r3, r12
	add	r5, #1
	str	r6, [r3]
	cmp	r5, #5
	bhi	.Lbf2
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	add	r4, #4
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, [r4]
	cmp	r2, r3
	bne	.Lbd6
.Lbf0:
	str	r5, [r7]
.Lbf2:
	ldr	r2, [r7]
	cmp	r2, #6
	bls	.Lbfc
	mov	r0, #0
	b	.Lca6
.Lbfc:
	ldr	r3, [r0, #8]
	str	r3, [r7, #8]
	mov	r12, r3
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #0xc]
	ldr	r0, [r0, #0x10]
	lsl	r1, r2, #4
	str	r0, [r7, #0x10]
	ldr	r4, =.L5da8
	add	r5, r1, #4
	ldr	r2, [r4, r5]
	mov	r14, r0
	cmp	r2, #0
	bge	.Lc1a
	neg	r2, r2
.Lc1a:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.Lc26
	neg	r3, r3
.Lc26:
	add	r3, r2, r3
	ldr	r0, [r4, r1]
	asr	r3, #4
	mov	r8, r3
	mov	r6, r0
	cmp	r0, #0
	bge	.Lc36
	neg	r6, r0
.Lc36:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.Lc42
	neg	r3, r3
.Lc42:
	lsl	r0, #16
	add	r0, r12
	str	r0, [r7, #8]
	ldr	r1, [r4, r5]
	lsl	r1, #16
	add	r1, r14
	asr	r0, #20
	asr	r1, #20
	add	r6, r3
	mov	r3, #0x9e
	str	r0, [r7, #8]
	str	r1, [r7, #0x10]
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	asr	r5, r3, #20
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	asr	r3, #20
	add	r2, r5, r0
	add	r3, r1
	asr	r6, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r6
	mov	r3, r8
	bl	__Func_10704
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r5, #0xff
	str	r3, [sp]
	mov	r0, #0
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_528
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r0, #2
	str	r3, [sp]
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_528
	mov	r0, #1
.Lca6:
	add	sp, #0x20
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_ba4

.thumb_func_start OvlFunc_cc0
	push	{lr}
	mov	r0, #0xc
	mov	r1, #0x15
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_cd0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	mov	r3, #7
	add	r6, sp, #0x10
	str	r3, [r6, #4]
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r7, r0
	cmp	r3, #0
	bne	.Lcf0
	mov	r3, #5
	str	r3, [r6, #4]
.Lcf0:
	ldr	r3, =0xcccc
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #0
	mov	r8, r3
	str	r3, [r6]
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r4, r0, #1
	add	r4, r0
	lsl	r3, r4, #4
	add	r4, r3
	ldr	r2, [r5]
	lsl	r3, r4, #8
	add	r4, r3
	mov	r3, #0xf
	and	r2, r3
	mov	r3, #8
	ldr	r0, [r7, #8]
	sub	r3, r2
	lsl	r3, #16
	ldr	r1, [r7, #0xc]
	add	r0, r3
	mov	r3, #0xd0
	lsl	r3, #13
	add	r1, r3
	mov	r3, r8
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0xb0
	lsl	r3, #12
	neg	r4, r4
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r6, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #0
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_cd0

.thumb_func_start OvlFunc_d58
	push	{r5, r6, r7, lr}
	sub	sp, #4
	ldr	r3, =0
	mov	r5, sp
	add	r5, #2
	strh	r3, [r5]
	ldr	r3, =iwram_1e40
	mov	r1, #5
	ldr	r0, [r3]
	bl	_Func_b50
	cmp	r0, #0
	bne	.Lde2
	ldr	r3, =.L6004
	ldr	r2, [r3]
	mov	r1, #0x1f
	add	r2, #4
	and	r2, r1
	str	r2, [r3]
	mov	r6, #0
	mov	r7, r5
	b	.Ld90

	.pool_aligned

.Ld90:
.Ld90:
	mov	r3, #0x6e
	sub	r3, r6
	mov	r2, #0xa0
	lsl	r2, #19
	lsl	r3, #1
	add	r3, r2
	ldrh	r2, [r3]
	mov	r3, #0x1f
	and	r3, r2
	strh	r3, [r7]
	ldrh	r5, [r7]
	cmp	r6, #2
	bhi	.Ldb4
	lsl	r0, r5, #2
	mov	r1, #0xa
	bl	_Func_af0
	sub	r5, r0
.Ldb4:
	mov	r2, #0x6f
	sub	r2, r6
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r2, #1
	add	r2, r3
	ldr	r3, =.L600c
	ldr	r3, [r3]
	lsl	r1, r3, #10
	ldr	r3, =.L6008
	ldr	r3, [r3]
	lsl	r3, #5
	orr	r1, r3
	orr	r5, r1
	add	r6, #1
	strh	r5, [r2]
	cmp	r6, #5
	bls	.Ld90
	ldr	r3, =.L6004
	ldr	r3, [r3]
	ldr	r2, =0x50000d2
	orr	r3, r1
	strh	r3, [r2]
.Lde2:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d58

.thumb_func_start OvlFunc_dfc
	push	{lr}
	ldr	r1, =0
	ldr	r3, =0x50000de
	mov	r2, #0
	b	.Le10

	.pool_aligned

.Le10:
	add	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #6
	bls	.Le10
	pop	{r0}
	bx	r0
.func_end OvlFunc_dfc

.thumb_func_start OvlFunc_e20
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x39
	cmp	r2, r3
	bne	.Le38
	ldr	r0, =.L650c
	b	.Le4e
.Le38:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Le42
	ldr	r0, =.L635c
	b	.Le4e
.Le42:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Le4c
	ldr	r0, =.L623c
	b	.Le4e
.Le4c:
	ldr	r0, =.L60ec
.Le4e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e20

.thumb_func_start OvlFunc_e74
	mov	r0, #0
	bx	lr
.func_end OvlFunc_e74

.thumb_func_start OvlFunc_e78
	ldr	r0, =.L6614
	bx	lr
.func_end OvlFunc_e78

.thumb_func_start OvlFunc_e80
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.Le98
	ldr	r0, =.L6700
	b	.Leb8
.Le98:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lea2
	ldr	r0, =.L67a8
	b	.Leb8
.Lea2:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Leac
	ldr	r0, =.L6838
	b	.Leb8
.Leac:
	ldr	r3, =0x39
	cmp	r2, r3
	bne	.Leb6
	ldr	r0, =.L6988
	b	.Leb8
.Leb6:
	ldr	r0, =.L66e8
.Leb8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e80

.thumb_func_start OvlFunc_ee4
	push	{lr}
	bl	OvlFunc_5900
	pop	{r0}
	bx	r0
.func_end OvlFunc_ee4

.thumb_func_start OvlFunc_ef0
	push	{lr}
	bl	OvlFunc_5578
	pop	{r0}
	bx	r0
.func_end OvlFunc_ef0

.thumb_func_start OvlFunc_efc
	push	{lr}
	bl	OvlFunc_55c0
	pop	{r0}
	bx	r0
.func_end OvlFunc_efc

.thumb_func_start OvlFunc_f08
	push	{lr}
	bl	OvlFunc_5458
	pop	{r0}
	bx	r0
.func_end OvlFunc_f08

.thumb_func_start OvlFunc_f14
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1637
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f14

.thumb_func_start OvlFunc_f30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.Lf48
	ldr	r0, =.L6ad8
	b	.Lf5e
.Lf48:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lf52
	ldr	r0, =.L6c10
	b	.Lf5e
.Lf52:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Lf5c
	ldr	r0, =.L6d60
	b	.Lf5e
.Lf5c:
	ldr	r0, =.L6ec8
.Lf5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_f30

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
	bl	OvlFunc_13c
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
	bl	OvlFunc_13c
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

.thumb_func_start OvlFunc_1db4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0xd3
	sub	sp, #0x40
	bl	__Func_f9080
	cmp	r6, #0
	bne	.L1df4
	mov	r5, #1
	mov	r0, #0x6f
	mov	r1, #0x39
	mov	r2, #0x71
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x6f
	mov	r1, #0x3b
	mov	r2, #0x71
	mov	r3, #0x2b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.L1e3c
.L1df4:
	cmp	r6, #1
	bne	.L1e1a
	mov	r0, #0x71
	mov	r1, #0x3a
	mov	r2, #0x70
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x73
	mov	r1, #0x3a
	mov	r2, #0x71
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	b	.L1e3c
.L1e1a:
	mov	r5, #1
	mov	r0, #0x73
	mov	r1, #0x39
	mov	r2, #0x74
	mov	r3, #0x2c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x71
	mov	r1, #0x39
	mov	r2, #0x73
	mov	r3, #0x2c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
.L1e3c:
	mov	r2, sp
	add	r2, #0x18
	mov	r3, #7
	str	r2, [sp, #0x10]
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0
	ldr	r2, =0xffff3334
	mov	r10, r3
	mov	r3, #1
	mov	r11, r2
	mov	r9, r3
.L1e5a:
	mov	r2, #0
	mov	r3, r10
	str	r2, [sp, #0x14]
	lsl	r2, r3, #20
	mov	r3, #0xcb
	lsl	r3, #18
	sub	r3, r2
	mov	r8, r3
	mov	r3, #0xb0
	lsl	r3, #18
	add	r7, r2, r3
.L1e70:
	ldr	r3, [sp, #0x14]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L1f68
	cmp	r6, #0
	bne	.L1ec8
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
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
	add	r3, r11
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x10]
	add	r5, r11
	mov	r0, #0xc6
	str	r3, [sp, #0xc]
	lsl	r0, #18
	mov	r1, #0
	mov	r2, r7
	mov	r3, r5
	str	r6, [sp]
	bl	OvlFunc_13c
	b	.L1f62
.L1ec8:
	cmp	r6, #1
	bne	.L1f1a
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
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
	add	r3, r11
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	mov	r2, #0xc0
	lsl	r2, #15
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x10]
	add	r5, r11
	add	r0, r7, r2
	mov	r2, #0
	str	r2, [sp]
	str	r3, [sp, #0xc]
	mov	r1, #0
	ldr	r2, =0x2ea0000
	mov	r3, r5
	bl	OvlFunc_13c
	b	.L1f62
.L1f1a:
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
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
	add	r3, r11
	mov	r2, #0
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r2, [sp, #0x10]
	mov	r3, #0x90
	lsl	r3, #12
	add	r5, r11
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0
	ldr	r2, =0x2ca0000
	mov	r3, r5
	bl	OvlFunc_13c
.L1f62:
	mov	r0, #1
	bl	__Func_9163c
.L1f68:
	ldr	r3, =0xffff0000
	add	r8, r3
	ldr	r3, [sp, #0x14]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, #1
	add	r7, r2
	str	r3, [sp, #0x14]
	cmp	r3, #7
	bhi	.L1f7e
	b	.L1e70
.L1f7e:
	cmp	r6, #0
	bne	.L1fac
	mov	r2, r9
	mov	r3, r10
	add	r3, #0x2b
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x3a
	mov	r2, #0x71
	bl	__Func_10424
	mov	r2, r9
	mov	r3, r10
	str	r2, [sp]
	str	r2, [sp, #4]
	add	r3, #0x2c
	mov	r0, #0x6f
	mov	r1, #0x3b
	mov	r2, #0x71
	bl	__Func_10424
	b	.L2002
.L1fac:
	cmp	r6, #1
	bne	.L1fd6
	mov	r2, r10
	add	r2, #0x71
	mov	r0, #0x72
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r2, r10
	add	r2, #0x72
	mov	r0, #0x73
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	b	.L2002
.L1fd6:
	mov	r3, r10
	mov	r2, #0x73
	sub	r2, r3
	mov	r3, r9
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x72
	mov	r1, #0x39
	mov	r3, #0x2c
	bl	__Func_10424
	mov	r3, r10
	mov	r2, #0x72
	sub	r2, r3
	mov	r3, r9
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x71
	mov	r1, #0x39
	mov	r3, #0x2c
	bl	__Func_10424
.L2002:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #1
	bhi	.L200e
	b	.L1e5a
.L200e:
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1db4

.thumb_func_start OvlFunc_2030
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	mov	r5, #1
	mov	r1, #0x39
	mov	r2, #0x71
	mov	r3, #0x2a
	mov	r6, r0
	mov	r0, #0x70
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x75
	mov	r1, #0x3a
	mov	r2, #0x70
	mov	r3, #0x2e
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, #0x74
	mov	r3, #0x2c
	mov	r0, #0x75
	mov	r1, #0x39
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	ldr	r0, =0x121
	bl	__Func_f9080
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0x90
	mov	r8, r2
	lsl	r3, #12
	mov	r2, #0
	mov	r7, #0
	mov	r11, r3
	mov	r10, r2
	mov	r9, r5
.L2098:
	mov	r5, #1
.L209a:
	mov	r3, r5
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L2154
	cmp	r6, #0
	bne	.L20dc
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, =0x319
	lsr	r3, #16
	lsl	r2, r7, #2
	sub	r0, r3
	add	r2, r5
	ldr	r3, =0x2b70000
	lsl	r2, #17
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r0, #16
	mov	r1, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_13c
	b	.L214e
.L20dc:
	cmp	r6, #1
	bne	.L2116
	bl	__Func_4458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	mov	r3, #0xba
	lsl	r3, #18
	lsl	r2, #16
	lsl	r0, r7, #2
	add	r2, r3
	add	r0, r5
	ldr	r3, =0x3120000
	lsl	r0, #17
	add	r0, r3
	mov	r3, r10
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	mov	r1, #0
	lsl	r3, #7
	bl	OvlFunc_13c
	b	.L214e
.L2116:
	bl	__Func_4458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	mov	r3, #0xb2
	lsl	r3, #18
	lsl	r2, #16
	lsl	r0, r5, #17
	add	r2, r3
	neg	r0, r0
	lsl	r3, r7, #19
	sub	r0, r3
	mov	r3, #0xce
	lsl	r3, #18
	add	r0, r3
	mov	r3, r10
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	mov	r1, #0
	lsl	r3, #7
	bl	OvlFunc_13c
.L214e:
	mov	r0, #1
	bl	__Func_9163c
.L2154:
	add	r5, #1
	cmp	r5, #7
	bls	.L209a
	cmp	r6, #0
	bne	.L2174
	mov	r2, r9
	mov	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	add	r3, #0x2b
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r2, #0x71
	bl	__Func_10424
	b	.L21a0
.L2174:
	cmp	r6, #1
	bne	.L218c
	mov	r2, r7
	add	r2, #0x71
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	b	.L21a0
.L218c:
	mov	r3, r9
	mov	r2, #0x73
	str	r3, [sp]
	str	r3, [sp, #4]
	sub	r2, r7
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r3, #0x2c
	bl	__Func_10424
.L21a0:
	add	r7, #1
	cmp	r7, #2
	bhi	.L21a8
	b	.L2098
.L21a8:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2030

.thumb_func_start OvlFunc_21cc
	push	{r5, r6, lr}
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L21de
	ldr	r2, =0xfffff
	add	r3, r2
.L21de:
	mov	r0, #9
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L21f0
	ldr	r2, =0xfffff
	add	r3, r2
.L21f0:
	mov	r0, #0xa0
	mov	r1, #0xa0
	lsl	r0, #11
	lsl	r1, #8
	asr	r5, r3, #20
	bl	__Func_933d4
	mov	r0, #0xcc
	mov	r1, #1
	mov	r2, #0xb2
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0x877
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2292
	cmp	r6, #0x32
	bne	.L2230
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2230
	ldr	r1, =.L5f20
	b	.L226a
.L2230:
	cmp	r6, #0x31
	bne	.L2292
	cmp	r5, #0x2c
	bne	.L2272
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	bne	.L225a
	ldr	r0, =0x31a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L225a
	ldr	r0, =0x31b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L225a
	ldr	r1, =.L5f60
	b	.L226a
.L225a:
	cmp	r5, #0x2c
	bne	.L2272
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2272
	ldr	r1, =.L5ff0
.L226a:
	mov	r0, #9
	bl	__Func_9207c
	b	.L2292
.L2272:
	cmp	r5, #0x2e
	bne	.L2292
	ldr	r0, =0x31a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2292
	ldr	r1, =.L5fa8
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	b	.L229a
.L2292:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
.L229a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_21cc

.thumb_func_start OvlFunc_22c4
	push	{r5, lr}
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r0, #2
	ldr	r1, [r5, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	add	r1, r0
	ldr	r2, [r5, #0x10]
	ldr	r0, [r5, #8]
	bl	OvlFunc_3b24
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22c4

.thumb_func_start OvlFunc_22ec
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_22c4
	bl	__Func_41d8
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_22ec

.thumb_func_start OvlFunc_2304
	push	{lr}
	ldr	r0, =OvlFunc_22c4
	bl	__Func_4278
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_2304

.thumb_func_start OvlFunc_2318
	push	{r5, r6, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_758
	cmp	r0, #0
	bne	.L232e
	b	.L24da
.L232e:
	ldr	r3, [r5, #4]
	cmp	r3, #0xa
	beq	.L233a
	cmp	r3, #0xb
	beq	.L236a
	b	.L24da
.L233a:
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	mov	r1, #0xa
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r2, [r5, #8]
	bl	OvlFunc_8ec
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x26
	bne	.L2360
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__Func_79358
	b	.L24da
.L2360:
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__Func_79374
	b	.L24da
.L236a:
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r2, sp
	asr	r6, r3, #20
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r3, [r5, #0xc]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_8ec
	ldr	r3, [r5, #8]
	asr	r0, r3, #20
	cmp	r0, #0x2f
	bne	.L23c4
	ldr	r0, =0x319
	bl	__Func_79358
	ldr	r0, =0x31a
	bl	__Func_79374
	ldr	r0, =0x31b
	bl	__Func_79374
	bl	OvlFunc_21cc
	cmp	r6, #0x36
	bne	.L23b2
	mov	r0, #0
	bl	OvlFunc_2030
	b	.L23bc
.L23b2:
	cmp	r6, #0x30
	bne	.L23bc
	mov	r0, #1
	bl	OvlFunc_2030
.L23bc:
	mov	r0, #2
	bl	OvlFunc_1db4
	b	.L249a
.L23c4:
	cmp	r0, #0x30
	bne	.L247a
	ldr	r0, =0x31a
	bl	__Func_79358
	ldr	r0, =0x31b
	bl	__Func_79374
	ldr	r0, =0x319
	bl	__Func_79374
	bl	OvlFunc_21cc
	cmp	r0, #0
	beq	.L2468
	mov	r0, #2
	bl	OvlFunc_2030
	mov	r5, #0xd2
	bl	OvlFunc_2304
	mov	r0, #1
	bl	OvlFunc_1db4
	lsl	r5, #18
	mov	r0, #9
	bl	__Func_920e8
	ldr	r2, =0x3120000
	mov	r1, #0
	mov	r3, #0xdf
	mov	r0, r5
	bl	OvlFunc_48
	mov	r3, #0xdf
	ldr	r2, =0x3320000
	mov	r1, #0
	mov	r0, r5
	bl	OvlFunc_48
	mov	r1, #0xd2
	mov	r2, #0xba
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x877
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xf
	bl	__Func_91e9c
	b	.L24da
.L2468:
	mov	r0, #2
	bl	OvlFunc_2030
	bl	OvlFunc_2304
	mov	r0, #1
	bl	OvlFunc_1db4
	b	.L249a
.L247a:
	cmp	r0, #0x35
	bne	.L24a2
	ldr	r0, =0x31b
	bl	__Func_79358
	ldr	r0, =0x319
	bl	__Func_79374
	ldr	r0, =0x31a
	bl	__Func_79374
	bl	OvlFunc_21cc
	mov	r0, #0
	bl	OvlFunc_2030
.L249a:
	mov	r0, #0x3c
	bl	__Func_9163c
	b	.L24da
.L24a2:
	ldr	r0, =0x319
	bl	__Func_79374
	ldr	r0, =0x31a
	bl	__Func_79374
	ldr	r0, =0x31b
	bl	__Func_79374
	bl	OvlFunc_21cc
	cmp	r6, #0x2f
	bne	.L24c4
	mov	r0, #2
	bl	OvlFunc_2030
	b	.L24ce
.L24c4:
	cmp	r6, #0x30
	bne	.L24ce
	mov	r0, #1
	bl	OvlFunc_2030
.L24ce:
	mov	r0, #0
	bl	OvlFunc_1db4
	mov	r0, #0x3c
	bl	__Func_9163c
.L24da:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2318

.thumb_func_start OvlFunc_2504
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_3a8
	bl	OvlFunc_251c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2504

.thumb_func_start OvlFunc_251c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r5, #0xcc
	mov	r6, #0
	lsl	r5, #2
.L252a:
	mov	r0, r6
	add	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L253c
	ldr	r2, =0xfffff
	add	r3, r2
.L253c:
	asr	r1, r3, #20
	lsl	r3, r6, #2
	mov	r2, r3
	add	r2, #0x27
	cmp	r1, r2
	bne	.L2556
	mov	r0, r5
	bl	__Func_79358
	add	r0, r5, #1
	bl	__Func_79374
	b	.L2576
.L2556:
	add	r3, #0x29
	cmp	r1, r3
	bne	.L256a
	add	r0, r5, #1
	bl	__Func_79358
	mov	r0, r5
	bl	__Func_79374
	b	.L2576
.L256a:
	mov	r0, r5
	bl	__Func_79374
	add	r0, r5, #1
	bl	__Func_79374
.L2576:
	add	r6, #1
	add	r5, #2
	cmp	r6, #3
	ble	.L252a
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L258e
	ldr	r2, =0xfffff
	add	r3, r2
.L258e:
	asr	r1, r3, #20
	cmp	r1, #0x39
	bne	.L25a0
	mov	r0, #0xce
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x339
	b	.L25ae
.L25a0:
	cmp	r1, #0x3b
	bne	.L25c8
	ldr	r0, =0x339
	bl	__Func_79358
	mov	r0, #0xce
	lsl	r0, #2
.L25ae:
	bl	__Func_79374
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L25ea
.L25c8:
	mov	r0, #0xce
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x339
	bl	__Func_79374
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L25ea:
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_251c

.thumb_func_start OvlFunc_2600
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L2618
	ldr	r2, =0xfffff
	add	r3, r2
.L2618:
	asr	r3, #20
	cmp	r3, #0x1c
	bne	.L263a
	mov	r0, #0xd2
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, #0x1f
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L263a:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2600

.thumb_func_start OvlFunc_2648
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2670
	ldr	r1, =0x5000050
	ldr	r3, =0x500005e
	ldrh	r2, [r1]
	strh	r2, [r3]
	ldr	r2, =0x5000052
	mov	r0, #0
.L2662:
	ldrh	r3, [r2]
	add	r0, #1
	strh	r3, [r1]
	add	r2, #2
	add	r1, #2
	cmp	r0, #6
	bls	.L2662
.L2670:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2648

.thumb_func_start OvlFunc_2684
	push	{lr}
	bl	__Func_916b0
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0
	bl	__Func_92064
	ldr	r0, =0x1577
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd2
	mov	r2, #0xa2
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x10
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L275a
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2782
.L275a:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L2782:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_933f8
	mov	r1, #0xd2
	mov	r2, #0x9e
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #3
	bl	__Func_921c4
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_93040
	mov	r0, #0x87
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2684

.thumb_func_start OvlFunc_2814
	push	{lr}
	bl	__Func_916b0
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x157d
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2814

.thumb_func_start OvlFunc_2844
	push	{r5, r6, lr}
	ldr	r6, =0x1f
.L2848:
	ldr	r0, =0x5000050
	mov	r5, #0
	mov	r4, #0
	b	.L2858

	.pool_aligned

.L2858:
	ldrh	r3, [r0]
	mov	r1, #0x1f
	and	r1, r3
	ldrh	r3, [r0]
	lsr	r2, r3, #5
	ldrh	r3, [r0]
	lsr	r3, #10
	and	r2, r6
	and	r3, r6
	cmp	r1, #0x1f
	bne	.L287a
	cmp	r2, #0x1f
	bne	.L287a
	cmp	r3, #0x1f
	bne	.L287a
	add	r5, #1
	b	.L2896
.L287a:
	cmp	r1, #0x1e
	bgt	.L2880
	add	r1, #1
.L2880:
	cmp	r2, #0x1e
	bgt	.L2886
	add	r2, #1
.L2886:
	cmp	r3, #0x1e
	bgt	.L288c
	add	r3, #1
.L288c:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r0]
.L2896:
	add	r4, #1
	add	r0, #2
	cmp	r4, #7
	bls	.L2858
	mov	r0, #2
	bl	__Func_30f8
	cmp	r5, #7
	bls	.L2848
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2844

.thumb_func_start OvlFunc_28b0
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.L28c4
	ldr	r3, =0xfffff
	add	r5, r3
.L28c4:
	asr	r5, #20
	bl	__Func_916b0
	cmp	r5, #0x33
	beq	.L28d0
	b	.L2da4
.L28d0:
	ldr	r2, =0x6666
	ldr	r1, =0xcccc
	mov	r0, #3
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_92adc
	ldr	r0, =0x157f
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L294a
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	b	.L2972
.L294a:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L2972:
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xda
	mov	r2, #0x96
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xda
	mov	r2, #0x96
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xde
	mov	r2, #0x9e
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xdc
	mov	r2, #0x9a
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd2
	mov	r2, #0xa4
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2b64
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2b8c

	.pool_aligned

.L2b64:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L2b8c:
	mov	r1, #0x10
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd2
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	OvlFunc_4f44
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0x83
	bl	__Func_f9080
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #0
	ldr	r0, =0x207e9f
	bl	__Func_91200
	mov	r0, #0xa
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r0, #0xd1
	bl	__Func_f9080
	bl	OvlFunc_2844
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x23
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	bl	__Func_10424
	mov	r2, #0x23
	mov	r1, #0x74
	ldr	r0, =.L60b8
	bl	__Func_10560
	ldr	r0, =OvlFunc_2648
	bl	__Func_4278
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xd2
	mov	r2, #0x96
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x74
	mov	r1, #0x24
	mov	r2, #3
	mov	r3, #4
	bl	__Func_10704
	mov	r0, #0xd2
	mov	r1, #0xe0
	mov	r2, #0x98
	mov	r3, #0xdf
	lsl	r1, #14
	lsl	r2, #18
	lsl	r0, #18
	bl	OvlFunc_48
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xd2
	mov	r2, #0x8c
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2d5e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L2d5e:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2d7e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L2d7e:
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x871
	bl	__Func_79358
.L2da4:
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_28b0

.thumb_func_start OvlFunc_2dcc
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2df4
	ldr	r1, =0x50000c2
	ldr	r3, =0x50000ce
	ldrh	r2, [r1]
	strh	r2, [r3]
	ldr	r2, =0x50000c4
	mov	r0, #0
.L2de6:
	ldrh	r3, [r2]
	add	r0, #1
	strh	r3, [r1]
	add	r2, #2
	add	r1, #2
	cmp	r0, #5
	bls	.L2de6
.L2df4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2dcc

.thumb_func_start OvlFunc_2e08
	push	{r5, r6, lr}
	ldr	r6, =0x1f
.L2e0c:
	ldr	r0, =0x50000c2
	mov	r5, #0
	mov	r4, #0
.L2e12:
	ldrh	r3, [r0]
	mov	r1, #0x1f
	and	r1, r3
	ldrh	r3, [r0]
	lsr	r2, r3, #5
	ldrh	r3, [r0]
	lsr	r3, #10
	and	r2, r6
	and	r3, r6
	cmp	r1, #0
	ble	.L2e2a
	sub	r1, #1
.L2e2a:
	cmp	r2, #0
	ble	.L2e3c
	sub	r2, #1
	b	.L2e3c

	.pool_aligned

.L2e3c:
	cmp	r3, #0
	ble	.L2e42
	sub	r3, #1
.L2e42:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r0]
	ldrh	r3, [r0]
	cmp	r3, #0
	bne	.L2e54
	add	r5, #1
.L2e54:
	add	r4, #1
	add	r0, #2
	cmp	r4, #6
	bls	.L2e12
	mov	r0, #5
	bl	__Func_30f8
	cmp	r5, #7
	bne	.L2e0c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e08

.thumb_func_start OvlFunc_2e6c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	mov	r5, r0
	bl	__Func_92054
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	bl	__Func_92950
	mov	r0, #0xdd
	bl	__Func_f9080
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r2, #0x18]
	ldr	r3, =.L5e70
	str	r3, [r2, #0x1c]
	mov	r3, #0
	mov	r10, r2
	mov	r8, r3
.L2eb6:
	mov	r2, r8
	cmp	r2, #0x1f
	bhi	.L2ec6
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	bl	OvlFunc_3bd4
.L2ec6:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L2f2a
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	ldr	r6, [r7, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	ldr	r3, =0xfff40000
	add	r6, r3
	bl	__Func_4458
	lsl	r0, #5
	ldr	r5, [r7, #0xc]
	lsr	r0, #16
	ldr	r2, =0xfff00000
	lsl	r0, #16
	add	r5, r0
	add	r5, r2
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	mov	r3, #0x80
	lsl	r3, #8
	lsl	r0, #15
	add	r0, r3
	mov	r3, #0
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0xcc
	lsl	r3, #14
	str	r3, [sp, #8]
	mov	r3, r10
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	bl	OvlFunc_13c
.L2f2a:
	ldr	r3, =0x1999
	mov	r2, r8
	mul	r2, r3
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	mov	r0, #2
	bl	__Func_30f8
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x2f
	bls	.L2eb6
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e6c

.thumb_func_start OvlFunc_2f68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_2e08
	ldr	r0, =OvlFunc_2dcc
	bl	__Func_4278
	mov	r3, #9
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x49
	mov	r2, #0x2d
	mov	r0, #0x2d
	mov	r1, #0x4d
	bl	__Func_10424
	mov	r0, #0x1e
	bl	__Func_9163c
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r2, #0x18]
	ldr	r3, =.L5e70
	str	r3, [r2, #0x1c]
	mov	r3, #0
	mov	r10, r2
	mov	r8, r3
.L2fc0:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L2fd0
	mov	r0, #0xf6
	bl	__Func_f9080
.L2fd0:
	bl	__Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r3, #0xc0
	lsl	r3, #18
	lsl	r5, #16
	add	r5, r3
	bl	__Func_4458
	lsl	r2, r0, #3
	sub	r2, r0
	lsl	r2, #3
	lsr	r2, #16
	mov	r3, #0x88
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r3, =0x330001
	str	r3, [sp, #8]
	mov	r3, r10
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r3, #0
	mov	r1, #0
	bl	OvlFunc_13c
	mov	r0, #2
	bl	__Func_9163c
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xf
	bls	.L2fc0
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r8, r2
.L302a:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L303a
	mov	r0, #0xf6
	bl	__Func_f9080
.L303a:
	bl	__Func_4458
	lsl	r6, r0, #1
	add	r6, r0
	lsl	r6, #4
	lsr	r6, #16
	mov	r3, #0xc0
	lsl	r3, #18
	lsl	r6, #16
	add	r6, r3
	bl	__Func_4458
	lsl	r5, r0, #3
	sub	r5, r0
	lsl	r5, #3
	lsr	r5, #16
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r5, #16
	add	r5, r2
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r3, r2, #4
	add	r2, r3
	lsl	r3, r2, #8
	add	r2, r3
	ldr	r3, =0xffffcccd
	neg	r2, r2
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, =0x330001
	str	r2, [sp, #4]
	mov	r2, r10
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r3, #0
	mov	r2, r5
	mov	r0, r6
	mov	r1, #0
	bl	OvlFunc_13c
	mov	r0, #2
	bl	__Func_9163c
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0xf
	bls	.L302a
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, r10
	mov	r3, #7
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	ldr	r3, =0x13333
	str	r3, [r2, #0x10]
	str	r3, [r2, #0x14]
	ldr	r2, =0x1999
	mov	r3, #0
	mov	r8, r3
	mov	r11, r2
.L30e6:
	mov	r2, r8
	mov	r3, #0xc
	sub	r3, r2
	mov	r1, #1
	mov	r2, #3
	str	r2, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x3b
	mov	r1, r3
	mov	r2, #0x30
	bl	__Func_10424
	mov	r3, r8
	lsl	r3, #4
	mov	r7, #0
	mov	r9, r3
.L3106:
	bl	__Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r2, #0xc0
	lsl	r2, #18
	lsl	r5, #16
	add	r5, r2
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	mov	r6, r11
	mul	r6, r0
	ldr	r3, =0xffff999c
	add	r6, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	mov	r1, r11
	mul	r1, r0
	lsr	r2, r7, #1
	mov	r3, r9
	neg	r2, r2
	sub	r2, r3
	mov	r3, #0xc0
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, =0xd0001
	str	r3, [sp, #8]
	mov	r3, r10
	str	r1, [sp, #4]
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, #0
	mov	r3, r6
	bl	OvlFunc_13c
	add	r7, #1
	mov	r0, #2
	bl	__Func_9163c
	cmp	r7, #0x1f
	bls	.L3106
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #3
	bls	.L30e6
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	bl	__Func_9202c
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3290
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xce
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xe8
	bl	__Func_921c4
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xe8
	bl	__Func_921c4
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xd0
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xc6
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	OvlFunc_2e6c
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =OvlFunc_2dcc
	bl	__Func_4278
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #9
	bl	__Func_91e9c
	bl	__Func_91750
	b	.L3592

	.pool_aligned

.L3290:
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
	mov	r1, #0xce
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xf0
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xce
	mov	r2, #0xf0
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xc6
	mov	r0, #3
	lsl	r1, #2
	mov	r2, #0xe8
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc6
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #3
	bl	__Func_921c4
	mov	r0, #3
	bl	OvlFunc_2e6c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xe8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc6
	mov	r2, #0xe8
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xc6
	mov	r2, #0xe8
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xcc
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xe0
	bl	__Func_9218c
	mov	r1, #0xc0
	lsl	r1, #2
	mov	r2, #0xe0
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xe0
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc6
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xd0
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
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
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xc6
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x12
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0
	bl	OvlFunc_2e6c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	__Func_92848
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc6
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc6
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #1
	bl	__Func_921c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	bl	OvlFunc_2e6c
	mov	r1, #0xc6
	mov	r0, #2
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0xc6
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #2
	bl	OvlFunc_2e6c
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91220
	ldr	r0, =OvlFunc_2dcc
	bl	__Func_4278
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_91750
	mov	r0, #8
	bl	__Func_91e9c
.L3592:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f68

.thumb_func_start OvlFunc_35b8
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x1576
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_35b8

.thumb_func_start OvlFunc_35dc
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_35dc

.thumb_func_start OvlFunc_3600
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3622
	ldr	r0, =0x1636
	mov	r1, #1
	bl	__Func_1776c
	b	.L362a
.L3622:
	ldr	r0, =0x1635
	mov	r1, #1
	bl	__Func_1776c
.L362a:
	mov	r0, #0xb9
	bl	__Func_78698
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L3646
	ldr	r3, =iwram_1ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.L3646:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3600

.thumb_func_start OvlFunc_3660
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x53
	bl	__Func_f9080
	mov	r0, #0xb8
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0xb8
	mov	r0, #0xb9
	bl	OvlFunc_4f90
	mov	r0, #0xb8
	bl	__Func_78698
	mov	r1, #1
	bl	__Func_19908
	mov	r0, #0xb8
	mov	r1, #2
	bl	__Func_19908
	mov	r1, #1
	ldr	r0, =0x1638
	bl	__Func_1776c
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3660

.thumb_func_start OvlFunc_36ac
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.L3760
	mov	r1, #0xec
	mov	r2, #0x96
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xa4
	lsl	r2, #18
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x2be0000
	mov	r1, #0
	mov	r3, #0xdf
	ldr	r0, [r0, #8]
	bl	OvlFunc_48
	mov	r3, #3
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2e
	mov	r2, #0x5c
	mov	r3, #0x28
	mov	r0, #0x5c
	bl	__Func_10424
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x48]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_92b08
	mov	r2, #1
	mov	r0, #0
	mov	r1, #6
	neg	r2, r2
	bl	__Func_92708
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	mov	r0, #0x3c
	str	r2, [r3]
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_91e9c
	b	.L376c
.L3760:
	mov	r2, #1
	mov	r0, #0
	mov	r1, #6
	neg	r2, r2
	bl	__Func_92708
.L376c:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_36ac

.thumb_func_start OvlFunc_3788
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	bne	.L3846
	bl	__Func_916b0
	mov	r7, r5
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	add	r7, #0x55
	bl	__Func_933f8
	strb	r6, [r7]
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	ldr	r3, =0xfff00000
	lsl	r2, #16
	add	r2, r3
	lsl	r1, #16
	mov	r0, #0
	bl	__Func_923e4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r3, =OvlFunc_cd0
	mov	r0, #0
	str	r3, [r5, #0x6c]
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92304
	mov	r1, #0
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92304
	mov	r3, #3
	strb	r3, [r7]
	str	r6, [r5, #0x6c]
	bl	__Func_9202c
	bl	__Func_91750
.L3846:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3788

.thumb_func_start OvlFunc_3860
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x3a
	mov	r2, #0x46
	mov	r3, #0x22
	mov	r0, #0x4a
	bl	__Func_10424
	add	r1, sp, #0x10
	mov	r3, #7
	str	r3, [r1, #4]
	mov	r3, #0x80
	lsl	r3, #8
	ldr	r2, =0xffff3334
	str	r3, [r1, #8]
	str	r3, [r1, #0xc]
	mov	r3, #1
	mov	r10, r1
	mov	r7, #0
	mov	r9, r2
	mov	r8, r3
.L3898:
	mov	r6, #0
.L389a:
	mov	r3, r6
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L38fe
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
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
	add	r3, r9
	lsl	r1, r7, #4
	str	r3, [sp, #4]
	neg	r2, r6
	mov	r3, #0x90
	sub	r2, r1
	lsl	r3, #12
	mov	r1, #0x88
	lsl	r1, #18
	str	r3, [sp, #8]
	add	r5, r9
	mov	r3, r10
	lsl	r2, #16
	mov	r0, #0xd2
	add	r2, r1
	str	r3, [sp, #0xc]
	mov	r1, #0
	lsl	r0, #15
	mov	r3, r5
	str	r1, [sp]
	bl	OvlFunc_13c
	mov	r0, #1
	bl	__Func_9163c
.L38fe:
	add	r6, #1
	cmp	r6, #7
	bls	.L389a
	mov	r1, r8
	mov	r3, #0x22
	sub	r3, r7
	str	r1, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0x3b
	mov	r2, #0x46
	bl	__Func_10424
	mov	r2, r8
	mov	r3, #0x21
	sub	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x46
	add	r7, #1
	bl	__Func_10424
	cmp	r7, #1
	bls	.L3898
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3860

.thumb_func_start OvlFunc_3948
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x4a
	mov	r3, #0x26
	mov	r0, #0x4c
	mov	r1, #0x3d
	bl	__Func_10424
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	mov	r2, #0x90
	mov	r3, #1
	lsl	r2, #12
	mov	r7, #0
	mov	r9, r3
	mov	r11, r2
.L3986:
	ldr	r3, =0xfffe0000
	mov	r6, #1
	mov	r10, r3
.L398c:
	mov	r3, r6
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L3a0c
	mov	r5, #2
	and	r5, r6
	cmp	r5, #0
	beq	.L39d2
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r0, #0x69
	sub	r0, r3
	lsl	r2, r7, #19
	mov	r3, r10
	sub	r2, r3, r2
	ldr	r3, =0x22e0000
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, =0xffffc000
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r0, #16
	mov	r1, #0
	mov	r3, #0
	bl	OvlFunc_13c
	b	.L3a06
.L39d2:
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	mov	r2, #0x9b
	lsr	r3, #16
	lsl	r2, #2
	lsl	r0, r7, #2
	sub	r2, r3
	add	r0, r6
	mov	r3, #0xb7
	lsl	r3, #16
	lsl	r0, #17
	add	r0, r3
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	lsl	r2, #16
	mov	r1, #0
	lsl	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_13c
.L3a06:
	mov	r0, #1
	bl	__Func_9163c
.L3a0c:
	ldr	r2, =0xfffe0000
	add	r6, #1
	add	r10, r2
	cmp	r6, #7
	bls	.L398c
	mov	r2, r9
	mov	r3, #0x22
	sub	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x46
	bl	__Func_10424
	mov	r3, r9
	mov	r2, r7
	str	r3, [sp]
	str	r3, [sp, #4]
	add	r2, #0x4b
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r3, #0x26
	add	r7, #1
	bl	__Func_10424
	cmp	r7, #2
	bls	.L3986
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3948

.thumb_func_start OvlFunc_3a64
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r10, r3
	mov	r1, r10
	mov	r3, #3
	and	r1, r3
	mov	r9, r0
	mov	r10, r1
	cmp	r1, #0
	bne	.L3b06
	mov	r3, #7
	add	r7, sp, #0x10
	str	r3, [r7, #4]
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, #1
	and	r0, r3
	cmp	r0, #0
	bne	.L3aa4
	mov	r3, #5
	str	r3, [r7, #4]
.L3aa4:
	ldr	r3, =0xb333
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	bl	__Func_4458
	mov	r2, r9
	ldr	r2, [r2, #0xc]
	lsl	r0, #2
	lsr	r0, #16
	mov	r8, r2
	lsl	r0, #16
	add	r8, r0
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	ldr	r6, =0xffff3334
	lsl	r2, r3, #8
	add	r3, r2
	mov	r1, r9
	add	r3, r6
	ldr	r0, [r1, #8]
	ldr	r2, [r1, #0x10]
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	add	r5, r6
	str	r3, [sp, #8]
	mov	r1, r8
	mov	r3, r5
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
.L3b06:
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a64

.thumb_func_start OvlFunc_3b24
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r8, r3
	mov	r11, r2
	mov	r3, #3
	mov	r2, r8
	and	r2, r3
	sub	sp, #0x38
	mov	r10, r0
	mov	r9, r1
	mov	r8, r2
	cmp	r2, #0
	bne	.L3bb4
	mov	r3, #7
	add	r7, sp, #0x10
	str	r3, [r7, #4]
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, #1
	and	r0, r3
	cmp	r0, #0
	bne	.L3b66
	mov	r3, #5
	str	r3, [r7, #4]
.L3b66:
	ldr	r3, =0xb333
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	ldr	r6, =0xffff3334
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r6
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	add	r5, r6
	str	r3, [sp, #8]
	mov	r0, r10
	mov	r1, r9
	mov	r2, r11
	mov	r3, r5
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
.L3bb4:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3b24

.thumb_func_start OvlFunc_3bd4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0x38
	add	r5, sp, #0x10
	mov	r3, #7
	str	r3, [r5, #4]
	mov	r3, #1
	str	r3, [r5]
	ldr	r3, =0xb333
	mov	r10, r1
	mov	r8, r2
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	mov	r6, r0
	bl	__Func_4458
	lsl	r0, #4
	lsr	r0, #16
	ldr	r3, =0xfff80000
	lsl	r0, #16
	add	r6, r0
	add	r6, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r0, #16
	ldr	r3, =0xfffc0000
	add	r8, r0
	add	r8, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xb0
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r0, r6
	mov	r1, r10
	mov	r2, r8
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3bd4

.thumb_func_start OvlFunc_3c48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x4c
	str	r0, [sp, #0x14]
	mov	r0, #0xd8
	mov	r11, r2
	mov	r9, r3
	str	r1, [sp, #0x10]
	bl	__Func_f9080
	mov	r2, #0
	mov	r3, #6
	mov	r8, r2
	add	r7, sp, #0x18
	mov	r10, r3
.L3c70:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L3cf4
	mov	r3, #7
	add	r6, sp, #0x24
	str	r3, [r6, #4]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L3c8c
	mov	r3, #5
	str	r3, [r6, #4]
.L3c8c:
	ldr	r3, =0x9999
	mov	r2, r8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #0
	str	r3, [r7]
	str	r3, [r7, #4]
	str	r3, [r7, #8]
	lsr	r3, r2, #1
	mov	r2, r10
	sub	r3, r2, r3
	ldr	r2, =0x1999
	mov	r1, r9
	mov	r0, r3
	mul	r0, r2
	mov	r2, r7
	bl	__Func_447c
	bl	__Func_4458
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r5, #1
	mov	r3, r10
	lsr	r5, #16
	sub	r5, r3, r5
	ldr	r2, [sp, #0x14]
	lsl	r5, #16
	add	r5, r2, r5
	bl	__Func_4458
	lsl	r2, r0, #1
	add	r2, r0
	ldr	r1, [r7, #4]
	lsl	r2, #1
	mov	r3, r10
	lsr	r2, #16
	sub	r2, r3, r2
	ldr	r3, [r7]
	str	r1, [sp]
	ldr	r1, [r7, #8]
	str	r1, [sp, #4]
	mov	r1, #0x90
	lsl	r1, #12
	lsl	r2, #16
	str	r1, [sp, #8]
	add	r2, r11
	mov	r0, r5
	ldr	r1, [sp, #0x10]
	str	r6, [sp, #0xc]
	bl	OvlFunc_13c
.L3cf4:
	mov	r0, #2
	bl	__Func_30f8
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xb
	bls	.L3c70
	add	sp, #0x4c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3c48

.thumb_func_start OvlFunc_3d20
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x111
	sub	sp, #8
	bl	__Func_79358
	ldr	r2, =ewram_240
	ldr	r3, =0x242
	add	r1, r2, r3
	mov	r3, #0xb
	strh	r3, [r1]
	mov	r1, #0x90
	ldr	r3, =0x39
	lsl	r1, #2
	add	r2, r1
	strh	r3, [r2]
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r2, #0xfd
	ldr	r3, =REG_BLDCNT
	lsl	r2, #6
	strh	r2, [r3]
	ldr	r2, =0x1010
	add	r3, #2
	strh	r2, [r3]
	ldr	r1, =ewram_1000
	mov	r0, #0x15
	bl	OvlFunc_4fcc
	mov	r0, #0
	bl	__Func_91494
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3d82
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_d58
	lsl	r1, #4
	bl	__Func_41d8
	b	.L3d86
.L3d82:
	bl	OvlFunc_dfc
.L3d86:
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	beq	.L3d9a
	b	.L3f56
.L3d9a:
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0xe
	bls	.L3dae
	b	.L3f56
.L3dae:
	ldr	r2, =.L3db8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3db8:
	.word	.L3df4
	.word	.L3df4
	.word	.L3df4
	.word	.L3e2a
	.word	.L3e16
	.word	.L3e16
	.word	.L3f56
	.word	.L3f56
	.word	.L3f10
	.word	.L3f10
	.word	.L3f56
	.word	.L3f56
	.word	.L3f56
	.word	.L3f56
	.word	.L3e1e
.L3df4:
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3e00
	b	.L3f56
.L3e00:
	mov	r3, #2
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x42
	mov	r1, #5
	mov	r2, #0x1b
	mov	r3, #0x17
	bl	__Func_10704
	b	.L3f56
.L3e16:
	mov	r0, #0xaa
	bl	__Func_91ff0
	b	.L3f56
.L3e1e:
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
.L3e2a:
	ldr	r0, =0x876
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3e66
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xa8
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa2
	mov	r2, #0xf0
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	b	.L3e8a
.L3e66:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3e8a
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x311
	bl	__Func_79374
	ldr	r0, =0x312
	bl	__Func_79374
	ldr	r0, =0x313
	bl	__Func_79374
.L3e8a:
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #9
	bl	OvlFunc_ba4
	mov	r0, #0xa
	bl	OvlFunc_ba4
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3f56
	mov	r5, #1
	mov	r0, #0x77
	mov	r1, #9
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	ldr	r0, =0x311
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3f04
	mov	r0, #0x76
	mov	r1, #9
	mov	r2, #0x68
	mov	r3, #0xd
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
.L3f04:
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.L3f56
.L3f10:
	ldr	r0, =0x873
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3f34
	mov	r1, #0xae
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	b	.L3f56
.L3f34:
	mov	r1, #0xc2
	mov	r2, #0x9e
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0x2e
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x27
	mov	r2, #5
	mov	r3, #1
	bl	__Func_10704
.L3f56:
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x37
	cmp	r2, r3
	beq	.L3f6a
	b	.L41f4
.L3f6a:
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #8
	bls	.L3f7e
	b	.L41f4
.L3f7e:
	ldr	r2, =.L3f88
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3f88:
	.word	.L3fac
	.word	.L3fac
	.word	.L40f0
	.word	.L40f0
	.word	.L41f4
	.word	.L41f4
	.word	.L41a4
	.word	.L41a4
	.word	.L41a4
.L3fac:
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3fd0
	b	.L41f4
.L3fd0:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xd3
	bl	__Func_f9080
	mov	r1, #0xb8
	mov	r2, #0x84
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #9
	str	r3, [sp]
	mov	r5, #0x1f
	mov	r0, #0xb
	mov	r1, #0x1f
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r5, #1
	mov	r6, #2
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x46
	mov	r3, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4a
	mov	r1, #0x3b
	mov	r2, #0x46
	mov	r3, #0x22
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #3
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x4c
	mov	r1, #0x3c
	mov	r2, #0x4a
	mov	r3, #0x26
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x4d
	mov	r1, #0x3c
	mov	r2, #0x4c
	mov	r3, #0x26
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x4b
	mov	r1, #0x3a
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
	b	.L41f4

	.pool_aligned

.L40f0:
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4132
	ldr	r0, =0x256
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4132
	mov	r5, #1
	mov	r0, #5
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #1
	mov	r2, #9
	mov	r3, #7
	str	r5, [sp]
	bl	__Func_10424
.L4132:
	ldr	r0, =0x874
	bl	__Func_79338
	cmp	r0, #0
	beq	.L41f4
	mov	r1, #0xb0
	mov	r2, #0xd8
	lsl	r1, #15
	lsl	r2, #16
	mov	r0, #0xb
	bl	__Func_923e4
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
	mov	r3, #2
	mov	r5, #1
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #1
	mov	r2, #9
	mov	r3, #7
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #5
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #9
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #5
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L41f4
.L41a4:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	ldr	r0, =0x306
	bl	__Func_79338
	cmp	r0, #0
	beq	.L41f4
	mov	r0, #0
	bl	OvlFunc_17a8
	mov	r3, #0x27
	str	r3, [sp, #4]
	mov	r5, #0x2a
	mov	r0, #0x2a
	mov	r1, #0x29
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x28
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r1, #0xb0
	mov	r2, #0xa0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
.L41f4:
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x38
	cmp	r2, r3
	beq	.L4208
	b	.L466c

.L4208:
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0xf
	bls	.L421c
	b	.L466c
.L421c:
	ldr	r2, =.L4224
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L4224:
	.word	.L4380
	.word	.L4380
	.word	.L437c
	.word	.L4264
	.word	.L4264
	.word	.L4264
	.word	.L4388
	.word	.L4388
	.word	.L4388
	.word	.L434a
	.word	.L434a
	.word	.L4380
	.word	.L437c
	.word	.L44b6
	.word	.L45ac
	.word	.L447c
.L4264:
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r7, #0x9e
	mov	r6, #0xcc
	mov	r5, #0
	lsl	r7, #18
	lsl	r6, #2
.L42b6:
	mov	r0, r6
	bl	__Func_79338
	cmp	r0, #0
	beq	.L42d0
	mov	r0, r5
	mov	r2, #0xb0
	add	r0, #0xf
	mov	r1, r7
	lsl	r2, #15
	bl	__Func_923e4
	b	.L42ec
.L42d0:
	add	r0, r6, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L42ec
	mov	r3, #0x80
	mov	r0, r5
	lsl	r3, #14
	mov	r2, #0xb0
	add	r0, #0xf
	add	r1, r7, r3
	lsl	r2, #15
	bl	__Func_923e4
.L42ec:
	mov	r1, #0x80
	lsl	r1, #15
	add	r5, #1
	add	r7, r1
	add	r6, #2
	cmp	r5, #3
	bls	.L42b6
	mov	r0, #0xce
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4322
	mov	r1, #0xe6
	mov	r2, #0xb0
	mov	r0, #0x13
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	b	.L4372
.L4322:
	ldr	r0, =0x339
	bl	__Func_79338
	cmp	r0, #0
	bne	.L432e
	b	.L466c
.L432e:
	mov	r1, #0xee
	mov	r2, #0xb0
	mov	r0, #0x13
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	b	.L4372
.L434a:
	mov	r0, #0xd2
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4358
	b	.L466c
.L4358:
	mov	r1, #0xe4
	mov	r2, #0xa4
	mov	r0, #0x14
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r3, #0x1f
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x14
.L4372:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L466c
.L437c:
	bl	OvlFunc_3788
.L4380:
	mov	r0, #0xaa
	bl	__Func_91ff0
	b	.L466c
.L4388:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43dc
	ldr	r0, =0x256
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43dc
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r1, #0x1d
	str	r3, [r5, #0x3c]
	mov	r0, #6
	mov	r5, #1
	mov	r2, #0xa
	mov	r3, #0x17
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1c
	mov	r2, #0xa
	mov	r3, #0x12
	str	r5, [sp]
	bl	__Func_10424
.L43dc:
	ldr	r0, =0x878
	bl	__Func_79338
	cmp	r0, #0
	bne	.L43e8
	b	.L466c
.L43e8:
	mov	r1, #0xa8
	mov	r2, #0xbc
	lsl	r1, #16
	lsl	r2, #17
	mov	r0, #8
	bl	__Func_923e4
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
	mov	r1, #0x1d
	str	r3, [r5, #0x3c]
	mov	r0, #6
	mov	r5, #1
	mov	r2, #0xa
	mov	r3, #0x17
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1c
	mov	r2, #0xa
	mov	r3, #0x12
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #0xa
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_fe9c
	b	.L466c

	.pool_aligned

.L447c:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xcc
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc2
	mov	r2, #0x90
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0
	bl	OvlFunc_2030
	mov	r0, #1
	bl	OvlFunc_1db4
.L44b6:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xe
	bne	.L44cc
	mov	r0, #0xd3
	bl	__Func_f9080
.L44cc:
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_92b08
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r0, #0xa
	bl	OvlFunc_ba4
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xe
	beq	.L4532
	b	.L466c
.L4532:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4558
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x319
	bl	__Func_79374
	ldr	r0, =0x31a
	bl	__Func_79374
	ldr	r0, =0x31b
	bl	__Func_79374
	b	.L466c
.L4558:
	mov	r0, #0
	bl	OvlFunc_2030
	ldr	r0, =0x319
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4588
	mov	r0, #2
	bl	OvlFunc_1db4
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2c
	bne	.L466c
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_22c4
	lsl	r1, #4
	bl	__Func_41d8
	b	.L466c
.L4588:
	ldr	r0, =0x31a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L459a
	mov	r0, #1
	bl	OvlFunc_1db4
	b	.L466c
.L459a:
	ldr	r0, =0x31b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L466c
	mov	r0, #0
	bl	OvlFunc_1db4
	b	.L466c
.L45ac:
	bl	__Func_916b0
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x90
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	str	r5, [r0, #0x44]
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, =0x4ccc
	str	r3, [r0, #0x48]
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r0, #0x20
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #2
	bl	OvlFunc_30
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x10
	bl	__Func_91e9c
	bl	__Func_91750
.L466c:
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x39
	cmp	r2, r3
	beq	.L4680
	b	.L49ea
.L4680:
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L4692
	b	.L4800
.L4692:
	cmp	r3, #0xb
	bgt	.L469c
	cmp	r3, #0xa
	beq	.L46a8
	b	.L49ea
.L469c:
	cmp	r3, #0xc
	bne	.L46a2
	b	.L47ee
.L46a2:
	cmp	r3, #0xf
	beq	.L470e
	b	.L49ea
.L46a8:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_2dcc
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L46be
	b	.L49ea
.L46be:
	bl	OvlFunc_3788
	mov	r0, #0xaa
	bl	__Func_91ff0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #1
	ldr	r0, =0x10003
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	bl	__Func_91e20
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x1633
	mov	r1, #0
	mov	r2, #0
	bl	__Func_19aa0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	b	.L49ea
.L470e:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_11ae0
	mov	r2, #0
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0xffff0000
	mov	r1, #1
	str	r3, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_92b08
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_92b08
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L477a
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x22
	mov	r2, #5
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	bl	__Func_10424
	b	.L49ea
.L477a:
	mov	r1, #0xce
	mov	r2, #0x96
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #3
	mov	r1, #0x24
	mov	r0, #0x74
	bl	__Func_10704
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	bl	__Func_93554
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_92b08
	bl	OvlFunc_4c68
	bl	__Func_11af0
	bl	__Func_91750
	b	.L49ea
.L47ee:
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
.L4800:
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x22
	mov	r2, #5
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x2d
	mov	r5, #5
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	str	r5, [sp]
	bl	__Func_10424
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	bne	.L48a4
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2d
	mov	r2, #0x32
	mov	r3, #0x2d
	str	r5, [sp]
	bl	__Func_10424
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r1, #0x69
	mov	r2, #0x32
	mov	r3, #0x6d
	str	r5, [sp]
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.L48bc

	.pool_aligned

.L48a4:
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_92b08
.L48bc:
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	ldr	r0, =0x82b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4924
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xce
	mov	r2, #0x96
	lsl	r2, #18
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_92b08
	mov	r3, #0x34
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x74
	mov	r1, #0x25
	mov	r2, #3
	mov	r3, #3
	bl	__Func_10704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	mov	r3, #0x23
	bl	__Func_10424
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_2648
	lsl	r1, #4
	bl	__Func_41d8
	b	.L49ea
.L4924:
	ldr	r0, =0x871
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4994
	mov	r0, #0x87
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L494e
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0x10
	bl	__Func_924d4
	b	.L4968
.L494e:
	mov	r1, #0xd2
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.L4968:
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	mov	r3, #0x23
	bl	__Func_10424
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_2648
	lsl	r1, #4
	bl	__Func_41d8
	b	.L49d2
.L4994:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xce
	mov	r2, #0x96
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r0, #0x74
	mov	r1, #0x24
	mov	r2, #3
	bl	__Func_10704
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0xfe
	add	r0, #0x59
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_9163c
.L49d2:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_30
.L49ea:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3d20

.thumb_func_start OvlFunc_4a08
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L4a1c
	ldr	r2, =0xfffff
	add	r3, r2
.L4a1c:
	asr	r3, #20
	cmp	r3, #0x30
	beq	.L4a24
	b	.L4c40
.L4a24:
	bl	__Func_916b0
	ldr	r5, =0x1591
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L4b3e
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L4b3e
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #5
	b	.L4b26
.L4b10:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1639
.L4b26:
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	beq	.L4b10
.L4b3e:
	ldr	r0, =0x1597
	bl	__Func_92b94
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xb6
	mov	r2, #0x9e
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #3
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #3
	mov	r1, #0x10
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x5a
	mov	r0, #3
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_917d0
	mov	r0, #0x44
	bl	__Func_79358
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_7a1b4
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_7a2e4
	mov	r0, #3
	bl	__Func_77428
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L4c12
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L4c12:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #0x2e
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x27
	mov	r2, #5
	mov	r3, #1
	bl	__Func_10704
	ldr	r0, =0x873
	bl	__Func_79358
	bl	__Func_91750
.L4c40:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4a08

.thumb_func_start OvlFunc_4c68
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r7, r3, r2
	ldr	r3, =0x9c28
	mov	r10, r3
	ldr	r3, =0x4890000
	mov	r6, #0
	str	r3, [r7, #0xc]
	str	r6, [r7, #0x1c]
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xff770000
	ldr	r3, [r0, #0x10]
	mov	r8, r2
	add	r3, r8
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r5, #0x40]
	bl	__Func_92054
	mov	r1, #0xaa
	add	r0, #0x55
	mov	r2, #0xdc
	lsl	r1, #18
	lsl	r2, #17
	strb	r6, [r0]
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r3, r8
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_11ae0
	mov	r0, #0xdf
	bl	__Func_f9080
.L4d0c:
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	sub	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r3, r10
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r5, #0x40]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	add	r3, r10
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	mov	r2, #0x80
	ldr	r3, [r7, #0xc]
	lsl	r2, #19
	cmp	r3, r2
	ble	.L4d78
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L4d70
	ldr	r3, =0xccb
	cmp	r10, r3
	ble	.L4d70
	ldr	r2, =0xfffffaa0
	add	r10, r2
.L4d70:
	mov	r0, #1
	bl	__Func_30f8
	b	.L4d0c
.L4d78:
	mov	r3, #0x80
	lsl	r3, #19
	str	r3, [r7, #0xc]
	bl	__Func_fe9c
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, #0xdc
	lsl	r3, #17
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x1e
	str	r3, [r5, #0x40]
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r2, #0x92
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	mov	r6, #0
	str	r6, [r0, #0x44]
	mov	r1, #6
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #7
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r0, #0x30]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x34]
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xb8
	mov	r2, #0x92
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_92128
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	mov	r1, #6
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r0, #0xdf
	bl	__Func_f9080
	b	.L4e86
.L4e6a:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L4e80
	ldr	r3, =0xcccc
	cmp	r10, r3
	bgt	.L4e80
	ldr	r2, =0x1999
	add	r10, r2
.L4e80:
	mov	r0, #1
	bl	__Func_30f8
.L4e86:
	ldr	r3, [r7, #0xc]
	add	r3, r10
	str	r3, [r7, #0xc]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	sub	r3, r2
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	ldr	r3, [r7, #0xc]
	ldr	r2, =0x488ffff
	cmp	r3, r2
	ble	.L4e6a
	mov	r3, #0x80
	lsl	r3, #19
	str	r3, [r7, #0xc]
	mov	r2, #4
	mov	r3, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	bl	__Func_10424
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x22
	mov	r2, #5
	mov	r0, #0x68
	bl	__Func_10704
	bl	__Func_fe9c
	mov	r0, #2
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c68

.thumb_func_start OvlFunc_4f44
	push	{r5, lr}
	ldr	r3, =iwram_1f30
	mov	r1, #0xd2
	mov	r2, #0x96
	lsl	r2, #18
	mov	r0, #0xb
	lsl	r1, #18
	ldr	r5, [r3]
	bl	__Func_923e4
	mov	r0, #0x5d
	mov	r1, #1
	bl	__Func_96fb0
	mov	r1, #0xb
	mov	r0, #3
	bl	__Func_970f8
	ldr	r3, =0x71c
	add	r5, r3
	ldrb	r2, [r5]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r5]
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	bl	__Func_97174
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4f44

.thumb_func_start OvlFunc_4f90
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	bl	__Func_78698
	mov	r7, #1
	mov	r5, r0
	neg	r7, r7
	cmp	r5, r7
	beq	.L4fc2
	mov	r1, r6
	bl	__Func_78664
	mov	r6, r0
	cmp	r6, r7
	beq	.L4fc2
	mov	r0, r5
	bl	__Func_77394
	lsl	r3, r6, #1
	add	r3, #0xd8
	mov	r2, r8
	strh	r2, [r0, r3]
.L4fc2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4f90

.thumb_func_start OvlFunc_4fcc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r9, r0
	mov	r1, #4
	mov	r0, #0x23
	sub	sp, #4
	bl	__Func_48f4
	mov	r2, r8
	str	r2, [r0]
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r3, r0
	cmp	r3, #0
	bne	.L500a
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r8
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r9
	mov	r0, r8
	str	r3, [r0, #4]
	b	.L5146
.L500a:
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_8ba1c
	mov	r7, r0
	ldr	r4, [r7, #0x10]
	mov	r3, r4
	cmp	r4, #0
	bge	.L5026
	ldr	r0, =0xfffff
	add	r3, r4, r0
.L5026:
	ldr	r1, [r7, #8]
	asr	r3, #20
	lsl	r2, r3, #7
	mov	r3, r1
	cmp	r1, #0
	bge	.L5036
	ldr	r0, =0xfffff
	add	r3, r1, r0
.L5036:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r2, =ewram_10000
	lsl	r3, #2
	mov	r0, r8
	add	r2, r3
	ldr	r3, [r0]
	mov	r10, r2
	cmp	r3, #0
	beq	.L50b0
	ldr	r3, [r0, #0x14]
	cmp	r3, #0
	beq	.L50b0
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r0, #0x1a
	mov	r3, r4
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L50b6
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L5e38
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r6, #0
	beq	.L50aa
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #6
	sub	r1, r3
	mov	r0, r6
	bl	__Func_ba30
	mov	r2, r6
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	ldrb	r2, [r6, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L50aa:
	mov	r3, r8
	str	r5, [r3, #0x14]
	b	.L50b6
.L50b0:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x14]
.L50b6:
	mov	r2, r10
	ldrb	r3, [r2, #2]
	cmp	r3, r9
	bne	.L5140
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	beq	.L5140
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L5146
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L5e20
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	cmp	r6, #0
	beq	.L5112
	mov	r0, r6
	mov	r1, #6
	bl	__Func_ba30
	mov	r2, r6
	ldr	r3, .L5118	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L5112:
	mov	r2, r8
	str	r5, [r2, #0x18]
	b	.L5146

	.align	2, 0
.L5118:
	.word	0
	.pool

.L5140:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x18]
.L5146:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4fcc

.thumb_func_start OvlFunc_5158
	push	{r5, r6, r7, lr}
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x18
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L51a4
	ldr	r1, =.L5e08
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r7, #0
	mov	r2, r5
	strb	r7, [r3]
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	add	r2, #1
	mov	r3, #2
	strb	r3, [r2]
	cmp	r6, #0
	beq	.L51a4
	mov	r0, r6
	mov	r1, #2
	bl	__Func_ba30
	mov	r3, r6
	add	r3, #0x26
	strb	r7, [r3]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
.L51a4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5158

.thumb_func_start OvlFunc_51b0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L51cc
	mov	r0, #0
	b	.L51ea
.L51cc:
	lsl	r0, #10
	bl	__Func_2322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
	mov	r0, #1
.L51ea:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_51b0

.thumb_func_start OvlFunc_51f0
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0x10
	ble	.L5208
	mov	r0, #0
	b	.L5214
.L5208:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #1
.L5214:
	pop	{r1}
	bx	r1
.func_end OvlFunc_51f0

.thumb_func_start OvlFunc_5218
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0x10
	ble	.L5230
	mov	r0, #0
	b	.L523e
.L5230:
	mov	r2, #0x80
	lsl	r3, #11
	lsl	r2, #9
	add	r3, r2
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #1
.L523e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_5218

.thumb_func_start OvlFunc_5244
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	ldr	r2, [r6, #0x68]
	str	r3, [r6, #0x34]
	ldr	r3, [r2, #8]
	mov	r11, r3
	mov	r3, #0x80
	ldr	r2, [r2, #0x10]
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	ldr	r3, [r6, #8]
	mov	r9, r2
	mov	r2, r11
	sub	r0, r2, r3
	sub	sp, #4
	cmp	r0, #0
	bge	.L5284
	ldr	r3, =0xffff
	add	r0, r3
.L5284:
	ldr	r3, [r6, #0x10]
	asr	r0, #16
	mov	r2, r9
	mov	r10, r0
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L5296
	ldr	r3, =0xffff
	add	r0, r3
.L5296:
	asr	r0, #16
	mov	r8, r0
	mov	r2, r10
	mov	r0, r10
	mul	r0, r2
	mov	r2, r8
	mov	r3, r8
	mul	r3, r2
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	ldr	r3, [r6, #8]
	mov	r2, r11
	sub	r2, r3
	ldr	r3, [r6, #0x10]
	mov	r10, r2
	mov	r2, r9
	sub	r2, r3
	mov	r3, #0x80
	lsl	r7, r0, #16
	lsl	r3, #15
	mov	r8, r2
	cmp	r7, r3
	bge	.L52ea
	ldr	r4, =Func_888
	mov	r0, r10
	mov	r1, r10
	.call_via r4
	mov	r3, r0
	mov	r1, r8
	mov	r0, r8
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	__Func_45d4
	mov	r7, r0
.L52ea:
	mov	r1, r7
	cmp	r7, #0
	bge	.L52f2
	add	r1, r7, #7
.L52f2:
	ldr	r3, [r6, #0x30]
	asr	r5, r1, #3
	cmp	r5, r3
	ble	.L52fc
	mov	r5, r3
.L52fc:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r7, r2
	bge	.L530e
	mov	r3, r11
	mov	r2, r9
	str	r3, [r6, #8]
	str	r2, [r6, #0x10]
	b	.L534a
.L530e:
	cmp	r7, r5
	ble	.L533e
	ldr	r3, =Func_8ac
	mov	r1, r10
	mov	r9, r3
	mov	r0, r7
	bl	_call_via_r9
	ldr	r3, =Func_888
	mov	r1, r5
	.call_via r3
	mov	r1, r8
	str	r3, [sp]
	mov	r10, r0
	mov	r0, r7
	bl	_call_via_r9
	mov	r1, r5
	ldr	r3, [sp]
	.call_via r3
	mov	r8, r0
.L533e:
	ldr	r3, [r6, #8]
	add	r3, r10
	str	r3, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r3, r8
	str	r3, [r6, #0x10]
.L534a:
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r0, #1
	ldr	r1, [r6, #0x50]
	lsr	r2, #1
	and	r2, r0
	ldr	r4, [r1, #0x28]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r1, #0x25
	strb	r3, [r4, #5]
	strb	r0, [r1]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_5244

.thumb_func_start OvlFunc_5388
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r2, r3]
	mov	r0, #0x1a
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L53ec
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L5e14
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	str	r7, [r5, #0x68]
	cmp	r6, #0
	beq	.L53ec
	mov	r0, r6
	mov	r1, #2
	bl	__Func_ba30
	ldr	r3, .L5410	@ 0
	mov	r2, r6
	add	r2, #0x26
	strb	r3, [r2]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L53ec:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L5446
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L5e14
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	mov	r2, #0
	b	.L5420

	.align	2, 0
.L5410:
	.word	0
	.pool

.L5420:
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	cmp	r6, #0
	beq	.L5446
	mov	r0, r6
	mov	r1, #1
	bl	__Func_ba30
	mov	r2, r6
	ldr	r3, =0
	add	r2, #0x26
	strb	r3, [r2]
.L5446:
	mov	r0, #0x82
	bl	__Func_f9080
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5388

.thumb_func_start OvlFunc_5458
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	ldr	r2, [r2]
	sub	r3, #0x20
	mov	r8, r2
	mov	r0, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	mov	r1, r8
	ldr	r7, [r2, r3]
	ldr	r3, [r1]
	sub	sp, #4
	cmp	r3, #2
	bhi	.L5550
	bl	__Func_916b0
	mov	r2, r8
	ldr	r6, [r2, #0x14]
	cmp	r6, #0
	bne	.L54f8
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L54f4
	ldr	r3, [r7, #0x14]
	ldr	r4, [r5, #0x50]
	str	r3, [r5, #0x14]
	ldr	r1, =.L5e38
	str	r4, [sp]
	bl	__Func_c2d8
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	ldr	r4, [sp]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r4, #0
	beq	.L54e6
	mov	r3, r4
	add	r3, #0x26
	strb	r6, [r3]
	mov	r2, #0xd
	ldrb	r3, [r4, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r4, #9]
.L54e6:
	mov	r3, r5
	add	r3, #0x54
	mov	r1, r8
	strb	r6, [r3]
	str	r5, [r1, #0x14]
	mov	r6, r5
	b	.L54f8
.L54f4:
	mov	r2, r8
	ldr	r6, [r2, #0x14]
.L54f8:
	mov	r3, r8
	ldr	r5, [r3]
	cmp	r5, #2
	bgt	.L552a
	mov	r7, r6
	mov	r0, #1
	mov	r1, #5
	add	r7, #0x54
	mov	r9, r0
	mov	r10, r1
.L550c:
	bl	OvlFunc_5388
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r2, r9
	mov	r3, r10
	sub	r1, r3, r5
	strb	r2, [r7]
	mov	r0, r6
	add	r5, #1
	bl	__Func_c300
	cmp	r5, #2
	ble	.L550c
.L552a:
	mov	r0, r8
	mov	r3, #3
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r0, =0x161
	bl	__Func_79358
	bl	__Func_91750
.L5550:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5458

.thumb_func_start OvlFunc_5578
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1edc
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L55ae
	mov	r7, #0
	str	r7, [r6]
	ldr	r0, =0x161
	bl	__Func_79374
	ldr	r5, [r6, #0x14]
	cmp	r5, #0
	beq	.L55ae
	mov	r3, r5
	add	r3, #0x64
	strh	r7, [r3]
	ldr	r1, =.L5e2c
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	str	r7, [r6, #0x14]
.L55ae:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5578

.thumb_func_start OvlFunc_55c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r3, [r3]
	sub	sp, #0x1c
	ldr	r2, [r2]
	mov	r0, #0xfa
	str	r3, [sp, #0xc]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r1, r3]
	mov	r8, r2
	mov	r2, r7
	add	r2, #0x55
	str	r2, [sp]
	ldrb	r3, [r2]
	str	r3, [sp, #4]
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L5e44
	and	r3, r2
	lsl	r3, #1
	ldrh	r6, [r1, r3]
	ldrsh	r3, [r1, r3]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.L5616
	b	.L58e6
.L5616:
	mov	r2, #0x10
	ldr	r4, [r7, #8]
	ldr	r1, =0xfff00000
	add	r2, sp
	mov	r11, r2
	mov	r2, #0x80
	and	r4, r1
	lsl	r2, #12
	add	r5, r4, r2
	mov	r3, r11
	str	r5, [r3]
	ldr	r3, [r7, #0x14]
	mov	r0, r11
	str	r3, [r0, #4]
	ldr	r0, [r7, #0x10]
	and	r0, r1
	add	r2, r0, r2
	mov	r1, r11
	str	r2, [r1, #8]
	cmp	r2, #0
	bge	.L5644
	ldr	r3, =0x17ffff
	add	r2, r0, r3
.L5644:
	asr	r3, r2, #20
	lsl	r2, r3, #7
	mov	r3, r5
	cmp	r3, #0
	bge	.L5652
	ldr	r0, =0x17ffff
	add	r3, r4, r0
.L5652:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =ewram_10000
	lsl	r3, #2
	mov	r0, #0x80
	add	r5, r3, r1
	mov	r2, r11
	lsl	r0, #14
	mov	r1, r6
	bl	__Func_447c
	mov	r2, r11
	ldr	r3, [r2, #8]
	cmp	r3, #0
	bge	.L5674
	ldr	r0, =0xfffff
	add	r3, r0
.L5674:
	asr	r3, #20
	mov	r1, r11
	lsl	r2, r3, #7
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L5684
	ldr	r0, =0xfffff
	add	r3, r0
.L5684:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =ewram_10000
	lsl	r3, #2
	add	r1, r3, r1
	str	r1, [sp, #8]
	mov	r2, r8
	ldrb	r3, [r5, #2]
	ldr	r1, [r2, #4]
	cmp	r3, r1
	beq	.L56aa
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, #2]
	cmp	r3, r1
	bne	.L56aa
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L56aa
	b	.L58e6
.L56aa:
	bl	__Func_916b0
	mov	r0, r7
	add	r1, sp, #0x10
	bl	__Func_120dc
	mov	r10, r0
	cmp	r0, #0
	beq	.L56be
	b	.L58e6
.L56be:
	mov	r1, r8
	ldr	r5, [r1, #0x18]
	cmp	r5, #0
	beq	.L56e4
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
	ldr	r1, =.L5e2c
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, r10
	mov	r0, r8
	str	r3, [r0, #0x18]
.L56e4:
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L57c4
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L57c4
	ldr	r6, [r0, #0x14]
	mov	r0, #0x1a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L5764
	ldr	r1, [r5, #0x50]
	ldr	r3, [r6, #0x14]
	mov	r9, r1
	str	r3, [r5, #0x14]
	ldr	r1, =.L5e20
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r0, r10
	add	r3, #0xf
	mov	r2, r5
	strh	r0, [r3]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r2, r11
	mov	r0, r11
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	mov	r0, r5
	bl	__Func_d14c
	mov	r1, r9
	cmp	r1, #0
	beq	.L5760
	mov	r0, r9
	mov	r1, #6
	bl	__Func_ba30
	mov	r2, r9
	ldr	r3, .L5784	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L5760:
	mov	r2, r8
	str	r5, [r2, #0x18]
.L5764:
	mov	r0, r8
	ldr	r3, [r0]
	sub	r5, r3, #1
	str	r5, [r0]
	cmp	r5, #0
	bne	.L57b4
	ldr	r0, [r0, #0x14]
	bl	__Func_c0f4
	mov	r1, r8
	str	r5, [r1, #0x14]
	ldr	r0, =0x161
	bl	__Func_79374
	b	.L57c4

	.align	2, 0
.L5784:
	.word	0
	.pool

.L57b4:
	mov	r2, r8
	ldr	r0, [r2, #0x14]
	cmp	r0, #0
	beq	.L57c4
	mov	r1, #6
	sub	r1, r5
	bl	__Func_c300
.L57c4:
	mov	r1, #6
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #3
	bl	__Func_30f8
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, r7
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x28]
	ldr	r3, [sp]
	ldrb	r2, [r3]
	ldr	r0, [sp]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, r7
	bl	__Func_c528
	mov	r3, r11
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, #0xa
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	bl	__Func_92158
	mov	r1, #6
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #2
	bl	__Func_30f8
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	beq	.L583a
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c528
	b	.L5840
.L583a:
	mov	r0, #0xd7
	bl	__Func_f9080
.L5840:
	mov	r0, #1
	bl	__Func_30f8
	add	r1, sp, #4
	ldr	r2, [sp]
	ldrb	r1, [r1]
	strb	r1, [r2]
	ldr	r3, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r3, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L58ba
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.L58ba
	mov	r1, #0x12
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r1, #0xf
	ldr	r6, =iwram_1c94
	mov	r5, #0
	mov	r10, r1
	b	.L5880
.L5878:
	mov	r0, #1
	bl	__Func_30f8
	add	r5, #1
.L5880:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.L5890
	mov	r0, r7
	bl	OvlFunc_5158
.L5890:
	cmp	r5, #0x1f
	ble	.L5878
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L5878
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, r8
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #8]
	ldr	r3, [r0, #0x10]
	mov	r1, #1
	str	r3, [r7, #0x10]
	mov	r0, r7
	bl	__Func_c528
.L58ba:
	mov	r1, r8
	mov	r3, #0
	str	r3, [r1, #8]
	bl	__Func_91750
	mov	r0, #0xd8
	ldr	r2, [sp, #0xc]
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, #0x80
	ldr	r4, =Func_888
	ldr	r0, [r3]
	lsl	r1, #14
	.call_via r4
	ldr	r1, [sp, #0xc]
	mov	r3, #0xda
	lsl	r3, #1
	add	r2, r1, r3
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
.L58e6:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_55c0

.thumb_func_start OvlFunc_5900
	push	{r5, lr}
	ldr	r3, =iwram_1edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r5, [r2]
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r0, [r2, r3]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L5926
	sub	r3, #1
	b	.L5938
.L5926:
	bl	OvlFunc_5158
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, #0xa
.L5938:
	str	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5900

.thumb_func_start OvlFunc_5948
	push	{r5, lr}
	mov	r0, #0x23
	mov	r1, #4
	bl	__Func_48f4
	cmp	r0, #0
	beq	.L5966
	ldr	r5, [r0]
	ldr	r0, [r5, #0x14]
	cmp	r0, #0
	beq	.L5966
	bl	__Func_c0f4
	mov	r3, #0
	str	r3, [r5, #0x14]
.L5966:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5948

	.section .data

	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5ca8, (0x5d50-0x5ca8)
.L5d50:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5d50, (0x5d90-0x5d50)
.L5d90:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5d90, (0x5da8-0x5d90)
.L5da8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5da8, (0x5e08-0x5da8)
.L5e08:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e08, (0x5e14-0x5e08)
.L5e14:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e14, (0x5e20-0x5e14)
.L5e20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e20, (0x5e2c-0x5e20)
.L5e2c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e2c, (0x5e38-0x5e2c)
.L5e38:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e38, (0x5e44-0x5e38)
.L5e44:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e44, (0x5e64-0x5e44)
.L5e64:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e64, (0x5e70-0x5e64)
.L5e70:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5e70, (0x5f20-0x5e70)
.L5f20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f20, (0x5f60-0x5f20)
.L5f60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f60, (0x5fa8-0x5f60)
.L5fa8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5fa8, (0x5ff0-0x5fa8)
.L5ff0:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5ff0, (0x6004-0x5ff0)
.L6004:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6004, (0x6008-0x6004)
.L6008:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6008, (0x600c-0x6008)
.L600c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x600c, (0x6010-0x600c)
.L6010:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6010, (0x603a-0x6010)
.L603a:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x603a, (0x6064-0x603a)
.L6064:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6064, (0x608e-0x6064)
.L608e:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x608e, (0x60b8-0x608e)
.L60b8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x60b8, (0x60ec-0x60b8)
.L60ec:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x60ec, (0x623c-0x60ec)
.L623c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x623c, (0x635c-0x623c)
.L635c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x635c, (0x650c-0x635c)
.L650c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x650c, (0x6614-0x650c)
.L6614:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6614, (0x66e8-0x6614)
.L66e8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x66e8, (0x6700-0x66e8)
.L6700:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6700, (0x67a8-0x6700)
.L67a8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x67a8, (0x6838-0x67a8)
.L6838:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6838, (0x6988-0x6838)
.L6988:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6988, (0x6ad8-0x6988)
.L6ad8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6ad8, (0x6c10-0x6ad8)
.L6c10:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6c10, (0x6d60-0x6c10)
.L6d60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6d60, (0x6ec8-0x6d60)
.L6ec8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6ec8
