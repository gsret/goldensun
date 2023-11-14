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
	ldr	r0, =.L2fd4
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
	ldr	r2, =.L2fd4
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
	ldr	r2, =.L3014
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
	ldr	r3, =.L2fd4
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
	ldr	r3, =.L3014
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L302c
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
	ldr	r4, =.L2fd4
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
	ldr	r5, =.L302c
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
	ldr	r1, =.L2fd4
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
	ldr	r0, =.L302c
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
	ldr	r0, =.L302c
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
	ldr	r0, =.L2fd4
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
	ldr	r2, =.L2fd4
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
	ldr	r4, =.L302c
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
	ldr	r2, =.L2fd4
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
	ldr	r4, =.L302c
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
	ldr	r1, =.L3014
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
	ldr	r4, =.L302c
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
	ldr	r2, =.L3134
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
	ldr	r3, =.L3134
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
	mov	r0, #8
	mov	r1, #0x42
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_cd0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, #0x3c
.Lcd6:
	cmp	r5, #0
	beq	.Lce8
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r6, #0x28]
	sub	r5, #1
	cmp	r3, #0
	bne	.Lcd6
.Lce8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cd0

.thumb_func_start OvlFunc_cf0
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, [r6, #0x44]
	ldr	r3, [r6, #8]
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, [r6, #0x48]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r7, [r6, #0x4c]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	add	r3, r7
	mov	r1, #0x12
	str	r3, [r6, #0x10]
	bl	_Func_af0
	sub	r5, r0
	str	r5, [r6, #0x44]
	mov	r3, r7
	cmp	r7, #0
	bge	.Ld20
	add	r3, #0xf
.Ld20:
	asr	r3, #4
	sub	r3, r7, r3
	str	r3, [r6, #0x4c]
	ldr	r2, [r6, #0x30]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r2, [r6, #0x34]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldr	r1, [r6, #0x50]
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r2]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cf0

.thumb_func_start OvlFunc_d4c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x44
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
	mov	r5, #0
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r10, r0
	add	r0, sp, #0x1c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_cf0
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	add	r6, sp, #0x10
.Lde6:
	lsl	r5, r7, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r3, #0
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
	mov	r2, r10
	ldr	r5, [r2, #8]
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	mov	r0, r5
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_ae8
	cmp	r7, #0x10
	bls	.Lde6
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
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	bl	__Func_91750
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d4c

.thumb_func_start OvlFunc_eac
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
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
	lsl	r3, #7
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =0xfffb0000
	str	r3, [r0, #0x28]
	mov	r0, #0
	bl	__Func_92054
	bl	OvlFunc_cd0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, r6
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_eac

.thumb_func_start OvlFunc_f58
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.Lf70
	ldr	r0, =.L3270
	b	.Lf86
.Lf70:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.Lf7a
	ldr	r0, =.L3330
	b	.Lf86
.Lf7a:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.Lf84
	ldr	r0, =.L34f8
	b	.Lf86
.Lf84:
	ldr	r0, =.L3558
.Lf86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_f58

.thumb_func_start OvlFunc_fac
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	mov	r0, #0
	cmp	r2, r3
	bne	.Lfc4
	ldr	r0, =.L35b8
.Lfc4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_fac

.thumb_func_start OvlFunc_fd4
	ldr	r0, =.L35f8
	bx	lr
.func_end OvlFunc_fd4

.thumb_func_start OvlFunc_fdc
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.Lff4
	ldr	r0, =.L3694
	b	.L100a
.Lff4:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.Lffe
	ldr	r0, =.L3754
	b	.L100a
.Lffe:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.L1008
	ldr	r0, =.L3784
	b	.L100a
.L1008:
	ldr	r0, =.L388c
.L100a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_fdc

.thumb_func_start OvlFunc_1030
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	beq	.L104a
	cmp	r3, #0x12
	bne	.L10d6
.L104a:
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.L10d6
	mov	r3, #0x80
	lsl	r3, #24
	mov	r1, #0x80
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
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
	ldr	r1, =0x4fff
	ldrh	r0, [r5, #6]
	add	r3, r0, r1
	ldr	r1, =0x1fff0000
	lsl	r3, #16
	ldr	r2, =0x1fff
	cmp	r3, r1
	bls	.L109a
	ldr	r1, =0xffffcfff
	add	r3, r0, r1
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L10b8
.L109a:
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	b	.L10d6
.L10b8:
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
.L10d6:
	bl	OvlFunc_2820
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1030

.thumb_func_start OvlFunc_10f4
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_c4
	bl	OvlFunc_1030
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_10f4

.thumb_func_start OvlFunc_110c
	push	{r5, lr}
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0xc
	bgt	.L1136
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	bne	.L114c
	b	.L113e
.L1136:
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x12
	bne	.L114c
.L113e:
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.L114c
	bl	OvlFunc_10f4
	b	.L1150
.L114c:
	bl	__Func_93e28
.L1150:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_110c

.thumb_func_start OvlFunc_1158
	push	{lr}
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_933f8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92708
	bl	__Func_91df4
	bl	__Func_91e20
	pop	{r0}
	bx	r0
.func_end OvlFunc_1158

.thumb_func_start OvlFunc_1184
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_1158
	mov	r0, #0xb
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1184

.thumb_func_start OvlFunc_119c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xe8
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #17
	bl	OvlFunc_9f4
	bl	OvlFunc_1158
	mov	r0, #0xc
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_119c

.thumb_func_start OvlFunc_11c4
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x8f
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_9f4
	mov	r0, #0xf2
	mov	r2, #0x8f
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xfd
	lsl	r0, #15
	bl	OvlFunc_9f4
	bl	OvlFunc_1158
	mov	r0, #0xd
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_11c4

.thumb_func_start OvlFunc_11fc
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_1158
	mov	r0, #0xf
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_11fc

.thumb_func_start OvlFunc_1214
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x2693
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1214

.thumb_func_start OvlFunc_1238
	push	{lr}
	ldr	r0, =0x988
	bl	__Func_79358
	ldr	r0, =0x98a
	bl	__Func_79358
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x2702
	bl	__Func_92b94
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x94
	mov	r2, #0xb0
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, #0xc0
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #0
	lsl	r3, #8
	bl	__Func_9233c
	mov	r1, #8
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	mov	r0, #2
	mov	r1, #8
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	mov	r2, #0x10
	lsl	r3, #8
	mov	r1, #0x18
	mov	r0, #3
	bl	__Func_9233c
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0x90
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =0x107
	mov	r2, #0x28
	mov	r0, #0xd
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd
	ldr	r1, =0x101
	mov	r2, #0x4b
	bl	__Func_937b8
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L15d0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L160e

	.pool_aligned

.L15d0:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
.L160e:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1726
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L1752
.L1726:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L1752:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_92064
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xc
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_92064
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xc
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x32
	mov	r0, #0xc
	ldr	r1, =0x107
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1880
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L18ac

	.pool_aligned

.L1880:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
.L18ac:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x32
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_92848
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0xc
	mov	r1, #0x20
	mov	r2, #0
	bl	__Func_922c4
	mov	r0, #0xd
	mov	r1, #0x20
	mov	r2, #0
	bl	__Func_92304
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_922c4
	mov	r0, #0xd
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0xac
	mov	r2, #0x9c
	mov	r0, #0xd
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xac
	mov	r2, #0xa8
	lsl	r2, #1
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r2, #0x9c
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r2, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1a86
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1a86:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1ab6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L1ab6:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1ae6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L1ae6:
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1238

.thumb_func_start OvlFunc_1b10
	push	{lr}
	ldr	r0, =0x989
	bl	__Func_79358
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x272f
	bl	__Func_92b94
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x94
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x10
	mov	r3, #0
	bl	__Func_9233c
	mov	r1, #0x10
	mov	r2, #8
	mov	r0, #2
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_9233c
	mov	r1, #0x10
	mov	r2, #0x18
	mov	r3, #0
	neg	r1, r1
	mov	r0, #3
	bl	__Func_9233c
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xa4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_92560
	mov	r1, #4
	mov	r2, #0x1e
	mov	r0, #0xa
	bl	__Func_92560
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x28
	mov	r0, #0xa
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_9335c
	mov	r2, #0x20
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0xa
	bl	__Func_92304
	bl	OvlFunc_2548
	ldr	r0, =0x301
	bl	__Func_79374
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_933f8
	bl	__Func_916b0
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	b	.L1f1c

	.pool_aligned

.L1f1c:
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_937b8
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	ldr	r1, =0x103
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L20bc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L20e8
.L20bc:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L20e8:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_92304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2200
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L223e

	.pool_aligned

.L2200:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
.L223e:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x9c
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_92848
	mov	r2, #0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92848
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2392
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L2392:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L23c2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L23c2:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L23f2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L23f2:
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b10

.thumb_func_start OvlFunc_246c
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2490
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x24
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10788
	b	.L24a4
.L2490:
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x22
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10788
.L24a4:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_246c

.thumb_func_start OvlFunc_24b0
	push	{lr}
	sub	sp, #8
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_10788
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_24b0

.thumb_func_start OvlFunc_24d0
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2538
	ldr	r0, =0x985
	bl	__Func_79358
	mov	r0, #0x9d
	bl	__Func_f9080
	bl	__Func_916b0
	mov	r1, #0x8c
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__Func_92128
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x51
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_91750
	ldr	r0, =0x989
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2538
	bl	OvlFunc_1b10
.L2538:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_24d0

.thumb_func_start OvlFunc_2548
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L25ba
	ldr	r0, =0x985
	bl	__Func_79374
	mov	r0, #0x9d
	bl	__Func_f9080
	bl	__Func_916b0
	mov	r1, #0x94
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__Func_92128
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_91750
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.L25b4
	ldr	r0, =0x301
	bl	__Func_79374
	b	.L25ba
.L25b4:
	ldr	r0, =0x301
	bl	__Func_79358
.L25ba:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2548

.thumb_func_start OvlFunc_25c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	sub	sp, #8
	ldr	r5, [r3]
	bl	__Func_916b0
	ldr	r2, =0xcb8
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L262e
	ldr	r0, =0x985
	bl	__Func_79338
	cmp	r0, #0
	bne	.L263e
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0x9b
	bl	__Func_f9080
	mov	r5, #0x11
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x4e
	mov	r0, #0x23
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10788
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x22
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10788
	mov	r0, #0xa
	bl	__Func_9163c
	bl	OvlFunc_24d0
	b	.L263e
.L262e:
	ldr	r0, =0x2756
	bl	__Func_92b94
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_92f84
.L263e:
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25c8

.thumb_func_start OvlFunc_2660
	push	{r5, r6, lr}
	mov	r5, r0
	ldrh	r3, [r5, #6]
	ldr	r2, =.L2fd4
	lsr	r3, #12
	lsl	r3, #2
	ldr	r0, [r2, r3]
	ldr	r3, =0xffff0000
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	sub	sp, #0xc
	and	r3, r0
	lsl	r0, #16
	mov	r6, sp
	add	r2, r0
	add	r1, r3
	str	r1, [r6]
	str	r2, [r6, #8]
	mov	r3, r5
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	__Func_11f54
	mov	r1, r5
	str	r0, [r6, #4]
	mov	r0, r6
	bl	OvlFunc_6c
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_2660

.thumb_func_start OvlFunc_26a8
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r2, #1
	add	r3, #0x34
	strb	r2, [r3]
	bx	lr
.func_end OvlFunc_26a8

.thumb_func_start OvlFunc_26b8
	push	{lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r4, r3, #20
	cmp	r4, #0x14
	bne	.L26f6
	ldr	r3, [r0, #0x10]
	asr	r1, r3, #20
	cmp	r1, #0xc
	bne	.L26f6
	mov	r2, r0
	mov	r3, #2
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, #0xc0
	lsl	r2, #14
	str	r2, [r0, #0x14]
	mov	r2, r0
	add	r2, #0x23
	strb	r3, [r2]
	mov	r0, #0x26
	str	r1, [sp, #4]
	mov	r2, #1
	mov	r1, #0xc
	mov	r3, #1
	str	r4, [sp]
	bl	__Func_10704
.L26f6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_26b8

.thumb_func_start OvlFunc_26fc
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	OvlFunc_2660
	cmp	r0, #0
	beq	.L2730
	ldr	r3, [r0, #0xc]
	ldr	r0, [r5, #0xc]
	sub	r2, r3, r0
	cmp	r2, #0
	blt	.L2722
	mov	r3, #0x80
	lsl	r3, #12
	cmp	r2, r3
	bge	.L2730
	b	.L272c
.L2722:
	mov	r2, #0x80
	sub	r3, r0, r3
	lsl	r2, #12
	cmp	r3, r2
	bge	.L2730
.L272c:
	bl	OvlFunc_c4
.L2730:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_26fc

.thumb_func_start OvlFunc_2738
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	OvlFunc_2660
	ldrh	r3, [r5, #6]
	mov	r1, #0x80
	lsl	r1, #6
	add	r5, r3, r1
	mov	r4, #0xf9
	ldr	r3, =ewram_240
	lsl	r4, #1
	add	r3, r4
	mov	r1, #0xc0
	ldrb	r3, [r3]
	mov	r2, r0
	lsl	r1, #8
	mov	r0, #1
	and	r5, r1
	neg	r0, r0
	cmp	r3, #1
	beq	.L276c
	cmp	r2, #0
	bne	.L2780
.L276c:
	cmp	r5, r1
	bne	.L2774
	bl	__Func_93fa0
.L2774:
	mov	r1, #0x80
	lsl	r1, #7
	cmp	r5, r1
	bne	.L2780
	bl	__Func_93e28
.L2780:
	cmp	r0, #0
	beq	.L2796
	ldr	r3, =ewram_240
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L2796
	bl	OvlFunc_26fc
.L2796:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2738

.thumb_func_start OvlFunc_27a0
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.L27b8
	ldr	r0, =.L391c
	b	.L27ce
.L27b8:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.L27c2
	ldr	r0, =.L39e8
	b	.L27ce
.L27c2:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.L27cc
	ldr	r0, =.L3ac0
	b	.L27ce
.L27cc:
	ldr	r0, =.L3c28
.L27ce:
	pop	{r1}
	bx	r1
.func_end OvlFunc_27a0

.thumb_func_start OvlFunc_27f4
	push	{lr}
	sub	sp, #8
	mov	r3, #0x12
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #7
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x52
	bl	__Func_10704
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_27f4

.thumb_func_start OvlFunc_2820
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	mov	r1, #1
	mov	r6, r0
	mov	r0, #8
	bl	__Func_92b08
	mov	r0, #9
	mov	r1, #1
	bl	__Func_92b08
	mov	r3, #5
	str	r3, [sp]
	mov	r5, #0x13
	mov	r0, #0x45
	mov	r1, #0x13
	mov	r2, #3
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x11
	str	r3, [sp]
	mov	r0, #0x45
	mov	r1, #0x13
	mov	r2, #3
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	mov	r0, #3
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2820

.thumb_func_start OvlFunc_28a0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #1
	sub	sp, #8
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r6, =ewram_240
	ldr	r3, =0xb1
	ldrsh	r1, [r6, r2]
	cmp	r1, r3
	beq	.L28dc
	add	r2, #0x82
	add	r3, r6, r2
	mov	r0, #0x90
	mov	r2, #1
	strh	r2, [r3]
	lsl	r0, #2
	ldr	r2, =0xb0
	add	r3, r6, r0
	strh	r2, [r3]
	mov	r12, r1
	b	.L2914
.L28dc:
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, r0
	ldr	r3, [r1, #8]
	asr	r2, r3, #20
	cmp	r2, #0x14
	beq	.L28ee
	b	.L2d3c
.L28ee:
	ldr	r3, [r1, #0x10]
	asr	r0, r3, #20
	cmp	r0, #0xc
	beq	.L28f8
	b	.L2d3c
.L28f8:
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r1, #0xc
	mov	r0, #0x26
	b	.L2af2

	.pool_aligned

.L2914:
	cmp	r12, r2
	beq	.L291a
	b	.L2a7a
.L291a:
	mov	r0, #8
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #9
	mov	r1, #6
	bl	__Func_92950
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #5
	bne	.L2950
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2950
	mov	r1, #0x9c
	mov	r2, #0xa4
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
.L2950:
	bl	OvlFunc_2820
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x14]
	mov	r0, #0xc0
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L298a
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0xfe
	add	r0, #0x59
	strb	r3, [r0]
	bl	OvlFunc_27f4
.L298a:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	add	r2, #0x59
	strb	r3, [r2]
	sub	r2, #0x36
	strb	r3, [r2]
	add	r2, #0x3b
	strh	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	mov	r6, #0xc
	orr	r3, r6
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	ldr	r5, .L29ec	@ 0
	add	r3, #0x26
	strb	r5, [r3]
	mov	r3, #0xc0
	ldr	r2, [r1, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, r0
	mov	r3, r1
	add	r3, #0x59
	strb	r5, [r3]
	mov	r2, r1
	sub	r3, #0x36
	strb	r5, [r3]
	add	r2, #0x5e
	mov	r3, #0x1e
	strh	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r6
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	add	r3, #0x26
	b	.L29f4

	.align	2, 0
.L29ec:
	.word	0
	.pool

.L29f4:
	strb	r5, [r3]
	mov	r3, #0x80
	ldr	r2, [r1, #0x50]
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, r0
	mov	r3, r1
	add	r3, #0x59
	strb	r5, [r3]
	mov	r2, r1
	sub	r3, #0x36
	strb	r5, [r3]
	add	r2, #0x5e
	mov	r3, #0x3c
	strh	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r6
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	add	r3, #0x26
	strb	r5, [r3]
	mov	r2, #0x80
	lsl	r2, #8
	ldr	r3, [r1, #0x50]
	mov	r8, r2
	mov	r0, r8
	strh	r0, [r3, #0x1e]
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, r0
	mov	r3, r1
	add	r3, #0x59
	strb	r5, [r3]
	mov	r2, r1
	sub	r3, #0x36
	strb	r5, [r3]
	add	r2, #0x5e
	mov	r3, #0x5a
	strh	r3, [r2]
	ldr	r2, [r1, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r6
	strb	r3, [r2, #9]
	ldr	r3, [r1, #0x50]
	add	r3, #0x26
	strb	r5, [r3]
	ldr	r3, [r1, #0x50]
	mov	r2, r8
	strh	r2, [r3, #0x1e]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_924d4
	b	.L2d3c
.L2a7a:
	ldr	r3, =0xaf
	cmp	r12, r3
	bne	.L2b7e
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r6, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xa
	cmp	r3, #7
	bls	.L2a92
	b	.L2d3c
.L2a92:
	ldr	r2, =.L2a9c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2a9c:
	.word	.L2abc
	.word	.L2ac4
	.word	.L2d24
	.word	.L2d24
	.word	.L2afc
	.word	.L2d24
	.word	.L2b28
	.word	.L2b54
.L2abc:
	mov	r0, #0x98
	lsl	r0, #4
	bl	__Func_79358
.L2ac4:
	mov	r0, #0x98
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2ad2
	b	.L2d3c
.L2ad2:
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x78
	mov	r1, #7
	mov	r2, #0x6d
	mov	r3, #7
	bl	__Func_10424
	mov	r3, #0x2d
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #8
.L2af2:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L2d3c
.L2afc:
	mov	r0, #0xdc
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #17
	bl	OvlFunc_9f4
	mov	r3, #0x1b
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0xe
	bl	OvlFunc_eac
	b	.L2d3c
.L2b28:
	mov	r0, #0xe0
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #17
	bl	OvlFunc_9f4
	mov	r3, #0x1c
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x10
	bl	OvlFunc_eac
	b	.L2d3c
.L2b54:
	mov	r0, #0xe8
	ldr	r2, =0x2520000
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_9f4
	mov	r3, #0xe
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x11
	bl	OvlFunc_eac
	b	.L2d3c
.L2b7e:
	ldr	r3, =0xae
	cmp	r1, r3
	beq	.L2b86
	b	.L2d34
.L2b86:
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0x80
	and	r5, r3
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
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2be8
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r6, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L2be2
	ldr	r0, =0x301
	bl	__Func_79358
	b	.L2be8
.L2be2:
	ldr	r0, =0x301
	bl	__Func_79374
.L2be8:
	ldr	r0, =0x988
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2c6a
	mov	r0, #0xa
	ldr	r1, =0xffc00000
	ldr	r2, =0xffc00000
	bl	__Func_923e4
	mov	r1, #0x8c
	mov	r2, #0x94
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x9c
	mov	r2, #0xf8
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x94
	mov	r2, #0xf8
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r2, #0x94
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #5
	bl	__Func_9163c
	b	.L2cc4
.L2c6a:
	ldr	r0, =0x989
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2cc4
	mov	r1, #0x9c
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #5
	bl	__Func_9163c
.L2cc4:
	ldr	r0, =0x985
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2d14
	mov	r1, #0x8c
	mov	r2, #0xf0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa4
	mov	r2, #0xf0
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x51
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
.L2d14:
	ldr	r3, =ewram_240
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L2d3c
.L2d24:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2d3c
	bl	OvlFunc_d4c
	b	.L2d3c
.L2d34:
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_924d4
.L2d3c:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_28a0

	.section .data

.L2fd4:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x2fd4, (0x3014-0x2fd4)
.L3014:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3014, (0x302c-0x3014)
.L302c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x302c, (0x3134-0x302c)
.L3134:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3134, (0x3270-0x3134)
.L3270:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3270, (0x3330-0x3270)
.L3330:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3330, (0x34f8-0x3330)
.L34f8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x34f8, (0x3558-0x34f8)
.L3558:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3558, (0x35b8-0x3558)
.L35b8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x35b8, (0x35f8-0x35b8)
.L35f8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x35f8, (0x3694-0x35f8)
.L3694:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3694, (0x3754-0x3694)
.L3754:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3754, (0x3784-0x3754)
.L3784:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3784, (0x388c-0x3784)
.L388c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x388c, (0x391c-0x388c)
.L391c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x391c, (0x39e8-0x391c)
.L39e8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x39e8, (0x3ac0-0x39e8)
.L3ac0:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3ac0, (0x3c28-0x3ac0)
.L3c28:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3c28
