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
	ldr	r2, =.L1f60
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
	ldr	r3, =.L1f60
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
	ldr	r0, =.L1e48
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
	ldr	r2, =.L1e48
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
	ldr	r2, =.L1e88
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
	ldr	r3, =.L1e48
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
	ldr	r3, =.L1e88
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L1ea0
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
	ldr	r4, =.L1e48
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
	ldr	r5, =.L1ea0
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
	ldr	r1, =.L1e48
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
	ldr	r0, =.L1ea0
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
	ldr	r0, =.L1ea0
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
	ldr	r0, =.L1e48
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
	ldr	r2, =.L1e48
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
	ldr	r4, =.L1ea0
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
	ldr	r2, =.L1e48
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
	ldr	r4, =.L1ea0
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
	ldr	r1, =.L1e88
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
	ldr	r4, =.L1ea0
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
	mov	r0, #8
	mov	r1, #3
	mov	r2, #4
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_cd0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, #0x3c
.Lcd6:
	cmp	r6, #0
	beq	.Lcec
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	sub	r6, #1
	cmp	r3, r2
	bgt	.Lcd6
	b	.Lcee
.Lcec:
	ldr	r2, [r5, #0x14]
.Lcee:
	str	r2, [r5, #0xc]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cd0

.thumb_func_start OvlFunc_cf8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r0
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_44d0
	strh	r0, [r5, #6]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_cf8

.thumb_func_start OvlFunc_d20
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.Ld38
	ldr	r0, =.L1f9c
	b	.Ld4e
.Ld38:
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Ld42
	ldr	r0, =.L2014
	b	.Ld4e
.Ld42:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Ld4c
	ldr	r0, =.L2134
	b	.Ld4e
.Ld4c:
	ldr	r0, =.L1f6c
.Ld4e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d20

.thumb_func_start OvlFunc_d74
	mov	r0, #0
	bx	lr
.func_end OvlFunc_d74

.thumb_func_start OvlFunc_d78
	ldr	r0, =.L21dc
	bx	lr
.func_end OvlFunc_d78

.thumb_func_start OvlFunc_d80
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	beq	.Lda8
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Ld9e
	ldr	r0, =.L22c4
	b	.Ldaa
.Ld9e:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Lda8
	ldr	r0, =.L239c
	b	.Ldaa
.Lda8:
	ldr	r0, =.L2234
.Ldaa:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d80

.thumb_func_start OvlFunc_dcc
	push	{lr}
	sub	sp, #8
	mov	r3, #0xf
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_dcc

.thumb_func_start OvlFunc_de8
	push	{lr}
	sub	sp, #8
	mov	r3, #0xf
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_105d4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_de8

.thumb_func_start OvlFunc_e04
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	beq	.Le22
	b	.Lf5a
.Le22:
	mov	r1, #0xb4
	mov	r2, #0xa6
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_92158
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #9
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #8]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #8]
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r6, #0xd0
	ldr	r2, [r0, #0x10]
	lsl	r6, #14
	add	r2, r6
	mov	r1, #0
	mov	r3, #0xf1
	ldr	r0, [r5, #8]
	bl	OvlFunc_48
	mov	r10, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r5, [r0, #8]
	lsl	r3, #13
	mov	r0, #9
	add	r5, r3
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	mov	r1, #0
	add	r2, r6
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_48
	mov	r8, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r0, #0xd8
	bl	__Func_f9080
	mov	r7, #0
.Leb2:
	bl	__Func_4458
	lsl	r5, r0, #4
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xb8
	lsl	r2, #17
	lsl	r5, #16
	add	r5, r2
	bl	__Func_4458
	lsl	r2, r0, #3
	sub	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0x9c
	lsl	r3, #18
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r1, #0
	mov	r3, #0
	mov	r0, r5
	str	r6, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #9
	bl	__Func_92054
	ldr	r2, =0xffff8000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	add	r7, #1
	mov	r0, #1
	bl	__Func_9163c
	cmp	r7, #0x43
	bls	.Leb2
	mov	r3, #0x17
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x17
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0xfff80000
	mov	r1, #2
	str	r3, [r0, #0xc]
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, r10
	bl	__Func_c0f4
	mov	r0, r8
	bl	__Func_c0f4
	mov	r0, #0x1e
	bl	__Func_9163c
.Lf5a:
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e04

.thumb_func_start OvlFunc_f78
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1b
	beq	.Lf96
	b	.L10a6
.Lf96:
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, =0xfff80000
	ldr	r5, [r0, #8]
	mov	r0, #0xa
	add	r5, r2
	bl	__Func_92054
	mov	r6, #0xd0
	ldr	r2, [r0, #0x10]
	lsl	r6, #14
	add	r2, r6
	mov	r1, #0
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_48
	mov	r10, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r5, [r0, #8]
	lsl	r3, #12
	mov	r0, #0xa
	add	r5, r3
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	mov	r1, #0
	add	r2, r6
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_48
	mov	r8, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r0, #0xd8
	bl	__Func_f9080
	mov	r7, #0
.L1000:
	bl	__Func_4458
	lsl	r5, r0, #4
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xd8
	lsl	r2, #17
	lsl	r5, #16
	add	r5, r2
	bl	__Func_4458
	lsl	r2, r0, #3
	sub	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0xa4
	lsl	r3, #18
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r1, #0
	mov	r3, #0
	mov	r0, r5
	str	r6, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, =0xffff8000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	add	r7, #1
	mov	r0, #1
	bl	__Func_9163c
	cmp	r7, #0x43
	bls	.L1000
	mov	r3, #0x1b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x27
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0x1f
	bl	__Func_10704
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, =0xfff80000
	mov	r1, #2
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, r10
	bl	__Func_c0f4
	mov	r0, r8
	bl	__Func_c0f4
	mov	r0, #0x1e
	bl	__Func_9163c
.L10a6:
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f78

.thumb_func_start OvlFunc_10c8
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_3a8
	bl	__Func_91750
	bl	OvlFunc_f78
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c8

.thumb_func_start OvlFunc_10e0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r1, [r7]
	ldr	r3, [r5, #8]
	ldr	r2, =0xfff00000
	mov	r8, r1
	mov	r1, #0x80
	and	r3, r2
	lsl	r1, #12
	mov	r6, sp
	add	r3, r1
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r2
	mov	r2, #0xa0
	lsl	r2, #14
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	cmp	r0, #0
	bne	.L118e
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
	mov	r1, r8
	strb	r1, [r7]
	bl	__Func_91750
	mov	r0, #1
	b	.L1190
.L118e:
	mov	r0, #0
.L1190:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_10e0

.thumb_func_start OvlFunc_11a0
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1252
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r1, #1
	mov	r0, #8
	bl	__Func_9335c
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc6
	lsl	r1, #2
	mov	r2, #0xf8
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0xc6
	mov	r2, #0x8c
	str	r3, [r0, #0x28]
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_91750
.L1252:
	pop	{r0}
	bx	r0
.func_end OvlFunc_11a0

.thumb_func_start OvlFunc_1258
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12f0
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12f0
	ldr	r0, =0x201
	bl	__Func_79358
	ldr	r0, =0x302
	bl	__Func_79358
	bl	__Func_916b0
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xbe
	mov	r2, #0x8c
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xbe
	mov	r2, #0x9c
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc6
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, =OvlFunc_cf8
	str	r3, [r0, #0x6c]
	bl	__Func_91750
.L12f0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1258

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

.thumb_func_start OvlFunc_169c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.L16b4
	ldr	r0, =.L2420
	b	.L16ca
.L16b4:
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.L16be
	ldr	r0, =.L2450
	b	.L16ca
.L16be:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.L16c8
	ldr	r0, =.L2624
	b	.L16ca
.L16c8:
	ldr	r0, =.L2414
.L16ca:
	pop	{r1}
	bx	r1
.func_end OvlFunc_169c

.thumb_func_start OvlFunc_16f0
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r1, r3, r2
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r1]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.L172e
	mov	r3, #0x80
	lsl	r3, #1
	str	r3, [r1]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92b08
	ldr	r0, =0x12f
	bl	__Func_79374
.L172e:
	bl	OvlFunc_1984
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_16f0

.thumb_func_start OvlFunc_1748
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, r5
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1748

.thumb_func_start OvlFunc_1770
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r0, #0
	mov	r6, #0x17
	mov	r5, #0x22
	mov	r1, #0x22
	mov	r2, #0xd
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.L17ae
	mov	r0, #0xb
	mov	r1, #0x23
	mov	r2, #0x23
	bl	OvlFunc_1938
	mov	r0, #0x18
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	b	.L17ca
.L17ae:
	mov	r0, #0xb
	mov	r1, #0x17
	mov	r2, #0x23
	bl	OvlFunc_1938
	mov	r3, #0x23
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
.L17ca:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1770

.thumb_func_start OvlFunc_17d8
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
	blt	.L187c
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L1886
.L187c:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_c300
	b	.L188e
.L1886:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
.L188e:
	mov	r0, r6
	bl	__Func_ca6c
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
.func_end OvlFunc_17d8

.thumb_func_start OvlFunc_18b4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r0, #0xb
	mov	r1, #0x70
	mov	r2, #0
	bl	OvlFunc_17d8
	mov	r1, #0x50
	mov	r2, #0
	mov	r0, #0xb
	bl	OvlFunc_17d8
	ldr	r0, =0x301
	bl	__Func_79358
	mov	r0, #2
	bl	__Func_30f8
	bl	OvlFunc_1770
	ldr	r0, =0x121
	bl	__Func_f9080
	pop	{r0}
	bx	r0
.func_end OvlFunc_18b4

.thumb_func_start OvlFunc_18f4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r1, #0x70
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_17d8
	mov	r1, #0x50
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xb
	bl	OvlFunc_17d8
	ldr	r0, =0x301
	bl	__Func_79374
	mov	r0, #2
	bl	__Func_30f8
	bl	OvlFunc_1770
	ldr	r0, =0x121
	bl	__Func_f9080
	pop	{r0}
	bx	r0
.func_end OvlFunc_18f4

.thumb_func_start OvlFunc_1938
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L197a
	mov	r1, #3
	mov	r0, r6
	bl	__Func_92b08
	mov	r1, r5
	add	r1, #0x22
	mov	r3, #2
	strb	r3, [r1]
	add	r1, #1
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r2, r3
	strb	r2, [r1]
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r3, r7, #20
	add	r3, r2
	mov	r1, r8
	str	r3, [r5, #8]
	lsl	r3, r1, #20
	add	r3, r2
	str	r3, [r5, #0x10]
.L197a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1938

.thumb_func_start OvlFunc_1984
	push	{r5, r6, lr}
	ldr	r2, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r2, r0
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	ldr	r3, =0x5e
	sub	sp, #8
	cmp	r1, r3
	beq	.L199c
	b	.L1acc
.L199c:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #9
	bls	.L19ae
	b	.L1bc6
.L19ae:
	ldr	r2, =.L19b8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L19b8:
	.word	.L19e0
	.word	.L19e0
	.word	.L19e0
	.word	.L19e0
	.word	.L1a02
	.word	.L1a02
	.word	.L1a02
	.word	.L1a64
	.word	.L1a64
	.word	.L1a64
.L19e0:
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xf0
	mov	r2, #0xe8
	lsl	r0, #15
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_a0
	b	.L1bc6
.L1a02:
	mov	r0, #0x70
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a0e
	b	.L1bc6
.L1a0e:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1a1a
	b	.L1bc6
.L1a1a:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r3, =ewram_240
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L1a38
	add	r0, #0x3f
	bl	__Func_79358
.L1a38:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a4a
	b	.L1bc6
.L1a4a:
	mov	r1, #0xc6
	mov	r2, #0x8c
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, =OvlFunc_cf8
	str	r3, [r0, #0x6c]
	b	.L1bc6
.L1a64:
	mov	r2, #0x8a
	lsl	r2, #18
	mov	r1, #0
	mov	r3, #0x14
	ldr	r0, =0x2820000
	bl	OvlFunc_a0
	mov	r3, #0
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x22
	mov	r2, #0xd
	mov	r3, #3
	bl	__Func_10704
	bl	OvlFunc_1770
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1aaa
	mov	r3, #0x17
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L1aaa:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1ab6
	b	.L1bc6
.L1ab6:
	mov	r3, #0x1b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1f
	mov	r1, #0x27
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
	b	.L1bc6
.L1acc:
	ldr	r3, =0x5f
	cmp	r1, r3
	bne	.L1bc6
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bgt	.L1bc6
	cmp	r3, #1
	blt	.L1bc6
	add	r0, #0x40
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1b14
	mov	r6, #4
	mov	r5, #0
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_528
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0x10
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_528
	b	.L1b1a
.L1b14:
	mov	r0, #9
	bl	OvlFunc_ba4
.L1b1a:
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1b4a
	mov	r6, #4
	mov	r5, #0
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_528
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_528
	b	.L1b50
.L1b4a:
	mov	r0, #0xa
	bl	OvlFunc_ba4
.L1b50:
	ldr	r0, =0x205
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L1b72
	mov	r3, #2
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0x13
	mov	r3, #4
	bl	OvlFunc_528
	b	.L1bc6
.L1b72:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1bb8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0xf
	mov	r3, #4
	mov	r0, #0
	str	r5, [sp, #4]
	bl	OvlFunc_528
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
	b	.L1bc6
.L1bb8:
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92b08
.L1bc6:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1984

.thumb_func_start OvlFunc_1bfc
	push	{lr}
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bfc

	.section .data

	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1da0, (0x1e48-0x1da0)
.L1e48:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1e48, (0x1e88-0x1e48)
.L1e88:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1e88, (0x1ea0-0x1e88)
.L1ea0:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1ea0, (0x1f00-0x1ea0)
.L1f00:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f00, (0x1f60-0x1f00)
.L1f60:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f60, (0x1f6c-0x1f60)
.L1f6c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f6c, (0x1f9c-0x1f6c)
.L1f9c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f9c, (0x2014-0x1f9c)
.L2014:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2014, (0x2134-0x2014)
.L2134:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2134, (0x21dc-0x2134)
.L21dc:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x21dc, (0x2234-0x21dc)
.L2234:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2234, (0x22c4-0x2234)
.L22c4:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x22c4, (0x239c-0x22c4)
.L239c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x239c, (0x2414-0x239c)
.L2414:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2414, (0x2420-0x2414)
.L2420:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2420, (0x2450-0x2420)
.L2450:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2450, (0x2624-0x2450)
.L2624:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2624
