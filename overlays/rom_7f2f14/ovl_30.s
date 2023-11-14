	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	add	r2, #4
	mov	r3, #8
	mov	r6, r1
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, r6
	bl	__Func_929d8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_58
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
	beq	.L90
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0xe
	bl	OvlFunc_30
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c548
	mov	r0, r5
	b	.L92
.L90:
	mov	r0, #0
.L92:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_58

.thumb_func_start OvlFunc_98
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
	beq	.Ld8
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0xf
	bl	OvlFunc_30
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r5
	b	.Lda
.Ld8:
	mov	r0, #0
.Lda:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_98

.thumb_func_start OvlFunc_e0
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
.func_end OvlFunc_e0

.thumb_func_start OvlFunc_118
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
	beq	.L156
	cmp	r7, #0
	beq	.L156
	mov	r3, #0x18
	ldrsh	r0, [r7, r3]
	mov	r2, r6
	b	.L15a
.L156:
	mov	r2, r6
	mov	r0, #0xde
.L15a:
	mov	r1, r5
	mov	r3, r8
	bl	__Func_c150
	mov	r6, r0
	cmp	r6, #0
	bne	.L16a
	b	.L2d2
.L16a:
	ldr	r1, [r6, #0x50]
	mov	r8, r1
	mov	r1, r10
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	mov	r0, r6
	bl	__Func_c300
	mov	r3, r10
	ldr	r2, =.L51d4
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
	ldr	r3, =OvlFunc_e0
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
	beq	.L2d2
	cmp	r7, #0
	beq	.L2d2
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.L1f8
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	__Func_929d8
.L1f8:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L224
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
.L224:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r10
	and	r2, r3
	cmp	r2, #0
	beq	.L238
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.L238:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L282
	ldr	r3, =.L51d4
	mov	r1, r11
	ldr	r5, [r3, r1]
	cmp	r2, #0
	beq	.L266
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
	b	.L27c
.L266:
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
.L27c:
	bl	_Func_af0
	str	r0, [r6, #0x34]
.L282:
	mov	r3, #0x80
	lsl	r3, #14
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L29e
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	ldr	r1, [r7, #0x1c]
	mov	r0, r6
	bl	__Func_c2d8
.L29e:
	mov	r3, #0x80
	lsl	r3, #15
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2b0
	ldrh	r3, [r7, #0x20]
	mov	r1, r8
	strh	r3, [r1, #0x1e]
.L2b0:
	mov	r3, #0x80
	lsl	r3, #16
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2c2
	ldrh	r3, [r7, #0x22]
	ldr	r1, [sp]
	strh	r3, [r1]
.L2c2:
	mov	r3, #0x80
	lsl	r3, #17
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2d2
	ldr	r3, [r7, #0x24]
	str	r3, [r6, #0x6c]
.L2d2:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_118

.thumb_func_start OvlFunc_2f0
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
.func_end OvlFunc_2f0

.thumb_func_start OvlFunc_32c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	mov	r5, #8
	asr	r6, r3, #20
	add	r1, #0x34
.L33e:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, r3
	bne	.L360
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #0xc]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L360
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.L368
.L360:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L33e
	mov	r0, #0
.L368:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_32c

.thumb_func_start OvlFunc_374
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
	ldr	r0, =.L50e8
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
	bl	OvlFunc_32c
	mov	r6, r0
	cmp	r6, #0
	bne	.L3c4
	b	.L4d6
.L3c4:
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
	bl	OvlFunc_32c
	cmp	r0, #0
	beq	.L3fa
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L4d6
.L3fa:
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
	bl	OvlFunc_32c
	cmp	r0, #0
	beq	.L426
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L4d6
.L426:
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
	bgt	.L4d6
	mov	r3, r6
	add	r3, #0x62
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #0
	bne	.L4d6
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
.L4d6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_374

.thumb_func_start OvlFunc_4f4
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
	beq	.L548
	cmp	r0, #2
	bhi	.L51e
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r2, r3]
	b	.L520
.L51e:
	ldr	r0, =ewram_10000
.L520:
	lsl	r3, r1, #7
	add	r3, r6, r3
	lsl	r3, #2
	mov	r1, #0
	add	r0, r3
	cmp	r1, r12
	bcs	.L548
.L52e:
	lsl	r3, r1, #9
	mov	r2, #0
	add	r3, r0, r3
	cmp	r2, r4
	bcs	.L542
.L538:
	add	r2, #1
	strb	r5, [r3, #2]
	add	r3, #4
	cmp	r2, r4
	bcc	.L538
.L542:
	add	r1, #1
	cmp	r1, r12
	bcc	.L52e
.L548:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4f4

.thumb_func_start OvlFunc_558
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	ldr	r7, =0x212
	mov	r5, r3
	mov	r6, #8
	add	r5, #0x34
.L566:
	ldmia	r5!, {r0}
	mov	r3, r0
	add	r3, #0x64
	ldrh	r2, [r3]
	lsl	r3, r2, #16
	asr	r3, #20
	cmp	r3, r7
	bne	.L57e
	mov	r1, #0xf
	and	r1, r2
	bl	__Func_929d8
.L57e:
	add	r6, #1
	cmp	r6, #0x41
	bls	.L566
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_558

.thumb_func_start OvlFunc_594
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
.func_end OvlFunc_594

.thumb_func_start OvlFunc_5ac
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.L5c2
	mov	r1, #7
	bl	__Func_929d8
	b	.L5c8
.L5c2:
	mov	r1, #0
	bl	__Func_929d8
.L5c8:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L5da
	mov	r0, #0x8a
	bl	__Func_f9080
.L5da:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_5ac

.thumb_func_start OvlFunc_5e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	sub	sp, #0x38
	mov	r10, r0
	cmp	r7, #0
	bne	.L678
	bl	__Func_4458
	lsl	r0, #1
	lsr	r0, #16
	mov	r2, #0x10
	mov	r3, #3
	add	r2, sp
	sub	r3, r0
	str	r3, [r2]
	ldr	r3, =0x6666
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0xe
	str	r3, [r2, #4]
	mov	r8, r2
	bl	__Func_4458
	lsl	r3, r0, #3
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r6, [r2, #8]
	sub	r3, #4
	lsl	r3, #16
	add	r6, r3
	bl	__Func_4458
	lsl	r0, #5
	mov	r2, r10
	lsr	r0, #16
	mov	r3, #0x20
	ldr	r5, [r2, #0xc]
	sub	r3, r0
	lsl	r3, #16
	add	r5, r3
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xa0
	lsl	r3, #11
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_af0
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	mov	r3, #0xb0
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_118
.L678:
	mov	r0, #0
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_5e4

.thumb_func_start OvlFunc_690
	push	{lr}
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_690

.thumb_func_start OvlFunc_6a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	ldr	r3, =0xcccc
	add	r7, sp, #0x10
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	mov	r3, #0
	str	r3, [r7]
	mov	r5, r0
	mov	r8, r3
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r4, r0, #1
	add	r4, r0
	ldr	r6, =iwram_1e40
	lsl	r3, r4, #4
	add	r4, r3
	ldr	r2, [r6]
	lsl	r3, r4, #8
	add	r4, r3
	mov	r3, #0xf
	and	r2, r3
	mov	r10, r3
	mov	r3, #8
	sub	r3, r2
	ldr	r0, [r5, #8]
	lsl	r3, #16
	add	r0, r3
	ldr	r1, [r5, #0xc]
	mov	r3, #0xd0
	lsl	r3, #13
	add	r1, r3
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r3, #0xa0
	lsl	r3, #12
	neg	r4, r4
	str	r3, [sp, #8]
	ldr	r2, [r5, #0x10]
	mov	r8, r3
	mov	r3, #0
	str	r4, [sp]
	str	r7, [sp, #0xc]
	bl	OvlFunc_118
	ldr	r6, [r6]
	mov	r3, r10
	and	r6, r3
	cmp	r6, #0
	bne	.L73c
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	bl	__Func_4458
	lsl	r3, r0, #3
	add	r3, r0
	lsr	r3, #16
	sub	r3, #4
	ldr	r0, [r5, #8]
	lsl	r3, #16
	add	r0, r3
	mov	r3, r8
	str	r3, [sp, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_118
.L73c:
	mov	r0, #0
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_6a0

.thumb_func_start OvlFunc_754
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0
	ldr	r6, [r3]
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r3, =OvlFunc_6a0
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
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r3
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_754

.thumb_func_start OvlFunc_7d8
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x109
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	bne	.L886
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
	ldr	r3, =OvlFunc_6a0
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
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_92304
	mov	r3, #3
	strb	r3, [r7]
	str	r6, [r5, #0x6c]
	bl	__Func_9202c
	bl	__Func_91750
.L886:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7d8

.thumb_func_start OvlFunc_8a0
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =iwram_1ee0
	ldr	r3, [r3]
	str	r0, [r3, #0x18]
	pop	{r0}
	bx	r0
.func_end OvlFunc_8a0

.thumb_func_start OvlFunc_8b8
	ldr	r3, =iwram_1ee0
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x18]
	bx	lr
.func_end OvlFunc_8b8

.thumb_func_start OvlFunc_8c8
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
	bge	.L906
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	add	r3, r2
	ldr	r2, [r5, #0xc]
	add	r2, r3
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	bgt	.L906
	mov	r3, #0xfd
	and	r1, r3
	mov	r3, r12
	strb	r1, [r3]
.L906:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_8c8

.thumb_func_start OvlFunc_910
	push	{r5, r6, lr}
	mov	r5, r1
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	cmp	r2, r3
	bgt	.L946
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
.L946:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_910

.thumb_func_start OvlFunc_94c
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, #0x3c
.L952:
	cmp	r5, #0
	beq	.L964
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r6, #0x28]
	sub	r5, #1
	cmp	r3, #0
	bne	.L952
.L964:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_94c

.thumb_func_start OvlFunc_96c
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
	bge	.L99c
	add	r3, #0xf
.L99c:
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
.func_end OvlFunc_96c

.thumb_func_start OvlFunc_9c8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x44
	bl	__Func_92054
	mov	r7, r0
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
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r5, r7
	str	r3, [r7, #0x48]
	add	r5, #0x55
	mov	r3, #0
	str	r3, [r7, #0x44]
	strb	r3, [r5]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r3, #3
	strb	r3, [r5]
	mov	r0, #0x18
	bl	__Func_9163c
	add	r0, sp, #0x1c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_96c
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	mov	r2, #0
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r10, r0
	mov	r8, r2
	add	r6, sp, #0x10
.La46:
	mov	r3, r8
	lsl	r5, r3, #12
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
	ldr	r5, [r7, #8]
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	ldr	r4, [r6, #4]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r0, [sp, #8]
	mov	r0, r10
	str	r0, [sp, #0xc]
	mov	r0, r5
	str	r4, [sp]
	bl	OvlFunc_118
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x10
	bls	.La46
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
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	bl	__Func_9202c
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x48]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x44]
	bl	__Func_91750
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9c8

.thumb_func_start OvlFunc_b08
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
	ldr	r3, =OvlFunc_96c
	str	r3, [r2, #0x24]
	mov	r3, #0
	mov	r10, r0
	mov	r9, r2
	mov	r8, r3
	add	r7, sp, #0x38
.Lb30:
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
	bl	OvlFunc_118
	mov	r2, #2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x10
	bls	.Lb30
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b08

.thumb_func_start OvlFunc_b98
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	mov	r7, r0
	sub	sp, #0x38
	mov	r0, #0
	cmp	r3, #0
	bne	.Lc3e
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	cmp	r3, #0
	bne	.Lbd6
	mov	r3, #0x80
	ldr	r2, [r7, #0x38]
	lsl	r3, #24
	cmp	r2, r3
	bne	.Lbd0
	ldr	r3, [r7, #0x40]
	cmp	r3, r2
	beq	.Lbd6
.Lbd0:
	mov	r0, #0xf6
	bl	__Func_f9080
.Lbd6:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x8f
	add	r5, sp, #0x10
	lsl	r3, #1
	strh	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	ldr	r3, =0xfffffeb9
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x14]
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #3
	add	r0, r3
	lsr	r0, #16
	sub	r0, #4
	mov	r1, #0xa
	lsl	r0, #16
	bl	_Func_af0
	mov	r6, r0
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #3
	add	r0, r3
	lsr	r0, #16
	sub	r0, #4
	mov	r1, #0xa
	lsl	r0, #16
	bl	_Func_af0
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xffff0000
	add	r2, r3
	mov	r3, r8
	ldr	r4, [r7, #8]
	ldr	r1, [r7, #0xc]
	str	r3, [sp]
	ldr	r3, =0x1c0001
	str	r0, [sp, #4]
	str	r3, [sp, #8]
	mov	r0, r4
	mov	r3, r6
	str	r5, [sp, #0xc]
	bl	OvlFunc_118
	mov	r0, #0
.Lc3e:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_b98

.thumb_func_start OvlFunc_c5c
	push	{r5, r6, lr}
	mov	r4, r0
	mov	r3, r1
	lsl	r4, #16
	mov	r0, #0x8e
	mov	r6, r2
	lsl	r3, #16
	lsl	r0, #1
	mov	r1, r4
	mov	r2, #0
	bl	__Func_c150
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.Lcbe
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #7
	bl	__Func_c300
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	mov	r1, r5
	add	r3, #4
	str	r2, [r5, #0xc]
	add	r1, #0x23
	strb	r2, [r3]
	mov	r3, #2
	strb	r3, [r1]
	ldr	r3, =OvlFunc_b98
	str	r3, [r5, #0x6c]
	mov	r3, r5
	add	r3, #0x63
	mov	r0, r5
	strb	r2, [r3]
	mov	r1, r6
	bl	__Func_c2d8
	mov	r0, r5
.Lcbe:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_c5c

.thumb_func_start OvlFunc_cc8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r2, #0x55
	mov	r5, r0
	add	r2, r5
	ldrb	r3, [r2]
	ldr	r7, =0xfff00000
	mov	r9, r3
	ldr	r3, [r5, #8]
	mov	r8, r2
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r7
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r7
	add	r3, r2
	str	r3, [r6, #8]
	mov	r2, #0x80
	ldrh	r1, [r5, #6]
	lsl	r2, #6
	mov	r3, #0xc0
	lsl	r3, #8
	add	r1, r2
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #13
	mov	r2, r6
	mov	r10, r3
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_120dc
	cmp	r0, #1
	beq	.Ldec
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_32c
	cmp	r0, #0
	bne	.Ldec
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r7
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r7
	add	r3, r2
	str	r3, [r6, #8]
	mov	r3, #0x80
	ldrh	r1, [r5, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r2, r10
	mov	r0, #0x80
	and	r1, r2
	lsl	r0, #14
	mov	r2, r6
	bl	__Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_32c
	cmp	r0, #0
	bne	.Ldec
	mov	r0, r5
	mov	r1, r6
	bl	__Func_120dc
	cmp	r0, #0
	bne	.Ldec
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
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #0x7e
	and	r3, r2
	mov	r2, r8
	strb	r3, [r2]
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
	mov	r2, r9
	mov	r3, r8
	strb	r2, [r3]
	bl	__Func_91750
	mov	r0, #1
	b	.Ldee
.Ldec:
	mov	r0, #0
.Ldee:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_cc8

.thumb_func_start OvlFunc_e04
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.Le1c
	ldr	r0, =.L5d68
	b	.Le46
.Le1c:
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.Le26
	ldr	r0, =.L6020
	b	.Le46
.Le26:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.Le30
	ldr	r0, =.L6230
	b	.Le46
.Le30:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Le3a
	ldr	r0, =.L6350
	b	.Le46
.Le3a:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.Le44
	ldr	r0, =.L6548
	b	.Le46
.Le44:
	ldr	r0, =.L5dc8
.Le46:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e04

.thumb_func_start OvlFunc_e7c
	mov	r0, #0
	bx	lr
.func_end OvlFunc_e7c

.thumb_func_start OvlFunc_e80
	ldr	r0, =.L6740
	bx	lr
.func_end OvlFunc_e80

.thumb_func_start OvlFunc_e88
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.Lea0
	ldr	r0, =.L6904
	b	.Ledc
.Lea0:
	ldr	r3, =0xb6
	cmp	r2, r3
	bne	.Leaa
	ldr	r5, =.L69c4
	b	.Led0
.Leaa:
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.Leb4
	ldr	r5, =.L6b74
	b	.Led0
.Leb4:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.Lebe
	ldr	r5, =.L6c04
	b	.Led0
.Lebe:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lec8
	ldr	r5, =.L6c64
	b	.Led0
.Lec8:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.Leda
	ldr	r5, =.L6cf4
.Led0:
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
	b	.Ledc
.Leda:
	ldr	r0, =.L68ec
.Ledc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_e88

.thumb_func_start OvlFunc_f1c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f1c

.thumb_func_start OvlFunc_f38
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r1, #3
	mov	r0, #8
	bl	__Func_925cc
	ldr	r0, =0x266d
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	mov	r6, #0xa
	mov	r5, #8
	bl	__Func_93040
.Lf5c:
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_92950
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92950
	mov	r0, r5
	bl	__Func_30f8
	cmp	r5, #3
	bls	.Lf7e
	sub	r5, #1
.Lf7e:
	sub	r6, #1
	cmp	r6, #0
	bne	.Lf5c
	ldr	r0, =0x981
	bl	__Func_79358
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f38

.thumb_func_start OvlFunc_fbc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x2670
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_fbc

.thumb_func_start OvlFunc_ff0
	push	{r5, lr}
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x36
	beq	.L100e
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #6
	bne	.L1014
.L100e:
	ldr	r0, =0x987
	bl	__Func_79358
.L1014:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ff0

.thumb_func_start OvlFunc_1024
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x2682
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1024

.thumb_func_start OvlFunc_1048
	push	{r5, r6, lr}
	ldr	r0, =0x161
	sub	sp, #8
	bl	__Func_79374
	mov	r3, #0x17
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #8
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	mov	r5, #3
	mov	r6, #1
	mov	r0, #0x23
	mov	r1, #8
	mov	r2, #0x17
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x63
	mov	r1, #8
	mov	r2, #0x57
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x2e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #3
	bl	__Func_10704
	mov	r0, #0x39
	mov	r1, #0x37
	mov	r2, #0x2e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x79
	mov	r1, #0x37
	mov	r2, #0x6e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1048

.thumb_func_start OvlFunc_10cc
	push	{r5, r6, lr}
	ldr	r0, =0x161
	sub	sp, #8
	bl	__Func_79358
	mov	r3, #0x17
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x24
	mov	r1, #8
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	mov	r5, #3
	mov	r6, #1
	mov	r0, #0x24
	mov	r1, #8
	mov	r2, #0x17
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x64
	mov	r1, #8
	mov	r2, #0x57
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x2e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #3
	bl	__Func_10704
	mov	r0, #0x35
	mov	r1, #0x37
	mov	r2, #0x2e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x75
	mov	r1, #0x37
	mov	r2, #0x6e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10cc

.thumb_func_start OvlFunc_1150
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r1, =.L521c
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0
	bl	__Func_920e8
	mov	r0, #0
	mov	r1, #6
	bl	__Func_92950
	mov	r1, #0x80
	lsl	r1, #11
	mov	r2, #0x80
	str	r1, [r5, #0x28]
	mov	r0, #0
	lsl	r2, #10
	bl	__Func_92064
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x36
	bgt	.L11a0
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xd2
	b	.L11b2
.L11a0:
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xee
.L11b2:
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =OvlFunc_5e4
	mov	r1, #0x81
	str	r3, [r5, #0x6c]
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0
	mov	r1, #4
	bl	__Func_92548
	mov	r3, #0
	str	r3, [r5, #0x6c]
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1150

.thumb_func_start OvlFunc_1218
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	ldr	r3, =0xcba
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r2, =0xcb6
	mov	r5, #1
	add	r3, r7, r2
	strh	r5, [r3]
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x2688
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #0x8e
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x46
	bl	__Func_9163c
	ldr	r0, =0x982
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12ae
	ldr	r0, =0x983
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12ae
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	and	r3, r5
	cmp	r3, #0
	beq	.L12a8
	ldr	r0, =0x982
	bl	__Func_79358
	b	.L12ae
.L12a8:
	ldr	r0, =0x983
	bl	__Func_79358
.L12ae:
	ldr	r0, =0x982
	bl	__Func_79338
	cmp	r0, #0
	bne	.L138e
	ldr	r0, =0x982
	bl	__Func_79358
	ldr	r0, =0x983
	bl	__Func_79374
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x67
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__Func_10424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5c
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	b	.L1462
.L138e:
	ldr	r0, =0x983
	bl	__Func_79358
	ldr	r0, =0x982
	bl	__Func_79374
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__Func_10424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
.L1462:
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0xe4
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x21e0000
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0xe4
	mov	r1, #1
	lsl	r0, #17
	neg	r1, r1
	ldr	r2, =0x1a70000
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	bl	__Func_91750
	ldr	r3, =0xcb6
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1218

.thumb_func_start OvlFunc_14f4
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x35
	beq	.L150a
	b	.L1612
.L150a:
	ldr	r0, =0x986
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1612
	ldr	r0, =0x986
	bl	__Func_79358
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L152e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L152e:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x58
	bl	__Func_921c4
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x68
	bl	__Func_921c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x2691
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x58
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L15fe
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L15fe:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
.L1612:
	pop	{r0}
	bx	r0
.func_end OvlFunc_14f4

.thumb_func_start OvlFunc_1628
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_374
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
	bl	OvlFunc_14f4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1628

.thumb_func_start OvlFunc_1644
	push	{r5, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	bne	.L1692
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0xfffe0000
	mov	r0, #0x80
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	bl	__Func_10424
.L1692:
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1644

.thumb_func_start OvlFunc_16a4
	push	{r5, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	mov	r1, #0x12
	ldrsh	r2, [r5, r1]
	ldr	r1, =0xfffffd5c
	add	r3, r1
	cmp	r3, #7
	bhi	.L16d0
	mov	r3, #0xc5
	lsl	r3, #2
	cmp	r2, r3
	blt	.L16d0
	mov	r1, #0xc7
	lsl	r1, #2
	cmp	r2, r1
	blt	.L1710
.L16d0:
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0x32
	mov	r2, #0x2a
	mov	r3, #0x31
	bl	__Func_10424
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	mov	r0, #0x37
	bl	__Func_10424
	ldr	r0, =0x201
	bl	__Func_79374
	mov	r0, r5
	add	r0, #0x55
	ldrb	r1, [r0]
	mov	r3, #1
	mov	r2, #0
	orr	r3, r1
	strb	r3, [r0]
	str	r2, [r5, #0x14]
	str	r2, [r5, #0xc]
	b	.L176c
.L1710:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L176c
	bl	__Func_916b0
	mov	r0, #5
	bl	__Func_9163c
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x32
	mov	r2, #0x2a
	mov	r3, #0x31
	bl	__Func_10424
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	mov	r0, #0x34
	bl	__Func_10424
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r1, r5
	add	r1, #0x55
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r3, =0xfffe0000
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	bl	__Func_91750
.L176c:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_16a4

.thumb_func_start OvlFunc_1780
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	ldr	r3, =0xcba
	add	r1, r2, r3
	mov	r3, #0
	strh	r3, [r1]
	ldr	r3, =0xcb6
	add	r2, r3
	mov	r3, #1
	strh	r3, [r2]
	bl	__Func_916b0
	ldr	r0, =0x267d
	bl	__Func_92b94
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xe0
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1780

.thumb_func_start OvlFunc_1808
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc0
	mov	r2, #0xc0
	strh	r3, [r5, #6]
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0x8a
	lsl	r2, #2
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	mov	r0, #0
	bl	__Func_92158
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r5, #6]
	mov	r0, #0
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #0x18
	mov	r0, #0
	bl	__Func_924ec
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =0x9999
	ldr	r2, [r5, #0x10]
	str	r3, [r5, #0x48]
	mov	r3, #0x90
	mov	r6, #0
	lsl	r3, #15
	add	r2, r3
	str	r6, [r5, #0x44]
	ldr	r0, [r5, #8]
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_58
	mov	r3, #0x22
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #5
	mov	r3, #1
	mov	r1, #0x23
	mov	r0, #0x22
	bl	__Func_10704
	mov	r0, #0
	bl	OvlFunc_94c
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0x14
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1808

.thumb_func_start OvlFunc_18f8
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	bl	__Func_916b0
	mov	r3, #0xc
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x2c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0xb
	mov	r2, #0x33
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x33
	mov	r2, #2
	mov	r3, #2
	bl	__Func_10704
	mov	r5, #0
.L1930:
	mov	r0, r5
	add	r0, #8
	bl	__Func_92054
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x32
	mov	r2, #1
	mov	r3, #1
	add	r5, #1
	bl	__Func_10704
	cmp	r5, #2
	bls	.L1930
	mov	r0, #0xa
	mov	r1, #9
	bl	OvlFunc_910
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_18f8

.thumb_func_start OvlFunc_196c
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r3, #0xc
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x2c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
	bl	OvlFunc_374
	bl	OvlFunc_18f8
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_196c

.thumb_func_start OvlFunc_199c
	push	{r5, lr}
	mov	r5, #0
.L19a0:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92054
	add	r5, #1
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r3, #0x2d
	mov	r0, #0
	bl	__Func_12078
	cmp	r5, #1
	bls	.L19a0
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_199c

.thumb_func_start OvlFunc_19c0
	push	{r5, lr}
	mov	r5, #0
.L19c4:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92054
	ldr	r2, =0xfff00000
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	ble	.L19e0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r3, #0xff
	mov	r0, #0
	bl	__Func_12078
.L19e0:
	add	r5, #1
	cmp	r5, #1
	bls	.L19c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19c0

.thumb_func_start OvlFunc_19f0
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_cc8
	cmp	r0, #0
	bne	.L1a0a
	bl	OvlFunc_199c
	bl	OvlFunc_374
	bl	OvlFunc_19c0
.L1a0a:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_19f0

.thumb_func_start OvlFunc_1a14
	push	{lr}
	mov	r2, #0x23
	add	r2, r0
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #2
	orr	r3, r2
	mov	r2, r12
	strb	r3, [r2]
	mov	r3, r0
	mov	r1, #0
	add	r3, #0x55
	strb	r1, [r3]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	sub	sp, #8
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a14

.thumb_func_start OvlFunc_1a50
	push	{r5, r6, r7, lr}
	mov	r7, r0
	ldr	r1, [r7, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.L1a92
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r5, #0
	mov	r2, #0x80
	lsl	r2, #18
	mov	r1, #0
	mov	r3, #0xdf
	str	r5, [r7, #0x44]
	ldr	r0, [r7, #8]
	bl	OvlFunc_58
	mov	r6, r0
	mov	r0, r7
	bl	OvlFunc_94c
	str	r5, [r7, #8]
	str	r5, [r7, #0x10]
	mov	r0, r6
	bl	__Func_c0f4
	b	.L1a96
.L1a92:
	bl	OvlFunc_19c0
.L1a96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a50

.thumb_func_start OvlFunc_1a9c
	push	{r5, lr}
	bl	__Func_916b0
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #8
	bne	.L1abe
	bl	OvlFunc_94c
	mov	r0, r5
	bl	OvlFunc_1a14
	b	.L1ac4
.L1abe:
	mov	r0, r5
	bl	OvlFunc_1a50
.L1ac4:
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #7
	bne	.L1ae0
	bl	OvlFunc_94c
	mov	r0, r5
	bl	OvlFunc_1a14
	b	.L1ae6
.L1ae0:
	mov	r0, r5
	bl	OvlFunc_1a50
.L1ae6:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a9c

.thumb_func_start OvlFunc_1af0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	add	r1, r3
	mov	r0, #0
	mov	r10, r1
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r1, =0xfffffecc
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0
	str	r3, [r0, #0xc]
	add	r3, r5, r1
	cmp	r3, #7
	bls	.L1b28
	b	.L1d00
.L1b28:
	mov	r3, #0x85
	lsl	r3, #2
	cmp	r2, r3
	bge	.L1b32
	b	.L1d00
.L1b32:
	mov	r1, #0x87
	lsl	r1, #2
	cmp	r2, r1
	blt	.L1b3c
	b	.L1d00
.L1b3c:
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1b4e
	b	.L1d00
.L1b4e:
	bl	__Func_916b0
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x21
	mov	r3, #0x21
	mov	r2, #0x13
	mov	r0, #0x1a
	bl	__Func_10424
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x90
	lsl	r2, #17
	mov	r3, #0x28
	mov	r1, #4
	mov	r8, r2
	mov	r5, #0x1d
	mov	r9, r3
	mov	r7, #0
	add	r6, sp, #0x10
	mov	r11, r1
.L1ba8:
	mov	r2, r10
	ldr	r3, [r2, #8]
	ldr	r1, =0x3333
	add	r3, r1
	str	r3, [r2, #8]
	ldr	r2, =0xffffcccd
	mov	r3, #2
	add	r8, r2
	str	r3, [r6]
	bl	__Func_4458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	ldr	r1, =0xcccc
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r1
	str	r3, [r6, #8]
	bl	__Func_4458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	ldr	r2, =0xcccc
	add	r3, r2
	str	r3, [r6, #0xc]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	strh	r0, [r6, #0x22]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #16
	neg	r3, r3
	str	r3, [sp]
	mov	r3, #0x8a
	lsl	r3, #16
	mov	r2, #0x84
	mov	r1, #0
	str	r3, [sp, #8]
	mov	r0, r8
	lsl	r2, #18
	mov	r3, #0
	str	r1, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_118
	cmp	r7, #0xf0
	bne	.L1c34
	ldr	r2, =0xffd00000
	add	r8, r2
.L1c34:
	mov	r3, r9
	cmp	r3, #0
	bne	.L1c70
	mov	r1, #0x28
	mov	r9, r1
	cmp	r7, #0xf0
	bhi	.L1c5a
	mov	r2, #3
	mov	r3, r11
	sub	r5, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x32
	mov	r2, #0xf
	mov	r3, #0x20
	bl	__Func_10424
	b	.L1c70
.L1c5a:
	mov	r1, #3
	mov	r2, r11
	add	r5, #4
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r0, r5
	mov	r1, #0x2d
	mov	r2, #9
	mov	r3, #0x20
	bl	__Func_10424
.L1c70:
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	ldr	r1, =0x1df
	neg	r3, r3
	add	r7, #1
	add	r9, r3
	cmp	r7, r1
	bls	.L1ba8
	mov	r3, r10
	ldr	r2, [r3, #8]
	mov	r1, #0x80
	lsl	r1, #8
	add	r3, r2, r1
	mov	r1, r10
	str	r3, [r1, #8]
	cmp	r3, #0
	bge	.L1c9a
	ldr	r1, =0x17fff
	add	r3, r2, r1
.L1c9a:
	asr	r3, #16
	lsl	r3, #16
	mov	r2, r10
	str	r3, [r2, #8]
	mov	r3, #9
	str	r3, [sp]
	mov	r5, #0x20
	mov	r0, #0xf
	mov	r1, #0x20
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r1, #0x20
	mov	r3, #1
	mov	r2, #3
	mov	r0, #0xc
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x202
	add	r3, r1
	str	r2, [r3]
	mov	r0, #0xb
	bl	__Func_91e9c
	bl	__Func_91750
.L1d00:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1af0

.thumb_func_start OvlFunc_1d48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r2, #0
	mov	r0, #9
	str	r2, [sp, #8]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r11, r0
	bl	__Func_916b0
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r2, #7
	mov	r3, #5
	mov	r5, #0x2d
	mov	r0, #0x6d
	mov	r1, #0x2b
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x23
	add	r3, r6
	ldrb	r2, [r3]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1da8
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	b	.L1dc0
.L1da8:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L1dc0:
	ldr	r3, [r6, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #0x2e
	beq	.L1dcc
	b	.L1efc
.L1dcc:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	mov	r8, r3
	cmp	r3, #0x2d
	beq	.L1dd8
	b	.L1efc
.L1dd8:
	ldr	r0, =0x301
	bl	__Func_79338
	mov	r7, r0
	cmp	r7, #0
	beq	.L1de6
	b	.L1efc
.L1de6:
	mov	r2, r11
	ldr	r3, [r2, #0x10]
	asr	r3, #20
	cmp	r3, #0x2d
	bgt	.L1e0a
	mov	r0, #0xba
	mov	r2, #0xb0
	mov	r1, #0
	lsl	r0, #18
	lsl	r2, #18
	mov	r3, #0x14
	bl	OvlFunc_98
	mov	r1, #3
	str	r0, [sp, #8]
	mov	r0, #0
	bl	__Func_92b08
.L1e0a:
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, r6
	add	r3, #0x22
	mov	r5, r6
	strb	r7, [r3]
	add	r5, #0x55
	mov	r3, #3
	strb	r3, [r5]
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r6, #0x48]
	mov	r3, r9
	mov	r1, #0x2d
	str	r7, [r6, #0x44]
	mov	r0, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	bl	__Func_10704
	mov	r0, r6
	bl	OvlFunc_94c
	mov	r0, #0xbc
	bl	__Func_f9080
	ldr	r3, =0xfff00000
	strb	r7, [r5]
	mov	r0, #9
	str	r3, [r6, #0xc]
	mov	r1, #3
	bl	__Func_92b08
	mov	r3, #2
	mov	r2, r10
	strb	r3, [r2]
	mov	r3, r9
	mov	r2, r8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2d
	bl	__Func_10704
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, [sp, #8]
	bl	__Func_c0f4
	mov	r3, r6
	add	r3, #0x59
	strb	r7, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0xca
	orr	r5, r3
	mov	r2, #0xb6
	lsl	r2, #18
	strb	r5, [r0]
	lsl	r1, #18
	mov	r0, #0xa
	bl	__Func_923e4
	ldr	r1, =.L53c4
	mov	r0, #0xa
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_920e8
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L5ce8
	mov	r1, #0x6e
	mov	r2, #0x29
	bl	__Func_10560
	mov	r3, #0x2a
	mov	r2, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r0, =0x301
	bl	__Func_79358
.L1efc:
	bl	__Func_91750
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d48

.thumb_func_start OvlFunc_1f28
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	bl	OvlFunc_cc8
	cmp	r0, #0
	bne	.L1f50
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6d
	mov	r1, #0x2b
	mov	r2, #7
	mov	r3, #5
	bl	__Func_10704
	bl	OvlFunc_374
.L1f50:
	bl	__Func_91750
	bl	OvlFunc_1d48
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f28

.thumb_func_start OvlFunc_1f60
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r0, #0
	str	r0, [sp, #0x10]
	bl	__Func_92054
	str	r0, [sp, #0xc]
	bl	__Func_916b0
	mov	r3, #0x2c
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x27
	mov	r0, #0x6c
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_10704
	mov	r1, #9
	mov	r9, r1
.L1f96:
	mov	r0, r9
	bl	__Func_92054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x23
	str	r2, [sp, #8]
	ldrb	r3, [r2]
	cmp	r3, #2
	beq	.L1fc4
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x27
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L1fdc
.L1fc4:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x27
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L1fdc:
	ldr	r4, =.L5128
	mov	r5, #0
	ldr	r0, [r6, #8]
	ldr	r3, [r4, r5]
	asr	r2, r0, #20
	mov	r7, #5
	cmp	r2, r3
	bne	.L2000
	ldr	r3, [r6, #0x10]
	ldr	r2, [r4, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2000
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	blt	.L2000
	mov	r7, #0
	b	.L2024
.L2000:
	add	r5, #1
	cmp	r5, #3
	bhi	.L2024
	lsl	r1, r5, #3
	ldr	r3, [r4, r1]
	asr	r2, r0, #20
	cmp	r2, r3
	bne	.L2000
	ldr	r3, [r6, #0x10]
	add	r2, r1, #4
	ldr	r2, [r4, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2000
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	blt	.L2000
	mov	r7, r5
.L2024:
	cmp	r7, #5
	bne	.L202a
	b	.L2226
.L202a:
	mov	r5, #9
	b	.L2030
.L202e:
	add	r5, #1
.L2030:
	cmp	r5, #0xb
	bhi	.L2058
	mov	r0, r5
	bl	__Func_92054
	cmp	r9, r5
	beq	.L202e
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L202e
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L202e
	mov	r7, #5
.L2058:
	cmp	r7, #5
	bne	.L205e
	b	.L2226
.L205e:
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r3, #30
	ldr	r1, =.L5128
	lsl	r7, #3
	mov	r11, r3
	ldr	r2, [r0, #0x10]
	add	r3, r7, #4
	mov	r8, r3
	ldr	r3, [r1, r3]
	asr	r2, #20
	mov	r10, r1
	cmp	r2, r3
	bhi	.L2098
	ldr	r2, [r6, #0x10]
	ldr	r3, =0xfffc0000
	ldr	r1, [r6, #0xc]
	add	r2, r3
	ldr	r0, [r6, #8]
	mov	r3, #0x14
	bl	OvlFunc_98
	mov	r1, #3
	str	r0, [sp, #0x10]
	mov	r0, #0
	bl	__Func_92b08
.L2098:
	mov	r0, r9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, r6
	add	r3, #0x22
	mov	r0, #0
	mov	r5, r6
	strb	r0, [r3]
	add	r5, #0x55
	mov	r3, #3
	strb	r3, [r5]
	ldr	r3, =0x1999
	mov	r1, #0
	str	r1, [r6, #0x44]
	str	r3, [r6, #0x48]
	mov	r2, r10
	mov	r0, r8
	ldr	r3, [r2, r7]
	ldr	r2, [r2, r0]
	mov	r1, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2a
	bl	__Func_10704
	mov	r0, r6
	bl	OvlFunc_94c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r3, r6
	mov	r1, #0
	add	r3, #0x59
	strb	r1, [r3]
	ldr	r3, =0xfff00000
	strb	r1, [r5]
	mov	r0, r9
	str	r3, [r6, #0xc]
	mov	r1, #3
	bl	__Func_92b08
	ldr	r2, [sp, #8]
	mov	r3, #2
	strb	r3, [r2]
	mov	r0, r10
	mov	r1, r8
	ldr	r2, [r0, r1]
	ldr	r3, [r0, r7]
	mov	r1, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2e
	bl	__Func_10704
	mov	r0, #0
	mov	r1, r11
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	beq	.L2138
	mov	r0, r2
	bl	__Func_c0f4
.L2138:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L214a
	bl	__Func_91750
	b	.L2236
.L214a:
	mov	r0, #9
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xb
	bl	__Func_92054
	add	r6, #0x23
	add	r5, #0x23
	ldrb	r2, [r6]
	ldrb	r3, [r5]
	add	r0, #0x23
	and	r3, r2
	ldrb	r2, [r0]
	mov	r0, #2
	and	r3, r2
	and	r3, r0
	cmp	r3, #0
	beq	.L2226
	mov	r5, #0xde
	mov	r6, #0xaa
	lsl	r5, #2
	lsl	r6, #2
	mov	r1, r6
	mov	r0, r5
	ldr	r2, =.L5488
	bl	OvlFunc_c5c
	mov	r1, r6
	mov	r7, r0
	ldr	r2, =.L5508
	mov	r0, r5
	bl	OvlFunc_c5c
	ldr	r3, [r7]
	mov	r6, r7
	mov	r5, r0
	add	r6, #0x63
	b	.L221c
.L21a0:
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.L21b0
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2214
.L21b0:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L5d12
	mov	r1, #0x6d
	mov	r2, #0x25
	bl	__Func_10560
	mov	r3, #0x2d
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2d
	mov	r1, #0x25
	bl	__Func_10704
	mov	r0, #9
	bl	__Func_92054
	ldr	r5, =.L5128
	ldr	r2, [r0, #8]
	ldr	r3, [r5]
	asr	r2, #20
	cmp	r2, r3
	bne	.L2204
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	ldr	r2, [r5, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2204
	ldr	r0, =0x302
	bl	__Func_79358
	b	.L220a
.L2204:
	ldr	r0, =0x303
	bl	__Func_79358
.L220a:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79358
	b	.L2226
.L2214:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r7]
.L221c:
	cmp	r3, #0
	bne	.L21a0
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L21a0
.L2226:
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #0xb
	bhi	.L2232
	b	.L1f96
.L2232:
	bl	__Func_91750
.L2236:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f60

.thumb_func_start OvlFunc_226c
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	bl	OvlFunc_cc8
	cmp	r0, #0
	bne	.L2294
	mov	r3, #0x2c
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x27
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_10704
	bl	OvlFunc_374
.L2294:
	bl	__Func_91750
	bl	OvlFunc_1f60
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_226c

.thumb_func_start OvlFunc_22a4
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
.func_end OvlFunc_22a4

.thumb_func_start OvlFunc_22c8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r0
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r10, r0
	mov	r0, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, r9
	cmp	r0, #0
	beq	.L230e
	mov	r0, #0xb4
	bl	__Func_f9080
.L230e:
	mov	r1, #0x64
	add	r1, r7
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	ldr	r5, =.L5148
	lsl	r3, #2
	mov	r6, r10
	ldr	r2, [r5, r3]
	mov	r0, r7
	mov	r8, r1
	ldr	r3, [r7, #0x10]
	ldr	r1, [r7, #8]
	add	r6, #0x64
	bl	__Func_d14c
	mov	r0, #0
	ldrsh	r3, [r6, r0]
	mov	r2, r10
	mov	r0, r10
	lsl	r3, #2
	ldr	r1, [r2, #8]
	ldr	r2, [r5, r3]
	ldr	r3, [r0, #0x10]
	bl	__Func_d14c
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	lsl	r3, #2
	ldr	r3, [r5, r3]
	str	r3, [r7, #0xc]
	mov	r0, #0
	ldrsh	r3, [r6, r0]
	lsl	r3, #2
	ldr	r3, [r5, r3]
	mov	r1, r10
	mov	r2, r9
	str	r3, [r1, #0xc]
	cmp	r2, #0
	beq	.L2370
	ldr	r0, =0x121
	bl	__Func_f9080
.L2370:
	mov	r5, #0
.L2372:
	mov	r0, r5
	add	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	mov	r2, r3
	cmp	r3, #0
	bge	.L2386
	ldr	r1, =0xffff
	add	r2, r3, r1
.L2386:
	asr	r2, #16
	cmp	r2, #0
	bge	.L23ac
	mov	r3, #0x1e
	neg	r3, r3
	cmp	r2, r3
	ble	.L23ac
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #4
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L23ac:
	add	r5, #1
	cmp	r5, #4
	bls	.L2372
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
.func_end OvlFunc_22c8

.thumb_func_start OvlFunc_23d4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =0xffb00000
	sub	sp, #4
	mov	r8, r0
	mov	r10, r2
	mov	r7, #0
	mov	r1, #0
.L23e8:
	mov	r6, r1
	add	r6, #8
	cmp	r6, r8
	beq	.L2430
	mov	r0, r6
	str	r1, [sp]
	bl	__Func_92054
	mov	r5, r0
	mov	r0, r8
	bl	__Func_92054
	mov	r7, r0
	ldr	r2, [r5, #8]
	ldr	r3, [r7, #8]
	asr	r2, #20
	asr	r3, #20
	ldr	r1, [sp]
	cmp	r2, r3
	bne	.L2430
	ldr	r2, [r5, #0x10]
	ldr	r3, [r7, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2430
	ldr	r3, [r5, #0xc]
	mov	r2, #0x80
	lsl	r2, #13
	add	r0, r3, r2
	cmp	r10, r0
	bgt	.L2430
	mov	r3, r7
	add	r3, #0x64
	strh	r6, [r3]
	mov	r10, r0
.L2430:
	add	r1, #1
	cmp	r1, #5
	bls	.L23e8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #11
	lsl	r2, #10
	bl	__Func_92064
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r2, r10
	mov	r0, r7
	bl	__Func_d14c
	mov	r0, r8
	bl	__Func_923c4
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, r8
	bl	OvlFunc_b08
	mov	r0, #0x1e
	bl	__Func_9163c
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_23d4

.thumb_func_start OvlFunc_247c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x84
	mov	r2, #0
	str	r2, [sp, #0x10]
	str	r2, [sp, #0xc]
	bl	__Func_916b0
	mov	r2, sp
	mov	r3, #0
	add	r2, #0x14
	mov	r8, r3
	str	r2, [sp, #8]
	mov	r3, #0xa
	mov	r11, r3
.L24a4:
	mov	r0, r11
	bl	__Func_92054
	mov	r6, r0
	ldr	r3, [r6, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #0xd
	bne	.L250a
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	mov	r10, r3
	cmp	r3, #7
	bne	.L250a
	mov	r5, #0x80
	lsl	r5, #2
	add	r5, r8
	mov	r0, r5
	bl	__Func_79338
	mov	r7, r0
	cmp	r7, #0
	bne	.L250a
	mov	r0, r6
	bl	OvlFunc_94c
	mov	r0, r5
	bl	__Func_79358
	mov	r1, r6
	add	r1, #0x23
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r2, r3
	mov	r3, r6
	add	r3, #0x59
	strb	r2, [r1]
	strb	r7, [r3]
	sub	r3, #4
	strb	r7, [r3]
	mov	r2, r9
	mov	r3, r10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #4
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L26ca
.L250a:
	ldr	r3, [r6, #0x50]
	ldrb	r2, [r3, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.L25b0
	mov	r7, #0x80
	lsl	r7, #2
	add	r7, r8
	mov	r0, r7
	bl	__Func_79338
	cmp	r0, #0
	bne	.L25b0
	mov	r0, r11
	mov	r1, #1
	bl	__Func_92b08
	ldr	r3, [r6, #0x10]
	mov	r5, #0
	asr	r3, #20
	str	r5, [r6, #0x44]
	cmp	r3, #0xc
	bgt	.L255a
	mov	r2, #0xe0
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0xfd
	ldr	r0, [r6, #8]
	bl	OvlFunc_58
	str	r0, [sp, #0x10]
	mov	r2, #0xf0
	ldr	r0, [r6, #8]
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0xfd
	bl	OvlFunc_58
	str	r0, [sp, #0xc]
.L255a:
	mov	r0, r6
	bl	OvlFunc_94c
	mov	r1, #0
	mov	r2, #0
	mov	r0, r11
	bl	__Func_923e4
	ldr	r0, [sp, #0x10]
	bl	__Func_c0f4
	ldr	r0, [sp, #0xc]
	bl	__Func_c0f4
	mov	r0, r7
	bl	__Func_79358
	b	.L26ca
.L257e:
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r6, #8]
	ldr	r2, [sp, #8]
	str	r3, [r2, #8]
	ldr	r3, [r6, #0xc]
	str	r3, [r2, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r2, #0x10]
	ldr	r3, [r0, #8]
	str	r3, [r6, #8]
	ldr	r3, [r0, #0xc]
	str	r3, [r6, #0xc]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #0x10]
	ldr	r3, [r2, #8]
	str	r3, [r0, #8]
	ldr	r3, [r2, #0xc]
	str	r3, [r0, #0xc]
	ldr	r3, [r2, #0x10]
	mov	r7, r5
	str	r3, [r0, #0x10]
	b	.L25f8
.L25b0:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #0x13
	beq	.L25ba
	b	.L26bc
.L25ba:
	mov	r0, #0x80
	lsl	r0, #2
	add	r0, r8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L26bc
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x3c]
	mov	r3, r6
	add	r3, #0x55
	str	r0, [r6, #0x14]
	str	r0, [r6, #0x28]
	mov	r5, #0
	strb	r0, [r3]
	add	r3, #0xf
	strh	r0, [r3]
	mov	r7, r8
	cmp	r5, r8
	bge	.L25f8
.L25e4:
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r5, r3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L257e
	add	r5, #1
	cmp	r5, r8
	blt	.L25e4
.L25f8:
	mov	r5, r7
	add	r5, #0xa
	mov	r0, r5
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r3, r0
	mov	r2, #0
	add	r3, #0x55
	str	r2, [r0, #0x14]
	str	r2, [r0, #0x28]
	mov	r1, #0xc0
	strb	r2, [r3]
	mov	r0, #0xc0
	add	r3, #0xf
	strh	r2, [r3]
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_933d4
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #0x80
	mov	r0, #0x88
	mov	r2, #0xac
	mov	r3, #1
	lsl	r1, #12
	lsl	r2, #17
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, r5
	bl	OvlFunc_23d4
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #6
	bne	.L2674
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
	strh	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	b	.L268e
.L2674:
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	strh	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
.L268e:
	strh	r3, [r0]
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, =OvlFunc_22a4
	str	r3, [r0, #0x6c]
	mov	r0, #0x28
	bl	OvlFunc_22c8
	mov	r0, r5
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	mov	r2, #0x80
	lsl	r2, #2
	strb	r3, [r0]
	add	r0, r7, r2
	bl	__Func_79358
	b	.L26ca
.L26bc:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	add	r11, r3
	cmp	r2, #3
	bgt	.L26ca
	b	.L24a4
.L26ca:
	bl	__Func_91750
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_247c

.thumb_func_start OvlFunc_26e4
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_374
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_26e4

.thumb_func_start OvlFunc_26f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r0, #0
	add	r7, r3, r1
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r1, =0xfffffdec
	mov	r2, #0xa
	ldrsh	r6, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0
	str	r3, [r0, #0xc]
	add	r3, r6, r1
	cmp	r3, #7
	bls	.L272e
	b	.L28c6
.L272e:
	mov	r3, #0xa2
	lsl	r3, #1
	cmp	r2, r3
	bge	.L2738
	b	.L28c6
.L2738:
	mov	r1, #0xa6
	lsl	r1, #1
	cmp	r2, r1
	blt	.L2742
	b	.L28c6
.L2742:
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	ldr	r0, =0x306
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2752
	b	.L28c6
.L2752:
	bl	__Func_916b0
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x21
	mov	r3, #0x14
	mov	r0, #0x3f
	bl	__Func_10424
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x53
	mov	r3, #0x50
	mov	r2, #0x2c
	mov	r0, #0x2c
	bl	__Func_10424
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x9a
	ldr	r1, =0xcccc
	lsl	r2, #18
	mov	r6, #0
	mov	r3, #0x3c
	mov	r9, r2
	mov	r10, r3
	mov	r8, r6
	add	r5, sp, #0x10
	mov	r11, r1
.L27b6:
	ldr	r3, [r7, #8]
	ldr	r2, =0x3333
	add	r3, r2
	str	r3, [r7, #8]
	ldr	r3, =0x23fffff
	cmp	r9, r3
	ble	.L2860
	mov	r1, r8
	cmp	r1, #0x28
	bls	.L2860
	ldr	r2, =0xffffcccd
	mov	r3, #2
	add	r9, r2
	str	r3, [r5]
	bl	__Func_4458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	str	r3, [r5, #8]
	bl	__Func_4458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	str	r3, [r5, #0xc]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	strh	r0, [r5, #0x22]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #16
	neg	r3, r3
	str	r3, [sp]
	mov	r3, #0x8a
	lsl	r3, #16
	mov	r2, #0x90
	mov	r1, #0
	str	r3, [sp, #8]
	lsl	r2, #17
	mov	r0, r9
	mov	r3, #0
	str	r1, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_118
	mov	r2, r10
	cmp	r2, #0
	bne	.L2860
	mov	r3, #0x28
	mov	r2, #4
	mov	r10, r3
	add	r6, #4
	mov	r3, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, r6
	mov	r1, #0x38
	mov	r2, #0x24
	mov	r3, #0x11
	bl	__Func_10424
.L2860:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #1
	mov	r2, #1
	ldr	r3, =0x13f
	neg	r2, r2
	add	r8, r1
	add	r10, r2
	cmp	r8, r3
	bls	.L27b6
	ldr	r2, [r7, #8]
	mov	r1, #0x80
	lsl	r1, #8
	add	r3, r2, r1
	str	r3, [r7, #8]
	cmp	r3, #0
	bge	.L2888
	ldr	r1, =0x17fff
	add	r3, r2, r1
.L2888:
	asr	r3, #16
	lsl	r3, #16
	mov	r0, #0x90
	str	r3, [r7, #8]
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r0, #0x12
	bl	__Func_91e9c
	bl	__Func_91750
.L28c6:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_26f8

.thumb_func_start OvlFunc_290c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r0, #0
	add	r7, r3, r1
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r1, =0xfffffcec
	mov	r2, #0xa
	ldrsh	r6, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0
	str	r3, [r0, #0xc]
	add	r3, r6, r1
	cmp	r3, #7
	bls	.L2942
	b	.L2aca
.L2942:
	mov	r3, #0xa2
	lsl	r3, #1
	cmp	r2, r3
	bge	.L294c
	b	.L2aca
.L294c:
	mov	r1, #0xa6
	lsl	r1, #1
	cmp	r2, r1
	blt	.L2956
	b	.L2aca
.L2956:
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	ldr	r0, =0x307
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2966
	b	.L2aca
.L2966:
	bl	__Func_916b0
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r3, #0x14
	mov	r2, #0x31
	mov	r0, #0x3f
	bl	__Func_10424
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0xef
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xb0
	lsl	r2, #18
	mov	r10, r2
	ldr	r2, =0xcccc
	mov	r3, #0x3c
	mov	r1, #0
	mov	r6, #0x3d
	mov	r8, r3
	mov	r9, r1
	add	r5, sp, #0x10
	mov	r11, r2
.L29ba:
	ldr	r3, [r7, #8]
	ldr	r1, =0xffffcccd
	ldr	r2, =0x3333
	add	r3, r1
	str	r3, [r7, #8]
	ldr	r3, =0xfd380000
	add	r10, r2
	ldr	r1, =0x27ffff
	add	r3, r10
	cmp	r3, r1
	bhi	.L2a64
	mov	r3, #2
	str	r3, [r5]
	bl	__Func_4458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	str	r3, [r5, #8]
	bl	__Func_4458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	str	r3, [r5, #0xc]
	bl	__Func_4458
	mov	r2, #0xf8
	lsl	r0, #12
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	strh	r0, [r5, #0x22]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #16
	neg	r3, r3
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #0x8a
	lsl	r3, #16
	mov	r2, #0x90
	str	r3, [sp, #8]
	mov	r1, #0
	mov	r0, r10
	lsl	r2, #17
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_118
	mov	r1, r8
	cmp	r1, #0
	bne	.L2a64
	mov	r2, #0x28
	mov	r3, #3
	mov	r8, r2
	sub	r6, #4
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, r6
	mov	r1, #0x38
	mov	r2, #0x2c
	mov	r3, #0x11
	bl	__Func_10424
.L2a64:
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	mov	r1, #1
	ldr	r2, =0x13f
	neg	r1, r1
	add	r9, r3
	add	r8, r1
	cmp	r9, r2
	bls	.L29ba
	ldr	r2, [r7, #8]
	mov	r1, #0x80
	lsl	r1, #8
	add	r3, r2, r1
	str	r3, [r7, #8]
	cmp	r3, #0
	bge	.L2a8c
	ldr	r1, =0x17fff
	add	r3, r2, r1
.L2a8c:
	asr	r3, #16
	lsl	r3, #16
	mov	r0, #0x90
	str	r3, [r7, #8]
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r0, #0x13
	bl	__Func_91e9c
	bl	__Func_91750
.L2aca:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_290c

.thumb_func_start OvlFunc_2b14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r1, #0
	mov	r0, #0
	str	r1, [sp, #0xc]
	bl	__Func_92054
	str	r0, [sp, #8]
	bl	__Func_916b0
	mov	r3, #5
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x30
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	mov	r3, #9
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r2, #9
	mov	r1, #0x25
	mov	r3, #0xd
	bl	__Func_10704
	mov	r2, #0xf
	mov	r10, r2
.L2b60:
	mov	r0, r10
	bl	__Func_92054
	mov	r3, #0x23
	mov	r8, r0
	add	r3, r8
	mov	r11, r3
	ldrb	r3, [r3]
	cmp	r3, #2
	beq	.L2b8e
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0x30
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L2ba8
.L2b8e:
	mov	r1, r8
	ldr	r2, [r1, #8]
	ldr	r3, [r1, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x30
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L2ba8:
	mov	r2, r8
	ldr	r4, =.L5164
	mov	r6, #0
	ldr	r0, [r2, #8]
	ldr	r3, [r4, r6]
	asr	r2, r0, #20
	mov	r5, #8
	cmp	r2, r3
	bne	.L2bd0
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	ldr	r2, [r4, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2bd0
	ldr	r3, [r1, #0xc]
	cmp	r3, #0
	blt	.L2bd0
	mov	r5, #0
	b	.L2bf8
.L2bd0:
	add	r6, #1
	cmp	r6, #7
	bhi	.L2bf8
	lsl	r1, r6, #3
	ldr	r3, [r4, r1]
	asr	r2, r0, #20
	cmp	r2, r3
	bne	.L2bd0
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	add	r2, r1, #4
	ldr	r2, [r4, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2bd0
	mov	r1, r8
	ldr	r3, [r1, #0xc]
	cmp	r3, #0
	blt	.L2bd0
	mov	r5, r6
.L2bf8:
	cmp	r5, #8
	bne	.L2bfe
	b	.L2e98
.L2bfe:
	mov	r6, #0xf
	b	.L2c04
.L2c02:
	add	r6, #1
.L2c04:
	cmp	r6, #0x12
	bhi	.L2c30
	mov	r0, r6
	bl	__Func_92054
	cmp	r10, r6
	beq	.L2c02
	mov	r3, r8
	ldr	r2, [r3, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2c02
	mov	r1, r8
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2c02
	mov	r5, #8
.L2c30:
	cmp	r5, #8
	bne	.L2c36
	b	.L2e98
.L2c36:
	ldr	r2, [sp, #8]
	ldr	r3, [r2, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r3, #30
	lsl	r7, r5, #3
	ldr	r1, =.L5164
	mov	r9, r3
	ldr	r2, [r2, #0x10]
	add	r3, r7, #4
	ldr	r3, [r1, r3]
	asr	r2, #20
	cmp	r2, r3
	bhi	.L2c6e
	mov	r2, r8
	ldr	r1, [r2, #0xc]
	ldr	r0, [r2, #8]
	ldr	r3, =0xfffc0000
	ldr	r2, [r2, #0x10]
	add	r2, r3
	mov	r3, #0x14
	bl	OvlFunc_98
	mov	r1, #3
	str	r0, [sp, #0xc]
	mov	r0, #0
	bl	__Func_92b08
.L2c6e:
	mov	r6, #0xf
.L2c70:
	mov	r0, r6
	bl	__Func_92054
	cmp	r10, r6
	beq	.L2c9e
	mov	r1, r8
	ldr	r2, [r1, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2c9e
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	sub	r2, #1
	asr	r3, #20
	cmp	r2, r3
	bne	.L2c9e
	mov	r0, r6
	mov	r1, #3
	bl	__Func_92b08
.L2c9e:
	add	r6, #1
	cmp	r6, #0x12
	bls	.L2c70
	mov	r0, r10
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, r8
	add	r3, #0x22
	mov	r2, #0
	mov	r6, r8
	strb	r2, [r3]
	add	r6, #0x55
	mov	r3, #3
	strb	r3, [r6]
	ldr	r3, =0x1999
	mov	r1, r8
	mov	r2, #0
	str	r3, [r1, #0x48]
	str	r2, [r1, #0x44]
	ldr	r1, =.L5164
	add	r5, r7, #4
	ldr	r3, [r1, r7]
	ldr	r2, [r1, r5]
	mov	r0, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2c
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, r8
	bl	OvlFunc_94c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r3, r8
	mov	r2, #0
	add	r3, #0x59
	strb	r2, [r3]
	ldr	r3, =0xfff00000
	mov	r1, r8
	strb	r2, [r6]
	mov	r0, r10
	str	r3, [r1, #0xc]
	mov	r1, #3
	bl	__Func_92b08
	mov	r3, #2
	mov	r2, r11
	strb	r3, [r2]
	ldr	r1, =.L5164
	ldr	r3, [r1, r7]
	ldr	r2, [r1, r5]
	mov	r0, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r1, #0x30
	bl	__Func_10704
	mov	r0, #0
	mov	r1, r9
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r6, #0xf
.L2d3c:
	mov	r0, r6
	bl	__Func_92054
	cmp	r10, r6
	beq	.L2d7c
	mov	r3, r8
	ldr	r2, [r3, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2d7c
	mov	r1, r8
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	sub	r2, #1
	asr	r3, #20
	cmp	r2, r3
	bne	.L2d7c
	mov	r0, r6
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, r6
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
.L2d7c:
	add	r6, #1
	cmp	r6, #0x12
	bls	.L2d3c
	ldr	r0, [sp, #0xc]
	bl	__Func_c0f4
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2d9a
	bl	__Func_91750
	b	.L2ea8
.L2d9a:
	mov	r0, #0xf
	bl	__Func_92054
	mov	r8, r0
	mov	r0, #0x10
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x11
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0x12
	bl	__Func_92054
	mov	r2, #0x23
	add	r8, r2
	mov	r3, r8
	add	r5, #0x23
	ldrb	r2, [r3]
	ldrb	r3, [r5]
	add	r6, #0x23
	and	r3, r2
	ldrb	r2, [r6]
	add	r0, #0x23
	and	r3, r2
	ldrb	r2, [r0]
	and	r3, r2
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L2e98
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r1, #0xc2
	ldr	r2, =.L577c
	lsl	r1, #2
	mov	r0, #0x88
	bl	OvlFunc_c5c
	mov	r6, r0
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, r6
	bl	__Func_c4ec
	mov	r0, r6
	ldr	r1, =.L57c8
	bl	__Func_c2d8
	mov	r1, #0xbe
	lsl	r1, #2
	mov	r0, #0xd8
	ldr	r2, =.L5ac8
	bl	OvlFunc_c5c
	mov	r1, #0x63
	ldr	r3, [r6]
	add	r1, r6
	mov	r5, r0
	mov	r8, r1
	b	.L2e8e
.L2e46:
	mov	r1, r8
	ldrb	r3, [r1]
	cmp	r3, #0
	bne	.L2e58
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2e86
.L2e58:
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =.L5d3c
	mov	r1, #0x4d
	mov	r2, #0x23
	bl	__Func_10560
	mov	r3, #0xd
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_79358
	b	.L2e98
.L2e86:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r6]
.L2e8e:
	cmp	r3, #0
	bne	.L2e46
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L2e46
.L2e98:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0x12
	bhi	.L2ea4
	b	.L2b60
.L2ea4:
	bl	__Func_91750
.L2ea8:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b14

.thumb_func_start OvlFunc_2ee4
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	bl	OvlFunc_cc8
	cmp	r0, #0
	bne	.L2f20
	mov	r3, #5
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x30
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	mov	r3, #9
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x25
	mov	r2, #9
	mov	r3, #0xd
	bl	__Func_10704
	bl	OvlFunc_374
.L2f20:
	bl	__Func_91750
	bl	OvlFunc_2b14
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ee4

.thumb_func_start OvlFunc_2f30
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x82
	mov	r2, #0xb2
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0x82
	mov	r2, #0xc4
	mov	r3, #0xdf
	lsl	r2, #18
	mov	r1, #0
	lsl	r0, #18
	bl	OvlFunc_58
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92708
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f30

.thumb_func_start OvlFunc_2f8c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.L2fa4
	ldr	r0, =.L6e44
	b	.L2fd4
.L2fa4:
	ldr	r3, =0xb6
	cmp	r2, r3
	beq	.L2fd2
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.L2fb4
	ldr	r0, =.L7120
	b	.L2fd4
.L2fb4:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.L2fbe
	ldr	r0, =.L7300
	b	.L2fd4
.L2fbe:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.L2fc8
	ldr	r0, =.L73b4
	b	.L2fd4
.L2fc8:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.L2fd2
	ldr	r0, =.L74f8
	b	.L2fd4
.L2fd2:
	ldr	r0, =.L6f1c
.L2fd4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_2f8c

.thumb_func_start OvlFunc_300c
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_92054
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #0xfc
	and	r3, r2
	strb	r3, [r1]
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	mov	r0, r6
	mov	r1, #3
	bl	__Func_92b08
	add	r5, #0x23
	ldrb	r2, [r5]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r5]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_300c

.thumb_func_start OvlFunc_3050
	push	{r5, lr}
	mov	r5, #0xf
.L3054:
	mov	r0, r5
	add	r5, #1
	bl	__Func_92054
	cmp	r5, #0x12
	bls	.L3054
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3050

.thumb_func_start OvlFunc_3068
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #1
	sub	sp, #0xc
	bl	__Func_9163c
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L308c
	bl	OvlFunc_558
.L308c:
	mov	r0, #0x88
	lsl	r0, #1
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r0, r3, r2
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r0]
	ldr	r1, =ewram_240
	ldrsh	r2, [r1, r2]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.L3112
	mov	r3, #0x80
	lsl	r3, #1
	str	r3, [r0]
	ldr	r0, =0x981
	bl	__Func_79338
	cmp	r0, #0
	bne	.L30c6
	mov	r0, #8
	bl	OvlFunc_300c
	b	.L30da
.L30c6:
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
.L30da:
	mov	r0, #9
	bl	OvlFunc_300c
	mov	r0, #0xa
	bl	OvlFunc_300c
	mov	r0, #0xb
	bl	OvlFunc_300c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_92b08
	mov	r0, #0xc
	bl	OvlFunc_300c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #0xd
	bl	OvlFunc_300c
	mov	r0, #0xe
	bl	OvlFunc_300c
	bl	.L3fa6
.L3112:
	ldr	r3, =0xb6
	cmp	r2, r3
	beq	.L311a
	b	.L33a8
.L311a:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #1
	cmp	r3, #0x19
	bls	.L312e
	bl	.L3fa6
.L312e:
	ldr	r2, =.L3138
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3138:
	.word	.L31a0
	.word	.L31a0
	.word	.L31b2
	.word	.L31b2
	.word	.L31aa
	.word	.L31b2
	.word	.L3376
	.word	.L3376
	.word	.L3376
	.word	.L3376
	.word	.L3376
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L31bc
	.word	.L31bc
	.word	.L3348
	.word	.L3348
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3342
.L31a0:
	mov	r0, #8
	bl	OvlFunc_300c
	bl	.L3fa6
.L31aa:
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_79374
.L31b2:
	mov	r0, #9
	bl	OvlFunc_300c
	bl	.L3fa6
.L31bc:
	ldr	r0, =0x982
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3268
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x67
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__Func_10424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5c
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x61
	b	.L3316
.L3268:
	ldr	r0, =0x983
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3276
	bl	.L3fa6
.L3276:
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__Func_10424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5e
.L3316:
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	bl	.L3fa6
.L3342:
	ldr	r0, =0x121
	bl	__Func_79374
.L3348:
	ldr	r0, =0x12f
	bl	__Func_79374
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L335e
	bl	.L3fa6
.L335e:
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	bl	__Func_10424
	bl	.L3fa6
.L3376:
	ldr	r0, =0x987
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3384
	bl	.L3fa6
.L3384:
	mov	r1, #0xda
	mov	r2, #0xb0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, =0xffe80000
	mov	r7, r0
	str	r3, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r7, #0x3c]
	bl	.L3fa6
.L33a8:
	ldr	r3, =0xb7
	cmp	r2, r3
	beq	.L33b0
	b	.L35b4
.L33b0:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #1
	cmp	r3, #0x14
	bls	.L33c4
	bl	.L3fa6
.L33c4:
	ldr	r2, =.L33cc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L33cc:
	.word	.L3c86
	.word	.L3c86
	.word	.L3c86
	.word	.L3c86
	.word	.L3fa6
	.word	.L3fa6
	.word	.L34dc
	.word	.L34dc
	.word	.L348c
	.word	.L348c
	.word	.L3524
	.word	.L3524
	.word	.L3524
	.word	.L3524
	.word	.L3524
	.word	.L3420
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3c86
	.word	.L3432
	.word	.L342a
.L3420:
	ldr	r0, =0x12f
	bl	__Func_79374
	bl	.L3fa6
.L342a:
	bl	OvlFunc_42bc
	bl	.L3fa6
.L3432:
	mov	r0, #0xaa
	bl	__Func_91ff0
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3446
	bl	.L3fa6
.L3446:
	bl	OvlFunc_9c8
	bl	.L3fa6

	.pool_aligned

.L348c:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r7, r0
	bl	OvlFunc_19c0
	ldr	r3, [r7, #8]
	asr	r3, #20
	cmp	r3, #8
	bne	.L34a6
	mov	r0, r7
	bl	OvlFunc_1a14
.L34a6:
	mov	r0, #0xc
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	asr	r3, #20
	cmp	r3, #7
	bne	.L34ba
	bl	OvlFunc_1a14
.L34ba:
	ldr	r5, =0x1c10000
	mov	r0, #0xce
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_58
	mov	r0, #0xd2
	lsl	r0, #16
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	bl	OvlFunc_58
	bl	.L3fa6
.L34dc:
	mov	r0, #0
	bl	__Func_91494
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #8
	bl	__Func_92054
	mov	r7, r0
	ldr	r5, =OvlFunc_8c8
	mov	r3, r7
	add	r3, #0x55
	mov	r6, #0
	strb	r6, [r3]
	mov	r0, #9
	str	r5, [r7, #0x6c]
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, #0xa
	str	r5, [r7, #0x6c]
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	str	r5, [r7, #0x6c]
	bl	OvlFunc_18f8
	bl	.L3fa6
.L3524:
	mov	r0, #0xaa
	bl	__Func_91ff0
	mov	r0, #0
	bl	__Func_91494
	mov	r0, #2
	bl	__Func_30f8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3546
	bl	.L3fa6
.L3546:
	mov	r5, #5
	mov	r6, #2
	mov	r0, #0x6f
	mov	r1, #5
	mov	r2, #0x75
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x6f
	mov	r1, #0xa
	mov	r2, #0x75
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x6f
	mov	r1, #7
	mov	r2, #0x6f
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x6f
	mov	r1, #7
	mov	r2, #0x6f
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x36
	mov	r5, #3
	str	r3, [sp]
	mov	r0, #0x30
	mov	r1, #3
	mov	r2, #3
	mov	r3, #0xa
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x30
	str	r3, [sp]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #3
	mov	r3, #0xa
	str	r5, [sp, #4]
	bl	__Func_105d4
	bl	.L3fa6
.L35b4:
	ldr	r3, =0xb8
	cmp	r2, r3
	beq	.L35bc
	b	.L37bc
.L35bc:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #1
	cmp	r3, #0xa
	bls	.L35d0
	bl	.L3fa6
.L35d0:
	ldr	r2, =.L35d8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L35d8:
	.word	.L3c86
	.word	.L3604
	.word	.L3fa6
	.word	.L360a
	.word	.L3fa6
	.word	.L360a
	.word	.L3706
	.word	.L3706
	.word	.L3614
	.word	.L3614
	.word	.L36ee
.L3604:
	bl	OvlFunc_7d8
	b	.L3c86
.L360a:
	mov	r0, #0
	bl	__Func_91494
	bl	.L3fa6
.L3614:
	mov	r0, #8
	bl	__Func_92054
	mov	r2, #0
	mov	r7, r0
	mov	r8, r2
	mov	r3, r7
	add	r3, #0x55
	mov	r1, r8
	strb	r1, [r3]
	mov	r0, #9
	str	r2, [r7, #0xc]
	bl	__Func_92054
	mov	r3, #0x55
	mov	r7, r0
	add	r3, r7
	mov	r1, r8
	strb	r1, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x59
	strb	r1, [r3]
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.L36e6
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	str	r3, [sp]
	mov	r5, #2
	mov	r0, #0x7c
	mov	r1, #0x29
	mov	r2, #0x6e
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r6, #0x2e
	mov	r3, #1
	mov	r0, #0x2e
	mov	r1, #0x29
	mov	r2, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r1, #0xba
	mov	r2, #0xb6
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r2, r8
	mov	r3, r10
	strb	r2, [r3]
	ldr	r3, =0xfff00000
	mov	r0, #9
	str	r3, [r7, #0xc]
	mov	r1, #3
	bl	__Func_92b08
	mov	r3, r7
	add	r3, #0x23
	strb	r5, [r3]
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2d
	mov	r1, #0x2d
	str	r6, [sp]
	bl	__Func_10704
	mov	r0, #0xa
	mov	r1, #7
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_92b08
	mov	r0, #0xa
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x59
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, #0xae
	sub	r3, #0x36
	strb	r5, [r3]
	mov	r0, #0xa
	ldr	r1, =0x2e70000
	lsl	r2, #18
	bl	__Func_923e4
	ldr	r3, =OvlFunc_b98
	str	r3, [r7, #0x6c]
.L36e6:
	bl	OvlFunc_1d48
	bl	.L3fa6
.L36ee:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
.L3706:
	mov	r0, #0xaa
	bl	__Func_91ff0
	bl	__Func_11ae0
	mov	r3, #0
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L378c
	mov	r5, #3
	mov	r0, #0xf
	mov	r1, #0x60
	mov	r2, #9
	mov	r3, #0x60
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xc
	mov	r1, #0x60
	mov	r2, #0xf
	mov	r3, #0x60
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r6, #4
	mov	r0, #5
	mov	r1, #0x32
	mov	r2, #0xf
	mov	r3, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x19
	mov	r1, #0x2d
	mov	r2, #9
	mov	r3, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #9
	mov	r5, #0x20
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #0x20
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x20
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
.L378c:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	beq	.L37a0
	bl	.L3fa6
.L37a0:
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	bl	.L3fa6
.L37bc:
	ldr	r3, =0xb9
	cmp	r2, r3
	beq	.L37c4
	b	.L3a78
.L37c4:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #4
	cmp	r3, #0x10
	bls	.L37d6
	b	.L3fa6
.L37d6:
	ldr	r2, =.L37e0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L37e0:
	.word	.L3910
	.word	.L3910
	.word	.L3c86
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3864
	.word	.L3864
	.word	.L3864
	.word	.L3864
	.word	.L3864
	.word	.L3864
	.word	.L3916
	.word	.L3916
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3824
	.word	.L3864
.L3824:
	bl	OvlFunc_4610
	b	.L3fa6

	.pool_aligned

.L3864:
	mov	r0, #0xaa
	bl	__Func_91ff0
	ldr	r0, =0x306
	bl	__Func_79338
	cmp	r0, #0
	beq	.L38ac
	mov	r3, #0x1a
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #0xd
	bl	__Func_105d4
	mov	r3, #9
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r0, #0x51
	mov	r2, #0x59
	mov	r3, #0xe
	bl	__Func_10424
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_45f0
	lsl	r1, #4
	bl	__Func_41d8
.L38ac:
	ldr	r0, =0x307
	bl	__Func_79338
	cmp	r0, #0
	beq	.L38ee
	mov	r3, #0x22
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #0xd
	bl	__Func_105d4
	mov	r3, #5
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r0, #0x51
	mov	r2, #0x61
	mov	r3, #0xe
	bl	__Func_10424
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_4600
	lsl	r1, #4
	bl	__Func_41d8
.L38ee:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xb
	bne	.L3904
	bl	OvlFunc_7d8
	b	.L3fa6
.L3904:
	cmp	r3, #0x14
	beq	.L390a
	b	.L3fa6
.L390a:
	bl	OvlFunc_47c0
	b	.L3fa6
.L3910:
	bl	OvlFunc_7d8
	b	.L3c86
.L3916:
	mov	r0, #8
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	mov	r5, #0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r0, #9
	str	r5, [r7, #0xc]
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3954
	b	.L3a72
.L3954:
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x3b
	mov	r2, #0x6d
	mov	r3, #0x25
	bl	__Func_10424
	mov	r3, #0x2d
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.L39b8
	mov	r1, #0xc2
	mov	r2, #0xa6
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xd2
	mov	r2, #0xa6
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc2
	mov	r2, #0xae
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	b	.L39e2
.L39b8:
	mov	r1, #0xd2
	mov	r2, #0xa6
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xc2
	mov	r2, #0xae
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xd2
	mov	r2, #0xae
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
.L39e2:
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92b08
	mov	r0, #9
	bl	__Func_92054
	mov	r7, r0
	ldr	r5, =0xfff00000
	mov	r3, r7
	add	r3, #0x23
	mov	r6, #2
	mov	r2, #0
	str	r5, [r7, #0xc]
	mov	r1, #3
	strb	r6, [r3]
	mov	r0, #0xa
	mov	r8, r2
	bl	__Func_92b08
	mov	r0, #0xa
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r1, #3
	strb	r6, [r3]
	mov	r0, #0xb
	bl	__Func_92b08
	mov	r0, #0xb
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r1, #7
	strb	r6, [r3]
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_92b08
	mov	r0, #0xc
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x59
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, #0x9e
	sub	r3, #0x36
	strb	r6, [r3]
	mov	r0, #0xc
	ldr	r1, =0x2d70000
	lsl	r2, #18
	bl	__Func_923e4
	ldr	r3, =OvlFunc_b98
	str	r3, [r7, #0x6c]
.L3a72:
	bl	OvlFunc_1f60
	b	.L3fa6
.L3a78:
	ldr	r3, =0xba
	cmp	r2, r3
	beq	.L3a80
	b	.L3fa6
.L3a80:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #1
	cmp	r3, #0x13
	bls	.L3a92
	b	.L3fa6
.L3a92:
	ldr	r2, =.L3a9c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3a9c:
	.word	.L3aec
	.word	.L3aec
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3c86
	.word	.L3c86
	.word	.L3e34
	.word	.L3e34
	.word	.L3fa6
	.word	.L3c8e
	.word	.L3c8e
	.word	.L3ca6
.L3aec:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3b70
	mov	r0, #0
	bl	OvlFunc_22c8
	mov	r0, #0
	bl	__Func_92054
	bl	OvlFunc_94c
	mov	r5, #0
.L3b08:
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	asr	r4, r3, #20
	cmp	r4, #0xd
	bne	.L3b36
	ldr	r3, [r7, #0x10]
	asr	r6, r3, #20
	cmp	r6, #7
	bne	.L3b36
	mov	r2, #0x80
	lsl	r2, #2
	add	r0, r5, r2
	str	r4, [sp, #8]
	bl	__Func_79338
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.L3b36
	b	.L3e0a
.L3b36:
	add	r5, #1
	cmp	r5, #3
	bls	.L3b08
	b	.L3fa6

	.pool_aligned

.L3b70:
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	mov	r7, r0
	mov	r9, r1
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r9
	strb	r2, [r3]
	ldr	r3, =0xffd00000
	mov	r2, r7
	str	r3, [r7, #0xc]
	add	r2, #0x23
	mov	r11, r3
	ldrb	r3, [r2]
	mov	r6, #2
	orr	r3, r6
	strb	r3, [r2]
	mov	r1, r7
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1]
	mov	r2, #3
	ldr	r1, .L3be4	@ 0
	mov	r10, r2
	mov	r3, r7
	mov	r8, r1
	add	r3, #0x64
	mov	r1, r10
	strh	r1, [r3]
	mov	r0, #8
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #9
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	mov	r3, r11
	str	r3, [r7, #0xc]
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	orr	r6, r3
	strb	r6, [r2]
	add	r2, #0x36
	ldrb	r3, [r2]
	and	r5, r3
	mov	r3, r7
	b	.L3bec

	.align	2, 0
.L3be4:
	.word	0
	.pool

.L3bec:
	add	r3, #0x64
	mov	r1, r10
	strb	r5, [r2]
	mov	r0, #9
	strh	r1, [r3]
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xa
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r1, r9
	add	r3, #0xf
	strh	r1, [r3]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xb
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r1, r9
	add	r3, #0xf
	strh	r1, [r3]
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xc
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r1, r9
	add	r3, #0xf
	strh	r1, [r3]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xd
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, r9
	add	r3, #0xf
	strh	r1, [r3]
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	b	.L3fa6
.L3c86:
	mov	r0, #0xaa
	bl	__Func_91ff0
	b	.L3fa6
.L3c8e:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
.L3ca6:
	mov	r0, #0x14
	bl	__Func_92054
	mov	r7, #4
	add	r0, #0x55
	strb	r7, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, =0xffef8000
	str	r3, [r0, #0xc]
	bl	__Func_11ae0
	mov	r5, #0
	ldr	r3, =REG_BLDCNT
	strh	r5, [r3]
	ldr	r0, =0x306
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3d52
	mov	r0, #0xaa
	bl	__Func_91ff0
	mov	r6, #3
	mov	r5, #2
	mov	r0, #0x24
	mov	r1, #0x51
	mov	r2, #0x20
	mov	r3, #0x51
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x24
	mov	r1, #0x53
	mov	r2, #0x24
	mov	r3, #0x51
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r3, #0x20
	str	r3, [sp]
	mov	r5, #0x11
	mov	r0, #0x24
	mov	r1, #0x11
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x24
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x3f
	mov	r1, #0x1d
	mov	r2, #0x21
	mov	r3, #0x14
	bl	__Func_10424
	mov	r0, #0x14
	mov	r1, #0x38
	mov	r2, #0x24
	mov	r3, #0x11
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_10424
.L3d52:
	ldr	r0, =0x307
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3dc8
	mov	r6, #3
	mov	r5, #2
	mov	r0, #0x2c
	mov	r1, #0x51
	mov	r2, #0x30
	mov	r3, #0x51
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x2c
	mov	r1, #0x53
	mov	r2, #0x2c
	mov	r3, #0x51
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10424
	mov	r3, #0x30
	str	r3, [sp]
	mov	r5, #0x11
	mov	r0, #0x2c
	mov	r1, #0x11
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x3f
	mov	r1, #0x1d
	mov	r2, #0x31
	mov	r3, #0x14
	bl	__Func_10424
	mov	r0, #0x29
	mov	r1, #0x38
	mov	r2, #0x2c
	mov	r3, #0x11
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_10424
.L3dc8:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	ldrh	r2, [r5]
	mov	r3, r2
	sub	r3, #0x12
	mov	r1, #0x80
	lsl	r3, #16
	lsl	r1, #9
	cmp	r3, r1
	bhi	.L3df8
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldrh	r2, [r5]
.L3df8:
	mov	r1, #0xa0
	lsl	r3, r2, #16
	lsl	r1, #13
	cmp	r3, r1
	beq	.L3e04
	b	.L3fa6
.L3e04:
	bl	OvlFunc_4a2c
	b	.L3fa6
.L3e0a:
	mov	r0, r7
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, r7
	mov	r1, #0
	add	r3, #0x59
	strb	r1, [r3]
	sub	r3, #4
	strb	r1, [r3]
	mov	r0, #4
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	str	r4, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	b	.L3fa6
.L3e34:
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_3050
	bl	__Func_41d8
	mov	r0, #0xe
	bl	__Func_92054
	mov	r2, #0
	mov	r7, r0
	mov	r8, r2
	mov	r3, r7
	mov	r1, r8
	add	r3, #0x55
	strb	r1, [r3]
	mov	r0, #0xf
	str	r2, [r7, #0xc]
	bl	__Func_92054
	mov	r3, r8
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, r8
	add	r0, #0x55
	strb	r1, [r0]
	mov	r0, #0x11
	bl	__Func_92054
	mov	r2, r8
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, #0x12
	bl	__Func_92054
	mov	r3, r8
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3e98
	b	.L3fa2
.L3e98:
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #1
	str	r3, [sp]
	mov	r6, #2
	mov	r0, #0x5f
	mov	r1, #0x38
	mov	r2, #0x4d
	mov	r3, #0x23
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #0xd
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0xd
	mov	r1, #0x23
	mov	r2, #1
	bl	__Func_10704
	mov	r1, #0x84
	mov	r2, #0xba
	lsl	r2, #18
	lsl	r1, #17
	mov	r0, #0xf
	bl	__Func_923e4
	mov	r0, #0xf
	bl	__Func_92054
	mov	r7, r0
	ldr	r5, =0xfff00000
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r0, #0xf
	strb	r6, [r3]
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #0xb8
	mov	r2, #0x9e
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x10
	bl	__Func_923e4
	mov	r0, #0x10
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r0, #0x10
	strb	r6, [r3]
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #0xe8
	mov	r2, #0xae
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x11
	bl	__Func_923e4
	mov	r0, #0x11
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r0, #0x11
	strb	r6, [r3]
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #0xb8
	mov	r2, #0xa6
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x12
	bl	__Func_923e4
	mov	r0, #0x12
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r0, #0x12
	strb	r6, [r3]
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #7
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_92b08
	mov	r0, #0x13
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x59
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, #0x96
	sub	r3, #0x36
	mov	r1, #0xd7
	strb	r6, [r3]
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	ldr	r3, =OvlFunc_b98
	str	r3, [r7, #0x6c]
.L3fa2:
	bl	OvlFunc_2b14
.L3fa6:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3068

.thumb_func_start OvlFunc_3fe4
	push	{lr}
	sub	sp, #0xc
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	sub	r3, #1
	str	r3, [r0, #8]
	bl	OvlFunc_4048
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_3fe4

.thumb_func_start OvlFunc_3ffc
	push	{lr}
	sub	sp, #0xc
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r3, #1
	str	r3, [r0, #8]
	bl	OvlFunc_4048
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_3ffc

.thumb_func_start OvlFunc_4014
	push	{lr}
	sub	sp, #0xc
	mov	r3, #1
	mov	r0, sp
	neg	r3, r3
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r0, #8]
	bl	OvlFunc_4048
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_4014

.thumb_func_start OvlFunc_4030
	push	{lr}
	sub	sp, #0xc
	mov	r0, sp
	mov	r3, #1
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r0, #8]
	bl	OvlFunc_4048
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_4030

.thumb_func_start OvlFunc_4048
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r9, r0
	ldr	r2, [r3]
	mov	r0, #0xfa
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	sub	sp, #0x58
	mov	r1, #0xf0
	str	r3, [sp, #0x20]
	lsl	r1, #1
	add	r2, r1
	ldr	r2, [r2]
	mov	r0, r3
	str	r2, [sp, #0x1c]
	bl	__Func_92054
	mov	r7, r0
	mov	r0, r9
	ldr	r3, [r0]
	add	r2, sp, #0x4c
	mov	r11, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	mov	r1, r11
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r7, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #0x10]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r1, #8]
	mov	r0, r7
	bl	__Func_120dc
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	str	r3, [sp, #0x18]
	ldr	r2, [sp, #0x18]
	mov	r3, #4
	and	r2, r3
	mov	r10, r0
	str	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.L4142
	bl	__Func_4458
	mov	r1, #0xf8
	mov	r3, sp
	lsl	r0, #12
	add	r3, #0x24
	lsl	r1, #8
	lsr	r0, #16
	mov	r2, r3
	add	r0, r1
	str	r3, [sp, #0x14]
	strh	r0, [r2, #0x22]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	ldr	r5, [r7, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfffa0000
	add	r5, r3
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, =0x1999
	lsr	r3, #16
	mov	r8, r0
	mov	r1, r8
	mul	r1, r3
	ldr	r6, =0x7ffd
	mov	r0, r9
	ldr	r2, [r0]
	mov	r3, r1
	add	r3, r6
	mov	r1, r2
	mul	r1, r3
	str	r1, [sp, #0x10]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r2, r8
	mul	r2, r3
	mov	r0, r9
	mov	r3, r2
	ldr	r2, [r0, #8]
	add	r3, r6
	mul	r3, r2
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0x80
	lsl	r3, #16
	ldr	r0, [sp, #0x18]
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x14]
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r5
	ldr	r3, [sp, #0x10]
	bl	OvlFunc_118
.L4142:
	mov	r0, r10
	cmp	r0, #0
	bge	.L4190
	mov	r1, #0x81
	ldr	r0, [sp, #0x20]
	lsl	r1, #1
	bl	__Func_93874
	ldr	r3, [r7, #0x10]
	mov	r0, #0x80
	lsl	r0, #12
	add	r3, r0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	mov	r0, r7
	bl	__Func_d14c
	mov	r0, r7
	mov	r1, #7
	bl	__Func_c300
	mov	r0, r7
	bl	__Func_ca6c
.L4172:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	cmp	r2, r3
	bne	.L4172
	mov	r0, r7
	mov	r1, #6
	bl	__Func_c300
	mov	r0, #3
	bl	__Func_30f8
	b	.L428c
.L4190:
	mov	r1, r9
	ldr	r2, [r1]
	ldr	r3, [r7, #8]
	lsl	r2, #19
	add	r3, r2
	mov	r2, r11
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	str	r3, [r2, #4]
	ldr	r2, [r1, #8]
	ldr	r3, [r7, #0x10]
	lsl	r2, #19
	add	r3, r2
	mov	r0, r11
	str	r3, [r0, #8]
	mov	r1, r11
	mov	r0, r7
	bl	__Func_120dc
	mov	r10, r0
	cmp	r0, #0
	bgt	.L428c
	mov	r1, r9
	ldr	r3, [r1]
	ldr	r5, =0x5b333
	mov	r0, r9
	ldr	r2, [r0, #8]
	mov	r1, r3
	mul	r1, r5
	mul	r2, r5
	ldr	r3, [r7, #8]
	add	r3, r1
	mov	r0, r11
	sub	r3, r2
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	add	r3, r2
	sub	r3, r1
	str	r3, [r0, #8]
	mov	r1, r11
	mov	r0, r7
	bl	__Func_120dc
	mov	r10, r0
	cmp	r0, #0
	ble	.L4204
	mov	r1, r9
	ldr	r3, [r1, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r1]
	b	.L4280
.L4204:
	mov	r2, r9
	ldr	r3, [r2]
	ldr	r2, [r2, #8]
	add	r3, r2
	mov	r2, r3
	mul	r2, r5
	ldr	r3, [r7, #8]
	mov	r0, r11
	add	r3, r2, r3
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	add	r2, r3
	str	r2, [r0, #8]
	mov	r1, r11
	mov	r0, r7
	bl	__Func_120dc
	mov	r10, r0
	cmp	r0, #0
	ble	.L424e
	mov	r1, r9
	ldr	r3, [r1, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	sub	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r1]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #0x10]
	lsl	r2, #15
	sub	r3, r2
	b	.L428a
.L424e:
	mov	r2, r9
	ldr	r3, [r2]
	ldr	r0, [sp, #0x1c]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r0, #8]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r0, #8]
	mov	r1, r9
	ldr	r3, [r1]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r1, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r0, #0x10]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r3, [r1, #8]
.L4280:
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #0x10]
	lsl	r2, #15
	add	r3, r2
.L428a:
	str	r3, [r7, #0x10]
.L428c:
	add	sp, #0x58
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4048

.thumb_func_start OvlFunc_42bc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0xaa
	bl	__Func_91ff0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa2
	bl	__Func_f9080
	mov	r2, #0x10
	mov	r3, #0
	add	r2, sp
	mov	r10, r3
	mov	r8, r3
	mov	r9, r2
	mov	r11, r3
.L431a:
	bl	__Func_4458
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x18]
	bl	__Func_4458
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x1c]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsr	r0, #16
	lsl	r3, #8
	mov	r2, #0x32
	add	r0, r3
	add	r2, sp
	strh	r0, [r2]
.L4356:
	mov	r3, r8
	mov	r6, #0
	cmp	r3, #7
	bhi	.L43a4
	mov	r5, #0xc0
	lsl	r5, #14
	mov	r7, #0
	add	r5, r11
.L4366:
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r3, #0x88
	lsl	r3, #16
	lsr	r0, #16
	mov	r2, #0xd8
	lsl	r2, #18
	str	r3, [sp, #8]
	lsl	r0, #19
	mov	r3, r9
	add	r0, r2
	str	r3, [sp, #0xc]
	mov	r2, r5
	mov	r1, #0
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_118
	mov	r2, #0x80
	lsl	r2, #11
	add	r6, #1
	add	r5, r2
	cmp	r6, #3
	bhi	.L43a4
	mov	r3, r8
	cmp	r3, #7
	bls	.L4366
.L43a4:
	mov	r0, #3
	bl	__Func_30f8
	mov	r2, r8
	cmp	r2, #3
	bne	.L43bc
	mov	r3, r10
	cmp	r3, #2
	bhi	.L43bc
	mov	r2, #1
	add	r10, r2
	b	.L4356
.L43bc:
	mov	r3, r8
	add	r3, #3
	mov	r2, #3
	mov	r1, #1
	str	r2, [sp]
	str	r1, [sp, #4]
	mov	r2, #0x36
	mov	r1, r3
	mov	r0, #0x30
	bl	__Func_10424
	mov	r3, #0x80
	mov	r2, #1
	lsl	r3, #13
	add	r8, r2
	add	r11, r3
	mov	r3, r8
	cmp	r3, #9
	bls	.L431a
	mov	r5, #5
	mov	r6, #2
	mov	r0, #0x6f
	mov	r1, #5
	mov	r2, #0x75
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x6f
	mov	r1, #0xa
	mov	r2, #0x75
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x6f
	mov	r1, #7
	mov	r2, #0x6f
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r2, #0x6f
	mov	r0, #0x6f
	mov	r1, #7
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r2, #0
	mov	r8, r2
	mov	r10, r9
	mov	r11, r2
.L442e:
	bl	__Func_4458
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	mov	r2, r10
	str	r3, [r2, #8]
	bl	__Func_4458
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	mov	r2, r10
	str	r3, [r2, #0xc]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	mov	r2, r10
	mov	r3, r8
	strh	r0, [r2, #0x22]
	mov	r6, #0
	cmp	r3, #7
	bhi	.L44ba
	mov	r5, #0xc0
	lsl	r5, #14
	mov	r7, #0
	add	r5, r11
.L447c:
	bl	__Func_4458
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	mov	r2, #0xc0
	lsl	r2, #18
	lsl	r3, #19
	add	r3, r2
	mov	r2, #0x88
	lsl	r2, #16
	str	r2, [sp, #8]
	mov	r2, r9
	str	r2, [sp, #0xc]
	mov	r0, r3
	mov	r2, r5
	mov	r3, #0
	mov	r1, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_118
	mov	r3, #0x80
	lsl	r3, #11
	add	r6, #1
	add	r5, r3
	cmp	r6, #3
	bhi	.L44ba
	mov	r2, r8
	cmp	r2, #7
	bls	.L447c
.L44ba:
	mov	r0, #3
	bl	__Func_30f8
	mov	r1, r8
	mov	r3, r8
	mov	r2, #3
	mov	r0, #1
	add	r3, #3
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r2, #0x30
	add	r1, #0x1a
	mov	r0, #0x37
	bl	__Func_10424
	mov	r3, #0x80
	mov	r2, #1
	lsl	r3, #13
	add	r8, r2
	add	r11, r3
	mov	r3, r8
	cmp	r3, #9
	bls	.L442e
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_42bc

.thumb_func_start OvlFunc_4520
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =0xb333
	sub	sp, #0x38
	add	r2, sp, #0x10
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	mov	r7, r0
	mov	r10, r1
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	mov	r2, r8
	ldr	r3, =iwram_1e40
	strh	r0, [r2, #0x22]
	ldr	r6, [r3]
	mov	r3, #3
	and	r6, r3
	cmp	r6, #0
	bne	.L45d6
	bl	__Func_4458
	lsl	r0, #1
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L45aa
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xe0
	lsl	r3, #11
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_af0
	lsl	r5, #1
	mov	r3, r10
	lsr	r5, #16
	lsl	r5, #4
	lsl	r2, r3, #19
	mov	r3, #0x88
	lsl	r3, #16
	add	r5, r7, r5
	lsl	r5, #16
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp, #4]
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_118
	b	.L45d6
.L45aa:
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #4
	add	r0, r3
	ldr	r3, =0xfffc0000
	lsl	r2, r7, #19
	add	r2, r3
	mov	r3, #0x88
	lsl	r3, #16
	lsr	r0, #16
	add	r0, r7, r0
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r0, #16
	mov	r1, #0
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_118
.L45d6:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4520

.thumb_func_start OvlFunc_45f0
	push	{lr}
	mov	r0, #0xd8
	lsl	r0, #1
	mov	r1, #0x20
	bl	OvlFunc_4520
	pop	{r0}
	bx	r0
.func_end OvlFunc_45f0

.thumb_func_start OvlFunc_4600
	push	{lr}
	mov	r0, #0x8c
	lsl	r0, #2
	mov	r1, #0x2c
	bl	OvlFunc_4520
	pop	{r0}
	bx	r0
.func_end OvlFunc_4600

.thumb_func_start OvlFunc_4610
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0xaa
	bl	__Func_91ff0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa2
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xb4
	lsl	r2, #17
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	mov	r2, #0x10
	mov	r3, #0
	add	r2, sp
	mov	r10, r3
	mov	r8, r3
	mov	r11, r2
	mov	r9, r3
.L468c:
	bl	__Func_4458
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x18]
	bl	__Func_4458
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x1c]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsr	r0, #16
	lsl	r3, #8
	mov	r2, #0x32
	add	r0, r3
	add	r2, sp
	strh	r0, [r2]
.L46c8:
	mov	r5, #0xc0
	lsl	r5, #16
	mov	r6, #0
	mov	r7, #0
	add	r5, r9
.L46d2:
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #3
	sub	r0, r3
	lsr	r0, #16
	mov	r3, #0xd0
	lsl	r3, #17
	lsl	r0, #19
	add	r0, r3
	mov	r3, #0x88
	lsl	r3, #16
	mov	r2, r11
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r3, #0
	mov	r2, r5
	mov	r1, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_118
	mov	r3, #0x80
	lsl	r3, #11
	add	r6, #1
	add	r5, r3
	cmp	r6, #3
	bls	.L46d2
	mov	r0, #3
	bl	__Func_30f8
	mov	r2, r8
	cmp	r2, #3
	bne	.L4732
	mov	r3, r10
	cmp	r3, #2
	bhi	.L4722
	mov	r2, #1
	add	r10, r2
	b	.L46c8
.L4722:
	mov	r3, r10
	cmp	r3, #3
	bne	.L4732
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_45f0
	lsl	r1, #4
	bl	__Func_41d8
.L4732:
	mov	r3, r8
	add	r3, #0xc
	mov	r2, #3
	mov	r1, #1
	str	r2, [sp]
	str	r1, [sp, #4]
	mov	r2, #0x1a
	mov	r1, r3
	mov	r0, #0x35
	bl	__Func_10424
	mov	r2, #0x80
	mov	r3, #1
	lsl	r2, #13
	add	r8, r3
	add	r9, r2
	mov	r2, r8
	cmp	r2, #0xc
	bls	.L468c
	mov	r3, #9
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x51
	mov	r1, #0x29
	mov	r2, #0x59
	mov	r3, #0xe
	bl	__Func_10424
	bl	__Func_93530
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x306
	bl	__Func_79358
	mov	r0, #0x13
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4610

.thumb_func_start OvlFunc_47c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	sub	sp, #0x38
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0xaa
	bl	__Func_91ff0
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa2
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0x8e
	mov	r1, #1
	mov	r2, #0xb4
	lsl	r2, #17
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_933f8
	mov	r2, #0x10
	mov	r3, #0
	add	r2, sp
	mov	r10, r3
	mov	r8, r3
	mov	r11, r2
	mov	r9, r3
.L483c:
	bl	__Func_4458
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x18]
	bl	__Func_4458
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x1c]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsr	r0, #16
	lsl	r3, #8
	mov	r2, #0x32
	add	r0, r3
	add	r2, sp
	strh	r0, [r2]
.L4878:
	mov	r5, #0xc0
	lsl	r5, #16
	mov	r6, #0
	mov	r7, #0
	add	r5, r9
.L4882:
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #3
	sub	r0, r3
	lsr	r0, #16
	mov	r3, #0x88
	lsl	r3, #18
	lsl	r0, #19
	add	r0, r3
	mov	r3, #0x88
	lsl	r3, #16
	mov	r2, r11
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r3, #0
	mov	r2, r5
	mov	r1, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_118
	mov	r3, #0x80
	lsl	r3, #11
	add	r6, #1
	add	r5, r3
	cmp	r6, #3
	bls	.L4882
	mov	r0, #3
	bl	__Func_30f8
	mov	r2, r8
	cmp	r2, #3
	bne	.L48d2
	mov	r3, r10
	cmp	r3, #2
	bhi	.L48d2
	mov	r2, #1
	add	r10, r2
	b	.L4878
.L48d2:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_4600
	bl	__Func_41d8
	mov	r3, r8
	add	r3, #0xc
	mov	r2, #3
	mov	r1, #1
	str	r2, [sp]
	str	r1, [sp, #4]
	mov	r2, #0x22
	mov	r1, r3
	mov	r0, #0x3a
	bl	__Func_10424
	mov	r3, #0x80
	mov	r2, #1
	lsl	r3, #13
	add	r8, r2
	add	r9, r3
	mov	r3, r8
	cmp	r3, #0xc
	bls	.L483c
	mov	r3, #5
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x56
	mov	r1, #0x29
	mov	r2, #0x61
	mov	r3, #0xe
	bl	__Func_10424
	bl	__Func_93530
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x307
	bl	__Func_79358
	mov	r0, #0x14
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_47c0

.thumb_func_start OvlFunc_4968
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r2, #0x18]
	ldr	r3, =.L52cc
	mov	r10, r2
	str	r3, [r2, #0x1c]
	ldr	r2, =iwram_1e40
	ldr	r7, [r2]
	mov	r3, #3
	and	r7, r3
	mov	r5, r0
	cmp	r7, #0
	bne	.L4a14
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L49a6
	mov	r0, #0xf6
	bl	__Func_f9080
.L49a6:
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	add	r3, r0
	ldr	r2, [r5, #8]
	lsr	r3, #16
	sub	r3, #0x18
	mov	r8, r2
	lsl	r3, #16
	add	r8, r3
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	add	r3, r0
	lsr	r3, #16
	ldr	r6, [r5, #0xc]
	sub	r3, #0x18
	lsl	r3, #16
	add	r6, r3
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	add	r3, r0
	lsr	r3, #16
	ldr	r5, [r5, #0x10]
	sub	r3, #0x18
	lsl	r3, #16
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	mov	r3, #0x80
	lsl	r3, #8
	lsl	r0, #15
	add	r0, r3
	mov	r3, #0xcc
	lsl	r3, #14
	mov	r2, r10
	str	r0, [sp]
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_118
.L4a14:
	mov	r0, #0
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4968

.thumb_func_start OvlFunc_4a2c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #4
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #0x14
	bl	__Func_92054
	mov	r6, r0
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
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r7, #0xc]
	mov	r3, #0x80
	mov	r2, #0
	lsl	r3, #8
	str	r3, [r7, #0x48]
	mov	r10, r2
	mov	r3, #0x55
	add	r3, r7
	str	r2, [r7, #0x44]
	mov	r2, r10
	strb	r2, [r3]
	mov	r8, r3
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xcc
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r3, #3
	mov	r2, r8
	strb	r3, [r2]
	mov	r0, #0x18
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_924d4
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r8
	strb	r3, [r2]
	ldr	r2, =0xfffd0000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
	mov	r0, #2
	bl	__Func_30f8
	ldr	r2, =0xfffe0000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #10
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r0, #4
	bl	__Func_30f8
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r0, #4
	bl	__Func_30f8
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #9
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	mov	r2, r8
	mov	r3, r10
	strb	r3, [r2]
	mov	r3, r6
	mov	r2, r10
	add	r3, #0x55
	mov	r1, #0x80
	strb	r2, [r3]
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =OvlFunc_4968
	mov	r0, #0x3c
	str	r3, [r7, #0x6c]
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_92b08
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__Func_f9080
	ldr	r0, =0x101
	bl	__Func_79358
	mov	r2, #0
.L4b92:
	ldr	r3, [r7, #0xc]
	add	r3, r5
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r5
	str	r3, [r7, #0x14]
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	mov	r0, #1
	str	r2, [sp]
	bl	__Func_30f8
	ldr	r2, [sp]
	add	r2, #1
	cmp	r2, #0x7f
	bls	.L4b92
	mov	r0, #0x15
	bl	__Func_91e9c
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4a2c

.thumb_func_start OvlFunc_4bd8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, [r5, #8]
	sub	sp, #0xc
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r5, #0xc]
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, #0
	str	r3, [r0, #8]
	bl	OvlFunc_32c
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	ldr	r3, [r6, #0x28]
	mov	r1, #0x80
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	lsl	r1, #1
	cmp	r3, r1
	beq	.L4c0a
	b	.L4d4c
.L4c0a:
	ldr	r2, [r5, #0x24]
	mov	r4, r2
	cmp	r2, #0
	bge	.L4c14
	neg	r4, r2
.L4c14:
	ldr	r3, [r5, #0x2c]
	mov	r1, r3
	cmp	r3, #0
	bge	.L4c1e
	neg	r1, r3
.L4c1e:
	cmp	r4, r1
	ble	.L4c38
	mov	r3, r2
	cmp	r3, #0
	bge	.L4c2c
	ldr	r2, =0xffff
	add	r3, r2
.L4c2c:
	cmp	r3, #0
	bge	.L4c34
	ldr	r4, =.L51a4
	b	.L4c4a
.L4c34:
	ldr	r4, =.L51a8
	b	.L4c4a
.L4c38:
	cmp	r3, #0
	bge	.L4c40
	ldr	r1, =0xffff
	add	r3, r1
.L4c40:
	cmp	r3, #0
	bge	.L4c48
	ldr	r4, =.L51ac
	b	.L4c4a
.L4c48:
	ldr	r4, =.L51b0
.L4c4a:
	ldrb	r1, [r4]
	mov	r0, r1
	cmp	r0, #0
	beq	.L4c74
	mov	r2, r6
	add	r2, #0x24
	ldrb	r3, [r2]
	cmp	r3, r0
	beq	.L4c6e
	mov	r6, r2
.L4c5e:
	add	r4, #1
	ldrb	r1, [r4]
	mov	r2, r1
	cmp	r2, #0
	beq	.L4c74
	ldrb	r3, [r6]
	cmp	r3, r2
	bne	.L4c5e
.L4c6e:
	mov	r3, r1
	cmp	r3, #0
	bne	.L4c7e
.L4c74:
	mov	r0, r5
	ldr	r1, =.L5564
	bl	__Func_c2d8
	b	.L4d54
.L4c7e:
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.L4ce8
	ldr	r0, =.L5128
	mov	r4, #0
	ldr	r6, [r5, #8]
	ldr	r3, [r0, r4]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.L4ca8
	ldr	r3, [r5, #0x10]
	ldr	r2, [r0, #4]
	asr	r3, #20
	cmp	r3, r2
	beq	.L4cc4
.L4ca8:
	add	r4, #1
	cmp	r4, #3
	bhi	.L4cc4
	lsl	r1, r4, #3
	ldr	r3, [r0, r1]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.L4ca8
	ldr	r3, [r5, #0x10]
	add	r2, r1, #4
	ldr	r2, [r0, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.L4ca8
.L4cc4:
	mov	r6, #0
	lsl	r4, #2
	b	.L4cd0
.L4cca:
	add	r3, r1, #1
	str	r3, [r0, r4]
	add	r6, #1
.L4cd0:
	ldr	r0, =.L772c
	ldr	r1, [r0, r4]
	ldrb	r2, [r1]
	cmp	r2, #0
	beq	.L4c74
	ldr	r3, [r7, #0x50]
	add	r3, #0x24
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L4cca
	ldr	r3, =.L777c
	b	.L4d3e
.L4ce8:
	ldr	r0, =.L5164
	mov	r4, #0
	ldr	r6, [r5, #8]
	ldr	r3, [r0, r4]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.L4d00
	ldr	r3, [r5, #0x10]
	ldr	r2, [r0, #4]
	asr	r3, #20
	cmp	r3, r2
	beq	.L4d1c
.L4d00:
	add	r4, #1
	cmp	r4, #7
	bhi	.L4d1c
	lsl	r1, r4, #3
	ldr	r3, [r0, r1]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.L4d00
	ldr	r3, [r5, #0x10]
	add	r2, r1, #4
	ldr	r2, [r0, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.L4d00
.L4d1c:
	mov	r6, #0
	lsl	r4, #2
	b	.L4d28
.L4d22:
	add	r3, r1, #1
	str	r3, [r0, r4]
	add	r6, #1
.L4d28:
	ldr	r0, =.L778c
	ldr	r1, [r0, r4]
	ldrb	r2, [r1]
	cmp	r2, #0
	beq	.L4c74
	ldr	r3, [r7, #0x50]
	add	r3, #0x24
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L4d22
	ldr	r3, =.L77ec
.L4d3e:
	ldr	r2, [r3, r4]
	lsl	r3, r6, #2
	ldr	r1, [r3, r2]
	mov	r0, r5
	bl	__Func_c2d8
	b	.L4d54
.L4d4c:
	ldr	r1, =.L5564
	mov	r0, r5
	bl	__Func_c2d8
.L4d54:
	mov	r0, #0
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4bd8

	.section .data

	.incbin "overlays/rom_7f2f14/orig.bin", 0x5040, (0x50e8-0x5040)
.L50e8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x50e8, (0x5128-0x50e8)
.L5128:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5128, (0x5148-0x5128)
.L5148:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5148, (0x5164-0x5148)
.L5164:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5164, (0x51a4-0x5164)
.L51a4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51a4, (0x51a8-0x51a4)
.L51a8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51a8, (0x51ac-0x51a8)
.L51ac:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51ac, (0x51b0-0x51ac)
.L51b0:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51b0, (0x51d4-0x51b0)
.L51d4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51d4, (0x521c-0x51d4)
.L521c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x521c, (0x52cc-0x521c)
.L52cc:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x52cc, (0x53c4-0x52cc)
.L53c4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x53c4, (0x5488-0x53c4)
.L5488:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5488, (0x5508-0x5488)
.L5508:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5508, (0x5564-0x5508)
.L5564:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5564, (0x577c-0x5564)
.L577c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x577c, (0x57c8-0x577c)
.L57c8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x57c8, (0x5ac8-0x57c8)
.L5ac8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5ac8, (0x5ce8-0x5ac8)
.L5ce8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5ce8, (0x5d12-0x5ce8)
.L5d12:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d12, (0x5d3c-0x5d12)
.L5d3c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d3c, (0x5d68-0x5d3c)
.L5d68:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d68, (0x5dc8-0x5d68)
.L5dc8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5dc8, (0x6020-0x5dc8)
.L6020:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6020, (0x6230-0x6020)
.L6230:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6230, (0x6350-0x6230)
.L6350:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6350, (0x6548-0x6350)
.L6548:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6548, (0x6740-0x6548)
.L6740:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6740, (0x68ec-0x6740)
.L68ec:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x68ec, (0x6904-0x68ec)
.L6904:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6904, (0x69c4-0x6904)
.L69c4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x69c4, (0x6b74-0x69c4)
.L6b74:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6b74, (0x6c04-0x6b74)
.L6c04:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6c04, (0x6c64-0x6c04)
.L6c64:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6c64, (0x6cf4-0x6c64)
.L6cf4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6cf4, (0x6e44-0x6cf4)
.L6e44:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6e44, (0x6f1c-0x6e44)
.L6f1c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6f1c, (0x7120-0x6f1c)
.L7120:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x7120, (0x7300-0x7120)
.L7300:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x7300, (0x73b4-0x7300)
.L73b4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x73b4, (0x74f8-0x73b4)
.L74f8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x74f8, (0x772c-0x74f8)
.L772c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x772c, (0x777c-0x772c)
.L777c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x777c, (0x778c-0x777c)
.L778c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x778c, (0x77ec-0x778c)
.L77ec:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x77ec
