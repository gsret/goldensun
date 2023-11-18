	.include "macros.inc"

.thumb_func_start OvlFunc_common2_0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6, r7}
	sub	sp, #8
	mov	r10, r0
	mov	r9, r1
	mov	r8, r2
	bl	OvlFunc_common2_2d4
	cmp	r0, #0
	beq	.L20
.L1c:
	mov	r0, r10
	b	.L23e
.L20:
	mov	r0, r9
	bl	OvlFunc_common2_2d4
	cmp	r0, #0
	bne	.L94
	mov	r0, r10
	bl	OvlFunc_common2_2e4
	cmp	r0, #0
	beq	.L50
	mov	r0, r9
	bl	OvlFunc_common2_2e4
	cmp	r0, #0
	beq	.L1c
	mov	r0, r10
	mov	r1, r9
	ldr	r2, [r0, #4]
	ldr	r3, [r1, #4]
	cmp	r2, r3
	beq	.L1c
	bl	OvlFunc_common2_2cc
	b	.L23e
.L50:
	mov	r0, r9
	bl	OvlFunc_common2_2e4
	cmp	r0, #0
	bne	.L94
	mov	r0, r9
	bl	OvlFunc_common2_2f4
	cmp	r0, #0
	beq	.L8a
	mov	r0, r10
	bl	OvlFunc_common2_2f4
	cmp	r0, #0
	beq	.L1c
	mov	r2, r8
	mov	r3, r10
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldmia	r3!, {r0, r4}
	stmia	r2!, {r0, r4}
	mov	r1, r10
	mov	r4, r9
	ldr	r3, [r1, #4]
	ldr	r2, [r4, #4]
	mov	r0, r8
	and	r3, r2
	str	r3, [r0, #4]
	b	.L23e
.L8a:
	mov	r0, r10
	bl	OvlFunc_common2_2f4
	cmp	r0, #0
	beq	.L98
.L94:
	mov	r0, r9
	b	.L23e
.L98:
	mov	r1, r10
	ldr	r1, [r1, #8]
	mov	r2, r9
	ldr	r2, [r2, #8]
	mov	r14, r1
	mov	r1, r9
	mov	r3, r10
	ldr	r0, [r1, #0xc]
	ldr	r1, [r1, #0x10]
	mov	r4, r14
	ldr	r6, [r3, #0xc]
	ldr	r7, [r3, #0x10]
	sub	r3, r4, r2
	mov	r12, r2
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	r3, #0
	bge	.Lbe
	neg	r3, r3
.Lbe:
	cmp	r3, #0x3f
	bgt	.L12e
	cmp	r14, r12
	ble	.L104
	mov	r2, r12
	mov	r1, r14
	mov	r0, #1
	sub	r1, r2
	mov	r11, r0
	mov	r12, r1
.Ld2:
	mov	r3, #1
	ldr	r0, [sp, #4]
	neg	r3, r3
	add	r12, r3
	ldr	r3, [sp]
	lsl	r5, r0, #31
	ldr	r1, [sp]
	lsr	r0, r3, #1
	mov	r3, r5
	mov	r4, r11
	orr	r3, r0
	ldr	r0, [sp, #4]
	and	r1, r4
	lsr	r4, r0, #1
	mov	r0, r1
	orr	r0, r3
	mov	r2, #0
	str	r0, [sp]
	mov	r0, r2
	orr	r0, r4
	mov	r1, r12
	str	r0, [sp, #4]
	cmp	r1, #0
	bne	.Ld2
	mov	r12, r14
.L104:
	cmp	r12, r14
	ble	.L142
	mov	r2, #1
	mov	r11, r2
.L10c:
	mov	r3, #1
	lsl	r5, r7, #31
	mov	r1, r11
	lsr	r0, r6, #1
	add	r14, r3
	and	r1, r6
	mov	r2, #0
	mov	r3, r5
	lsr	r4, r7, #1
	orr	r3, r0
	mov	r6, r1
	mov	r7, r2
	orr	r6, r3
	orr	r7, r4
	cmp	r12, r14
	bgt	.L10c
	b	.L142
.L12e:
	cmp	r14, r12
	ble	.L13c
	mov	r0, #0
	mov	r1, #0
	str	r0, [sp]
	str	r1, [sp, #4]
	b	.L142
.L13c:
	mov	r14, r12
	mov	r6, #0
	mov	r7, #0
.L142:
	mov	r1, r10
	mov	r2, r9
	ldr	r0, [r1, #4]
	ldr	r3, [r2, #4]
	cmp	r0, r3
	beq	.L1f0
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	sub	r1, r6
	sbc	r2, r7
	cmp	r0, #0
	bne	.L166
	ldr	r3, [sp]
	ldr	r4, [sp, #4]
	mov	r2, r7
	mov	r1, r6
	sub	r1, r3
	sbc	r2, r4
.L166:
	cmp	r2, #0
	blt	.L17c
	mov	r3, #0
	mov	r4, r8
	str	r3, [r4, #4]
	mov	r0, r14
	mov	r3, r8
	str	r0, [r4, #8]
	str	r1, [r3, #0xc]
	str	r2, [r3, #0x10]
	b	.L192
.L17c:
	mov	r4, r8
	mov	r3, #1
	mov	r0, r14
	str	r3, [r4, #4]
	str	r0, [r4, #8]
	mov	r4, #0
	neg	r3, r1
	sbc	r4, r2
	mov	r1, r8
	str	r3, [r1, #0xc]
	str	r4, [r1, #0x10]
.L192:
	mov	r2, r8
	ldr	r4, [r2, #0xc]
	ldr	r5, [r2, #0x10]
	ldr	r1, =0xfffffff
	mov	r2, #1
	neg	r2, r2
	asr	r3, r2, #31
	add	r2, r4
	adc	r3, r5
	cmp	r3, r1
	bhi	.L206
	cmp	r3, r1
	bne	.L1b4
	mov	r0, #2
	neg	r0, r0
	cmp	r2, r0
	bhi	.L206
.L1b4:
	lsr	r2, r4, #31
	lsl	r3, r5, #1
	mov	r1, r2
	mov	r2, r8
	orr	r1, r3
	ldr	r3, [r2, #8]
	lsl	r0, r4, #1
	sub	r3, #1
	str	r0, [r2, #0xc]
	str	r1, [r2, #0x10]
	str	r3, [r2, #8]
	ldr	r6, =0xfffffff
	mov	r2, #1
	neg	r2, r2
	asr	r3, r2, #31
	add	r2, r0
	adc	r3, r1
	cmp	r3, r6
	bhi	.L206
	mov	r5, r1
	mov	r4, r0
	cmp	r3, r6
	bne	.L1b4
	mov	r4, #2
	neg	r4, r4
	cmp	r2, r4
	bhi	.L206
	mov	r5, r1
	mov	r4, r0
	b	.L1b4
.L1f0:
	mov	r1, r8
	mov	r2, r14
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r3, [sp]
	ldr	r4, [sp, #4]
	add	r6, r3
	adc	r7, r4
	mov	r4, r8
	str	r6, [r4, #0xc]
	str	r7, [r4, #0x10]
.L206:
	mov	r3, #3
	mov	r0, r8
	str	r3, [r0]
	ldr	r1, =0x1fffffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r1
	bls	.L23c
	ldr	r5, [r0, #0xc]
	ldr	r6, [r0, #0x10]
	mov	r2, #1
	mov	r3, r5
	and	r3, r2
	lsl	r2, r6, #31
	mov	r12, r2
	lsr	r0, r5, #1
	mov	r1, r12
	orr	r1, r0
	mov	r4, #0
	lsr	r2, r6, #1
	mov	r0, r8
	orr	r3, r1
	orr	r4, r2
	str	r3, [r0, #0xc]
	str	r4, [r0, #0x10]
	ldr	r3, [r0, #8]
	add	r3, #1
	str	r3, [r0, #8]
.L23c:
	mov	r0, r8
.L23e:
	add	sp, #8
	pop	{r3, r4, r5, r6}
	mov	r8, r3
	mov	r9, r4
	mov	r10, r5
	mov	r11, r6
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_common2_0

.thumb_func_start OvlFunc_common2_254
	push	{r4, r5, r6, lr}
	sub	sp, #0x4c
	add	r4, sp, #8
	add	r6, sp, #0x38
	mov	r5, sp
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	mov	r1, r6
	str	r2, [r5]
	str	r3, [r5, #4]
	bl	OvlFunc_common2_618
	add	r4, sp, #0x24
	mov	r0, r5
	mov	r1, r4
	bl	OvlFunc_common2_618
	mov	r1, r4
	add	r2, sp, #0x10
	mov	r0, r6
	bl	OvlFunc_common2_0
	bl	OvlFunc_common2_44c
	add	sp, #0x4c
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_common2_254

.thumb_func_start OvlFunc_common2_28c
	push	{r4, r5, r6, lr}
	sub	sp, #0x4c
	add	r4, sp, #8
	add	r6, sp, #0x38
	mov	r5, sp
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	mov	r1, r6
	str	r2, [r5]
	str	r3, [r5, #4]
	bl	OvlFunc_common2_618
	add	r4, sp, #0x24
	mov	r0, r5
	mov	r1, r4
	bl	OvlFunc_common2_618
	ldr	r3, [r4, #4]
	mov	r2, #1
	eor	r3, r2
	str	r3, [r4, #4]
	add	r2, sp, #0x10
	mov	r1, r4
	mov	r0, r6
	bl	OvlFunc_common2_0
	bl	OvlFunc_common2_44c
	add	sp, #0x4c
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_common2_28c

.thumb_func_start OvlFunc_common2_2cc
	ldr	r0, =.L1
	bx	lr
.func_end OvlFunc_common2_2cc

.thumb_func_start OvlFunc_common2_2d4
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L2e0
	mov	r2, #1
.L2e0:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_2d4

.thumb_func_start OvlFunc_common2_2e4
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L2f0
	mov	r2, #1
.L2f0:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_2e4

.thumb_func_start OvlFunc_common2_2f4
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L300
	mov	r2, #1
.L300:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_2f4

.thumb_func_start OvlFunc_common2_304
	push	{r4, r5, lr}
	sub	sp, #0x14
	mov	r5, sp
	mov	r3, #3
	lsr	r2, r0, #31
	str	r3, [r5]
	str	r2, [r5, #4]
	cmp	r0, #0
	bne	.L31c
	mov	r3, #2
	str	r3, [r5]
	b	.L36a
.L31c:
	mov	r3, #0x3c
	str	r3, [r5, #8]
	cmp	r2, #0
	beq	.L338
	mov	r3, #0x80
	lsl	r3, #24
	cmp	r0, r3
	bne	.L332
	ldr	r1, =0
	ldr	r0, .L374	@ 0xc1e00000
	b	.L370
.L332:
	neg	r3, r0
	asr	r4, r3, #31
	b	.L33c
.L338:
	mov	r3, r0
	asr	r4, r0, #31
.L33c:
	str	r3, [r5, #0xc]
	str	r4, [r5, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfffffff
	cmp	r3, r2
	bhi	.L36a
	mov	r0, r5
	mov	r12, r2
.L34c:
	ldr	r3, [r0, #0xc]
	ldr	r4, [r0, #0x10]
	lsr	r1, r3, #31
	lsl	r2, r4, #1
	mov	r4, r1
	lsl	r3, #1
	orr	r4, r2
	str	r3, [r0, #0xc]
	str	r4, [r0, #0x10]
	ldr	r3, [r0, #8]
	sub	r3, #1
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	cmp	r3, r12
	bls	.L34c
.L36a:
	mov	r0, r5
	bl	OvlFunc_common2_44c
.L370:
	add	sp, #0x14
	pop	{r4, r5, pc}

	.align	2, 0
.L374:
	.word	0xc1e00000
.func_end OvlFunc_common2_304

.thumb_func_start OvlFunc_common2_380
	push	{r4, lr}
	sub	sp, #0x1c
	mov	r3, sp
	add	r4, sp, #8
	str	r0, [r3]
	str	r1, [r3, #4]
	mov	r0, r3
	mov	r1, r4
	bl	OvlFunc_common2_618
	mov	r0, r4
	bl	OvlFunc_common2_40c
	cmp	r0, #0
	bne	.L3a8
	mov	r0, r4
	bl	OvlFunc_common2_3ec
	cmp	r0, #0
	beq	.L3ac
.L3a8:
	mov	r0, #0
	b	.L3e4
.L3ac:
	mov	r0, r4
	bl	OvlFunc_common2_3fc
	cmp	r0, #0
	bne	.L3c2
	ldr	r3, [r4, #8]
	mov	r0, #0
	cmp	r3, #0
	blt	.L3e4
	cmp	r3, #0x1e
	ble	.L3d0
.L3c2:
	ldr	r3, [r4, #4]
	neg	r0, r3
	orr	r0, r3
	ldr	r3, =0x7fffffff
	lsr	r0, #31
	add	r0, r3
	b	.L3e4
.L3d0:
	mov	r2, #0x3c
	sub	r2, r3
	ldr	r0, [r4, #0xc]
	ldr	r1, [r4, #0x10]
	bl	OvlFunc_common2_41c
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L3e4
	neg	r0, r0
.L3e4:
	add	sp, #0x1c
	pop	{r4, pc}
.func_end OvlFunc_common2_380

.thumb_func_start OvlFunc_common2_3ec
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L3f8
	mov	r2, #1
.L3f8:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_3ec

.thumb_func_start OvlFunc_common2_3fc
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L408
	mov	r2, #1
.L408:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_3fc

.thumb_func_start OvlFunc_common2_40c
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L418
	mov	r2, #1
.L418:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_40c

.thumb_func_start OvlFunc_common2_41c
	push	{r4, r5, r6, lr}
	mov	r6, r2
	cmp	r6, #0
	beq	.L44a
	mov	r3, #0x20
	sub	r3, r6
	cmp	r3, #0
	bgt	.L436
	neg	r3, r3
	mov	r4, r1
	mov	r5, #0
	lsr	r4, r3
	b	.L446
.L436:
	mov	r2, r1
	lsl	r2, r3
	mov	r3, r0
	lsr	r3, r6
	mov	r5, r1
	mov	r4, r3
	lsr	r5, r6
	orr	r4, r2
.L446:
	mov	r1, r5
	mov	r0, r4
.L44a:
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_common2_41c

.thumb_func_start OvlFunc_common2_44c
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r4, r0
	ldr	r3, [r4, #4]
	sub	sp, #8
	ldr	r5, [r4, #0xc]
	ldr	r6, [r4, #0x10]
	mov	r10, r3
	mov	r7, #0
	bl	OvlFunc_common2_5e8
	cmp	r0, #0
	beq	.L478
	ldr	r2, =0x80000
	ldr	r1, .L54c	@ 0
	mov	r4, r6
	mov	r3, r5
	orr	r4, r2
	ldr	r7, =0x7ff
	b	.L58c
.L478:
	mov	r0, r4
	bl	OvlFunc_common2_5f8
	cmp	r0, #0
	bne	.L51a
	mov	r0, r4
	bl	OvlFunc_common2_608
	cmp	r0, #0
	beq	.L492
	mov	r5, #0
	mov	r6, #0
	b	.L590
.L492:
	mov	r3, r6
	orr	r3, r5
	cmp	r3, #0
	beq	.L590
	ldr	r0, [r4, #8]
	ldr	r2, =0xfffffc02
	cmp	r0, r2
	bge	.L512
	sub	r2, r0
	cmp	r2, #0x38
	ble	.L4ae
	mov	r5, #0
	mov	r6, #0
	b	.L4dc
.L4ae:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #1
	lsl	r3, r2
	sub	r3, #1
	asr	r4, r3, #31
	and	r4, r6
	and	r3, r5
	orr	r3, r4
	cmp	r3, #0
	beq	.L4c8
	mov	r3, #1
	mov	r8, r3
.L4c8:
	mov	r1, r6
	mov	r0, r5
	bl	OvlFunc_common2_41c
	mov	r4, #0
	mov	r3, r8
	mov	r5, r0
	mov	r6, r1
	orr	r5, r3
	orr	r6, r4
.L4dc:
	mov	r3, #0xff
	mov	r1, r5
	and	r1, r3
	mov	r2, #0
	cmp	r1, #0x80
	bne	.L500
	cmp	r2, #0
	bne	.L500
	add	r3, #1
	mov	r1, r5
	and	r1, r3
	mov	r3, r2
	orr	r3, r1
	cmp	r3, #0
	beq	.L508
	mov	r3, #0x80
	mov	r4, #0
	b	.L504
.L500:
	mov	r3, #0x7f
	mov	r4, #0
.L504:
	add	r5, r3
	adc	r6, r4
.L508:
	ldr	r3, =0xfffffff
	cmp	r6, r3
	bls	.L582
	mov	r7, #1
	b	.L582
.L512:
	mov	r3, #0x80
	lsl	r3, #3
	cmp	r0, r3
	blt	.L522
.L51a:
	ldr	r7, =0x7ff
	mov	r5, #0
	mov	r6, #0
	b	.L590
.L522:
	ldr	r3, =0x3ff
	mov	r1, r5
	add	r7, r0, r3
	mov	r3, #0xff
	and	r1, r3
	mov	r2, #0
	cmp	r1, #0x80
	bne	.L564
	cmp	r2, #0
	bne	.L564
	add	r3, #1
	mov	r1, r5
	and	r1, r3
	mov	r3, r2
	orr	r3, r1
	cmp	r3, #0
	beq	.L56c
	mov	r3, #0x80
	mov	r4, #0
	b	.L568

	.align	2, 0
.L54c:
	.word	0
	.pool

.L564:
	mov	r3, #0x7f
	mov	r4, #0
.L568:
	add	r5, r3
	adc	r6, r4
.L56c:
	ldr	r3, =0x1fffffff
	cmp	r6, r3
	bls	.L582
	lsl	r1, r6, #31
	lsr	r2, r5, #1
	mov	r3, r1
	orr	r3, r2
	lsr	r4, r6, #1
	mov	r6, r4
	mov	r5, r3
	add	r7, #1
.L582:
	lsl	r1, r6, #24
	lsr	r2, r5, #8
	mov	r3, r1
	orr	r3, r2
	lsr	r4, r6, #8
.L58c:
	mov	r6, r4
	mov	r5, r3
.L590:
	mov	r0, sp
	ldr	r3, [r0, #4]
	ldr	r2, =0xfff00000
	ldr	r1, =0xfffff
	and	r3, r2
	and	r1, r6
	orr	r3, r1
	str	r3, [r0, #4]
	ldr	r3, .L5cc	@ 0x7ff
	ldrh	r2, [r0, #6]
	and	r7, r3
	ldr	r3, =0xffff800f
	lsl	r1, r7, #4
	and	r3, r2
	orr	r3, r1
	strh	r3, [r0, #6]
	mov	r3, r10
	ldrb	r2, [r0, #7]
	lsl	r1, r3, #7
	mov	r3, #0x7f
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #7]
	ldr	r3, [r0, #4]
	str	r5, [r0, #4]
	str	r3, [r0]
	ldr	r1, [r0, #4]
	ldr	r0, [r0]
	add	sp, #8
	b	.L5e0

	.align	2, 0
.L5cc:
	.word	0x7ff
	.pool

.L5e0:
	pop	{r3, r4}
	mov	r8, r3
	mov	r10, r4
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_common2_44c

.thumb_func_start OvlFunc_common2_5e8
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #1
	bhi	.L5f4
	mov	r2, #1
.L5f4:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_5e8

.thumb_func_start OvlFunc_common2_5f8
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #4
	bne	.L604
	mov	r2, #1
.L604:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_5f8

.thumb_func_start OvlFunc_common2_608
	push	{lr}
	ldr	r3, [r0]
	mov	r2, #0
	cmp	r3, #2
	bne	.L614
	mov	r2, #1
.L614:
	mov	r0, r2
	pop	{pc}
.func_end OvlFunc_common2_608

.thumb_func_start OvlFunc_common2_618
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r0, #4]
	sub	sp, #8
	mov	r2, sp
	str	r4, [r2]
	ldr	r3, [r0]
	str	r3, [r2, #4]
	lsl	r3, #12
	lsr	r6, r3, #12
	ldrh	r3, [r2, #6]
	lsl	r3, #17
	mov	r7, r1
	lsr	r1, r3, #21
	ldrb	r3, [r2, #7]
	lsr	r3, #7
	mov	r5, r4
	str	r3, [r7, #4]
	cmp	r1, #0
	bne	.L684
	mov	r3, r4
	orr	r3, r6
	cmp	r3, #0
	bne	.L64c
	mov	r3, #2
	str	r3, [r7]
	b	.L6d0
.L64c:
	ldr	r3, =0xfffffc02
	lsr	r1, r5, #24
	lsl	r2, r6, #8
	mov	r4, r1
	str	r3, [r7, #8]
	orr	r4, r2
	lsl	r3, r5, #8
	mov	r6, r4
	mov	r5, r3
	mov	r3, #3
	str	r3, [r7]
	ldr	r3, =0xfffffff
	cmp	r6, r3
	bhi	.L6ac
	mov	r12, r3
.L66a:
	lsr	r1, r5, #31
	lsl	r2, r6, #1
	mov	r4, r1
	lsl	r3, r5, #1
	orr	r4, r2
	mov	r6, r4
	mov	r5, r3
	ldr	r3, [r7, #8]
	sub	r3, #1
	str	r3, [r7, #8]
	cmp	r6, r12
	bls	.L66a
	b	.L6ac
.L684:
	ldr	r2, =0x7ff
	cmp	r1, r2
	bne	.L6b2
	mov	r3, r4
	orr	r3, r6
	cmp	r3, #0
	bne	.L698
	mov	r3, #4
	str	r3, [r7]
	b	.L6d0
.L698:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r4, r6
	mov	r3, #0
	and	r4, r2
	orr	r3, r4
	cmp	r3, #0
	beq	.L6aa
	mov	r3, #1
.L6aa:
	str	r3, [r7]
.L6ac:
	str	r5, [r7, #0xc]
	str	r6, [r7, #0x10]
	b	.L6d0
.L6b2:
	ldr	r2, =0xfffffc01
	add	r3, r1, r2
	lsr	r1, r5, #24
	lsl	r2, r6, #8
	mov	r4, r1
	orr	r4, r2
	ldr	r1, =0
	ldr	r2, =0x10000000
	str	r3, [r7, #8]
	mov	r3, #3
	str	r3, [r7]
	orr	r4, r2
	lsl	r3, r5, #8
	str	r3, [r7, #0xc]
	str	r4, [r7, #0x10]
.L6d0:
	add	sp, #8
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_common2_618

	.section .data

.L1:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1888, (0x189c-0x1888)
