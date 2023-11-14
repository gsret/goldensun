	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_b8228
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r8, r1
	bl	Func_b7dd0
	mov	r7, r0
	mov	r0, r5
	ldr	r6, [r7]
	bl	_Func_77394
	mov	r2, #0x94
	lsl	r2, #1
	add	r0, r2
	ldrb	r3, [r0]
	cmp	r3, #0x94
	beq	.Lb829c
	ldr	r3, =.Lc59a4
	mov	r2, r8
	lsl	r5, r2, #2
	ldr	r3, [r3, r5]
	str	r3, [r6, #0x34]
	ldr	r3, =.Lc59c4
	ldr	r3, [r3, r5]
	str	r3, [r6, #0x30]
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	beq	.Lb8266
	cmp	r2, #4
	ble	.Lb826c
.Lb8266:
	ldr	r3, =.Lc59e4
	ldr	r3, [r3, r5]
	str	r3, [r6, #0x28]
.Lb826c:
	ldr	r3, =0x9999
	mov	r2, r6
	str	r3, [r6, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r6, #0x44]
	mov	r0, r6
	strb	r3, [r2]
	bl	_Func_c4ac
	ldr	r3, =.Lc5a04
	ldr	r2, [r7, #0xc]
	ldr	r3, [r3, r5]
	mov	r1, #0x64
	mov	r0, r3
	mul	r0, r2
	bl	Func_af0_from_thumb
	ldr	r3, [r7, #0x10]
	mov	r1, r0
	mov	r2, #0
	mov	r0, r6
	bl	_Func_d14c
.Lb829c:
	mov	r0, r6
	mov	r1, #5
	bl	_Func_c300
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b8228

.thumb_func_start Func_b82c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r9, r2
	mov	r11, r3
	bl	Func_b7dd0
	mov	r5, r0
	mov	r0, r6
	bl	Func_b7dd0
	ldr	r7, [r5]
	ldr	r6, [r0]
	mov	r2, #0x4b
	mov	r8, r2
	ldr	r3, [r6, #8]
	ldr	r2, [r7, #8]
	sub	r3, r2
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0x64
	mov	r10, r2
	bl	Func_af0_from_thumb
	ldr	r3, [r6, #0x10]
	ldr	r6, [r7, #0x10]
	sub	r3, r6
	mov	r5, r0
	mov	r1, #0x64
	mov	r0, r8
	mul	r0, r3
	bl	Func_af0_from_thumb
	mov	r3, r10
	add	r3, r5
	add	r6, r0
	asr	r5, #8
	asr	r0, #8
	mov	r2, r0
	mul	r2, r0
	mov	r8, r3
	mov	r3, r5
	mul	r3, r5
	add	r3, r2
	mov	r0, r3
	ldr	r2, =Func_948
	bl	_call_via_r2
	mov	r1, r9
	lsl	r0, #8
	bl	Func_af0_from_thumb
	mov	r3, r7
	add	r3, #0x58
	mov	r1, #1
	str	r0, [r7, #0x34]
	str	r0, [r7, #0x30]
	strb	r1, [r3]
	sub	r3, #3
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lb8352
	mov	r2, r11
	str	r2, [r7, #0x28]
.Lb8352:
	mov	r3, r11
	str	r3, [r7, #0x28]
	ldr	r3, =0xab85
	str	r3, [r7, #0x48]
	mov	r3, r7
	add	r3, #0x5a
	strb	r1, [r3]
	mov	r0, r7
	bl	_Func_c4ac
	mov	r0, r7
	mov	r1, r8
	mov	r2, #0
	mov	r3, r6
	bl	_Func_d14c
	mov	r0, r7
	mov	r1, #2
	bl	_Func_c300
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b82c4

.thumb_func_start Func_b8394
	push	{r5, lr}
	bl	Func_b7dd0
	ldr	r5, [r0]
	mov	r0, r5
	bl	_Func_c4ac
	mov	r0, r5
	mov	r1, #2
	bl	_Func_c300
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_b8394

.thumb_func_start Func_b83b0
	bx	lr
.func_end Func_b83b0

.thumb_func_start Func_b83b4
	push	{r5, r6, lr}
	mov	r5, r1
	sub	sp, #0xc
	bl	Func_b7dd0
	ldr	r6, [r0]
	mov	r0, r5
	bl	Func_b7dd0
	mov	r4, #0x80
	ldr	r2, [r6, #0x38]
	lsl	r4, #24
	ldr	r0, [r0]
	cmp	r2, r4
	bne	.Lb83d4
	ldr	r2, [r6, #8]
.Lb83d4:
	ldr	r5, [r6, #0x40]
	cmp	r5, r4
	bne	.Lb83dc
	ldr	r5, [r6, #0x10]
.Lb83dc:
	ldr	r3, [r0, #0x38]
	cmp	r3, r4
	bne	.Lb83e4
	ldr	r3, [r0, #8]
.Lb83e4:
	ldr	r1, [r0, #0x40]
	cmp	r1, r4
	bne	.Lb83ec
	ldr	r1, [r0, #0x10]
.Lb83ec:
	add	r3, r2, r3
	lsr	r2, r3, #31
	add	r3, r2
	mov	r0, sp
	asr	r3, #1
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r0, #4]
	add	r3, r5, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r1, #0x80
	str	r3, [r0, #8]
	lsl	r1, #5
	bl	Func_b83b0
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b83b4

.thumb_func_start Func_b8418
	push	{r5, lr}
	bl	Func_b7dd0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lb8450
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.Lb8450
	ldr	r0, [r0, #0x50]
	ldr	r1, =0x11b
	bl	_Func_b8ac
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb844a
	mov	r1, #1
	bl	_Func_b9f4
	mov	r3, #3
	strb	r3, [r5, #6]
.Lb844a:
	mov	r0, #0xa
	bl	Func_30f8
.Lb8450:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_b8418

.thumb_func_start Func_b845c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0xc
	mov	r8, r1
	mov	r10, r0
	bl	Func_b7dd0
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	Func_b7f70
	add	r5, #8
	mov	r6, r0
	bl	Func_b7ed8
	mov	r1, r8
	mov	r0, r5
	bl	Func_5268
	ldr	r5, =Func_888
	ldr	r1, [r6, #0x18]
	.call_via r5
	mov	r6, r0
	mov	r0, r10
	bl	Func_b8530
	mov	r1, r0
	asr	r1, #16
	mov	r0, r6
	.call_via r5
	mov	r2, r8
	ldr	r3, [r2, #4]
	sub	r3, r0
	str	r3, [r2, #4]
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b845c

.thumb_func_start Func_b84c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r8, r0
	bl	Func_b7dd0
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	Func_b7f70
	add	r5, #8
	mov	r6, r0
	bl	Func_b7ed8
	mov	r1, r7
	mov	r0, r5
	bl	Func_5268
	ldr	r5, =Func_888
	ldr	r1, [r6, #0x18]
	.call_via r5
	mov	r6, r0
	mov	r0, r8
	bl	_Func_77394
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_c23c0
	cmp	r0, #0
	beq	.Lb850e
	mov	r0, r6
	mov	r1, #0x18
	b	.Lb8512
.Lb850e:
	mov	r0, r6
	mov	r1, #0x30
.Lb8512:
	.call_via r5
	ldr	r3, [r7, #4]
	sub	r3, r0
	str	r3, [r7, #4]
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b84c0

.thumb_func_start Func_b8530
	push	{r5, lr}
	mov	r5, r0
	bl	_Func_77394
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_c2454
	lsl	r0, #24
	lsr	r3, r0, #8
	cmp	r3, #0
	bne	.Lb856a
	mov	r0, r5
	bl	_Func_77394
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_c23c0
	mov	r3, #0xc0
	lsl	r3, #13
	cmp	r0, #0
	bne	.Lb856a
	mov	r3, #0xc0
	lsl	r3, #14
.Lb856a:
	mov	r0, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_b8530

.thumb_func_start Func_b8574
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x3c
	add	r2, sp, #0x10
	mov	r1, #0
	mov	r10, r2
	str	r0, [sp, #0xc]
	mov	r9, r1
	mov	r0, #1
	mov	r1, r10
	bl	Func_b6b40
	mov	r7, #0
	mov	r8, r0
.Lb859a:
	mov	r0, r7
	add	r7, #1
	bl	_Func_77394
	cmp	r7, #4
	bne	.Lb859a
	mov	r7, #0
	cmp	r7, r8
	bge	.Lb85e2
	ldr	r6, [sp, #0xc]
	mov	r1, #0
	mov	r2, r10
.Lb85b2:
	ldrh	r5, [r2]
	add	r2, #2
	mov	r0, r5
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	_Func_77394
	mov	r3, r0
	add	r3, #0x40
	ldrh	r3, [r3]
	ldr	r1, [sp, #4]
	strh	r3, [r6, #4]
	mov	r3, #0x80
	strh	r3, [r6, #0xa]
	add	r7, #1
	mov	r3, #1
	strh	r5, [r6]
	strh	r1, [r6, #6]
	strh	r1, [r6, #8]
	add	r9, r3
	add	r6, #0x10
	ldr	r2, [sp]
	cmp	r7, r8
	blt	.Lb85b2
.Lb85e2:
	mov	r1, r10
	mov	r0, #2
	bl	Func_b6b40
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	lsl	r3, r1, #4
	mov	r5, r0
	mov	r1, #0
	mov	r0, #1
	add	r6, r2, r3
	bl	Func_b6b40
	str	r0, [sp, #8]
	cmp	r5, #0
	ble	.Lb865c
	mov	r3, #0
	mov	r11, r3
	mov	r8, r10
	mov	r7, r5
.Lb860a:
	mov	r1, r8
	ldrh	r5, [r1]
	mov	r2, #2
	mov	r0, r5
	add	r8, r2
	bl	_Func_77394
	strh	r5, [r6]
	mov	r5, r0
	add	r5, #0x40
	ldrh	r3, [r5]
	lsr	r3, #1
	strh	r3, [r6, #4]
	cmp	r3, #0
	beq	.Lb863a
	bl	Func_4458
	ldrh	r3, [r5]
	mov	r2, r3
	mul	r2, r0
	ldrh	r3, [r6, #4]
	lsr	r2, #16
	add	r3, r2
	strh	r3, [r6, #4]
.Lb863a:
	mov	r3, r11
	mov	r1, r11
	strh	r3, [r6, #6]
	strh	r1, [r6, #8]
	bl	Func_4458
	ldr	r2, [sp, #8]
	mov	r3, r2
	mul	r3, r0
	lsr	r3, #16
	strh	r3, [r6, #0xa]
	sub	r7, #1
	mov	r3, #1
	add	r9, r3
	add	r6, #0x10
	cmp	r7, #0
	bne	.Lb860a
.Lb865c:
	mov	r7, r9
	sub	r7, #2
	cmp	r7, #0
	ble	.Lb86ce
	mov	r1, #1
	neg	r1, r1
	add	r1, r9
	mov	r8, r1
	ldr	r2, [sp, #0xc]
	lsl	r1, #4
	mov	r14, r1
	add	r2, r14
	mov	r10, r2
.Lb8676:
	mov	r3, #0
	mov	r6, r8
	mov	r12, r3
	cmp	r6, #0
	ble	.Lb86c2
	ldr	r5, [sp, #0xc]
	mov	r4, r10
	sub	r4, #0x10
	add	r5, r14
.Lb8688:
	mov	r1, #0x14
	ldrsh	r2, [r4, r1]
	mov	r1, #4
	ldrsh	r3, [r4, r1]
	cmp	r2, r3
	ble	.Lb86b8
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	add	r1, sp, #0x2c
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	mov	r1, r5
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r0, sp, #0x2c
	mov	r1, r4
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #1
	add	r12, r2
.Lb86b8:
	sub	r6, #1
	sub	r4, #0x10
	sub	r5, #0x10
	cmp	r6, #0
	bgt	.Lb8688
.Lb86c2:
	mov	r3, r12
	cmp	r3, #0
	beq	.Lb86ce
	sub	r7, #1
	cmp	r7, #0
	bgt	.Lb8676
.Lb86ce:
	mov	r0, r9
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b8574

.thumb_func_start Func_b86ec
	push	{lr}
	ldr	r3, =iwram_1e80
	ldr	r0, =iwram_1ae8
	ldr	r1, [r3]
	add	r3, #0x80
	ldr	r4, [r3]
	mov	r2, #0x80
	ldr	r3, [r0]
	lsl	r2, #2
	and	r3, r2
	sub	sp, #4
	cmp	r3, #0
	beq	.Lb870c
	ldrh	r3, [r1, #0x36]
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb870c:
	ldr	r3, [r0]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb8720
	ldrh	r3, [r1, #0x36]
	ldr	r2, =0xfffffe00
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb8720:
	ldr	r3, [r4, #0x14]
	cmp	r3, #0
	bne	.Lb873a
	mov	r1, #0xf0
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r1, #15
	str	r3, [sp]
	mov	r0, r1
	mov	r2, #0
	mov	r3, #0
	bl	Func_c0a24
.Lb873a:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_b86ec

.thumb_func_start Func_b874c
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.Lb8766
	mov	r0, #1
	neg	r0, r0
	b	.Lb87f6
.Lb8766:
	mov	r0, r7
	bl	Func_b8f08
	ldr	r3, =iwram_1f00
	ldr	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	strh	r0, [r7, #0xa]
	ldr	r1, =0xffffe000
	cmp	r3, #4
	bgt	.Lb8780
	mov	r1, #0x80
	lsl	r1, #6
.Lb8780:
	mov	r3, #0x3c
	str	r1, [r2]
	str	r3, [r2, #4]
	bl	_Func_198dc
	mov	r2, #6
	ldrsh	r3, [r7, r2]
	cmp	r3, #2
	beq	.Lb87ca
	cmp	r3, #2
	bgt	.Lb87a0
	cmp	r3, #0
	beq	.Lb87d8
	cmp	r3, #1
	beq	.Lb87ea
	b	.Lb87d8
.Lb87a0:
	cmp	r3, #3
	beq	.Lb87bc
	cmp	r3, #0x63
	bne	.Lb87d8
	ldr	r0, =0x843
	bl	_Func_175a0
	mov	r0, r7
	bl	Func_b8824
	cmp	r0, #0
	beq	.Lb87f0
	mov	r0, #1
	b	.Lb87f6
.Lb87bc:
	mov	r0, #0x2d
	bl	Func_30f8
	mov	r0, r7
	bl	Func_b8888
	b	.Lb87f0
.Lb87ca:
	mov	r0, #0x2d
	bl	Func_30f8
	mov	r0, r7
	bl	Func_b8c1c
	b	.Lb87f0
.Lb87d8:
	ldr	r3, =iwram_1f00
	ldr	r6, [r3]
	mov	r5, #0
	str	r5, [r6, #0x14]
	mov	r0, r7
	bl	Func_b8c1c
	str	r5, [r6, #0x14]
	b	.Lb87f0
.Lb87ea:
	mov	r0, r7
	bl	Func_b88d0
.Lb87f0:
	bl	_Func_16758
	mov	r0, #0
.Lb87f6:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b874c

.thumb_func_start Func_b8808
	push	{lr}
	cmp	r0, #7
	bhi	.Lb8812
	mov	r0, #0
	b	.Lb8820
.Lb8812:
	mov	r3, r0
	sub	r3, #0x80
	mov	r0, #0
	cmp	r3, #5
	bls	.Lb8820
	mov	r0, #1
	neg	r0, r0
.Lb8820:
	pop	{r1}
	bx	r1
.func_end Func_b8808

.thumb_func_start Func_b8824
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	bl	Func_4458
	lsl	r0, #4
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lb886e
	mov	r5, sp
	mov	r0, #1
	mov	r1, r5
	bl	Func_b6b40
	mov	r6, r0
	mov	r7, #0
	cmp	r6, #0
	beq	.Lb8864
	mov	r8, r5
	mov	r5, #0
.Lb884e:
	mov	r2, r8
	ldrsh	r0, [r5, r2]
	bl	Func_b8064
	add	r7, #1
	mov	r0, #8
	bl	Func_30f8
	add	r5, #2
	cmp	r7, r6
	bne	.Lb884e
.Lb8864:
	mov	r0, #0x16
	bl	Func_30f8
	mov	r0, #1
	b	.Lb8876
.Lb886e:
	ldr	r0, =0x844
	bl	_Func_175a0
	mov	r0, #0
.Lb8876:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b8824

.thumb_func_start Func_b8888
	push	{r5, r6, lr}
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	mov	r0, r5
	bl	_Func_77394
	mov	r6, r0
	mov	r0, r5
	bl	Func_b8808
	cmp	r0, #0
	bge	.Lb88a6
	mov	r0, #1
	neg	r0, r0
	b	.Lb88c4
.Lb88a6:
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	mov	r0, #0
	cmp	r3, #0
	ble	.Lb88c4
	bl	_Func_198dc
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x816
	bl	_Func_175a0
	mov	r0, #0
.Lb88c4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b8888

.thumb_func_start Func_b88d0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x80
	str	r0, [sp, #0xc]
	ldr	r1, [sp, #0xc]
	mov	r2, #0
	ldrsh	r1, [r1, r2]
	mov	r0, #0
	mov	r9, r0
	mov	r0, r1
	str	r1, [sp, #8]
	bl	Func_b8808
	cmp	r0, #0
	blt	.Lb890a
	ldr	r2, [sp, #0xc]
	mov	r3, #0xa
	ldrsh	r2, [r2, r3]
	mov	r0, r2
	str	r2, [sp, #4]
	bl	Func_b8808
	cmp	r0, #0
	bge	.Lb8910
.Lb890a:
	mov	r0, #1
	neg	r0, r0
	b	.Lb8b36
.Lb8910:
	ldr	r3, =iwram_1f00
	ldr	r1, [sp, #0xc]
	ldr	r2, [r3]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	mov	r1, #0xa0
	lsl	r1, #7
	cmp	r3, #4
	bgt	.Lb8926
	mov	r1, #0x80
	lsl	r1, #6
.Lb8926:
	mov	r3, #0x3c
	str	r1, [r2]
	str	r3, [r2, #4]
	mov	r0, #0xa
	bl	Func_30f8
	bl	Func_4458
	ldr	r0, [sp, #8]
	bl	Func_b7dd0
	ldr	r2, [sp, #4]
	ldr	r6, [r0]
	cmp	r2, #7
	bhi	.Lb895c
	add	r3, sp, #0x64
	mov	r10, r3
	mov	r0, #2
	mov	r1, r10
	bl	Func_b6b40
	mov	r11, r0
	mov	r0, #0x80
	str	r0, [sp]
	b	.Lb896c

	.pool_aligned

.Lb895c:
	add	r1, sp, #0x64
	mov	r0, #1
	mov	r10, r1
	bl	Func_b6b40
	mov	r2, #0
	str	r2, [sp]
	mov	r11, r0
.Lb896c:
	mov	r3, r11
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb898c
.Lb8974:
	ldr	r0, [sp]
	ldr	r1, [sp, #8]
	add	r3, r5, r0
	cmp	r3, r1
	bne	.Lb8986
	mov	r0, r6
	mov	r1, #3
	bl	_Func_c300
.Lb8986:
	add	r5, #1
	cmp	r5, r11
	bne	.Lb8974
.Lb898c:
	mov	r0, #0x1e
	bl	Func_30f8
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lb89bc	@ 0x3f40
	strh	r3, [r2]
	mov	r2, r11
	mov	r5, #0
	cmp	r2, #0
	beq	.Lb89b0
.Lb89a0:
	ldr	r3, [sp]
	mov	r1, #1
	add	r0, r5, r3
	add	r5, #1
	bl	Func_c0f98
	cmp	r5, r11
	bne	.Lb89a0
.Lb89b0:
	ldr	r0, =REG_BLDALPHA
	ldr	r7, .Lb89c0	@ 0x10
	ldr	r6, .Lb89c4	@ 0x1000
	mov	r5, #0
	mov	r8, r0
	b	.Lb89d0

	.align	2, 0
.Lb89bc:
	.word	0x3f40
.Lb89c0:
	.word	0x10
.Lb89c4:
	.word	0x1000
	.pool

.Lb89d0:
	sub	r3, r7, r5
	orr	r3, r6
	mov	r1, r8
	strh	r3, [r1]
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x10
	bne	.Lb89d0
	mov	r0, #9
	bl	_Func_1f200
	ldr	r2, [sp, #4]
	cmp	r2, #0x7f
	ble	.Lb8a2a
	mov	r0, #2
	mov	r1, r10
	bl	Func_b6b40
	mov	r8, r0
	mov	r5, #0
	cmp	r9, r8
	beq	.Lb8a5e
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	add	r7, r3, r1
.Lb8a08:
	mov	r6, r5
	add	r6, #0x80
	mov	r0, r6
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	ble	.Lb8a22
	mov	r3, #1
	strh	r6, [r7]
	add	r9, r3
	add	r7, #2
.Lb8a22:
	add	r5, #1
	cmp	r9, r8
	bne	.Lb8a08
	b	.Lb8a5e
.Lb8a2a:
	mov	r0, #1
	mov	r1, r10
	bl	Func_b6b40
	mov	r7, r0
	mov	r5, #0
	cmp	r9, r7
	beq	.Lb8a5e
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	add	r6, r3, r1
.Lb8a42:
	mov	r0, r5
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	ble	.Lb8a58
	mov	r3, #1
	strh	r5, [r6]
	add	r9, r3
	add	r6, #2
.Lb8a58:
	add	r5, #1
	cmp	r9, r7
	bne	.Lb8a42
.Lb8a5e:
	ldr	r2, =0xff
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	strh	r2, [r1, r3]
	mov	r0, r10
	mov	r1, #0
	bl	Func_b7b6c
	ldr	r1, [sp, #0xc]
	mov	r2, #8
	ldrsh	r3, [r1, r2]
	add	r0, sp, #0x10
	str	r3, [r0]
	ldr	r2, [sp, #8]
	mov	r3, r9
	str	r2, [r0, #8]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb8aa2
	mov	r1, r10
	add	r2, sp, #0x34
	mov	r4, #0
	b	.Lb8a94

	.pool_aligned

.Lb8a94:
	ldrh	r3, [r4, r1]
	add	r5, #1
	strh	r3, [r2]
	add	r4, #2
	add	r2, #2
	cmp	r5, r9
	bne	.Lb8a94
.Lb8aa2:
	mov	r1, r9
	str	r1, [r0, #0x14]
	ldr	r2, [sp, #4]
	cmp	r2, #7
	bhi	.Lb8ab0
	mov	r3, #1
	b	.Lb8ab2
.Lb8ab0:
	mov	r3, #0
.Lb8ab2:
	str	r3, [r0, #4]
	bl	_Func_d6578
	mov	r0, #0xa
	bl	Func_30f8
	bl	Func_b6c90
	ldr	r3, .Lb8ae8	@ 0x3f40
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	mov	r3, r11
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb8ae0
.Lb8ad0:
	ldr	r1, [sp]
	add	r0, r5, r1
	mov	r1, #1
	add	r5, #1
	bl	Func_c0f98
	cmp	r5, r11
	bne	.Lb8ad0
.Lb8ae0:
	ldr	r7, =REG_BLDALPHA
	ldr	r6, .Lb8aec	@ 0x1000
	mov	r5, #0
	b	.Lb8af8

	.align	2, 0
.Lb8ae8:
	.word	0x3f40
.Lb8aec:
	.word	0x1000
	.pool

.Lb8af8:
	mov	r3, r5
	orr	r3, r6
	strh	r3, [r7]
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x10
	bne	.Lb8af8
	mov	r2, r11
	mov	r5, #0
	cmp	r2, #0
	beq	.Lb8b22
.Lb8b12:
	ldr	r3, [sp]
	mov	r1, #0
	add	r0, r5, r3
	add	r5, #1
	bl	Func_c0f98
	cmp	r5, r11
	bne	.Lb8b12
.Lb8b22:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	Func_c0cec
	mov	r0, #3
	bl	Func_30f8
	mov	r0, #0
.Lb8b36:
	add	sp, #0x80
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b88d0

.thumb_func_start Func_b8b48
	push	{r5, r6, lr}
	ldr	r3, =iwram_1f00
	ldr	r2, [r3]
	mov	r1, #0x80
	ldr	r3, [r2]
	lsl	r1, #6
	sub	sp, #0x54
	mov	r6, r0
	cmp	r3, r1
	bne	.Lb8b66
	str	r1, [r2]
	mov	r0, #0xa
	bl	Func_30f8
	b	.Lb8b6e
.Lb8b66:
	str	r1, [r2]
	mov	r0, #0x1e
	bl	Func_30f8
.Lb8b6e:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r5, sp
	str	r0, [r5, #8]
	bl	Func_b8808
	cmp	r0, #0
	blt	.Lb8b8e
	ldrh	r0, [r6, #0xa]
	strh	r0, [r5, #0x24]
	lsl	r0, #16
	asr	r0, #16
	bl	Func_b8808
	cmp	r0, #0
	bge	.Lb8b94
.Lb8b8e:
	mov	r0, #1
	neg	r0, r0
	b	.Lb8c0a
.Lb8b94:
	ldr	r0, [r5, #8]
	bl	_Func_77394
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	_Func_77394
	bl	Func_4458
	mov	r1, #1
	ldr	r0, [r5, #8]
	bl	_Func_19908
	ldr	r0, =0x814
	bl	_Func_175a0
	mov	r2, #0xd
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	mov	r3, #0
	bl	Func_b82c4
	ldr	r0, [r5, #8]
	bl	Func_b7dd0
	mov	r1, #0x10
	ldr	r0, [r0]
	bl	_Func_c344
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	Func_b7dd0
	ldrh	r3, [r5, #0x24]
	mov	r2, #1
	str	r2, [r5, #0x14]
	cmp	r3, #7
	bhi	.Lb8be6
	str	r2, [r5, #4]
	b	.Lb8bea
.Lb8be6:
	mov	r3, #0
	str	r3, [r5, #4]
.Lb8bea:
	mov	r3, #0
	mov	r0, #4
	str	r3, [r5, #0x1c]
	bl	Func_30f8
	mov	r0, r5
	bl	_Func_e3a3c
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	Func_b8000
	ldr	r0, [r5, #8]
	bl	Func_b8000
	mov	r0, #0
.Lb8c0a:
	add	sp, #0x54
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b8b48

.thumb_func_start Func_b8c1c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1f00
	mov	r5, r0
	ldr	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	sub	sp, #0x5c
	ldr	r1, =0xffffe000
	cmp	r3, #4
	bgt	.Lb8c3a
	mov	r1, #0x80
	lsl	r1, #6
.Lb8c3a:
	ldr	r3, [r2]
	cmp	r3, r1
	bne	.Lb8c4c
	mov	r3, #0x28
	str	r3, [r2, #4]
	mov	r0, #0x28
	bl	Func_30f8
	b	.Lb8c58
.Lb8c4c:
	mov	r3, #0x28
	str	r1, [r2]
	str	r3, [r2, #4]
	mov	r0, #0x28
	bl	Func_30f8
.Lb8c58:
	mov	r2, #8
	ldrsh	r3, [r5, r2]
	add	r6, sp, #8
	str	r3, [r6]
	mov	r1, #0xc
	ldrsh	r3, [r5, r1]
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	str	r3, [r6, #0x10]
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	str	r0, [r6, #8]
	str	r3, [r6, #0xc]
	bl	Func_b8808
	cmp	r0, #0
	bge	.Lb8c80
	mov	r0, #1
	neg	r0, r0
	b	.Lb8d9c
.Lb8c80:
	ldr	r3, [r6, #0xc]
	cmp	r3, #0x7f
	ble	.Lb8c8c
	add	r7, sp, #0x2c
	mov	r0, #2
	b	.Lb8c90
.Lb8c8c:
	add	r7, sp, #0x2c
	mov	r0, #1
.Lb8c90:
	mov	r1, r7
	bl	Func_b6b40
	str	r0, [r6, #0x14]
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_1f200
	ldr	r0, [r6, #8]
	bl	Func_b7dd0
	ldr	r0, [r0]
	mov	r1, #3
	mov	r10, r0
	bl	_Func_c300
	mov	r0, r10
	mov	r1, #0x10
	bl	_Func_c344
	ldrh	r3, [r5, #0xa]
	cmp	r3, #7
	bhi	.Lb8cda
	mov	r2, #1
	mov	r8, r2
	str	r2, [r6, #4]
	mov	r0, #1
	mov	r1, r7
	bl	Func_b6b40
	mov	r3, r8
	b	.Lb8ce8
.Lb8cda:
	mov	r3, #0
	str	r3, [r6, #4]
	mov	r0, #2
	mov	r1, r7
	bl	Func_b6b40
	mov	r3, #1
.Lb8ce8:
	str	r3, [r6, #0x14]
	ldr	r3, [r6, #0x14]
	mov	r7, #0
	mov	r2, r6
	cmp	r3, #0
	beq	.Lb8d36
	mov	r5, #0
.Lb8cf6:
	lsl	r3, r7, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	Func_b7dd0
	ldr	r3, [r0]
	ldr	r1, [r3, #0x50]
	mov	r3, r1
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r0, #0
	cmp	r3, #0
	beq	.Lb8d2a
	mov	r12, r3
	add	r3, r5, r6
	mov	r2, r3
	add	r2, #0x34
	add	r1, #0x28
.Lb8d1c:
	ldmia	r1!, {r3}
	ldrb	r3, [r3, #5]
	add	r0, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r0, r12
	bne	.Lb8d1c
.Lb8d2a:
	ldr	r3, [r6, #0x14]
	add	r7, #1
	add	r5, #4
	mov	r2, r6
	cmp	r7, r3
	bne	.Lb8cf6
.Lb8d36:
	mov	r7, #0
	mov	r0, r6
	str	r7, [r6]
	str	r7, [r6, #0x18]
	bl	_Func_cb7f8
	mov	r3, #1
	str	r3, [r6]
	mov	r0, r6
	bl	_Func_cb7f8
	mov	r3, #2
	str	r3, [r6]
	mov	r0, r6
	bl	_Func_cb7f8
	mov	r3, #3
	str	r3, [r6]
	mov	r0, r6
	bl	_Func_cb7f8
	mov	r0, r6
	str	r7, [r6]
	bl	_Func_d6660
	mov	r0, r10
	mov	r1, #1
	bl	_Func_c300
	add	r5, sp, #8
	ldr	r3, [r5, #0x14]
	mov	r2, r5
	cmp	r3, #0
	beq	.Lb8d94
	mov	r6, #0x24
.Lb8d7c:
	str	r2, [sp, #4]
	ldrsh	r0, [r2, r6]
	str	r2, [sp]
	bl	Func_b8000
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #0x14]
	add	r7, #1
	add	r6, #2
	ldr	r2, [sp]
	cmp	r7, r3
	bne	.Lb8d7c
.Lb8d94:
	ldr	r0, [r5, #8]
	bl	Func_b8000
	mov	r0, #0
.Lb8d9c:
	add	sp, #0x5c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b8c1c

.thumb_func_start Func_b8db8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r7, r1
	mov	r8, r2
	cmp	r3, #0
	bne	.Lb8dd6
	mov	r2, sp
	mov	r3, #0
	strb	r3, [r2]
	strb	r3, [r2, #1]
	strb	r3, [r2, #2]
	strb	r3, [r2, #3]
.Lb8dd6:
	mov	r0, r5
	bl	_Func_77394
	mov	r6, r0
	ldrh	r3, [r6, #0x38]
	sub	r3, r7
	strh	r3, [r6, #0x38]
	lsl	r3, #16
	cmp	r3, #0
	bge	.Lb8dee
	mov	r3, #0
	strh	r3, [r6, #0x38]
.Lb8dee:
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, #5
	ldr	r0, [r0]
	bl	_Func_c300
	mov	r0, #0
	bl	_Func_1f200
	bl	_Func_198dc
	cmp	r5, #7
	bhi	.Lb8e2e
	mov	r2, r8
	cmp	r2, #0
	beq	.Lb8e16
	ldr	r0, =0x823
	bl	_Func_175a0
.Lb8e16:
	mov	r0, r7
	mov	r1, #5
	bl	_Func_19908
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x827
	bl	_Func_175a0
	b	.Lb8e58
.Lb8e2e:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb8e3a
	ldr	r0, =0x822
	bl	_Func_175a0
.Lb8e3a:
	mov	r0, r7
	mov	r1, #5
	bl	_Func_19908
	mov	r1, #1
	mov	r0, r5
	bl	_Func_19908
	ldr	r0, =0x826
	bl	_Func_175a0
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
.Lb8e58:
	mov	r0, r5
	bl	Func_b8ec4
	cmp	r5, #7
	bhi	.Lb8e7a
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bgt	.Lb8e90
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x825
	bl	_Func_175a0
	b	.Lb8e90
.Lb8e7a:
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bgt	.Lb8e90
	mov	r0, r5
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x838
	bl	_Func_175a0
.Lb8e90:
	mov	r0, r5
	bl	Func_b7dd0
	mov	r1, #1
	ldr	r0, [r0]
	bl	_Func_c300
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b8db8

.thumb_func_start Func_b8ec4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bgt	.Lb8f02
	mov	r0, r6
	bl	Func_b7dd0
	ldr	r3, [r0]
	ldr	r5, [r3, #0x50]
	mov	r1, #5
	mov	r0, r5
	bl	_Func_ba30
	ldr	r2, [r5, #0x28]
	mov	r3, #6
	strb	r3, [r2, #5]
	mov	r3, #0xff
	strb	r3, [r2, #0x16]
	mov	r0, #4
	bl	Func_30f8
	mov	r0, r5
	bl	_Func_befc
	mov	r0, r6
	bl	Func_b7e60
.Lb8f02:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b8ec4

.thumb_func_start Func_b8f08
	push	{r5, r6, lr}
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, r5
	sub	sp, #0x1c
	bl	_Func_77394
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	mov	r0, r5
	cmp	r3, #0
	bne	.Lb8f4e
	cmp	r5, #0x7f
	ble	.Lb8f2a
	mov	r6, sp
	mov	r0, #2
	b	.Lb8f2e
.Lb8f2a:
	mov	r6, sp
	mov	r0, #1
.Lb8f2e:
	mov	r1, r6
	bl	Func_b6b40
	mov	r5, r0
	cmp	r5, #0
	bne	.Lb8f40
	mov	r0, #0x80
	lsl	r0, #1
	b	.Lb8f4e
.Lb8f40:
	bl	Func_4458
	mov	r3, r5
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	ldrsh	r0, [r6, r3]
.Lb8f4e:
	add	sp, #0x1c
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b8f08

.thumb_func_start Func_b8f58
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x1f
	ldr	r6, =0x50001c0
	mov	r8, r1
	mov	r7, #0xf
.Lb8f66:
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	lsl	r0, r3, #1
	add	r0, r3
	lsl	r0, #10
	ldrh	r5, [r6, #0x20]
	bl	Func_231c
	mov	r3, r0
	mov	r0, #0x80
	lsl	r0, #9
	sub	r0, r3
	ldr	r1, =0x2aaa
	bl	Func_af0_from_thumb
	mov	r2, r8
	lsr	r3, r5, #10
	and	r3, r2
	mov	r1, r8
	lsr	r2, r5, #5
	and	r2, r1
	add	r3, r0
	and	r1, r5
	add	r2, r0
	add	r1, r0
	cmp	r3, #0x1f
	bls	.Lb8f9e
	mov	r3, #0x1f
.Lb8f9e:
	cmp	r2, #0x1f
	bls	.Lb8fa4
	mov	r2, #0x1f
.Lb8fa4:
	cmp	r1, #0x1f
	bls	.Lb8faa
	mov	r1, #0x1f
.Lb8faa:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	sub	r7, #1
	strh	r3, [r6]
	add	r6, #2
	cmp	r7, #0
	bge	.Lb8f66
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b8f58

.thumb_func_start Func_b8fd4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	add	r3, #0x80
	ldr	r3, [r3]
	mov	r8, r3
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	mov	r2, r8
	mov	r6, #0
	lsl	r3, #7
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x14]
	str	r3, [r2]
	strh	r3, [r5, #0x36]
	mov	r3, #0xf4
	lsl	r3, #8
	strh	r3, [r5, #0x34]
	ldr	r3, =0x2ee0000
	str	r6, [r5, #0x1c]
	str	r3, [r5, #0x20]
	str	r6, [r5, #0x18]
	sub	sp, #0x10
	mov	r10, r0
	bl	Func_49ac
	mov	r0, r5
	add	r0, #0xc
	bl	Func_4cb4
	mov	r3, #0x36
	ldrsh	r0, [r5, r3]
	bl	Func_4c1c
	mov	r2, #0x34
	ldrsh	r0, [r5, r2]
	bl	Func_4bd4
	add	r0, sp, #4
	str	r6, [r0]
	str	r6, [r0, #4]
	ldr	r3, [r5, #0x20]
	mov	r1, r5
	str	r3, [r0, #8]
	ldr	r3, =Func_9c0
	bl	_call_via_r3
	mov	r1, #0xc0
	ldr	r3, =Func_8ac
	lsl	r1, #8
	ldr	r0, =0x3c90000
	bl	_call_via_r3
	ldr	r2, =0x7920000
	mov	r1, r0
	mov	r0, #0
	bl	Func_5258
	ldr	r2, =iwram_1ce0
	mov	r3, r10
	add	r3, #0x78
	str	r3, [r2, #0x10]
	mov	r1, #0x76
	mov	r2, r10
	mov	r5, #1
	mov	r3, r8
	sub	r1, r2
	mov	r2, #0x80
	str	r5, [r3, #0x10]
	lsl	r2, #10
	mov	r0, #0xf0
	mov	r3, #0x80
	str	r2, [sp]
	lsl	r0, #15
	lsl	r1, #16
	lsl	r3, #4
	mov	r2, #0
	bl	Func_c0a24
	mov	r3, r8
	str	r5, [r3, #0x14]
	str	r6, [r3, #0x10]
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_b8fd4

.thumb_func_start Func_b90ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	mov	r5, sp
	mov	r0, #3
	mov	r1, r5
	bl	Func_b6c08
	cmp	r0, #0
	ble	.Lb90e6
	mov	r6, #0
	mov	r7, r5
	mov	r8, r6
	mov	r5, r0
.Lb90ca:
	ldrh	r0, [r6, r7]
	bl	_Func_77394
	ldr	r2, =0x12b
	add	r3, r0, r2
	mov	r2, r8
	ldrh	r0, [r6, r7]
	strb	r2, [r3]
	sub	r5, #1
	bl	_Func_77428
	add	r6, #2
	cmp	r5, #0
	bne	.Lb90ca
.Lb90e6:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b90ac

.thumb_func_start Func_b90f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	sub	sp, #0x24
	str	r2, [sp, #4]
	ldr	r3, =iwram_1e74
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0x45
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lb9120
	mov	r3, #1
	str	r3, [sp, #4]
	b	.Lb91d4
.Lb9120:
	add	r2, #0x46
	str	r2, [sp]
	ldrb	r2, [r2]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #2
	add	r3, r2
	ldr	r2, =0x1388
	lsl	r3, #4
	add	r2, r3
	add	r3, sp, #8
	mov	r10, r3
	mov	r0, #1
	mov	r1, r10
	mov	r9, r2
	bl	Func_b6b40
	ldr	r2, [sp, #4]
	mov	r8, r0
	mov	r6, #0
	cmp	r2, r8
	bge	.Lb9166
	mov	r11, r10
	mov	r7, #0
	mov	r5, r8
.Lb9152:
	mov	r3, r11
	ldrsh	r0, [r7, r3]
	bl	_Func_77394
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, r3
	add	r7, #2
	cmp	r5, #0
	bne	.Lb9152
.Lb9166:
	lsl	r0, r6, #5
	sub	r0, r6
	lsl	r0, #2
	add	r0, r6
	mov	r1, r8
	lsl	r0, #2
	bl	Func_af0_from_thumb
	mov	r1, r10
	add	r9, r0
	mov	r0, #2
	bl	Func_b6b40
	mov	r6, #0
	mov	r8, r0
	cmp	r6, r8
	bge	.Lb91a0
	mov	r7, #0
	mov	r5, r8
.Lb918c:
	mov	r3, r10
	ldrsh	r0, [r7, r3]
	bl	_Func_77394
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, r3
	add	r7, #2
	cmp	r5, #0
	bne	.Lb918c
.Lb91a0:
	lsl	r0, r6, #5
	sub	r0, r6
	lsl	r0, #2
	add	r0, r6
	lsl	r0, #2
	mov	r1, r8
	bl	Func_af0_from_thumb
	mov	r3, r9
	sub	r3, r0
	mov	r9, r3
	cmp	r3, #0
	ble	.Lb91cc
	bl	Func_4458
	ldr	r3, =0x2710
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, r9
	bcs	.Lb91cc
	mov	r2, #1
	str	r2, [sp, #4]
.Lb91cc:
	ldr	r2, [sp]
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
.Lb91d4:
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.Lb91e4
	mov	r3, #0
	str	r3, [sp, #4]
.Lb91e4:
	ldr	r0, [sp, #4]
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b90f8

.thumb_func_start Func_b920c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r0, [sp, #0xc]
	mov	r0, #0x11
	bl	Func_4970
	str	r0, [sp, #8]
	mov	r0, #9
	bl	Func_4970
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r0, #1
	bl	Func_b6b40
	mov	r2, #0
	mov	r5, r0
	mov	r8, r2
	mov	r9, r2
	cmp	r8, r5
	bge	.Lb92e2
	ldr	r6, [sp, #4]
	mov	r10, r5
.Lb9246:
	ldrh	r0, [r6]
	bl	_Func_77394
	mov	r3, #0x43
	add	r3, r0
	mov	r12, r3
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r5, r3
	bge	.Lb92d4
	mov	r7, #0x9e
	mov	r2, #0x9c
	lsl	r7, #1
	lsl	r2, #1
	add	r7, r0
	add	r2, r0, r2
	mov	r14, r7
	str	r2, [sp]
	mov	r7, r9
	ldr	r2, [sp, #8]
	lsl	r3, r7, #1
	add	r1, r3, r2
	mov	r3, r8
	lsl	r3, #4
	ldr	r2, [sp, #0xc]
	ldr	r7, =0xffffff00
	mov	r11, r3
	add	r2, r11
	mov	r4, r6
	mov	r11, r7
.Lb9282:
	mov	r7, r14
	ldrb	r3, [r7]
	cmp	r3, #0
	bne	.Lb9296
	ldr	r7, [sp]
	ldr	r3, [r7]
	mov	r7, r11
	and	r3, r7
	cmp	r3, #0
	beq	.Lb92c0
.Lb9296:
	ldrh	r3, [r4]
	strh	r3, [r2]
	mov	r3, r0
	add	r3, #0x40
	ldrh	r3, [r3]
	strh	r3, [r2, #4]
	mov	r3, #8
	strh	r3, [r2, #6]
	ldr	r3, .Lb92b8	@ 0
	strh	r3, [r2, #8]
	mov	r3, #0xc0
	lsl	r3, #1
	mov	r7, #1
	strh	r3, [r2, #0xa]
	add	r8, r7
	add	r2, #0x10
	b	.Lb92ca

	.align	2, 0
.Lb92b8:
	.word	0
	.pool

.Lb92c0:
	ldrh	r3, [r4]
	strh	r3, [r1]
	mov	r3, #1
	add	r1, #2
	add	r9, r3
.Lb92ca:
	mov	r7, r12
	ldrb	r3, [r7]
	add	r5, #1
	cmp	r5, r3
	blt	.Lb9282
.Lb92d4:
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	add	r6, #2
	cmp	r3, #0
	bne	.Lb9246
.Lb92e2:
	ldr	r2, [sp, #0xc]
	mov	r7, r8
	lsl	r3, r7, #4
	add	r2, r3
	str	r2, [sp, #0xc]
	mov	r0, r2
	ldr	r1, [sp, #8]
	mov	r2, r9
	bl	_Func_27114
	mov	r5, #1
	neg	r5, r5
	cmp	r0, #0
	blt	.Lb9302
	mov	r3, r8
	add	r5, r3, r0
.Lb9302:
	ldr	r0, [sp, #4]
	bl	Func_2df0
	ldr	r0, [sp, #8]
	bl	Func_2df0
	mov	r0, r5
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b920c

.thumb_func_start Func_b9324
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r2, #0
	str	r0, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x45
	str	r3, [sp, #8]
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #1
	bne	.Lb934c
	b	.Lb945e
.Lb934c:
	mov	r3, sp
	add	r3, #0x14
	mov	r0, #2
	mov	r1, r3
	str	r3, [sp, #4]
	bl	Func_b6b40
	mov	r4, #0x1f
	mov	r8, r0
	ldr	r6, [sp, #4]
	cmp	r0, #0
	bne	.Lb9368
	mov	r0, #0
	b	.Lb945e
.Lb9368:
	str	r4, [sp]
	bl	Func_4458
	mov	r5, r8
	mul	r5, r0
	bl	Func_4458
	mov	r2, r8
	mul	r2, r0
	lsr	r5, #16
	lsr	r2, #16
	lsl	r5, #1
	lsl	r2, #1
	ldr	r4, [sp]
	ldrh	r1, [r6, r5]
	ldrh	r3, [r6, r2]
	sub	r4, #1
	strh	r3, [r6, r5]
	strh	r1, [r6, r2]
	cmp	r4, #0
	bge	.Lb9368
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	cmp	r3, #2
	bne	.Lb93b2
	bl	Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	add	r3, #1
	cmp	r3, #1
	bgt	.Lb93ac
	mov	r3, #2
.Lb93ac:
	cmp	r3, r8
	bge	.Lb93b2
	mov	r8, r3
.Lb93b2:
	mov	r4, #0
	cmp	r4, r8
	bge	.Lb945c
.Lb93b8:
	ldr	r2, [sp, #4]
	lsl	r3, r4, #1
	ldrh	r3, [r2, r3]
	mov	r9, r3
	mov	r0, r9
	str	r4, [sp]
	bl	_Func_77394
	mov	r3, #0x43
	mov	r6, r0
	add	r3, r6
	mov	r10, r3
	ldrb	r3, [r3]
	mov	r7, #0
	ldr	r4, [sp]
	cmp	r7, r3
	bge	.Lb9456
	mov	r2, #0x40
	add	r2, r6
	mov	r11, r2
	ldr	r2, [sp, #0xc]
	lsl	r3, r2, #4
	ldr	r2, [sp, #0x10]
	add	r5, r3, r2
.Lb93e8:
	mov	r3, r9
	strh	r3, [r5]
	mov	r3, r11
	ldrh	r2, [r3]
	strh	r2, [r5, #4]
	cmp	r7, #0
	beq	.Lb9402
	lsl	r2, #16
	asr	r3, r2, #16
	lsr	r2, #31
	add	r3, r2
	asr	r3, #1
	strh	r3, [r5, #4]
.Lb9402:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9418
	sub	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb9430
.Lb9418:
	mov	r3, #8
	strh	r3, [r5, #6]
	ldr	r3, .Lb9428	@ 0
	strh	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #1
	strh	r3, [r5, #0xa]
	b	.Lb943c

	.align	2, 0
.Lb9428:
	.word	0
	.pool

.Lb9430:
	mov	r0, r5
	mov	r1, #0
	str	r4, [sp]
	bl	Func_bd424
	ldr	r4, [sp]
.Lb943c:
	ldr	r2, [sp, #0xc]
	add	r2, #1
	str	r2, [sp, #0xc]
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	add	r5, #0x10
	cmp	r3, #2
	beq	.Lb9456
	mov	r2, r10
	ldrb	r3, [r2]
	add	r7, #1
	cmp	r7, r3
	blt	.Lb93e8
.Lb9456:
	add	r4, #1
	cmp	r4, r8
	blt	.Lb93b8
.Lb945c:
	ldr	r0, [sp, #0xc]
.Lb945e:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9324

.thumb_func_start Func_b9470
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	sub	sp, #0x10
	mov	r11, r0
	cmp	r7, #0
	ble	.Lb94e4
	mov	r5, r11
	mov	r6, r7
.Lb948c:
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	cmp	r3, #5
	bne	.Lb94dc
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	bl	_Func_77394
	ldrh	r2, [r5, #8]
	ldr	r3, =0xf
	lsl	r0, r2, #16
	asr	r0, #24
	mov	r1, #0xff
	and	r1, r2
	and	r0, r3
	bl	_Func_7a5b0
	bl	_Func_78b9c
	ldrb	r2, [r0, #3]
	mov	r3, r2
	add	r3, #0xd2
	mov	r1, #0x80
	lsl	r3, #24
	lsl	r1, #17
	cmp	r3, r1
	bls	.Lb94c8
	mov	r3, r2
	cmp	r3, #0x35
	bne	.Lb94dc
.Lb94c8:
	ldrh	r3, [r5, #4]
	ldr	r2, =0x2710
	add	r3, r2
	strh	r3, [r5, #4]
	b	.Lb94dc

	.pool_aligned

.Lb94dc:
	sub	r6, #1
	add	r5, #0x10
	cmp	r6, #0
	bne	.Lb948c
.Lb94e4:
	sub	r7, #1
	mov	r9, r7
.Lb94e8:
	mov	r3, #0
	mov	r7, r9
	mov	r10, r3
	cmp	r7, #0
	ble	.Lb9538
	lsl	r3, r7, #4
	add	r3, r11
	ldr	r1, =Func_1af8
	mov	r5, r3
	mov	r8, r1
	sub	r5, #0x10
	mov	r6, r3
.Lb9500:
	mov	r3, #0x14
	ldrsh	r2, [r5, r3]
	mov	r1, #4
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	ble	.Lb952e
	mov	r0, sp
	mov	r1, r6
	mov	r2, #0x10
	bl	_call_via_r8
	mov	r1, r5
	mov	r2, #0x10
	mov	r0, r6
	bl	_call_via_r8
	mov	r2, #0x10
	mov	r0, r5
	mov	r1, sp
	bl	_call_via_r8
	mov	r2, #1
	add	r10, r2
.Lb952e:
	sub	r7, #1
	sub	r5, #0x10
	sub	r6, #0x10
	cmp	r7, #0
	bgt	.Lb9500
.Lb9538:
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb94e8
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b9470

.thumb_func_start Func_b9554
	push	{r5, r6, r7, lr}
	mov	r7, r9
	push	{r7}
	sub	sp, #4
	mov	r3, sp
	mov	r2, r9
	str	r2, [r3]
	mov	r7, r2
	sub	r3, r7, #4
	ldr	r0, [r3]
	mov	r1, #0x14
	bl	Func_63bc
	mov	r3, #1
	mov	r5, #0x96
	neg	r3, r3
	mov	r6, #0
	lsl	r5, #1
	cmp	r0, r3
	bne	.Lb95a0
	b	.Lb95f4
.Lb957e:
	mov	r0, #1
	sub	r5, #1
	bl	Func_30f8
	cmp	r5, #0
	blt	.Lb95e2
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb959e
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb95a0
	b	.Lb95e2
.Lb959e:
	mov	r6, #0
.Lb95a0:
	bl	Func_64f4
	cmp	r0, #0
	bne	.Lb957e
	mov	r3, r7
	sub	r3, #8
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lb95f2
	sub	r3, #4
	ldr	r0, [r3]
	bl	Func_63bc
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb95ea
	b	.Lb95f4
.Lb95c4:
	mov	r0, #1
	sub	r5, #1
	bl	Func_30f8
	cmp	r5, #0
	blt	.Lb95e2
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb95e8
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb95ea
.Lb95e2:
	mov	r0, #1
	neg	r0, r0
	b	.Lb95f4
.Lb95e8:
	mov	r6, #0
.Lb95ea:
	bl	Func_64f4
	cmp	r0, #0
	bne	.Lb95c4
.Lb95f2:
	mov	r0, #0
.Lb95f4:
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9554

.thumb_func_start Func_b9604
	push	{r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r1, r9
	sub	sp, #4
	mov	r8, r1
	mov	r3, sp
	mov	r7, r8
	str	r1, [r3]
	sub	r7, #4
	ldr	r0, [r7]
	bl	Func_6408
	mov	r2, #1
	mov	r5, #0x96
	neg	r2, r2
	mov	r6, #0
	lsl	r5, #1
	cmp	r0, r2
	bne	.Lb965a
	b	.Lb970c
.Lb9630:
	ldr	r3, =ewram_2238
	ldrh	r3, [r3]
	cmp	r3, #0x14
	bhi	.Lb9704
	mov	r0, #1
	sub	r5, #1
	bl	Func_30f8
	cmp	r5, #0
	blt	.Lb9704
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb9658
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb965a
	b	.Lb9704
.Lb9658:
	mov	r6, #0
.Lb965a:
	bl	Func_64f4
	cmp	r0, #0
	bne	.Lb9630
	ldr	r3, =ewram_2238
	ldrh	r3, [r3]
	cmp	r3, #0x14
	bne	.Lb9704
	mov	r3, #0x10
	neg	r3, r3
	add	r3, r8
	mov	r9, r3
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r1, r9
	str	r2, [r1]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lb970a
	mov	r3, r8
	mov	r2, r8
	sub	r3, #0x14
	sub	r2, #0xc
	ldr	r3, [r3]
	ldr	r0, [r2]
	lsl	r3, #4
	add	r0, r3
	bl	Func_6408
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb96de
	b	.Lb970c
.Lb969e:
	ldr	r3, =ewram_2238
	ldrh	r3, [r3]
	mov	r8, r3
	mov	r3, r9
	ldr	r0, [r3]
	lsl	r0, #4
	add	r0, #0x13
	mov	r1, #0x14
	bl	Func_b60_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	cmp	r8, r3
	bhi	.Lb9704
	mov	r0, #1
	sub	r5, #1
	bl	Func_30f8
	cmp	r5, #0
	blt	.Lb9704
	ldr	r3, =iwram_1f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb96dc
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb96de
	b	.Lb9704
.Lb96dc:
	mov	r6, #0
.Lb96de:
	bl	Func_64f4
	cmp	r0, #0
	bne	.Lb969e
	mov	r1, r9
	ldr	r0, [r1]
	ldr	r3, =ewram_2238
	lsl	r0, #4
	ldrh	r3, [r3]
	add	r0, #0x13
	mov	r1, #0x14
	mov	r8, r3
	bl	Func_b60_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	cmp	r8, r3
	beq	.Lb970a
.Lb9704:
	mov	r0, #1
	neg	r0, r0
	b	.Lb970c
.Lb970a:
	mov	r0, #0
.Lb970c:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r9, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9604

.thumb_func_start Func_b9724
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r9, r3
	add	r3, sp, #4
	add	r2, sp, #8
	mov	r8, r3
	mov	r7, sp
	str	r0, [r2]
	mov	r3, #0
	mov	r0, r8
	str	r1, [r7]
	str	r3, [r0]
	ldr	r0, [r7]
	lsl	r0, #4
	mov	r1, #0x14
	add	r0, #0x13
	mov	r11, r2
	bl	Func_b60_from_thumb
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	mov	r0, #0x28
	str	r3, [sp, #0xc]
	bl	Func_4970
	ldr	r3, [r7]
	add	r5, sp, #0x10
	mov	r10, r5
	str	r0, [r5]
	cmp	r3, #0
	ble	.Lb97b0
	mov	r2, r11
	mov	r6, r9
	ldr	r1, [r2]
	mov	r0, #1
	add	r6, #0x50
	mov	r4, r3
.Lb9780:
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r2, r9
	add	r3, #0x48
	ldrb	r3, [r2, r3]
	strh	r3, [r1, #2]
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.Lb97a0
	ldrh	r2, [r1, #4]
	mov	r3, r0
	and	r3, r2
	cmp	r3, #0
	beq	.Lb97a8
	add	r3, r2, #1
	b	.Lb97a6
.Lb97a0:
	ldrh	r2, [r1, #4]
	mov	r3, r0
	orr	r3, r2
.Lb97a6:
	strh	r3, [r1, #4]
.Lb97a8:
	sub	r4, #1
	add	r1, #0x10
	cmp	r4, #0
	bne	.Lb9780
.Lb97b0:
	mov	r3, r9
	add	r3, #0x52
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9890
	mov	r3, r9
	add	r3, #0x50
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb980e
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r3, [r2]
	bl	_Func_79bc4
	mov	r1, r10
	ldr	r3, [r1]
	str	r0, [r3, #4]
	ldr	r2, =REG_IME
	ldrh	r1, [r2]
	strh	r2, [r2]
	ldr	r4, =ewram_23a8
	ldr	r3, =iwram_1cb4
	add	r5, sp, #0x10
	ldr	r3, [r3]
	ldr	r0, [r5]
	str	r3, [r0, #8]
	str	r3, [r4]
	strh	r1, [r2]
	add	r2, sp, #0x14
	mov	r9, r2
	bl	Func_b9554
	cmp	r0, #0
	blt	.Lb9890
	add	r3, sp, #0x14
	mov	r9, r3
	bl	Func_b9604
	cmp	r0, #0
	blt	.Lb9890
	ldr	r3, [r5]
	ldr	r3, [r3]
	mov	r0, r8
	str	r3, [r0]
	b	.Lb9848
.Lb980e:
	add	r1, sp, #0x14
	mov	r9, r1
	bl	Func_b9604
	cmp	r0, #0
	blt	.Lb9890
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r3, [r2]
	mov	r0, r8
	str	r3, [r0]
	ldr	r3, [r7]
	add	r1, sp, #0x14
	str	r3, [r2]
	mov	r9, r1
	bl	Func_b9554
	cmp	r0, #0
	blt	.Lb9890
	bl	_Func_79bc4
	mov	r2, r10
	ldr	r1, [r2]
	ldr	r3, [r1, #4]
	cmp	r0, r3
	bne	.Lb9890
	ldr	r2, =ewram_23a8
	ldr	r3, [r1, #8]
	str	r3, [r2]
.Lb9848:
	mov	r3, r8
	ldr	r1, [r3]
	cmp	r1, #0
	ble	.Lb9870
	mov	r0, r11
	ldr	r3, [r7]
	ldr	r2, [r0]
	lsl	r3, #4
	ldr	r6, .Lb987c	@ 0x80
	add	r0, r3, r2
	mov	r4, r1
.Lb985e:
	ldrh	r3, [r0, #2]
	strh	r3, [r0]
	ldrh	r3, [r0, #0xa]
	sub	r4, #1
	eor	r3, r6
	strh	r3, [r0, #0xa]
	add	r0, #0x10
	cmp	r4, #0
	bne	.Lb985e
.Lb9870:
	ldr	r0, [r5]
	bl	Func_2df0
	mov	r1, r8
	ldr	r0, [r1]
	b	.Lb98a2

	.align	2, 0
.Lb987c:
	.word	0x80
	.pool

.Lb9890:
	bl	Func_651c
	bl	Func_6358
	ldr	r0, [r5]
	bl	Func_2df0
	mov	r0, #1
	neg	r0, r0
.Lb98a2:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9724

.thumb_func_start Func_b98b4
	push	{r5, r6, r7, lr}
	mov	r1, #0
	mov	r5, r0
	mov	r3, #0xf
	mov	r14, r1
	mov	r7, #0x1f
.Lb98c0:
	lsl	r3, #4
	mov	r6, #0
	mov	r12, r3
.Lb98c6:
	mov	r2, r12
	add	r3, r2, r6
	mov	r1, #0xa0
	lsl	r1, #19
	lsl	r0, r3, #1
	add	r3, r0, r1
	ldrh	r3, [r3]
	lsr	r4, r3, #10
	and	r4, r7
	lsr	r2, r3, #5
	mov	r1, r7
	and	r2, r7
	and	r1, r3
	add	r4, r5
	add	r2, r5
	add	r1, r5
	cmp	r4, #0x1f
	ble	.Lb98ec
	mov	r4, #0x1f
.Lb98ec:
	cmp	r2, #0x1f
	ble	.Lb98f2
	mov	r2, #0x1f
.Lb98f2:
	cmp	r1, #0x1f
	ble	.Lb98f8
	mov	r1, #0x1f
.Lb98f8:
	cmp	r4, #0
	bge	.Lb98fe
	mov	r4, #0
.Lb98fe:
	cmp	r2, #0
	bge	.Lb9904
	mov	r2, #0
.Lb9904:
	cmp	r1, #0
	bge	.Lb990a
	mov	r1, #0
.Lb990a:
	lsl	r2, #5
	lsl	r3, r4, #10
	orr	r3, r2
	orr	r3, r1
	ldr	r1, =0x4ffffe0
	add	r6, #1
	add	r2, r0, r1
	strh	r3, [r2]
	cmp	r6, #0xf
	ble	.Lb98c6
	mov	r2, #1
	add	r14, r2
	mov	r1, r14
	mov	r3, #5
	cmp	r1, #1
	ble	.Lb98c0
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_b98b4

.thumb_func_start Func_b9934
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e74
	mov	r4, #0xbb
	ldr	r5, [r3]
	mov	r1, #0x80
	lsl	r4, #2
	mov	r7, r0
	mov	r2, #0
	mov	r0, #0xff
	lsl	r1, #8
	add	r3, r5, r4
.Lb994a:
	add	r2, #1
	strh	r0, [r3]
	strh	r1, [r3, #4]
	add	r3, #0x10
	cmp	r2, #0x13
	bls	.Lb994a
	bl	Func_b90ac
	mov	r0, #8
	bl	Func_b98b4
	ldr	r0, =0x16b
	bl	_Func_79358
	add	r5, #0x45
	mov	r0, #0
	bl	Func_b8fd4
	bl	_Func_174d8
	ldrb	r3, [r5]
	cmp	r3, #2
	beq	.Lb999e
	mov	r0, r7
	bl	Func_b920c
	mov	r6, r0
	cmp	r6, #0
	blt	.Lb9a16
	cmp	r6, #0
	beq	.Lb99a0
	mov	r1, #6
	ldrsh	r3, [r7, r1]
	cmp	r3, #0x63
	bne	.Lb99a0
	bl	Func_b90f8
	cmp	r0, #0
	bne	.Lb99a0
	mov	r3, #2
	strb	r3, [r5]
	b	.Lb99a0
.Lb999e:
	mov	r6, #0
.Lb99a0:
	ldr	r3, =iwram_1e74
	ldr	r3, [r3]
	add	r3, #0x44
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb99ca
	mov	r0, r7
	mov	r1, r6
	bl	Func_b9724
	mov	r5, r0
	bl	Func_b60a0
	cmp	r0, #0
	blt	.Lb99c4
	add	r6, r5
	cmp	r5, #0
	bge	.Lb99d4
.Lb99c4:
	mov	r6, #1
	neg	r6, r6
	b	.Lb9a16
.Lb99ca:
	lsl	r0, r6, #4
	add	r0, r7, r0
	bl	Func_b9324
	add	r6, r0
.Lb99d4:
	mov	r0, r7
	mov	r1, r6
	bl	Func_b9470
	cmp	r6, #0
	ble	.Lb9a16
	mov	r5, r7
	mov	r7, r6
.Lb99e4:
	mov	r2, #6
	ldrsh	r3, [r5, r2]
	cmp	r3, #3
	beq	.Lb99f0
	cmp	r3, #7
	bne	.Lb9a0e
.Lb99f0:
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	_Func_77394
	mov	r4, #6
	ldrsh	r2, [r5, r4]
	mov	r3, #3
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	ldr	r1, =0x12b
	lsr	r3, #31
	add	r3, #1
	add	r2, r0, r1
	strb	r3, [r2]
.Lb9a0e:
	sub	r7, #1
	add	r5, #0x10
	cmp	r7, #0
	bne	.Lb99e4
.Lb9a16:
	ldr	r0, =0x16b
	bl	_Func_79374
	bl	Func_b7f9c
	ldr	r3, =iwram_1f00
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #6
	str	r3, [r2]
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_b9934

.thumb_func_start Func_b9a44
	push	{lr}
	ldr	r3, =iwram_1e74
	ldr	r2, [r3]
	mov	r3, #0x80
	and	r3, r0
	cmp	r3, #0
	beq	.Lb9a5e
	mov	r3, #0xf
	and	r3, r0
	lsl	r3, #1
	add	r3, #0x64
	add	r2, #2
	b	.Lb9a66
.Lb9a5e:
	mov	r3, #0xf
	and	r3, r0
	lsl	r3, #1
	add	r3, #0x58
.Lb9a66:
	ldrsh	r0, [r2, r3]
	pop	{r1}
	bx	r1
.func_end Func_b9a44

.thumb_func_start Func_b9a70
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e74
	mov	r4, r0
	ldr	r3, [r3]
	cmp	r4, #7
	bhi	.Lb9a98
	mov	r5, #0x80
	mov	r0, #0
	lsl	r5, #1
	mov	r1, #0x58
.Lb9a84:
	ldrsh	r2, [r1, r3]
	cmp	r2, #0xff
	beq	.Lb9aa8
	cmp	r2, #0xfe
	beq	.Lb9a92
	cmp	r2, r4
	beq	.Lb9ab6
.Lb9a92:
	add	r1, #2
	add	r0, #1
	b	.Lb9a84
.Lb9a98:
	mov	r5, #0xc0
	mov	r0, #0
	add	r3, #2
	lsl	r5, #1
	mov	r1, #0x64
.Lb9aa2:
	ldrsh	r2, [r1, r3]
	cmp	r2, #0xff
	bne	.Lb9aae
.Lb9aa8:
	mov	r0, #1
	neg	r0, r0
	b	.Lb9ac0
.Lb9aae:
	cmp	r2, #0xfe
	beq	.Lb9aba
	cmp	r2, r4
	bne	.Lb9aba
.Lb9ab6:
	orr	r0, r5
	b	.Lb9ac0
.Lb9aba:
	add	r1, #2
	add	r0, #1
	b	.Lb9aa2
.Lb9ac0:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_b9a70

.thumb_func_start Func_b9acc
	push	{lr}
	ldr	r3, =iwram_1e80
	ldr	r0, =iwram_1ae8
	ldr	r1, [r3]
	add	r3, #0x80
	ldr	r4, [r3]
	mov	r2, #0x80
	ldr	r3, [r0]
	lsl	r2, #2
	and	r3, r2
	sub	sp, #4
	cmp	r3, #0
	beq	.Lb9aec
	ldrh	r3, [r1, #0x36]
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb9aec:
	ldr	r3, [r0]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb9b00
	ldrh	r3, [r1, #0x36]
	ldr	r2, =0xfffffe00
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb9b00:
	ldr	r3, [r4, #0x14]
	cmp	r3, #0
	bne	.Lb9b1a
	mov	r1, #0xf0
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r1, #15
	str	r3, [sp]
	mov	r0, r1
	mov	r2, #0
	mov	r3, #0
	bl	Func_c0a24
.Lb9b1a:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_b9acc

.thumb_func_start Func_b9b2c
	bx	lr
.func_end Func_b9b2c

	.section .rodata

.Lc59a4:
	.incrom 0xc59a4, 0xc59c4
.Lc59c4:
	.incrom 0xc59c4, 0xc59e4
.Lc59e4:
	.incrom 0xc59e4, 0xc5a04
.Lc5a04:
	.incrom 0xc5a04, 0xc5a30
