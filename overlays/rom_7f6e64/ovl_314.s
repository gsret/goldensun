	.include "macros.inc"

.thumb_func_start OvlFunc_314
	push	{r5, lr}
	mov	r5, r0
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	beq	.L352
	cmp	r3, #2
	bgt	.L32c
	cmp	r3, #0
	beq	.L366
	b	.L386
.L32c:
	cmp	r3, #4
	beq	.L344
	cmp	r3, #6
	bne	.L386
	ldr	r3, [r0, #0x18]
	ldr	r2, =0xffffe000
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x1c]
	lsl	r2, #5
	b	.L360
.L344:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
	b	.L35e
.L352:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffffc00
.L35e:
	ldr	r3, [r0, #0x1c]
.L360:
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.L386
.L366:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffffc00
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	bl	__Func_4458
	mov	r1, #0x50
	bl	_Func_b50
	add	r0, #0x50
	strh	r0, [r5]
.L386:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_314

.thumb_func_start OvlFunc_3a0
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r4, [r5, #0x44]
	ldr	r3, [r5, #8]
	add	r3, r4
	ldr	r2, [r5, #0x48]
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	add	r3, r2
	ldr	r6, [r5, #0x4c]
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	add	r3, r6
	sub	sp, #4
	str	r3, [r5, #0x10]
	mov	r0, r4
	mov	r1, #0x16
	str	r4, [sp]
	bl	_Func_af0
	ldr	r4, [sp]
	sub	r4, r0
	str	r4, [r5, #0x44]
	mov	r0, r6
	mov	r1, #0x14
	bl	_Func_af0
	ldr	r3, [r5, #0x18]
	ldr	r2, [r5, #0x30]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r2, [r5, #0x34]
	ldr	r3, [r5, #0x1c]
	sub	r6, r0
	add	r3, r2
	str	r6, [r5, #0x4c]
	str	r3, [r5, #0x1c]
	ldr	r1, [r5, #0x50]
	add	r5, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r5]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3a0

.thumb_func_start OvlFunc_400
	push	{lr}
	ldr	r1, [r0, #0x50]
	ldr	r0, =0xffff
	ldrh	r2, [r1, #0x1e]
	add	r3, r2, r0
	lsl	r3, #16
	cmp	r3, #0
	bge	.L416
	ldr	r0, =0xfffff600
	add	r3, r2, r0
	strh	r3, [r1, #0x1e]
.L416:
	pop	{r0}
	bx	r0
.func_end OvlFunc_400

.thumb_func_start OvlFunc_424
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L458
	bl	__Func_4458
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.L45c
	mov	r2, r3
.L458:
	sub	r3, r2, #1
	strh	r3, [r6]
.L45c:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_424

.thumb_func_start OvlFunc_464
	ldr	r0, =.L63d4
	bx	lr
.func_end OvlFunc_464

.thumb_func_start OvlFunc_46c
	mov	r0, #0
	bx	lr
.func_end OvlFunc_46c

.thumb_func_start OvlFunc_470
	ldr	r0, =.L6464
	bx	lr
.func_end OvlFunc_470

.thumb_func_start OvlFunc_478
	ldr	r0, =.L6478
	bx	lr
.func_end OvlFunc_478

.thumb_func_start OvlFunc_480
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
.func_end OvlFunc_480

.thumb_func_start OvlFunc_4bc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0
	mov	r0, #0
	ldr	r5, [r3]
	mov	r8, r2
	bl	__Func_92054
	mov	r7, #0xa0
	lsl	r7, #2
	mov	r10, r0
	mov	r6, #8
	add	r5, #0x34
.L4dc:
	ldmia	r5!, {r1}
	cmp	r1, #0
	beq	.L500
	ldr	r3, [r1, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf2
	bne	.L500
	mov	r0, r10
	add	r1, #8
	add	r0, #8
	bl	OvlFunc_480
	cmp	r0, r7
	bge	.L500
	mov	r7, r0
	mov	r8, r6
.L500:
	add	r6, #1
	cmp	r6, #0x41
	bls	.L4dc
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4bc

.thumb_func_start OvlFunc_518
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	mov	r5, r0
	ldrh	r1, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #5
	add	r1, r3
	mov	r7, r5
	mov	r3, #0xe0
	lsl	r3, #8
	add	r7, #0x55
	and	r1, r3
	ldrb	r3, [r7]
	ldr	r0, =0xfff00000
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r0
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r0
	mov	r0, #0x80
	add	r3, r2
	lsl	r0, #14
	mov	r2, r6
	str	r3, [r6, #8]
	bl	__Func_447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_120dc
	cmp	r0, #0
	bne	.L5dc
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79374
	bl	OvlFunc_6c0
	mov	r1, #6
	mov	r0, r5
	bl	__Func_c300
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #7
	mov	r0, r5
	bl	__Func_c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r0, #0x98
	bl	__Func_f9080
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
.L5dc:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_518

.thumb_func_start OvlFunc_5ec
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r7, r0
	bl	__Func_916b0
	bl	OvlFunc_4bc
	ldr	r5, =.L66e8
	str	r0, [r5]
	cmp	r0, #0
	beq	.L6a8
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, [r5]
	bl	__Func_92054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r7
	add	r1, #0x55
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
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
	ldr	r3, [r6, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	add	r3, r2
	str	r3, [r7, #0x14]
.L6a8:
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5ec

.thumb_func_start OvlFunc_6c0
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, #4
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6c0

.thumb_func_start OvlFunc_714
	ldr	r0, =.L66ec
	bx	lr
.func_end OvlFunc_714

.thumb_func_start OvlFunc_71c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x88
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
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
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xb
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r6, #0xc
	mov	r7, #0
.L77a:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	mov	r0, r6
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r6
	mov	r1, #1
	bl	__Func_92b08
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #8
	add	r6, #1
	str	r3, [r5, #0xc]
	cmp	r6, #0x11
	bls	.L77a
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	beq	.L7fe
	cmp	r3, #3
	bgt	.L7d4
	cmp	r3, #1
	beq	.L7e8
	cmp	r3, #2
	beq	.L7f8
	b	.L852
.L7d4:
	cmp	r3, #9
	beq	.L810
	cmp	r3, #9
	bgt	.L7e2
	cmp	r3, #4
	beq	.L80a
	b	.L852
.L7e2:
	cmp	r3, #0x5d
	beq	.L804
	b	.L852
.L7e8:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L852
	bl	OvlFunc_8b4
	b	.L852
.L7f8:
	bl	OvlFunc_2360
	b	.L852
.L7fe:
	bl	OvlFunc_38c0
	b	.L852
.L804:
	bl	OvlFunc_38dc
	b	.L852
.L80a:
	bl	OvlFunc_3924
	b	.L852
.L810:
	bl	__Func_916b0
	ldr	r0, =0x345
	bl	__Func_79338
	cmp	r0, #0
	beq	.L822
	mov	r0, #0
	b	.L83c
.L822:
	ldr	r0, =0x346
	bl	__Func_79338
	cmp	r0, #0
	beq	.L830
	mov	r0, #1
	b	.L83c
.L830:
	ldr	r0, =0x347
	bl	__Func_79338
	cmp	r0, #0
	beq	.L844
	mov	r0, #2
.L83c:
	mov	r1, #0x41
	bl	__Func_78588
	b	.L84c
.L844:
	mov	r0, #3
	mov	r1, #0x41
	bl	__Func_78588
.L84c:
	mov	r0, #9
	bl	__Func_91e9c
.L852:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L874
	bl	OvlFunc_4bc
	cmp	r0, #0
	beq	.L874
	bl	__Func_92054
	cmp	r0, #0
	beq	.L874
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L874:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_71c

.thumb_func_start OvlFunc_894
	push	{lr}
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_894

.thumb_func_start OvlFunc_8a8
	push	{lr}
	mov	r2, #0xa
	bl	__Func_92adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_8a8

.thumb_func_start OvlFunc_8b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_1280
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_1280
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_1280
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
	mov	r2, #0
	mov	r8, r2
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	add	r5, #0x23
	ldrb	r2, [r5]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r5]
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #0x91
	mov	r2, #0xa9
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #0x12
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r6, r0
	mov	r5, r6
	mov	r3, r8
	add	r5, #0x55
	strb	r3, [r5]
	mov	r0, #0
	mov	r1, #1
	bl	__Func_92b08
	mov	r2, #0x90
	ldr	r1, =0x2450000
	lsl	r2, #17
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x91
	strb	r3, [r0]
	lsl	r1, #2
	mov	r0, #0x12
	mov	r2, #0xdd
	bl	__Func_92128
	mov	r0, #0
	ldr	r1, =0x245
	mov	r2, #0xab
	bl	__Func_92158
	mov	r0, #0x12
	ldr	r1, =0x212
	mov	r2, #0xd3
	bl	__Func_92128
	mov	r0, #0
	ldr	r1, =0x213
	mov	r2, #0xa1
	bl	__Func_92158
	mov	r1, #0x82
	mov	r0, #0x12
	lsl	r1, #2
	mov	r2, #0xbf
	bl	__Func_92128
	mov	r2, #0x8d
	ldr	r1, =0x209
	mov	r0, #0
	bl	__Func_92158
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x12
	ldr	r1, =0x203
	mov	r2, #0xab
	bl	__Func_92128
	mov	r1, #0x81
	mov	r2, #0x79
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_92158
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #6
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92504
	mov	r3, #0x81
	lsl	r3, #18
	str	r3, [r6, #8]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r6, #0xc]
	mov	r3, #0x94
	lsl	r3, #16
	mov	r7, #0x80
	lsl	r7, #8
	ldr	r2, .La6c	@ 0
	str	r3, [r6, #0x10]
	mov	r3, #3
	strh	r7, [r6, #6]
	mov	r0, #0x98
	strb	r3, [r5]
	mov	r8, r2
	bl	__Func_f9080
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #0xfc
	lsl	r1, #1
	mov	r2, #0x94
	mov	r0, #0
	bl	__Func_92158
	mov	r0, #0xa
	bl	__Func_9163c
	b	.La88

	.align	2, 0
.La6c:
	.word	0
	.pool

.La88:
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r9, r3
	ldr	r3, =0xffe00000
	mov	r2, r9
	str	r3, [r6, #0xc]
	strh	r2, [r6, #6]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__Func_f9080
	mov	r1, #0x83
	mov	r2, #0xbf
	lsl	r1, #2
	mov	r0, #0x12
	bl	__Func_92158
	mov	r0, #0x12
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x12
	ldr	r1, =0x212
	mov	r2, #0xd3
	bl	__Func_92158
	mov	r1, #0x91
	mov	r0, #0x12
	lsl	r1, #2
	mov	r2, #0xdd
	bl	__Func_92158
	mov	r1, #0x91
	mov	r2, #0xa9
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_92128
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	ldr	r2, =0x6666
	strb	r5, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #1
	bl	OvlFunc_1280
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_1280
	mov	r0, #3
	mov	r1, #1
	bl	OvlFunc_1280
	mov	r1, #0xf6
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_9218c
	mov	r0, #1
	ldr	r1, =0x202
	mov	r2, #0xa4
	bl	__Func_9218c
	mov	r1, #0xf6
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x8c
	bl	__Func_9218c
	mov	r2, #0x8c
	mov	r0, #3
	ldr	r1, =0x202
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, r9
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r9
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r9
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r9
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x12
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_923e4
	ldr	r6, =0x4013
	ldr	r0, =0x121
	bl	__Func_f9080
	ldr	r0, =0x2757
	bl	__Func_92b94
	mov	r0, r6
	bl	OvlFunc_894
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #2
	mov	r1, r7
	bl	__Func_92adc
	mov	r1, r7
	mov	r0, #3
	bl	OvlFunc_8a8
	bl	__Func_93554
	mov	r3, r8
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x9999
	ldr	r0, =0x4cccc
	bl	__Func_933d4
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xd0
	lsl	r2, #8
	mov	r11, r2
	mov	r0, #0x14
	mov	r1, r11
	ldr	r5, =0x2014
	bl	OvlFunc_8a8
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x3d
	bl	__Func_f9080
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, r6
	bl	OvlFunc_894
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_8a8
	ldr	r1, =0x105
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_937b8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #6
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #7
	bl	__Func_92adc
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r0, #0x93
	mov	r1, #1
	mov	r2, #0xc2
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x88
	mov	r2, #0xc8
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_921c4
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	bl	OvlFunc_894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x14
	bl	__Func_937b8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r0, #0x13
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0x83
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, r7
	mov	r0, #0x13
	bl	OvlFunc_8a8
	ldr	r2, =0x2013
	mov	r8, r2
	mov	r0, r8
	bl	OvlFunc_894
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	ldr	r1, =0x103
	mov	r2, #0x28
	mov	r0, #0x15
	bl	__Func_937b8
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r10
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r6, #0xa0
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r6, #7
	mov	r0, #0x14
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, r6
	mov	r0, #0x13
	bl	OvlFunc_8a8
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, r8
	bl	OvlFunc_894
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r7
	bl	__Func_92adc
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r5
	mov	r2, #0x28
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_9259c
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x50
	mov	r0, #0x13
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_9259c
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, r8
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, r5
	mov	r1, #0
	bl	__Func_93040
	mov	r1, r10
	mov	r0, #0x15
	bl	OvlFunc_8a8
	mov	r0, #0x15
	b	.Ledc

	.pool_aligned

.Ledc:
	bl	OvlFunc_894
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #6
	bl	OvlFunc_8a8
	mov	r1, #2
	mov	r0, #6
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, r11
	bl	OvlFunc_8a8
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, r8
	bl	OvlFunc_894
	mov	r2, #0
	mov	r0, #6
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x13
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r0, #0x13
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #0x14
	mov	r1, r7
	bl	__Func_92adc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0x93
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x83
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0x28
	ldr	r6, =0x8015
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_9259c
	mov	r0, r6
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, r8
	bl	OvlFunc_894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_9259c
	mov	r0, r6
	bl	OvlFunc_894
	mov	r0, #0x14
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r0, =0xa014
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	ldr	r1, =0x105
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_937b8
	mov	r0, r6
	bl	OvlFunc_894
	ldr	r1, =0x103
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, r8
	bl	OvlFunc_894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x15
	bl	__Func_937b8
	ldr	r5, =0xa014
	mov	r0, r6
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, r8
	bl	OvlFunc_894
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r0, =0xa015
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r0, #6
	ldr	r1, =0x105
	mov	r2, #0x78
	bl	__Func_937b8
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #0x14
	bl	__Func_937b8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r2, #0x28
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, r8
	bl	OvlFunc_894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, r8
	bl	OvlFunc_894
	mov	r0, #6
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_937b8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, r8
	bl	OvlFunc_894
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, r8
	bl	OvlFunc_894
	ldr	r6, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xfc
	mov	r2, #0xa8
	mov	r3, #0
	lsl	r2, #16
	ldr	r1, =0xffe80000
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =0x8001
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, r5
	bl	OvlFunc_894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #3
	bl	OvlFunc_894
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x1002
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #1
	bl	__Func_92560
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r9
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L11d6
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L11d6:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	bl	OvlFunc_894
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r1, r7
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	ldr	r5, =.L5fc4
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8b4

.thumb_func_start OvlFunc_1280
	push	{r5, lr}
	mov	r5, r0
	cmp	r1, #0
	beq	.L12a6
	mov	r1, #0
	bl	__Func_92950
	mov	r0, r5
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	b	.L12ba
.L12a6:
	mov	r1, #0xf
	mov	r0, r5
	bl	__Func_92950
	mov	r0, r5
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L12ba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1280

.thumb_func_start OvlFunc_12c8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__Func_916b0
	bl	__Func_93554
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_933d4
	mov	r0, #0xa6
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r7, #0x80
	mov	r1, #0xaa
	mov	r2, #0xb8
	lsl	r7, #8
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, r7
	bl	OvlFunc_8a8
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	ldr	r0, =0x278e
	bl	__Func_92b94
	ldr	r0, =0x9015
	bl	OvlFunc_894
	bl	__Func_93554
	add	r0, #0x55
	strb	r5, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_933d4
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #9
	mov	r2, r7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #9
	mov	r2, r7
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L138a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L138a:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L139e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L139e:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L13b2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L13b2:
	mov	r1, #0xa4
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_9218c
	mov	r1, #0xaa
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc4
	bl	__Func_9218c
	mov	r1, #0xa3
	mov	r2, #0xcc
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #2
	mov	r1, r7
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, r7
	bl	OvlFunc_8a8
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, r7
	mov	r0, #0x13
	bl	OvlFunc_8a8
	ldr	r2, =0x2013
	mov	r8, r2
	mov	r0, r8
	bl	OvlFunc_894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x15
	bl	__Func_937b8
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x15
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93040
	ldr	r5, =0x2014
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r7
	mov	r0, #0x14
	bl	OvlFunc_8a8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #3
	bl	__Func_9259c
	mov	r0, #3
	bl	OvlFunc_894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #2
	bl	OvlFunc_894
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_8a8
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r1, #0x83
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	mov	r6, #0xc0
	bl	__Func_92adc
	lsl	r6, #6
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, r7
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, r6
	bl	OvlFunc_8a8
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_8a8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, r7
	mov	r2, #0x14
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, r5
	bl	OvlFunc_894
	mov	r0, #0x13
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #6
	bl	__Func_937b8
	mov	r0, #6
	bl	OvlFunc_894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x14
	bl	__Func_937b8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #2
	mov	r0, #6
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #6
	bl	__Func_924d4
	mov	r0, #6
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, r5
	bl	OvlFunc_894
	mov	r0, #6
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x82
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xba
	bl	__Func_921c4
	mov	r0, #0x15
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x8a
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #6
	bl	__Func_921c4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_9259c
	mov	r0, r8
	bl	OvlFunc_894
	mov	r0, #6
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #6
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_92064
	mov	r1, #0x82
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xba
	bl	__Func_921c4
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #6
	mov	r1, #0xf8
	mov	r2, #0xac
	bl	__Func_921c4
	mov	r0, #0x13
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #6
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #6
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	bl	OvlFunc_2334
	mov	r0, #1
	bl	__Func_30f8
	mov	r5, #0
.L16a2:
	mov	r0, #6
	bl	__Func_92054
	bl	OvlFunc_20dc
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L16a2
	ldr	r5, =OvlFunc_2350
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x50
	b	.L1700

	.pool_aligned

.L1700:
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_8a8
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r0, =0x2014
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x50
	mov	r0, #6
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_9259c
	ldr	r3, =0x2013
	mov	r8, r3
	mov	r0, r8
	bl	OvlFunc_894
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #6
	bl	__Func_92950
	mov	r0, #0xa
	bl	__Func_30f8
	bl	OvlFunc_2344
	mov	r1, #2
	mov	r2, #0x28
	mov	r0, #6
	bl	__Func_92560
	mov	r0, #6
	bl	OvlFunc_894
	ldr	r1, =0x103
	mov	r0, #0x14
	mov	r2, #0x14
	bl	__Func_937b8
	ldr	r2, =0x2014
	mov	r10, r2
	mov	r0, r10
	bl	OvlFunc_894
	mov	r1, #2
	mov	r0, #6
	bl	__Func_925cc
	mov	r0, #6
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0xfa
	mov	r2, #0xb0
	mov	r0, #6
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #6
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	ldr	r1, =0x103
	mov	r0, #0x15
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, r8
	bl	OvlFunc_894
	mov	r1, #2
	mov	r0, #6
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	mov	r0, #6
	bl	__Func_92064
	mov	r0, #6
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	mov	r2, #0xac
	mov	r1, #0xf8
	strb	r5, [r0]
	mov	r0, #6
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #6
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #6
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, r8
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #6
	bl	__Func_92548
	mov	r0, #6
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x13
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, r10
	bl	OvlFunc_894
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r2, #0x64
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92c40
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
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
	bne	.L197c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r5, #1
	b	.L199c
.L197c:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_92548
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L199c:
	mov	r0, #0x14
	bl	OvlFunc_894
	cmp	r5, #0
	beq	.L19b6
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L19b6:
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92c40
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
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
	bne	.L1a50
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r5, #1
	b	.L1a70

	.pool_aligned

.L1a50:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_924d4
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1a70:
	mov	r0, #2
	bl	OvlFunc_894
	cmp	r5, #0
	beq	.L1a8a
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1a8a:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x80
	lsl	r2, #8
	mov	r10, r2
	mov	r1, r10
	mov	r0, #3
	bl	OvlFunc_8a8
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r1, r8
	mov	r0, #0x13
	bl	OvlFunc_8a8
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	ldr	r6, =0x2014
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, r10
	mov	r0, #0x14
	bl	OvlFunc_8a8
	mov	r0, r6
	bl	OvlFunc_894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x15
	bl	__Func_93040
	mov	r0, r6
	bl	OvlFunc_894
	mov	r2, #0x3c
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, r10
	mov	r0, #0x13
	bl	OvlFunc_8a8
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	ldr	r0, =0x2013
	bl	OvlFunc_894
	mov	r2, #0x3c
	mov	r0, #0x15
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x90
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_921c4
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x9b
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_921c4
	mov	r1, #0xa4
	mov	r2, #0xba
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_925cc
	ldr	r5, =0x27ba
	mov	r1, #1
	mov	r0, r5
	bl	__Func_1776c
	mov	r1, #0x9b
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_921c4
	mov	r1, r10
	mov	r0, #0x13
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r10
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x90
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_921c4
	mov	r1, #0x83
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_921c4
	add	r5, #1
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, r6
	bl	OvlFunc_894
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r1, r10
	mov	r0, #0x15
	bl	OvlFunc_8a8
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #6
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #6
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x82
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xba
	bl	__Func_921c4
	mov	r1, r8
	mov	r0, #0x15
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x8a
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #6
	bl	__Func_921c4
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, #0x13
	bl	__Func_92054
	mov	r5, #0xa0
	lsl	r5, #7
	strh	r5, [r0, #6]
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r0, #6
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #6
	lsl	r1, #8
	mov	r2, #0x14
	mov	r6, #0xa0
	bl	__Func_92adc
	lsl	r6, #8
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #2
	bl	__Func_92560
	mov	r1, r6
	mov	r0, #3
	bl	OvlFunc_8a8
	mov	r0, #3
	bl	OvlFunc_894
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r8
	mov	r0, #0x13
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x50
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x1d
	bl	__Func_f9080
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, r8
	mov	r0, #0x15
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #6
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #2
	bl	OvlFunc_894
	mov	r1, r8
	mov	r0, #0x13
	bl	OvlFunc_8a8
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r5, #0xd0
	mov	r0, #0x13
	bl	OvlFunc_894
	lsl	r5, #8
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #6
	bl	OvlFunc_8a8
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, r8
	mov	r2, #0x14
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, #0x81
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0
	mov	r0, #6
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #1
	bl	OvlFunc_894
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0x14
	b	.L1e74

	.pool_aligned

.L1e74:
	bl	OvlFunc_894
	mov	r1, r5
	mov	r0, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #6
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, r8
	mov	r0, #0x13
	bl	OvlFunc_8a8
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_93874
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, r6
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r6
	mov	r0, #3
	bl	OvlFunc_8a8
	mov	r0, #3
	bl	OvlFunc_894
	mov	r1, r10
	mov	r0, #1
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #1
	bl	OvlFunc_894
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r10
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r10
	mov	r0, #2
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9259c
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r0, #0x41
	bl	__Func_78698
	ldr	r2, =0x345
	add	r0, r2
	bl	__Func_79358
	mov	r0, #0x41
	bl	__Func_789dc
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	mov	r5, #0xfe
	ldrb	r2, [r0]
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
	mov	r0, #2
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
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #6
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	ldr	r6, =.L6004
	and	r5, r3
	strb	r5, [r0]
	mov	r1, r6
	mov	r0, #0
	bl	__Func_9207c
	mov	r1, r6
	mov	r0, #1
	bl	__Func_9207c
	mov	r1, r6
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r6
	mov	r0, #3
	bl	__Func_9207c
	ldr	r5, =.L603c
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_9207c
	mov	r1, r6
	mov	r0, #0x15
	bl	__Func_9207c
	mov	r0, #6
	mov	r1, r6
	bl	__Func_920fc
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0xbb
	mov	r1, #2
	mov	r0, r5
	bl	__Func_91f90
	mov	r0, r5
	mov	r1, #9
	bl	__Func_91fa8
	mov	r0, #0x62
	mov	r1, #1
	bl	__Func_91eb0
	mov	r0, #0xd4
	lsl	r0, #2
	bl	__Func_79358
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12c8

.thumb_func_start OvlFunc_20dc
	push	{r5, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L20f4
	mov	r1, #7
	bl	__Func_c598
	b	.L20fc
.L20f4:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c598
.L20fc:
	ldr	r3, =iwram_1e40
	mov	r1, #0xf
	ldr	r0, [r3]
	bl	_Func_b50
	cmp	r0, #0
	bne	.L2110
	mov	r0, r5
	bl	OvlFunc_2200
.L2110:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20dc

.thumb_func_start OvlFunc_211c
	push	{r5, r6, lr}
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L213e
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_b50
	mov	r1, r0
	mov	r0, r6
	bl	__Func_c598
.L213e:
	ldr	r0, [r5]
	mov	r1, #0xf
	bl	_Func_b50
	cmp	r0, #0
	bne	.L2150
	mov	r0, r6
	bl	OvlFunc_2200
.L2150:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_211c

.thumb_func_start OvlFunc_215c
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
	ble	.L217c
	mov	r0, r5
	bl	__Func_c0f4
	b	.L21a6
.L217c:
	lsl	r0, #10
	bl	__Func_2322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L21a6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_215c

.thumb_func_start OvlFunc_21ac
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
	ble	.L21cc
	mov	r0, r5
	bl	__Func_c0f4
	b	.L21f8
.L21cc:
	lsl	r0, #10
	bl	__Func_2322
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L21f8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_21ac

.thumb_func_start OvlFunc_2200
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, #0x83
	sub	sp, #8
	mov	r11, r3
	bl	__Func_f9080
	mov	r1, #0x3f
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L2226:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L22d4
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L225c	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L22d4
	b	.L2264

	.align	2, 0
.L225c:
	.word	0
	.pool

.L2264:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_ba30
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_3f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L22cc	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L22d4

	.align	2, 0
.L22cc:
	.word	0xfffffc00
	.pool

.L22d4:
	add	r7, #1
	cmp	r7, #1
	ble	.L2226
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_21ac
	str	r3, [r2, #0x6c]
	ldr	r3, [r6, #0x50]
	ldr	r4, [r2, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r1, #0xc
	and	r1, r3
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	mov	r3, r10
	ldr	r0, [r3, #4]
	ldr	r3, [r6, #0x50]
	ldr	r4, [r0, #0x50]
	ldrb	r1, [r3, #9]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r4, #9]
	and	r2, r1
	orr	r2, r3
	ldr	r3, =OvlFunc_215c
	str	r3, [r0, #0x6c]
	add	r0, #0x23
	mov	r3, #2
	strb	r2, [r4, #9]
	strb	r3, [r0]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2200

.thumb_func_start OvlFunc_2334
	push	{lr}
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_96fb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_2334

.thumb_func_start OvlFunc_2344
	push	{lr}
	bl	__Func_97194
	pop	{r0}
	bx	r0
.func_end OvlFunc_2344

.thumb_func_start OvlFunc_2350
	push	{lr}
	mov	r0, #6
	bl	__Func_92054
	bl	OvlFunc_211c
	pop	{r0}
	bx	r0
.func_end OvlFunc_2350

.thumb_func_start OvlFunc_2360
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x88
	bl	__Func_916b0
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	mov	r0, #0x11
	bl	__Func_10704
	mov	r0, #1
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #8
	ldr	r2, =0
	mov	r8, r3
	mov	r4, r8
	mov	r9, r2
	mov	r1, #0xa4
	mov	r2, #0xa8
	strh	r4, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_92054
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #0xaa
	mov	r2, #0xc4
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #3
	bl	__Func_92054
	mov	r3, r8
	mov	r1, #0xa3
	mov	r2, #0xcc
	b	.L23d4

	.pool_aligned

.L23d4:
	strh	r3, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #6
	bl	__Func_92054
	mov	r4, #0xc0
	lsl	r4, #6
	mov	r10, r4
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r1, #0x86
	mov	r2, #0x9a
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #6
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, r10
	mov	r1, #0x86
	mov	r2, #0xa4
	strh	r3, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	mov	r6, #0xa
	add	r3, #0x64
	strh	r6, [r3]
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r1, #0x93
	mov	r2, #0xd4
	strh	r3, [r7, #6]
	lsl	r2, #16
	mov	r0, #0x14
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, #9
	bl	__Func_924d4
	ldr	r4, =.L6074
	mov	r11, r4
	mov	r1, r11
	mov	r0, #0x14
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x13
	bl	__Func_92054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x64
	mov	r5, #0
	mov	r1, #0x8f
	mov	r2, #0xc0
	strh	r6, [r3]
	lsl	r2, #16
	strh	r5, [r7, #6]
	mov	r0, #0x13
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0x13
	mov	r1, #7
	bl	__Func_924d4
	mov	r1, r11
	mov	r0, #0x13
	bl	__Func_9207c
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_93554
	mov	r2, r9
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r0, #0x98
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r6, #0x80
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x50
	bl	__Func_9163c
	lsl	r6, #6
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	__Func_92560
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r7, #0xa0
	ldr	r0, =0x27cf
	bl	__Func_92b94
	lsl	r7, #8
	ldr	r0, =0x1001
	bl	OvlFunc_894
	mov	r1, r7
	mov	r0, #3
	bl	OvlFunc_8a8
	mov	r0, #3
	bl	OvlFunc_894
	mov	r2, #0
	mov	r0, #1
	mov	r1, r8
	bl	__Func_92adc
	mov	r1, r7
	mov	r0, #2
	bl	OvlFunc_8a8
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_925cc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0x15
	bl	__Func_92064
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x8c
	strb	r3, [r0]
	lsl	r1, #1
	mov	r2, #0xa4
	mov	r0, #0x15
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #2
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #1
	bl	OvlFunc_894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #0x15
	bl	OvlFunc_8a8
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #2
	mov	r0, #3
	bl	__Func_9259c
	mov	r0, #3
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	OvlFunc_894
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, r10
	mov	r0, #0x15
	bl	OvlFunc_8a8
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #2
	bl	__Func_92560
	mov	r0, #2
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_8a8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
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
	mov	r7, #1
	cmp	r0, #0
	beq	.L2650
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r7, #0
.L2650:
	mov	r0, #0x14
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r4, #0xa0
	lsl	r4, #8
	mov	r10, r4
	mov	r0, #3
	mov	r1, r10
	bl	OvlFunc_8a8
	mov	r0, #0x15
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	cmp	r7, #0
	beq	.L26ac
	ldr	r3, =iwram_1ebc
	mov	r0, #0xec
	ldr	r2, [r3]
	lsl	r0, #1
	add	r2, r0
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L26ac:
	mov	r0, #0x14
	bl	__Func_920a0
	mov	r0, #0x13
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #9
	mov	r7, r0
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x1c]
	mov	r0, #0x13
	mov	r8, r2
	bl	__Func_92054
	mov	r3, r8
	mov	r7, r0
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	mov	r1, #0x96
	mov	r2, #0xce
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r6, =0xffff0000
	str	r6, [r0, #0x18]
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r1, #8
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x13
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_92560
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0x13
	bl	__Func_92064
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x94
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0x13
	mov	r2, #0xba
	bl	__Func_921c4
	mov	r0, #0x13
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x92
	mov	r2, #0xba
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_921c4
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r4, #1
	orr	r3, r4
	strb	r3, [r0]
	mov	r0, #0x13
	bl	__Func_92054
	str	r6, [r0, #0x18]
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r1, #5
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #4
	b	.L2860

	.pool_aligned

.L2860:
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_92054
	mov	r2, #0xc0
	lsl	r2, #6
	mov	r7, r0
	mov	r11, r2
	ldr	r0, =0
	mov	r4, r8
	mov	r3, r11
	strh	r3, [r7, #6]
	str	r4, [r7, #0x18]
	mov	r1, #1
	mov	r9, r0
	mov	r6, #0xd0
	mov	r0, #0x14
	bl	__Func_924d4
	lsl	r6, #8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, r6
	bl	OvlFunc_8a8
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92560
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	b	.L2930

	.pool_aligned

.L2930:
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r10
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r10
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, r10
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x80
	ldr	r2, [r7, #0xc]
	lsl	r0, #12
	mov	r8, r0
	ldr	r1, [r7, #8]
	add	r2, r8
	ldr	r3, [r7, #0x10]
	mov	r0, #0x16
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L29f2
	ldr	r6, [r5, #0x50]
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r9
	strb	r2, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, r5
	mov	r2, #0xd
	add	r1, #0x23
	neg	r2, r2
	and	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r6, #9]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r5
	mov	r4, r9
	add	r3, #0x55
	mov	r2, r5
	strb	r4, [r3]
	add	r2, #0x5c
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =0x19999
	str	r3, [r5, #0x30]
	ldr	r3, =0xcccc
	mov	r1, #0xc1
	str	r3, [r5, #0x34]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	str	r0, [sp, #0x28]
	mov	r0, #0xdc
	bl	__Func_1a370
	mov	r3, #0x80
	ldr	r2, [sp, #0x28]
	lsl	r3, #3
	add	r3, r2, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r3
	str	r3, [sp, #0x24]
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
.L29f2:
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_92b08
	mov	r0, #0x16
	bl	__Func_92054
	mov	r6, #0x80
	ldr	r3, [r7, #8]
	lsl	r6, #14
	str	r3, [r0, #8]
	str	r6, [r0, #0xc]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #0x10]
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #3
	strb	r1, [r3]
	ldr	r3, =0x19999
	ldr	r2, =0xcccc
	str	r3, [r0, #0x30]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r2, [r0, #0x34]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	cmp	r5, #0
	beq	.L2a4a
	mov	r3, r5
	add	r3, #0x55
	strb	r1, [r3]
	ldr	r3, =0x9999
	mov	r4, r8
	str	r3, [r5, #0x48]
	mov	r1, #0x9a
	mov	r3, #0xa4
	str	r2, [r5, #0x44]
	str	r4, [r5, #0x28]
	mov	r0, r5
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	bl	__Func_d14c
.L2a4a:
	mov	r1, #0x9a
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_92158
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92b08
	cmp	r5, #0
	beq	.L2afc
	ldr	r0, =0x135
	bl	__Func_f9080
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r1, #0x9d
	mov	r3, #0x89
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	ldr	r0, =0x135
	bl	__Func_f9080
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x92
	ldr	r1, =0x11d0000
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	ldr	r0, =0x135
	bl	__Func_f9080
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r1, #0x96
	mov	r3, #0x9a
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Func_d14c
	mov	r0, r5
	bl	__Func_ca6c
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #0
	str	r0, [r5, #8]
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x10]
	mov	r0, r5
	bl	OvlFunc_5688
.L2afc:
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
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
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_92b08
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #2
	bl	OvlFunc_894
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #6
	mov	r1, r11
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, r11
	bl	OvlFunc_8a8
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #6
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
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
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_937b8
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2c70
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r7, #1
	b	.L2c8a

	.pool_aligned

.L2c70:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #4
	bl	__Func_924d4
	mov	r7, #0
.L2c8a:
	mov	r0, #1
	bl	OvlFunc_894
	cmp	r7, #0
	beq	.L2ca4
	ldr	r3, =iwram_1ebc
	mov	r4, #0xec
	ldr	r2, [r3]
	lsl	r4, #1
	add	r2, r4
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L2ca4:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #7
	mov	r0, #0x18
	bl	__Func_92950
	mov	r0, #0x18
	bl	__Func_92054
	mov	r4, #0
	mov	r7, r0
	ldr	r0, =0xffff0000
	mov	r8, r4
	ldr	r2, =0x1999
	mov	r3, r7
	str	r0, [r7, #0x1c]
	mov	r9, r0
	add	r3, #0x55
	mov	r0, r8
	str	r2, [r7, #0x18]
	mov	r10, r2
	strb	r0, [r3]
	mov	r6, #0x98
	mov	r3, #0x80
	mov	r2, #0x9e
	lsl	r2, #16
	lsl	r3, #15
	lsl	r6, #17
	str	r3, [r7, #0xc]
	str	r2, [r7, #0x10]
	str	r6, [r7, #8]
	mov	r0, #0x19
	mov	r11, r2
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #7
	mov	r0, #0x19
	bl	__Func_92950
	mov	r0, #0x19
	bl	__Func_92054
	mov	r3, r9
	mov	r7, r0
	str	r3, [r7, #0x1c]
	mov	r3, r7
	mov	r4, r10
	mov	r0, r8
	add	r3, #0x55
	str	r4, [r7, #0x18]
	strb	r0, [r3]
	mov	r3, #0xc0
	lsl	r3, #15
	mov	r2, r11
	mov	r1, #0x80
	str	r3, [r7, #0xc]
	str	r6, [r7, #8]
	str	r2, [r7, #0x10]
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
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
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #6
	mov	r1, #0
	bl	__Func_92adc
	ldr	r6, =.L6088
	mov	r0, #0x18
	mov	r1, r6
	bl	__Func_9207c
	mov	r1, r6
	mov	r0, #0x19
	bl	__Func_9207c
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_91200
	mov	r0, #0x10
	bl	__Func_91254
	mov	r0, #0x14
	bl	__Func_30f8
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x18
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_36d0
	bl	__Func_41d8
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	ldr	r6, =.L60ac
	mov	r0, #0x18
	mov	r1, r6
	bl	__Func_9207c
	mov	r1, r6
	mov	r0, #0x19
	bl	__Func_9207c
	mov	r0, #0x78
	bl	__Func_30f8
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_30f8
	mov	r0, #0x3f
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_12330
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92adc
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	mov	r2, #0x28
	mov	r0, #0x13
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #6
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r6, #0x80
	mov	r0, #0x14
	lsl	r6, #8
	bl	OvlFunc_894
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r6
	mov	r0, #3
	bl	OvlFunc_8a8
	mov	r0, #3
	bl	OvlFunc_894
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_8a8
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r2, #0x14
	mov	r0, #0x13
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_9259c
	mov	r0, #0x13
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r4, #0xc0
	lsl	r4, #7
	mov	r11, r4
	mov	r1, r11
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #0xd0
	mov	r0, #0x14
	lsl	r1, #8
	bl	OvlFunc_8a8
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	ldr	r0, =0x2013
	mov	r8, r0
	bl	OvlFunc_894
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, r6
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r6
	mov	r0, #1
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa0
	lsl	r2, #8
	mov	r9, r2
	mov	r1, r9
	mov	r0, #3
	bl	OvlFunc_8a8
	ldr	r1, =0x101
	mov	r2, #0x50
	mov	r0, #0x15
	bl	__Func_937b8
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, r9
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r11
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0x28
	b	.L3094

	.pool_aligned

.L3094:
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, r6
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r6
	mov	r0, #1
	mov	r2, #0
	bl	__Func_92adc
	mov	r7, #0xb0
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__Func_92adc
	lsl	r7, #8
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #3
	bl	__Func_92adc
	mov	r1, r7
	mov	r0, #0x14
	bl	OvlFunc_8a8
	ldr	r3, =0x2014
	mov	r10, r3
	mov	r0, r10
	bl	OvlFunc_894
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r1, r7
	mov	r0, #0x15
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, r8
	bl	OvlFunc_894
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, r7
	mov	r0, #0x14
	bl	OvlFunc_8a8
	mov	r0, r10
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, r7
	mov	r0, #0x13
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x13
	bl	__Func_937b8
	mov	r0, r8
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	bl	OvlFunc_8a8
	ldr	r1, =0x101
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_937b8
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r2, #0x14
	mov	r1, r7
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, r8
	bl	OvlFunc_894
	mov	r2, #0x50
	ldr	r1, =0x103
	mov	r0, #0x15
	bl	__Func_937b8
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_92548
	mov	r0, r8
	bl	OvlFunc_894
	mov	r2, #0x14
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_9259c
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, r8
	bl	OvlFunc_894
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0x28
	mov	r0, r10
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	bl	OvlFunc_894
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
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, r9
	mov	r0, #2
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r9
	mov	r0, #3
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_92548
	mov	r1, r7
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_92adc
	ldr	r0, =0xa015
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #6
	lsl	r1, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x15
	lsl	r1, #9
	bl	__Func_92064
	ldr	r7, =.L622c
	mov	r0, #0x15
	mov	r1, r7
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r7
	mov	r0, #6
	bl	__Func_9207c
	mov	r0, #1
	mov	r1, r11
	bl	OvlFunc_8a8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #1
	bl	OvlFunc_894
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r1, #1
	ldr	r0, =0x40250d
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_8a8
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r0, #0
	mov	r1, r11
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, r6
	mov	r0, #3
	bl	__Func_92adc
	bl	OvlFunc_35c4
	mov	r0, #0x14
	mov	r1, #7
	bl	__Func_92950
	mov	r1, #7
	mov	r0, #0x13
	bl	__Func_92950
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_92950
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_92950
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_35c4
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92560
	mov	r0, #3
	bl	OvlFunc_894
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_8a8
	mov	r0, #0x13
	bl	OvlFunc_894
	bl	OvlFunc_35c4
	mov	r0, #0x13
	bl	__Func_92054
	add	r4, sp, #0x60
	mov	r3, #7
	mov	r10, r0
	str	r3, [r4, #4]
	mov	r0, #0x80
	ldr	r3, =OvlFunc_3a0
	mov	r2, #0x54
	lsl	r0, #9
	add	r2, sp
	mov	r9, r2
	str	r3, [r4, #0x24]
	str	r0, [r4, #8]
	str	r0, [r4, #0xc]
	mov	r8, r4
	mov	r7, #0
	mov	r6, r9
.L33bc:
	lsl	r3, r7, #12
	mov	r0, r3
	str	r3, [sp, #0x20]
	bl	__Func_231c
	mov	r3, #0
	str	r3, [r6, #4]
	str	r0, [r6]
	ldr	r0, [sp, #0x20]
	bl	__Func_2322
	ldr	r3, [r6]
	lsl	r2, r3, #1
	add	r3, r2
	lsl	r0, #1
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r4, r10
	ldr	r4, [r4, #8]
	str	r4, [sp, #0x1c]
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090000
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	ldr	r0, [sp, #0x1c]
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r7, #0x10
	bls	.L33bc
	mov	r0, #0xd4
	bl	__Func_f9080
	mov	r0, #6
	bl	__Func_30f8
	bl	OvlFunc_35c4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r10, r0
	add	r0, sp, #0x2c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_3a0
	str	r3, [r0, #0x24]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	mov	r6, r9
.L3434:
	lsl	r2, r7, #12
	mov	r0, r2
	str	r2, [sp, #0x18]
	bl	__Func_231c
	mov	r3, #0
	str	r3, [r6, #4]
	str	r0, [r6]
	ldr	r0, [sp, #0x18]
	bl	__Func_2322
	ldr	r3, [r6]
	lsl	r2, r3, #1
	add	r3, r2
	lsl	r0, #1
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r4, r10
	ldr	r4, [r4, #8]
	str	r4, [sp, #0x14]
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090000
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	ldr	r0, [sp, #0x14]
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r7, #0x10
	bls	.L3434
	mov	r0, #0xd4
	bl	__Func_f9080
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #2
	bl	__Func_92560
	mov	r0, #0x36
	bl	__Func_f9080
	mov	r0, #2
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0x14
	bl	OvlFunc_894
	bl	OvlFunc_35c4
	mov	r0, #0x14
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0x13
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r6, #0xfe
	mov	r3, r6
	b	.L34f8

	.pool_aligned

.L34f8:
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xfe
	and	r2, r3
	mov	r1, #0x93
	str	r6, [sp, #0x10]
	lsl	r1, #1
	strb	r2, [r0]
	mov	r0, #0x14
	mov	r2, #0xc4
	bl	__Func_92128
	mov	r1, #0x93
	mov	r2, #0xc4
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_92128
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_37c4
	bl	__Func_41d8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_79358
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	ldr	r0, =0x235
	bl	__Func_79358
	bl	OvlFunc_35c4
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_35c4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =ewram_240
	ldr	r4, =0x22b
	mov	r2, #3
	add	r3, r4
	strb	r2, [r3]
	ldr	r6, =0xbb
	mov	r1, #3
	mov	r0, r6
	bl	__Func_91f90
	mov	r0, r6
	mov	r1, #9
	bl	__Func_91fa8
	mov	r1, #0
	mov	r0, #0x62
	bl	__Func_91eb0
	bl	__Func_78144
	ldr	r0, =0x351
	bl	__Func_79358
	add	sp, #0x88
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2360

.thumb_func_start OvlFunc_35c4
	push	{lr}
	mov	r0, #0xbb
	bl	__Func_f9080
	mov	r1, #1
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #4
	bl	__Func_30f8
	mov	r1, #1
	ldr	r0, =0x40250d
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	pop	{r0}
	bx	r0
.func_end OvlFunc_35c4

.thumb_func_start OvlFunc_3600
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x18
	bl	__Func_92054
	mov	r6, r5
	add	r6, #0x64
	ldrh	r1, [r6]
	mov	r8, r1
	mov	r10, r0
	mov	r0, r8
	bl	__Func_231c
	ldr	r3, [r5, #0x30]
	add	r3, #3
	mov	r2, r3
	mul	r2, r0
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r5, #8]
	bl	__Func_2322
	mov	r2, r10
	ldr	r3, [r2, #0x10]
	lsl	r0, #1
	ldr	r2, [r5, #8]
	add	r3, r0
	str	r3, [r5, #0x10]
	str	r2, [r5, #0x38]
	str	r3, [r5, #0x40]
	ldr	r1, =0xfffff800
	ldrh	r3, [r6]
	add	r3, r1
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3600

.thumb_func_start OvlFunc_3660
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0x17
	bl	__Func_92054
	mov	r5, r7
	add	r5, #0x64
	ldrh	r6, [r5]
	mov	r8, r0
	mov	r0, r6
	bl	__Func_231c
	mov	r1, #0x62
	add	r1, r7
	ldrb	r2, [r1]
	ldr	r3, [r7, #0x30]
	add	r3, r2
	add	r3, #6
	mov	r2, r3
	mul	r2, r0
	mov	r10, r1
	mov	r1, r8
	ldr	r3, [r1, #8]
	add	r3, r2
	str	r3, [r7, #8]
	mov	r0, r6
	bl	__Func_2322
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #4
	mov	r2, r3
	mul	r2, r0
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	add	r3, r2
	ldr	r2, [r7, #8]
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x38]
	str	r3, [r7, #0x40]
	ldr	r2, =0xfffff800
	ldrh	r3, [r5]
	add	r3, r2
	strh	r3, [r5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3660

.thumb_func_start OvlFunc_36d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x236
	bl	__Func_79338
	cmp	r0, #0
	bne	.L36ee
	ldr	r3, =iwram_1e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_Func_b50
	cmp	r0, #0
	bne	.L37b8
.L36ee:
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x236
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3714
	bl	__Func_4458
	mov	r2, r0
	lsl	r2, #8
	b	.L371c

	.pool_aligned

.L3714:
	bl	__Func_4458
	mov	r2, r0
	lsl	r2, #6
.L371c:
	ldr	r3, [r5, #0xc]
	lsr	r2, #16
	lsl	r2, #16
	add	r2, r3
	ldr	r3, =0xffe40000
	mov	r0, #0x8e
	add	r2, r3
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	lsl	r0, #1
	bl	__Func_c150
	mov	r7, r0
	cmp	r7, #0
	beq	.L37b8
	ldr	r1, =.L616c
	mov	r0, r7
	ldr	r6, [r7, #0x50]
	bl	__Func_c2d8
	mov	r1, #1
	mov	r0, r7
	bl	__Func_929d8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	bl	__Func_4458
	ldr	r3, =0xffff000
	mov	r2, r7
	add	r2, #0x64
	and	r3, r0
	strh	r3, [r2]
	mov	r3, r7
	add	r3, #0x66
	strh	r5, [r3]
	ldr	r3, =OvlFunc_3600
	ldr	r1, .L37a4	@ 0
	str	r3, [r7, #0x6c]
	mov	r8, r1
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #16
	sub	r0, r3
	lsr	r0, #20
	bl	__Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r6
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	b	.L37b8

	.align	2, 0
.L37a4:
	.word	0
	.pool

.L37b8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_36d0

.thumb_func_start OvlFunc_37c4
	push	{r5, r6, lr}
	mov	r0, #0x14
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x13
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	mov	r6, r0
	cmp	r3, r2
	bne	.L37e2
	ldr	r2, [r5, #0x3c]
.L37e2:
	mov	r2, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L37fa
	ldr	r2, [r6, #0x3c]
	cmp	r2, r3
	bne	.L37fa
	ldr	r3, [r6, #0x40]
	mov	r1, #1
	cmp	r3, r2
	beq	.L37fc
.L37fa:
	mov	r1, #0
.L37fc:
	cmp	r1, #0
	beq	.L38ae
	mov	r3, #0
	strh	r3, [r5, #6]
	ldr	r0, =0x235
	strh	r3, [r6, #6]
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3846
	mov	r0, #0x14
	mov	r1, #7
	bl	__Func_92950
	mov	r0, #0x13
	mov	r1, #7
	bl	__Func_92950
	mov	r2, #0xa0
	ldr	r3, [r5, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.L3874
	mov	r2, #0x80
	lsl	r2, #2
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	b	.L3874
.L3846:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L3864
	mov	r0, #0x14
	mov	r1, #0xf
	bl	__Func_92950
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92950
	b	.L3874
.L3864:
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0x13
	mov	r1, #0xf
	bl	__Func_92950
.L3874:
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L38ae
	mov	r2, #0x9c
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	bge	.L3898
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
.L3898:
	mov	r2, #0xb6
	ldr	r3, [r5, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L38ae
	ldr	r2, =0xfffff000
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	add	r3, r2
	str	r3, [r6, #0x10]
.L38ae:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_37c4

.thumb_func_start OvlFunc_38c0
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_3bc8
	bl	OvlFunc_3e9c
	bl	OvlFunc_423c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_38c0

.thumb_func_start OvlFunc_38dc
	push	{lr}
	bl	__Func_916b0
	bl	OvlFunc_48d8
	bl	OvlFunc_4b28
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #1
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_38dc

.thumb_func_start OvlFunc_3924
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r10, r0
	bl	__Func_916b0
	bl	__Func_93554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0x17
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x66
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_10424
	mov	r3, #0x10
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__Func_10424
	mov	r2, #0x16
	str	r2, [sp]
	mov	r8, r2
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	mov	r0, #0x13
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xc0
	mov	r2, #0xee
	lsl	r2, #16
	mov	r3, #0
	ldr	r1, =0xffc00000
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x14
	bl	__Func_92924
	mov	r0, #0x13
	bl	__Func_92924
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0xad
	mov	r2, r10
	lsl	r3, #17
	str	r3, [r2, #8]
	mov	r3, #0xcd
	lsl	r3, #16
	str	r3, [r2, #0x10]
	mov	r5, #0x80
	mov	r3, #0xc0
	lsl	r3, #7
	lsl	r5, #14
	str	r5, [r2, #0xc]
	strh	r3, [r2, #6]
	mov	r0, r10
	bl	OvlFunc_5688
	mov	r1, #0x12
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #1
	bl	__Func_92054
	mov	r3, #0xb2
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r3, #0xc0
	lsl	r3, #16
	str	r3, [r0, #0x10]
	mov	r3, #0xa0
	lsl	r3, #8
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	bl	OvlFunc_5688
	mov	r1, #0x12
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #2
	bl	__Func_92054
	mov	r3, #0xb4
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r6, #0xde
	mov	r3, #0x80
	lsl	r3, #6
	lsl	r6, #16
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	str	r6, [r0, #0x10]
	bl	OvlFunc_5688
	mov	r1, #0x12
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #3
	bl	__Func_92054
	mov	r3, #0xa7
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	str	r6, [r0, #0x10]
	bl	OvlFunc_5688
	mov	r1, #0xc4
	mov	r2, #0xdc
	lsl	r2, #16
	mov	r0, #0x15
	lsl	r1, #16
	bl	__Func_923e4
	mov	r0, #0x15
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #0xbc
	mov	r2, #0x9e
	lsl	r2, #17
	mov	r0, #6
	lsl	r1, #16
	bl	__Func_923e4
	mov	r1, #5
	mov	r0, #6
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, =0xfff00000
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_5688
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_5688
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #0x80
	ldr	r3, [r0, #8]
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_5688
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_5688
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x17
	bl	__Func_92054
	mov	r3, #4
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_92950
	mov	r0, #0x17
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r0, #0xc]
	lsl	r1, #4
	ldr	r0, =OvlFunc_5a28
	bl	__Func_41d8
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	bl	OvlFunc_4bec
	ldr	r0, =0x9a7
	bl	__Func_79358
	mov	r0, #2
	bl	__Func_91e9c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3924

.thumb_func_start OvlFunc_3bc8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x8d
	sub	sp, #8
	bl	__Func_f9080
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r1, #0xa
	mov	r2, #4
	mov	r0, #0x11
	bl	__Func_10704
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0xa0
	lsl	r5, #8
	ldr	r2, =0
	strh	r5, [r0, #6]
	mov	r0, #1
	mov	r9, r2
	bl	__Func_92054
	mov	r1, #0xa4
	mov	r2, #0xa8
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #0xaa
	mov	r2, #0xc4
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #0xa3
	mov	r2, #0xcc
	b	.L3c3c

	.pool_aligned

.L3c3c:
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x15
	bl	__Func_92054
	mov	r5, #0xd0
	lsl	r5, #8
	mov	r1, #0xc8
	mov	r2, #0xd8
	strh	r5, [r0, #6]
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x15
	bl	__Func_923e4
	mov	r0, #6
	bl	__Func_92054
	mov	r1, #0xc8
	mov	r2, #0xd8
	strh	r5, [r0, #6]
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #6
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_92054
	mov	r5, #0xc0
	lsl	r5, #6
	mov	r1, #0x9b
	mov	r2, #0x9e
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0x92
	mov	r2, #0x9e
	lsl	r2, #16
	strh	r5, [r0, #6]
	lsl	r1, #17
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x18
	mov	r1, #7
	bl	__Func_92950
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_92b08
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r3, =0xffff0000
	ldr	r6, =0x3333
	str	r3, [r0, #0x1c]
	mov	r8, r3
	mov	r3, r0
	mov	r2, r9
	add	r3, #0x55
	str	r6, [r0, #0x18]
	strb	r2, [r3]
	mov	r3, #0x98
	lsl	r3, #17
	mov	r10, r3
	str	r3, [r0, #8]
	mov	r5, #0xc0
	mov	r3, #0x80
	lsl	r3, #10
	lsl	r5, #15
	str	r3, [r0, #0xc]
	str	r5, [r0, #0x10]
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x19
	mov	r1, #7
	bl	__Func_92950
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_92b08
	mov	r0, #0x19
	bl	__Func_92054
	mov	r2, r8
	mov	r3, r0
	str	r2, [r0, #0x1c]
	add	r3, #0x55
	mov	r2, r9
	str	r6, [r0, #0x18]
	strb	r2, [r3]
	mov	r3, r10
	str	r3, [r0, #8]
	mov	r3, #0x88
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r0, #0xc]
	str	r5, [r0, #0x10]
	lsl	r1, #4
	ldr	r0, =OvlFunc_36d0
	bl	__Func_41d8
	bl	__Func_93554
	mov	r2, r9
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	mov	r0, r10
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, r0
	mov	r2, r1
	bl	__Func_12330
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x2809
	bl	__Func_92b94
	mov	r0, #0x14
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_93040
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_92054
	mov	r3, #0x9a
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r6, #0x98
	mov	r3, #0xe0
	lsl	r6, #16
	lsl	r3, #13
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #0xa
	mov	r0, #0x14
	mov	r8, r3
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #0x99
	mov	r2, r8
	lsl	r3, #17
	str	r2, [r5, #0xc]
	str	r3, [r5, #8]
	str	r6, [r5, #0x10]
	mov	r1, #0xb
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0xa8
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #0xc
	str	r6, [r5, #0x10]
	mov	r0, #0x14
	bl	__Func_924d4
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_92924
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x93
	mov	r5, r0
	mov	r2, r8
	lsl	r3, #17
	str	r2, [r5, #0xc]
	str	r3, [r5, #8]
	mov	r1, #8
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, #0x96
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #9
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0x88
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #0xa
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0x13
	bl	__Func_92924
	mov	r0, #0xa0
	bl	__Func_9163c
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3bc8

.thumb_func_start OvlFunc_3e9c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_8a8
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3f08
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92548
	mov	r5, #1
	b	.L3f26
.L3f08:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3f26:
	mov	r0, #2
	bl	OvlFunc_894
	cmp	r5, #0
	beq	.L3f40
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3f40:
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r6, #0x80
	bl	__Func_92064
	ldr	r5, =0x1001
	lsl	r6, #6
	mov	r2, #0xae
	mov	r0, #1
	ldr	r1, =0x141
	bl	__Func_921c4
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r1, r10
	mov	r0, #3
	bl	OvlFunc_8a8
	mov	r3, #0x80
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, r6
	mov	r2, #0x14
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	ldr	r0, =0x8001
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, r5
	bl	OvlFunc_894
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r1, #4
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	OvlFunc_894
	mov	r1, r8
	mov	r0, #1
	mov	r2, #0x50
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_8a8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x3c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92560
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_8a8
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #4
	mov	r2, #0x28
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #1
	bl	OvlFunc_894
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x15
	mov	r1, #0xc8
	mov	r2, #0xbc
	bl	__Func_92128
	mov	r2, #0xcc
	mov	r0, #6
	mov	r1, #0xc8
	bl	__Func_92128
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_933d4
	mov	r0, #0xfc
	mov	r2, #0xbe
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x17
	bl	__Func_f9080
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_93874
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #6
	bl	__Func_93874
	ldr	r5, =0x2003
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_9259c
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	add	r6, #2
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r6
	bl	OvlFunc_894
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_8a8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #1
	bl	OvlFunc_894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_93040
	mov	r0, r5
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_93874
	mov	r0, r6
	bl	OvlFunc_894
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_937b8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3e9c

.thumb_func_start OvlFunc_423c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x13
	sub	sp, #8
	bl	__Func_f9080
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
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
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xa
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r5, =0x1999
	str	r5, [r0, #0x18]
	mov	r0, #0x19
	bl	__Func_92054
	str	r5, [r0, #0x18]
	ldr	r5, =.L6088
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_9207c
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_91200
	mov	r0, #0x10
	bl	__Func_91254
	mov	r0, #0x14
	bl	__Func_30f8
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x18
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r0, #0x8d
	bl	__Func_f9080
	ldr	r0, =0x236
	bl	__Func_79358
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r3, =0xffa00000
	str	r3, [r0, #0xc]
	mov	r0, #0x19
	bl	__Func_92054
	ldr	r3, =0xffc00000
	mov	r1, #7
	str	r3, [r0, #0xc]
	mov	r0, #0x1a
	bl	__Func_92950
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1a
	bl	__Func_92054
	ldr	r1, =0xffff0000
	mov	r5, r0
	str	r1, [r5, #0x1c]
	mov	r0, #0x18
	mov	r10, r1
	bl	__Func_92054
	ldr	r3, [r0, #0x18]
	mov	r2, #0
	mov	r9, r2
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r9
	strb	r1, [r3]
	mov	r2, #0x98
	ldr	r3, =0xffe00000
	mov	r6, #0xc0
	lsl	r2, #17
	lsl	r6, #15
	str	r2, [r5, #8]
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #7
	mov	r0, #0x1b
	mov	r8, r2
	bl	__Func_92950
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r3, r10
	mov	r5, r0
	str	r3, [r5, #0x1c]
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r3, [r0, #0x18]
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r9
	mov	r2, r8
	strb	r1, [r3]
	mov	r3, r9
	str	r2, [r5, #8]
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #7
	mov	r0, #0x1c
	bl	__Func_92950
	mov	r0, #0x1c
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1c
	bl	__Func_92054
	mov	r1, r10
	mov	r5, r0
	str	r1, [r5, #0x1c]
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r3, [r0, #0x18]
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r9
	strb	r2, [r3]
	mov	r3, r8
	str	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r5, #0xc]
	mov	r2, #0x17
	mov	r3, #0x12
	str	r6, [r5, #0x10]
	mov	r0, #0x66
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_10424
	mov	r3, #0x10
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__Func_10424
	mov	r1, #0x16
	str	r1, [sp]
	mov	r8, r1
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	mov	r0, #0x13
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, =0xfff00000
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_5688
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_5688
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #0x80
	ldr	r3, [r0, #8]
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_5688
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_5688
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_5688
	mov	r0, #1
	bl	__Func_92054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_5688
	mov	r0, #2
	bl	__Func_92054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_5688
	mov	r0, #3
	bl	__Func_92054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_5688
	mov	r1, #0xc4
	mov	r2, #0xdc
	lsl	r2, #16
	mov	r0, #0x15
	lsl	r1, #16
	bl	__Func_923e4
	mov	r0, #0x15
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #0xbc
	mov	r2, #0x9e
	lsl	r2, #17
	mov	r0, #6
	lsl	r1, #16
	bl	__Func_923e4
	mov	r1, #5
	mov	r0, #6
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	ldr	r5, =.L60d0
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1a
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1b
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1c
	bl	__Func_9207c
	mov	r0, #0x78
	bl	__Func_30f8
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x18
	bl	__Func_92054
	ldr	r3, =0x51e
	ldr	r5, =.L60f4
	str	r3, [r0, #0x1c]
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1a
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1b
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1c
	bl	__Func_920fc
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r1, #0xf
	mov	r0, #0x18
	bl	__Func_92950
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L6130
	mov	r0, #0x18
	bl	__Func_920fc
	ldr	r0, =OvlFunc_36d0
	bl	__Func_4278
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #2
	bl	__Func_92560
	mov	r0, #2
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #1
	bl	OvlFunc_894
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xa3
	mov	r2, #0xdc
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #3
	bl	OvlFunc_894
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r9
	add	r3, #0x62
	strb	r1, [r3]
	b	.L4784

	.pool_aligned

.L4784:
	mov	r6, #1
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r5, #0xa0
	lsl	r5, #8
	str	r3, [r2, #0x4c]
	ldr	r3, =0
	strh	r5, [r2, #6]
	mov	r0, #1
	mov	r8, r3
	bl	__Func_92054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #2
	bl	__Func_92054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #3
	b	.L47d4

	.pool_aligned

.L47d4:
	bl	__Func_92054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #0x15
	bl	__Func_92054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r0, #6
	str	r3, [r2, #0x4c]
	bl	__Func_92054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r0, #0x17
	str	r3, [r2, #0x4c]
	bl	__Func_92054
	mov	r2, r8
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x17
	mov	r1, #7
	bl	__Func_92950
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_92b08
	ldr	r3, =.L6764
	mov	r1, r9
	ldr	r2, =.L6760
	str	r1, [r3]
	mov	r3, #0xf0
	mov	r1, #0xc8
	str	r3, [r2]
	ldr	r0, =OvlFunc_56a0
	lsl	r1, #4
	bl	__Func_41d8
.L485a:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x237
	bl	__Func_79338
	cmp	r0, #0
	beq	.L485a
	ldr	r0, =0x101
	bl	__Func_79358
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_79358
	bl	__Func_8ba38
	ldr	r0, =2
	mov	r1, #0x5b
	bl	__Func_91e3c
	ldr	r2, =0x7fff
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_423c

.thumb_func_start OvlFunc_48d8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x14
	sub	sp, #8
	bl	__Func_92924
	mov	r0, #0x13
	bl	__Func_92924
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	mov	r3, #0x12
	mov	r2, #0x17
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x66
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_10424
	mov	r3, #0x10
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__Func_10424
	mov	r2, #0x16
	str	r2, [sp]
	mov	r8, r2
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #7
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	bl	__Func_8bb2c
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x8a
	bl	__Func_f9080
	mov	r0, #0
	mov	r1, #0x13
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #0x12
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #0x12
	bl	__Func_924d4
	mov	r1, #0x12
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xad
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r2, #0x80
	mov	r3, #0xcd
	lsl	r2, #14
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	mov	r10, r2
	bl	OvlFunc_5688
	mov	r3, r5
	mov	r6, #0
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x28]
	mov	r0, #1
	mov	r8, r3
	bl	__Func_92054
	mov	r3, #0xb2
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xc0
	mov	r2, r10
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	bl	OvlFunc_5688
	mov	r3, r5
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, r8
	str	r3, [r5, #0x28]
	mov	r0, #2
	bl	__Func_92054
	mov	r3, #0xb4
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xde
	mov	r2, r10
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	mov	r9, r3
	bl	OvlFunc_5688
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x63
	strb	r6, [r3]
	mov	r0, #3
	str	r2, [r5, #0x28]
	bl	__Func_92054
	mov	r3, #0xa7
	mov	r5, r0
	lsl	r3, #17
	mov	r2, r9
	str	r3, [r5, #8]
	mov	r3, r10
	str	r2, [r5, #0x10]
	str	r3, [r5, #0xc]
	bl	OvlFunc_5688
	mov	r3, r5
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, r8
	str	r3, [r5, #0x28]
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x62
	strb	r6, [r0]
	mov	r0, #6
	bl	__Func_92054
	add	r0, #0x62
	strb	r6, [r0]
	mov	r0, #0x17
	bl	__Func_92054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_92950
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_5a28
	bl	__Func_41d8
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__Func_91dc8
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_91220
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_48d8

.thumb_func_start OvlFunc_4b28
	push	{lr}
	ldr	r0, =0x2829
	bl	__Func_92b94
	mov	r0, #0x15
	bl	OvlFunc_894
	mov	r0, #0x3e
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_12330
	ldr	r0, =0x4cccc
	ldr	r1, =0x9999
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xc0
	mov	r2, #0xee
	mov	r3, #1
	lsl	r2, #16
	ldr	r1, =0xffc00000
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x28
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #6
	bl	__Func_925cc
	mov	r0, #6
	bl	OvlFunc_894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x50
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #6
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #6
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #6
	bl	OvlFunc_894
	pop	{r0}
	bx	r0
.func_end OvlFunc_4b28

.thumb_func_start OvlFunc_4bec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	ldr	r0, =0x282e
	sub	sp, #8
	mov	r8, r1
	bl	__Func_92b94
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_93874
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #6
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #6
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #6
	mov	r0, #6
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_9259c
	mov	r2, #0x28
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #6
	mov	r1, #7
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #6
	bl	__Func_93040
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #6
	mov	r1, #2
	bl	__Func_925cc
	ldr	r1, =.L6324
	mov	r0, #6
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_9259c
	mov	r0, #6
	bl	__Func_920e8
	mov	r0, #0xa0
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #5
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #0x15
	bl	__Func_92064
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	mov	r5, #0x80
	ldr	r3, =OvlFunc_400
	mov	r7, r0
	lsl	r5, #8
	str	r3, [r7, #0x6c]
	mov	r2, #0xed
	strh	r5, [r7, #6]
	mov	r0, #0x15
	mov	r1, #0xb8
	bl	__Func_92158
	ldr	r1, =.L6360
	mov	r0, #0x15
	bl	__Func_920fc
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0
	bl	OvlFunc_894
	mov	r0, #0x48
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, r5
	lsl	r0, #11
	bl	__Func_933d4
	mov	r0, #0xab
	mov	r1, #0x80
	mov	r2, #0xd4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0x3c
	mov	r1, #6
	mov	r0, #0
	bl	__Func_92560
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L6074
	mov	r0, #0
	bl	__Func_9207c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	bl	OvlFunc_894
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #3
	bl	OvlFunc_894
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0x3c
	mov	r0, #1
	mov	r1, #6
	bl	__Func_92560
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0x28
	mov	r1, #6
	mov	r0, #2
	bl	__Func_92560
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #6
	mov	r2, #0x3c
	bl	__Func_92560
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_92adc
	mov	r5, #0xc0
	mov	r1, #4
	mov	r0, #2
	bl	__Func_924d4
	lsl	r5, #7
	mov	r0, #2
	bl	OvlFunc_894
	mov	r0, #3
	mov	r1, r5
	bl	OvlFunc_8a8
	mov	r6, #0x80
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	lsl	r6, #7
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_8a8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #3
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x14d
	mov	r2, #0xc2
	bl	__Func_921c4
	mov	r0, #1
	ldr	r1, =0x14d
	mov	r2, #0xce
	bl	__Func_921c4
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0
	mov	r2, #0x50
	mov	r0, #1
	bl	__Func_93040
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r2, #0
	mov	r1, #4
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L5046
	b	.L5010

	.pool_aligned

.L5010:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #2
	bl	OvlFunc_894
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #3
	bl	OvlFunc_894
	mov	r2, #1
	mov	r8, r2
	b	.L507e
.L5046:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #2
	bl	OvlFunc_894
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #3
	bl	OvlFunc_894
.L507e:
	mov	r1, r8
	cmp	r1, #0
	beq	.L5094
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
.L5094:
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_8a8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #2
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #3
	bl	OvlFunc_894
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r1, #0x12
	mov	r2, #0x17
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r8, r2
	mov	r9, r1
	mov	r0, #0x6e
	mov	r1, #0x69
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_10424
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x5c
	mov	r1, #0x56
	mov	r2, #0x53
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_10424
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x4b
	mov	r1, #0x1c
	mov	r2, #0x4b
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_10424
	mov	r2, #0x14
	mov	r3, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r2
	mov	r0, #0x5c
	mov	r1, #0x56
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__Func_10424
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r1, #0x5c
	mov	r2, #0x13
	mov	r3, #0x44
	mov	r0, #0x13
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #0
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #0x10]
	ldr	r6, =0xffe00000
	mov	r1, #0
	add	r3, r6
	mov	r10, r1
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_5688
	mov	r0, #1
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	ldr	r5, =0xfffc0000
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r6
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x66
	strh	r1, [r3]
	bl	OvlFunc_5688
	mov	r0, #2
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r6
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_5688
	mov	r0, #3
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r1, =0xffee0000
	ldr	r3, [r7, #0x10]
	add	r3, r1
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_5688
	mov	r0, #0x17
	bl	__Func_92054
	mov	r3, #0xe0
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r1, #0x80
	mov	r0, #0xa9
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
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
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #2
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0
	mov	r0, #3
	mov	r1, #6
	bl	__Func_92560
	ldr	r5, =.L63c0
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #1
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_9207c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r3, #0xa
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x6a
	mov	r2, #0x12
	mov	r3, #0xe
	bl	__Func_10704
	mov	r3, r9
	mov	r1, r8
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x69
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_10424
	mov	r3, r11
	mov	r2, #0x10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, #0xb
	mov	r1, #0x56
	mov	r3, #0x44
	mov	r0, #0x5c
	bl	__Func_10424
	mov	r0, #0
	bl	__Func_92054
	mov	r7, r0
	ldr	r5, =0xfff00000
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_5688
	mov	r0, #1
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_5688
	mov	r0, #2
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_5688
	mov	r0, #3
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_5688
	mov	r0, #8
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	mov	r5, #0x80
	lsl	r5, #13
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_5688
	mov	r0, #9
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_5688
	mov	r0, #0xa
	bl	__Func_92054
	mov	r7, r0
	ldr	r1, =0xfff00000
	ldr	r3, [r7, #8]
	add	r3, r1
	str	r3, [r7, #8]
	bl	OvlFunc_5688
	mov	r0, #0xb
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	ldr	r2, =0xfff00000
	add	r3, r2
	str	r3, [r7, #8]
	bl	OvlFunc_5688
	mov	r0, #0xa1
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	b	.L5458

	.pool_aligned

.L5458:
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #2
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #3
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #2
	bl	__Func_920a0
	mov	r0, #3
	bl	__Func_920a0
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r2, #0x78
	mov	r0, #2
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #2
	bl	OvlFunc_894
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #3
	bl	OvlFunc_894
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #2
	bl	__Func_92560
	mov	r0, #2
	bl	OvlFunc_894
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	OvlFunc_8a8
	mov	r0, #1
	bl	OvlFunc_894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_92064
	ldr	r5, =.L639c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_9207c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x88
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r1, #0x88
	lsl	r1, #1
	mov	r2, #0xfe
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r5, =iwram_1ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0x10
	str	r1, [r3]
	bl	__Func_91df4
	sub	r5, #0x30
	bl	__Func_91e20
	mov	r0, #0x50
	bl	__Func_9163c
	bl	__Func_c5b4
	ldr	r3, [r5]
	ldr	r1, =0x12f4
	add	r2, r3, r1
	mov	r1, r10
	strh	r1, [r2]
	ldr	r2, =0x12f6
	add	r3, r2
	strh	r1, [r3]
	mov	r2, #0
	mov	r1, #0
	ldr	r0, =0x284f
	bl	__Func_19aa0
	bl	__Func_c5fc
	mov	r0, #0x50
	bl	__Func_9163c
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4bec

.thumb_func_start OvlFunc_5688
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x38]
	str	r3, [r0, #0x3c]
	str	r3, [r0, #0x40]
	mov	r3, #0
	str	r3, [r0, #0x24]
	str	r3, [r0, #0x28]
	str	r3, [r0, #0x2c]
	add	r0, #0x64
	strh	r3, [r0]
	bx	lr
.func_end OvlFunc_5688

.thumb_func_start OvlFunc_56a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r5, =.L6764
	ldr	r3, [r5]
	mov	r6, r0
	mov	r7, #0
	cmp	r3, #0x30
	bls	.L56bc
	b	.L58dc
.L56bc:
	ldr	r2, =.L56c4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L56c4:
	.word	.L5788
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L57a2
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L57b4
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L57c6
	.word	.L57ee
	.word	.L584e
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L58dc
	.word	.L589a
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58d0
.L5788:
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	ldr	r0, =0x2063ff
	b	.L57a6
.L57a2:
	mov	r0, #0x80
	lsl	r0, #9
.L57a6:
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	b	.L58dc
.L57b4:
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	b	.L58dc
.L57c6:
	mov	r3, #0x98
	lsl	r3, #17
	str	r3, [r6, #8]
	ldr	r3, =0xfe980000
	str	r3, [r6, #0xc]
	mov	r3, #0xa4
	lsl	r3, #16
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r0, r6
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	bl	OvlFunc_5688
	ldr	r1, =.L62d0
	mov	r0, #0x17
	bl	__Func_9207c
	b	.L58dc
.L57ee:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	ldr	r1, [r6, #0xc]
	cmp	r1, #0
	ble	.L5876
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_91200
	mov	r0, #0x10
	bl	__Func_91254
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #1
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #6
	bl	__Func_92054
	add	r0, #0x62
	strb	r5, [r0]
	b	.L58dc
.L584e:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	mov	r3, #0xa0
	ldr	r1, [r6, #0xc]
	lsl	r3, #14
	cmp	r1, r3
	ble	.L5876
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	b	.L58dc
.L5876:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L588a
	mov	r0, #0xf6
	bl	__Func_f9080
	ldr	r1, [r6, #0xc]
.L588a:
	mov	r2, #0x90
	lsl	r2, #10
	add	r3, r1, r2
	mov	r7, #1
	str	r3, [r6, #0xc]
	b	.L58dc
.L5896:
	mov	r7, #1
	b	.L58dc
.L589a:
	mov	r0, #0xbb
	bl	__Func_f9080
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_91200
	mov	r0, #0xc
	bl	__Func_91254
	b	.L58dc

	.pool_aligned

.L58d0:
	mov	r0, #0x17
	bl	__Func_920a0
	ldr	r0, =0x237
	bl	__Func_79358
.L58dc:
	cmp	r7, #0
	beq	.L599c
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	ldr	r2, [r6, #0xc]
	lsr	r3, #16
	lsl	r3, #16
	sub	r2, r3
	ldr	r3, =0xfff80000
	mov	r0, #0x8e
	add	r2, r3
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	lsl	r0, #1
	bl	__Func_c150
	mov	r7, r0
	cmp	r7, #0
	beq	.L599c
	ldr	r1, [r7, #0x50]
	mov	r10, r1
	ldr	r1, =.L61cc
	bl	__Func_c2d8
	mov	r1, #1
	mov	r0, r7
	bl	__Func_929d8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	bl	__Func_4458
	ldr	r3, =0xffff000
	mov	r2, r7
	add	r2, #0x64
	and	r3, r0
	strh	r3, [r2]
	mov	r3, r7
	ldr	r1, .L5970	@ 0
	add	r3, #0x66
	strh	r5, [r3]
	mov	r8, r1
	bl	__Func_4458
	mov	r3, r7
	lsr	r0, #13
	add	r3, #0x62
	strb	r0, [r3]
	ldr	r3, =OvlFunc_3660
	str	r3, [r7, #0x6c]
	bl	__Func_4458
	mov	r3, r0
	lsl	r0, r3, #16
	sub	r0, r3
	lsr	r0, #20
	bl	__Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	str	r3, [r7, #0x30]
	mov	r2, #0x32
	ldrsh	r3, [r6, r2]
	str	r3, [r7, #0x30]
	mov	r3, r10
	add	r3, #0x26
	mov	r1, r8
	b	.L5988

	.align	2, 0
.L5970:
	.word	0
	.pool

.L5988:
	strb	r1, [r3]
	mov	r3, r10
	ldrb	r2, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r1, r10
	strb	r3, [r1, #9]
.L599c:
	ldr	r2, =.L6764
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	mov	r0, #0
	bl	__Func_92054
	bl	OvlFunc_59f0
	mov	r0, #1
	bl	__Func_92054
	bl	OvlFunc_59f0
	mov	r0, #2
	bl	__Func_92054
	bl	OvlFunc_59f0
	mov	r0, #3
	bl	__Func_92054
	bl	OvlFunc_59f0
	mov	r0, #0x15
	bl	__Func_92054
	bl	OvlFunc_59f0
	mov	r0, #6
	bl	__Func_92054
	bl	OvlFunc_59f0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_56a0

.thumb_func_start OvlFunc_59f0
	push	{r5, lr}
	mov	r3, r0
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L5a20
	mov	r5, r0
	add	r5, #0x62
	ldrb	r2, [r5]
	ldr	r3, [r0, #0x4c]
	lsr	r2, #2
	lsl	r2, #16
	add	r3, r2
	str	r3, [r0, #0xc]
	bl	OvlFunc_5688
	ldrb	r3, [r5]
	mov	r2, r3
	cmp	r2, #0
	beq	.L5a20
	cmp	r2, #0x1f
	bhi	.L5a20
	add	r3, #1
	strb	r3, [r5]
.L5a20:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_59f0

.thumb_func_start OvlFunc_5a28
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r3, =iwram_1e70
	mov	r10, r0
	ldr	r5, [r3]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	lsl	r3, #16
	add	r5, #0xe8
	mov	r8, r3
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	cmp	r3, #0x81
	bgt	.L5aac
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L5a7e
	mov	r1, #0x98
	mov	r2, #0xa4
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x17
	bl	__Func_923e4
	mov	r0, #0x17
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #9
	b	.L5a94
.L5a7e:
	mov	r1, #0x98
	mov	r2, #0xab
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x17
	bl	__Func_923e4
	mov	r0, #0x17
	bl	__Func_92054
	ldr	r5, =0x14ccc
.L5a94:
	str	r5, [r0, #0x18]
	mov	r0, #0x17
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	b	.L5ab6

	.pool_aligned

.L5aac:
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L5ab6:
	mov	r1, r10
	cmp	r1, #0
	beq	.L5b80
	ldr	r3, =iwram_1e40
	ldr	r6, [r3]
	mov	r3, #0xf
	and	r6, r3
	cmp	r6, #0
	bne	.L5b80
	mov	r0, r10
	ldr	r2, [r0, #0xc]
	ldr	r1, [r1, #8]
	mov	r3, #0x80
	lsl	r3, #12
	add	r2, r8
	add	r1, r3
	add	r2, r3
	ldr	r3, [r0, #0x10]
	mov	r0, #0x8e
	lsl	r0, #1
	bl	__Func_c150
	mov	r1, #0xc0
	lsl	r1, #11
	mov	r7, r0
	mov	r0, r8
	bl	_Func_af0
	mov	r8, r0
	mov	r1, r8
	lsl	r1, #16
	mov	r8, r1
	cmp	r7, #0
	beq	.L5b80
	ldr	r1, =.L6734
	mov	r0, r7
	ldr	r5, [r7, #0x50]
	bl	__Func_c2d8
	mov	r1, #5
	mov	r0, r7
	bl	__Func_929d8
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	bl	__Func_4458
	ldr	r3, =0xffff000
	mov	r2, r7
	and	r3, r0
	add	r2, #0x64
	ldr	r0, .L5b5c	@ 0
	strh	r3, [r2]
	mov	r3, r7
	mov	r9, r0
	add	r3, #0x66
	ldr	r0, =0xfffff
	strh	r6, [r3]
	mov	r2, r8
	ldr	r3, =OvlFunc_5b90
	mov	r1, r10
	and	r0, r2
	str	r1, [r7, #0x68]
	str	r3, [r7, #0x6c]
	asr	r0, #4
	bl	__Func_2322
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r5
	add	r3, #0x26
	mov	r0, r9
	strb	r0, [r3]
	mov	r1, r10
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	b	.L5b74

	.align	2, 0
.L5b5c:
	.word	0
	.pool

.L5b74:
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r5, #9]
.L5b80:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5a28

.thumb_func_start OvlFunc_5b90
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	ldrh	r2, [r6]
	ldr	r1, [r5, #0x68]
	mov	r8, r2
	mov	r0, r8
	mov	r10, r1
	bl	__Func_231c
	ldr	r3, [r5, #0x30]
	add	r3, #0x1c
	mov	r2, r3
	mul	r2, r0
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r5, #8]
	bl	__Func_2322
	mov	r2, #0xa4
	ldr	r3, [r5, #8]
	lsl	r2, #16
	lsl	r0, #4
	add	r0, r2
	str	r0, [r5, #0x10]
	str	r3, [r5, #0x38]
	str	r0, [r5, #0x40]
	ldr	r1, =0xfffffe00
	ldrh	r3, [r6]
	add	r3, r1
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5b90

	.section .data

.L5fc4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x5fc4, (0x6004-0x5fc4)
.L6004:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6004, (0x603c-0x6004)
.L603c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x603c, (0x6074-0x603c)
.L6074:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6074, (0x6088-0x6074)
.L6088:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6088, (0x60ac-0x6088)
.L60ac:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60ac, (0x60d0-0x60ac)
.L60d0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60d0, (0x60f4-0x60d0)
.L60f4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60f4, (0x6130-0x60f4)
.L6130:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6130, (0x616c-0x6130)
.L616c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x616c, (0x61cc-0x616c)
.L61cc:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x61cc, (0x622c-0x61cc)
.L622c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x622c, (0x62d0-0x622c)
.L62d0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x62d0, (0x6324-0x62d0)
.L6324:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6324, (0x6360-0x6324)
.L6360:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6360, (0x639c-0x6360)
.L639c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x639c, (0x63c0-0x639c)
.L63c0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x63c0, (0x63d4-0x63c0)
.L63d4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x63d4, (0x6464-0x63d4)
.L6464:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6464, (0x6478-0x6464)
.L6478:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6478, (0x66e8-0x6478)
.L66e8:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x66e8, (0x66ec-0x66e8)
.L66ec:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x66ec, (0x6734-0x66ec)
.L6734:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6734

	.section .bss

	.lcomm	.L6760, 4
	.lcomm	.L6764, 4
