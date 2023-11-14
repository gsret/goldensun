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
	ldr	r2, =.L2814
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
	ldr	r3, =.L2814
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
	ldr	r0, =.L2700
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
	ldr	r2, =.L2700
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
	ldr	r2, =.L2740
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
	ldr	r3, =.L2700
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
	ldr	r3, =.L2740
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L2758
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
	ldr	r4, =.L2700
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
	ldr	r5, =.L2758
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
	ldr	r1, =.L2700
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
	ldr	r0, =.L2758
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
	ldr	r0, =.L2758
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
	ldr	r0, =.L2700
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
	ldr	r2, =.L2700
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
	ldr	r4, =.L2758
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
	ldr	r2, =.L2700
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
	ldr	r4, =.L2758
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
	ldr	r1, =.L2740
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
	ldr	r4, =.L2758
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
	bne	.Lce0
	mov	r3, #5
	str	r3, [r6, #4]
.Lce0:
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
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_d48
	push	{lr}
	mov	r0, #0x76
	bl	__Func_f9080
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_d48

.thumb_func_start OvlFunc_d58
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r1, r0
	ldr	r2, [r1, #0x10]
	asr	r3, r2, #19
	cmp	r3, #0x16
	bgt	.Ld7e
	ldr	r0, [r5, #0x10]
	ldr	r1, [r1, #8]
	ldr	r3, [r5, #8]
	sub	r0, r2, r0
	sub	r1, r3
	bl	__Func_44d0
	strh	r0, [r5, #6]
	b	.Ld90
.Ld7e:
	mov	r1, #0xc0
	ldrh	r3, [r5, #6]
	lsl	r1, #8
	cmp	r3, r1
	beq	.Ld90
	mov	r0, #3
	mov	r2, #0
	bl	__Func_92adc
.Ld90:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_d58

.thumb_func_start OvlFunc_d98
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
	bne	.Le22
	ldr	r3, =.L291c
	ldr	r2, [r3]
	mov	r1, #0x1f
	add	r2, #4
	and	r2, r1
	str	r2, [r3]
	mov	r6, #0
	mov	r7, r5
	b	.Ldd0

	.pool_aligned

.Ldd0:
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
	bhi	.Ldf4
	lsl	r0, r5, #2
	mov	r1, #0xa
	bl	_Func_af0
	sub	r5, r0
.Ldf4:
	mov	r2, #0x6f
	sub	r2, r6
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r2, #1
	add	r2, r3
	ldr	r3, =.L2924
	ldr	r3, [r3]
	lsl	r1, r3, #10
	ldr	r3, =.L2920
	ldr	r3, [r3]
	lsl	r3, #5
	orr	r1, r3
	orr	r5, r1
	add	r6, #1
	strh	r5, [r2]
	cmp	r6, #5
	bls	.Ldd0
	ldr	r3, =.L291c
	ldr	r3, [r3]
	ldr	r2, =0x50000d2
	orr	r3, r1
	strh	r3, [r2]
.Le22:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d98

.thumb_func_start OvlFunc_e3c
	push	{lr}
	ldr	r1, =0
	ldr	r3, =0x50000de
	mov	r2, #0
	b	.Le50

	.pool_aligned

.Le50:
	add	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #6
	bls	.Le50
	pop	{r0}
	bx	r0
.func_end OvlFunc_e3c

.thumb_func_start OvlFunc_e60
	push	{lr}
	bl	OvlFunc_2370
	pop	{r0}
	bx	r0
.func_end OvlFunc_e60

.thumb_func_start OvlFunc_e6c
	push	{lr}
	bl	OvlFunc_1fe8
	pop	{r0}
	bx	r0
.func_end OvlFunc_e6c

.thumb_func_start OvlFunc_e78
	push	{lr}
	bl	OvlFunc_2030
	pop	{r0}
	bx	r0
.func_end OvlFunc_e78

.thumb_func_start OvlFunc_e84
	push	{lr}
	bl	OvlFunc_1ec8
	pop	{r0}
	bx	r0
.func_end OvlFunc_e84

.thumb_func_start OvlFunc_e90
	ldr	r0, =.L2928
	bx	lr
.func_end OvlFunc_e90

.thumb_func_start OvlFunc_e98
	mov	r0, #0
	bx	lr
.func_end OvlFunc_e98

.thumb_func_start OvlFunc_e9c
	ldr	r0, =.L2bf8
	bx	lr
.func_end OvlFunc_e9c

.thumb_func_start OvlFunc_ea4
	ldr	r0, =.L2c58
	bx	lr
.func_end OvlFunc_ea4

.thumb_func_start OvlFunc_eac
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x1632
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_eac

.thumb_func_start OvlFunc_ed0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r3, =OvlFunc_cc0
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
.func_end OvlFunc_ed0

.thumb_func_start OvlFunc_f48
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
.func_end OvlFunc_f48

.thumb_func_start OvlFunc_fac
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_fac

.thumb_func_start OvlFunc_fb8
	push	{lr}
	mov	r0, #0x12
	bl	OvlFunc_ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_fb8

.thumb_func_start OvlFunc_fc4
	push	{lr}
	mov	r0, #0x13
	bl	OvlFunc_ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_fc4

.thumb_func_start OvlFunc_fd0
	ldr	r0, =.L2d60
	bx	lr
.func_end OvlFunc_fd0

.thumb_func_start OvlFunc_fd8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lff2
	ldr	r2, =0xfffff
	add	r3, r2
.Lff2:
	mov	r0, #0
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1004
	ldr	r2, =0xfffff
	add	r3, r2
.L1004:
	asr	r3, #20
	cmp	r5, #0xc
	beq	.L100c
	b	.L111c
.L100c:
	cmp	r3, #0x20
	beq	.L1012
	b	.L111c
.L1012:
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #1
	ldr	r0, =0x10005
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #0
	mov	r8, r3
	add	r7, sp, #0x10
	mov	r10, r3
.L1048:
	mov	r3, #1
	str	r3, [r7]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =.L2f4c
	mov	r0, #0xf6
	str	r3, [r7, #0x1c]
	bl	__Func_f9080
	bl	__Func_4458
	lsl	r0, #4
	lsr	r0, #16
	mov	r6, #0xd0
	sub	r6, r0
	bl	__Func_4458
	mov	r5, #0x8c
	lsl	r0, #4
	lsr	r0, #16
	lsl	r5, #2
	sub	r5, r0
	bl	__Func_4458
	mov	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	lsl	r0, r3, #4
	sub	r0, r3
	mov	r2, #0xf0
	lsl	r2, #14
	lsl	r0, #16
	add	r0, r2
	mov	r1, #0x64
	bl	_Func_af0
	mov	r3, r10
	str	r3, [sp, #4]
	ldr	r3, =0x320001
	lsl	r6, #16
	lsl	r5, #16
	str	r0, [sp]
	str	r3, [sp, #8]
	mov	r2, r5
	mov	r3, #0
	mov	r0, r6
	mov	r1, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #4
	bl	__Func_9163c
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xe
	bls	.L1048
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x875
	bl	__Func_79358
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_d98
	bl	__Func_41d8
	mov	r3, #5
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0x62
	mov	r2, #0xa
	mov	r3, #0x61
	bl	__Func_10424
	mov	r3, #6
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #7
	mov	r2, #0xd
	mov	r0, #0x46
	mov	r1, #0x20
	bl	__Func_10704
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_9163c
	bl	__Func_91750
.L111c:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fd8

.thumb_func_start OvlFunc_1144
	push	{lr}
	mov	r0, #0x3f
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1144

.thumb_func_start OvlFunc_1150
	push	{lr}
	ldr	r0, =0x205
	bl	__Func_79374
	ldr	r1, =.L2820
	mov	r0, #8
	bl	__Func_9207c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1150

.thumb_func_start OvlFunc_116c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.L117e
	ldr	r3, =0xfffff
	add	r5, r3
.L117e:
	asr	r5, #20
	ldr	r0, =0x205
	bl	__Func_79358
	cmp	r5, #7
	bne	.L1194
	ldr	r1, =.L2874
	mov	r0, #8
	bl	__Func_9207c
	b	.L119c
.L1194:
	ldr	r1, =.L28c8
	mov	r0, #8
	bl	__Func_9207c
.L119c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_116c

.thumb_func_start OvlFunc_11b4
	push	{lr}
	bl	__Func_916b0
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0x35
	mov	r1, #0x1f
	bl	__Func_91f90
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x24
	mov	r1, #1
	bl	__Func_91eb0
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_11b4

.thumb_func_start OvlFunc_1208
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	bne	.L12c6
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
	ldr	r3, =OvlFunc_cc0
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
.L12c6:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1208

.thumb_func_start OvlFunc_12e0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =REG_BLDCNT
	mov	r2, #0xfd
	lsl	r2, #6
	sub	sp, #0x44
	strh	r2, [r3]
	ldr	r2, =0x1010
	add	r3, #2
	strh	r2, [r3]
	ldr	r1, =ewram_1000
	mov	r0, #0x15
	bl	OvlFunc_1a3c
	ldr	r0, =0x111
	bl	__Func_79358
	ldr	r2, =ewram_240
	ldr	r3, =0x242
	mov	r4, #0x90
	add	r1, r2, r3
	mov	r3, #0xb
	strh	r3, [r1]
	lsl	r4, #2
	ldr	r3, =0x39
	add	r2, r4
	mov	r0, #0
	strh	r3, [r2]
	bl	__Func_91494
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1338
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_d98
	lsl	r1, #4
	bl	__Func_41d8
	b	.L133c
.L1338:
	bl	OvlFunc_e3c
.L133c:
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	ldr	r3, =ewram_240
	sub	r2, #0x42
	add	r3, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	sub	r3, #1
	cmp	r3, #0x1e
	bls	.L135e
	b	.L1718
.L135e:
	ldr	r2, =.L1368
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1368:
	.word	.L13e4
	.word	.L13f4
	.word	.L144a
	.word	.L144a
	.word	.L144a
	.word	.L144a
	.word	.L1416
	.word	.L1416
	.word	.L1416
	.word	.L1416
	.word	.L1416
	.word	.L1416
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1640
	.word	.L163c
	.word	.L163c
	.word	.L163c
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1648
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1718
	.word	.L1694
	.word	.L170a
.L13e4:
	ldr	r0, =0x872
	bl	__Func_79338
	cmp	r0, #0
	bne	.L13f4
	mov	r0, #0x14
	bl	__Func_91e9c
.L13f4:
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__Func_30f8
	b	.L1718
.L1416:
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1422
	b	.L1718
.L1422:
	mov	r3, #0x14
	mov	r5, #5
	str	r3, [sp]
	mov	r0, #0x54
	mov	r1, #5
	mov	r2, #0xa
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r0, #0x65
	mov	r1, #5
	mov	r2, #0xc
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_10704
	b	.L1718
.L144a:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_d98
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1490
	mov	r3, #5
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x62
	mov	r2, #0xa
	mov	r3, #0x61
	mov	r0, #0x25
	bl	__Func_10424
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #6
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x20
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_10704
.L1490:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	beq	.L14a2
	b	.L1718
.L14a2:
	ldr	r0, =0x251
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L14b0
	b	.L1718
.L14b0:
	ldr	r0, =0x251
	bl	__Func_79358
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
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r0, #0x18
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r3, sp, #0x1c
	mov	r9, r3
	mov	r4, r9
	mov	r3, #7
	mov	r1, #0
	add	r6, sp, #0x10
	str	r3, [r4, #4]
	mov	r10, r0
	mov	r8, r1
	mov	r7, r6
.L1540:
	mov	r2, r8
	lsl	r5, r2, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r3, #0
	str	r0, [r7]
	str	r3, [r7, #4]
	mov	r0, r5
	bl	__Func_2322
	ldr	r2, [r7]
	str	r0, [r7, #8]
	mov	r3, r2
	cmp	r2, #0
	bge	.L1562
	add	r3, r2, #3
.L1562:
	lsr	r5, r0, #31
	add	r5, r0, r5
	asr	r3, #2
	asr	r5, #1
	sub	r3, r2, r3
	sub	r5, r0, r5
	str	r3, [r6]
	str	r5, [r6, #8]
	mov	r4, r10
	ldr	r1, [r4, #0xc]
	ldr	r2, [r4, #0x10]
	ldr	r0, [r4, #8]
	ldr	r4, [r6, #4]
	str	r4, [sp]
	ldr	r4, =0x10001
	str	r4, [sp, #8]
	mov	r4, r9
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.L1540
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
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x48]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	ldr	r0, =0x875
	bl	__Func_79338
	cmp	r0, #0
	bne	.L168e
	mov	r0, r5
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
	ldr	r0, =0x1632
	mov	r1, #0
	mov	r2, #0
	bl	__Func_19aa0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	b	.L168e
.L163c:
	bl	OvlFunc_1208
.L1640:
	mov	r0, #0xaa
	bl	__Func_91ff0
	b	.L1718
.L1648:
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_916b0
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	mov	r4, #0xe0
	ldr	r3, [r3]
	lsl	r4, #1
	mov	r2, #0x80
	add	r3, r4
	lsl	r2, #1
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0x32
	bl	__Func_91e9c
.L168e:
	bl	__Func_91750
	b	.L1718
.L1694:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16f4
	bl	OvlFunc_1730
	b	.L1718

	.pool_aligned

.L16f4:
	mov	r3, #7
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	bl	__Func_10704
	b	.L1718
.L170a:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1718
	bl	OvlFunc_196c
.L1718:
	mov	r0, #0
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_12e0

.thumb_func_start OvlFunc_1730
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0x88
	mov	r2, #0xb8
	str	r5, [r0, #0x18]
	lsl	r1, #16
	mov	r0, #3
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x88
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x88
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__Func_92064
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xb8
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #0xfe
	mov	r8, r3
	ldr	r7, =.L2820
	mov	r3, #0
	mov	r10, r3
	mov	r6, #1
	mov	r5, #1
.L17f6:
	mov	r2, #0xa8
	mov	r1, #0x98
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r1, =.L28c8
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r8
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xb8
	mov	r1, #0x88
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r7
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0xa8
	mov	r1, #0x78
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #5
	bl	__Func_9163c
	ldr	r1, =.L2874
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r8
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xb8
	mov	r1, #0x88
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, r7
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	sub	r5, #1
	orr	r3, r6
	strb	r3, [r0]
	cmp	r5, #0
	bge	.L17f6
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #3
	bl	__Func_92054
	ldr	r3, =OvlFunc_d58
	mov	r1, #1
	str	r3, [r0, #0x6c]
	mov	r0, #0
	bl	__Func_93500
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x84
	mov	r0, #0
	mov	r1, #0x88
	lsl	r2, #1
	bl	__Func_921c4
	bl	__Func_93530
	mov	r3, #7
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	bl	__Func_10704
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1730

.thumb_func_start OvlFunc_196c
	push	{r5, r6, lr}
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1a26
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0x88
	mov	r2, #0x90
	str	r5, [r0, #0x18]
	lsl	r1, #16
	mov	r0, #3
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #3
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r5, =iwram_1ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x48
	mov	r1, #0x88
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #3
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_923e4
	ldr	r0, =0x872
	bl	__Func_79358
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__Func_91750
.L1a26:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_196c

.thumb_func_start OvlFunc_1a3c
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
	bne	.L1a7a
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
	b	.L1bb6
.L1a7a:
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
	bge	.L1a96
	ldr	r0, =0xfffff
	add	r3, r4, r0
.L1a96:
	ldr	r1, [r7, #8]
	asr	r3, #20
	lsl	r2, r3, #7
	mov	r3, r1
	cmp	r1, #0
	bge	.L1aa6
	ldr	r0, =0xfffff
	add	r3, r1, r0
.L1aa6:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r2, =ewram_10000
	lsl	r3, #2
	mov	r0, r8
	add	r2, r3
	ldr	r3, [r0]
	mov	r10, r2
	cmp	r3, #0
	beq	.L1b20
	ldr	r3, [r0, #0x14]
	cmp	r3, #0
	beq	.L1b20
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r0, #0x1a
	mov	r3, r4
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1b26
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L27e8
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
	beq	.L1b1a
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
.L1b1a:
	mov	r3, r8
	str	r5, [r3, #0x14]
	b	.L1b26
.L1b20:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x14]
.L1b26:
	mov	r2, r10
	ldrb	r3, [r2, #2]
	cmp	r3, r9
	bne	.L1bb0
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	beq	.L1bb0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1bb6
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L27d0
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
	beq	.L1b82
	mov	r0, r6
	mov	r1, #6
	bl	__Func_ba30
	mov	r2, r6
	ldr	r3, .L1b88	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L1b82:
	mov	r2, r8
	str	r5, [r2, #0x18]
	b	.L1bb6

	.align	2, 0
.L1b88:
	.word	0
	.pool

.L1bb0:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x18]
.L1bb6:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a3c

.thumb_func_start OvlFunc_1bc8
	push	{r5, r6, r7, lr}
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x18
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1c14
	ldr	r1, =.L27b8
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
	beq	.L1c14
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
.L1c14:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bc8

.thumb_func_start OvlFunc_1c20
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
	ble	.L1c3c
	mov	r0, #0
	b	.L1c5a
.L1c3c:
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
.L1c5a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1c20

.thumb_func_start OvlFunc_1c60
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0x10
	ble	.L1c78
	mov	r0, #0
	b	.L1c84
.L1c78:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #1
.L1c84:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1c60

.thumb_func_start OvlFunc_1c88
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0x10
	ble	.L1ca0
	mov	r0, #0
	b	.L1cae
.L1ca0:
	mov	r2, #0x80
	lsl	r3, #11
	lsl	r2, #9
	add	r3, r2
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #1
.L1cae:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1c88

.thumb_func_start OvlFunc_1cb4
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
	bge	.L1cf4
	ldr	r3, =0xffff
	add	r0, r3
.L1cf4:
	ldr	r3, [r6, #0x10]
	asr	r0, #16
	mov	r2, r9
	mov	r10, r0
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L1d06
	ldr	r3, =0xffff
	add	r0, r3
.L1d06:
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
	bge	.L1d5a
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
.L1d5a:
	mov	r1, r7
	cmp	r7, #0
	bge	.L1d62
	add	r1, r7, #7
.L1d62:
	ldr	r3, [r6, #0x30]
	asr	r5, r1, #3
	cmp	r5, r3
	ble	.L1d6c
	mov	r5, r3
.L1d6c:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r7, r2
	bge	.L1d7e
	mov	r3, r11
	mov	r2, r9
	str	r3, [r6, #8]
	str	r2, [r6, #0x10]
	b	.L1dba
.L1d7e:
	cmp	r7, r5
	ble	.L1dae
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
.L1dae:
	ldr	r3, [r6, #8]
	add	r3, r10
	str	r3, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r3, r8
	str	r3, [r6, #0x10]
.L1dba:
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
.func_end OvlFunc_1cb4

.thumb_func_start OvlFunc_1df8
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
	beq	.L1e5c
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L27c4
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
	beq	.L1e5c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_ba30
	ldr	r3, .L1e80	@ 0
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
.L1e5c:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L1eb6
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L27c4
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	mov	r2, #0
	b	.L1e90

	.align	2, 0
.L1e80:
	.word	0
	.pool

.L1e90:
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
	beq	.L1eb6
	mov	r0, r6
	mov	r1, #1
	bl	__Func_ba30
	mov	r2, r6
	ldr	r3, =0
	add	r2, #0x26
	strb	r3, [r2]
.L1eb6:
	mov	r0, #0x82
	bl	__Func_f9080
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1df8

.thumb_func_start OvlFunc_1ec8
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
	bhi	.L1fc0
	bl	__Func_916b0
	mov	r2, r8
	ldr	r6, [r2, #0x14]
	cmp	r6, #0
	bne	.L1f68
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
	beq	.L1f64
	ldr	r3, [r7, #0x14]
	ldr	r4, [r5, #0x50]
	str	r3, [r5, #0x14]
	ldr	r1, =.L27e8
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
	beq	.L1f56
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
.L1f56:
	mov	r3, r5
	add	r3, #0x54
	mov	r1, r8
	strb	r6, [r3]
	str	r5, [r1, #0x14]
	mov	r6, r5
	b	.L1f68
.L1f64:
	mov	r2, r8
	ldr	r6, [r2, #0x14]
.L1f68:
	mov	r3, r8
	ldr	r5, [r3]
	cmp	r5, #2
	bgt	.L1f9a
	mov	r7, r6
	mov	r0, #1
	mov	r1, #5
	add	r7, #0x54
	mov	r9, r0
	mov	r10, r1
.L1f7c:
	bl	OvlFunc_1df8
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
	ble	.L1f7c
.L1f9a:
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
.L1fc0:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ec8

.thumb_func_start OvlFunc_1fe8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1edc
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L201e
	mov	r7, #0
	str	r7, [r6]
	ldr	r0, =0x161
	bl	__Func_79374
	ldr	r5, [r6, #0x14]
	cmp	r5, #0
	beq	.L201e
	mov	r3, r5
	add	r3, #0x64
	strh	r7, [r3]
	ldr	r1, =.L27dc
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	str	r7, [r6, #0x14]
.L201e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fe8

.thumb_func_start OvlFunc_2030
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
	ldr	r1, =.L27f4
	and	r3, r2
	lsl	r3, #1
	ldrh	r6, [r1, r3]
	ldrsh	r3, [r1, r3]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.L2086
	b	.L2356
.L2086:
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
	bge	.L20b4
	ldr	r3, =0x17ffff
	add	r2, r0, r3
.L20b4:
	asr	r3, r2, #20
	lsl	r2, r3, #7
	mov	r3, r5
	cmp	r3, #0
	bge	.L20c2
	ldr	r0, =0x17ffff
	add	r3, r4, r0
.L20c2:
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
	bge	.L20e4
	ldr	r0, =0xfffff
	add	r3, r0
.L20e4:
	asr	r3, #20
	mov	r1, r11
	lsl	r2, r3, #7
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L20f4
	ldr	r0, =0xfffff
	add	r3, r0
.L20f4:
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
	beq	.L211a
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, #2]
	cmp	r3, r1
	bne	.L211a
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L211a
	b	.L2356
.L211a:
	bl	__Func_916b0
	mov	r0, r7
	add	r1, sp, #0x10
	bl	__Func_120dc
	mov	r10, r0
	cmp	r0, #0
	beq	.L212e
	b	.L2356
.L212e:
	mov	r1, r8
	ldr	r5, [r1, #0x18]
	cmp	r5, #0
	beq	.L2154
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
	ldr	r1, =.L27dc
	mov	r0, r5
	bl	__Func_c2d8
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, r10
	mov	r0, r8
	str	r3, [r0, #0x18]
.L2154:
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L2234
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L2234
	ldr	r6, [r0, #0x14]
	mov	r0, #0x1a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L21d4
	ldr	r1, [r5, #0x50]
	ldr	r3, [r6, #0x14]
	mov	r9, r1
	str	r3, [r5, #0x14]
	ldr	r1, =.L27d0
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
	beq	.L21d0
	mov	r0, r9
	mov	r1, #6
	bl	__Func_ba30
	mov	r2, r9
	ldr	r3, .L21f4	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L21d0:
	mov	r2, r8
	str	r5, [r2, #0x18]
.L21d4:
	mov	r0, r8
	ldr	r3, [r0]
	sub	r5, r3, #1
	str	r5, [r0]
	cmp	r5, #0
	bne	.L2224
	ldr	r0, [r0, #0x14]
	bl	__Func_c0f4
	mov	r1, r8
	str	r5, [r1, #0x14]
	ldr	r0, =0x161
	bl	__Func_79374
	b	.L2234

	.align	2, 0
.L21f4:
	.word	0
	.pool

.L2224:
	mov	r2, r8
	ldr	r0, [r2, #0x14]
	cmp	r0, #0
	beq	.L2234
	mov	r1, #6
	sub	r1, r5
	bl	__Func_c300
.L2234:
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
	beq	.L22aa
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c528
	b	.L22b0
.L22aa:
	mov	r0, #0xd7
	bl	__Func_f9080
.L22b0:
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
	bne	.L232a
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.L232a
	mov	r1, #0x12
	mov	r0, r7
	bl	__Func_c300
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r1, #0xf
	ldr	r6, =iwram_1c94
	mov	r5, #0
	mov	r10, r1
	b	.L22f0
.L22e8:
	mov	r0, #1
	bl	__Func_30f8
	add	r5, #1
.L22f0:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.L2300
	mov	r0, r7
	bl	OvlFunc_1bc8
.L2300:
	cmp	r5, #0x1f
	ble	.L22e8
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L22e8
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
.L232a:
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
.L2356:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2030

.thumb_func_start OvlFunc_2370
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
	beq	.L2396
	sub	r3, #1
	b	.L23a8
.L2396:
	bl	OvlFunc_1bc8
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, #0xa
.L23a8:
	str	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2370

.thumb_func_start OvlFunc_23b8
	push	{r5, lr}
	mov	r0, #0x23
	mov	r1, #4
	bl	__Func_48f4
	cmp	r0, #0
	beq	.L23d6
	ldr	r5, [r0]
	ldr	r0, [r5, #0x14]
	cmp	r0, #0
	beq	.L23d6
	bl	__Func_c0f4
	mov	r3, #0
	str	r3, [r5, #0x14]
.L23d6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_23b8

	.section .data

	.incbin "overlays/rom_7aa430/orig.bin", 0x2658, (0x2700-0x2658)
.L2700:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2700, (0x2740-0x2700)
.L2740:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2740, (0x2758-0x2740)
.L2758:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2758, (0x27b8-0x2758)
.L27b8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27b8, (0x27c4-0x27b8)
.L27c4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27c4, (0x27d0-0x27c4)
.L27d0:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27d0, (0x27dc-0x27d0)
.L27dc:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27dc, (0x27e8-0x27dc)
.L27e8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27e8, (0x27f4-0x27e8)
.L27f4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27f4, (0x2814-0x27f4)
.L2814:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2814, (0x2820-0x2814)
.L2820:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2820, (0x2874-0x2820)
.L2874:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2874, (0x28c8-0x2874)
.L28c8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x28c8, (0x291c-0x28c8)
.L291c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x291c, (0x2920-0x291c)
.L2920:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2920, (0x2924-0x2920)
.L2924:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2924, (0x2928-0x2924)
.L2928:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2928, (0x2bf8-0x2928)
.L2bf8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2bf8, (0x2c58-0x2bf8)
.L2c58:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2c58, (0x2d60-0x2c58)
.L2d60:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2d60, (0x2f4c-0x2d60)
.L2f4c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2f4c
