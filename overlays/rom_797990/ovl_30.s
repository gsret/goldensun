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
	ldr	r2, =.L129c
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
	ldr	r3, =.L129c
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
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	mov	r7, r8
	mov	r5, r6
	add	r7, #8
	add	r5, #8
	mov	r10, r2
	mov	r0, r7
	mov	r2, #0
	mov	r1, r5
	mov	r11, r3
	mov	r9, r2
	bl	OvlFunc_314
	cmp	r0, r10
	blt	.L384
	mov	r3, r11
	cmp	r3, #0
	beq	.L3da
.L384:
	mov	r2, r8
	ldr	r0, [r2, #0x10]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r7]
	sub	r0, r3
	ldr	r3, [r5]
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
	ldrh	r2, [r6, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L3c4
	cmp	r1, r3
	beq	.L3c4
	cmp	r4, r3
	beq	.L3c4
	mov	r3, r11
	cmp	r3, #0
	beq	.L3ea
.L3c4:
	mov	r2, r6
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	mov	r2, #1
	mov	r9, r2
	b	.L3ea
.L3da:
	mov	r3, r6
	add	r3, #0x5b
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #2
	bl	__Func_c300
.L3ea:
	mov	r0, r9
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_350

.thumb_func_start OvlFunc_400
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e8c
	mov	r5, r0
	ldr	r2, [r3]
	mov	r6, r5
	mov	r8, r2
	add	r6, #0x64
	mov	r2, #0x12
	ldr	r7, [r3, #0x30]
	mov	r10, r2
	mov	r3, #0
	ldrh	r2, [r6]
	mov	r9, r3
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L42e
	mov	r0, #0xf
	b	.L430
.L42e:
	mov	r0, #0xe
.L430:
	bl	__Func_92054
	mov	r1, r0
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0
	bl	OvlFunc_350
	cmp	r0, #0
	bne	.L480
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r1, r0
	cmp	r3, #0
	bne	.L464
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L476
.L464:
	mov	r3, #0x1a
	ldrh	r2, [r6]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L476
	mov	r2, #1
	mov	r9, r2
.L476:
	mov	r0, r5
	mov	r2, r10
	mov	r3, r9
	bl	OvlFunc_350
.L480:
	mov	r0, #0
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_400

.thumb_func_start OvlFunc_498
	ldr	r0, =.L1450
	bx	lr
.func_end OvlFunc_498

.thumb_func_start OvlFunc_4a0
	mov	r0, #0
	bx	lr
.func_end OvlFunc_4a0

.thumb_func_start OvlFunc_4a4
	ldr	r0, =.L15a0
	bx	lr
.func_end OvlFunc_4a4

.thumb_func_start OvlFunc_4ac
	ldr	r0, =.L15d8
	bx	lr
.func_end OvlFunc_4ac

.thumb_func_start OvlFunc_4b4
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, r5
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4b4

.thumb_func_start OvlFunc_4d8
	push	{lr}
	bl	__Func_916b0
	mov	r2, #2
	mov	r1, #0
	mov	r0, #8
	bl	__Func_9280c
	ldr	r0, =0x305
	bl	__Func_79358
	ldr	r0, =0x1cab
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d8

.thumb_func_start OvlFunc_50c
	push	{lr}
	ldr	r0, =0x1cae
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r0, #0xb
	bl	OvlFunc_4b4
	pop	{r0}
	bx	r0
.func_end OvlFunc_50c

.thumb_func_start OvlFunc_52c
	push	{lr}
	bl	__Func_916b0
	mov	r2, #2
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_9280c
	ldr	r0, =0x306
	bl	__Func_79358
	ldr	r0, =0x868
	bl	__Func_79358
	ldr	r0, =0x1caf
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_52c

.thumb_func_start OvlFunc_56c
	push	{lr}
	ldr	r0, =0x1cb0
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r0, #0xd
	bl	OvlFunc_4b4
	pop	{r0}
	bx	r0
.func_end OvlFunc_56c

.thumb_func_start OvlFunc_58c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, r0
	mov	r3, #6
	ldrsh	r2, [r5, r3]
	mov	r6, r5
	add	r6, #0x64
	ldrh	r3, [r6]
	mov	r8, r2
	ldr	r2, =2
	orr	r2, r3
	strh	r2, [r6]
	bl	__Func_916b0
	ldr	r7, =0x1cb1
	mov	r0, r7
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L608
	b	.L5e0

	.pool_aligned

.L5e0:
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
.L608:
	add	r0, r7, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, r8
	strh	r2, [r5, #6]
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91750
	mov	r3, #1
	strh	r3, [r6]
	ldr	r0, =0x307
	bl	__Func_79358
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_58c

.thumb_func_start OvlFunc_640
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0xf
	bl	__Func_92054
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #6
	ldrsh	r1, [r5, r2]
	ldr	r3, =2
	ldrh	r2, [r6]
	orr	r3, r2
	strh	r3, [r6]
	mov	r8, r1
	mov	r1, #0
	mov	r10, r1
	bl	__Func_916b0
	ldr	r0, =0x1cb4
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0xf
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, r8
	strh	r2, [r5, #6]
	mov	r0, #1
	b	.L69c

	.pool_aligned

.L69c:
	bl	__Func_30f8
	bl	__Func_91750
	mov	r3, r10
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_640

.thumb_func_start OvlFunc_6b4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1cb5
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L6ee
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L6ee:
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_6b4

.thumb_func_start OvlFunc_710
	push	{lr}
	bl	__Func_916b0
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_9280c
	ldr	r0, =0x305
	bl	__Func_79358
	ldr	r0, =0x1cab
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_710

.thumb_func_start OvlFunc_754
	push	{r5, lr}
	ldr	r0, =0x1cbd
	bl	__Func_92b94
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0xb
	bl	OvlFunc_4b4
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_754

.thumb_func_start OvlFunc_784
	push	{lr}
	bl	__Func_916b0
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0xc
	bl	__Func_9280c
	ldr	r0, =0x306
	bl	__Func_79358
	ldr	r0, =0x868
	bl	__Func_79358
	ldr	r0, =0x1caf
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_784

.thumb_func_start OvlFunc_7d4
	push	{r5, lr}
	ldr	r0, =0x1cbf
	bl	__Func_92b94
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0xd
	bl	OvlFunc_4b4
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7d4

.thumb_func_start OvlFunc_804
	push	{lr}
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__Func_916b0
	ldr	r0, =0x307
	bl	__Func_79338
	cmp	r0, #0
	beq	.L840
	ldr	r0, =0x1cc0
	bl	__Func_92b94
	mov	r0, #0xe
	bl	OvlFunc_4b4
	b	.L84a

	.pool_aligned

.L840:
	bl	OvlFunc_58c
	ldr	r0, =0x307
	bl	__Func_79358
.L84a:
	bl	__Func_91750
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x64
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_804

.thumb_func_start OvlFunc_864
	push	{r5, lr}
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__Func_916b0
	ldr	r0, =0x1cc1
	bl	__Func_92b94
	mov	r0, #0xf
	bl	OvlFunc_4b4
	bl	__Func_91750
	mov	r0, #0xf
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x64
	strh	r5, [r0]
	b	.L8a0

	.pool_aligned

.L8a0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_864

.thumb_func_start OvlFunc_8a8
	push	{r5, lr}
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.L93a
	bl	__Func_916b0
	mov	r0, #0x10
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1cb5
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L912
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L912:
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92f84
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_9207c
	bl	__Func_91750
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_79358
	b	.L95e
.L93a:
	ldr	r0, =0x1cc2
	bl	__Func_92b94
	mov	r0, #0x10
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0x10
	bl	OvlFunc_4b4
	mov	r0, #0x10
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
.L95e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8a8

.thumb_func_start OvlFunc_970
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r8, r2
	mov	r6, r1
	mov	r10, r3
	bl	__Func_92054
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r7, r0
	lsl	r1, #10
	mov	r0, r5
	lsl	r2, #9
	bl	__Func_92064
	mov	r3, #0x80
	lsl	r3, #8
	mov	r2, r10
	str	r3, [r7, #0x48]
	mov	r3, #0
	str	r3, [r7, #0x44]
	str	r2, [r7, #0x28]
	mov	r0, r7
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, r6
	mov	r2, r8
	bl	__Func_92158
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	lsl	r6, #16
	mov	r0, r5
	mov	r1, r6
	mov	r2, r8
	bl	__Func_923e4
	mov	r5, #0x3c
	b	.L9cc
.L9ca:
	sub	r5, #1
.L9cc:
	cmp	r5, #0
	beq	.L9de
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0x2a
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	bne	.L9ca
.L9de:
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c528
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x48]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970

.thumb_func_start OvlFunc_9f8
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x64
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x867
	bl	__Func_79338
	cmp	r0, #0
	bne	.La72
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92560
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc4
	mov	r3, #0xe0
	lsl	r3, #11
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x15
	bl	OvlFunc_970
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xcc
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x68
	bl	__Func_921c4
	mov	r1, #0xcc
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x78
	bl	__Func_921c4
	ldr	r0, =0x867
	bl	__Func_79358
.La72:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_9f8

.thumb_func_start OvlFunc_a80
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r5, r0
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, r6
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9218c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r8
	bl	__Func_91e9c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a80

.thumb_func_start OvlFunc_ac8
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L1740
	mov	r1, #0x38
	mov	r2, #0x13
	bl	__Func_10560
	mov	r0, #0xcc
	mov	r1, #0xa0
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #5
	bl	OvlFunc_a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_ac8

.thumb_func_start OvlFunc_797990_af0
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L1756
	mov	r1, #0x32
	mov	r2, #0x12
	bl	__Func_10560
	mov	r0, #0x9c
	mov	r1, #0x98
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #6
	bl	OvlFunc_a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_797990_af0

.thumb_func_start OvlFunc_b18
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L176c
	mov	r1, #0x2c
	mov	r2, #0x11
	bl	__Func_10560
	mov	r1, #0x90
	lsl	r1, #1
	mov	r0, #0xd8
	mov	r2, #7
	bl	OvlFunc_a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_b18

.thumb_func_start OvlFunc_b40
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_f9080
	ldr	r0, =.L1782
	mov	r1, #0x36
	mov	r2, #0xd
	bl	__Func_10560
	mov	r3, #0x17
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r0, #0xbc
	strb	r3, [r6, #9]
	lsl	r0, #1
	mov	r1, #0xe0
	mov	r2, #8
	bl	OvlFunc_a80
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b40

.thumb_func_start OvlFunc_b9c
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_f9080
	ldr	r0, =.L1798
	mov	r1, #0x31
	mov	r2, #0xa
	bl	__Func_10560
	mov	r3, #0x12
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r0, #0x94
	strb	r3, [r6, #9]
	lsl	r0, #1
	mov	r1, #0xb0
	mov	r2, #9
	bl	OvlFunc_a80
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b9c

.thumb_func_start OvlFunc_bf8
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L17ae
	mov	r1, #0x26
	mov	r2, #6
	bl	__Func_10560
	mov	r0, #0x78
	mov	r1, #0x90
	mov	r2, #0xa
	bl	OvlFunc_a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_bf8

.thumb_func_start OvlFunc_c1c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r0, #0xbc
	mov	r8, r2
	bl	__Func_f9080
	mov	r5, #2
	mov	r0, #0x2a
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0x28
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x28
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	mov	r3, #3
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r6, #0x23
	mov	r0, #0x21
	mov	r1, #0x15
	mov	r2, #2
	mov	r3, #2
	bl	__Func_10704
	ldrb	r2, [r6]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r8
	strb	r3, [r6]
	ldrb	r3, [r2, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r1, #0x88
	mov	r2, r8
	strb	r3, [r2, #9]
	lsl	r1, #1
	mov	r0, #0x40
	mov	r2, #0xb
	bl	OvlFunc_a80
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c1c

.thumb_func_start OvlFunc_cc8
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_f9080
	ldr	r0, =.L17c4
	mov	r1, #0x23
	mov	r2, #9
	bl	__Func_10560
	mov	r3, #4
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
	mov	r0, #0x48
	mov	r1, #0xa0
	mov	r2, #0xc
	bl	OvlFunc_a80
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cc8

.thumb_func_start OvlFunc_d24
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79358
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_d24

.thumb_func_start OvlFunc_d4c
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79374
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x17
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_d4c

.thumb_func_start OvlFunc_d74
	push	{lr}
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #4
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_d74

.thumb_func_start OvlFunc_d84
	push	{lr}
	mov	r0, #0xe7
	bl	__Func_78a08
	bl	__Func_916b0
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0xcc
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0xc4
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #0x12
	bl	__Func_92adc
	ldr	r0, =0x858
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_d84

.thumb_func_start OvlFunc_e30
	push	{lr}
	sub	sp, #8
	mov	r3, #0xd
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x2a
	mov	r2, #0xc
	mov	r3, #0x16
	bl	__Func_10424
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_e30

.thumb_func_start OvlFunc_e60
	push	{lr}
	sub	sp, #8
	mov	r3, #0xd
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x24
	mov	r1, #0x2a
	mov	r2, #0xc
	mov	r3, #0x16
	bl	__Func_10424
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_e60

.thumb_func_start OvlFunc_e90
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1342
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92848
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_924d4
	mov	r0, #0xe7
	bl	__Func_78698
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Leea
	ldr	r0, =0x858
	bl	__Func_79338
	cmp	r0, #0
	bne	.Leea
	ldr	r3, =iwram_1ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.Leea:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_e90

.thumb_func_start OvlFunc_f00
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_1776c
	ldr	r0, =0x29dc
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f00

.thumb_func_start OvlFunc_f28
	ldr	r0, =.L17dc
	bx	lr
.func_end OvlFunc_f28

.thumb_func_start OvlFunc_f30
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf54
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
.Lf54:
	mov	r0, #0x80
	mov	r2, #0xd2
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_a0
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x29
	mov	r2, #8
	mov	r3, #0x2d
	mov	r0, #0x2d
	bl	__Func_10424
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r5, =OvlFunc_400
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xf
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x64
	strh	r6, [r0]
	ldr	r0, =0x858
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lfbe
	mov	r1, #0xd8
	mov	r2, #0xc4
	mov	r0, #0x12
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
.Lfbe:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bgt	.Lfe8
	mov	r0, #0x34
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lfe8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lfe8
	ldr	r0, =0x867
	bl	__Func_79374
.Lfe8:
	ldr	r0, =0x867
	bl	__Func_79338
	cmp	r0, #0
	beq	.L100a
	mov	r0, #0x34
	bl	__Func_79338
	cmp	r0, #0
	bne	.L100a
	mov	r1, #0xcc
	mov	r2, #0xf0
	mov	r0, #0x15
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
.L100a:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0xb
	bne	.L1024
	ldr	r0, =0x12f
	bl	__Func_79374
	ldrh	r2, [r5]
.L1024:
	lsl	r3, r2, #16
	mov	r2, #0xd0
	lsl	r2, #12
	cmp	r3, r2
	bne	.L1036
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_79374
.L1036:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_f30

	.section .data

	.incbin "overlays/rom_797990/orig.bin", 0x11f4, (0x129c-0x11f4)
.L129c:
	.incbin "overlays/rom_797990/orig.bin", 0x129c, (0x1450-0x129c)
.L1450:
	.incbin "overlays/rom_797990/orig.bin", 0x1450, (0x15a0-0x1450)
.L15a0:
	.incbin "overlays/rom_797990/orig.bin", 0x15a0, (0x15d8-0x15a0)
.L15d8:
	.incbin "overlays/rom_797990/orig.bin", 0x15d8, (0x1740-0x15d8)
.L1740:
	.incbin "overlays/rom_797990/orig.bin", 0x1740, (0x1756-0x1740)
.L1756:
	.incbin "overlays/rom_797990/orig.bin", 0x1756, (0x176c-0x1756)
.L176c:
	.incbin "overlays/rom_797990/orig.bin", 0x176c, (0x1782-0x176c)
.L1782:
	.incbin "overlays/rom_797990/orig.bin", 0x1782, (0x1798-0x1782)
.L1798:
	.incbin "overlays/rom_797990/orig.bin", 0x1798, (0x17ae-0x1798)
.L17ae:
	.incbin "overlays/rom_797990/orig.bin", 0x17ae, (0x17c4-0x17ae)
.L17c4:
	.incbin "overlays/rom_797990/orig.bin", 0x17c4, (0x17dc-0x17c4)
.L17dc:
	.incbin "overlays/rom_797990/orig.bin", 0x17dc
