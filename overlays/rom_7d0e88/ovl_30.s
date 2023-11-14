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
	ldr	r2, =.L2d58
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
	ldr	r3, =.L2d58
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
	ldr	r0, =.L2ca0
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
	ldr	r2, =.L2ca0
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
	ldr	r2, =.L2ce0
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
	ldr	r3, =.L2ca0
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
	ldr	r3, =.L2ce0
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L2cf8
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
	ldr	r4, =.L2ca0
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
	ldr	r5, =.L2cf8
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
	ldr	r1, =.L2ca0
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
	ldr	r0, =.L2cf8
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
	ldr	r0, =.L2cf8
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
	ldr	r0, =.L2ca0
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
	ldr	r2, =.L2ca0
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
	ldr	r4, =.L2cf8
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
	ldr	r2, =.L2ca0
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
	ldr	r4, =.L2cf8
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
	ldr	r1, =.L2ce0
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
	ldr	r4, =.L2cf8
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
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	lsl	r1, #7
	ldr	r4, [sp, #0x30]
	mov	r10, r2
	add	r1, r0
	ldr	r2, =ewram_10000
	lsl	r1, #2
	add	r3, r4, r3
	add	r5, r1, r2
	cmp	r4, r3
	bge	.Ld4e
	str	r3, [sp, #4]
	mov	r6, r10
	mov	r3, #0x80
	sub	r3, r6
	lsl	r3, #2
	mov	r11, r3
	ldr	r3, [sp, #0x28]
	lsl	r3, #4
	mov	r9, r3
.Lcf6:
	ldr	r0, [sp, #0x2c]
	mov	r1, r10
	add	r2, r0, r1
	cmp	r0, r2
	bge	.Ld44
	ldr	r3, =0xfff
	mov	r7, #0xf
	mov	r8, r3
	mov	r3, r4
	and	r3, r7
	add	r3, r9
	lsl	r3, #5
	ldr	r6, =0x6002800
	str	r3, [sp]
	mov	r14, r6
	mov	r12, r2
.Ld16:
	ldr	r6, [sp]
	ldmia	r5!, {r1}
	mov	r3, r0
	mov	r2, r8
	and	r3, r7
	and	r1, r2
	add	r3, r6, r3
	ldr	r6, =ewram_20000
	lsl	r1, #3
	add	r2, r1, r6
	ldr	r2, [r2]
	lsl	r3, #2
	mov	r6, r14
	str	r2, [r3, r6]
	ldr	r6, =ewram_20004
	add	r2, r1, r6
	ldr	r1, =0x6002840
	ldr	r2, [r2]
	add	r3, r1
	add	r0, #1
	str	r2, [r3]
	cmp	r0, r12
	blt	.Ld16
.Ld44:
	ldr	r2, [sp, #4]
	add	r4, #1
	add	r5, r11
	cmp	r4, r2
	blt	.Lcf6
.Ld4e:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_d78
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, #0x3c
	b	.Ld82
.Ld80:
	sub	r6, #1
.Ld82:
	cmp	r6, #0
	beq	.Ld94
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x14]
	cmp	r2, r3
	bne	.Ld80
.Ld94:
	mov	r3, #0
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x3c]
	ldr	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d78

.thumb_func_start OvlFunc_da8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r7, r1
	mov	r6, #0x3c
	b	.Ldb4
.Ldb2:
	sub	r6, #1
.Ldb4:
	cmp	r6, #0
	beq	.Ldca
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x14]
	cmp	r2, r3
	ble	.Ldca
	cmp	r2, r7
	bgt	.Ldb2
.Ldca:
	mov	r3, #0
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x3c]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_da8

.thumb_func_start OvlFunc_ddc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r3
	ldr	r3, =iwram_1e70
	mov	r8, r1
	mov	r6, r2
	ldr	r7, [r3]
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =.L2ce0
	mov	r4, #0
	ldr	r3, [r3, r4]
	cmp	r2, r3
	beq	.Le1e
.Le02:
	mov	r3, #7
	add	r4, #1
	str	r3, [r5]
	cmp	r4, #5
	bhi	.Le20
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r2, =.L2ce0
	lsl	r3, r4, #2
	ldr	r3, [r2, r3]
	cmp	r1, r3
	bne	.Le02
.Le1e:
	str	r4, [r5]
.Le20:
	ldr	r2, [r5]
	cmp	r2, #6
	bls	.Le2a
	mov	r0, #0
	b	.Leb2
.Le2a:
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r0, #0x10]
	lsl	r1, r2, #4
	str	r3, [r5, #0x10]
	ldr	r0, =.L2cf8
	add	r3, r1, #4
	ldr	r2, [r0, r3]
	cmp	r2, #0
	bge	.Le44
	neg	r2, r2
.Le44:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r0, r3]
	cmp	r3, #0
	bge	.Le50
	neg	r3, r3
.Le50:
	add	r3, r2, r3
	asr	r3, #4
	str	r3, [r6]
	ldr	r3, [r5]
	lsl	r3, #4
	ldr	r2, [r0, r3]
	cmp	r2, #0
	bge	.Le62
	neg	r2, r2
.Le62:
	add	r3, #8
	ldr	r3, [r0, r3]
	cmp	r3, #0
	bge	.Le6c
	neg	r3, r3
.Le6c:
	add	r3, r2, r3
	asr	r3, #4
	mov	r1, r8
	str	r3, [r1]
	ldr	r2, [r5]
	lsl	r2, #4
	ldr	r3, [r0, r2]
	ldr	r1, [r5, #8]
	lsl	r3, #16
	add	r1, r3
	str	r1, [r5, #8]
	add	r2, #4
	ldr	r3, [r0, r2]
	ldr	r2, [r5, #0x10]
	lsl	r3, #16
	add	r2, r3
	asr	r2, #20
	str	r2, [r5, #0x10]
	asr	r1, #20
	mov	r2, #0x9e
	str	r1, [r5, #8]
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r3, [r3]
	ldr	r2, [sp, #0x14]
	asr	r3, #20
	mov	r1, #0xa0
	str	r3, [r2]
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	ldr	r2, [sp, #0x18]
	asr	r3, #20
	str	r3, [r2]
	mov	r0, #1
.Leb2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_ddc

.thumb_func_start OvlFunc_ec8
	push	{r5, r6, r7, lr}
	sub	sp, #0x30
	mov	r5, r0
	bl	__Func_92054
	add	r3, sp, #0xc
	add	r6, sp, #0x18
	str	r3, [sp]
	add	r3, sp, #8
	mov	r7, r0
	str	r3, [sp, #4]
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	mov	r0, r5
	mov	r3, r6
	bl	OvlFunc_ddc
	cmp	r0, #0
	bne	.Lef2
	mov	r0, #0
	b	.Lf4e
.Lef2:
	ldr	r1, [r6, #8]
	ldr	r0, [r6, #0x10]
	ldr	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_10704
	mov	r0, r7
	mov	r1, #4
	bl	__Func_c300
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r1, [sp, #0x14]
	ldr	r0, [sp, #0x10]
	cmp	r1, r0
	bls	.Lf38
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r2, #0x20
	str	r1, [sp]
	str	r0, [sp, #4]
	add	r3, #2
	mov	r0, #0x46
	mov	r1, #0x28
	bl	__Func_10424
	b	.Lf4c
.Lf38:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r2, #0x20
	str	r1, [sp]
	str	r0, [sp, #4]
	add	r3, #2
	mov	r0, #0x44
	mov	r1, #0x28
	bl	__Func_10424
.Lf4c:
	mov	r0, #1
.Lf4e:
	add	sp, #0x30
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_ec8

.thumb_func_start OvlFunc_f58
	push	{r5, r6, r7, lr}
	sub	sp, #0x30
	mov	r5, r0
	bl	__Func_92054
	add	r3, sp, #0xc
	add	r6, sp, #0x18
	str	r3, [sp]
	add	r3, sp, #8
	mov	r7, r0
	str	r3, [sp, #4]
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	mov	r0, r5
	mov	r3, r6
	bl	OvlFunc_ddc
	cmp	r0, #0
	bne	.Lf82
	mov	r0, #0
	b	.Lfc4
.Lf82:
	ldr	r4, [r6, #0x10]
	ldr	r0, [sp, #0xc]
	ldr	r5, [r6, #8]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x14]
	add	r1, r4
	ldr	r3, [sp, #0x10]
	add	r0, r5
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	__Func_10704
	ldr	r0, [sp, #0x10]
	ldr	r2, [r6, #0x10]
	ldr	r1, [r6, #8]
	str	r0, [sp]
	mov	r0, #0xff
	ldr	r3, [sp, #0x14]
	str	r0, [sp, #4]
	mov	r0, #0
	bl	OvlFunc_528
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c300
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r1]
	mov	r0, #1
.Lfc4:
	add	sp, #0x30
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_f58

.thumb_func_start OvlFunc_fcc
	push	{r5, lr}
	mov	r5, r3
	ldr	r3, =iwram_1e70
	mov	r4, r2
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L1008
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	lsl	r0, r4, #7
	ldr	r2, [r2, r3]
	add	r0, r1, r0
	lsl	r0, #2
	add	r0, r2, r0
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x84000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1000:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1000
.L1008:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fcc

.thumb_func_start OvlFunc_101c
	push	{r5, lr}
	mov	r5, r3
	ldr	r3, =iwram_1e70
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L1068
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r4, r3]
	lsl	r3, r2, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r0, r3
	ldr	r3, [r5]
	ldrb	r1, [r0, #1]
	lsl	r3, #18
	mov	r2, #0x31
	lsr	r3, #30
	neg	r2, r2
	lsl	r3, #4
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #1]
	ldrb	r3, [r5, #1]
	mov	r1, #0x3f
	lsr	r3, #6
	lsl	r3, #6
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #1]
	ldrb	r3, [r5, #2]
	strb	r3, [r0, #2]
	ldrb	r3, [r5, #3]
	strb	r3, [r0, #3]
.L1068:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_101c

.thumb_func_start OvlFunc_1074
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r11, r1
	bl	__Func_92054
	mov	r1, #0
	mov	r6, r0
	str	r1, [sp, #4]
	mov	r9, r1
	bl	__Func_c528
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_11f54
	mov	r4, r0
	mov	r3, r4
	cmp	r4, #0
	bge	.L10ac
	ldr	r2, =0xfffff
	add	r3, r4, r2
.L10ac:
	asr	r5, r3, #20
	mov	r10, r5
	cmp	r5, #0
	bge	.L10b6
	neg	r5, r5
.L10b6:
	mov	r3, #0x22
	add	r3, r6
	add	r5, #1
	mov	r7, #0
	mov	r8, r3
.L10c0:
	ldr	r3, [r6, #0x10]
	mov	r1, r8
	lsl	r2, r7, #20
	ldrb	r0, [r1]
	add	r2, r3
	ldr	r1, [r6, #8]
	str	r4, [sp]
	bl	__Func_11f54
	mov	r3, r0
	ldr	r4, [sp]
	cmp	r0, #0
	bge	.L10de
	ldr	r2, =0xfffff
	add	r3, r0, r2
.L10de:
	asr	r0, r3, #20
	cmp	r10, r0
	bge	.L1136
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	asr	r3, #20
	lsl	r3, #20
	lsl	r1, #12
	add	r2, r3, r1
	mov	r3, r11
	cmp	r3, #0
	bne	.L110c
	ldr	r3, [r6, #0x10]
	add	r7, #2
	asr	r3, #20
	add	r3, r7, r3
	mov	r1, #0x80
	lsl	r3, #20
	lsl	r1, #10
	add	r7, r3, r1
	lsl	r5, r0, #20
	mov	r3, #0xdf
	b	.L111e
.L110c:
	ldr	r3, [r6, #0x10]
	add	r7, #3
	asr	r3, #20
	add	r3, r7, r3
	ldr	r1, =0xfffe0000
	lsl	r3, #20
	add	r7, r3, r1
	lsl	r5, r0, #20
	mov	r3, #0xfd
.L111e:
	mov	r0, r2
	mov	r1, r5
	mov	r2, r7
	bl	OvlFunc_48
	ldr	r3, [r6, #0x10]
	sub	r3, r7
	mov	r9, r0
	add	r4, r3, r5
	mov	r2, #1
	str	r2, [sp, #4]
	b	.L113c
.L1136:
	add	r7, #1
	cmp	r7, r5
	bls	.L10c0
.L113c:
	mov	r0, r6
	mov	r1, r4
	bl	OvlFunc_da8
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x10]
	mov	r3, r9
	cmp	r3, #0
	beq	.L1158
	mov	r0, r9
	bl	__Func_c0f4
.L1158:
	ldr	r0, [sp, #4]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1074

.thumb_func_start OvlFunc_1174
	push	{r5, r6, r7, lr}
	bl	__Func_92054
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r7, =0x1999
	mov	r6, #0
.L1188:
	cmp	r6, #0x1f
	bhi	.L11ac
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r5, #0x1c]
	ldr	r1, =0xffffe667
	ldr	r3, [r5, #0xc]
	add	r2, r1
	ldr	r1, =0xffff3334
	add	r3, r1
	str	r3, [r5, #0xc]
	ldr	r3, =0x1998
	str	r2, [r5, #0x1c]
	add	r6, #1
	cmp	r2, r3
	bgt	.L1188
	str	r7, [r5, #0x1c]
.L11ac:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1174

.thumb_func_start OvlFunc_11c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r3, =iwram_1e40
	ldr	r7, [r3]
	mov	r3, #3
	and	r7, r3
	mov	r10, r0
	cmp	r7, #0
	bne	.L124c
	add	r2, sp, #0x10
	mov	r3, #0xa
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	bl	__Func_4458
	lsl	r3, r0, #4
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r6, [r2, #8]
	sub	r3, #8
	lsl	r3, #16
	add	r6, r3
	bl	__Func_4458
	lsl	r3, r0, #4
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r5, [r2, #0x10]
	sub	r3, #8
	lsl	r3, #16
	add	r5, r3
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_af0
	ldr	r3, =0x90001
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_13c
.L124c:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11c4

.thumb_func_start OvlFunc_1268
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r1, #0x55
	mov	r5, r0
	add	r1, r5
	ldrb	r2, [r1]
	ldrh	r3, [r5, #6]
	mov	r10, r1
	mov	r1, #0x80
	lsl	r1, #6
	add	r7, r3, r1
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r9, r2
	and	r7, r3
	mov	r2, #0xf9
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #0
	bne	.L1398
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
	mov	r0, #0x80
	and	r3, r1
	add	r3, r2
	lsl	r0, #13
	mov	r8, r1
	mov	r2, r6
	mov	r1, r7
	str	r3, [r6, #8]
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_120dc
	cmp	r0, #1
	beq	.L1396
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_350
	cmp	r0, #0
	bne	.L1396
	ldr	r3, [r5, #8]
	mov	r2, r8
	mov	r1, #0x80
	lsl	r1, #12
	and	r3, r2
	add	r3, r1
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, #0x80
	and	r3, r2
	add	r3, r1
	lsl	r0, #14
	mov	r1, r7
	mov	r2, r6
	str	r3, [r6, #8]
	bl	__Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_350
	cmp	r0, #0
	bne	.L1396
	mov	r0, r5
	mov	r1, r6
	bl	__Func_120dc
	cmp	r0, #0
	bne	.L1396
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
	mov	r3, r10
	ldrb	r2, [r3]
	mov	r3, #0x7e
	and	r3, r2
	mov	r1, r10
	strb	r3, [r1]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r2, #2
	ldrsh	r1, [r6, r2]
	mov	r0, #0
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	bl	__Func_92158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c528
	mov	r1, r9
	mov	r2, r10
	strb	r1, [r2]
	bl	__Func_91750
	mov	r0, #1
	b	.L1398
.L1396:
	mov	r0, #0
.L1398:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1268

.thumb_func_start OvlFunc_13b0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	ldr	r6, [r5, #0x44]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #0x48]
	add	r3, r6
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	mov	r8, r2
	add	r3, r8
	ldr	r2, [r5, #0x4c]
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r10, r2
	add	r3, r10
	str	r3, [r5, #0x10]
	mov	r0, r6
	mov	r1, #0xa
	bl	_Func_af0
	sub	r6, r0
	str	r6, [r5, #0x44]
	mov	r0, r8
	mov	r1, #3
	bl	_Func_af0
	mov	r3, r8
	sub	r3, r0
	str	r3, [r5, #0x48]
	mov	r0, r10
	mov	r1, #0xa
	bl	_Func_af0
	mov	r2, r10
	sub	r2, r0
	str	r2, [r5, #0x4c]
	ldr	r3, [r5, #0x18]
	ldr	r2, [r5, #0x30]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r2, [r5, #0x34]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
	ldr	r1, [r5, #0x50]
	add	r5, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r5]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13b0

.thumb_func_start OvlFunc_1428
	push	{lr}
	mov	r3, r0
	add	r3, #0x64
	ldrh	r3, [r3]
	mov	r1, #0xf
	and	r1, r3
	bl	__Func_929d8
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_1428

.thumb_func_start OvlFunc_1440
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L1458
	ldr	r0, =.L2eac
	b	.L1482
.L1458:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L1462
	ldr	r0, =.L2ef4
	b	.L1482
.L1462:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L146c
	ldr	r0, =.L2f3c
	b	.L1482
.L146c:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L1476
	ldr	r0, =.L2f84
	b	.L1482
.L1476:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L1480
	ldr	r0, =.L2fcc
	b	.L1482
.L1480:
	ldr	r0, =.L2e7c
.L1482:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1440

.thumb_func_start OvlFunc_14b8
	mov	r0, #0
	bx	lr
.func_end OvlFunc_14b8

.thumb_func_start OvlFunc_14bc
	ldr	r0, =.L3014
	bx	lr
.func_end OvlFunc_14bc

.thumb_func_start OvlFunc_14c4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L14dc
	ldr	r0, =.L306c
	b	.L14fc
.L14dc:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L14e6
	ldr	r0, =.L30e4
	b	.L14fc
.L14e6:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L14f0
	ldr	r0, =.L3174
	b	.L14fc
.L14f0:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L14fa
	ldr	r0, =.L32dc
	b	.L14fc
.L14fa:
	ldr	r0, =.L3264
.L14fc:
	pop	{r1}
	bx	r1
.func_end OvlFunc_14c4

.thumb_func_start OvlFunc_1528
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_1268
	cmp	r0, #0
	bne	.L153a
	bl	OvlFunc_3a8
.L153a:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1528

.thumb_func_start OvlFunc_1544
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_758
	cmp	r0, #0
	beq	.L156c
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_8ec
.L156c:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1544

.thumb_func_start OvlFunc_1578
	push	{r5, r6, lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	ldr	r5, =iwram_1ad4
	ldr	r6, =REG_BG1HOFS
	cmp	r3, #0xe3
	beq	.L158a
	cmp	r3, #0x2e
	bhi	.L159e
.L158a:
	bl	__Func_4458
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L3738
	ldr	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcs	.L159e
	ldr	r5, =.L372c
.L159e:
	ldmia	r5!, {r3}
	str	r3, [r6]
	ldr	r6, =REG_BG2HOFS
	ldmia	r5!, {r3}
	stmia	r6!, {r3}
	ldr	r3, [r5]
	str	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1578

.thumb_func_start OvlFunc_15cc
	ldr	r3, =iwram_1ad4
	ldr	r2, =.L372c
	ldmia	r3!, {r1}
	stmia	r2!, {r1}
	ldmia	r3!, {r1}
	stmia	r2!, {r1}
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r2, =.L372c
	ldrh	r3, [r2, #2]
	add	r3, #0xc0
	strh	r3, [r2, #2]
	ldrh	r3, [r2, #6]
	add	r3, #0xc0
	strh	r3, [r2, #6]
	ldrh	r3, [r2, #0xa]
	add	r3, #0xc0
	strh	r3, [r2, #0xa]
	bx	lr
.func_end OvlFunc_15cc

.thumb_func_start OvlFunc_15fc
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #0xc
	bl	__Func_79338
	cmp	r0, #0
	bne	.L164c
	str	r0, [sp]
	mov	r6, #0xa
	mov	r5, #0x1f
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	b	.L168c
.L164c:
	mov	r3, #0
	str	r3, [sp]
	mov	r6, #0xa
	mov	r5, #0x1f
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_cc0
.L168c:
	ldr	r5, =.L3738
	mov	r6, #0
	mov	r1, #0xc8
	lsl	r1, #4
	str	r6, [r5]
	ldr	r0, =OvlFunc_15cc
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =OvlFunc_1578
	mov	r0, #1
	mov	r1, #0
	bl	__Func_307c
	mov	r0, #0xe7
	bl	__Func_f9080
	str	r6, [r5]
.L16b4:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x64
	ble	.L16b4
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16fa
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x20
	mov	r1, #0x20
	mov	r2, #0x40
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.L171c
.L16fa:
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x20
	mov	r1, #0x40
	mov	r2, #0x40
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
.L171c:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_307c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =OvlFunc_15cc
	bl	__Func_4278
	bl	__Func_fe9c
	mov	r0, #0x1e
	bl	__Func_30f8
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15fc

.thumb_func_start OvlFunc_175c
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r3, #1
	ldr	r0, =0x1190000
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.L185c
	mov	r0, #0xe8
	bl	__Func_f9080
	mov	r2, #0x18
	mov	r1, #0x54
	ldr	r0, =.L2da8
	bl	__Func_10560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_92b08
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, =0xffe00000
	mov	r1, #0x88
	mov	r2, #0xd0
	str	r3, [r0, #0xc]
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =.L2dfc
	mov	r1, #0x50
	mov	r2, #0x18
	bl	__Func_10560
	ldr	r0, =.L2e50
	mov	r1, #0x50
	mov	r2, #0x1c
	bl	__Func_10560
	mov	r3, #2
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x10
	mov	r3, #0x1b
	mov	r0, #0x41
	bl	__Func_10424
	bl	OvlFunc_15fc
	mov	r0, #9
	bl	OvlFunc_ec8
	mov	r0, #0xa
	bl	OvlFunc_ec8
	mov	r0, #0xb
	bl	OvlFunc_ec8
	mov	r0, #0xc
	bl	OvlFunc_ec8
	mov	r0, #0xd
	bl	OvlFunc_ec8
	mov	r0, #0xe
	bl	OvlFunc_ec8
	mov	r0, #0xf
	bl	OvlFunc_ec8
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	b	.L190c
.L185c:
	mov	r0, #0xe8
	bl	__Func_f9080
	mov	r1, #0x54
	mov	r2, #0x18
	ldr	r0, =.L2dd2
	bl	__Func_10560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe6
	bl	__Func_f9080
	mov	r0, #0x10
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, =0xffe00000
	mov	r1, #0x88
	mov	r2, #0xda
	str	r3, [r0, #0xc]
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_924d4
	mov	r3, #2
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x1b
	mov	r0, #0x41
	mov	r1, #0x2d
	mov	r2, #0x10
	bl	__Func_10424
	mov	r1, #0x50
	mov	r2, #0x18
	ldr	r0, =.L2e26
	bl	__Func_10560
	bl	OvlFunc_15fc
	mov	r0, #9
	bl	OvlFunc_f58
	mov	r0, #0xa
	bl	OvlFunc_f58
	mov	r0, #0xb
	bl	OvlFunc_f58
	mov	r0, #0xc
	bl	OvlFunc_f58
	mov	r0, #0xd
	bl	OvlFunc_f58
	mov	r0, #0xe
	bl	OvlFunc_f58
	mov	r0, #0xf
	bl	OvlFunc_f58
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
.L190c:
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_175c

.thumb_func_start OvlFunc_1938
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	ldr	r1, [r6, #8]
	ldr	r4, [r5, #8]
	mov	r0, #0
	cmp	r1, r4
	bne	.L1958
	ldr	r2, [r6, #0xc]
	ldr	r3, [r5, #0xc]
	cmp	r2, r3
	bne	.L1958
	ldr	r2, [r6, #0x10]
	ldr	r3, [r5, #0x10]
	cmp	r2, r3
	beq	.L19de
.L1958:
	ldr	r2, =0xfff00000
	add	r3, r1, r2
	cmp	r3, r4
	bge	.L19de
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r1, r2
	cmp	r4, r3
	bge	.L19de
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	bge	.L1974
	ldr	r1, =0xffff
	add	r3, r1
.L1974:
	asr	r2, r3, #16
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L1980
	ldr	r1, =0xffff
	add	r3, r1
.L1980:
	asr	r3, #16
	cmp	r2, r3
	bne	.L19de
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x10]
	cmp	r3, r2
	ble	.L19de
	ldr	r1, =0xffe00000
	add	r3, r1
	cmp	r3, r2
	bge	.L19de
	ldr	r3, [r5, #0x50]
	ldrb	r2, [r3, #9]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r2, #28
	lsl	r1, r3, #28
	lsr	r2, #30
	lsr	r3, r1, #30
	cmp	r2, r3
	bcs	.L19dc
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r4, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	lsr	r1, #30
	lsl	r1, #2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r3, [r6, #0x50]
	ldr	r0, [r5, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
.L19dc:
	mov	r0, #1
.L19de:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1938

.thumb_func_start OvlFunc_19f0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r4, [r5, #8]
	ldr	r1, [r6, #8]
	mov	r0, #0
	cmp	r4, r1
	bne	.L1a10
	ldr	r2, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	cmp	r2, r3
	bne	.L1a10
	ldr	r2, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	cmp	r2, r3
	beq	.L1a96
.L1a10:
	ldr	r2, =0xfff00000
	add	r3, r1, r2
	cmp	r3, r4
	bge	.L1a96
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r1, r2
	cmp	r4, r3
	bge	.L1a96
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L1a2c
	ldr	r1, =0xffff
	add	r3, r1
.L1a2c:
	asr	r2, r3, #16
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	bge	.L1a38
	ldr	r1, =0xffff
	add	r3, r1
.L1a38:
	asr	r3, #16
	cmp	r2, r3
	bne	.L1a96
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x10]
	cmp	r3, r2
	ble	.L1a96
	ldr	r1, =0xffe00000
	add	r3, r1
	cmp	r3, r2
	bge	.L1a96
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r1, r3, #28
	ldr	r3, [r5, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r2, r1, #30
	lsr	r3, #30
	cmp	r2, r3
	bls	.L1a94
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r4, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	lsr	r1, #30
	lsl	r1, #2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r3, [r6, #0x50]
	ldr	r0, [r5, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
.L1a94:
	mov	r0, #1
.L1a96:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_19f0

.thumb_func_start OvlFunc_1aa8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ebc
	ldr	r1, =0xcc7
	ldr	r3, [r3]
	add	r3, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r8, r0
	cmp	r3, #1
	bne	.L1aee
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldr	r0, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	ldrb	r1, [r0, #9]
	and	r2, r3
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	mov	r1, r6
	add	r1, #0x59
	orr	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r0, #9]
	mov	r3, #1
	orr	r3, r2
	b	.L1bd0
.L1aee:
	mov	r0, r6
	mov	r1, r8
	bl	OvlFunc_1938
	mov	r5, #8
	mov	r7, r0
.L1afa:
	mov	r0, r5
	bl	__Func_92054
	mov	r1, r0
	mov	r0, r6
	bl	OvlFunc_1938
	add	r5, #1
	add	r7, r0
	cmp	r5, #0xb
	bls	.L1afa
	cmp	r7, #0
	beq	.L1b2a
	mov	r5, #8
.L1b16:
	mov	r0, r5
	bl	__Func_92054
	add	r5, #1
	mov	r1, r0
	mov	r0, r6
	bl	OvlFunc_19f0
	cmp	r5, #0xb
	bls	.L1b16
.L1b2a:
	mov	r1, r8
	ldr	r2, [r6, #0xc]
	ldr	r3, [r1, #0xc]
	cmp	r2, r3
	bge	.L1ba6
	mov	r2, #0x23
	add	r2, r6
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #2
	orr	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r0, #0xfe
	mov	r3, r0
	and	r3, r2
	strb	r3, [r1]
	ldr	r3, [r6, #0x50]
	mov	r1, r8
	ldrb	r2, [r3, #9]
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r2, #28
	lsl	r3, #28
	lsr	r2, #30
	lsr	r3, #30
	cmp	r2, r3
	bcs	.L1bc2
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, r0
	and	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldr	r4, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r1, #0xc
	and	r1, r3
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	mov	r1, r8
	ldr	r3, [r1, #0x50]
	ldr	r0, [r6, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
	mov	r7, #1
	b	.L1bc2
.L1ba6:
	mov	r2, #0x23
	add	r2, r6
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #0xfd
	and	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
.L1bc2:
	cmp	r7, #0
	bne	.L1bd2
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r1, r12
.L1bd0:
	strb	r3, [r1]
.L1bd2:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1aa8

.thumb_func_start OvlFunc_1be8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	sub	sp, #0x84
	mov	r2, #0x10
	str	r1, [sp, #4]
	str	r1, [sp]
	mov	r11, r1
	mov	r9, r2
.L1c04:
	mov	r0, r11
	add	r0, #8
	bl	__Func_92054
	mov	r3, r11
	mov	r10, r0
	mov	r8, r11
	cmp	r3, #3
	bls	.L1c18
	b	.L1d44
.L1c18:
	ldr	r6, [sp]
	ldr	r4, [sp]
	ldr	r1, =.L36d0
	add	r6, #0x10
	add	r7, r4, r1
.L1c22:
	mov	r0, r8
	add	r0, #8
	bl	__Func_92054
	mov	r3, r10
	mov	r4, r0
	ldr	r2, [r3, #0xc]
	ldr	r3, [r4, #0xc]
	cmp	r2, r3
	bgt	.L1c42
	mov	r1, r10
	ldr	r2, [r1, #0x10]
	ldr	r3, [r4, #0x10]
	cmp	r2, r3
	bge	.L1c42
	b	.L1d34
.L1c42:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	add	r1, sp, #0x14
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c54:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c54
	ldr	r3, =REG_DMA3SAD
	mov	r0, r10
	mov	r1, r4
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c6e:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c6e
	ldr	r3, =REG_DMA3SAD
	add	r0, sp, #0x14
	mov	r1, r10
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c88:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c88
	ldr	r3, =REG_DMA3SAD
	mov	r0, r7
	add	r1, sp, #8
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1ca2:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1ca2
	ldr	r2, [sp, #4]
	ldr	r4, =.L36d0
	ldr	r3, =REG_DMA3SAD
	add	r0, r2, r4
	mov	r1, r7
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1cc0:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1cc0
	ldr	r2, [sp, #4]
	ldr	r4, =.L36d0
	ldr	r3, =REG_DMA3SAD
	add	r1, r2, r4
	add	r0, sp, #8
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1cde:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1cde
	ldr	r5, =.L36d0
	mov	r1, r9
	ldr	r0, [r5, r1]
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1d0e
	ldr	r0, [r5, r6]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d0e
	mov	r2, r9
	ldr	r0, [r5, r2]
	bl	__Func_79374
	ldr	r0, [r5, r6]
	bl	__Func_79358
	b	.L1d34
.L1d0e:
	ldr	r5, =.L36d0
	mov	r3, r9
	ldr	r0, [r5, r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d34
	ldr	r0, [r5, r6]
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1d34
	mov	r4, r9
	ldr	r0, [r5, r4]
	bl	__Func_79358
	ldr	r0, [r5, r6]
	bl	__Func_79374
.L1d34:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0x14
	add	r7, #0x14
	cmp	r2, #3
	bhi	.L1d44
	b	.L1c22
.L1d44:
	ldr	r4, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #1
	mov	r3, #0x14
	add	r11, r2
	add	r9, r3
	add	r4, #0x14
	add	r1, #0x14
	mov	r3, r11
	str	r4, [sp, #4]
	str	r1, [sp]
	cmp	r3, #2
	bhi	.L1d60
	b	.L1c04
.L1d60:
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1be8

.thumb_func_start OvlFunc_1d84
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =.L36d0
	sub	sp, #0x14
	mov	r0, #8
	mov	r2, #0x10
	mov	r8, r1
	add	r2, sp
	mov	r3, #0
	str	r0, [sp, #0xc]
	str	r0, [sp, #4]
	mov	r9, r2
	mov	r10, r3
	mov	r11, r8
.L1daa:
	ldr	r0, [sp, #0xc]
	bl	__Func_92054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x22
	mov	r3, #2
	strb	r3, [r2]
	ldr	r0, [sp, #0xc]
	sub	r0, #8
	str	r0, [sp, #8]
	mov	r1, r10
	ldr	r3, [r6, #8]
	mov	r0, r8
	ldr	r2, [r1, r0]
	asr	r3, #20
	cmp	r3, r2
	bne	.L1de2
	ldr	r1, [sp, #4]
	ldr	r3, [r6, #0x10]
	ldr	r2, [r1, r0]
	asr	r3, #20
	cmp	r3, r2
	bne	.L1de2
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	bne	.L1de2
	b	.L1f90
.L1de2:
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	add	r0, #8
	ldr	r1, =.L3720
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1df6:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1df6
	mov	r0, r6
	ldr	r1, =.L3720
	bl	__Func_120dc
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L1e18
	mov	r7, r6
	add	r7, #0x55
	mov	r3, #3
	strb	r3, [r7]
	b	.L1e1c
.L1e18:
	mov	r7, r6
	add	r7, #0x55
.L1e1c:
	mov	r0, r8
	mov	r3, r10
	mov	r5, r8
	ldr	r1, [r3, r0]
	add	r5, #0xc
	ldr	r3, [sp, #4]
	add	r5, r10
	ldr	r2, [r3, r0]
	mov	r0, #0
	mov	r3, r5
	bl	OvlFunc_101c
	mov	r0, r11
	ldr	r3, [sp, #4]
	ldr	r1, [r0]
	mov	r0, r8
	ldr	r2, [r3, r0]
	mov	r3, r5
	mov	r0, #2
	bl	OvlFunc_101c
	ldrb	r2, [r7]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1ed0
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_12038
	cmp	r0, #0x32
	bne	.L1e82
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r5, r6
	add	r5, #0x23
	ldrb	r3, [r5]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r5]
	mov	r1, #1
	ldr	r0, [sp, #0xc]
	bl	OvlFunc_1074
	ldrb	r3, [r5]
	mov	r1, #1
	orr	r3, r1
	strb	r3, [r5]
	b	.L1ecc
.L1e82:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_12038
	cmp	r0, #0x33
	bne	.L1ec6
	mov	r1, #0
	mov	r0, r6
	bl	OvlFunc_da8
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r2, #0
	str	r2, [r6, #0xc]
	mov	r5, r6
	add	r5, #0x23
	ldrb	r3, [r5]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r5]
	ldr	r0, [sp, #0xc]
	bl	OvlFunc_1174
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x10]
	ldrb	r3, [r5]
	mov	r0, #1
	orr	r3, r0
	strb	r3, [r5]
	b	.L1ecc
.L1ec6:
	mov	r0, r6
	bl	OvlFunc_d78
.L1ecc:
	mov	r1, #0
	strb	r1, [r7]
.L1ed0:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	ldr	r3, =.L36d0+0xc
	asr	r2, #20
	asr	r1, #20
	add	r3, r10
	mov	r0, #0
	bl	OvlFunc_fcc
	ldr	r2, [r6, #0xc]
	cmp	r2, #0
	blt	.L1f2a
	asr	r2, #20
	add	r2, #6
	mov	r0, #0
	mov	r1, #0x1b
	mov	r3, r9
	bl	OvlFunc_fcc
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	asr	r1, #20
	asr	r2, #20
	mov	r0, #0
	mov	r3, r9
	bl	OvlFunc_101c
	mov	r3, r11
	ldrb	r2, [r3, #0xd]
	mov	r0, r9
	ldrb	r1, [r0, #1]
	lsr	r2, #6
	mov	r3, #0x3f
	lsl	r2, #6
	and	r3, r1
	orr	r3, r2
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	strb	r3, [r0, #1]
	asr	r1, #20
	asr	r2, #20
	mov	r0, #2
	mov	r3, r9
	bl	OvlFunc_101c
.L1f2a:
	ldr	r3, [r6, #8]
	mov	r1, r8
	asr	r3, #20
	mov	r2, r10
	str	r3, [r1, r2]
	ldr	r3, [r6, #0xc]
	add	r2, #4
	asr	r3, #20
	str	r3, [r1, r2]
	ldr	r3, [r6, #0x10]
	add	r2, #4
	asr	r3, #20
	str	r3, [r1, r2]
	mov	r5, #0
	mov	r7, #0x10
.L1f48:
	ldr	r3, [sp, #8]
	cmp	r5, r3
	beq	.L1f88
	ldr	r1, =.L36d0
	ldr	r0, [r1, r7]
	str	r1, [sp]
	bl	__Func_79374
	mov	r0, r5
	add	r0, #8
	bl	__Func_92054
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	ldr	r1, [sp]
	cmp	r2, r3
	bne	.L1f88
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L1f88
	ldr	r2, [r6, #0xc]
	ldr	r3, [r0, #0xc]
	cmp	r2, r3
	ble	.L1f88
	ldr	r0, [r1, r7]
	bl	__Func_79358
.L1f88:
	add	r5, #1
	add	r7, #0x14
	cmp	r5, #3
	bls	.L1f48
.L1f90:
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #0xc]
	mov	r0, #0x14
	add	r1, #0x14
	add	r2, #1
	add	r10, r0
	add	r11, r0
	str	r1, [sp, #4]
	str	r2, [sp, #0xc]
	cmp	r2, #0xb
	bhi	.L1fa8
	b	.L1daa
.L1fa8:
	bl	OvlFunc_1be8
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d84

.thumb_func_start OvlFunc_1fd4
	push	{r5, lr}
	bl	__Func_916b0
	bl	OvlFunc_1268
	cmp	r0, #0
	bne	.L2028
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	bl	OvlFunc_3a8
	bl	OvlFunc_1d84
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
.L2028:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fd4

.thumb_func_start OvlFunc_2034
	push	{lr}
	bl	__Func_93fa0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2034

.thumb_func_start OvlFunc_2040
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r1, r0
	ldr	r3, [r1, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r3, [r1, #0xc]
	str	r3, [r0, #4]
	mov	r2, #0x80
	ldr	r3, [r1, #0x10]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r0, #8]
	bl	OvlFunc_350
	cmp	r0, #0
	beq	.L206e
	bl	OvlFunc_1fd4
	b	.L207a
.L206e:
	bl	OvlFunc_1268
	cmp	r0, #0
	bne	.L207a
	bl	__Func_93e28
.L207a:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_2040

.thumb_func_start OvlFunc_2080
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ee0
	ldr	r3, [r3]
	str	r0, [r3, #0x18]
	add	r0, #0x62
	mov	r3, #1
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_2080

.thumb_func_start OvlFunc_209c
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ee0
	ldr	r3, [r3]
	mov	r2, #0
	add	r0, #0x62
	str	r2, [r3, #0x18]
	strb	r2, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_209c

.thumb_func_start OvlFunc_20b8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, [r5, #0x10]
	ldr	r3, [r0, #0x10]
	cmp	r2, r3
	ble	.L20e6
	mov	r1, r5
	add	r1, #0x23
	ldrb	r3, [r1]
	mov	r4, #0xfd
	and	r4, r3
	strb	r4, [r1]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r0, #0xc]
	cmp	r2, r3
	bge	.L20e6
	mov	r2, #2
	mov	r3, r4
	orr	r3, r2
	strb	r3, [r1]
.L20e6:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_20b8

.thumb_func_start OvlFunc_20f0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r6, r0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r3, =OvlFunc_20b8
	ldr	r2, [r5, #8]
	str	r3, [r5, #0x6c]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r1, #0xe
	mov	r0, #0x14
	mov	r3, #1
	bl	__Func_10704
	ldr	r3, =0x1f5
	add	r0, r6, r3
	bl	__Func_79358
	ldr	r1, =.L2d64
	mov	r0, r6
	bl	__Func_9207c
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20f0

.thumb_func_start OvlFunc_2144
	push	{lr}
	mov	r0, #0xb
	bl	OvlFunc_20f0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2144

.thumb_func_start OvlFunc_2150
	push	{lr}
	mov	r0, #0xc
	bl	OvlFunc_20f0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2150

.thumb_func_start OvlFunc_215c
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, =iwram_1f30
	ldr	r2, [r0, #8]
	ldr	r6, [r3]
	ldr	r3, [r5, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2198
	ldr	r2, [r0, #0x10]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2198
	ldr	r0, =0x203
	bl	__Func_79358
	mov	r2, r6
	add	r2, #0x35
	mov	r3, #1
	strb	r3, [r2]
	b	.L219e
.L2198:
	ldr	r0, =0x203
	bl	__Func_79374
.L219e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_215c

.thumb_func_start OvlFunc_21ac
	push	{r5, r6, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r0, [r0, #0x50]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #8
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	ldr	r1, [r6, #0x50]
	ldrb	r3, [r1, #9]
	and	r2, r3
	ldr	r3, =0x6666
	orr	r2, r4
	strb	r2, [r1, #9]
	str	r3, [r6, #0x34]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r6, #8]
	str	r3, [r6, #0x30]
	mov	r0, r6
	ldr	r3, [r6, #0x10]
	lsl	r2, #14
	bl	__Func_d14c
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r3, #0x16
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_21ac

.thumb_func_start OvlFunc_2230
	push	{r5, r6, r7, lr}
	ldr	r2, =iwram_1e40
	ldr	r7, [r2]
	mov	r3, #2
	and	r7, r3
	sub	sp, #0x38
	cmp	r7, #0
	bne	.L22bc
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2250
	mov	r0, #0x88
	bl	__Func_f9080
.L2250:
	add	r6, sp, #0x10
	mov	r3, #0xa
	str	r3, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	ldr	r3, =0x19999
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x14]
	bl	__Func_4458
	ldr	r3, =0xffff000
	and	r3, r0
	strh	r3, [r6, #0x20]
	ldr	r3, =OvlFunc_13b0
	str	r3, [r6, #0x24]
	bl	__Func_4458
	lsl	r5, r0, #2
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xc0
	lsl	r2, #11
	lsl	r5, #16
	add	r5, r2
	neg	r5, r5
	lsr	r3, r5, #31
	add	r5, r3
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r2, #0xa0
	lsl	r2, #11
	lsl	r3, #16
	add	r3, r2
	neg	r3, r3
	str	r3, [sp]
	ldr	r3, =0x14d0000
	asr	r5, #1
	mov	r0, #0xa2
	mov	r1, #0xc0
	mov	r2, #0xe4
	str	r3, [sp, #8]
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	mov	r3, r5
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_13c
.L22bc:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2230

.thumb_func_start OvlFunc_22d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	mov	r5, r0
	sub	sp, #0x38
	mov	r0, #0
	cmp	r7, #0
	bne	.L2368
	add	r2, sp, #0x10
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r10, r2
	bl	__Func_4458
	lsl	r3, r0, #4
	add	r3, r0
	ldr	r2, [r5, #8]
	lsr	r3, #16
	sub	r3, #8
	mov	r8, r2
	lsl	r3, #16
	add	r8, r3
	bl	__Func_4458
	lsl	r3, r0, #4
	add	r3, r0
	ldr	r6, [r5, #0xc]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	bl	__Func_4458
	lsl	r3, r0, #4
	add	r3, r0
	lsr	r3, #16
	ldr	r5, [r5, #0x10]
	sub	r3, #8
	lsl	r3, #16
	add	r5, r3
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_af0
	ldr	r3, =0x90001
	mov	r2, r10
	str	r0, [sp]
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_13c
	mov	r0, #0
.L2368:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_22d8

.thumb_func_start OvlFunc_2384
	push	{r5, lr}
	ldr	r0, =0x203
	sub	sp, #8
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.L2472
	ldr	r0, =0x202
	bl	__Func_79358
	bl	__Func_916b0
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xb8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0xa
	mov	r2, #0x3c
	mov	r1, #0xa
	mov	r0, #0x49
	bl	__Func_10424
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_2230
	bl	__Func_41d8
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2442
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, =OvlFunc_22d8
	mov	r1, #6
	str	r3, [r0, #0x6c]
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0xc
	bl	__Func_92504
	mov	r0, #0xc
	bl	__Func_92054
	mov	r3, #0x12
	mov	r2, #0xd
	str	r5, [r0, #0x6c]
	mov	r1, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x11
	bl	__Func_10704
	ldr	r0, =0x201
	bl	__Func_79374
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_9207c
	b	.L2448
.L2442:
	mov	r0, #0x3c
	bl	__Func_9163c
.L2448:
	ldr	r0, =OvlFunc_2230
	bl	__Func_4278
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0xa
	mov	r2, #0x3c
	mov	r3, #0xa
	bl	__Func_10424
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
.L2472:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2384

.thumb_func_start OvlFunc_2498
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	asr	r1, #20
	asr	r2, #20
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_528
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2498

.thumb_func_start OvlFunc_24cc
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0xff
	str	r3, [sp, #4]
	asr	r1, #20
	mov	r3, #1
	asr	r2, #20
	mov	r0, #2
	bl	OvlFunc_528
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x10
	bne	.L252a
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	bne	.L252a
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x9f
	bl	__Func_f9080
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	ldr	r3, =0xfffe0000
	mov	r0, #0x81
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__Func_79358
.L252a:
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_24cc

.thumb_func_start OvlFunc_253c
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_758
	cmp	r0, #0
	beq	.L2566
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_8ec
	b	.L2572
.L2566:
	bl	OvlFunc_2498
	bl	OvlFunc_3a8
	bl	OvlFunc_24cc
.L2572:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_253c

.thumb_func_start OvlFunc_2580
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L2598
	ldr	r0, =.L33a8
	b	.L25c2
.L2598:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L25a2
	ldr	r0, =.L3438
	b	.L25c2
.L25a2:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L25ac
	ldr	r0, =.L3498
	b	.L25c2
.L25ac:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L25b6
	ldr	r0, =.L351c
	b	.L25c2
.L25b6:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L25c0
	ldr	r0, =.L3618
	b	.L25c2
.L25c0:
	ldr	r0, =.L339c
.L25c2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_2580

.thumb_func_start OvlFunc_25f8
	push	{r5, lr}
	bl	__Func_92054
	mov	r5, r0
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, r5
	mov	r1, #0
	add	r3, #0x55
	strb	r1, [r3]
	mov	r0, r5
	bl	__Func_c528
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25f8

.thumb_func_start OvlFunc_263c
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, =0x1f5
	mov	r5, r0
	add	r0, r6, r3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2680
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	ldr	r3, =OvlFunc_20b8
	ldr	r2, [r5, #8]
	str	r3, [r5, #0x6c]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r1, =.L2d64
	mov	r0, r6
	bl	__Func_9207c
.L2680:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_263c

.thumb_func_start OvlFunc_2694
	push	{lr}
	bl	__Func_92054
	mov	r3, #2
	mov	r1, r0
	add	r0, #0x22
	strb	r3, [r0]
	mov	r3, r1
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r3, =OvlFunc_1aa8
	str	r3, [r1, #0x6c]
	pop	{r0}
	bx	r0
.func_end OvlFunc_2694

.thumb_func_start OvlFunc_26b8
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r6, #8
	mov	r5, r0
.L26c4:
	mov	r0, r6
	bl	__Func_92054
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L26d4
	ldr	r1, =0xffff
	add	r3, r1
.L26d4:
	asr	r2, r3, #16
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L26e0
	ldr	r4, =0xffff
	add	r3, r4
.L26e0:
	asr	r3, #16
	cmp	r2, r3
	bne	.L2720
	ldr	r2, =0xfff80000
	ldr	r1, [r0, #0x10]
	add	r3, r1, r2
	ldr	r2, [r5, #0x10]
	cmp	r2, r3
	bgt	.L2720
	ldr	r4, =0xffe80000
	add	r3, r1, r4
	cmp	r2, r3
	ble	.L2720
	ldr	r2, =0xfff00000
	ldr	r1, [r5, #8]
	add	r3, r1, r2
	ldr	r2, [r0, #8]
	cmp	r3, r2
	bgt	.L2730
	mov	r4, #0x80
	lsl	r4, #13
	add	r3, r1, r4
	cmp	r2, r3
	bge	.L2730
	ldr	r3, [r0, #0x50]
	ldrb	r1, [r3, #9]
	lsl	r1, #28
	lsr	r1, #30
	mov	r0, #0
	bl	__Func_92b08
	b	.L2736
.L2720:
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
.L2730:
	add	r6, #1
	cmp	r6, #0xb
	bls	.L26c4
.L2736:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_26b8

.thumb_func_start OvlFunc_274c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r3, #2
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r1, =ewram_240
	ldrsh	r2, [r1, r2]
	ldr	r3, =0x74
	sub	sp, #8
	cmp	r2, r3
	bne	.L2788
	mov	r0, #8
	bl	OvlFunc_ba4
	mov	r0, #9
	bl	OvlFunc_ba4
	mov	r0, #0xa
	bl	OvlFunc_ba4
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r0, #0xc
	bl	OvlFunc_ba4
	b	.L29fa
.L2788:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L2858
	mov	r3, #0
	mov	r2, #0x40
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0x20
	mov	r0, #0x20
	str	r2, [sp, #4]
	bl	__Func_105d4
	mov	r0, #8
	bl	OvlFunc_ba4
	mov	r0, #9
	bl	OvlFunc_ba4
	mov	r0, #0xa
	bl	OvlFunc_ba4
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r0, #0xc
	bl	OvlFunc_ba4
	mov	r0, #0xd
	bl	OvlFunc_ba4
	mov	r0, #0xe
	bl	OvlFunc_ba4
	mov	r0, #0xf
	bl	OvlFunc_ba4
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L27dc
	b	.L29fa
.L27dc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L27ea
	b	.L29fa
.L27ea:
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4f
	mov	r1, #0x22
	mov	r2, #0x54
	mov	r3, #0x18
	bl	__Func_10424
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x20
	mov	r2, #0x40
	mov	r3, #0
	mov	r0, #0x20
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #9
	bl	OvlFunc_ec8
	mov	r0, #0xa
	bl	OvlFunc_ec8
	mov	r0, #0xb
	bl	OvlFunc_ec8
	mov	r0, #0xc
	bl	OvlFunc_ec8
	mov	r0, #0xd
	bl	OvlFunc_ec8
	mov	r0, #0xe
	bl	OvlFunc_ec8
	mov	r0, #0xf
	bl	OvlFunc_ec8
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #3
	b	.L2918
.L2858:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L2922
	mov	r0, #0x92
	mov	r2, #0xc8
	lsl	r0, #18
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_a0
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2884
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
.L2884:
	mov	r0, #0
	bl	__Func_91494
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x62
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L289c
	bl	OvlFunc_209c
.L289c:
	mov	r0, #8
	bl	OvlFunc_2694
	mov	r0, #9
	bl	OvlFunc_2694
	mov	r0, #0xa
	bl	OvlFunc_2694
	mov	r0, #0xb
	bl	OvlFunc_2694
	mov	r4, #0x80
	ldr	r2, =.L36d0
	mov	r1, #0
	mov	r0, #0
	lsl	r4, #2
.L28be:
	add	r3, r1, r4
	add	r1, #1
	str	r0, [r2]
	str	r0, [r2, #4]
	str	r0, [r2, #8]
	str	r3, [r2, #0x10]
	add	r2, #0x14
	cmp	r1, #3
	bls	.L28be
	bl	OvlFunc_1d84
	mov	r0, #1
	bl	__Func_9163c
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_26b8
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L28f0
	b	.L29fa
.L28f0:
	mov	r5, #8
	b	.L28f6
.L28f4:
	add	r5, #1
.L28f6:
	cmp	r5, #0xb
	bhi	.L29fa
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r2, #0x25
	bne	.L28f4
	ldr	r3, [r0, #0x10]
	asr	r0, r3, #20
	cmp	r0, #9
	bne	.L28f4
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r1, #8
	mov	r0, #0x1b
.L2918:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L29fa
.L2922:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L29fa
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_92950
	mov	r0, #8
	bl	OvlFunc_ba4
	mov	r0, #9
	bl	OvlFunc_ba4
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	bl	OvlFunc_24cc
	mov	r0, #0xb
	bl	OvlFunc_25f8
	mov	r0, #0xc
	bl	OvlFunc_25f8
	mov	r0, #0xd
	bl	OvlFunc_25f8
	mov	r0, #0xb
	bl	OvlFunc_263c
	mov	r0, #0xc
	bl	OvlFunc_263c
	mov	r0, #0xd
	bl	OvlFunc_263c
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	OvlFunc_25f8
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	bne	.L29fa
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, #0xc0
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r5, #0xc
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r3, #0x16
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L29fa:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_274c

	.section .data

	.incbin "overlays/rom_7d0e88/orig.bin", 0x2bf8, (0x2ca0-0x2bf8)
.L2ca0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ca0, (0x2ce0-0x2ca0)
.L2ce0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ce0, (0x2cf8-0x2ce0)
.L2cf8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2cf8, (0x2d58-0x2cf8)
.L2d58:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2d58, (0x2d64-0x2d58)
.L2d64:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2d64, (0x2da8-0x2d64)
.L2da8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2da8, (0x2dd2-0x2da8)
.L2dd2:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dd2, (0x2dfc-0x2dd2)
.L2dfc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dfc, (0x2e26-0x2dfc)
.L2e26:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e26, (0x2e50-0x2e26)
.L2e50:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e50, (0x2e7c-0x2e50)
.L2e7c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e7c, (0x2eac-0x2e7c)
.L2eac:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2eac, (0x2ef4-0x2eac)
.L2ef4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ef4, (0x2f3c-0x2ef4)
.L2f3c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f3c, (0x2f84-0x2f3c)
.L2f84:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f84, (0x2fcc-0x2f84)
.L2fcc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2fcc, (0x3014-0x2fcc)
.L3014:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3014, (0x306c-0x3014)
.L306c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x306c, (0x30e4-0x306c)
.L30e4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x30e4, (0x3174-0x30e4)
.L3174:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3174, (0x3264-0x3174)
.L3264:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3264, (0x32dc-0x3264)
.L32dc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x32dc, (0x339c-0x32dc)
.L339c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x339c, (0x33a8-0x339c)
.L33a8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x33a8, (0x3438-0x33a8)
.L3438:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3438, (0x3498-0x3438)
.L3498:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3498, (0x351c-0x3498)
.L351c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x351c, (0x3618-0x351c)
.L3618:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3618

	.section .bss

	.space	4
.L36d0:
	.space	0x50
.L3720:
	.space	0xc
.L372c:
	.space	0xc
.L3738:
	.space	4
