	.include "macros.inc"

.thumb_func_start OvlFunc_30
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
.func_end OvlFunc_30

.thumb_func_start OvlFunc_48
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
	beq	.L96
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
	b	.L98
.L96:
	mov	r0, #0
.L98:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_48

.thumb_func_start OvlFunc_a0
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
	beq	.Lfa
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
	b	.Lfc
.Lfa:
	mov	r0, #0
.Lfc:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_a0

.thumb_func_start OvlFunc_104
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
.func_end OvlFunc_104

.thumb_func_start OvlFunc_13c
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
	beq	.L17a
	cmp	r7, #0
	beq	.L17a
	mov	r3, #0x18
	ldrsh	r0, [r7, r3]
	mov	r2, r6
	b	.L17e
.L17a:
	mov	r2, r6
	mov	r0, #0xde
.L17e:
	mov	r1, r5
	mov	r3, r8
	bl	__Func_c150
	mov	r6, r0
	cmp	r6, #0
	bne	.L18e
	b	.L2f6
.L18e:
	ldr	r1, [r6, #0x50]
	mov	r8, r1
	mov	r1, r10
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	mov	r0, r6
	bl	__Func_c300
	mov	r3, r10
	ldr	r2, =.L1bb4
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
	ldr	r3, =OvlFunc_104
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
	beq	.L2f6
	cmp	r7, #0
	beq	.L2f6
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.L21c
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	__Func_929d8
.L21c:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L248
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
.L248:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r10
	and	r2, r3
	cmp	r2, #0
	beq	.L25c
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.L25c:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L2a6
	ldr	r3, =.L1bb4
	mov	r1, r11
	ldr	r5, [r3, r1]
	cmp	r2, #0
	beq	.L28a
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
	b	.L2a0
.L28a:
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
.L2a0:
	bl	_Func_af0
	str	r0, [r6, #0x34]
.L2a6:
	mov	r3, #0x80
	lsl	r3, #14
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.L2c2
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	ldr	r1, [r7, #0x1c]
	mov	r0, r6
	bl	__Func_c2d8
.L2c2:
	mov	r3, #0x80
	lsl	r3, #15
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2d4
	ldrh	r3, [r7, #0x20]
	mov	r1, r8
	strh	r3, [r1, #0x1e]
.L2d4:
	mov	r3, #0x80
	lsl	r3, #16
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2e6
	ldrh	r3, [r7, #0x22]
	ldr	r1, [sp]
	strh	r3, [r1]
.L2e6:
	mov	r3, #0x80
	lsl	r3, #17
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L2f6
	ldr	r3, [r7, #0x24]
	str	r3, [r6, #0x6c]
.L2f6:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13c

.thumb_func_start OvlFunc_314
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e8c
	mov	r5, r0
	ldr	r2, [r3]
	mov	r6, r5
	mov	r8, r2
	add	r6, #0x64
	mov	r2, #0x12
	ldr	r7, [r3, #0x30]
	mov	r10, r2
	mov	r3, #0
	ldrh	r2, [r6]
	mov	r9, r3
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L342
	mov	r0, #0xf
	b	.L344
.L342:
	mov	r0, #0xe
.L344:
	bl	__Func_92054
	mov	r1, r0
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0
	bl	OvlFunc_1674
	cmp	r0, #0
	bne	.L394
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r1, r0
	cmp	r3, #0
	bne	.L378
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L38a
.L378:
	mov	r3, #0x1a
	ldrh	r2, [r6]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L38a
	mov	r2, #1
	mov	r9, r2
.L38a:
	mov	r0, r5
	mov	r2, r10
	mov	r3, r9
	bl	OvlFunc_1674
.L394:
	mov	r0, #0
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_314

.thumb_func_start OvlFunc_3ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_1e8c
	mov	r7, r0
	mov	r2, #0
	ldr	r6, [r3]
	ldr	r5, [r3, #0x30]
	mov	r3, #0x12
	mov	r10, r2
	mov	r8, r3
	mov	r2, #0x80
	ldr	r3, [r7, #0x38]
	lsl	r2, #24
	mov	r0, #0
	cmp	r3, r2
	beq	.L402
	bl	__Func_92054
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r1, r0
	cmp	r3, #0
	bne	.L3ee
	ldr	r2, =0xea4
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L3f6
.L3ee:
	mov	r3, #0x1a
	mov	r2, #1
	mov	r8, r3
	mov	r10, r2
.L3f6:
	mov	r0, r7
	mov	r2, r8
	mov	r3, r10
	bl	OvlFunc_1674
	mov	r0, #0
.L402:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3ac

.thumb_func_start OvlFunc_418
	ldr	r0, =.L1f5c
	bx	lr
.func_end OvlFunc_418

.thumb_func_start OvlFunc_420
	mov	r0, #0
	bx	lr
.func_end OvlFunc_420

.thumb_func_start OvlFunc_424
	ldr	r0, =.L2094
	bx	lr
.func_end OvlFunc_424

.thumb_func_start OvlFunc_42c
	push	{lr}
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43c
	ldr	r0, =.L227c
	b	.L43e
.L43c:
	ldr	r0, =.L20cc
.L43e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_42c

.thumb_func_start OvlFunc_450
	push	{lr}
	mov	r0, #2
	bl	__Func_77394
	mov	r3, #0x8c
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	pop	{r1}
	bx	r1
.func_end OvlFunc_450

.thumb_func_start OvlFunc_464
	push	{lr}
	bl	__Func_bf65c
	mov	r0, #2
	bl	__Func_77394
	add	r0, #0xf8
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L49a
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	mov	r0, #2
	bl	__Func_7a498
	mov	r0, #0x7e
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_77428
	mov	r0, #2
	bl	__Func_77428
.L49a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_464

.thumb_func_start OvlFunc_4a0
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x855
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4ba
	ldr	r0, =0x856
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4cc
.L4ba:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x13
	bl	__Func_91e9c
	b	.L59e
.L4cc:
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L4e4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L4e4:
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__Func_92064
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x14
	bne	.L50c
	mov	r1, #0xc8
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	b	.L534
.L50c:
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_933d4
	mov	r0, #0xe0
	mov	r1, #1
	mov	r2, #0xa2
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	mov	r0, #2
	mov	r1, #0xe0
	mov	r2, #0xa2
	bl	__Func_921c4
	bl	__Func_93530
.L534:
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1327
	bl	__Func_92b94
	ldr	r0, =0x9002
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	bl	OvlFunc_450
	cmp	r0, #0
	beq	.L57c
	ldr	r0, =0x132a
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	bl	OvlFunc_464
	mov	r0, #0x14
	bl	__Func_30f8
.L57c:
	mov	r0, #2
	bl	__Func_91890
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x13
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
.L59e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4a0

.thumb_func_start OvlFunc_5c8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_1776c
	ldr	r0, =0x29dc
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5c8

.thumb_func_start OvlFunc_5f0
	push	{lr}
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	beq	.L600
	ldr	r0, =.L2630
	b	.L602
.L600:
	ldr	r0, =.L2414
.L602:
	pop	{r1}
	bx	r1
.func_end OvlFunc_5f0

.thumb_func_start OvlFunc_614
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1223
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_173c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L64e
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L64e:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_614

.thumb_func_start OvlFunc_674
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1229
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_173c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L6b6
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L6b6:
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_674

.thumb_func_start OvlFunc_6d0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x122f
	bl	__Func_92b94
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_173c
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L70a
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L70a:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_6d0

.thumb_func_start OvlFunc_724
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1232
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_173c
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L75e
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L75e:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_724

.thumb_func_start OvlFunc_778
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1227
	bl	__Func_92b94
	mov	r0, #0xb
	bl	OvlFunc_90c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_778

.thumb_func_start OvlFunc_798
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x122e
	bl	__Func_92b94
	mov	r0, #0x10
	bl	OvlFunc_90c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_798

.thumb_func_start OvlFunc_7b8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1235
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #2
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_173c
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_7b8

.thumb_func_start OvlFunc_7ec
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xe
	bl	__Func_92054
	mov	r6, r0
	mov	r3, #6
	ldrsh	r2, [r6, r3]
	mov	r5, r6
	add	r5, #0x64
	mov	r8, r2
	ldr	r3, =2
	ldrh	r2, [r5]
	orr	r3, r2
	strh	r3, [r5]
	bl	__Func_916b0
	ldr	r0, =0x122c
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #2
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_173c
	mov	r1, #0xa
	mov	r0, #0xe
	bl	OvlFunc_1724
	mov	r2, r8
	strh	r2, [r6, #6]
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91750
	b	.L848

	.pool_aligned

.L848:
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7ec

.thumb_func_start OvlFunc_85c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xf
	bl	__Func_92054
	mov	r6, r0
	mov	r3, #6
	ldrsh	r2, [r6, r3]
	mov	r5, r6
	add	r5, #0x64
	mov	r8, r2
	ldr	r3, =2
	ldrh	r2, [r5]
	orr	r3, r2
	strh	r3, [r5]
	bl	__Func_916b0
	ldr	r0, =0x122d
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #2
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_173c
	mov	r1, #0xa
	mov	r0, #0xf
	bl	OvlFunc_1724
	mov	r2, r8
	strh	r2, [r6, #6]
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91750
	b	.L8b8

	.pool_aligned

.L8b8:
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_85c

.thumb_func_start OvlFunc_8cc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x12c0
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_173c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0x15
	bl	__Func_937b8
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92c40
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_8cc

.thumb_func_start OvlFunc_90c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, r5
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, r5
	mov	r2, #2
	mov	r1, #0
	bl	OvlFunc_173c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_90c

.thumb_func_start OvlFunc_938
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	bl	__Func_92054
	mov	r3, #0
	mov	r5, r0
	add	r5, #0x5b
	mov	r8, r3
	mov	r3, #1
	strb	r3, [r5]
	bl	__Func_916b0
	mov	r0, r6
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	mov	r3, r8
	strb	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_938

.thumb_func_start OvlFunc_97c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1330
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_173c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L9b6
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L9b6:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_97c

.thumb_func_start OvlFunc_9d0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1335
	bl	__Func_92b94
	mov	r0, #0xb
	bl	OvlFunc_90c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_9d0

.thumb_func_start OvlFunc_9f0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1336
	bl	__Func_92b94
	mov	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.La16
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.La16:
	mov	r0, #0xc
	bl	OvlFunc_90c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_9f0

.thumb_func_start OvlFunc_a2c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1338
	bl	__Func_92b94
	mov	r0, #0xd
	bl	OvlFunc_90c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_a2c

.thumb_func_start OvlFunc_a4c
	push	{r5, r6, r7, lr}
	mov	r0, #0xe
	bl	__Func_92054
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	ldrh	r2, [r5]
	mov	r3, #6
	ldrsh	r7, [r6, r3]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r5]
	bl	__Func_916b0
	ldr	r0, =0x1339
	bl	__Func_92b94
	mov	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.La98
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.La98

	.pool_aligned

.La98:
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #2
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_173c
	mov	r1, #0xa
	mov	r0, #0xe
	bl	OvlFunc_1724
	mov	r0, #1
	strh	r7, [r6, #6]
	bl	__Func_30f8
	bl	__Func_91750
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a4c

.thumb_func_start OvlFunc_acc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xf
	bl	__Func_92054
	mov	r6, r0
	mov	r3, #6
	ldrsh	r2, [r6, r3]
	mov	r5, r6
	add	r5, #0x64
	mov	r8, r2
	ldr	r3, =2
	ldrh	r2, [r5]
	orr	r3, r2
	strh	r3, [r5]
	bl	__Func_916b0
	ldr	r0, =0x133b
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #2
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_173c
	mov	r1, #0xa
	mov	r0, #0xf
	bl	OvlFunc_1724
	mov	r2, r8
	strh	r2, [r6, #6]
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91750
	b	.Lb28

	.pool_aligned

.Lb28:
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_acc

.thumb_func_start OvlFunc_b3c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x133c
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_173c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.Lb7e
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lb7e:
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_b3c

.thumb_func_start OvlFunc_b98
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x133f
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_173c
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.Lbd2
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lbd2:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_b98

.thumb_func_start OvlFunc_bec
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1342
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #2
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_173c
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_924d4
	mov	r0, #0xe7
	bl	__Func_78698
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lc40
	ldr	r0, =0x858
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc40
	ldr	r3, =iwram_1ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.Lc40:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_bec

.thumb_func_start OvlFunc_c54
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x137f
	bl	__Func_92b94
	mov	r2, #2
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_173c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_c54

.thumb_func_start OvlFunc_c8c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lca4
	ldr	r0, =0x1239
	bl	__Func_92b94
	b	.Lcaa
.Lca4:
	ldr	r0, =0x1346
	bl	__Func_92b94
.Lcaa:
	mov	r0, #0xb
	bl	OvlFunc_938
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_c8c

.thumb_func_start OvlFunc_cc4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lcdc
	ldr	r0, =0x123b
	bl	__Func_92b94
	b	.Lce2
.Lcdc:
	ldr	r0, =0x1348
	bl	__Func_92b94
.Lce2:
	mov	r0, #0xd
	bl	OvlFunc_938
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_cc4

.thumb_func_start OvlFunc_cfc
	push	{lr}
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__Func_916b0
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld30
	ldr	r0, =0x123c
	bl	__Func_92b94
	b	.Ld50

	.pool_aligned

.Ld30:
	ldr	r0, =0x1349
	bl	__Func_92b94
	mov	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld50
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Ld50:
	mov	r0, #0xe
	bl	OvlFunc_938
	bl	__Func_91750
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r2, [r0]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_cfc

.thumb_func_start OvlFunc_d78
	push	{lr}
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__Func_916b0
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldac
	ldr	r0, =0x123d
	bl	__Func_92b94
	b	.Ldb2

	.pool_aligned

.Ldac:
	ldr	r0, =0x134b
	bl	__Func_92b94
.Ldb2:
	mov	r0, #0xf
	bl	OvlFunc_938
	bl	__Func_91750
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x64
	ldrh	r2, [r0]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_d78

.thumb_func_start OvlFunc_dd4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldec
	ldr	r0, =0x123e
	bl	__Func_92b94
	b	.Ldf2
.Ldec:
	ldr	r0, =0x134c
	bl	__Func_92b94
.Ldf2:
	mov	r0, #0x10
	bl	OvlFunc_938
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_dd4

.thumb_func_start OvlFunc_e0c
	push	{r5, lr}
	mov	r0, #0x13
	bl	__Func_92054
	mov	r5, r0
	mov	r3, #1
	add	r5, #0x5b
	strb	r3, [r5]
	bl	__Func_916b0
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le40
	ldr	r0, =0x1241
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #2
	bl	__Func_9163c
	b	.Le58
.Le40:
	ldr	r0, =0x858
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le52
	ldr	r0, =0x13ab
	bl	__Func_92b94
	b	.Le58
.Le52:
	ldr	r0, =0x134e
	bl	__Func_92b94
.Le58:
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	mov	r3, #0
	strb	r3, [r5]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e0c

.thumb_func_start OvlFunc_e84
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x12c1
	bl	__Func_92b94
	mov	r0, #0x15
	bl	OvlFunc_938
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_e84

.thumb_func_start OvlFunc_ea4
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79358
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_ea4

.thumb_func_start OvlFunc_ecc
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79374
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x17
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_ecc

.thumb_func_start OvlFunc_ef4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r5, r0
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, r6
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9218c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r8
	bl	__Func_91e9c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ef4

.thumb_func_start OvlFunc_f3c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L2828
	mov	r1, #0x38
	mov	r2, #0x13
	bl	__Func_10560
	mov	r0, #0xcc
	mov	r1, #0xa0
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #5
	bl	OvlFunc_ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_f3c

.thumb_func_start OvlFunc_f64
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L283e
	mov	r1, #0x32
	mov	r2, #0x12
	bl	__Func_10560
	mov	r0, #0x9c
	mov	r1, #0x98
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #6
	bl	OvlFunc_ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_f64

.thumb_func_start OvlFunc_f8c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L2854
	mov	r1, #0x2c
	mov	r2, #0x11
	bl	__Func_10560
	mov	r1, #0x90
	lsl	r1, #1
	mov	r0, #0xd8
	mov	r2, #7
	bl	OvlFunc_ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_f8c

.thumb_func_start OvlFunc_fb4
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_f9080
	ldr	r0, =.L286a
	mov	r1, #0x36
	mov	r2, #0xd
	bl	__Func_10560
	mov	r3, #0x17
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r0, #0xbc
	strb	r3, [r6, #9]
	lsl	r0, #1
	mov	r1, #0xe0
	mov	r2, #8
	bl	OvlFunc_ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fb4

.thumb_func_start OvlFunc_1010
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_f9080
	ldr	r0, =.L2880
	mov	r1, #0x31
	mov	r2, #0xa
	bl	__Func_10560
	mov	r3, #0x12
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r0, #0x94
	strb	r3, [r6, #9]
	lsl	r0, #1
	mov	r1, #0xb0
	mov	r2, #9
	bl	OvlFunc_ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1010

.thumb_func_start OvlFunc_106c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L2896
	mov	r1, #0x26
	mov	r2, #6
	bl	__Func_10560
	mov	r0, #0x78
	mov	r1, #0x90
	mov	r2, #0xa
	bl	OvlFunc_ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_106c

.thumb_func_start OvlFunc_1090
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r0, #0xbc
	mov	r8, r2
	bl	__Func_f9080
	mov	r5, #2
	mov	r0, #0x2a
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0x28
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x28
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #4
	bl	__Func_9163c
	mov	r3, #3
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r6, #0x23
	mov	r0, #0x21
	mov	r1, #0x15
	mov	r2, #2
	mov	r3, #2
	bl	__Func_10704
	ldrb	r2, [r6]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r8
	strb	r3, [r6]
	ldrb	r3, [r2, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r1, #0x88
	mov	r2, r8
	strb	r3, [r2, #9]
	lsl	r1, #1
	mov	r0, #0x40
	mov	r2, #0xb
	bl	OvlFunc_ef4
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1090

.thumb_func_start OvlFunc_113c
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_f9080
	ldr	r0, =.L28ac
	mov	r1, #0x23
	mov	r2, #9
	bl	__Func_10560
	mov	r3, #4
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
	mov	r0, #0x48
	mov	r1, #0xa0
	mov	r2, #0xc
	bl	OvlFunc_ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_113c

.thumb_func_start OvlFunc_1198
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r1, #0x84
	lsl	r1, #1
	mov	r0, #0x98
	mov	r2, #0xd
	bl	OvlFunc_ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1198

.thumb_func_start OvlFunc_11b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r8, r2
	mov	r6, r1
	mov	r10, r3
	bl	__Func_92054
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r7, r0
	lsl	r1, #10
	mov	r0, r5
	lsl	r2, #9
	bl	__Func_92064
	mov	r3, #0x80
	lsl	r3, #8
	mov	r2, r10
	str	r3, [r7, #0x48]
	mov	r3, #0
	str	r3, [r7, #0x44]
	str	r2, [r7, #0x28]
	mov	r0, r7
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, r6
	mov	r2, r8
	bl	__Func_92158
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	lsl	r6, #16
	mov	r0, r5
	mov	r1, r6
	mov	r2, r8
	bl	__Func_923e4
	mov	r5, #0x3c
	b	.L120c
.L120a:
	sub	r5, #1
.L120c:
	cmp	r5, #0
	beq	.L121e
	mov	r0, #1
	bl	__Func_30f8
	mov	r2, #0x2a
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	bne	.L120a
.L121e:
	mov	r0, r7
	mov	r1, #1
	bl	__Func_c528
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x48]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11b0

.thumb_func_start OvlFunc_1238
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x64
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x867
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12b2
	mov	r1, #0x81
	mov	r0, #0x17
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x17
	bl	__Func_92560
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x17
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc4
	mov	r3, #0xe0
	lsl	r3, #11
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x17
	bl	OvlFunc_11b0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xcc
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x68
	bl	__Func_921c4
	mov	r1, #0xcc
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x78
	bl	__Func_921c4
	ldr	r0, =0x867
	bl	__Func_79358
.L12b2:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1238

.thumb_func_start OvlFunc_12c0
	push	{lr}
	mov	r0, #0xe7
	bl	__Func_78a08
	bl	__Func_916b0
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0xcc
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x13
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_92560
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0xc4
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x13
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__Func_92adc
	ldr	r0, =0x858
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_12c0

.thumb_func_start OvlFunc_136c
	push	{r5, r6, r7, lr}
	ldr	r0, =0x87a
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1380
	mov	r0, #0xe
	bl	__Func_91e9c
.L1380:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L13a0
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
.L13a0:
	mov	r0, #0x80
	mov	r2, #0xd2
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_a0
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r5, =OvlFunc_314
	mov	r3, r0
	add	r3, #0x64
	mov	r7, #1
	strh	r7, [r3]
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__Func_92054
	mov	r3, r0
	mov	r6, #0
	add	r3, #0x64
	strh	r6, [r3]
	str	r5, [r0, #0x6c]
	ldr	r0, =0x858
	bl	__Func_79338
	cmp	r0, #0
	beq	.L13ea
	mov	r1, #0xd8
	mov	r2, #0xc4
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
.L13ea:
	ldr	r0, =0x853
	bl	__Func_79338
	mov	r5, r0
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.L140e
	mov	r3, r7
	and	r3, r5
	cmp	r3, #0
	beq	.L140e
	mov	r0, #0x15
	bl	__Func_92054
	ldr	r3, =OvlFunc_3ac
	str	r3, [r0, #0x6c]
.L140e:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	bgt	.L14fe
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L14fe
	ldr	r0, =0x867
	bl	__Func_79374
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.L14fe
	ldr	r0, =0x856
	bl	__Func_79338
	cmp	r0, #0
	beq	.L14fe
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L145a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L145a:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #1
	bne	.L1472
	mov	r1, #0xc8
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	b	.L1480
.L1472:
	mov	r1, #0xe0
	mov	r2, #0xa2
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
.L1480:
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92848
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	ldr	r0, =0x1328
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L14e2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L14e2:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #0
	bl	__Func_917d0
	bl	__Func_91750
.L14fe:
	ldr	r0, =0x867
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1516
	mov	r1, #0xcc
	mov	r2, #0xf0
	mov	r0, #0x17
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
.L1516:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L15dc
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	bne	.L15d4
	ldr	r0, =0x856
	bl	__Func_79338
	cmp	r0, #0
	beq	.L15d4
	mov	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L15d4
	bl	__Func_916b0
	mov	r1, #0xa0
	mov	r2, #0x9b
	mov	r0, #2
	lsl	r1, #14
	lsl	r2, #17
	bl	__Func_923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92848
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	ldr	r0, =0x1328
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L15b8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L15b8:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #0
	bl	__Func_917d0
	bl	__Func_91750
.L15d4:
	ldr	r0, =0x12f
	bl	__Func_79374
	b	.L15f4
.L15dc:
	cmp	r3, #0xd
	bne	.L15f4
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	beq	.L15f4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L15f4:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_136c

.thumb_func_start OvlFunc_1638
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
.func_end OvlFunc_1638

.thumb_func_start OvlFunc_1674
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	mov	r7, r8
	mov	r5, r6
	add	r7, #8
	add	r5, #8
	mov	r10, r2
	mov	r0, r7
	mov	r2, #0
	mov	r1, r5
	mov	r11, r3
	mov	r9, r2
	bl	OvlFunc_1638
	cmp	r0, r10
	blt	.L16a8
	mov	r3, r11
	cmp	r3, #0
	beq	.L16fe
.L16a8:
	mov	r2, r8
	ldr	r0, [r2, #0x10]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r7]
	sub	r0, r3
	ldr	r3, [r5]
	sub	r1, r3
	bl	__Func_44d0
	ldr	r3, =0xfffff000
	lsl	r0, #16
	mov	r2, #0x80
	lsr	r0, #16
	lsl	r2, #5
	add	r4, r0, r3
	add	r1, r0, r2
	mov	r3, #0xf0
	ldrh	r2, [r6, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L16e8
	cmp	r1, r3
	beq	.L16e8
	cmp	r4, r3
	beq	.L16e8
	mov	r3, r11
	cmp	r3, #0
	beq	.L170e
.L16e8:
	mov	r2, r6
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	mov	r2, #1
	mov	r9, r2
	b	.L170e
.L16fe:
	mov	r3, r6
	add	r3, #0x5b
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #2
	bl	__Func_c300
.L170e:
	mov	r0, r9
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1674

.thumb_func_start OvlFunc_1724
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1724

.thumb_func_start OvlFunc_173c
	push	{r5, lr}
	mov	r5, r2
	mov	r2, #0
	bl	__Func_92848
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_173c

.thumb_func_start OvlFunc_1754
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #0x30]
	add	r3, r2
	str	r3, [r6, #8]
	str	r3, [r6, #0x38]
	mov	r3, r6
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1774
	ldr	r3, [r6, #0xc]
	ldr	r2, [r6, #0x34]
	b	.L1784
.L1774:
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #0x34]
	add	r3, r2
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x40]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #3
.L1784:
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	ldr	r5, [r6, #0x30]
	mov	r1, #0x1c
	mov	r0, r5
	bl	_Func_af0
	sub	r5, r0
	str	r5, [r6, #0x30]
	ldr	r5, [r6, #0x34]
	mov	r1, #0x1c
	mov	r0, r5
	bl	_Func_af0
	sub	r5, r0
	str	r5, [r6, #0x34]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1754

.thumb_func_start OvlFunc_17ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0x13
	bl	__Func_92054
	mov	r8, r0
	cmp	r0, #0
	bne	.L17c6
	b	.L18da
.L17c6:
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	lsl	r5, #3
	mov	r3, r0
	lsr	r5, #16
	mov	r0, r8
	lsl	r3, #3
	ldr	r2, [r0, #8]
	sub	r5, #4
	lsr	r3, #16
	ldr	r1, [r0, #0x10]
	sub	r3, #4
	lsl	r5, #16
	add	r5, r2
	lsl	r3, #16
	ldr	r2, [r0, #0xc]
	add	r3, r1
	mov	r0, #0xac
	mov	r1, r5
	bl	__Func_c150
	mov	r6, r0
	cmp	r6, #0
	beq	.L18da
	ldr	r1, [r6, #0x50]
	mov	r10, r1
	bl	__Func_4458
	mov	r3, #1
	and	r0, r3
	cmp	r0, #1
	bne	.L181e
	mov	r0, r6
	mov	r1, #3
	bl	__Func_c300
	ldr	r1, =.L28c4
	mov	r0, r6
	bl	__Func_c2d8
	b	.L182e
.L181e:
	mov	r0, r6
	mov	r1, #2
	bl	__Func_c300
	ldr	r1, =.L28dc
	mov	r0, r6
	bl	__Func_c2d8
.L182e:
	mov	r2, #0
	mov	r3, r6
	mov	r9, r2
	add	r3, #0x55
	mov	r0, r9
	strb	r0, [r3]
	mov	r3, #2
	and	r3, r7
	cmp	r3, #0
	beq	.L1882
	bl	__Func_4458
	mov	r1, #0xa
	bl	_Func_b50
	mov	r5, #1
	and	r7, r5
	mov	r3, r7
	eor	r3, r5
	lsl	r3, #2
	add	r0, #5
	add	r0, r3
	ldr	r3, =0x3332
	mul	r3, r7
	ldr	r1, =0xffffe667
	add	r3, r1
	mul	r3, r0
	str	r3, [r6, #0x34]
	bl	__Func_4458
	mov	r1, #0xf
	bl	_Func_b50
	ldr	r3, =0x1999
	sub	r0, #7
	mul	r3, r0
	str	r3, [r6, #0x30]
	mov	r3, r6
	add	r3, #0x64
	mov	r2, r9
	strh	r2, [r3]
	b	.L18b4
.L1882:
	bl	__Func_4458
	mov	r1, #0xa
	bl	_Func_b50
	ldr	r3, =0x3332
	mul	r3, r7
	ldr	r1, =0xffffe667
	add	r0, #8
	add	r3, r1
	mul	r3, r0
	str	r3, [r6, #0x30]
	bl	__Func_4458
	mov	r1, #0xe
	bl	_Func_b50
	ldr	r3, =0x1999
	add	r0, #1
	mul	r3, r0
	mov	r2, r6
	str	r3, [r6, #0x34]
	add	r2, #0x64
	mov	r3, #1
	strh	r3, [r2]
.L18b4:
	ldr	r3, =OvlFunc_1754
	mov	r2, r10
	add	r2, #0x26
	str	r3, [r6, #0x6c]
	mov	r3, #0
	strb	r3, [r2]
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r10
	ldrb	r1, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	mov	r0, r10
	strb	r3, [r0, #9]
.L18da:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17ac

	.section .data

	.incbin "overlays/rom_793768/orig.bin", 0x1b0c, (0x1bb4-0x1b0c)
.L1bb4:
	.incbin "overlays/rom_793768/orig.bin", 0x1bb4, (0x1f5c-0x1bb4)
.L1f5c:
	.incbin "overlays/rom_793768/orig.bin", 0x1f5c, (0x2094-0x1f5c)
.L2094:
	.incbin "overlays/rom_793768/orig.bin", 0x2094, (0x20cc-0x2094)
.L20cc:
	.incbin "overlays/rom_793768/orig.bin", 0x20cc, (0x227c-0x20cc)
.L227c:
	.incbin "overlays/rom_793768/orig.bin", 0x227c, (0x2414-0x227c)
.L2414:
	.incbin "overlays/rom_793768/orig.bin", 0x2414, (0x2630-0x2414)
.L2630:
	.incbin "overlays/rom_793768/orig.bin", 0x2630, (0x2828-0x2630)
.L2828:
	.incbin "overlays/rom_793768/orig.bin", 0x2828, (0x283e-0x2828)
.L283e:
	.incbin "overlays/rom_793768/orig.bin", 0x283e, (0x2854-0x283e)
.L2854:
	.incbin "overlays/rom_793768/orig.bin", 0x2854, (0x286a-0x2854)
.L286a:
	.incbin "overlays/rom_793768/orig.bin", 0x286a, (0x2880-0x286a)
.L2880:
	.incbin "overlays/rom_793768/orig.bin", 0x2880, (0x2896-0x2880)
.L2896:
	.incbin "overlays/rom_793768/orig.bin", 0x2896, (0x28ac-0x2896)
.L28ac:
	.incbin "overlays/rom_793768/orig.bin", 0x28ac, (0x28c4-0x28ac)
.L28c4:
	.incbin "overlays/rom_793768/orig.bin", 0x28c4, (0x28dc-0x28c4)
.L28dc:
	.incbin "overlays/rom_793768/orig.bin", 0x28dc
