	.include "macros.inc"

.thumb_func_start OvlFunc_30
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
.func_end OvlFunc_30

.thumb_func_start OvlFunc_6c
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
.L80:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r7, r3
	bne	.Lae
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bge	.L92
	add	r3, r6
.L92:
	asr	r2, r3, #16
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L9c
	add	r3, r6
.L9c:
	asr	r3, #16
	cmp	r2, r3
	bne	.Lae
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.Lb6
.Lae:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L80
	mov	r0, #0
.Lb6:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_6c

.thumb_func_start OvlFunc_c4
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
	ldr	r0, =.L2ef8
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
	bl	OvlFunc_6c
	mov	r6, r0
	cmp	r6, #0
	bne	.L114
	b	.L226
.L114:
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
	bl	OvlFunc_6c
	cmp	r0, #0
	beq	.L14a
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L226
.L14a:
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
	bl	OvlFunc_6c
	cmp	r0, #0
	beq	.L176
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L226
.L176:
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
	bgt	.L226
	mov	r3, r6
	add	r3, #0x62
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #0
	bne	.L226
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
.L226:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c4

.thumb_func_start OvlFunc_244
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
	beq	.L298
	cmp	r0, #2
	bhi	.L26e
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r2, r3]
	b	.L270
.L26e:
	ldr	r0, =ewram_10000
.L270:
	lsl	r3, r1, #7
	add	r3, r6, r3
	lsl	r3, #2
	mov	r1, #0
	add	r0, r3
	cmp	r1, r12
	bcs	.L298
.L27e:
	lsl	r3, r1, #9
	mov	r2, #0
	add	r3, r0, r3
	cmp	r2, r4
	bcs	.L292
.L288:
	add	r2, #1
	strb	r5, [r3, #2]
	add	r3, #4
	cmp	r2, r4
	bcc	.L288
.L292:
	add	r1, #1
	cmp	r1, r12
	bcc	.L27e
.L298:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_244

.thumb_func_start OvlFunc_2a8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldrh	r3, [r5, #6]
	ldr	r2, =.L2ef8
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
	bl	OvlFunc_6c
	cmp	r0, #0
	beq	.L302
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r2, =.L2f38
	mov	r1, #0
.L2e8:
	ldmia	r2!, {r3}
	cmp	r0, r3
	beq	.L336
	add	r1, #1
	cmp	r1, #5
	bls	.L2e8
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
.L302:
	ldr	r3, =.L2ef8
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
	ble	.L336
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
.L336:
	mov	r0, #0
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_2a8

.thumb_func_start OvlFunc_34c
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
.L37e:
	mov	r3, r11
	ldr	r3, [r3]
	mov	r10, r3
	ldr	r3, [r3, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =.L2f38
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L2f50
	str	r3, [sp]
	mov	r8, r4
.L398:
	ldr	r1, [sp]
	ldmia	r1!, {r3}
	ldr	r2, [sp, #4]
	mov	r4, r1
	str	r4, [sp]
	cmp	r2, r3
	bne	.L436
	ldr	r4, [sp, #0xc]
	mov	r3, r8
	str	r3, [r4]
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r4, =.L2ef8
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
	bgt	.L436
	cmp	r7, r1
	bge	.L436
	cmp	r4, r5
	bgt	.L436
	cmp	r5, r2
	bge	.L436
	mov	r3, #1
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L424
	mov	r2, r14
	asr	r3, r2, #20
	cmp	r6, r3
	beq	.L436
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #0x10]
	mov	r0, r10
	str	r3, [r4]
	b	.L452
.L424:
	mov	r1, r12
	asr	r3, r1, #20
	cmp	r4, r3
	beq	.L436
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x10]
	mov	r0, r10
	str	r2, [r3]
	b	.L452
.L436:
	mov	r4, #1
	add	r8, r4
	mov	r1, r8
	add	r0, #0x10
	cmp	r1, #5
	bls	.L398
	ldr	r3, [sp, #8]
	mov	r2, #4
	add	r3, #1
	add	r11, r2
	str	r3, [sp, #8]
	cmp	r3, #0x41
	bls	.L37e
	mov	r0, #0
.L452:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_34c

.thumb_func_start OvlFunc_474
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
	bl	OvlFunc_34c
	mov	r10, r0
	cmp	r0, #0
	bne	.L49e
	mov	r0, #0
	b	.L5e8
.L49e:
	mov	r0, r10
	add	r0, #0x22
	mov	r3, #2
	str	r0, [sp, #4]
	strb	r3, [r0]
	ldr	r3, [r6]
	mov	r1, #0
	str	r1, [sp, #0xc]
	ldr	r5, =.L2f50
	lsl	r1, r3, #4
	add	r3, r1, #4
	ldr	r2, [r5, r3]
	cmp	r2, #0
	bge	.L4bc
	neg	r2, r2
.L4bc:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r5, r3]
	cmp	r3, #0
	bge	.L4c8
	neg	r3, r3
.L4c8:
	add	r3, r2, r3
	asr	r3, #4
	str	r3, [sp, #8]
	ldr	r2, [r5, r1]
	cmp	r2, #0
	bge	.L4d6
	neg	r2, r2
.L4d6:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r5, r3]
	cmp	r3, #0
	bge	.L4e2
	neg	r3, r3
.L4e2:
	add	r3, r2, r3
	asr	r3, #4
	mov	r9, r3
	ldr	r3, [sp, #0x10]
	ldr	r1, =.L2ef8
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
.L520:
	ldr	r3, [r6]
	ldr	r0, =.L2f50
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
	bge	.L586
.L53c:
	ldr	r3, [r6]
	ldr	r0, =.L2f50
	lsl	r3, #4
	ldr	r2, [r0, r3]
	mov	r1, r8
	ldr	r3, [r1]
	lsl	r2, #16
	add	r3, r2
	mov	r5, #0
	str	r3, [r6, #8]
	cmp	r5, r9
	bge	.L574
.L554:
	mov	r1, r4
	mov	r0, r10
	str	r4, [sp]
	bl	__Func_120dc
	ldr	r4, [sp]
	cmp	r0, #2
	beq	.L5b0
	ldr	r3, [r4]
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	add	r5, #1
	str	r3, [r4]
	cmp	r5, r9
	blt	.L554
.L574:
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	lsl	r0, #13
	ldr	r1, [sp, #8]
	add	r3, r0
	add	r7, #1
	str	r3, [r6, #0x10]
	cmp	r7, r1
	blt	.L53c
.L586:
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #0x10]
	add	r2, #1
	str	r2, [sp, #0xc]
	ldr	r0, =.L2ef8
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
	b	.L520
.L5b0:
	ldr	r2, [sp, #4]
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, [sp, #0xc]
	mov	r0, #0
	cmp	r3, #0
	beq	.L5e8
	ldr	r3, [sp, #0x10]
	ldr	r2, =.L2ef8
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
.L5e8:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_474

.thumb_func_start OvlFunc_608
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
	ldr	r4, =.L2f50
	lsl	r1, r3, #4
	add	r3, r1, #4
	ldr	r2, [r4, r3]
	mov	r7, r0
	cmp	r2, #0
	bge	.L64c
	neg	r2, r2
.L64c:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.L658
	neg	r3, r3
.L658:
	add	r3, r2, r3
	asr	r3, #4
	str	r3, [sp, #8]
	ldr	r2, [r4, r1]
	cmp	r2, #0
	bge	.L666
	neg	r2, r2
.L666:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.L672
	neg	r3, r3
.L672:
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
	bl	OvlFunc_244
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
	bge	.L6e8
	ldr	r0, =0x1ffff
	add	r1, r0
.L6e8:
	mov	r4, r11
	ldr	r2, [sp, #0x58]
	ldr	r3, [r4, #8]
	sub	r2, r3
	asr	r1, #17
	cmp	r2, #0
	bge	.L6fa
	ldr	r0, =0x1ffff
	add	r2, r0
.L6fa:
	asr	r2, #17
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =OvlFunc_2a8
	str	r3, [r0, #0x6c]
	mov	r0, #4
	bl	__Func_9163c
	mov	r3, r8
	sub	r3, #6
	cmp	r3, #7
	bhi	.L724
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
	b	.L72c
.L724:
	mov	r0, r7
	mov	r1, #2
	bl	__Func_c300
.L72c:
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
	ldr	r2, =.L2ef8
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
	beq	.L784
	bl	_call_via_r3
.L784:
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
	ldr	r4, =.L2f50
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
	bl	OvlFunc_244
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #0x50]
	ldr	r2, [sp, #0x58]
	str	r3, [sp]
	mov	r0, #2
	mov	r3, r9
	str	r5, [sp, #4]
	bl	OvlFunc_244
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
	bl	OvlFunc_244
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
.func_end OvlFunc_608

.thumb_func_start OvlFunc_8c0
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
	ldr	r1, =.L2f38
	mov	r5, #0
	ldr	r3, [r1, r5]
	cmp	r2, r3
	bne	.L8ea
	add	r7, sp, #8
	b	.L90c
.L8ea:
	add	r7, sp, #8
	mov	r12, r7
	mov	r6, #7
	mov	r4, r1
.L8f2:
	mov	r3, r12
	add	r5, #1
	str	r6, [r3]
	cmp	r5, #5
	bhi	.L90e
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	add	r4, #4
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, [r4]
	cmp	r2, r3
	bne	.L8f2
.L90c:
	str	r5, [r7]
.L90e:
	ldr	r2, [r7]
	cmp	r2, #6
	bls	.L918
	mov	r0, #0
	b	.L9c2
.L918:
	ldr	r3, [r0, #8]
	str	r3, [r7, #8]
	mov	r12, r3
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #0xc]
	ldr	r0, [r0, #0x10]
	lsl	r1, r2, #4
	str	r0, [r7, #0x10]
	ldr	r4, =.L2f50
	add	r5, r1, #4
	ldr	r2, [r4, r5]
	mov	r14, r0
	cmp	r2, #0
	bge	.L936
	neg	r2, r2
.L936:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.L942
	neg	r3, r3
.L942:
	add	r3, r2, r3
	ldr	r0, [r4, r1]
	asr	r3, #4
	mov	r8, r3
	mov	r6, r0
	cmp	r0, #0
	bge	.L952
	neg	r6, r0
.L952:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.L95e
	neg	r3, r3
.L95e:
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
	bl	OvlFunc_244
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r0, #2
	str	r3, [sp]
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_244
	mov	r0, #1
.L9c2:
	add	sp, #0x20
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_8c0

.thumb_func_start OvlFunc_9dc
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
.func_end OvlFunc_9dc

.thumb_func_start OvlFunc_9f4
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
	beq	.La42
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
	b	.La44
.La42:
	mov	r0, #0
.La44:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_9f4

.thumb_func_start OvlFunc_a4c
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
	beq	.Laa6
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
	b	.Laa8
.Laa6:
	mov	r0, #0
.Laa8:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_a4c

.thumb_func_start OvlFunc_ab0
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
.func_end OvlFunc_ab0

.thumb_func_start OvlFunc_ae8
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
	beq	.Lb26
	cmp	r7, #0
	beq	.Lb26
	mov	r3, #0x18
	ldrsh	r0, [r7, r3]
	mov	r2, r6
	b	.Lb2a
.Lb26:
	mov	r2, r6
	mov	r0, #0xde
.Lb2a:
	mov	r1, r5
	mov	r3, r8
	bl	__Func_c150
	mov	r6, r0
	cmp	r6, #0
	bne	.Lb3a
	b	.Lca2
.Lb3a:
	ldr	r1, [r6, #0x50]
	mov	r8, r1
	mov	r1, r10
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	mov	r0, r6
	bl	__Func_c300
	mov	r3, r10
	ldr	r2, =.L3058
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
	ldr	r3, =OvlFunc_ab0
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
	beq	.Lca2
	cmp	r7, #0
	beq	.Lca2
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.Lbc8
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	__Func_929d8
.Lbc8:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.Lbf4
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
.Lbf4:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r10
	and	r2, r3
	cmp	r2, #0
	beq	.Lc08
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.Lc08:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lc52
	ldr	r3, =.L3058
	mov	r1, r11
	ldr	r5, [r3, r1]
	cmp	r2, #0
	beq	.Lc36
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
	b	.Lc4c
.Lc36:
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
.Lc4c:
	bl	_Func_af0
	str	r0, [r6, #0x34]
.Lc52:
	mov	r3, #0x80
	lsl	r3, #14
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lc6e
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	ldr	r1, [r7, #0x1c]
	mov	r0, r6
	bl	__Func_c2d8
.Lc6e:
	mov	r3, #0x80
	lsl	r3, #15
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.Lc80
	ldrh	r3, [r7, #0x20]
	mov	r1, r8
	strh	r3, [r1, #0x1e]
.Lc80:
	mov	r3, #0x80
	lsl	r3, #16
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.Lc92
	ldrh	r3, [r7, #0x22]
	ldr	r1, [sp]
	strh	r3, [r1]
.Lc92:
	mov	r3, #0x80
	lsl	r3, #17
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.Lca2
	ldr	r3, [r7, #0x24]
	str	r3, [r6, #0x6c]
.Lca2:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ae8

.thumb_func_start OvlFunc_cc0
	push	{lr}
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_cd0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x55
	ldrb	r3, [r6]
	mov	r1, r7
	mov	r8, r3
	bl	__Func_120dc
	cmp	r0, #0
	bne	.Ld5e
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
	ldrb	r2, [r6]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r6]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0xa
	ldrsh	r2, [r7, r3]
	mov	r3, #2
	ldrsh	r1, [r7, r3]
	mov	r0, #0
	bl	__Func_92158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c528
	mov	r3, r8
	strb	r3, [r6]
	bl	__Func_91750
	mov	r0, #1
	b	.Ld60
.Ld5e:
	mov	r0, #0
.Ld60:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_cd0

.thumb_func_start OvlFunc_d6c
	push	{lr}
	mov	r3, r0
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	__Func_929d8
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_d6c

.thumb_func_start OvlFunc_d80
	push	{lr}
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_d80

.thumb_func_start OvlFunc_d90
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r10, r2
	mov	r9, r3
	mov	r8, r1
	bl	__Func_92054
	mov	r1, #1
	mov	r5, r0
	mov	r0, r6
	bl	__Func_92b08
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r0, r6
	lsl	r1, #10
	bl	__Func_92064
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r3, r9
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x48]
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r6
	mov	r1, r8
	mov	r2, r10
	bl	__Func_92158
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	mov	r3, r10
	lsl	r3, #16
	mov	r10, r3
	mov	r0, r6
	mov	r1, r8
	mov	r2, r10
	bl	__Func_923e4
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c528
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x48]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d90

.thumb_func_start OvlFunc_e18
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x44
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0xbc
	bl	__Func_f9080
	add	r1, sp, #0x10
	mov	r3, #1
	mov	r2, #0
	str	r3, [r1]
	mov	r9, r1
	mov	r8, r2
	add	r7, sp, #0x38
.Le3e:
	mov	r3, r8
	lsl	r5, r3, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r3, #0
	str	r3, [r7, #4]
	str	r0, [r7]
	mov	r0, r5
	bl	__Func_2322
	ldr	r5, [r7]
	mov	r6, r0
	mov	r1, #3
	mov	r0, r5
	str	r6, [r7, #8]
	bl	_Func_af0
	add	r5, r0
	str	r5, [r7]
	mov	r1, r10
	ldr	r2, [r1, #0x10]
	ldr	r0, [r1, #8]
	ldr	r3, [r7, #4]
	ldr	r1, =0x1999
	add	r3, r1
	str	r3, [sp]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [sp, #8]
	mov	r1, #0x80
	mov	r3, r9
	str	r3, [sp, #0xc]
	lsl	r1, #13
	mov	r3, r5
	str	r6, [sp, #4]
	bl	OvlFunc_ae8
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.Le3e
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e18

.thumb_func_start OvlFunc_ea8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r1, #1
	mov	r0, r5
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	bl	OvlFunc_e18
	mov	r0, r5
	mov	r1, r6
	bl	__Func_92950
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ea8

.thumb_func_start OvlFunc_ee0
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lef8
	ldr	r0, =.L30f4
	b	.Lf0e
.Lef8:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lf02
	ldr	r0, =.L31e4
	b	.Lf0e
.Lf02:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lf0c
	ldr	r0, =.L3334
	b	.Lf0e
.Lf0c:
	ldr	r0, =.L34b4
.Lf0e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_ee0

.thumb_func_start OvlFunc_f34
	mov	r0, #0
	bx	lr
.func_end OvlFunc_f34

.thumb_func_start OvlFunc_f38
	ldr	r0, =.L35bc
	bx	lr
.func_end OvlFunc_f38

.thumb_func_start OvlFunc_f40
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lf58
	ldr	r0, =.L36a0
	b	.Lf6e
.Lf58:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lf62
	ldr	r0, =.L3790
	b	.Lf6e
.Lf62:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lf6c
	ldr	r0, =.L38b0
	b	.Lf6e
.Lf6c:
	ldr	r0, =.L3a30
.Lf6e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_f40

.thumb_func_start OvlFunc_f94
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_474
	cmp	r0, #0
	beq	.L1030
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_608
	ldr	r3, [r5, #4]
	cmp	r3, #9
	bne	.L1030
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x1a
	bne	.L1030
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #7
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #9
	bl	__Func_9228c
	mov	r0, #0x2d
	bl	__Func_9163c
	mov	r1, #8
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r1, #1
	mov	r0, #9
	bl	__Func_92b08
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x19
	mov	r3, #0x1f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x1b
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
.L1030:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f94

.thumb_func_start OvlFunc_103c
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r1, =0xfff00000
	ldr	r3, [r0, #8]
	mov	r4, #0x80
	lsl	r4, #12
	and	r3, r1
	mov	r2, sp
	add	r3, r4
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	and	r3, r1
	ldr	r1, =0xffe80000
	add	r3, r1
	str	r3, [r2, #8]
	mov	r0, r2
	bl	OvlFunc_cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_103c

.thumb_func_start OvlFunc_1078
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r1, [r7]
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	mov	r8, r1
	mov	r1, #0x80
	and	r3, r2
	lsl	r1, #12
	mov	r0, sp
	add	r3, r1
	str	r3, [r0]
	ldr	r3, [r6, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r2
	mov	r2, #0xa0
	lsl	r2, #14
	add	r3, r2
	str	r3, [r0, #8]
	bl	OvlFunc_cd0
	cmp	r0, #0
	beq	.L1118
	bl	__Func_916b0
	mov	r3, #0
	mov	r1, #7
	strb	r3, [r7]
	mov	r0, #9
	bl	__Func_924d4
	ldr	r5, =0xffff0000
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #2
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #9
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #4
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r3, r8
	strb	r3, [r7]
	bl	__Func_91750
.L1118:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1078

.thumb_func_start OvlFunc_112c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x17e6
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_112c

.thumb_func_start OvlFunc_1150
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #0x10
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_ea8
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r0, #0xa
	mov	r1, #0x58
	mov	r2, #0x78
	bl	OvlFunc_d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	mov	r5, #0xc0
	bl	__Func_93874
	lsl	r5, #10
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x58
	mov	r2, #0x98
	bl	OvlFunc_d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xc0
	bl	OvlFunc_d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xf0
	bl	OvlFunc_d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1150

.thumb_func_start OvlFunc_1244
	push	{r5, lr}
	mov	r0, #0xb
	sub	sp, #0x10
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xb
	mov	r1, #0
	bl	OvlFunc_ea8
	mov	r1, #0xcc
	mov	r2, #0xe4
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r2, #1
	lsl	r3, #11
	mov	r0, #0xb
	bl	OvlFunc_d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92848
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_9259c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xb
	bl	__Func_937b8
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r5
	mov	r0, #0xb
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x301
	bl	__Func_79358
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #0
	bl	__Func_91eb0
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1244

.thumb_func_start OvlFunc_1328
	push	{r5, r6, lr}
	mov	r0, #0xc
	sub	sp, #0x10
	bl	__Func_92054
	mov	r6, #0xac
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xc
	mov	r1, #1
	bl	OvlFunc_ea8
	lsl	r6, #1
	mov	r1, #0x86
	mov	r3, #0xe0
	mov	r2, r6
	lsl	r1, #2
	lsl	r3, #11
	mov	r0, #0xc
	bl	OvlFunc_d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #13
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_93874
	mov	r5, #0xc0
	mov	r0, #0x3c
	bl	__Func_9163c
	lsl	r5, #10
	mov	r1, #0x92
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x9e
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0xaa
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	ldr	r0, =0x302
	bl	__Func_79358
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1328

.thumb_func_start OvlFunc_1420
	push	{lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_923e4
	ldr	r0, =0xfd4
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
.func_end OvlFunc_1420

.thumb_func_start OvlFunc_1454
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_474
	cmp	r0, #0
	beq	.L1510
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_608
	ldr	r3, [r5, #4]
	cmp	r3, #8
	bne	.L14a0
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L14a0
	mov	r3, #0x23
	mov	r2, #0x44
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #0x43
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
	b	.L1510
.L14a0:
	ldr	r3, [r5, #4]
	cmp	r3, #0xa
	bne	.L1510
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x23
	bne	.L1510
	ldr	r0, =0x311
	bl	__Func_79358
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0x10
	mov	r2, #6
	neg	r1, r1
	mov	r0, #0xa
	bl	__Func_9228c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x1e
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #4
	mov	r5, #0
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x23
	mov	r2, #0x1e
	mov	r3, #1
	str	r5, [sp, #4]
	bl	OvlFunc_244
.L1510:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1454

.thumb_func_start OvlFunc_1520
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r5, #20
	asr	r7, r3, #20
	mov	r3, #0xff
	mov	r6, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_244
	mov	r2, #0
	mov	r8, r2
	str	r2, [sp, #4]
	add	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_244
	mov	r3, r8
	add	r2, r7, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r2, r7, #1
	mov	r0, #2
	mov	r1, r5
	mov	r3, #1
	str	r6, [sp]
	bl	OvlFunc_244
	cmp	r5, #0x24
	bne	.L15ba
	cmp	r7, #0x18
	bne	.L15ba
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0x14]
	str	r3, [r0, #0xc]
.L15ba:
	bl	__Func_91750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1520

.thumb_func_start OvlFunc_15d0
	push	{r5, r6, lr}
	mov	r0, #0xc
	sub	sp, #0x10
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xc
	mov	r1, #1
	bl	OvlFunc_ea8
	mov	r1, #0xc4
	mov	r3, #0xe0
	lsl	r1, #1
	lsl	r3, #11
	mov	r2, #0x68
	mov	r0, #0xc
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	mov	r5, #0xd4
	mov	r6, #0xc0
	bl	__Func_93874
	lsl	r5, #1
	lsl	r6, #10
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r3, r6
	mov	r1, r5
	mov	r0, #0xc
	mov	r2, #0x78
	bl	OvlFunc_d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r3, r6
	mov	r1, r5
	mov	r0, #0xc
	mov	r2, #0xa8
	bl	OvlFunc_d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r3, r6
	mov	r1, r5
	mov	r0, #0xc
	mov	r2, #0xd0
	bl	OvlFunc_d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r3, r6
	mov	r1, r5
	mov	r0, #0xc
	mov	r2, #0xe8
	bl	OvlFunc_d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_923e4
	ldr	r0, =0x303
	bl	__Func_79358
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15d0

.thumb_func_start OvlFunc_16f0
	push	{r5, lr}
	mov	r0, #0xd
	sub	sp, #0x10
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xd
	mov	r1, #1
	bl	OvlFunc_ea8
	mov	r1, #0xe4
	mov	r3, #0xe0
	lsl	r1, #1
	lsl	r3, #11
	mov	r2, #0x68
	mov	r0, #0xd
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xec
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r1, #1
	mov	r0, #0xd
	mov	r2, #0x88
	bl	OvlFunc_d90
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0xfc
	ldr	r3, =0x33333
	lsl	r1, #1
	mov	r0, #0xd
	mov	r2, #0x88
	bl	OvlFunc_d90
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r5, #0xe0
	mov	r0, #6
	bl	__Func_9163c
	lsl	r5, #10
	mov	r1, #0x8a
	mov	r3, r5
	lsl	r1, #2
	mov	r0, #0xd
	mov	r2, #0x88
	bl	OvlFunc_d90
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x92
	mov	r3, r5
	lsl	r1, #2
	mov	r0, #0xd
	mov	r2, #0x88
	bl	OvlFunc_d90
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16f0

.thumb_func_start OvlFunc_1818
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xe
	mov	r1, #1
	bl	OvlFunc_ea8
	mov	r1, #0xd4
	mov	r2, #0xf0
	ldr	r3, =0x79999
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_d90
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0xe
	bl	OvlFunc_e18
	mov	r1, #0xf
	mov	r0, #0xe
	bl	__Func_92950
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x305
	bl	__Func_79358
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1818

.thumb_func_start OvlFunc_1880
	push	{r5, r6, lr}
	mov	r0, #0xe
	sub	sp, #0x10
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xe
	mov	r1, #1
	bl	OvlFunc_ea8
	mov	r1, #0xc4
	mov	r2, #0xfc
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r2, #1
	lsl	r3, #11
	mov	r0, #0xe
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_93874
	mov	r5, #0x84
	mov	r0, #0x3c
	mov	r6, #0xc0
	bl	__Func_9163c
	lsl	r5, #2
	lsl	r6, #10
	mov	r1, #0xb4
	mov	r3, r6
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_d90
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0xa4
	mov	r3, r6
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_d90
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x90
	mov	r3, r6
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_d90
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r3, r6
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_d90
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x306
	bl	__Func_79358
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1880

.thumb_func_start OvlFunc_19b8
	push	{r5, r6, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	mov	r6, #0
	bl	OvlFunc_474
	cmp	r0, #0
	beq	.L1ab2
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_608
	ldr	r3, [r5, #4]
	cmp	r3, #9
	beq	.L19ee
	cmp	r3, #0xb
	bne	.L1a98
	b	.L1a30
.L19ee:
	ldr	r3, [r5, #8]
	mov	r2, #0x44
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #1
	mov	r0, #0x26
	mov	r1, #0x44
	bl	__Func_10704
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	cmp	r2, #0x2a
	bne	.L1a5a
	mov	r3, #0x17
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
	mov	r0, #9
	mov	r1, #1
	bl	__Func_92b08
	ldr	r0, =0x312
	mov	r6, #1
	bl	__Func_79358
	b	.L1a5a
.L1a30:
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	cmp	r2, #0x28
	bne	.L1a5a
	mov	r3, #0x20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_92b08
	ldr	r0, =0x313
	mov	r6, #1
	bl	__Func_79358
.L1a5a:
	cmp	r6, #0
	bne	.L1a64
	bl	__Func_91750
	b	.L1ab6
.L1a64:
	ldr	r0, [r5, #4]
	mov	r1, #3
	bl	__Func_924d4
	mov	r2, #6
	mov	r1, #0x12
	ldr	r0, [r5, #4]
	bl	__Func_9228c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #8
	ldr	r0, [r5, #4]
	bl	__Func_924d4
	mov	r0, #0xf0
	bl	__Func_f9080
	ldr	r0, [r5, #4]
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	b	.L1ab2
.L1a98:
	cmp	r3, #8
	bne	.L1ab2
	ldr	r3, [r5, #8]
	mov	r2, #0x31
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #4
	bl	__Func_10704
.L1ab2:
	bl	__Func_91750
.L1ab6:
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19b8

.thumb_func_start OvlFunc_1ac8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r2, [r7]
	mov	r0, #0
	mov	r8, r2
	bl	__Func_92054
	ldr	r2, =0xffe00000
	ldr	r3, [r0, #8]
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5, #4]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	OvlFunc_cd0
	cmp	r0, #0
	beq	.L1b6e
	bl	__Func_916b0
	mov	r3, #0
	mov	r1, #7
	strb	r3, [r7]
	mov	r0, #0xb
	bl	__Func_924d4
	ldr	r5, =0xffff0000
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #2
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #9
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #4
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r3, r8
	strb	r3, [r7]
	bl	__Func_91750
.L1b6e:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ac8

.thumb_func_start OvlFunc_1b84
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r5, #20
	asr	r7, r3, #20
	mov	r3, #0xff
	mov	r6, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_244
	mov	r2, #0
	mov	r8, r2
	str	r2, [sp, #4]
	add	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_244
	mov	r3, r8
	add	r2, r7, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r2, r7, #1
	mov	r0, #2
	mov	r1, r5
	mov	r3, #1
	str	r6, [sp]
	bl	OvlFunc_244
	cmp	r5, #0x2d
	bne	.L1c1e
	cmp	r7, #6
	bne	.L1c1e
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0x14]
	str	r3, [r0, #0xc]
.L1c1e:
	bl	__Func_91750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b84

.thumb_func_start OvlFunc_1c34
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r6, [r0, #8]
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r5, [r0, #0x10]
	mov	r3, #1
	str	r3, [sp]
	asr	r6, #20
	asr	r5, #20
	mov	r8, r3
	mov	r3, #0xff
	str	r3, [sp, #4]
	mov	r2, r5
	mov	r1, r6
	mov	r10, r3
	mov	r0, #2
	mov	r3, #1
	bl	OvlFunc_244
	mov	r7, #0
	mov	r3, r8
	mov	r2, r5
	add	r1, r6, #1
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_244
	mov	r3, r8
	mov	r2, r5
	sub	r1, r6, #1
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_244
	add	r2, r5, #1
	mov	r3, r8
	mov	r1, r6
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_244
	sub	r5, #1
	mov	r3, r8
	mov	r1, r6
	mov	r2, r5
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_244
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x1b
	bne	.L1cee
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0x14]
	str	r3, [r0, #0xc]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, r8
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0x2b
	mov	r2, #0x17
	mov	r3, #1
	bl	OvlFunc_244
.L1cee:
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c34

.thumb_func_start OvlFunc_1d04
	push	{r5, r6, lr}
	mov	r0, #0xf
	sub	sp, #0x10
	bl	__Func_92054
	mov	r6, #0x80
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_ea8
	lsl	r6, #12
	mov	r1, #0xec
	mov	r3, r6
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0xf
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	add	r2, r6
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_92848
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_9259c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xf
	bl	__Func_937b8
	mov	r0, #0x93
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r1, r5
	mov	r0, #0xf
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x307
	bl	__Func_79358
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #0
	bl	__Func_91eb0
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d04

.thumb_func_start OvlFunc_1de0
	push	{r5, r6, lr}
	mov	r0, #0x10
	sub	sp, #0x10
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0x10
	mov	r1, #1
	bl	OvlFunc_ea8
	mov	r1, #0xe4
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r3, #11
	mov	r2, #0x98
	mov	r0, #0x10
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x10
	bl	__Func_93874
	mov	r5, #0xc0
	mov	r0, #0x3c
	bl	__Func_9163c
	lsl	r5, #10
	mov	r1, #0xe0
	mov	r3, r5
	lsl	r1, #1
	mov	r0, #0x10
	mov	r2, #0xc0
	bl	OvlFunc_d90
	mov	r6, #0xd4
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	lsl	r6, #1
	mov	r0, #6
	bl	__Func_9163c
	mov	r3, r5
	mov	r1, r6
	mov	r0, #0x10
	mov	r2, #0xd0
	bl	OvlFunc_d90
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r3, r5
	mov	r1, r6
	mov	r0, #0x10
	mov	r2, #0xe0
	bl	OvlFunc_d90
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1de0

.thumb_func_start OvlFunc_1ef0
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #0x10
	bl	__Func_92054
	mov	r6, #0xc0
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0x11
	mov	r1, #1
	bl	OvlFunc_ea8
	lsl	r6, #11
	mov	r1, #0xc4
	mov	r3, r6
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x11
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x11
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xbc
	mov	r3, r6
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0x98
	bl	OvlFunc_d90
	mov	r1, #0x11
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r5, #0xc0
	mov	r0, #0xa
	bl	__Func_9163c
	lsl	r5, #10
	mov	r1, #0xa4
	mov	r3, r5
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0xa0
	bl	OvlFunc_d90
	mov	r1, #0x11
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x94
	mov	r3, r5
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0xa0
	bl	OvlFunc_d90
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x309
	bl	__Func_79358
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ef0

.thumb_func_start OvlFunc_2004
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x12
	mov	r1, #1
	bl	OvlFunc_ea8
	mov	r0, #0xba
	mov	r1, #1
	mov	r2, #0xfc
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #1
	bl	__Func_933f8
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r3, #0x90
	lsl	r3, #12
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0x12
	bl	OvlFunc_d90
	mov	r0, #0x12
	bl	OvlFunc_e18
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_92950
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x30a
	bl	__Func_79358
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2004

.thumb_func_start OvlFunc_2078
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x12
	sub	sp, #0x10
	bl	__Func_92054
	mov	r6, #0xb2
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0x12
	mov	r1, #1
	bl	OvlFunc_ea8
	lsl	r6, #2
	mov	r2, #0x86
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	mov	r8, r3
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x8e
	mov	r3, r8
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	bl	OvlFunc_d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r5, #0xc0
	mov	r0, #0xa
	bl	__Func_9163c
	lsl	r5, #10
	mov	r2, #0x96
	mov	r3, r5
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	bl	OvlFunc_d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	add	r6, #0x18
	mov	r2, #0xa0
	mov	r3, r5
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	bl	OvlFunc_d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r2, #0xb0
	mov	r3, r5
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	bl	OvlFunc_d90
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x30b
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2078

.thumb_func_start OvlFunc_21b0
	push	{r5, lr}
	mov	r0, #0x12
	sub	sp, #0x10
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r1, #0x88
	mov	r2, #0xb4
	lsl	r2, #17
	mov	r0, #0x12
	lsl	r1, #16
	bl	__Func_923e4
	mov	r0, #0x12
	mov	r1, #1
	bl	OvlFunc_ea8
	mov	r2, #0xcc
	mov	r3, #0x80
	lsl	r2, #1
	lsl	r3, #12
	mov	r1, #0x88
	mov	r0, #0x12
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0xdc
	mov	r3, #0xc0
	lsl	r3, #11
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r5, #0xc0
	mov	r0, #0xa
	bl	__Func_9163c
	lsl	r5, #10
	mov	r2, #0xec
	mov	r3, r5
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r2, #0xfc
	mov	r3, r5
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_d90
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_923e4
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x89d
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_21b0

.thumb_func_start OvlFunc_22c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x12
	sub	sp, #0x1c
	bl	__Func_92054
	mov	r10, r0
	bl	__Func_916b0
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_92950
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x88
	mov	r2, #0xb4
	lsl	r2, #17
	mov	r0, #0x12
	lsl	r1, #16
	bl	__Func_923e4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xc4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x12
	bl	OvlFunc_e18
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x12
	bl	OvlFunc_e18
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x12
	bl	OvlFunc_e18
	ldr	r3, =0x13333
	mov	r1, r10
	str	r3, [r1, #0x18]
	str	r3, [r1, #0x1c]
	mov	r0, #0x12
	mov	r1, #5
	bl	__Func_92950
	mov	r2, #0xc4
	mov	r3, #0xf0
	lsl	r2, #1
	lsl	r3, #12
	mov	r1, #0x88
	mov	r0, #0x12
	bl	OvlFunc_d90
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	mov	r2, #0
	mov	r7, #0
	add	r6, sp, #0x10
	mov	r8, r2
.L23d4:
	lsl	r5, r7, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r3, r8
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
	mov	r1, r10
	ldr	r4, [r1, #8]
	ldr	r2, [r1, #0x10]
	ldr	r1, [r6, #4]
	str	r1, [sp]
	mov	r1, #1
	str	r1, [sp, #8]
	mov	r1, r8
	str	r0, [sp, #4]
	str	r1, [sp, #0xc]
	mov	r0, r4
	mov	r1, #0
	add	r7, #1
	bl	OvlFunc_ae8
	cmp	r7, #0x10
	bls	.L23d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0x94
	bl	__Func_f9080
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0x80
	sub	r2, #0x10
	lsl	r3, #12
	mov	r1, r5
	mov	r0, #0x12
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r3, =ewram_240
	ldr	r1, =0x22b
	mov	r2, #3
	add	r3, r1
	strb	r2, [r3]
	ldr	r0, =0x46
	mov	r1, #0xf
	bl	__Func_91f90
	mov	r0, #0x35
	mov	r1, #1
	bl	__Func_91eb0
	bl	__Func_91750
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22c0

.thumb_func_start OvlFunc_24ac
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.L24c4
	ldr	r0, =.L3a48
	b	.L24da
.L24c4:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.L24ce
	ldr	r0, =.L3b20
	b	.L24da
.L24ce:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.L24d8
	ldr	r0, =.L3c1c
	b	.L24da
.L24d8:
	ldr	r0, =.L3d54
.L24da:
	pop	{r1}
	bx	r1
.func_end OvlFunc_24ac

.thumb_func_start OvlFunc_2500
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
	ldr	r3, =0x44
	sub	sp, #8
	cmp	r2, r3
	beq	.L251e
	b	.L26fa
.L251e:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bge	.L252e
	b	.L2b56
.L252e:
	cmp	r3, #4
	ble	.L2540
	cmp	r3, #9
	ble	.L2538
	b	.L2b56
.L2538:
	cmp	r3, #7
	bge	.L253e
	b	.L2b56
.L253e:
	b	.L2622
.L2540:
	ldr	r0, =0x89c
	bl	__Func_79338
	cmp	r0, #0
	bne	.L25f0
	bl	__Func_916b0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_92950
	mov	r1, #0xb8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #15
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0x88
	mov	r2, #0x40
	mov	r0, #0
	bl	__Func_9218c
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, #0xe0
	lsl	r3, #11
	mov	r2, #0x74
	mov	r1, #0x88
	mov	r0, #0xa
	bl	OvlFunc_d90
	mov	r0, #0xa
	bl	OvlFunc_e18
	mov	r1, #0xf
	mov	r0, #0xa
	bl	__Func_92950
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =0x89c
	bl	__Func_79358
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_91750
.L25f0:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L25fc
	b	.L2b56
.L25fc:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L260a
	b	.L2b56
.L260a:
	mov	r0, #0xa
	mov	r1, #0xf
	bl	__Func_92950
	mov	r1, #0x88
	mov	r2, #0xe8
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	b	.L2b56
.L2622:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2636
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__Func_923e4
.L2636:
	mov	r0, #0x10
	bl	__Func_92054
	mov	r3, #0
	str	r3, [r0, #0x6c]
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2656
	mov	r0, #0x10
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
.L2656:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x9e
	mov	r2, #0xdc
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	ldr	r0, =0xfd4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L267a
	mov	r0, #0x10
	bl	OvlFunc_2c0c
.L267a:
	mov	r0, #0xb
	mov	r1, #0xf
	bl	__Func_92950
	mov	r1, #0xf
	mov	r0, #0xc
	bl	__Func_92950
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	bl	OvlFunc_8c0
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L26bc
	mov	r0, #9
	bl	OvlFunc_8c0
	b	.L2b56
.L26bc:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x84
	mov	r2, #0xcc
	lsl	r2, #17
	mov	r0, #9
	lsl	r1, #18
	bl	__Func_923e4
	mov	r0, #9
	mov	r1, #4
	bl	__Func_924d4
	mov	r3, #0x1f
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x26
	mov	r1, #0x1b
	mov	r2, #4
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	b	.L2b56
.L26fa:
	ldr	r3, =0x45
	cmp	r2, r3
	beq	.L2702
	b	.L288c
.L2702:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bge	.L2712
	b	.L2b56
.L2712:
	cmp	r3, #6
	ble	.L2724
	cmp	r3, #0xc
	ble	.L271c
	b	.L2b56
.L271c:
	cmp	r3, #0xa
	bge	.L2722
	b	.L2b56
.L2722:
	b	.L275c
.L2724:
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2742
	mov	r1, #0xf
	mov	r0, #0xc
	bl	__Func_92950
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L2742:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2750
	b	.L2b56
.L2750:
	mov	r1, #0xf
	mov	r0, #0xd
	bl	__Func_92950
	mov	r0, #0xd
	b	.L2962
.L275c:
	ldr	r0, =0x311
	bl	__Func_79338
	cmp	r0, #0
	bne	.L276e
	mov	r0, #0xa
	bl	OvlFunc_8c0
	b	.L27be
.L276e:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x8a
	mov	r2, #0xff
	lsl	r2, #17
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_923e4
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x1e
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #4
	mov	r5, #0
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0x23
	mov	r2, #0x1d
	mov	r3, #1
	str	r5, [sp, #4]
	bl	OvlFunc_244
.L27be:
	mov	r0, #8
	bl	OvlFunc_8c0
	mov	r0, #9
	bl	OvlFunc_8c0
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_244
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xb
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x306
	bl	__Func_79338
	cmp	r0, #0
	beq	.L281a
	b	.L2b56
.L281a:
	mov	r1, #0xf
	mov	r0, #0xe
	bl	__Func_92950
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =0x305
	bl	__Func_79338
	cmp	r0, #0
	bne	.L283a
	b	.L2b56
.L283a:
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	b	.L2b56

	.pool_aligned

.L288c:
	ldr	r3, =0x46
	cmp	r2, r3
	beq	.L2894
	b	.L2b56
.L2894:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #3
	cmp	r3, #0xc
	bls	.L28a6
	b	.L2b56
.L28a6:
	ldr	r2, =.L28b0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L28b0:
	.word	.L28e4
	.word	.L28e4
	.word	.L28e4
	.word	.L28e4
	.word	.L296e
	.word	.L29ba
	.word	.L29ba
	.word	.L29ba
	.word	.L29ba
	.word	.L2b2c
	.word	.L2b2c
	.word	.L2b56
	.word	.L2b50
.L28e4:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x307
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2914
	mov	r1, #0xf
	mov	r0, #0xf
	bl	__Func_92950
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L2914:
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2940
	mov	r1, #0xf
	mov	r0, #0x10
	bl	__Func_92950
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L2940:
	ldr	r0, =0x309
	bl	__Func_79338
	cmp	r0, #0
	beq	.L294c
	b	.L2b56
.L294c:
	mov	r1, #0xf
	mov	r0, #0x11
	bl	__Func_92950
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
.L2962:
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	b	.L2b56
.L296e:
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_244
	mov	r1, #6
	mov	r0, #0xd
	bl	__Func_92950
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #8
	bl	OvlFunc_8c0
	b	.L2b56
.L29ba:
	mov	r5, #0xb9
	lsl	r5, #17
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	ldr	r0, =0x2de0000
	bl	OvlFunc_a4c
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	ldr	r0, =0x2f20000
	bl	OvlFunc_a4c
	mov	r0, #0xa
	bl	OvlFunc_8c0
	mov	r0, #0xc
	bl	OvlFunc_8c0
	ldr	r0, =0x312
	bl	__Func_79338
	cmp	r0, #0
	bne	.L29f4
	mov	r0, #9
	bl	OvlFunc_8c0
	b	.L2a54
.L29f4:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #9
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0xc7
	ldr	r1, =0x2ba0000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, #0x17
	mov	r3, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x14
	mov	r2, #2
	mov	r0, #0x1a
	bl	__Func_10704
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
	mov	r1, #0x9e
	mov	r2, #0xdc
	lsl	r1, #18
	mov	r0, #0xe
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L2a54:
	ldr	r0, =0x313
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2a66
	mov	r0, #0xb
	bl	OvlFunc_8c0
	b	.L2a9e
.L2a66:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_924d4
	ldr	r1, =0x29a0000
	ldr	r2, =0x2260000
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x20
	mov	r3, #0x28
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
.L2a9e:
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_244
	mov	r1, #6
	mov	r0, #0xe
	bl	__Func_92950
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x30b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2b26
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_92950
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =0x30a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2b26
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
.L2b26:
	bl	OvlFunc_1c34
	b	.L2b56
.L2b2c:
	mov	r0, #0x12
	ldr	r1, =.L3084
	bl	__Func_9207c
	ldr	r0, =0x893
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2b56
	ldr	r0, =0x89e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2b56
	ldr	r0, =0x88f
	bl	__Func_79358
	b	.L2b56
.L2b50:
	ldr	r0, =0x89e
	bl	__Func_79358
.L2b56:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_2500

.thumb_func_start OvlFunc_2ba4
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_2322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L2bb8
	neg	r5, r5
.L2bb8:
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
	bge	.L2bde
	add	r0, #7
.L2bde:
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
.func_end OvlFunc_2ba4

.thumb_func_start OvlFunc_2c0c
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
	bne	.L2c70
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L2c70:
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
	ldr	r3, =OvlFunc_2ba4
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
.func_end OvlFunc_2c0c

	.section .data

.L2ef8:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2ef8, (0x2f38-0x2ef8)
.L2f38:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2f38, (0x2f50-0x2f38)
.L2f50:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2f50, (0x3058-0x2f50)
.L3058:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3058, (0x3084-0x3058)
.L3084:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3084, (0x30f4-0x3084)
.L30f4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x30f4, (0x31e4-0x30f4)
.L31e4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x31e4, (0x3334-0x31e4)
.L3334:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3334, (0x34b4-0x3334)
.L34b4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x34b4, (0x35bc-0x34b4)
.L35bc:
	.incbin "overlays/rom_7b4558/orig.bin", 0x35bc, (0x36a0-0x35bc)
.L36a0:
	.incbin "overlays/rom_7b4558/orig.bin", 0x36a0, (0x3790-0x36a0)
.L3790:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3790, (0x38b0-0x3790)
.L38b0:
	.incbin "overlays/rom_7b4558/orig.bin", 0x38b0, (0x3a30-0x38b0)
.L3a30:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3a30, (0x3a48-0x3a30)
.L3a48:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3a48, (0x3b20-0x3a48)
.L3b20:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3b20, (0x3c1c-0x3b20)
.L3c1c:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3c1c, (0x3d54-0x3c1c)
.L3d54:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3d54
