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
	ldr	r0, =.L315c
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
	ldr	r2, =.L315c
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
	ldr	r2, =.L319c
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
	ldr	r3, =.L315c
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
	ldr	r3, =.L319c
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L31b4
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
	ldr	r4, =.L315c
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
	ldr	r5, =.L31b4
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
	ldr	r1, =.L315c
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
	ldr	r0, =.L31b4
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
	ldr	r0, =.L31b4
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
	ldr	r0, =.L315c
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
	ldr	r2, =.L315c
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
	ldr	r4, =.L31b4
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
	ldr	r2, =.L315c
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
	ldr	r4, =.L31b4
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
	ldr	r1, =.L319c
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
	ldr	r4, =.L31b4
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
	ldr	r2, =.L32d4
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
	ldr	r3, =.L32d4
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
	bx	lr
.func_end OvlFunc_cc0

.thumb_func_start OvlFunc_cc4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	bne	.Lcdc
	ldr	r0, =.L3310
	b	.Ld06
.Lcdc:
	ldr	r3, =0x72
	cmp	r2, r3
	bne	.Lce6
	ldr	r0, =.L3358
	b	.Ld06
.Lce6:
	ldr	r3, =0x7b
	cmp	r2, r3
	bne	.Lcf0
	ldr	r0, =.L33a0
	b	.Ld06
.Lcf0:
	ldr	r3, =0x7c
	cmp	r2, r3
	bne	.Lcfa
	ldr	r0, =.L3400
	b	.Ld06
.Lcfa:
	ldr	r3, =0x7d
	cmp	r2, r3
	bne	.Ld04
	ldr	r0, =.L3448
	b	.Ld06
.Ld04:
	ldr	r0, =.L3478
.Ld06:
	pop	{r1}
	bx	r1
.func_end OvlFunc_cc4

.thumb_func_start OvlFunc_d3c
	mov	r0, #0
	bx	lr
.func_end OvlFunc_d3c

.thumb_func_start OvlFunc_d40
	ldr	r0, =.L3508
	bx	lr
.func_end OvlFunc_d40

.thumb_func_start OvlFunc_d48
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	bne	.Ld60
	ldr	r0, =.L3610
	b	.Ld7c
.Ld60:
	ldr	r3, =0x7b
	cmp	r2, r3
	bne	.Ld6a
	ldr	r0, =.L3718
	b	.Ld7c
.Ld6a:
	ldr	r3, =0x86
	cmp	r2, r3
	bgt	.Ld7a
	ldr	r3, =0x7e
	cmp	r2, r3
	blt	.Ld7a
	ldr	r0, =.L3850
	b	.Ld7c
.Ld7a:
	ldr	r0, =.L35f8
.Ld7c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d48

.thumb_func_start OvlFunc_da4
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
	bge	.Ldd4
	add	r3, #0xf
.Ldd4:
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
.func_end OvlFunc_da4

.thumb_func_start OvlFunc_e00
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x44
	bl	__Func_92054
	ldr	r3, =OvlFunc_da4
	add	r2, sp, #0x10
	str	r3, [r2, #0x24]
	mov	r3, #0
	mov	r10, r0
	mov	r9, r2
	mov	r8, r3
	add	r7, sp, #0x38
.Le20:
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
	ldr	r3, =0x1000001
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
	bls	.Le20
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e00

.thumb_func_start OvlFunc_e88
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r5, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r1, #5
	bl	__Func_91f90
	ldr	r3, =0x22b
	add	r5, r3
	mov	r3, #3
	strb	r3, [r5]
	mov	r0, #0x54
	mov	r1, #5
	bl	__Func_91eb0
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e88

.thumb_func_start OvlFunc_ec4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	bne	.Ledc
	ldr	r0, =.L3904
	b	.Lf06
.Ledc:
	ldr	r3, =0x72
	cmp	r2, r3
	bne	.Lee6
	ldr	r0, =.L38e0
	b	.Lf06
.Lee6:
	ldr	r3, =0x7b
	cmp	r2, r3
	bne	.Lef0
	ldr	r0, =.L39f4
	b	.Lf06
.Lef0:
	ldr	r3, =0x7c
	cmp	r2, r3
	bne	.Lefa
	ldr	r0, =.L3d48
	b	.Lf06
.Lefa:
	ldr	r3, =0x7d
	cmp	r2, r3
	bne	.Lf04
	ldr	r0, =.L3d6c
	b	.Lf06
.Lf04:
	ldr	r0, =.L3880
.Lf06:
	pop	{r1}
	bx	r1
.func_end OvlFunc_ec4

.thumb_func_start OvlFunc_f3c
	push	{lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_923e4
	ldr	r0, =0xfd7
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
.func_end OvlFunc_f3c

.thumb_func_start OvlFunc_f70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	ldr	r6, =ewram_240
	str	r3, [r1, r2]
	add	r2, r6
	mov	r1, #0
	ldrsh	r7, [r2, r1]
	ldr	r3, =0x7b
	sub	sp, #8
	mov	r8, r2
	cmp	r7, r3
	bne	.Lf9c
	bl	OvlFunc_191c
	b	.L11cc
.Lf9c:
	ldr	r3, =0x7d
	cmp	r7, r3
	bne	.L102e
	ldr	r0, =0xef7
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lfe0
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0x28
	mov	r0, #0
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #2
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, #0xd8
	mov	r2, #0xa2
	mov	r0, #0x65
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_8edac
.Lfe0:
	mov	r1, r8
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	cmp	r3, r7
	bne	.L102e
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	beq	.L1004
	ldr	r0, =0x8d1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1004
	b	.L11cc
.L1004:
	ldr	r0, =0x8d1
	bl	__Func_79358
	mov	r3, #0xd
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #0xd8
	mov	r2, #0xf4
	mov	r0, #0x64
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_8edac
	b	.L11cc
.L102e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	beq	.L1040
	b	.L1170
.L1040:
	bl	OvlFunc_167c
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x81
	lsl	r3, #16
	str	r3, [r0, #0x38]
	mov	r0, #9
	bl	OvlFunc_8c0
	mov	r0, #0xa
	bl	OvlFunc_8c0
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L109a
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L108a
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	mov	r1, #4
	strb	r3, [r2]
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
.L108a:
	mov	r1, #0x98
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
.L109a:
	ldr	r0, =0x241
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10d6
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L10c6
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	mov	r1, #4
	strb	r3, [r2]
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
.L10c6:
	mov	r1, #0xa0
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
.L10d6:
	ldr	r0, =0x242
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1112
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L1102
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	mov	r1, #4
	strb	r3, [r2]
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
.L1102:
	mov	r1, #0xc0
	mov	r2, #0xa8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
.L1112:
	ldr	r0, =0x243
	bl	__Func_79338
	cmp	r0, #0
	beq	.L115e
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L113e
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	mov	r1, #4
	strb	r3, [r2]
	bl	__Func_c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
.L113e:
	mov	r1, #0x90
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
	mov	r1, #0xbc
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
.L115e:
	ldr	r0, =0xfd7
	bl	__Func_79338
	cmp	r0, #0
	bne	.L11cc
	mov	r0, #8
	bl	OvlFunc_2ed8
	b	.L11cc
.L1170:
	ldr	r5, =0x7e
	cmp	r2, r5
	bne	.L11a2
	ldr	r0, =0xef4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L11a2
	mov	r3, #0x25
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #0x96
	mov	r2, #0xa8
	mov	r0, #0x64
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_8edac
.L11a2:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, r5
	blt	.L11cc
	ldr	r3, =0x86
	cmp	r2, r3
	bgt	.L11cc
	bl	OvlFunc_1214
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L11cc
	bl	OvlFunc_1494
.L11cc:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_f70

.thumb_func_start OvlFunc_1214
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r2, =0x7e
	ldr	r3, =0x8d2
	sub	r3, r2
	add	r0, r3
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L128c
	mov	r2, #0xa8
	lsl	r2, #16
	ldr	r1, =0x28a0000
	mov	r0, #8
	bl	__Func_923e4
	ldr	r3, =0xffe00000
	mov	r0, #8
	str	r3, [r6, #0xc]
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92b08
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r2, #0xa
	mov	r3, #0x28
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L1296
.L128c:
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
.L1296:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1214

.thumb_func_start OvlFunc_12b4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	mov	r8, r3
	cmp	r3, #0x28
	bne	.L1356
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r2, r3
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r9, r2
	ldr	r3, =0x7e
	ldr	r2, =0x8d2
	sub	r2, r3
	mov	r10, r2
	add	r0, r10
	bl	__Func_79338
	mov	r7, r0
	cmp	r7, #0
	bne	.L1356
	mov	r6, r5
	mov	r3, #3
	add	r6, #0x55
	strb	r3, [r6]
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #8
	bl	OvlFunc_e00
	mov	r0, #0x88
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92b08
	strb	r7, [r6]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r2, r8
	mov	r3, #0xa
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0xa
	bl	__Func_10704
	mov	r2, r9
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	add	r0, r10
	bl	__Func_79358
.L1356:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12b4

.thumb_func_start OvlFunc_1374
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_c4
	bl	__Func_91750
	bl	OvlFunc_12b4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1374

.thumb_func_start OvlFunc_138c
	push	{lr}
	mov	r1, #0x25
	mov	r2, #7
	ldr	r0, =.L32bc
	bl	__Func_10560
	mov	r0, #0xb7
	bl	__Func_f9080
	mov	r0, #4
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_138c

.thumb_func_start OvlFunc_13ac
	push	{r5, r6, r7, lr}
	ldr	r6, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r5, r6, r2
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	ldr	r7, =0x7e
	ldr	r3, =0x8c8
	sub	r3, r7
	add	r0, r3
	bl	__Func_79338
	cmp	r0, #0
	bne	.L145e
	bl	__Func_916b0
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	mov	r1, #5
	bl	__Func_91f90
	ldr	r3, =0x22b
	add	r2, r6, r3
	mov	r3, #3
	strb	r3, [r2]
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	sub	r3, r7
	cmp	r3, #8
	bhi	.L1458
	ldr	r2, =.L13f4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L13f4:
	.word	.L1418
	.word	.L141c
	.word	.L1420
	.word	.L1424
	.word	.L1428
	.word	.L1432
	.word	.L143c
	.word	.L1446
	.word	.L1450
.L1418:
	mov	r0, #0x3f
	b	.L142a
.L141c:
	mov	r0, #0x3f
	b	.L1434
.L1420:
	mov	r0, #0x3f
	b	.L143e
.L1424:
	mov	r0, #0x3f
	b	.L1448
.L1428:
	mov	r0, #0x54
.L142a:
	mov	r1, #0
	bl	__Func_91eb0
	b	.L1458
.L1432:
	mov	r0, #0x54
.L1434:
	mov	r1, #1
	bl	__Func_91eb0
	b	.L1458
.L143c:
	mov	r0, #0x54
.L143e:
	mov	r1, #2
	bl	__Func_91eb0
	b	.L1458
.L1446:
	mov	r0, #0x54
.L1448:
	mov	r1, #3
	bl	__Func_91eb0
	b	.L1458
.L1450:
	mov	r0, #0x54
	mov	r1, #4
	bl	__Func_91eb0
.L1458:
	bl	__Func_91750
	b	.L1474
.L145e:
	ldr	r0, =.L32bc
	mov	r1, #0x2c
	mov	r2, #7
	bl	__Func_10560
	mov	r0, #0xb7
	bl	__Func_f9080
	mov	r0, #3
	bl	__Func_91e9c
.L1474:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13ac

.thumb_func_start OvlFunc_1494
	push	{lr}
	bl	__Func_916b0
	ldr	r1, =0x6666
	mov	r0, #0
	ldr	r2, =0x3333
	bl	__Func_92064
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r2, =0x7e
	ldr	r3, =0x8c8
	sub	r3, r2
	add	r0, r3
	bl	__Func_79358
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =.L32bc
	mov	r1, #0x2c
	mov	r2, #7
	bl	__Func_10560
	mov	r2, #0x10
	mov	r1, #3
	neg	r2, r2
	mov	r0, #0
	bl	__Func_92208
	mov	r0, #3
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1494

.thumb_func_start OvlFunc_1508
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xb
	bl	__Func_92054
	cmp	r0, #0
	beq	.L151e
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L151e:
	mov	r0, r5
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x98
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1508

.thumb_func_start OvlFunc_1548
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xc
	bl	__Func_92054
	cmp	r0, #0
	beq	.L155e
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L155e:
	mov	r0, r5
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xa0
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
	ldr	r0, =0x241
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1548

.thumb_func_start OvlFunc_158c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_92054
	cmp	r0, #0
	beq	.L15a2
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L15a2:
	mov	r0, r5
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xc0
	mov	r2, #0xa8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
	ldr	r0, =0x242
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_158c

.thumb_func_start OvlFunc_15d0
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xe
	bl	__Func_92054
	cmp	r0, #0
	beq	.L15e6
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L15e6:
	mov	r0, r5
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x90
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
	mov	r1, #0xbc
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_12078
	ldr	r0, =0x243
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15d0

.thumb_func_start OvlFunc_1624
	push	{lr}
	ldr	r0, =0x8c4
	sub	sp, #8
	bl	__Func_79358
	mov	r3, #8
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1624

.thumb_func_start OvlFunc_164c
	push	{lr}
	ldr	r0, =0x8c5
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_164c

.thumb_func_start OvlFunc_165c
	push	{lr}
	ldr	r0, =0x8c6
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_165c

.thumb_func_start OvlFunc_166c
	push	{lr}
	ldr	r0, =0x8c7
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_166c

.thumb_func_start OvlFunc_167c
	push	{lr}
	ldr	r0, =0x8c4
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16ae
	mov	r3, #8
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	b	.L16b8
.L16ae:
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.L16b8:
	ldr	r0, =0x8c5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16d2
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	b	.L16dc
.L16d2:
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.L16dc:
	ldr	r0, =0x8c6
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16f6
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x11
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	b	.L1700
.L16f6:
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.L1700:
	ldr	r0, =0x8c7
	bl	__Func_79338
	cmp	r0, #0
	beq	.L171a
	mov	r1, #0xf2
	mov	r2, #0xf2
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	b	.L1724
.L171a:
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, =0x19999
	str	r3, [r0, #0x1c]
.L1724:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_167c

.thumb_func_start OvlFunc_1740
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_474
	cmp	r0, #0
	beq	.L1768
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_608
.L1768:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1740

.thumb_func_start OvlFunc_1774
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
	blt	.L1818
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L1822
.L1818:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_c300
	b	.L182a
.L1822:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
.L182a:
	mov	r0, #0xe2
	bl	__Func_f9080
	mov	r0, r6
	bl	__Func_ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
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
.func_end OvlFunc_1774

.thumb_func_start OvlFunc_185c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L18a2
	mov	r0, r6
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #0x10]
	asr	r3, #20
	asr	r2, #20
	sub	r3, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, r7
	mov	r1, r8
	mov	r2, #3
	mov	r3, #1
	bl	__Func_10704
.L18a2:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_185c

.thumb_func_start OvlFunc_18b0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L18f6
	mov	r0, r6
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, [r5, #0x10]
	ldr	r2, [r5, #8]
	asr	r3, #20
	asr	r2, #20
	sub	r3, #1
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r1, r8
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
.L18f6:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_18b0

.thumb_func_start OvlFunc_1904
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, r5
	mov	r1, #2
	bl	__Func_924d4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1904

.thumb_func_start OvlFunc_191c
	push	{lr}
	mov	r0, #8
	mov	r1, #0x11
	mov	r2, #0x1e
	mov	r3, #0x15
	bl	OvlFunc_185c
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0x1f
	mov	r3, #0x16
	bl	OvlFunc_185c
	mov	r0, #0xb
	mov	r1, #0x14
	mov	r2, #0x1e
	mov	r3, #0x17
	bl	OvlFunc_18b0
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #0x1e
	mov	r3, #0x18
	bl	OvlFunc_18b0
	mov	r0, #0xd
	mov	r1, #0x16
	mov	r2, #0x1e
	mov	r3, #0x19
	bl	OvlFunc_18b0
	mov	r0, #0xf
	mov	r1, #0x17
	mov	r2, #0x1e
	mov	r3, #0x1a
	bl	OvlFunc_18b0
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x1f
	bl	OvlFunc_185c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x1f
	mov	r3, #0x20
	bl	OvlFunc_185c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x20
	mov	r3, #0x21
	bl	OvlFunc_185c
	mov	r0, #0x13
	mov	r1, #4
	mov	r2, #0x1e
	mov	r3, #0x22
	bl	OvlFunc_18b0
	mov	r0, #0xe
	mov	r1, #5
	mov	r2, #0x1e
	mov	r3, #0x23
	bl	OvlFunc_18b0
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	mov	r3, #0x24
	bl	OvlFunc_18b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_191c

.thumb_func_start OvlFunc_19b4
	push	{lr}
	mov	r0, #8
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_19b4

.thumb_func_start OvlFunc_19c0
	push	{lr}
	mov	r0, #0xa
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_19c0

.thumb_func_start OvlFunc_19cc
	push	{lr}
	mov	r0, #0xb
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_19cc

.thumb_func_start OvlFunc_19d8
	push	{lr}
	mov	r0, #0xc
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_19d8

.thumb_func_start OvlFunc_19e4
	push	{lr}
	mov	r0, #0xd
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e4

.thumb_func_start OvlFunc_19f0
	push	{lr}
	mov	r0, #0xf
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_19f0

.thumb_func_start OvlFunc_19fc
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_19fc

.thumb_func_start OvlFunc_1a08
	push	{lr}
	mov	r0, #0x12
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a08

.thumb_func_start OvlFunc_1a14
	push	{lr}
	mov	r0, #9
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a14

.thumb_func_start OvlFunc_1a20
	push	{lr}
	mov	r0, #0x13
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a20

.thumb_func_start OvlFunc_1a2c
	push	{lr}
	mov	r0, #0xe
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a2c

.thumb_func_start OvlFunc_1a38
	push	{lr}
	mov	r0, #0x10
	bl	OvlFunc_1904
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a38

.thumb_func_start OvlFunc_1a44
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	ldr	r1, =0xfff00000
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	sub	sp, #0xc
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
	ldrh	r1, [r5, #6]
	mov	r3, #0x80
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
	bne	.L1b02
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
	mov	r0, #1
	b	.L1b04
.L1b02:
	mov	r0, #0
.L1b04:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1a44

.thumb_func_start OvlFunc_1b14
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r2, =0xffe00000
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r1, #8]
	bl	OvlFunc_1a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_1b14

.thumb_func_start OvlFunc_1b40
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	mov	r2, #0x80
	ldr	r3, [r0, #0x10]
	lsl	r2, #14
	add	r3, r2
	str	r3, [r1, #8]
	bl	OvlFunc_1a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_1b40

.thumb_func_start OvlFunc_1b68
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r2, =0xffe00000
	ldr	r3, [r0, #8]
	mov	r1, sp
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	OvlFunc_1a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_1b68

.thumb_func_start OvlFunc_1b94
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #8]
	lsl	r2, #14
	mov	r1, sp
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	OvlFunc_1a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_1b94

.thumb_func_start OvlFunc_1bbc
	push	{r5, r6, r7, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #8
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x13
	bne	.L1c18
	cmp	r5, #0x18
	bne	.L1bf4
	mov	r2, #0x50
	b	.L1c36
.L1bf4:
	cmp	r3, #0x18
	bne	.L1c08
	mov	r2, #0x70
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_1774
	mov	r2, #0x20
	b	.L1c36
.L1c08:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_1774
	mov	r2, #0x70
	b	.L1c36
.L1c18:
	cmp	r6, #0xe
	bne	.L1c2c
	cmp	r5, #0x18
	beq	.L1c7a
	cmp	r3, #0x18
	bne	.L1c28
	mov	r2, #0x40
	b	.L1c36
.L1c28:
	mov	r2, #0x70
	b	.L1c36
.L1c2c:
	cmp	r6, #0xa
	bne	.L1c42
	cmp	r3, #0x18
	beq	.L1c7a
	mov	r2, #0x30
.L1c36:
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_1774
	b	.L1c48
.L1c42:
	bl	OvlFunc_1b14
	b	.L1c7a
.L1c48:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L1c7a:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bbc

.thumb_func_start OvlFunc_1c84
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #8
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #7
	bne	.L1cd0
	cmp	r3, #0x18
	bne	.L1cba
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_1774
	b	.L1cf2
.L1cba:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_1774
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_1774
	b	.L1cf2
.L1cd0:
	cmp	r6, #0xa
	bne	.L1ce4
	cmp	r3, #0x18
	beq	.L1d24
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x90
	bl	OvlFunc_1774
	b	.L1cf2
.L1ce4:
	cmp	r6, #0xe
	bne	.L1d24
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_1774
.L1cf2:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L1d24:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c84

.thumb_func_start OvlFunc_1d2c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x12
	bne	.L1d82
	sub	r3, #0x1f
	cmp	r3, #2
	bhi	.L1d66
	mov	r2, #0x80
	b	.L1d96
.L1d66:
	mov	r3, r5
	sub	r3, #0x1f
	cmp	r3, #2
	bhi	.L1d72
	mov	r2, #0x80
	b	.L1d96
.L1d72:
	mov	r2, #0x70
	neg	r2, r2
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_1774
	mov	r2, #0x40
	b	.L1d96
.L1d82:
	cmp	r6, #0xa
	bne	.L1da2
	sub	r3, #0x1f
	cmp	r3, #2
	bls	.L1dd8
	mov	r3, r5
	sub	r3, #0x1f
	cmp	r3, #2
	bls	.L1dd8
	mov	r2, #0x30
.L1d96:
	neg	r2, r2
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_1774
	b	.L1da6
.L1da2:
	cmp	r6, #7
	beq	.L1dd8
.L1da6:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L1dd8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d2c

.thumb_func_start OvlFunc_1de0
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r6, #0x12
	beq	.L1e52
	cmp	r6, #0xa
	bne	.L1e0c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_1774
	b	.L1e20
.L1e0c:
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_1774
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_1774
.L1e20:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L1e52:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1de0

.thumb_func_start OvlFunc_1e5c
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r5, r3, #20
	cmp	r6, #0x1e
	beq	.L1eec
	cmp	r6, #0x22
	bne	.L1e8e
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	beq	.L1eec
	mov	r1, #0x40
	b	.L1ea2
.L1e8e:
	cmp	r6, #0x24
	bne	.L1eba
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	bne	.L1eae
	mov	r1, #0x20
.L1ea2:
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L1eba
.L1eae:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_1774
.L1eba:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L1eec:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e5c

.thumb_func_start OvlFunc_1ef4
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r5, r3, #20
	cmp	r6, #0x24
	beq	.L1f6e
	cmp	r6, #0x1e
	bne	.L1f2e
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	beq	.L1f6e
	mov	r0, #0xb
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L1f3c
.L1f2e:
	cmp	r6, #0x22
	bne	.L1f3c
	mov	r0, #0xb
	mov	r1, #0x20
	mov	r2, #0
	bl	OvlFunc_1774
.L1f3c:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L1f6e:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ef4

.thumb_func_start OvlFunc_1f78
	push	{r5, r6, r7, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r6, #0x24
	bne	.L1fa8
	mov	r5, #0x60
	neg	r5, r5
	mov	r0, #0xc
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r0, #0xc
	mov	r1, r5
	b	.L1fbe
.L1fa8:
	cmp	r6, #0x22
	bne	.L1fc6
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r1, #0x40
	neg	r1, r1
	mov	r0, #0xc
.L1fbe:
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L1fca
.L1fc6:
	cmp	r6, #0x18
	beq	.L1ffc
.L1fca:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L1ffc:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f78

.thumb_func_start OvlFunc_2004
	push	{r5, r6, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r5, r3, #20
	cmp	r6, #0x18
	bne	.L2030
	mov	r0, #0xc
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r0, #0xc
	mov	r1, #0x60
	b	.L2038
.L2030:
	cmp	r6, #0x22
	bne	.L2040
	mov	r0, #0xc
	mov	r1, #0x20
.L2038:
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L2044
.L2040:
	cmp	r6, #0x24
	beq	.L2076
.L2044:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L2076:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2004

.thumb_func_start OvlFunc_2080
	push	{r5, r6, r7, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x24
	bne	.L20d8
	cmp	r3, #0x22
	bne	.L20b8
	mov	r1, #0x10
	b	.L2122
.L20b8:
	cmp	r5, #7
	bne	.L20c0
	mov	r1, #0x20
	b	.L2122
.L20c0:
	cmp	r3, #0x1e
	bne	.L20c8
	mov	r1, #0x50
	b	.L2122
.L20c8:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xd
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r1, #0x50
	b	.L2122
.L20d8:
	cmp	r6, #0x23
	bne	.L2104
	cmp	r3, #0x22
	beq	.L2164
	cmp	r5, #7
	bne	.L20e8
	mov	r1, #0x10
	b	.L2122
.L20e8:
	cmp	r3, #0x1e
	bne	.L20f0
	mov	r1, #0x40
	b	.L2122
.L20f0:
	mov	r5, #0x50
	neg	r5, r5
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r0, #0xd
	mov	r1, r5
	b	.L2126
.L2104:
	cmp	r6, #0x22
	bne	.L2118
	cmp	r5, #7
	beq	.L2164
	cmp	r3, #0x1e
	bne	.L2114
	mov	r1, #0x30
	b	.L2122
.L2114:
	mov	r1, #0x90
	b	.L2122
.L2118:
	cmp	r6, #0x1f
	bne	.L212e
	cmp	r3, #0x1e
	beq	.L2164
	mov	r1, #0x60
.L2122:
	neg	r1, r1
	mov	r0, #0xd
.L2126:
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L2132
.L212e:
	cmp	r6, #0x19
	beq	.L2164
.L2132:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L2164:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2080

.thumb_func_start OvlFunc_216c
	push	{r5, r6, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__Func_92054
	cmp	r6, #0x19
	bne	.L219e
	mov	r0, #0xd
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r0, #0xd
	mov	r1, #0x50
	b	.L21ba
.L219e:
	cmp	r6, #0x1f
	bne	.L21a8
	mov	r0, #0xd
	mov	r1, #0x50
	b	.L21ba
.L21a8:
	cmp	r6, #0x22
	bne	.L21b2
	mov	r0, #0xd
	mov	r1, #0x20
	b	.L21ba
.L21b2:
	cmp	r6, #0x23
	bne	.L21c2
	mov	r0, #0xd
	mov	r1, #0x10
.L21ba:
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L21c6
.L21c2:
	cmp	r6, #0x24
	beq	.L21f8
.L21c6:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L21f8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_216c

.thumb_func_start OvlFunc_2200
	push	{r5, r6, r7, lr}
	mov	r0, #0xf
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #8
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #0x23
	bne	.L2250
	cmp	r3, #7
	bne	.L2238
	mov	r1, #0x10
	b	.L227e
.L2238:
	cmp	r5, #7
	bne	.L2240
	mov	r1, #0x70
	b	.L227e
.L2240:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r1, #0x50
	b	.L227e
.L2250:
	cmp	r6, #0x22
	bne	.L2268
	cmp	r3, #7
	beq	.L22c0
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r1, #0x40
	b	.L227e
.L2268:
	cmp	r6, #0x21
	bne	.L2270
	mov	r1, #0x90
	b	.L227e
.L2270:
	cmp	r6, #0x1f
	bne	.L2278
	mov	r1, #0x50
	b	.L227e
.L2278:
	cmp	r6, #0x1e
	bne	.L228a
	mov	r1, #0x60
.L227e:
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L228e
.L228a:
	cmp	r6, #0x18
	beq	.L22c0
.L228e:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L22c0:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2200

.thumb_func_start OvlFunc_22c8
	push	{r5, r6, r7, lr}
	mov	r0, #0xf
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x18
	bne	.L233e
	cmp	r5, #7
	beq	.L2300
	cmp	r3, #0x1f
	bne	.L2306
.L2300:
	mov	r0, #0xf
	mov	r1, #0x60
	b	.L237e
.L2306:
	cmp	r3, #0x22
	bne	.L231a
	mov	r0, #0xf
	mov	r1, #0x40
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L231a:
	cmp	r3, #0x23
	bne	.L232e
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L232e:
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r0, #0xf
	mov	r1, #0x60
	b	.L237e
.L233e:
	cmp	r6, #0x1e
	beq	.L2346
	cmp	r3, #0x1f
	bne	.L2364
.L2346:
	cmp	r5, #7
	beq	.L23bc
	cmp	r3, #0x22
	bne	.L2354
	mov	r0, #0xf
	mov	r1, #0x30
	b	.L237e
.L2354:
	cmp	r3, #0x23
	bne	.L235e
	mov	r0, #0xf
	mov	r1, #0x40
	b	.L237e
.L235e:
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L2364:
	cmp	r6, #0x21
	bne	.L2376
	cmp	r3, #0x22
	beq	.L23bc
	cmp	r3, #0x23
	beq	.L237a
	mov	r0, #0xf
	mov	r1, #0x20
	b	.L237e
.L2376:
	cmp	r6, #0x22
	bne	.L2386
.L237a:
	mov	r0, #0xf
	mov	r1, #0x10
.L237e:
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L238a
.L2386:
	cmp	r6, #0x23
	beq	.L23bc
.L238a:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L23bc:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22c8

.thumb_func_start OvlFunc_23c4
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x11
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x13
	bne	.L23f8
	sub	r3, #3
	cmp	r3, #2
	bhi	.L23f4
	mov	r2, #0x10
	b	.L2404
.L23f4:
	mov	r2, #0x40
	b	.L2404
.L23f8:
	cmp	r6, #0x12
	bne	.L2410
	sub	r3, #3
	cmp	r3, #2
	bls	.L2446
	mov	r2, #0x30
.L2404:
	neg	r2, r2
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_1774
	b	.L2414
.L2410:
	cmp	r6, #0xf
	beq	.L2446
.L2414:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L2446:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_23c4

.thumb_func_start OvlFunc_2450
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x11
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r6, #0xf
	bne	.L2478
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_1774
	b	.L248c
.L2478:
	cmp	r6, #0x12
	bne	.L2488
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_1774
	b	.L248c
.L2488:
	cmp	r6, #0x13
	beq	.L24be
.L248c:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L24be:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2450

.thumb_func_start OvlFunc_24c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x12
	asr	r3, #20
	mov	r8, r3
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r6, #0x13
	bne	.L2536
	sub	r3, r7, #6
	cmp	r3, #2
	bhi	.L2512
	mov	r2, #0x10
	b	.L259e
.L2512:
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L251c
	mov	r2, #0x40
	b	.L259e
.L251c:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L2526
	mov	r2, #0x70
	b	.L259e
.L2526:
	mov	r2, #0x40
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_1774
	mov	r2, #0x60
	b	.L259e
.L2536:
	cmp	r6, #0x12
	bne	.L2558
	sub	r3, r7, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L254a
	mov	r2, #0x30
	b	.L259e
.L254a:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L2554
	mov	r2, #0x60
	b	.L259e
.L2554:
	mov	r2, #0x90
	b	.L259e
.L2558:
	cmp	r6, #0xf
	bne	.L2570
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L256c
	mov	r2, #0x30
	b	.L259e
.L256c:
	mov	r2, #0x60
	b	.L259e
.L2570:
	cmp	r6, #0xe
	bne	.L2584
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L259c
	mov	r2, #0x50
	b	.L259e
.L2584:
	cmp	r6, #0xc
	bne	.L2592
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L25e2
	mov	r2, #0x30
	b	.L259e
.L2592:
	cmp	r6, #0xb
	bne	.L25aa
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L25e2
.L259c:
	mov	r2, #0x20
.L259e:
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_1774
	b	.L25ae
.L25aa:
	cmp	r6, #9
	beq	.L25e2
.L25ae:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L25e2:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_24c8

.thumb_func_start OvlFunc_25f0
	push	{r5, r6, r7, lr}
	mov	r0, #0x12
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #9
	bne	.L2642
	sub	r3, #6
	cmp	r3, #2
	bls	.L2674
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L2696
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_1774
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_1774
	b	.L26c6
.L2642:
	cmp	r6, #0xb
	bne	.L266a
	sub	r3, #6
	cmp	r3, #2
	bls	.L26f8
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L265e
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_1774
	b	.L26c6
.L265e:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_1774
	b	.L26c6
.L266a:
	cmp	r6, #0xc
	bne	.L268c
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L2680
.L2674:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_1774
	b	.L26c6
.L2680:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_1774
	b	.L26c6
.L268c:
	cmp	r6, #0xe
	bne	.L26a2
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L26f8
.L2696:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_1774
	b	.L26c6
.L26a2:
	cmp	r6, #0xf
	bne	.L26b2
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_1774
	b	.L26c6
.L26b2:
	cmp	r6, #0x12
	bne	.L26c2
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_1774
	b	.L26c6
.L26c2:
	cmp	r6, #0x13
	beq	.L26f8
.L26c6:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
.L26f8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25f0

.thumb_func_start OvlFunc_2700
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #9
	asr	r3, #20
	mov	r8, r3
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r7, #0x13
	bne	.L2774
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L274c
	mov	r2, #0x10
	b	.L27f6
.L274c:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2758
	mov	r2, #0x40
	b	.L27f6
.L2758:
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2764
	mov	r2, #0x70
	b	.L27f6
.L2764:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_1774
	mov	r2, #0x60
	b	.L27f6
.L2774:
	cmp	r7, #0x12
	bne	.L27a4
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L27f4
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2794
	mov	r2, #0x60
	b	.L27f6
.L2794:
	mov	r2, #0x60
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_1774
	mov	r2, #0x40
	b	.L27f6
.L27a4:
	cmp	r7, #0xf
	bne	.L27bc
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L27f4
	mov	r2, #0x70
	b	.L27f6
.L27bc:
	cmp	r7, #0xe
	bne	.L27d8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L27d4
	mov	r2, #0x20
	b	.L27f6
.L27d4:
	mov	r2, #0x60
	b	.L27f6
.L27d8:
	cmp	r7, #0xc
	bne	.L27e8
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r2, #0x40
	b	.L27f6
.L27e8:
	cmp	r7, #0xb
	bne	.L2802
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
.L27f4:
	mov	r2, #0x30
.L27f6:
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_1774
	b	.L2806
.L2802:
	cmp	r7, #9
	bls	.L283a
.L2806:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r7
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_10704
.L283a:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2700

.thumb_func_start OvlFunc_2848
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #9
	asr	r3, #20
	mov	r8, r3
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r7, #8
	bne	.L28b4
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L28c8
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L28a8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_1774
.L28a8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_1774
	b	.L2942
.L28b4:
	cmp	r7, #0xb
	bne	.L28e0
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L28d4
.L28c8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_1774
	b	.L2942
.L28d4:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_1774
	b	.L2942
.L28e0:
	cmp	r7, #0xc
	bne	.L290c
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2900
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_1774
	b	.L2942
.L2900:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_1774
	b	.L2942
.L290c:
	cmp	r7, #0xe
	bne	.L2924
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_1774
	b	.L2942
.L2924:
	cmp	r7, #0xf
	bne	.L2934
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_1774
	b	.L2942
.L2934:
	cmp	r7, #0x12
	bne	.L2942
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_1774
.L2942:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r7
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_10704
.L2976:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2848

.thumb_func_start OvlFunc_2984
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x11
	asr	r3, #20
	mov	r8, r3
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r7, #3
	beq	.L2a8a
	cmp	r7, #0xd
	bne	.L29f0
	cmp	r3, #0xf
	bne	.L29d0
	mov	r1, #0x10
	b	.L2a3e
.L29d0:
	cmp	r5, #0xf
	bne	.L29d8
	mov	r1, #0x40
	b	.L2a3e
.L29d8:
	cmp	r6, #0xf
	bne	.L29e0
	mov	r1, #0x70
	b	.L2a3e
.L29e0:
	mov	r1, #0x70
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r1, #0x30
	b	.L2a3e
.L29f0:
	cmp	r7, #6
	bne	.L29fc
	cmp	r6, #0xf
	beq	.L2a8a
	mov	r1, #0x30
	b	.L2a3e
.L29fc:
	cmp	r7, #5
	bne	.L2a04
	mov	r1, #0x20
	b	.L2a3e
.L2a04:
	cmp	r7, #8
	bne	.L2a18
	cmp	r5, #0xf
	beq	.L2a8a
	cmp	r6, #0xf
	bne	.L2a14
	mov	r1, #0x20
	b	.L2a3e
.L2a14:
	mov	r1, #0x50
	b	.L2a3e
.L2a18:
	cmp	r7, #9
	bne	.L2a28
	cmp	r5, #0xf
	beq	.L2a8a
	cmp	r6, #0xf
	bne	.L2a3c
	mov	r1, #0x30
	b	.L2a3e
.L2a28:
	cmp	r7, #0xc
	bne	.L2a56
	cmp	r3, #0xf
	beq	.L2a8a
	cmp	r5, #0xf
	bne	.L2a38
	mov	r1, #0x30
	b	.L2a3e
.L2a38:
	cmp	r6, #0xf
	bne	.L2a4a
.L2a3c:
	mov	r1, #0x60
.L2a3e:
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L2a56
.L2a4a:
	mov	r1, #0x90
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_1774
.L2a56:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r7
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L2a8a:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2984

.thumb_func_start OvlFunc_2a98
	push	{r5, r6, r7, lr}
	mov	r0, #0x13
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #3
	bne	.L2aec
	cmp	r5, #0xf
	bne	.L2ad2
	mov	r0, #0x13
	mov	r1, #0x20
	b	.L2b2e
.L2ad2:
	cmp	r3, #0xf
	bne	.L2adc
	mov	r0, #0x13
	mov	r1, #0x50
	b	.L2b2e
.L2adc:
	mov	r0, #0x13
	mov	r1, #0x70
	mov	r2, #0
	bl	OvlFunc_1774
	mov	r0, #0x13
	mov	r1, #0x30
	b	.L2b2e
.L2aec:
	cmp	r6, #5
	bne	.L2b04
	cmp	r5, #0xf
	beq	.L2b76
	cmp	r3, #0xf
	bne	.L2afe
	mov	r0, #0x13
	mov	r1, #0x30
	b	.L2b2e
.L2afe:
	mov	r0, #0x13
	mov	r1, #0x80
	b	.L2b2e
.L2b04:
	cmp	r6, #6
	bne	.L2b18
	cmp	r3, #0xf
	bne	.L2b12
	mov	r0, #0x13
	mov	r1, #0x20
	b	.L2b2e
.L2b12:
	mov	r0, #0x13
	mov	r1, #0x70
	b	.L2b2e
.L2b18:
	cmp	r6, #8
	bne	.L2b26
	cmp	r3, #0xf
	beq	.L2b76
	mov	r0, #0x13
	mov	r1, #0x50
	b	.L2b2e
.L2b26:
	cmp	r6, #9
	bne	.L2b36
	mov	r0, #0x13
	mov	r1, #0x40
.L2b2e:
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L2b44
.L2b36:
	cmp	r6, #0xc
	bne	.L2b44
	mov	r0, #0x13
	mov	r1, #0x10
	mov	r2, #0
	bl	OvlFunc_1774
.L2b44:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L2b76:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2a98

.thumb_func_start OvlFunc_2b80
	push	{r5, r6, r7, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #0xd
	bne	.L2bca
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2bba
	mov	r1, #0x10
	b	.L2c02
.L2bba:
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2bc6
	mov	r1, #0x40
	b	.L2c02
.L2bc6:
	mov	r1, #0x70
	b	.L2c02
.L2bca:
	cmp	r6, #0xc
	bne	.L2be4
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2c44
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2be0
	mov	r1, #0x30
	b	.L2c02
.L2be0:
	mov	r1, #0x60
	b	.L2c02
.L2be4:
	cmp	r6, #9
	bne	.L2bf4
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2c44
	mov	r1, #0x30
	b	.L2c02
.L2bf4:
	cmp	r6, #8
	bne	.L2c0e
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2c44
	mov	r1, #0x20
.L2c02:
	neg	r1, r1
	mov	r0, #0xe
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L2c12
.L2c0e:
	cmp	r6, #6
	beq	.L2c44
.L2c12:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L2c44:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b80

.thumb_func_start OvlFunc_2c4c
	push	{r5, r6, r7, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #6
	bne	.L2c9c
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2c88
	mov	r0, #0xe
	mov	r1, #0x20
	b	.L2cc4
.L2c88:
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2c96
	mov	r0, #0xe
	mov	r1, #0x40
	b	.L2cc4
.L2c96:
	mov	r0, #0xe
	mov	r1, #0x70
	b	.L2cc4
.L2c9c:
	cmp	r6, #8
	bne	.L2cac
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2d02
	mov	r0, #0xe
	mov	r1, #0x50
	b	.L2cc4
.L2cac:
	cmp	r6, #9
	bne	.L2cbc
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2d02
	mov	r0, #0xe
	mov	r1, #0x40
	b	.L2cc4
.L2cbc:
	cmp	r6, #0xc
	bne	.L2ccc
	mov	r0, #0xe
	mov	r1, #0x10
.L2cc4:
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L2cd0
.L2ccc:
	cmp	r6, #0xd
	beq	.L2d02
.L2cd0:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L2d02:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c4c

.thumb_func_start OvlFunc_2d0c
	push	{r5, r6, r7, lr}
	mov	r0, #0x10
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #0xd
	bne	.L2d56
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2d46
	mov	r1, #0x10
	b	.L2d86
.L2d46:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2d52
	mov	r1, #0x40
	b	.L2d86
.L2d52:
	mov	r1, #0x70
	b	.L2d86
.L2d56:
	cmp	r6, #0xc
	bne	.L2d70
	sub	r3, #9
	cmp	r3, #2
	bls	.L2dc8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2d6c
	mov	r1, #0x30
	b	.L2d86
.L2d6c:
	mov	r1, #0x60
	b	.L2d86
.L2d70:
	cmp	r6, #9
	bne	.L2d80
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L2dc8
	mov	r1, #0x30
	b	.L2d86
.L2d80:
	cmp	r6, #8
	bne	.L2d92
	mov	r1, #0x20
.L2d86:
	neg	r1, r1
	mov	r0, #0x10
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L2d96
.L2d92:
	cmp	r6, #6
	beq	.L2dc8
.L2d96:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L2dc8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d0c

.thumb_func_start OvlFunc_2dd0
	push	{r5, r6, lr}
	mov	r0, #0x10
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r6, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #6
	bne	.L2e08
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2e02
	mov	r0, #0x10
	mov	r1, #0x20
	b	.L2e2a
.L2e02:
	mov	r0, #0x10
	mov	r1, #0x70
	b	.L2e2a
.L2e08:
	cmp	r6, #8
	bne	.L2e18
	sub	r3, #9
	cmp	r3, #2
	bls	.L2e68
	mov	r0, #0x10
	mov	r1, #0x50
	b	.L2e2a
.L2e18:
	cmp	r6, #9
	bne	.L2e22
	mov	r0, #0x10
	mov	r1, #0x40
	b	.L2e2a
.L2e22:
	cmp	r6, #0xc
	bne	.L2e32
	mov	r0, #0x10
	mov	r1, #0x10
.L2e2a:
	mov	r2, #0
	bl	OvlFunc_1774
	b	.L2e36
.L2e32:
	cmp	r6, #0xd
	beq	.L2e68
.L2e36:
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
.L2e68:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2dd0

.thumb_func_start OvlFunc_2e70
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_2322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L2e84
	neg	r5, r5
.L2e84:
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
	bge	.L2eaa
	add	r0, #7
.L2eaa:
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
.func_end OvlFunc_2e70

.thumb_func_start OvlFunc_2ed8
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
	bne	.L2f3c
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L2f3c:
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
	ldr	r3, =OvlFunc_2e70
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
.func_end OvlFunc_2ed8

	.section .data

.L315c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x315c, (0x319c-0x315c)
.L319c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x319c, (0x31b4-0x319c)
.L31b4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x31b4, (0x32bc-0x31b4)
.L32bc:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x32bc, (0x32d4-0x32bc)
.L32d4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x32d4, (0x3310-0x32d4)
.L3310:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3310, (0x3358-0x3310)
.L3358:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3358, (0x33a0-0x3358)
.L33a0:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x33a0, (0x3400-0x33a0)
.L3400:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3400, (0x3448-0x3400)
.L3448:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3448, (0x3478-0x3448)
.L3478:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3478, (0x3508-0x3478)
.L3508:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3508, (0x35f8-0x3508)
.L35f8:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x35f8, (0x3610-0x35f8)
.L3610:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3610, (0x3718-0x3610)
.L3718:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3718, (0x3850-0x3718)
.L3850:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3850, (0x3880-0x3850)
.L3880:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3880, (0x38e0-0x3880)
.L38e0:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x38e0, (0x3904-0x38e0)
.L3904:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3904, (0x39f4-0x3904)
.L39f4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x39f4, (0x3d48-0x39f4)
.L3d48:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3d48, (0x3d6c-0x3d48)
.L3d6c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3d6c
