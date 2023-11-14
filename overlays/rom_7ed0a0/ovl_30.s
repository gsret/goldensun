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
	ldr	r0, =.L31f0
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
	ldr	r2, =.L31f0
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
	ldr	r2, =.L3230
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
	ldr	r3, =.L31f0
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
	ldr	r3, =.L3230
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L3248
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
	ldr	r4, =.L31f0
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
	ldr	r5, =.L3248
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
	ldr	r1, =.L31f0
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
	ldr	r0, =.L3248
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
	ldr	r0, =.L3248
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
	ldr	r0, =.L31f0
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
	ldr	r2, =.L31f0
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
	ldr	r4, =.L3248
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
	ldr	r2, =.L31f0
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
	ldr	r4, =.L3248
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
	ldr	r1, =.L3230
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
	ldr	r4, =.L3248
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
	ldr	r2, =.L336c
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
	ldr	r3, =.L336c
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
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_cd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r0
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r3, [r7]
	ldr	r1, =0xfff00000
	mov	r10, r3
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r5, #8]
	mov	r3, #0x80
	ldrh	r1, [r6, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #13
	mov	r2, r5
	bl	__Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	__Func_120dc
	cmp	r0, #1
	beq	.Ldb4
	mov	r0, r6
	mov	r1, r8
	bl	__Func_120dc
	cmp	r0, #0
	bne	.Ldb4
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
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r2, [r3, #8]
	asr	r1, #20
	asr	r2, #20
	lsl	r1, #4
	lsl	r2, #4
	add	r2, #8
	add	r1, #8
	mov	r0, #0
	bl	__Func_92158
	mov	r0, r6
	mov	r1, #6
	bl	__Func_c300
	mov	r1, #1
	mov	r0, r6
	bl	__Func_c528
	mov	r0, #6
	bl	__Func_30f8
	mov	r3, r10
	strb	r3, [r7]
	bl	__Func_91750
	mov	r0, #0
	b	.Ldb6
.Ldb4:
	mov	r0, #1
.Ldb6:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_cd0

.thumb_func_start OvlFunc_dc8
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r2, sp
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	mov	r1, #0x80
	ldr	r3, [r0, #0x10]
	lsl	r1, #14
	add	r3, r1
	str	r3, [r2, #8]
	mov	r0, r2
	bl	OvlFunc_cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_dc8

.thumb_func_start OvlFunc_df4
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r2, sp
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r1, =0xffe00000
	ldr	r3, [r0, #0x10]
	add	r3, r1
	str	r3, [r2, #8]
	mov	r0, r2
	bl	OvlFunc_cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_df4

.thumb_func_start OvlFunc_e20
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ee0
	ldr	r1, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	ldr	r5, [r3]
	add	r3, r1, r2
	mov	r6, #0
	ldrsh	r2, [r3, r6]
	ldr	r3, =0xac
	mov	r4, #0
	cmp	r2, r3
	bne	.Le90
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r6, #0
	ldrsh	r3, [r3, r6]
	sub	r3, #3
	cmp	r3, #0xa
	bhi	.Lea0
	ldr	r2, =.Le58
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Le58:
	.word	.Le84
	.word	.Le84
	.word	.Lea0
	.word	.Lea0
	.word	.Lea0
	.word	.Le88
	.word	.Le88
	.word	.Lea0
	.word	.Lea0
	.word	.Le8c
	.word	.Le8c
.Le84:
	mov	r4, #0x5e
	b	.Lea0
.Le88:
	mov	r4, #0x4a
	b	.Lea0
.Le8c:
	mov	r4, #0x76
	b	.Lea0
.Le90:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r6, #0
	ldrsh	r3, [r3, r6]
	cmp	r3, #0xc
	bne	.Lea0
	mov	r4, #0x5d
.Lea0:
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, r4
	bgt	.Leae
	mov	r3, #0
	str	r3, [r5, #0x18]
	b	.Leb0
.Leae:
	str	r0, [r5, #0x18]
.Leb0:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e20

.thumb_func_start OvlFunc_ec8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x23
	add	r2, r5
	mov	r12, r2
	mov	r3, #2
	ldrb	r2, [r2]
	mov	r1, r3
	orr	r1, r2
	mov	r3, r12
	strb	r1, [r3]
	ldr	r2, [r0, #0x10]
	ldr	r3, [r5, #0x10]
	cmp	r2, r3
	bge	.Lf06
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	add	r3, r2
	ldr	r2, [r5, #0xc]
	add	r2, r3
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	bgt	.Lf06
	mov	r3, #0xfd
	and	r1, r3
	mov	r3, r12
	strb	r1, [r3]
.Lf06:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_ec8

.thumb_func_start OvlFunc_f10
	push	{r5, r6, lr}
	mov	r5, r1
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	cmp	r2, r3
	bgt	.Lf46
	ldr	r3, [r0, #8]
	ldr	r2, [r6, #8]
	str	r3, [r6, #8]
	str	r2, [r0, #8]
	ldr	r3, [r0, #0xc]
	ldr	r2, [r6, #0xc]
	str	r3, [r6, #0xc]
	str	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	str	r3, [r6, #0x10]
	str	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_30f8
.Lf46:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f10

.thumb_func_start OvlFunc_f4c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	sub	sp, #0x38
	mov	r8, r0
	cmp	r3, #0
	beq	.Lf6a
	mov	r1, #1
	bl	__Func_c300
	b	.Lf72
.Lf6a:
	mov	r0, r8
	mov	r1, #2
	bl	__Func_c300
.Lf72:
	ldr	r3, =iwram_1e40
	ldr	r7, [r3]
	mov	r3, #3
	and	r7, r3
	mov	r0, #0
	cmp	r7, #0
	bne	.Lfd0
	ldr	r3, =0x4ccc
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #5
	str	r3, [r6, #4]
	bl	__Func_4458
	lsl	r3, r0, #3
	sub	r3, r0
	mov	r1, r8
	lsr	r3, #16
	ldr	r5, [r1, #8]
	sub	r3, #3
	lsl	r3, #16
	add	r5, r3
	bl	__Func_4458
	lsl	r3, r0, #3
	sub	r3, r0
	mov	r1, r8
	lsr	r3, #16
	ldr	r2, [r1, #0x10]
	sub	r3, #3
	lsl	r3, #16
	ldr	r1, [r1, #0xc]
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #13
	add	r1, r3
	ldr	r3, =0x90001
	mov	r0, r5
	str	r3, [sp, #8]
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_ae8
	mov	r0, #0
.Lfd0:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_f4c

.thumb_func_start OvlFunc_fe8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffd00000
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	ble	.L1020
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xa
	bne	.L1020
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	ldr	r3, =0xffe00000
	mov	r0, #8
	str	r3, [r5, #0xc]
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	b	.L1026
.L1020:
	mov	r3, #0
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
.L1026:
	str	r3, [r5, #0x10]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_fe8

.thumb_func_start OvlFunc_1038
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, #0x3c
.L103e:
	cmp	r6, #0
	beq	.L1054
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	sub	r6, #1
	cmp	r3, r2
	bgt	.L103e
	b	.L1056
.L1054:
	ldr	r2, [r5, #0x14]
.L1056:
	mov	r3, #0
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x3c]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1038

.thumb_func_start OvlFunc_1068
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
	bge	.L1098
	add	r3, #0xf
.L1098:
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
.func_end OvlFunc_1068

.thumb_func_start OvlFunc_10c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__Func_92054
	mov	r6, r0
	bl	__Func_916b0
	mov	r1, #6
	mov	r0, r6
	bl	__Func_c300
	mov	r0, #0
	bl	__Func_92504
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	mov	r1, #0
	mov	r0, r6
	bl	__Func_c528
	mov	r0, #0x55
	add	r0, r6
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r10, r0
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r0, #0xc0
	ldr	r3, [r6, #0x10]
	lsl	r0, #12
	add	r3, r0
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	bl	__Func_d14c
	mov	r0, #6
	bl	__Func_30f8
	add	r3, sp, #0x10
	mov	r8, r3
	ldr	r3, =OvlFunc_1068
	mov	r2, r10
	mov	r0, r8
	mov	r5, #0
	strb	r5, [r2]
	str	r3, [r0, #0x24]
	mov	r0, #0x7f
	bl	__Func_f9080
	mov	r7, #0
.L1142:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xfffe0000
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	and	r3, r7
	cmp	r3, #0
	beq	.L11a6
	bl	__Func_4458
	mov	r1, #0xa
	bl	_Func_b50
	ldr	r3, =0x3332
	sub	r0, #5
	mov	r5, r0
	mul	r5, r3
	bl	__Func_4458
	mov	r1, #0xa
	bl	_Func_b50
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	add	r3, r0
	lsl	r4, r3, #6
	sub	r4, r3
	lsl	r4, #3
	add	r4, r0
	ldr	r3, =0xffff8003
	neg	r4, r4
	add	r4, r3
	mov	r3, #0
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	str	r3, [sp]
	ldr	r3, =0x1000001
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, r5
	str	r4, [sp, #4]
	bl	OvlFunc_ae8
.L11a6:
	add	r7, #1
	cmp	r7, #7
	bls	.L1142
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c528
	mov	r3, #3
	mov	r0, r10
	strb	r3, [r0]
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c4

.thumb_func_start OvlFunc_11e0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x44
	bl	__Func_92054
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #7
	str	r3, [r2, #4]
	ldr	r3, =OvlFunc_1068
	str	r3, [r2, #0x24]
	mov	r3, #0
	mov	r10, r0
	mov	r9, r2
	mov	r8, r3
	add	r7, sp, #0x38
.L1208:
	mov	r2, r8
	lsl	r5, r2, #12
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
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	ldr	r3, =0x1030001
	str	r3, [sp, #8]
	mov	r3, r9
	str	r3, [sp, #0xc]
	mov	r3, r5
	str	r6, [sp, #4]
	bl	OvlFunc_ae8
	mov	r2, #2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x10
	bls	.L1208
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11e0

.thumb_func_start OvlFunc_1270
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.L1288
	ldr	r0, =.L3474
	b	.L1294
.L1288:
	ldr	r3, =0xad
	cmp	r2, r3
	bne	.L1292
	ldr	r0, =.L3654
	b	.L1294
.L1292:
	ldr	r0, =.L342c
.L1294:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1270

.thumb_func_start OvlFunc_12b0
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xad
	mov	r0, #0
	cmp	r2, r3
	bne	.L12c8
	ldr	r0, =.L381c
.L12c8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_12b0

.thumb_func_start OvlFunc_12d8
	ldr	r0, =.L385c
	bx	lr
.func_end OvlFunc_12d8

.thumb_func_start OvlFunc_12e0
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.L12f8
	ldr	r5, =.L38f4
	b	.L12fa
.L12f8:
	ldr	r5, =.L3a74
.L12fa:
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_12e0

.thumb_func_start OvlFunc_1318
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #9
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x26
	mov	r2, #5
	mov	r3, #5
	bl	__Func_10704
	bl	OvlFunc_c4
	bl	OvlFunc_23a0
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1318

.thumb_func_start OvlFunc_1348
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r1, =0xffe00000
	ldr	r3, [r0, #8]
	mov	r2, sp
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r2
	str	r3, [r2, #8]
	bl	OvlFunc_cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_1348

.thumb_func_start OvlFunc_1374
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #0x1d
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5d
	mov	r1, #0x1e
	mov	r2, #6
	mov	r3, #5
	bl	__Func_10704
	bl	OvlFunc_c4
	bl	OvlFunc_2410
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1374

.thumb_func_start OvlFunc_13a4
	push	{lr}
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92708
	pop	{r0}
	bx	r0
.func_end OvlFunc_13a4

.thumb_func_start OvlFunc_13b4
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r1, #0x80
	ldr	r3, [r0, #8]
	lsl	r1, #14
	mov	r2, sp
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r2
	str	r3, [r2, #8]
	bl	OvlFunc_cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_13b4

.thumb_func_start OvlFunc_13e0
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #0x31
	str	r3, [sp, #4]
	mov	r5, #0x19
	mov	r0, #0x59
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r0, #0x59
	mov	r1, #0x33
	mov	r2, #8
	mov	r3, #5
	str	r5, [sp]
	bl	__Func_10704
	bl	OvlFunc_c4
	bl	OvlFunc_2480
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13e0

.thumb_func_start OvlFunc_1424
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r2, sp
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	mov	r1, #0x80
	ldr	r3, [r0, #0x10]
	lsl	r1, #14
	add	r3, r1
	str	r3, [r2, #8]
	mov	r0, r2
	bl	OvlFunc_cd0
	cmp	r0, #0
	beq	.L1450
	bl	OvlFunc_13e0
.L1450:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_1424

.thumb_func_start OvlFunc_1458
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1488
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xf7
	and	r3, r2
	b	.L14a2
.L1488:
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
.L14a2:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_1458

.thumb_func_start OvlFunc_14ac
	push	{lr}
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L14dc
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xf7
	and	r3, r2
	b	.L14f6
.L14dc:
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
.L14f6:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_14ac

.thumb_func_start OvlFunc_1500
	push	{lr}
	mov	r0, #0x97
	lsl	r0, #4
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1500

.thumb_func_start OvlFunc_1510
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x20
	bne	.L1528
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x32
	beq	.L152c
.L1528:
	bl	OvlFunc_1348
.L152c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1510

.thumb_func_start OvlFunc_1530
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bne	.L1548
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x34
	beq	.L154c
.L1548:
	bl	OvlFunc_df4
.L154c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1530

.thumb_func_start OvlFunc_1550
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2e
	beq	.L156c
	b	.L16d2
.L156c:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xba
	mov	r2, #0xb8
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xfd
	lsl	r0, #18
	bl	OvlFunc_9f4
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r8, r0
	mov	r0, #0x12
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xb9
	bl	__Func_f9080
	mov	r7, #0
.L15a4:
	mov	r0, #3
	bl	__Func_30f8
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r2, =0xffff0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	bl	__Func_4458
	mov	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r3, #0xb8
	lsl	r3, #18
	lsl	r5, #16
	add	r5, r3
	bl	__Func_4458
	lsl	r2, r0, #3
	add	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0x80
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r1, #0
	mov	r3, #0
	add	r7, #1
	str	r6, [sp, #0xc]
	bl	OvlFunc_ae8
	cmp	r7, #0xf
	bls	.L15a4
	mov	r3, #0x31
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #8
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x12
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_924d4
	mov	r0, r8
	bl	__Func_c0f4
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, #0xba
	mov	r2, #0x88
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r5, #1
	mov	r3, #8
	mov	r6, #3
	mov	r0, #0x3a
	mov	r1, #8
	mov	r2, #0x31
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r3, #8
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x31
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x971
	bl	__Func_79358
.L16d2:
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1550

.thumb_func_start OvlFunc_16f4
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_c4
	bl	__Func_91750
	bl	OvlFunc_1550
	pop	{r0}
	bx	r0
.func_end OvlFunc_16f4

.thumb_func_start OvlFunc_170c
	push	{lr}
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92950
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_170c

.thumb_func_start OvlFunc_1744
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x30
	beq	.L1760
	b	.L18d0
.L1760:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	bne	.L176c
	b	.L18d0
.L176c:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x89
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	ldr	r0, =0x3020000
	bl	OvlFunc_9f4
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r8, r0
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xb9
	bl	__Func_f9080
	mov	r7, #0
.L17a2:
	mov	r0, #3
	bl	__Func_30f8
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r2, =0xffff0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	bl	__Func_4458
	mov	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r3, #0xc0
	lsl	r3, #18
	lsl	r5, #16
	add	r5, r3
	bl	__Func_4458
	lsl	r2, r0, #3
	add	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0xe0
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r1, #0
	mov	r3, #0
	add	r7, #1
	str	r6, [sp, #0xc]
	bl	OvlFunc_ae8
	cmp	r7, #0xf
	bls	.L17a2
	mov	r3, #0x2d
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0xe
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, r8
	bl	__Func_c0f4
	mov	r3, #0x30
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, #0xc2
	mov	r2, #0xe8
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r5, #1
	mov	r3, #0xe
	mov	r6, #3
	mov	r0, #0x3a
	mov	r1, #8
	mov	r2, #0x2d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r3, #0xe
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x2d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x972
	bl	__Func_79358
.L18d0:
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1744

.thumb_func_start OvlFunc_18f8
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_c4
	bl	__Func_91750
	bl	OvlFunc_1744
	pop	{r0}
	bx	r0
.func_end OvlFunc_18f8

.thumb_func_start OvlFunc_1910
	push	{lr}
	ldr	r1, =.L33b8
	mov	r0, #0x13
	bl	__Func_9207c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1910

.thumb_func_start OvlFunc_1924
	push	{lr}
	ldr	r0, =0x202
	bl	__Func_79358
	bl	OvlFunc_1744
	pop	{r0}
	bx	r0
.func_end OvlFunc_1924

.thumb_func_start OvlFunc_1938
	push	{lr}
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92950
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x201
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1938

.thumb_func_start OvlFunc_1970
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x982
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1992
	ldr	r0, =0x983
	bl	__Func_79338
	cmp	r0, #0
	beq	.L199c
.L1992:
	ldr	r0, =0x268a
	mov	r1, #1
	bl	__Func_1776c
	b	.L19a4
.L199c:
	ldr	r0, =0x2689
	mov	r1, #1
	bl	__Func_1776c
.L19a4:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1970

.thumb_func_start OvlFunc_19bc
	push	{lr}
	bl	__Func_916b0
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_19bc

.thumb_func_start OvlFunc_19cc
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_c4
	bl	__Func_91750
	bl	OvlFunc_19bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_19cc

.thumb_func_start OvlFunc_19e4
	push	{lr}
	ldr	r1, =.L33b8
	mov	r0, #8
	bl	__Func_9207c
	ldr	r0, =0x203
	bl	__Func_79358
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =OvlFunc_fe8
	str	r3, [r0, #0x6c]
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e4

.thumb_func_start OvlFunc_1a10
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #9
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #9
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92950
	mov	r1, #2
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #9
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	ldr	r5, =OvlFunc_ec8
	str	r5, [r0, #0x6c]
	mov	r0, #8
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a10

.thumb_func_start OvlFunc_1a98
	push	{r5, lr}
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1a98

.thumb_func_start OvlFunc_1abc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r9, r0
	lsl	r1, #8
	mov	r0, #0xa
	lsl	r2, #7
	sub	sp, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92064
	mov	r2, r9
	cmp	r2, #0
	beq	.L1af2
	mov	r0, #0xb4
	bl	__Func_f9080
.L1af2:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, =.L3350
	mov	r6, r0
	mov	r0, #0xa
	mov	r8, r3
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	mov	r0, #0xa
	bl	__Func_92054
	lsl	r5, #2
	mov	r3, r8
	ldr	r2, [r3, r5]
	ldr	r1, [r6, #8]
	ldr	r3, [r0, #0x10]
	mov	r0, r10
	bl	__Func_d14c
	mov	r0, #0xb
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0xb
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	mov	r0, #0xb
	bl	__Func_92054
	lsl	r5, #2
	mov	r3, r8
	ldr	r2, [r3, r5]
	ldr	r1, [r6, #8]
	ldr	r3, [r0, #0x10]
	mov	r0, r10
	bl	__Func_d14c
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r2, r8
	lsl	r3, #2
	ldr	r3, [r2, r3]
	mov	r0, #0xb
	str	r3, [r5, #0xc]
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r2, r8
	lsl	r3, #2
	ldr	r3, [r2, r3]
	str	r3, [r5, #0xc]
	mov	r3, r9
	cmp	r3, #0
	beq	.L1baa
	ldr	r0, =0x121
	bl	__Func_f9080
.L1baa:
	mov	r7, #0
.L1bac:
	mov	r6, r7
	add	r6, #0xa
	mov	r0, r6
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L1bc0
	ldr	r2, =0xffff
	add	r3, r2
.L1bc0:
	cmp	r3, #0
	bge	.L1c02
	mov	r0, r6
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L1bd4
	ldr	r2, =0xffff
	add	r3, r2
.L1bd4:
	mov	r2, #0x1e
	asr	r3, #16
	neg	r2, r2
	cmp	r3, r2
	ble	.L1c02
	mov	r0, r6
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, r6
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	asr	r5, #20
	str	r3, [sp, #4]
	mov	r0, #4
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
.L1c02:
	add	r7, #1
	cmp	r7, #4
	bls	.L1bac
	mov	r0, r9
	bl	__Func_9163c
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1abc

.thumb_func_start OvlFunc_1c2c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =0xffb00000
	mov	r3, #0
	mov	r7, r0
	mov	r10, r2
	mov	r8, r3
.L1c3e:
	mov	r6, r8
	add	r6, #0xa
	cmp	r6, r7
	beq	.L1ca2
	mov	r0, r6
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r5, #20
	asr	r3, #20
	cmp	r5, r3
	bne	.L1ca2
	mov	r0, r6
	bl	__Func_92054
	ldr	r5, [r0, #0x10]
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r5, #20
	asr	r3, #20
	cmp	r5, r3
	bne	.L1ca2
	mov	r0, r6
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r3, r2
	cmp	r10, r3
	bgt	.L1ca2
	mov	r0, r6
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r2, r3
	mov	r0, r7
	mov	r10, r2
	bl	__Func_92054
	add	r0, #0x64
	strh	r6, [r0]
.L1ca2:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #4
	bls	.L1c3e
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, r7
	bl	__Func_92064
	mov	r0, r7
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r7
	bl	__Func_92054
	mov	r5, r0
	mov	r0, r7
	bl	__Func_92054
	ldr	r1, [r5, #8]
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	mov	r0, r6
	bl	__Func_d14c
	mov	r0, r7
	bl	__Func_923c4
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, r7
	bl	OvlFunc_11e0
	mov	r0, #0x1e
	bl	__Func_9163c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c2c

.thumb_func_start OvlFunc_1d04
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x70
	bl	__Func_916b0
	mov	r6, #0
	mov	r10, sp
	mov	r11, r6
	mov	r7, #0xc
.L1d20:
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	ldrb	r2, [r3, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.L1de4
	mov	r2, #0x80
	lsl	r2, #2
	add	r5, r6, r2
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1de4
	mov	r0, r7
	bl	__Func_92054
	bl	OvlFunc_1038
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, r5
	bl	__Func_79358
	b	.L1f40
.L1d5e:
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r2, r10
	str	r3, [r2, #8]
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x10]
	mov	r0, r7
	bl	__Func_92054
	mov	r5, r8
	add	r5, #0xc
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, r7
	str	r3, [r6, #8]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, r7
	str	r3, [r6, #0xc]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, r5
	str	r3, [r6, #0x10]
	bl	__Func_92054
	mov	r2, r10
	ldr	r3, [r2, #8]
	str	r3, [r0, #8]
	mov	r0, r5
	bl	__Func_92054
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	str	r3, [r0, #0xc]
	mov	r0, r5
	bl	__Func_92054
	mov	r2, r10
	ldr	r3, [r2, #0x10]
	mov	r9, r8
	str	r3, [r0, #0x10]
	b	.L1e56
.L1de4:
	mov	r0, r7
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #9
	beq	.L1df4
	b	.L1f36
.L1df4:
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r6, r3
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L1e06
	b	.L1f36
.L1e06:
	mov	r0, r7
	bl	__Func_92054
	str	r5, [r0, #0x14]
	mov	r0, r7
	bl	__Func_92054
	str	r5, [r0, #0x28]
	mov	r0, r7
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, r7
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, r7
	bl	__Func_92054
	mov	r2, #0
	add	r0, #0x64
	mov	r8, r2
	strh	r5, [r0]
	mov	r9, r6
	cmp	r8, r6
	bge	.L1e56
.L1e40:
	mov	r0, #0x80
	lsl	r0, #2
	add	r0, r8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1d5e
	mov	r3, #1
	add	r8, r3
	cmp	r8, r6
	blt	.L1e40
.L1e56:
	mov	r5, r9
	add	r5, #0xc
	mov	r0, r5
	bl	__Func_92054
	mov	r2, r11
	str	r2, [r0, #0x14]
	mov	r0, r5
	bl	__Func_92054
	mov	r3, r11
	str	r3, [r0, #0x28]
	mov	r0, r5
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, r5
	bl	__Func_92054
	mov	r2, r11
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, r5
	bl	__Func_92054
	mov	r3, r11
	add	r0, #0x64
	strh	r3, [r0]
	mov	r1, #0xc0
	mov	r0, #0xc0
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_933d4
	bl	__Func_93554
	mov	r2, r11
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r0, #0xa8
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r1, #12
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, r5
	bl	OvlFunc_1c2c
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #8
	bne	.L1eee
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	b	.L1f08
.L1eee:
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
.L1f08:
	strh	r3, [r0]
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, =OvlFunc_1a98
	str	r3, [r0, #0x6c]
	mov	r0, #0x28
	bl	OvlFunc_1abc
	mov	r0, r5
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	add	r0, r9
	bl	__Func_79358
	b	.L1f40
.L1f36:
	add	r6, #1
	add	r7, #1
	cmp	r6, #2
	bgt	.L1f40
	b	.L1d20
.L1f40:
	bl	__Func_91750
	add	sp, #0x70
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d04

.thumb_func_start OvlFunc_1f5c
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_c4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f5c

.thumb_func_start OvlFunc_1f70
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2d
	bne	.L1f8c
	ldr	r0, =0x974
	bl	__Func_79358
	b	.L1f92
.L1f8c:
	ldr	r0, =0x974
	bl	__Func_79374
.L1f92:
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2e
	bne	.L1fa8
	ldr	r0, =0x975
	bl	__Func_79358
	b	.L1fae
.L1fa8:
	ldr	r0, =0x975
	bl	__Func_79374
.L1fae:
	bl	OvlFunc_252c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f70

.thumb_func_start OvlFunc_1fc4
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_c4
	bl	OvlFunc_1f70
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fc4

.thumb_func_start OvlFunc_1fdc
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0x31
	mov	r0, #0x48
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, #0x71
	mov	r3, #1
	mov	r1, #0x2b
	mov	r2, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8edac
	mov	r0, #0x65
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8edac
	mov	r1, #0x88
	mov	r2, #0xc6
	mov	r0, #0xf
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc6
	mov	r2, #0xae
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fdc

.thumb_func_start OvlFunc_2040
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0x31
	mov	r0, #8
	mov	r1, #0x71
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, #0x31
	mov	r3, #1
	mov	r1, #0x6b
	mov	r2, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_8edac
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x65
	neg	r1, r1
	neg	r2, r2
	bl	__Func_8edac
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2040

.thumb_func_start OvlFunc_20a4
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #0x13
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #8
	mov	r0, #0x53
	bl	__Func_10704
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x16
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x16
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r3, #1
	mov	r1, #0x38
	mov	r2, #1
	asr	r5, #20
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r6, #0
	cmp	r3, #0x19
	bne	.L2194
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x31
	bne	.L2194
	mov	r6, #1
.L2194:
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L21b2
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x31
	bne	.L21b2
	add	r6, #1
.L21b2:
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x19
	bne	.L21d0
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2f
	bne	.L21d0
	add	r6, #1
.L21d0:
	mov	r0, #0x16
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L21ee
	mov	r0, #0x16
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2f
	bne	.L21ee
	add	r6, #1
.L21ee:
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x18
	bne	.L220c
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x30
	bne	.L220c
	add	r6, #1
.L220c:
	cmp	r6, #5
	bne	.L227c
	ldr	r0, =0x984
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2220
	bl	__Func_91750
	b	.L22e4
.L2220:
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc3
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x984
	bl	__Func_79358
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L33ec
	mov	r1, #0x20
	mov	r2, #0x2e
	bl	__Func_10560
	mov	r3, #0x20
	mov	r2, #0x2f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #0x3c
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x28
	bl	__Func_9163c
	b	.L22e0
.L227c:
	ldr	r0, =0x984
	bl	__Func_79338
	cmp	r0, #0
	beq	.L22e0
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc3
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x984
	bl	__Func_79374
	mov	r0, #0x9f
	bl	__Func_f9080
	ldr	r0, =.L340c
	mov	r1, #0x20
	mov	r2, #0x2e
	bl	__Func_10560
	mov	r3, #0x20
	mov	r2, #0x2f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1f
	mov	r1, #0x2f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0x28
	bl	__Func_9163c
.L22e0:
	bl	__Func_91750
.L22e4:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20a4

.thumb_func_start OvlFunc_2300
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #0x13
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #8
	bl	__Func_10704
	bl	OvlFunc_c4
	bl	OvlFunc_20a4
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2300

.thumb_func_start OvlFunc_2330
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x268b
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2330

.thumb_func_start OvlFunc_2354
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2354

.thumb_func_start OvlFunc_2370
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.L2388
	ldr	r0, =.L3c0c
	b	.L238a
.L2388:
	ldr	r0, =.L3ef4
.L238a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_2370

.thumb_func_start OvlFunc_23a0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #9
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r2, #5
	mov	r0, #0x49
	mov	r1, #0x26
	bl	__Func_10704
	mov	r1, #8
	mov	r0, #9
	bl	OvlFunc_f10
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	asr	r5, #20
	mov	r0, #2
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_23a0

.thumb_func_start OvlFunc_2410
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x1d
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r2, #6
	mov	r0, #0x5d
	mov	r1, #0x1e
	bl	__Func_10704
	mov	r1, #0xa
	mov	r0, #0xb
	bl	OvlFunc_f10
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	asr	r5, #20
	mov	r0, #2
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2410

.thumb_func_start OvlFunc_2480
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x31
	str	r3, [sp, #4]
	mov	r5, #0x19
	mov	r0, #0x59
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r1, #0x33
	mov	r2, #8
	mov	r3, #5
	mov	r0, #0x59
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x16
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x16
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	asr	r5, #20
	mov	r0, #0x16
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2480

.thumb_func_start OvlFunc_252c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x2c
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x13
	mov	r2, #4
	mov	r3, #1
	mov	r0, #0x6c
	bl	__Func_10704
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, #1
	mov	r1, r5
	asr	r2, #20
	mov	r6, #0xff
	mov	r0, #0
	str	r3, [sp]
	str	r6, [sp, #4]
	mov	r8, r3
	bl	OvlFunc_244
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, r8
	asr	r2, #20
	mov	r1, r5
	mov	r0, #0
	str	r3, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_244
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_252c

.thumb_func_start OvlFunc_259c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r5, =ewram_240
	ldr	r6, =0xac
	ldrsh	r2, [r5, r2]
	sub	sp, #8
	cmp	r2, r6
	beq	.L25c2
	ldr	r3, =0xad
	cmp	r2, r3
	bne	.L25d8
.L25c2:
	mov	r0, #0
	bl	__Func_91494
	ldr	r2, =0x242
	mov	r1, #0x90
	add	r3, r5, r2
	lsl	r1, #2
	mov	r2, #1
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r6, [r3]
.L25d8:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, r6
	beq	.L25e8
	b	.L2a30
.L25e8:
	add	r2, #2
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r2, r3, #1
	cmp	r2, #0xc
	bls	.L25fa
	bl	.L2fda
.L25fa:
	lsl	r3, r2, #2
	ldr	r2, =.L2604
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2604:
	.word	.L2638
	.word	.L2638
	.word	.L270e
	.word	.L270e
	.word	.L274e
	.word	.L274e
	.word	.L274e
	.word	.L2792
	.word	.L2792
	.word	.L27d2
	.word	.L27d2
	.word	.L29a8
	.word	.L29a8
.L2638:
	ldr	r0, =0x982
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2694
	mov	r3, #5
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #9
	bl	__Func_10424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x49
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x12
	mov	r1, #0x51
	mov	r2, #9
	mov	r3, #0x4b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x4d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x4f
	b	.L26e2
.L2694:
	ldr	r0, =0x983
	bl	__Func_79338
	cmp	r0, #0
	bne	.L26a2
	bl	.L2fda
.L26a2:
	mov	r3, #5
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0xd
	mov	r2, #0x4a
	mov	r3, #9
	bl	__Func_10424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x12
	mov	r1, #0x55
	mov	r2, #0xb
	mov	r3, #0x4a
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xd
	mov	r3, #0x4b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x12
	mov	r1, #0x55
	mov	r2, #0xb
	mov	r3, #0x4c
.L26e2:
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xb
	mov	r3, #0x4e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xd
	mov	r3, #0x4f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	bl	.L2fda
.L270e:
	bl	OvlFunc_23a0
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, =OvlFunc_ec8
	str	r5, [r0, #0x6c]
	mov	r0, #9
	b	.L2a1e
.L274e:
	ldr	r0, =0x982
	bl	__Func_79338
	cmp	r0, #0
	beq	.L276c
	mov	r3, #0x1e
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #2
	bl	__Func_105d4
.L276c:
	ldr	r0, =0x983
	bl	__Func_79338
	cmp	r0, #0
	bne	.L277a
	bl	.L2fda
.L277a:
	mov	r3, #0x20
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #2
	bl	__Func_105d4
	bl	.L2fda
.L2792:
	bl	OvlFunc_2410
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r5, =OvlFunc_ec8
	str	r5, [r0, #0x6c]
	mov	r0, #0xb
	b	.L2a1e
.L27d2:
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x14
	mov	r1, #0xf
	bl	__Func_92950
	mov	r0, #0x15
	mov	r1, #0xf
	bl	__Func_92950
	ldr	r0, =0x971
	bl	__Func_79338
	cmp	r0, #0
	beq	.L289c
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x31
	mov	r3, #8
	bl	__Func_10424
	mov	r3, #0x31
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #8
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x12
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_924d4
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, #0xba
	mov	r2, #0x88
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x12
	bl	__Func_923e4
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, =0xfff00000
	mov	r1, #0xba
	mov	r2, #0x88
	str	r3, [r0, #0xc]
	lsl	r1, #18
	mov	r0, #0x14
	lsl	r2, #16
	bl	__Func_923e4
.L289c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L28b8
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0x14
	mov	r1, #5
	bl	__Func_924d4
.L28b8:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L28ca
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_924d4
.L28ca:
	ldr	r0, =0x972
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2952
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x2d
	mov	r3, #0xe
	bl	__Func_10424
	mov	r3, #0x2d
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0xe
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r3, #0x30
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, #0xc2
	mov	r2, #0xe8
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, =0xfff00000
	mov	r1, #0xc2
	mov	r2, #0xe8
	str	r3, [r0, #0xc]
	lsl	r1, #18
	mov	r0, #0x15
	lsl	r2, #16
	bl	__Func_923e4
	ldr	r0, =0x202
	bl	__Func_79358
.L2952:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L295e
	b	.L2fda
.L295e:
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0x15
	mov	r1, #5
	bl	__Func_924d4
	b	.L2fda

	.pool_aligned

.L29a8:
	bl	OvlFunc_2480
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
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
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =OvlFunc_ec8
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
.L2a1e:
	bl	__Func_92054
	mov	r1, #0xc8
	str	r5, [r0, #0x6c]
	lsl	r1, #4
	ldr	r0, =OvlFunc_e20
	bl	__Func_41d8
	b	.L2fda
.L2a30:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x11
	bls	.L2a40
	b	.L2fda
.L2a40:
	ldr	r2, =.L2a48
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2a48:
	.word	.L2fda
	.word	.L2a90
	.word	.L2a90
	.word	.L2a90
	.word	.L2bac
	.word	.L2bac
	.word	.L2aee
	.word	.L2aee
	.word	.L2db2
	.word	.L2db2
	.word	.L2db2
	.word	.L2db2
	.word	.L2df6
	.word	.L2e1a
	.word	.L2e1a
	.word	.L2fda
	.word	.L2fda
	.word	.L2fc2
.L2a90:
	ldr	r3, =0x242
	mov	r1, #0x90
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	lsl	r1, #2
	ldr	r2, =0xb0
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r0, =0x12f
	bl	__Func_79374
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_92950
	ldr	r0, =0x974
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2ad0
	mov	r1, #0xb6
	mov	r2, #0x9c
	mov	r0, #0x11
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
.L2ad0:
	ldr	r0, =0x975
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2ae8
	mov	r1, #0xba
	mov	r2, #0x9c
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
.L2ae8:
	bl	OvlFunc_252c
	b	.L2fda
.L2aee:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_92b08
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #0xf
	mov	r0, #9
	bl	__Func_92950
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2b42
	b	.L2fda
.L2b42:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92950
	mov	r1, #5
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	ldr	r5, =OvlFunc_ec8
	str	r5, [r0, #0x6c]
	mov	r0, #8
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	b	.L2fda

	.pool_aligned

.L2bac:
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r7, r0
	cmp	r7, #0
	beq	.L2bba
	b	.L2daa
.L2bba:
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x55
	strb	r7, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x55
	strb	r7, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r5, =0xffd00000
	str	r5, [r0, #0xc]
	mov	r0, #0xb
	bl	__Func_92054
	str	r5, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r2, #2
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r1, r8
	orr	r3, r1
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #3
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x64
	strh	r5, [r0]
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_92b08
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_92b08
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r6, .L2c8c	@ 0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	b	.L2c98

	.align	2, 0
.L2c8c:
	.word	0
	.pool

.L2c98:
	bl	__Func_c528
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	add	r0, #0x64
	strh	r7, [r0]
	cmp	r3, #5
	beq	.L2ccc
	b	.L2fda
.L2ccc:
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, =0xffe00000
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, =0xffc00000
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #4
	add	r0, #0x64
	mov	r1, #0xc8
	mov	r2, #0x98
	lsl	r1, #16
	lsl	r2, #16
	strh	r3, [r0]
	mov	r0, #0xc
	bl	__Func_923e4
	mov	r0, #0xc
	bl	__Func_92054
	mov	r3, #0xb
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, =OvlFunc_1a98
	str	r5, [r0, #0x6c]
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r8
	orr	r3, r1
	mov	r2, #0x98
	mov	r1, #0xc8
	lsl	r1, #16
	lsl	r2, #16
	strb	r3, [r0]
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, #0xc
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	mov	r1, #0x88
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r1, #16
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_923e4
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r8
	orr	r3, r1
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79358
	ldr	r0, =0x202
	bl	__Func_79358
.L2daa:
	mov	r0, #0
	bl	OvlFunc_1abc
	b	.L2fda
.L2db2:
	ldr	r0, =0x982
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2dd0
	mov	r3, #0x10
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_105d4
.L2dd0:
	ldr	r0, =0x983
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2dee
	mov	r3, #0x16
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_105d4
.L2dee:
	ldr	r0, =0x973
	bl	__Func_79358
	b	.L2fda
.L2df6:
	mov	r3, #8
	mov	r2, #0x71
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #8
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	bl	OvlFunc_1fdc
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_e20
	lsl	r1, #4
	bl	__Func_41d8
	b	.L2fda
.L2e1a:
	mov	r0, #1
	bl	__Func_9163c
	ldr	r0, =0x984
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2e84
	mov	r3, #0x20
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x18
	mov	r1, #0x3b
	mov	r2, #1
	bl	__Func_105d4
	mov	r1, #0xcc
	mov	r2, #0xc6
	mov	r0, #0x13
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xbc
	mov	r2, #0xc6
	mov	r0, #0x14
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xcc
	mov	r2, #0xbe
	mov	r0, #0x15
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xbc
	mov	r2, #0xbe
	mov	r0, #0x16
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc4
	mov	r2, #0xc2
	mov	r0, #0x17
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
.L2e84:
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_92950
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_92950
	mov	r0, #0x16
	mov	r1, #0xa
	bl	__Func_92950
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #2
	mov	r0, #0x17
	bl	__Func_924d4
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x16
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x16
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	asr	r5, #20
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	b	.L2fda
.L2fc2:
	mov	r3, #0x31
	mov	r2, #0x6b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	bl	OvlFunc_1fdc
.L2fda:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_259c

	.section .data

.L31f0:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x31f0, (0x3230-0x31f0)
.L3230:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3230, (0x3248-0x3230)
.L3248:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3248, (0x3350-0x3248)
.L3350:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3350, (0x336c-0x3350)
.L336c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x336c, (0x33b8-0x336c)
.L33b8:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x33b8, (0x33ec-0x33b8)
.L33ec:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x33ec, (0x340c-0x33ec)
.L340c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x340c, (0x342c-0x340c)
.L342c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x342c, (0x3474-0x342c)
.L3474:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3474, (0x3654-0x3474)
.L3654:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3654, (0x381c-0x3654)
.L381c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x381c, (0x385c-0x381c)
.L385c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x385c, (0x38f4-0x385c)
.L38f4:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x38f4, (0x3a74-0x38f4)
.L3a74:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3a74, (0x3c0c-0x3a74)
.L3c0c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3c0c, (0x3ef4-0x3c0c)
.L3ef4:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3ef4
