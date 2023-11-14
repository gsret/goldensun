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
	ldr	r0, =.L2d68
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
	ldr	r2, =.L2d68
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
	ldr	r2, =.L2da8
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
	ldr	r3, =.L2d68
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
	ldr	r3, =.L2da8
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L2dc0
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
	ldr	r4, =.L2d68
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
	ldr	r5, =.L2dc0
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
	ldr	r1, =.L2d68
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
	ldr	r0, =.L2dc0
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
	ldr	r0, =.L2dc0
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
	ldr	r0, =.L2d68
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
	ldr	r2, =.L2d68
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
	ldr	r4, =.L2dc0
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
	ldr	r2, =.L2d68
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
	ldr	r4, =.L2dc0
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
	ldr	r1, =.L2da8
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
	ldr	r4, =.L2dc0
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
	push	{r5, lr}
	ldr	r5, =.L3390
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L9f0
	mov	r1, #2
	bl	__Func_c300
	mov	r3, #0
	str	r3, [r5]
.L9f0:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_9dc

.thumb_func_start OvlFunc_9fc
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_4458
	mov	r3, #0x64
	mov	r2, r0
	mul	r2, r3
	mov	r6, r5
	add	r6, #0x64
	ldrh	r3, [r6]
	lsr	r2, #16
	add	r3, r2
	mov	r2, #0xfa
	strh	r3, [r6]
	lsl	r2, #18
	lsl	r3, #16
	cmp	r3, r2
	ble	.La2a
	mov	r0, r5
	mov	r1, #7
	bl	__Func_929d8
	b	.La32
.La2a:
	mov	r0, r5
	mov	r1, #0xa
	bl	__Func_929d8
.La32:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #0x96
	lsl	r2, #3
	cmp	r3, r2
	ble	.La42
	mov	r3, #0
	strh	r3, [r6]
.La42:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_9fc

.thumb_func_start OvlFunc_a4c
	ldr	r0, =.L306c
	bx	lr
.func_end OvlFunc_a4c

.thumb_func_start OvlFunc_a54
	mov	r0, #0
	bx	lr
.func_end OvlFunc_a54

.thumb_func_start OvlFunc_a58
	ldr	r0, =.L30cc
	bx	lr
.func_end OvlFunc_a58

.thumb_func_start OvlFunc_a60
	ldr	r0, =.L30e4
	bx	lr
.func_end OvlFunc_a60

.thumb_func_start OvlFunc_a68
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_474
	cmp	r0, #0
	beq	.Lb0e
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
	cmp	r3, #0xa
	bne	.Lb0e
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.Lb0e
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0x12
	mov	r2, #6
	neg	r1, r1
	mov	r0, #0xa
	bl	__Func_9228c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xf0
	bl	__Func_f9080
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0x14
	mov	r2, #0x11
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_244
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.Lb0e:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a68

.thumb_func_start OvlFunc_b1c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r3, [r7]
	mov	r1, r5
	mov	r10, r3
	bl	__Func_120dc
	mov	r8, r0
	cmp	r0, #0
	bne	.Lc02
	bl	__Func_916b0
	mov	r1, #6
	mov	r0, r6
	bl	__Func_c300
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, r6
	mov	r1, #7
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0xa
	ldrsh	r2, [r5, r3]
	mov	r3, #2
	ldrsh	r1, [r5, r3]
	mov	r0, #0
	bl	__Func_92158
	mov	r0, r6
	mov	r1, #6
	bl	__Func_c300
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c528
	mov	r3, r8
	mov	r1, #7
	strb	r3, [r7]
	mov	r0, #0xa
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
	mov	r0, #4
	str	r3, [r6, #0x14]
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r3, r10
	strb	r3, [r7]
	bl	__Func_91750
	mov	r0, #1
	b	.Lc04
.Lc02:
	mov	r0, #0
.Lc04:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_b1c

.thumb_func_start OvlFunc_c14
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r5, =0xfff00000
	ldr	r2, [r0, #8]
	mov	r4, #0x80
	lsl	r4, #12
	and	r2, r5
	mov	r1, sp
	add	r3, r2, r4
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	and	r3, r5
	add	r3, r4
	str	r3, [r1, #8]
	mov	r3, #0xa0
	lsl	r3, #14
	add	r2, r3
	str	r2, [r1]
	mov	r0, r1
	bl	OvlFunc_b1c
	add	sp, #0xc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c14

.thumb_func_start OvlFunc_c60
	ldr	r0, =.L3294
	bx	lr
.func_end OvlFunc_c60

.thumb_func_start OvlFunc_c68
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	OvlFunc_8c0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lcbe
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #4
	bl	__Func_10704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0x14
	mov	r2, #0x11
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_244
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.Lcbe:
	mov	r0, #8
	bl	OvlFunc_8c0
	mov	r0, #9
	bl	OvlFunc_8c0
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.Lce8
	ldr	r0, =0x843
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lce8
	bl	OvlFunc_d3c
.Lce8:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld24
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.Ld24:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_c68

.thumb_func_start OvlFunc_d3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xf6
	mov	r1, #1
	mov	r2, #0x97
	mov	r3, #0
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, #3
	ldr	r6, =.L3394
	bl	__Func_79338
	str	r0, [r6]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xf
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r5, =.L3024
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x12
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, #0xe8
	lsl	r1, #15
	ldr	r2, =0x25a0000
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xfe
	ldr	r2, =0x251
	bl	__Func_921c4
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Le72
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.Le72:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Le86
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.Le86:
	ldr	r1, =.L2e20
	mov	r0, #1
	bl	__Func_9207c
	ldr	r1, =.L2e54
	mov	r0, #2
	bl	__Func_9207c
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.Lec2
	mov	r0, #3
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Leba
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.Leba:
	ldr	r1, =.L2e88
	mov	r0, #3
	bl	__Func_9207c
.Lec2:
	mov	r5, #0x80
	lsl	r5, #6
	mov	r0, #2
	bl	__Func_920e8
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_2780
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r2, #0x80
	lsl	r2, #7
	mov	r8, r2
	mov	r0, #2
	mov	r1, r8
	mov	r2, #0x28
	bl	OvlFunc_2780
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r6, #0xc0
	mov	r0, #0x3c
	bl	__Func_9163c
	lsl	r6, #7
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x3c
	bl	OvlFunc_2780
	mov	r1, r5
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r1, r5
	mov	r5, #0xa0
	lsl	r5, #8
	mov	r0, #1
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_2780
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	ldr	r0, =0x1474
	bl	__Func_92b94
	mov	r1, #0xa
	mov	r0, #1
	bl	OvlFunc_2768
	ldr	r0, =0x147c
	bl	__Func_92b94
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_2780
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0x28
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x1e
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r1, #0xe0
	mov	r2, #0x1e
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_2780
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r2, #0xa
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_2780
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0xce
	bl	__Func_f9080
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =.L3398
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_27c8
	bl	__Func_41d8
	mov	r0, #0x14
	bl	__Func_30f8
	ldr	r0, =0x405210
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	ldr	r5, =.L2ebc
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #2
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_9207c
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_2768
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1120
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_2768
	b	.L1130

	.pool_aligned

.L1120:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1130:
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r7, =.L3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1188
	mov	r0, #3
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, r5
	mov	r2, r5
	bl	__Func_92064
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__Func_9228c
	ldr	r1, =.L2f48
	mov	r0, #3
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #3
	mov	r1, #0x13
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
.L1188:
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, r5
	mov	r1, r5
	mov	r0, #0
	bl	__Func_92064
	ldr	r6, =.L2f48
	mov	r0, #0
	mov	r1, r6
	bl	__Func_9207c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_92054
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, r5
	mov	r1, r5
	mov	r0, #1
	bl	__Func_92064
	mov	r1, r6
	mov	r0, #1
	bl	__Func_9207c
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x13
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_92054
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r6
	mov	r0, #2
	bl	__Func_9207c
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x13
	mov	r0, #2
	bl	__Func_924d4
	ldr	r3, =.L3398
	mov	r5, #0
	str	r5, [r3]
	mov	r0, #0xa0
	bl	__Func_9163c
	ldr	r0, =OvlFunc_27c8
	bl	__Func_4278
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	ldr	r3, =.L3388
	ldr	r2, =.L3384
	str	r5, [r3]
	mov	r3, #0x80
	ldr	r5, =.L338c
	lsl	r3, #16
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_2974
	bl	__Func_41d8
	mov	r0, #0xb4
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #0x50
	bl	OvlFunc_2768
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_2768
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
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r3, #2
	str	r3, [r5]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1390
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_2768
	b	.L13a0

	.pool_aligned

.L1390:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L13a0:
	ldr	r7, =.L338c
	mov	r3, #3
	str	r3, [r7]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	mov	r6, #0xfe
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92b08
	ldr	r3, =.L3390
	mov	r5, #0
	mov	r1, #0xc8
	str	r5, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_2ad8
	bl	__Func_41d8
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_92b08
	mov	r1, #0xfd
	ldr	r2, =0x25b0000
	mov	r0, #0xd
	lsl	r1, #16
	bl	__Func_923e4
	ldr	r5, =.L2f6c
	mov	r0, #0xd
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_92b08
	mov	r1, #0xe9
	mov	r0, #0xe
	lsl	r1, #16
	ldr	r2, =0x2750000
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L14ac
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_92b08
	mov	r1, #0xcf
	mov	r0, #0xf
	lsl	r1, #16
	ldr	r2, =0x2610000
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_9207c
.L14ac:
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_92b08
	mov	r1, #0xe3
	mov	r2, #0x91
	mov	r0, #0x10
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0x10
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L14ee
	mov	r5, r7
.L14e2:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L14e2
.L14ee:
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_9163c
	ldr	r0, =OvlFunc_2974
	bl	__Func_4278
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r0, #0xd
	bl	__Func_920a0
	mov	r0, #0xe
	bl	__Func_920a0
	ldr	r7, =.L3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1538
	mov	r0, #0xf
	bl	__Func_920a0
.L1538:
	mov	r0, #0x10
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =.L2fc8
	mov	r0, #0xd
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1564
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_9207c
.L1564:
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_920fc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r1, #0xdc
	mov	r2, #0xf7
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xdc
	mov	r2, #0xf7
	lsl	r1, #16
	mov	r0, #0xc
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L15c6
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L15c6:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1606
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x1488
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_2768
.L1606:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	ldr	r0, =0x1489
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_2768
	mov	r1, #3
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_92b08
	mov	r0, #1
	bl	__Func_92054
	mov	r2, #1
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #3
	mov	r2, #0
	mov	r0, #1
	neg	r1, r1
	bl	__Func_9228c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r5, #0x80
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_2768
	lsl	r5, #6
	mov	r0, #0
	mov	r1, #3
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r6, #0xc0
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	lsl	r6, #7
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L17fe
	b	.L1778

	.pool_aligned

.L1778:
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92b08
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__Func_9228c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xe0
	mov	r2, #0x3c
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_2780
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_2768
	b	.L180e
.L17fe:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L180e:
	mov	r6, #0x80
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	lsl	r6, #7
	bl	__Func_92560
	mov	r7, #0x80
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_2780
	lsl	r7, #6
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r7
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_92b08
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r2, #0
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r5, #0xc0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_92560
	lsl	r5, #7
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0x3c
	bl	OvlFunc_2780
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L19e6
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L1a08
.L19e6:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L1a08:
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_2780
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_2768
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1a84
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_2768
	b	.L1a94

	.pool_aligned

.L1a84:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1a94:
	mov	r1, #0x80
	mov	r6, #0xa0
	lsl	r6, #8
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_2780
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r5, #0x80
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	lsl	r5, #7
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r5
	bl	OvlFunc_2780
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_2780
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_2780
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_2780
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1c00
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	b	.L1c24

	.pool_aligned

.L1c00:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1c24:
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x15
	bl	__Func_f9080
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	ldr	r2, =.L3388
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L3384
	mov	r3, #0x80
	lsl	r3, #16
	ldr	r6, =.L338c
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r6]
	lsl	r1, #4
	ldr	r0, =OvlFunc_2974
	bl	__Func_41d8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r5, #0xc0
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	lsl	r5, #8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, r5
	mov	r0, #2
	bl	OvlFunc_2780
	ldr	r0, =0x149d
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_2780
	ldr	r7, =.L3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1cd2
	mov	r0, #3
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_2780
.L1cd2:
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92b08
	mov	r3, #2
	str	r3, [r6]
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r1, #0xfd
	ldr	r2, =0x25b0000
	mov	r0, #0xd
	lsl	r1, #16
	bl	__Func_923e4
	ldr	r5, =.L2f6c
	mov	r0, #0xd
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, #0xe9
	mov	r0, #0xe
	lsl	r1, #16
	ldr	r2, =0x2750000
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1d80
	mov	r1, #0xcf
	mov	r0, #0xf
	lsl	r1, #16
	ldr	r2, =0x2610000
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_9207c
.L1d80:
	mov	r1, #0xe3
	mov	r2, #0x91
	lsl	r2, #18
	mov	r0, #0x10
	lsl	r1, #16
	bl	__Func_923e4
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_9207c
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r3, #3
	str	r3, [r6]
	mov	r5, r6
.L1da2:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L1da2
	mov	r0, #0xb
	mov	r1, #0x50
	bl	OvlFunc_2768
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	mov	r6, #0xc0
	lsl	r6, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, r6
	bl	OvlFunc_2780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_2768
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
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_2780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_2780
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_2780
	mov	r0, #0
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_2780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_2768
	b	.L2038

	.pool_aligned

.L2038:
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #3
	mov	r1, r6
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_2780
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_2768
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
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_2780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_2768
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
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	ldr	r0, =OvlFunc_2974
	bl	__Func_4278
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x50
	bl	__Func_30f8
	mov	r0, #0xd
	bl	__Func_920a0
	mov	r0, #0xe
	bl	__Func_920a0
	mov	r0, #0xf
	ldr	r7, =.L3394
	bl	__Func_920a0
	mov	r0, #0x10
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =.L2fc8
	mov	r0, #0xd
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L21c2
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_9207c
.L21c2:
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #2
	mov	r1, #2
	bl	__Func_92b08
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r5, #0xe0
	mov	r0, #2
	mov	r1, #2
	lsl	r5, #8
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_2780
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L226c
	b	.L2372
.L226c:
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2302
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_2780
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_2780
	b	.L2360
.L2302:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_2780
	ldr	r0, =0x14b4
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
.L2360:
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	b	.L2528
.L2372:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x14b6
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_2780
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L23e0
	b	.L2558
.L23e0:
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_2768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L242a
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #3
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_2768
	b	.L243a
.L242a:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L243a:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_2768
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24a6
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_2768
	b	.L24b6
.L24a6:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L24b6:
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24e4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_2780
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_2780
.L24e4:
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_2768
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
.L2528:
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	b	.L2660

	.pool_aligned

.L2558:
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	ldr	r0, =0x14bf
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L25a0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_2780
	mov	r0, #3
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_2768
	b	.L25b0
.L25a0:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L25b0:
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_2768
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_2768
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L261c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0x14
	bl	OvlFunc_2780
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_2768
	b	.L262c
.L261c:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L262c:
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_2768
.L2660:
	mov	r0, #0x11
	bl	__Func_f9080
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
	beq	.L26a4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L26a4:
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
	beq	.L26d4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L26d4:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L271c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L270c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L270c:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L271c:
	ldr	r0, =0x843
	bl	__Func_79358
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_8acc4
	bl	__Func_91750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d3c

.thumb_func_start OvlFunc_2768
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2768

.thumb_func_start OvlFunc_2780
	push	{r5, lr}
	mov	r5, r2
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2780

.thumb_func_start OvlFunc_2798
	push	{lr}
	ldr	r3, [r0, #0x18]
	ldr	r2, =0x1eb8
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L27bc
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L27bc
	ldr	r3, [r0, #0x40]
	cmp	r3, r2
	bne	.L27bc
	bl	__Func_c0f4
.L27bc:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_2798

.thumb_func_start OvlFunc_27c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e40
	ldr	r6, [r3]
	mov	r3, #7
	and	r6, r3
	cmp	r6, #0
	bne	.L284c
	ldr	r3, =.L3398
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L27e4
	mov	r0, #0xc8
	bl	__Func_f9080
.L27e4:
	mov	r1, #0xe7
	mov	r3, #0xe6
	mov	r0, #0x1a
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #17
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L284c
	ldr	r1, [r5, #0x50]
	add	r0, #0x23
	mov	r3, r1
	ldrb	r2, [r0]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =0x1999
	str	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_c300
	mov	r1, #0xe7
	mov	r3, #0x9c
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Func_d14c
	ldr	r1, =.L32d0
	mov	r0, r5
	bl	__Func_c2d8
.L284c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_27c8

.thumb_func_start OvlFunc_2864
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L287c
	mov	r1, #0xa
	bl	__Func_929d8
	b	.L2882
.L287c:
	mov	r1, #7
	bl	__Func_929d8
.L2882:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_2864

.thumb_func_start OvlFunc_288c
	push	{r5, lr}
	ldr	r3, =.L3394
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L28c4
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.L28b4
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2360000
	cmp	r3, r1
	ble	.L28b4
	mov	r1, #0x99
	lsl	r1, #18
	cmp	r3, r1
	blt	.L2912
.L28b4:
	ldr	r1, =0xff35ffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.L2926
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	b	.L2906
.L28c4:
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.L28de
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	cmp	r3, r1
	ble	.L28de
	ldr	r1, =0x248ffff
	cmp	r3, r1
	ble	.L2912
.L28de:
	ldr	r1, =0xff0bffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.L28f6
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x23b0000
	cmp	r3, r1
	ble	.L28f6
	ldr	r1, =0x25cffff
	cmp	r3, r1
	ble	.L2912
.L28f6:
	ldr	r1, =0xff2cffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.L2926
	mov	r1, #0x95
	ldr	r3, [r5, #0x10]
	lsl	r1, #18
.L2906:
	cmp	r3, r1
	ble	.L2926
	mov	r2, #0x9e
	lsl	r2, #18
	cmp	r3, r2
	bge	.L2926
.L2912:
	mov	r0, #0x6a
	bl	__Func_f9080
	ldr	r1, =.L32e4
	mov	r0, r5
	bl	__Func_c2d8
	ldr	r2, =.L3390
	mov	r3, #1
	str	r3, [r2]
.L2926:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_288c

.thumb_func_start OvlFunc_2974
	push	{r5, r6, r7, lr}
	ldr	r2, =.L338c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #2
	beq	.L29a8
	cmp	r3, #2
	bhi	.L298a
	cmp	r3, #1
	beq	.L2990
	b	.L29e6
.L298a:
	cmp	r3, #3
	beq	.L29ca
	b	.L29e6
.L2990:
	ldr	r2, =.L3388
	ldr	r1, =0x3a97
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L299e
	add	r3, #0x32
	str	r3, [r2]
.L299e:
	ldr	r2, =.L3384
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #14
	b	.L29be
.L29a8:
	ldr	r2, =.L3388
	ldr	r1, =0x752f
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L29b6
	add	r3, #0x32
	str	r3, [r2]
.L29b6:
	ldr	r2, =.L3384
	mov	r1, #0xc0
	ldr	r3, [r2]
	lsl	r1, #13
.L29be:
	cmp	r3, r1
	ble	.L29e6
	ldr	r1, =0xffffc000
	add	r3, r1
	str	r3, [r2]
	b	.L29e6
.L29ca:
	ldr	r0, =.L3384
	ldr	r3, =0xff800000
	ldr	r1, [r0]
	cmp	r1, r3
	bge	.L29d8
	str	r5, [r2]
	b	.L29e6
.L29d8:
	ldr	r3, =.L3388
	ldr	r2, [r3]
	add	r2, #0x32
	str	r2, [r3]
	ldr	r2, =0xffffc000
	add	r3, r1, r2
	str	r3, [r0]
.L29e6:
	ldr	r7, =iwram_1e40
	ldr	r3, [r7]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2aa2
	ldr	r0, =0x11d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L2aa2
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r7]
	mov	r2, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.L2a1a
	mov	r0, #0xf6
	bl	__Func_f9080
.L2a1a:
	ldr	r3, =.L338c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2a3c
	bl	__Func_4458
	ldr	r3, =.L3388
	ldr	r3, [r3]
	mul	r3, r0
	ldr	r2, [r6]
	lsr	r3, #16
	lsl	r3, #8
	add	r2, r3
	ldr	r3, =.L3384
	ldr	r3, [r3]
	add	r7, r2, r3
	b	.L2a4a
.L2a3c:
	bl	__Func_4458
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r1, =0xff800000
	add	r3, r0
	add	r7, r3, r1
.L2a4a:
	bl	__Func_4458
	ldr	r2, [r6, #8]
	lsl	r0, #8
	ldr	r3, =0xff800000
	add	r2, r0
	add	r2, r3
	mov	r3, r5
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r1, [r5, #0x50]
	ldr	r3, =0xe666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, r1
	add	r3, #0x26
	str	r7, [r5, #8]
	str	r2, [r5, #0x10]
	strb	r0, [r3]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	ldr	r1, =.L3308
	mov	r0, r5
	bl	__Func_c2d8
.L2aa2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2974

.thumb_func_start OvlFunc_2ad8
	push	{lr}
	mov	r0, #0xd
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2b02
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L2afc
	str	r2, [r0, #0xc]
	b	.L2b02
.L2afc:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b02:
	mov	r0, #0xe
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2b2a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2b24
	str	r1, [r0, #0xc]
	b	.L2b2a
.L2b24:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b2a:
	mov	r0, #0xf
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2b52
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L2b4c
	str	r2, [r0, #0xc]
	b	.L2b52
.L2b4c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b52:
	mov	r0, #0x10
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2b7a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2b74
	str	r1, [r0, #0xc]
	b	.L2b7a
.L2b74:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b7a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ad8

	.section .data

.L2d68:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2d68, (0x2da8-0x2d68)
.L2da8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2da8, (0x2dc0-0x2da8)
.L2dc0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2dc0, (0x2e20-0x2dc0)
.L2e20:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e20, (0x2e54-0x2e20)
.L2e54:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e54, (0x2e88-0x2e54)
.L2e88:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e88, (0x2ebc-0x2e88)
.L2ebc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2ebc, (0x2f48-0x2ebc)
.L2f48:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f48, (0x2f6c-0x2f48)
.L2f6c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f6c, (0x2fc8-0x2f6c)
.L2fc8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2fc8, (0x3024-0x2fc8)
.L3024:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3024, (0x306c-0x3024)
.L306c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x306c, (0x30cc-0x306c)
.L30cc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30cc, (0x30e4-0x30cc)
.L30e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30e4, (0x3294-0x30e4)
.L3294:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3294, (0x32d0-0x3294)
.L32d0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32d0, (0x32e4-0x32d0)
.L32e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32e4, (0x3308-0x32e4)
.L3308:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3308

	.section .bss

	.lcomm	.L3384, 4
	.lcomm	.L3388, 4
	.lcomm	.L338c, 4
	.lcomm	.L3390, 4
	.lcomm	.L3394, 4
	.lcomm	.L3398, 4
