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
	ldr	r0, =.L1554
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
	ldr	r2, =.L1554
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
	ldr	r2, =.L1594
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
	ldr	r3, =.L1554
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
	ldr	r3, =.L1594
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L15ac
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
	ldr	r4, =.L1554
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
	ldr	r5, =.L15ac
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
	ldr	r1, =.L1554
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
	ldr	r0, =.L15ac
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
	ldr	r0, =.L15ac
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
	ldr	r0, =.L1554
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
	ldr	r2, =.L1554
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
	ldr	r4, =.L15ac
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
	ldr	r2, =.L1554
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
	ldr	r4, =.L15ac
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
	ldr	r1, =.L1594
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
	ldr	r4, =.L15ac
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
	push	{lr}
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0xc
	mov	r1, #0x28
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_9dc

.thumb_func_start OvlFunc_a00
	push	{lr}
	mov	r3, r0
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.La34
	cmp	r3, #1
	bgt	.La18
	cmp	r3, #0
	beq	.La1e
	b	.La54
.La18:
	cmp	r3, #2
	beq	.La40
	b	.La54
.La1e:
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #8]
	str	r3, [r0, #0x38]
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	b	.La54
.La34:
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #8]
	str	r3, [r0, #0x38]
	b	.La4a
.La40:
	ldr	r3, [r0, #0xc]
	ldr	r2, [r0, #0x30]
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
.La4a:
	ldr	r2, [r0, #0x34]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	str	r3, [r0, #0x40]
.La54:
	pop	{r0}
	bx	r0
.func_end OvlFunc_a00

.thumb_func_start OvlFunc_a58
	push	{lr}
	mov	r1, #0xf
	bl	__Func_929d8
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_a58

.thumb_func_start OvlFunc_a68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0
	mov	r6, r1
	sub	sp, #0xc
	mov	r8, r2
	mov	r9, r3
	bl	__Func_92054
	ldr	r3, =.L160c
	mov	r10, sp
	mov	r2, r10
	mov	r11, r0
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	mov	r2, r6
	mov	r0, #0xde
	mov	r1, r5
	mov	r3, r8
	bl	__Func_c150
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb34
	ldr	r1, [sp, #0x30]
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	ldr	r7, [r6, #0x50]
	bl	__Func_c300
	ldr	r3, [sp, #0x30]
	and	r3, r5
	lsl	r3, #2
	mov	r0, r10
	ldr	r1, [r0, r3]
	mov	r0, r6
	bl	__Func_c2d8
	ldr	r2, [sp, #0x30]
	lsr	r1, r2, #16
	mov	r0, r6
	and	r1, r5
	bl	__Func_929d8
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, r7
	add	r2, #0x26
	strb	r3, [r2]
	ldr	r3, =OvlFunc_a00
	str	r3, [r6, #0x6c]
	mov	r3, r9
	str	r3, [r6, #0x30]
	ldr	r3, [sp, #0x2c]
	str	r3, [r6, #0x34]
	add	r4, sp, #0x34
	ldrh	r4, [r4]
	mov	r3, r6
	add	r3, #0x66
	strh	r4, [r3]
	ldr	r0, [sp, #0x34]
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.Lb00
	cmp	r4, #3
	bhi	.Lb34
	b	.Lb16
.Lb00:
	mov	r1, r11
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r7, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	b	.Lb32
.Lb16:
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, #3
	and	r4, r3
	ldrb	r2, [r7, #9]
	mov	r3, #0xd
	neg	r3, r3
	lsl	r1, r4, #2
	and	r3, r2
	orr	r3, r1
.Lb32:
	strb	r3, [r7, #9]
.Lb34:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a68

.thumb_func_start OvlFunc_b50
	ldr	r0, =.L1690
	bx	lr
.func_end OvlFunc_b50

.thumb_func_start OvlFunc_b58
	mov	r0, #0
	bx	lr
.func_end OvlFunc_b58

.thumb_func_start OvlFunc_b5c
	ldr	r0, =.L1750
	bx	lr
.func_end OvlFunc_b5c

.thumb_func_start OvlFunc_b64
	ldr	r0, =.L176c
	bx	lr
.func_end OvlFunc_b64

.thumb_func_start OvlFunc_b6c
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.Lb80
	ldr	r3, =0xfffff
	add	r5, r3
.Lb80:
	asr	r5, #20
	bl	__Func_916b0
	cmp	r5, #0x14
	bne	.Lba4
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x302
	bl	__Func_79374
	b	.Lbbc
.Lba4:
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x302
	bl	__Func_79358
.Lbbc:
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b6c

.thumb_func_start OvlFunc_bd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e40
	ldr	r7, [r3]
	mov	r9, r3
	mov	r3, #7
	and	r7, r3
	sub	sp, #0xc
	cmp	r7, #0
	bne	.Lcca
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r5, [r5, #8]
	lsl	r3, #2
	lsr	r3, #16
	lsl	r3, #16
	mov	r8, r5
	mov	r0, #9
	add	r8, r3
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0xc0
	ldr	r6, [r0, #0x10]
	lsl	r3, #11
	add	r6, r3
	bl	__Func_4458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r2
	lsl	r5, r3, #6
	sub	r5, r3
	lsl	r5, #3
	add	r5, r2
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r10
	ldr	r1, [r3, #0xc]
	neg	r5, r5
	str	r0, [sp, #4]
	mov	r3, #0
	mov	r0, r8
	mov	r2, r6
	str	r7, [sp, #8]
	str	r5, [sp]
	bl	OvlFunc_a68
	mov	r3, r9
	ldr	r7, [r3]
	mov	r3, #0xf
	and	r7, r3
	cmp	r7, #0
	bne	.Lcca
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r5, [r5, #8]
	lsl	r3, #2
	lsr	r3, #16
	lsl	r3, #16
	mov	r8, r5
	mov	r0, #9
	add	r8, r3
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0xc0
	ldr	r6, [r0, #0x10]
	lsl	r3, #11
	add	r6, r3
	bl	__Func_4458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r2
	lsl	r5, r3, #6
	sub	r5, r3
	lsl	r5, #3
	add	r5, r2
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r10
	ldr	r1, [r3, #0xc]
	neg	r5, r5
	str	r0, [sp, #4]
	mov	r2, r6
	mov	r0, r8
	mov	r3, #0
	str	r5, [sp]
	str	r7, [sp, #8]
	bl	OvlFunc_a68
.Lcca:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_bd0

.thumb_func_start OvlFunc_ce0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #9
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.Lcfe
	ldr	r3, =0xfffff
	add	r5, r3
.Lcfe:
	asr	r5, #20
	bl	__Func_916b0
	cmp	r5, #0x19
	beq	.Ld0a
	b	.Lea8
.Ld0a:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #0
	mov	r9, r3
	add	r0, #0x22
	mov	r3, #1
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xe
	mov	r0, #0xb
	bl	__Func_92950
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c548
	mov	r1, #0xcf
	mov	r2, #0xf0
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r5, =OvlFunc_bd0
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__Func_9228c
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #9
	bl	__Func_9228c
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_92054
	mov	r3, r9
	str	r3, [r0, #0x44]
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, =0x9999
	str	r3, [r0, #0x48]
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #7
	mov	r0, #9
	bl	__Func_92064
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r1, #0xd0
	mov	r2, #0xc8
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r0, #0xbd
	bl	__Func_f9080
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r5, [r5, #8]
	lsl	r3, #2
	lsr	r3, #16
	lsl	r3, #16
	mov	r8, r5
	mov	r0, #9
	add	r8, r3
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0xc0
	ldr	r6, [r0, #0x10]
	lsl	r3, #11
	add	r6, r3
	bl	__Func_4458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r2
	lsl	r5, r3, #6
	sub	r5, r3
	lsl	r5, #3
	add	r5, r2
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r10
	ldr	r1, [r3, #0xc]
	mov	r2, r6
	mov	r3, r9
	str	r0, [sp, #4]
	neg	r5, r5
	mov	r0, r8
	str	r3, [sp, #8]
	str	r5, [sp]
	bl	OvlFunc_a68
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x9a
	bl	__Func_f9080
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
	bl	__Func_12350
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, #0x15
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x2d
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
.Lea8:
	bl	__Func_91750
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ce0

.thumb_func_start OvlFunc_ecc
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0xa
	sub	sp, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Leec
	ldr	r0, =0xfffff
	add	r3, r0
.Leec:
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lefe
	ldr	r2, =0xfffff
	add	r3, r2
.Lefe:
	asr	r3, #20
	cmp	r5, #0x26
	beq	.Lf06
	b	.L105c
.Lf06:
	cmp	r3, #0xe
	beq	.Lf0c
	b	.L105c
.Lf0c:
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r0, #0xbc
	str	r3, [r5, #0x3c]
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r4, [r6, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0
	ldr	r1, [r5, #0xc]
	mov	r8, r0
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r3, #0x80
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r11, r0
	lsl	r3, #8
	mov	r0, r4
	bl	OvlFunc_a68
	mov	r0, #0xa
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	ldr	r0, =0x6666
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	mov	r9, r0
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r9
	bl	OvlFunc_a68
	mov	r0, #0xa
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	ldr	r0, =0xffff999a
	mov	r10, r0
	mov	r0, r9
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r10
	bl	OvlFunc_a68
	mov	r0, #0xa
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r4, [r6, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	ldr	r1, [r5, #0xc]
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	ldr	r3, =0xffff8000
	mov	r0, r4
	bl	OvlFunc_a68
	mov	r0, #0xa
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	mov	r0, r10
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r9
	bl	OvlFunc_a68
	mov	r0, #0xa
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	mov	r0, r10
	ldr	r3, [r6, #8]
	ldr	r1, [r5, #0xc]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r10
	bl	OvlFunc_a68
	ldr	r0, =0x301
	bl	__Func_79358
.L105c:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ecc

.thumb_func_start OvlFunc_1088
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_ecc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1088

.thumb_func_start OvlFunc_109c
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_c4
	bl	OvlFunc_ecc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_109c

.thumb_func_start OvlFunc_10b4
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_10b4

.thumb_func_start OvlFunc_10c0
	ldr	r0, =.L1814
	bx	lr
.func_end OvlFunc_10c0

.thumb_func_start OvlFunc_10c8
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =.L18ec
	ldr	r5, [r3]
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0xf0
	beq	.L111a
	cmp	r3, #0xf0
	bgt	.L10e8
	cmp	r3, #0x3c
	beq	.L10f8
	cmp	r3, #0xb4
	beq	.L1110
	b	.L112e
.L10e8:
	mov	r2, #0x87
	lsl	r2, #1
	cmp	r3, r2
	beq	.L111a
	add	r2, #0xd2
	cmp	r3, r2
	beq	.L1126
	b	.L112e
.L10f8:
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__Func_937b8
	b	.L112e
.L1110:
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_9259c
	b	.L112e
.L111a:
	mov	r0, #0xd
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	b	.L112e
.L1126:
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_924d4
.L112e:
	ldr	r3, =ewram_240
	mov	r2, #0x8d
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1148
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.L1148:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c8

.thumb_func_start OvlFunc_115c
	push	{lr}
	ldr	r0, =OvlFunc_10c8
	bl	__Func_4278
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	ldr	r0, =0x132f
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0xd
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x96
	mov	r0, #0xd
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0x96
	mov	r0, #0xd
	lsl	r1, #2
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r1, #0x8e
	mov	r2, #0x94
	mov	r0, #0xd
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x869
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_115c

.thumb_func_start OvlFunc_121c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #9
	sub	sp, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1272
	mov	r1, #0xac
	mov	r2, #0xd0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_10704
	b	.L1284
.L1272:
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_10704
.L1284:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12ae
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #0x15
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x2d
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
.L12ae:
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.L131a
	mov	r1, #0x9a
	mov	r2, #0xe8
	lsl	r2, #16
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_923e4
	ldr	r6, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #2
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L131c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	sub	r3, #1
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #2
	orr	r5, r3
	mov	r2, #0xe
	mov	r3, #0x24
	strb	r5, [r0]
	mov	r1, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x24
	mov	r2, #5
	mov	r3, #1
	bl	__Func_10704
	b	.L131c
.L131a:
	ldr	r6, =ewram_240
.L131c:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L1368
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x22
	mov	r1, #0xcc
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #9
	mov	r2, #0xc0
	bl	__Func_92158
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	OvlFunc_ce0
.L1368:
	mov	r2, #0x8d
	lsl	r2, #2
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1386
	ldr	r3, =.L18ec
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	ldr	r0, =OvlFunc_10c8
	lsl	r1, #4
	bl	__Func_41d8
.L1386:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_121c

	.section .data

.L1554:
	.incbin "overlays/rom_799abc/orig.bin", 0x1554, (0x1594-0x1554)
.L1594:
	.incbin "overlays/rom_799abc/orig.bin", 0x1594, (0x15ac-0x1594)
.L15ac:
	.incbin "overlays/rom_799abc/orig.bin", 0x15ac, (0x160c-0x15ac)
.L160c:
	.incbin "overlays/rom_799abc/orig.bin", 0x160c, (0x1690-0x160c)
.L1690:
	.incbin "overlays/rom_799abc/orig.bin", 0x1690, (0x1750-0x1690)
.L1750:
	.incbin "overlays/rom_799abc/orig.bin", 0x1750, (0x176c-0x1750)
.L176c:
	.incbin "overlays/rom_799abc/orig.bin", 0x176c, (0x1814-0x176c)
.L1814:
	.incbin "overlays/rom_799abc/orig.bin", 0x1814, (0x18ec-0x1814)
.L18ec:
	.incbin "overlays/rom_799abc/orig.bin", 0x18ec
