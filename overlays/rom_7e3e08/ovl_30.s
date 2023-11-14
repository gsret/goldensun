	.include "macros.inc"
	.include "gba.inc"

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
	ldr	r0, =.L3eb4
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
	ldr	r2, =.L3eb4
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
	ldr	r2, =.L3ef4
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
	ldr	r3, =.L3eb4
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
	ldr	r3, =.L3ef4
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L3f0c
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
	ldr	r4, =.L3eb4
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
	ldr	r5, =.L3f0c
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
	ldr	r1, =.L3eb4
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
	ldr	r0, =.L3f0c
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
	ldr	r0, =.L3f0c
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
	ldr	r0, =.L3eb4
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
	ldr	r2, =.L3eb4
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
	ldr	r4, =.L3f0c
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
	ldr	r2, =.L3eb4
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
	ldr	r4, =.L3f0c
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
	ldr	r1, =.L3ef4
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
	ldr	r4, =.L3f0c
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
	mov	r0, #0xd
	mov	r1, #0x41
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_9dc

.thumb_func_start OvlFunc_9ec
	ldr	r0, =.L3f70
	bx	lr
.func_end OvlFunc_9ec

.thumb_func_start OvlFunc_9f4
	mov	r0, #0
	bx	lr
.func_end OvlFunc_9f4

.thumb_func_start OvlFunc_9f8
	ldr	r0, =.L4138
	bx	lr
.func_end OvlFunc_9f8

.thumb_func_start OvlFunc_a00
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.La18
	ldr	r0, =.L41b0
	b	.La2e
.La18:
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.La22
	ldr	r0, =.L4270
	b	.La2e
.La22:
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.La2c
	ldr	r0, =.L4318
	b	.La2e
.La2c:
	ldr	r0, =.L4198
.La2e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_a00

.thumb_func_start OvlFunc_a54
	push	{lr}
	ldr	r3, =ewram_1004
	ldrb	r2, [r3]
	ldr	r1, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r1, [r3]
	lsl	r2, #24
	asr	r2, #24
	cmp	r2, #0
	bne	.La70
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, #2
	b	.Laa6
.La70:
	cmp	r2, #1
	bne	.La7c
	mov	r2, #0xe0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La7c:
	cmp	r2, #2
	bne	.La88
	mov	r2, #0xc0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La88:
	cmp	r2, #3
	bne	.La94
	mov	r2, #0xa0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La94:
	cmp	r2, #4
	bne	.Laa0
	mov	r2, #0x80
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.Laa0:
	mov	r2, #0xc0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #3
.Laa6:
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_a54

.thumb_func_start OvlFunc_abc
	push	{lr}
	ldr	r2, =ewram_1004
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	strb	r0, [r2]
	ldr	r2, =0xcb8
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lad6
	bl	OvlFunc_a54
.Lad6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_abc

.thumb_func_start OvlFunc_ae8
	push	{lr}
	mov	r0, #0
	bl	OvlFunc_abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_ae8

.thumb_func_start OvlFunc_af4
	push	{lr}
	mov	r0, #1
	bl	OvlFunc_abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_af4

.thumb_func_start OvlFunc_b00
	push	{lr}
	mov	r0, #2
	bl	OvlFunc_abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_b00

.thumb_func_start OvlFunc_b0c
	push	{lr}
	mov	r0, #3
	bl	OvlFunc_abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_b0c

.thumb_func_start OvlFunc_b18
	push	{lr}
	mov	r0, #4
	bl	OvlFunc_abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_b18

.thumb_func_start OvlFunc_b24
	push	{lr}
	mov	r0, #5
	bl	OvlFunc_abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_b24

.thumb_func_start OvlFunc_b30
	push	{r5, lr}
	ldr	r5, =iwram_1ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x4d
	bl	__Func_8fe38
	ldr	r3, =0x52a
	ldr	r5, [r5, #0x10]
	add	r2, r5, r3
	mov	r3, #5
	strh	r3, [r2]
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb7e
	ldr	r3, =0x534
	add	r2, r5, r3
	ldr	r3, =0x1d1d
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	bl	OvlFunc_a54
	b	.Lb9a
.Lb7e:
	ldr	r3, =0x534
	add	r2, r5, r3
	ldr	r3, =0x3f3f
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r5, r3
	mov	r3, #0x1f
	strh	r3, [r2]
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0xc04
	add	r3, #2
	strh	r2, [r3]
.Lb9a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b30

.thumb_func_start OvlFunc_bc8
	push	{lr}
	ldr	r3, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r0
	ldrh	r1, [r3]
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x92
	cmp	r2, r3
	bne	.Lbe6
	mov	r2, #0x80
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #5
	strh	r2, [r3]
.Lbe6:
	lsl	r3, r1, #16
	ldr	r2, =0x97
	asr	r3, #16
	cmp	r3, r2
	bne	.Lc18
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x11
	mov	r1, #4
	bl	__Func_92950
	mov	r0, #0x12
	mov	r1, #0xb
	bl	__Func_92950
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_92950
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92950
.Lc18:
	pop	{r0}
	bx	r0
.func_end OvlFunc_bc8

.thumb_func_start OvlFunc_c2c
	push	{r5, lr}
	ldr	r3, =iwram_1f30
	mov	r0, #0x80
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc4a
	bl	OvlFunc_b30
	mov	r2, r5
	add	r2, #0x34
	mov	r3, #1
	strb	r3, [r2]
.Lc4a:
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.Lc84
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0x14
	mov	r1, #6
	bl	__Func_92950
.Lc84:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c2c

.thumb_func_start OvlFunc_c98
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f30
	ldr	r6, [r3]
	mov	r1, #0x80
	ldr	r5, [r6, #0x10]
	mov	r2, #0
	mov	r3, #0x18
	ldrsh	r0, [r6, r3]
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, r5
	bl	__Func_c598
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r0, #0
	bl	__Func_c150
	mov	r4, r0
	cmp	r4, #0
	beq	.Lce6
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r4
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x54
	str	r2, [r5, #0x6c]
	str	r4, [r6, #0x10]
	strb	r2, [r3]
.Lce6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c98

.thumb_func_start OvlFunc_cf8
	push	{lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bne	.Ld3c
	ldr	r3, [r0, #0x10]
	asr	r4, r3, #20
	cmp	r4, #0x14
	bne	.Ld3c
	mov	r1, r0
	mov	r2, #2
	add	r1, #0x55
	mov	r3, #0
	strb	r2, [r1]
	str	r3, [r0, #0x14]
	mov	r3, r0
	add	r3, #0x23
	strb	r2, [r3]
	mov	r3, #0x20
	str	r3, [sp]
	mov	r0, #0x1e
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r4, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x212
	bl	__Func_79358
.Ld3c:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_cf8

.thumb_func_start OvlFunc_d48
	push	{lr}
	bl	OvlFunc_c4
	bl	OvlFunc_cf8
	pop	{r0}
	bx	r0
.func_end OvlFunc_d48

.thumb_func_start OvlFunc_d58
	push	{r5, lr}
	ldr	r3, =iwram_1f30
	mov	r0, #0xb
	sub	sp, #0xc
	ldr	r5, [r3]
	bl	__Func_92054
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	__Func_120dc
	cmp	r0, #0
	ble	.Ld84
	mov	r2, r5
	add	r2, #0x35
	mov	r3, #1
	strb	r3, [r2]
.Ld84:
	add	sp, #0xc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d58

.thumb_func_start OvlFunc_d90
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f30
	mov	r0, #0xb
	ldr	r5, [r3]
	sub	sp, #8
	bl	__Func_92054
	add	r5, #0x35
	ldrb	r5, [r5]
	lsl	r5, #24
	asr	r5, #24
	mov	r6, r0
	cmp	r5, #0
	bne	.Ldd8
	mov	r3, #0x49
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r6, #0
	beq	.Ldd2
	mov	r2, r6
	mov	r3, #2
	add	r2, #0x55
	strb	r3, [r2]
	mov	r3, r6
	add	r3, #0x23
	strb	r5, [r3]
.Ldd2:
	ldr	r0, =0x211
	bl	__Func_79358
.Ldd8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d90

.thumb_func_start OvlFunc_de8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__Func_92054
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	mov	r1, #0xf0
	ldrh	r3, [r5, #6]
	lsl	r1, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #14
	mov	r2, r6
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_120dc
	cmp	r0, #0
	bne	.Le9c
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
	mov	r2, r8
	strb	r2, [r7]
	bl	__Func_91750
.Le9c:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_de8

.thumb_func_start OvlFunc_eac
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_474
	cmp	r0, #0
	beq	.Led4
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_608
.Led4:
	bl	__Func_91750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_eac

.thumb_func_start OvlFunc_ee0
	mov	r1, r0
	add	r1, #0x64
	ldrh	r3, [r1]
	ldr	r2, =3
	lsl	r3, #16
	asr	r3, #18
	ldr	r4, =.L4468
	and	r3, r2
	lsl	r3, #2
	ldr	r3, [r4, r3]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	mov	r2, #0xf
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
	b	.Lf0c

	.pool_aligned

.Lf0c:
	bx	lr
.func_end OvlFunc_ee0

.thumb_func_start OvlFunc_f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xfc
	lsl	r3, #17
	mov	r8, r3
	mov	r3, #0xc0
	lsl	r3, #13
	sub	sp, #0xc
	mov	r9, r1
	mov	r11, r2
	mov	r10, r3
	bl	__Func_92054
	mov	r3, r8
	mov	r5, sp
	mov	r6, r0
	str	r3, [r5]
	mov	r0, r9
	mov	r3, r10
	mov	r1, r11
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	mov	r7, #0x90
	ldr	r3, [r5, #8]
	lsl	r7, #16
	str	r3, [r6, #0xc]
	str	r7, [r6, #0x10]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f10

.thumb_func_start OvlFunc_f6c
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, #0
.Lf72:
	mov	r0, r5
	mov	r1, #0xc0
	mov	r2, r6
	add	r0, #0xb
	lsl	r1, #13
	bl	OvlFunc_f10
	ldr	r3, =0xffffcccd
	add	r5, #1
	add	r6, r3
	cmp	r5, #4
	ble	.Lf72
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f6c

.thumb_func_start OvlFunc_f94
	push	{r5, r6, r7, lr}
	ldr	r4, =.L3f6c
	ldr	r5, [r4]
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	sub	sp, #4
	mov	r7, #1
	ldrh	r1, [r5]
	cmp	r2, #0
	bne	.Lfbe
	ldrh	r3, [r5, #8]
	ldr	r0, =0xbff0000
	add	r3, #0x10
	strh	r3, [r5, #8]
	lsl	r3, #16
	cmp	r3, r0
	bls	.L1032
	add	r3, r1, #1
	strh	r3, [r5]
	strh	r2, [r5, #2]
	b	.L1032
.Lfbe:
	cmp	r2, #1
	bne	.Lfcc
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	cmp	r3, #0x1e
	bne	.L1032
	b	.Lfe0
.Lfcc:
	cmp	r2, #2
	bne	.Lfe6
	ldrh	r3, [r5, #8]
	ldr	r0, =0xfff8
	ldr	r2, =0x2ff0000
	add	r3, r0
	strh	r3, [r5, #8]
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L1032
.Lfe0:
	add	r3, r1, #1
	strh	r3, [r5]
	b	.L1032
.Lfe6:
	cmp	r2, #3
	bne	.L102c
	ldr	r3, =ewram_1002
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	mov	r1, #5
	lsl	r0, r6, #16
	str	r4, [sp]
	bl	_Func_af0
	ldrh	r3, [r5, #6]
	ldr	r2, =0xc2ff0000
	sub	r3, r0
	lsl	r3, #16
	add	r3, r2
	ldr	r2, =0x5fe0000
	ldr	r4, [sp]
	cmp	r3, r2
	bhi	.L1032
	mov	r2, #0x80
	lsl	r2, #7
	add	r3, r0, r2
	strh	r3, [r5, #6]
	mov	r2, #0
	mov	r3, #0x63
	mov	r0, r6
	strh	r3, [r5]
	strh	r2, [r5, #8]
	add	r0, #0xb
	bl	__Func_92054
	ldr	r3, =OvlFunc_ee0
	ldr	r4, [sp]
	str	r3, [r0, #0x6c]
	b	.L1032
.L102c:
	cmp	r2, #0x63
	bne	.L1032
	mov	r7, #0
.L1032:
	cmp	r7, #0
	beq	.L106a
	ldr	r2, [r4]
	ldrh	r3, [r2, #6]
	ldrh	r1, [r2, #8]
	add	r3, r1
	strh	r3, [r2, #6]
	ldrh	r0, [r2, #6]
	str	r4, [sp]
	bl	OvlFunc_f6c
	ldr	r4, [sp]
	ldr	r1, [r4]
	ldrh	r3, [r1, #0xa]
	ldrh	r2, [r1, #8]
	mov	r0, #0xc0
	add	r3, r2
	strh	r3, [r1, #0xa]
	lsl	r0, #22
	lsl	r3, #16
	cmp	r3, r0
	bls	.L106a
	mov	r3, #0
	strh	r3, [r1, #0xa]
	mov	r0, #0x87
	bl	__Func_f9080
	ldr	r4, [sp]
.L106a:
	ldr	r2, [r4]
	ldrh	r3, [r2, #2]
	add	r3, #1
	strh	r3, [r2, #2]
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f94

.thumb_func_start OvlFunc_109c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	sub	sp, #4
	mov	r9, r2
	mov	r7, r0
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x21db
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
	mov	r6, #0x80
	bl	__Func_91750
	mov	r4, #0
	mov	r8, r4
	lsl	r6, #9
.L10d4:
	mov	r0, r4
	add	r0, #0xb
	str	r4, [sp]
	bl	__Func_92054
	ldr	r4, [sp]
	mov	r5, r0
	mov	r3, r8
	add	r4, #1
	str	r3, [r5, #0x6c]
	str	r6, [r5, #0x18]
	str	r6, [r5, #0x1c]
	cmp	r4, #4
	ble	.L10d4
	ldr	r3, =ewram_1001
	ldrb	r2, [r3]
	mov	r8, r2
	ldr	r2, =.L3f6c
	mov	r6, #1
	ldrsb	r6, [r3, r6]
	ldr	r5, [r2]
	mov	r10, r2
	ldrb	r2, [r3, #1]
	lsl	r0, r6, #16
	mov	r1, #5
	mov	r11, r2
	bl	_Func_af0
	mov	r3, #0x80
	lsl	r3, #7
	mov	r2, r8
	add	r0, r3
	lsl	r3, r2, #24
	asr	r3, #24
	strh	r0, [r5, #6]
	cmp	r3, #0
	bne	.L113c
	cmp	r7, #0x10
	bne	.L112e
	mov	r3, #1
	mov	r0, #0x6e
	mov	r8, r3
	bl	__Func_f9080
	b	.L1134
.L112e:
	mov	r0, #0x72
	bl	__Func_f9080
.L1134:
	ldr	r2, =ewram_1000
	mov	r3, #0
	strb	r3, [r2]
	b	.L1256
.L113c:
	cmp	r3, #1
	bne	.L11da
	cmp	r7, #0x10
	bne	.L114c
	mov	r0, #0x6e
	bl	__Func_f9080
	b	.L1256
.L114c:
	cmp	r7, #0x14
	bne	.L11ce
	mov	r2, #2
	mov	r0, #0x6e
	mov	r8, r2
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r2, r10
	ldr	r3, [r2]
	mov	r2, #6
	ldrsh	r7, [r3, r2]
	ldr	r3, =0xffffcccd
	mov	r4, #0
	mov	r10, r3
.L116e:
	mov	r5, r4
	add	r5, #0xb
	lsl	r7, #16
	mov	r1, #0xc0
	lsr	r2, r7, #16
	mov	r0, r5
	lsl	r1, #13
	str	r4, [sp]
	bl	OvlFunc_f10
	mov	r0, #0x97
	bl	__Func_f9080
	mov	r0, r5
	bl	__Func_92054
	mov	r3, #0
	mov	r5, r0
	str	r3, [r5, #0x18]
	ldr	r6, =0x6666
	ldr	r4, [sp]
.L1198:
	str	r6, [r5, #0x1c]
	str	r6, [r5, #0x18]
	mov	r0, #1
	str	r4, [sp]
	bl	__Func_30f8
	mov	r2, #0xc0
	lsl	r2, #4
	add	r6, r2
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xffff
	ldr	r4, [sp]
	cmp	r3, r2
	ble	.L1198
	lsr	r3, r7, #16
	add	r3, r10
	lsl	r3, #16
	add	r4, #1
	asr	r7, r3, #16
	cmp	r4, #4
	ble	.L116e
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r3, #1
	mov	r9, r3
	b	.L1256
.L11ce:
	mov	r0, #0x72
	bl	__Func_f9080
	mov	r2, #0
	mov	r8, r2
	b	.L1256
.L11da:
	cmp	r3, #2
	bne	.L1256
	mov	r3, r6
	add	r3, #0x10
	cmp	r7, r3
	beq	.L1246
	mov	r3, #0
	mov	r0, #0x72
	mov	r8, r3
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r4, #0
.L11f8:
	mov	r7, r4
	add	r7, #0xb
	mov	r0, r7
	str	r4, [sp]
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x97
	bl	__Func_f9080
	ldr	r6, [r5, #0x18]
	ldr	r2, =0x6666
	ldr	r4, [sp]
	cmp	r6, r2
	ble	.L1230
.L1216:
	str	r6, [r5, #0x1c]
	str	r6, [r5, #0x18]
	mov	r0, #1
	str	r4, [sp]
	bl	__Func_30f8
	ldr	r3, =0xfffff400
	ldr	r2, =0x6666
	add	r6, r3
	ldr	r3, [r5, #0x18]
	ldr	r4, [sp]
	cmp	r3, r2
	bgt	.L1216
.L1230:
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0
	str	r4, [sp]
	bl	__Func_923e4
	ldr	r4, [sp]
	add	r4, #1
	cmp	r4, #4
	ble	.L11f8
	b	.L1256
.L1246:
	mov	r0, #0x6e
	bl	__Func_f9080
	mov	r3, #1
	mov	r0, #0x1e
	mov	r9, r3
	bl	__Func_30f8
.L1256:
	ldr	r7, =ewram_1001
	mov	r2, r8
	mov	r3, r9
	strb	r2, [r7]
	cmp	r3, #0
	bne	.L1264
	b	.L13c0
.L1264:
	sub	r3, r7, #1
	ldrb	r5, [r3]
	add	r5, #1
	strb	r5, [r3]
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r11
	add	r0, #1
	lsl	r0, #24
	asr	r0, #24
	mov	r1, #5
	add	r0, #5
	bl	_Func_b1c
	ldr	r6, =.L3f6c
	strb	r0, [r7, #1]
	ldr	r2, [r6]
	mov	r3, #0
	strh	r3, [r2]
	strh	r3, [r2, #2]
	mov	r3, #0x80
	lsl	r3, #2
	strh	r3, [r2, #8]
	mov	r3, #0xc0
	lsl	r5, #24
	lsl	r3, #6
	mov	r1, #0xc8
	lsr	r5, #24
	strh	r3, [r2, #0xa]
	ldr	r0, =OvlFunc_f94
	lsl	r1, #4
	bl	__Func_41d8
	cmp	r5, #2
	bhi	.L12d8
	ldr	r3, [r6]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	beq	.L12ca
	mov	r5, r6
.L12ba:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L12ba
.L12ca:
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r0, #0x6e
	bl	__Func_f9080
	b	.L13ba
.L12d8:
	mov	r3, #0x63
	strb	r3, [r7]
	ldr	r3, [r6]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	beq	.L12f8
	mov	r5, r6
.L12e8:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L12e8
.L12f8:
	ldr	r2, [r6]
	mov	r3, #2
	mov	r1, #0
	strh	r3, [r2]
	strh	r1, [r2, #2]
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	ldr	r2, [r6]
	mov	r3, #0x63
	strh	r3, [r2]
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r3, #0xc0
	lsl	r3, #13
	mov	r8, r3
	ldr	r3, [r6]
	mov	r2, #6
	ldrsh	r7, [r3, r2]
	mov	r3, #0xc0
	lsl	r3, #4
	mov	r10, r3
.L1346:
	mov	r4, #0
.L1348:
	mov	r6, r4
	add	r6, #0xb
	mov	r0, r6
	str	r4, [sp]
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #0x18]
	sub	r3, #0x10
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	sub	r3, #0x10
	str	r3, [r5, #0x1c]
	lsl	r5, r7, #16
	lsr	r5, #16
	mov	r2, r5
	mov	r0, r6
	mov	r1, r8
	bl	OvlFunc_f10
	ldr	r2, =0xffffcccd
	ldr	r4, [sp]
	add	r5, r2
	lsl	r5, #16
	add	r4, #1
	asr	r7, r5, #16
	cmp	r4, #4
	ble	.L1348
	lsl	r3, r7, #16
	lsr	r3, #16
	add	r3, r10
	lsl	r3, #16
	add	r8, r2
	mov	r0, #1
	asr	r7, r3, #16
	bl	__Func_30f8
	mov	r3, r8
	cmp	r3, #0
	bgt	.L1346
	mov	r4, #0
.L139a:
	mov	r0, r4
	add	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	str	r4, [sp]
	bl	__Func_923e4
	ldr	r4, [sp]
	add	r4, #1
	cmp	r4, #4
	ble	.L139a
	bl	OvlFunc_3ad4
	mov	r0, #0x50
	bl	__Func_f9080
.L13ba:
	ldr	r0, =OvlFunc_f94
	bl	__Func_4278
.L13c0:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_109c

.thumb_func_start OvlFunc_13f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, =0x962
	bl	__Func_79358
	mov	r0, #0xed
	bl	__Func_78a08
	bl	__Func_916b0
	bl	__Func_8e118
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x2183
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x84
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd0
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x10
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r0, #2
	bl	__Func_9233c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	ldr	r2, [r7, #0x50]
	mov	r3, #0
	strh	r3, [r2, #0x1e]
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0x46
	bl	__Func_92560
	mov	r6, #0xd
	neg	r6, r6
	mov	r5, #0x1d
.L1566:
	ldr	r1, [r7, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #2
	bl	__Func_9163c
	ldr	r1, [r7, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r6
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #2
	sub	r5, #1
	bl	__Func_9163c
	cmp	r5, #0
	bge	.L1566
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r6, [r0, r2]
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x12
	ldrsh	r5, [r0, r3]
	mov	r1, #0
	mov	r0, #8
	mov	r2, #0
	lsl	r5, #16
	lsl	r6, #16
	bl	__Func_923e4
	mov	r1, r6
	mov	r2, r5
	mov	r0, #9
	bl	__Func_923e4
	ldr	r3, [r7, #0x50]
	mov	r2, #0
	add	r3, #0x26
	strb	r2, [r3]
	mov	r0, #0x1e
	bl	__Func_f9080
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #9
	mov	r1, #0x20
	mov	r2, #0x20
	bl	__Func_92304
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_922c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_922c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_922c4
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92304
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #1
	bl	__Func_30f8
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
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
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_92560
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x1e
	bl	__Func_9280c
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92c40
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
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1812
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x218a
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	b	.L180c

	.pool_aligned

.L180c:
	bl	__Func_92f84
	b	.L1820
.L1812:
	ldr	r0, =0x218b
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
.L1820:
	ldr	r0, =0x218c
	bl	__Func_92b94
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
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x30
	mov	r0, #2
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x8d
	mov	r1, #1
	bl	__Func_96fb0
	mov	r1, #9
	mov	r0, #2
	bl	__Func_970f8
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	mov	r0, #0x96
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_967e4
	bl	__Func_97174
	mov	r1, #1
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
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
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_92560
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0x1e
	bl	__Func_92560
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #9
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0
	mov	r2, #0x30
	mov	r0, #2
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	b	.L1c1c

	.pool_aligned

.L1c1c:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
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
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x50
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1d54
	ldr	r0, =0x21a4
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	b	.L1d62

	.pool_aligned

.L1d54:
	ldr	r0, =0x21a5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L1d62:
	ldr	r0, =0x21a6
	bl	__Func_92b94
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92c40
	ldr	r0, =0x21a8
	bl	__Func_92b94
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	ldr	r3, =iwram_1ecc
	ldr	r3, [r3]
	ldr	r2, =0x52a
	mov	r9, r3
	add	r2, r9
	mov	r3, #0x20
	strh	r3, [r2]
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	ldr	r7, =REG_BLDALPHA
	mov	r5, #0
	mov	r6, #0x10
	mov	r10, r2
	mov	r8, r3
.L1e22:
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	lsl	r3, r5, #8
	orr	r3, r6
	strh	r3, [r7]
	mov	r0, #7
	add	r5, #1
	bl	__Func_30f8
	sub	r6, #1
	cmp	r5, #0x10
	ble	.L1e22
	ldr	r2, =0x536
	ldr	r3, =0x3f3f
	add	r2, r9
	strh	r3, [r2]
	mov	r1, #0x8c
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x94
	mov	r2, #0x98
	lsl	r2, #17
	mov	r0, #0xb
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_9335c
	bl	__Func_93530
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xa
	bl	__Func_920c0
	mov	r0, #1
	mov	r1, #0xa
	bl	__Func_920c0
	mov	r0, #3
	mov	r1, #0xa
	bl	__Func_920c0
	mov	r0, #2
	mov	r1, #0xa
	bl	__Func_920c0
	mov	r0, #0xa
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__Func_92064
	ldr	r2, =0xb333
	mov	r0, #0xb
	ldr	r1, =0x16666
	bl	__Func_92064
	ldr	r5, =.L4478
	mov	r0, #0xa
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0xb
	neg	r1, r1
	bl	__Func_92304
	mov	r1, r5
	mov	r0, #0xb
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_920e8
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0xa
	bl	__Func_92304
	mov	r0, #0xb
	bl	__Func_920e8
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #3
	bl	__Func_920a0
	mov	r0, #2
	bl	__Func_920a0
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xf8
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
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
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #0xb
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #0xa
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_92560
	mov	r2, #0x1e
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	b	.L2184

	.pool_aligned

.L2184:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #9
	bl	__Func_937b8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0xb
	mov	r2, #0x46
	bl	__Func_92848
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #9
	bl	__Func_920c0
	mov	r0, #1
	mov	r1, #9
	bl	__Func_920c0
	mov	r0, #3
	mov	r1, #9
	bl	__Func_920c0
	mov	r0, #2
	mov	r1, #9
	bl	__Func_920c0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x10
	mov	r0, #9
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_922c4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_922c4
	mov	r1, #0x10
	mov	r0, #9
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r2, #0x20
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92304
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #3
	bl	__Func_920a0
	mov	r0, #2
	bl	__Func_920a0
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0xa
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
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #9
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r1, =.L44c8
	mov	r0, #0xb
	bl	__Func_9207c
	ldr	r1, =.L4518
	mov	r0, #0xa
	bl	__Func_9207c
	ldr	r1, =.L457c
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92848
	mov	r2, #0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92848
	mov	r0, #9
	bl	__Func_920e8
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
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
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0
	b	.L2614

	.pool_aligned

.L2614:
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf8
	mov	r1, #1
	mov	r2, #0xf8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0xb
	bl	__Func_937b8
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0xb
	mov	r2, #0x3c
	bl	__Func_9280c
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
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0x20
	mov	r2, #0
	bl	__Func_922c4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x40
	bl	__Func_922c4
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	__Func_922c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x40
	bl	__Func_92304
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	ldr	r7, =REG_BLDALPHA
	mov	r5, #0
	mov	r6, #0x10
	mov	r10, r2
	mov	r8, r3
.L2848:
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	lsl	r3, r6, #8
	orr	r3, r5
	strh	r3, [r7]
	mov	r0, #7
	add	r5, #1
	bl	__Func_30f8
	sub	r6, #1
	cmp	r5, #0x10
	ble	.L2848
	ldr	r2, =0x52a
	mov	r3, #5
	add	r2, r9
	strh	r3, [r2]
	ldr	r2, =0x536
	mov	r3, #0x1f
	add	r2, r9
	strh	r3, [r2]
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0xc04
	add	r3, #2
	strh	r2, [r3]
	mov	r0, #0
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
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
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2944
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x21ce
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	b	.L2966
.L2944:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x21cf
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L2966:
	ldr	r0, =0x21d0
	bl	__Func_92b94
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
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
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2ad8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x21d7
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x14
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
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	b	.L2b6c

	.pool_aligned

.L2ad8:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x21d9
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_937b8
.L2b6c:
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
	beq	.L2bb0
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L2bb0:
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
	beq	.L2be0
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L2be0:
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
	beq	.L2c10
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L2c10:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_8acc4
	bl	__Func_91750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13f8

.thumb_func_start OvlFunc_2c44
	push	{r5, lr}
	mov	r0, #0x96
	lsl	r0, #4
	bl	__Func_79358
	mov	r0, #0x18
	bl	__Func_f9080
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x214f
	bl	__Func_92b94
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xf8
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xf8
	mov	r2, #0xc0
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x10
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r0, #2
	bl	__Func_9233c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
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
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
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
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_9280c
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x83
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
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
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2fe8
	ldr	r0, =0x2164
	bl	__Func_92b94
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #1
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_92848
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	b	.L3034

	.pool_aligned

.L2fe8:
	ldr	r0, =0x2168
	bl	__Func_92b94
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #1
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92848
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L3034:
	ldr	r5, =0x2165
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #2
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #2
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92848
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #3
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92304
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #3
	mov	r1, #2
	bl	__Func_92848
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #2
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	add	r5, #7
	bl	__Func_92adc
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
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
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
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
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x32
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
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
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #3
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #3
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x11
	b	.L33f4

	.pool_aligned

.L33f4:
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
	beq	.L3436
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L3436:
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
	beq	.L3466
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L3466:
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
	beq	.L3496
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L3496:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_8acc4
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c44

.thumb_func_start OvlFunc_34bc
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r5, =0x217f
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L34f4
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L3508
.L34f4:
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
.L3508:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_34bc

.thumb_func_start OvlFunc_3518
	push	{lr}
	mov	r0, #0x96
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3586
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3586
	ldr	r0, =0x961
	bl	__Func_79358
	bl	__Func_916b0
	ldr	r0, =0x217d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
.L3586:
	pop	{r0}
	bx	r0
.func_end OvlFunc_3518

.thumb_func_start OvlFunc_3598
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.L35b0
	ldr	r0, =.L4688
	b	.L35da
.L35b0:
	ldr	r3, =0x94
	cmp	r2, r3
	bne	.L35ba
	ldr	r0, =.L4724
	b	.L35da
.L35ba:
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.L35c4
	ldr	r0, =.L476c
	b	.L35da
.L35c4:
	ldr	r3, =0x96
	cmp	r2, r3
	bne	.L35ce
	ldr	r0, =.L4808
	b	.L35da
.L35ce:
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.L35d8
	ldr	r0, =.L4850
	b	.L35da
.L35d8:
	ldr	r0, =.L45e0
.L35da:
	pop	{r1}
	bx	r1
.func_end OvlFunc_3598

.thumb_func_start OvlFunc_3610
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.L363c
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	ldr	r4, [r5, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r4, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
.L363c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3610

.thumb_func_start OvlFunc_3644
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, =ewram_240
	mov	r0, #0xe1
	lsl	r0, #1
	add	r0, r2
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	sub	sp, #0xc
	mov	r12, r0
	cmp	r3, #0
	bne	.L36bc
	mov	r3, #0xe0
	lsl	r3, #1
	add	r0, r2, r3
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r3, =0x93
	ldrh	r1, [r0]
	cmp	r2, r3
	bne	.L3676
	mov	r3, #0xa
	mov	r2, r12
	strh	r3, [r2]
.L3676:
	lsl	r3, r1, #16
	ldr	r2, =0x94
	asr	r3, #16
	cmp	r3, r2
	bne	.L3688
	mov	r1, r12
	mov	r3, #0x14
	strh	r3, [r1]
	ldrh	r1, [r0]
.L3688:
	lsl	r3, r1, #16
	ldr	r2, =0x95
	asr	r3, #16
	cmp	r3, r2
	bne	.L369a
	mov	r3, #0x1e
	mov	r2, r12
	strh	r3, [r2]
	ldrh	r1, [r0]
.L369a:
	lsl	r3, r1, #16
	ldr	r2, =0x96
	asr	r3, #16
	cmp	r3, r2
	bne	.L36ac
	mov	r1, r12
	mov	r3, #0x28
	strh	r3, [r1]
	ldrh	r1, [r0]
.L36ac:
	lsl	r3, r1, #16
	ldr	r2, =0x97
	asr	r3, #16
	cmp	r3, r2
	bne	.L36bc
	mov	r3, #0x32
	mov	r2, r12
	strh	r3, [r2]
.L36bc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79374
	ldr	r6, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r6, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x92
	cmp	r2, r3
	bne	.L3722
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.L36fe
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L36f8
	ldr	r3, =ewram_1004
	strb	r0, [r3]
.L36f8:
	ldr	r0, =0x201
	bl	__Func_79358
.L36fe:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L3722
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L371c
	ldr	r2, =ewram_1004
	mov	r3, #5
	strb	r3, [r2]
.L371c:
	ldr	r0, =0x201
	bl	__Func_79358
.L3722:
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r6, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.L376e
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3748
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L376e
.L3748:
	mov	r0, #8
	bl	__Func_92054
	ldr	r1, [r0, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, [r0, #0x50]
	mov	r2, #2
	add	r3, #0x26
	strb	r2, [r3]
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
.L376e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.L37fc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	mov	r0, #8
	bl	OvlFunc_8c0
	mov	r0, #9
	bl	OvlFunc_8c0
	mov	r0, #0xa
	bl	OvlFunc_8c0
	ldr	r0, =0x211
	bl	__Func_79338
	cmp	r0, #0
	beq	.L37c0
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_924d4
	mov	r3, #0x49
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L37d0
.L37c0:
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L37d0:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =0x212
	bl	__Func_79338
	cmp	r0, #0
	beq	.L37fa
	mov	r3, #0x20
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L37fa:
	ldr	r6, =ewram_240
.L37fc:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x97
	cmp	r2, r3
	beq	.L380e
	b	.L39a4
.L380e:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	mov	r0, #8
	bl	OvlFunc_8c0
	mov	r0, #9
	bl	OvlFunc_8c0
	mov	r0, #0xa
	bl	OvlFunc_8c0
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, =OvlFunc_3610
	str	r5, [r0, #0x6c]
	mov	r0, #9
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0xe1
	str	r5, [r0, #0x6c]
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x34
	bne	.L3876
	ldr	r2, =.L3f6c
	add	r0, sp, #8
	mov	r3, #0
	str	r3, [r0]
	ldr	r1, [r2]
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3876
	ldr	r3, =ewram_1000
	mov	r2, #4
	strb	r0, [r3]
	strb	r0, [r3, #1]
	strb	r2, [r3, #2]
.L3876:
	ldr	r5, =ewram_1001
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldrb	r2, [r5]
	cmp	r3, #0x63
	bne	.L38ac
	mov	r3, #0x1e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #2
	bl	__Func_10788
	mov	r3, #0x1f
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r2, #1
	mov	r1, #8
	mov	r3, #1
	bl	__Func_10704
	ldrb	r2, [r5]
.L38ac:
	mov	r0, #0x80
	lsl	r3, r2, #24
	lsl	r0, #18
	cmp	r3, r0
	bne	.L38cc
	mov	r0, #1
	ldrsb	r0, [r5, r0]
	mov	r1, #5
	lsl	r0, #16
	bl	_Func_af0
	mov	r1, #0x80
	lsl	r1, #7
	add	r0, r1
	bl	OvlFunc_f6c
.L38cc:
	mov	r6, #0
	mov	r7, #0x80
	mov	r8, r6
	lsl	r7, #9
.L38d4:
	mov	r5, r6
	add	r5, #0xb
	mov	r0, r5
	bl	__Func_92054
	mov	r3, r0
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #4
	strb	r2, [r3]
	str	r7, [r0, #0x18]
	str	r7, [r0, #0x1c]
	mov	r0, r5
	bl	__Func_92054
	add	r6, #1
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, r6
	bl	__Func_924d4
	cmp	r6, #4
	ble	.L38d4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0xc
	mov	r1, #4
	bl	__Func_92950
	mov	r0, #0xd
	mov	r1, #0xb
	bl	__Func_92950
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_92950
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_92950
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_92950
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_92950
	mov	r1, #6
	mov	r0, #0x14
	bl	__Func_92950
	mov	r0, #0x10
	bl	__Func_92054
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r5, #0xc
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0x10
	bl	__Func_92054
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L39a4:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3a04
	bl	OvlFunc_b30
	b	.L3a1c

	.pool_aligned

.L3a04:
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r0, #0xe4
	add	r2, r1, r3
	lsl	r0, #1
	add	r3, #0x44
	str	r3, [r2]
	add	r2, r1, r0
	mov	r3, #0x18
	str	r3, [r2]
.L3a1c:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3644

.thumb_func_start OvlFunc_3a30
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0x40
	add	r2, r6
	mov	r7, #0
	ldrsb	r7, [r2, r7]
	sub	sp, #0xc
	mov	r8, r2
	cmp	r7, #0
	bne	.L3a98
	ldr	r3, [r6, #0x18]
	ldr	r2, [r6, #0x14]
	mov	r5, sp
	str	r3, [r6, #8]
	str	r3, [r5, #8]
	str	r2, [r6, #4]
	str	r2, [r5]
	bl	__Func_4458
	mov	r1, r0
	mov	r0, #0xf0
	mov	r2, r5
	lsl	r0, #15
	bl	__Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x20]
	mov	r3, r6
	add	r3, #0x42
	strb	r7, [r3]
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_1800
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.L3ac4
	mov	r0, #0x86
	bl	__Func_f9080
	b	.L3ac4
.L3a98:
	cmp	r7, #1
	bne	.L3ab0
	mov	r0, r6
	bl	__Func_9ba34
	cmp	r0, #0
	bne	.L3ac4
	mov	r2, r8
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	b	.L3ac4
.L3ab0:
	cmp	r7, #2
	bne	.L3ac4
	mov	r0, r6
	bl	__Func_9ba34
	cmp	r0, #0
	bne	.L3ac4
	mov	r0, r6
	bl	__Func_9bb34
.L3ac4:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a30

.thumb_func_start OvlFunc_3ad4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	bl	__Func_958a8
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	ldr	r0, =0x202108
	mov	r8, r3
	bl	__Func_b0840
	mov	r3, #0xfc
	add	r6, sp, #8
	lsl	r3, #17
	str	r3, [r6]
	mov	r3, #0xc0
	lsl	r3, #13
	str	r3, [r6, #4]
	mov	r3, #0x90
	lsl	r3, #16
	mov	r0, r6
	str	r3, [r6, #8]
	bl	__Func_974d8
	mov	r5, r8
	add	r5, #0x58
	mov	r7, #0x17
.L3b0c:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	__Func_9ba90
	mov	r0, r5
	ldr	r1, =OvlFunc_3a30
	bl	__Func_9ba7c
	mov	r0, r5
	mov	r1, #7
	bl	__Func_9ba70
	bl	__Func_4458
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	__Func_b684
	bl	__Func_4458
	mov	r1, #3
	bl	_Func_b60
	mov	r3, #0xc0
	lsl	r3, #9
	add	r0, r3
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	sub	r7, #1
	mov	r0, #1
	bl	__Func_30f8
	add	r5, #0x48
	cmp	r7, #0
	bge	.L3b0c
	mov	r0, #0x50
	bl	__Func_30f8
	mov	r3, #0x1e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #2
	bl	__Func_10788
	mov	r3, #0x1f
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #8
	mov	r2, #1
	mov	r0, #0x2a
	bl	__Func_10704
	mov	r0, #0x32
	bl	__Func_30f8
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r2, r8
	mov	r1, #2
	add	r2, #0x98
	mov	r7, #0x17
.L3bac:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L3bb6
	strb	r1, [r2]
.L3bb6:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.L3bac
	bl	__Func_12350
	bl	__Func_b0894
	bl	__Func_958e4
	add	sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3ad4

	.section .data

.L3eb4:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3eb4, (0x3ef4-0x3eb4)
.L3ef4:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3ef4, (0x3f0c-0x3ef4)
.L3f0c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f0c, (0x3f6c-0x3f0c)
.L3f6c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f6c, (0x3f70-0x3f6c)
.L3f70:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f70, (0x4138-0x3f70)
.L4138:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4138, (0x4198-0x4138)
.L4198:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4198, (0x41b0-0x4198)
.L41b0:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x41b0, (0x4270-0x41b0)
.L4270:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4270, (0x4318-0x4270)
.L4318:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4318, (0x4468-0x4318)
.L4468:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4468, (0x4478-0x4468)
.L4478:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4478, (0x44c8-0x4478)
.L44c8:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x44c8, (0x4518-0x44c8)
.L4518:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4518, (0x457c-0x4518)
.L457c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x457c, (0x45e0-0x457c)
.L45e0:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x45e0, (0x4688-0x45e0)
.L4688:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4688, (0x4724-0x4688)
.L4724:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4724, (0x476c-0x4724)
.L476c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x476c, (0x4808-0x476c)
.L4808:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4808, (0x4850-0x4808)
.L4850:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4850
