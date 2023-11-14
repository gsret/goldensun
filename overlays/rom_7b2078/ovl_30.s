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
	ldr	r2, =.L462c
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
	ldr	r3, =.L462c
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
	push	{lr}
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_314

.thumb_func_start OvlFunc_324
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r0
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_44d0
	strh	r0, [r5, #6]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_324

.thumb_func_start OvlFunc_34c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L364
	ldr	r0, =.L47a8
	b	.L366
.L364:
	ldr	r0, =.L4838
.L366:
	pop	{r1}
	bx	r1
.func_end OvlFunc_34c

.thumb_func_start OvlFunc_37c
	mov	r0, #0
	bx	lr
.func_end OvlFunc_37c

.thumb_func_start OvlFunc_380
	ldr	r0, =.L48c8
	bx	lr
.func_end OvlFunc_380

.thumb_func_start OvlFunc_388
	push	{r5, lr}
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L3a0
	ldr	r0, =.L48f0
	b	.L3f4
.L3a0:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L3b2
	ldr	r0, =.L4ae8
	b	.L3f4
.L3b2:
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3ea
	ldr	r0, =.L4998
	ldr	r1, =0x895
	mov	r3, r0
	add	r3, #0x7a
	strh	r1, [r3]
	add	r3, #0x30
	strh	r1, [r3]
	mov	r2, r0
	mov	r3, #0x90
	add	r2, #0xc8
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0xf8
	add	r2, #8
	lsl	r3, #16
	str	r3, [r2]
	mov	r2, #0x85
	lsl	r2, #1
	add	r3, r0, r2
	add	r2, #0x18
	strh	r1, [r3]
	add	r3, r0, r2
	strh	r1, [r3]
.L3ea:
	ldr	r5, =.L4998
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
.L3f4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_388

.thumb_func_start OvlFunc_414
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x178a
	bl	__Func_92b94
	mov	r0, #0x89
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #4
	strh	r3, [r2]
.L43c:
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L45a
	mov	r0, #0x89
	lsl	r0, #4
	bl	__Func_79358
	b	.L46a
.L45a:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L46a:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_414

.thumb_func_start OvlFunc_484
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x88f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4a8
	ldr	r0, =0x17d6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_93054
	bl	__Func_91750
	b	.L500
.L4a8:
	ldr	r0, =0x1794
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L4f4
	ldr	r5, =iwram_1ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L4f4
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L4f4:
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L500:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_484

.thumb_func_start OvlFunc_518
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #9
	sub	sp, #0x38
	bl	__Func_92054
	mov	r6, r0
	bl	__Func_916b0
	ldr	r0, =0x17b4
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0xc4
	mov	r0, #0
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x84
	bl	__Func_f9080
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r0, #0x28]
	mov	r0, #9
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #11
	mov	r9, r2
	str	r2, [r0, #0x48]
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r2, #0xc4
	mov	r1, #0x98
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x48]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	mov	r10, r3
	bl	__Func_92adc
	mov	r0, #0x84
	bl	__Func_f9080
	add	r4, sp, #0x10
	mov	r3, #7
	str	r3, [r4, #4]
	ldr	r2, [r6, #0x10]
	mov	r8, r4
	mov	r3, #0x80
	mov	r4, r10
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	mov	r5, #0
	str	r4, [sp, #8]
	add	r2, r9
	mov	r4, r8
	lsl	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r2, [r6, #0x10]
	mov	r3, r10
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	mov	r4, r8
	str	r3, [sp, #8]
	add	r2, r9
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r2, [r6, #0x10]
	mov	r4, r10
	ldr	r1, [r6, #0xc]
	ldr	r0, [r6, #8]
	add	r2, r9
	str	r4, [sp, #8]
	ldr	r3, =0xffff8000
	mov	r4, r8
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_13c
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_9202c
	mov	r3, #0xa
	mov	r2, #0x16
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0xa
	bl	__Func_10704
	ldr	r0, =0x892
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_518

.thumb_func_start OvlFunc_658
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	ldr	r0, =0x894
	bl	__Func_79358
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x17b7
	bl	__Func_92b94
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r3, #0xa
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_658

.thumb_func_start OvlFunc_71c
	push	{r5, lr}
	bl	__Func_916b0
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L782
	mov	r2, #0xfc
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x17ac
	bl	__Func_92b94
	b	.L9a8
.L782:
	ldr	r0, =0x179f
	bl	__Func_92b94
	mov	r1, #8
	mov	r0, #0
	bl	OvlFunc_40dc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	bl	OvlFunc_4128
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xfc
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L858
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_40dc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x32
	bl	__Func_9163c
	bl	OvlFunc_4128
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L870
.L858:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
.L870:
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #8
	bl	__Func_937b8
	ldr	r0, =0x17a4
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L8ee
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_40dc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x32
	bl	__Func_9163c
	bl	OvlFunc_4128
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L91a
.L8ee:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
.L91a:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_92064
	mov	r2, #0xe8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_921c4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0xec
	mov	r0, #8
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_921c4
.L9a8:
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L9d4
	ldr	r0, =0x17ab
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	b	.La7c
.L9d4:
	ldr	r0, =0x17ad
	bl	__Func_92b94
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_93500
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #1
	ldr	r0, =0x10003
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	bl	__Func_91e20
	bl	__Func_93530
	bl	OvlFunc_4140
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	ldr	r0, =0x891
	bl	__Func_79358
.La7c:
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_71c

.thumb_func_start OvlFunc_abc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x17b1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_abc

.thumb_func_start OvlFunc_adc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1825
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_adc

.thumb_func_start OvlFunc_afc
	push	{r5, lr}
	bl	__Func_916b0
	mov	r0, #0xc
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	b	.Lb16
.Lb10:
	mov	r0, #1
	bl	__Func_30f8
.Lb16:
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bgt	.Lb10
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, #0
	str	r5, [r0, #0xc]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0xc
	bl	__Func_92054
	str	r5, [r0, #0x28]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xc
	mov	r2, #0
	bl	__Func_9280c
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb68
	ldr	r0, =0x1a5b
	bl	__Func_92b94
	b	.Lb92
.Lb68:
	ldr	r0, =0x89b
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb8c
	ldr	r0, =0x189e
	bl	__Func_92b94
	b	.Lb92

	.pool_aligned

.Lb8c:
	ldr	r0, =0x182a
	bl	__Func_92b94
.Lb92:
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0xc
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r5, .Lbc0	@ 0
	add	r0, #0x5b
	strb	r5, [r0]
	ldr	r1, =.L4638
	mov	r0, #0xc
	bl	__Func_9207c
	bl	__Func_91750
	b	.Lbcc

	.align	2, 0
.Lbc0:
	.word	0
	.pool

.Lbcc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_afc

.thumb_func_start OvlFunc_bd4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x182d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_bd4

.thumb_func_start OvlFunc_bf4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__Func_92054
	mov	r6, #8
	mov	r7, r0
	mov	r8, r6
.Lc08:
	ldr	r3, [r7, #0x50]
	lsl	r5, r6, #12
	strh	r5, [r3, #0x1e]
	mov	r0, r8
	bl	__Func_30f8
	mov	r0, r5
	bl	__Func_231c
	lsl	r2, r0, #1
	ldr	r3, [r7, #8]
	add	r2, r0
	lsl	r2, #1
	add	r3, r2
	str	r3, [r7, #8]
	mov	r0, r5
	bl	__Func_2322
	lsl	r2, r0, #1
	ldr	r3, [r7, #0x10]
	add	r2, r0
	lsl	r2, #1
	add	r3, r2
	str	r3, [r7, #0x10]
	mov	r3, #2
	neg	r3, r3
	sub	r6, #1
	add	r8, r3
	cmp	r6, #3
	bhi	.Lc08
	mov	r3, #0x90
	lsl	r3, #13
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	mov	r0, #0xe3
	bl	__Func_f9080
	mov	r6, #0x80
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xfff40000
	lsl	r6, #12
	ldr	r4, =0x6666
	mov	r5, #0
	ldr	r1, [r7, #0xc]
	add	r0, r3
	add	r2, r6
	ldr	r3, =0xffffcccd
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x4ccc
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xffff3334
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r3, #0xa0
	ldr	r4, =0x3333
	lsl	r3, #12
	ldr	r1, [r7, #0xc]
	add	r0, r3
	add	r2, r6
	ldr	r3, =0xffff0000
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_bf4

.thumb_func_start OvlFunc_cd4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__Func_92054
	mov	r6, #8
	mov	r7, r0
.Lce6:
	ldr	r3, [r7, #0x50]
	mov	r0, #0xc
	lsl	r5, r6, #12
	sub	r0, r6
	strh	r5, [r3, #0x1e]
	lsl	r0, #1
	bl	__Func_30f8
	mov	r0, r5
	bl	__Func_231c
	lsl	r2, r0, #1
	ldr	r3, [r7, #8]
	add	r2, r0
	lsl	r2, #1
	sub	r3, r2
	str	r3, [r7, #8]
	mov	r0, r5
	bl	__Func_2322
	lsl	r2, r0, #1
	ldr	r3, [r7, #0x10]
	add	r2, r0
	lsl	r2, #1
	sub	r3, r2
	add	r6, #1
	str	r3, [r7, #0x10]
	cmp	r6, #0xc
	bls	.Lce6
	mov	r3, #0x90
	lsl	r3, #13
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	ldr	r3, =0xffff3334
	mov	r0, #0xe3
	str	r3, [r7, #0x18]
	bl	__Func_f9080
	ldr	r0, [r7, #8]
	ldr	r3, =0xfff40000
	ldr	r2, [r7, #0x10]
	mov	r6, #0x80
	lsl	r6, #12
	ldr	r4, =0x3333
	add	r0, r3
	mov	r3, #0x80
	mov	r5, #0
	ldr	r1, [r7, #0xc]
	add	r2, r6
	lsl	r3, #9
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r8, r4
	bl	OvlFunc_13c
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x4ccc
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xcccc
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r0, [r7, #8]
	mov	r3, #0xa0
	lsl	r3, #12
	ldr	r2, [r7, #0x10]
	add	r0, r3
	ldr	r3, =0x6666
	ldr	r1, [r7, #0xc]
	add	r2, r6
	str	r3, [sp]
	mov	r3, r8
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cd4

.thumb_func_start OvlFunc_db4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #24
	mov	r7, r0
	mov	r6, #0
	mov	r5, #8
	mov	r8, r2
.Ldd0:
	mov	r0, r5
	bl	__Func_30f8
	ldr	r3, [r7, #0x10]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r7, #0x10]
	add	r6, #1
	mov	r3, r8
	str	r3, [r7, #0x40]
	sub	r5, #2
	cmp	r6, #3
	bls	.Ldd0
	ldr	r3, [r7, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	mov	r0, #0xe3
	bl	__Func_f9080
	ldr	r3, =0xfff80000
	ldr	r2, [r7, #0x10]
	mov	r8, r3
	ldr	r6, =0xffffcccd
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	ldr	r3, =0xffff3334
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r2, [r7, #0x10]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	ldr	r3, =0xcccc
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r0, [r7, #8]
	ldr	r2, =0xfffa0000
	mov	r3, #0xa0
	add	r0, r2
	lsl	r3, #12
	ldr	r2, [r7, #0x10]
	mov	r8, r3
	ldr	r6, =0xffff0000
	ldr	r3, =0x3333
	ldr	r1, [r7, #0xc]
	add	r2, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r10, r3
	bl	OvlFunc_13c
	ldr	r0, [r7, #8]
	mov	r2, #0xc0
	lsl	r2, #11
	add	r0, r2
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	add	r2, r8
	mov	r3, r10
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_db4

.thumb_func_start OvlFunc_e94
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x13
	sub	sp, #0x10
	bl	__Func_92054
	mov	r2, #0x80
	lsl	r2, #24
	mov	r7, r0
	mov	r6, #0
	mov	r5, #8
	mov	r8, r2
.Leb0:
	mov	r0, r5
	bl	__Func_30f8
	ldr	r3, [r7, #0x10]
	mov	r4, #0x80
	lsl	r4, #9
	add	r3, r4
	mov	r2, r8
	add	r6, #1
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x40]
	sub	r5, #2
	cmp	r6, #3
	bls	.Leb0
	ldr	r3, [r7, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	ldr	r3, [r7, #0x10]
	mov	r4, #0xc0
	lsl	r4, #13
	add	r3, r4
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r7, #0x40]
	mov	r0, #0xe3
	bl	__Func_f9080
	mov	r6, #0xc0
	ldr	r2, [r7, #0x10]
	ldr	r4, =0x3333
	lsl	r6, #12
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	add	r2, r6
	ldr	r3, =0xffff3334
	str	r5, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	mov	r8, r4
	bl	OvlFunc_13c
	ldr	r2, [r7, #0x10]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	mov	r4, r8
	add	r2, r6
	ldr	r3, =0xcccc
	str	r5, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r0, [r7, #8]
	ldr	r2, =0xfffa0000
	ldr	r3, =0xfff80000
	add	r0, r2
	ldr	r2, [r7, #0x10]
	mov	r10, r3
	mov	r6, #0x80
	ldr	r1, [r7, #0xc]
	add	r2, r10
	lsl	r6, #9
	mov	r3, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r4, #0xc0
	lsl	r4, #11
	ldr	r1, [r7, #0xc]
	add	r0, r4
	add	r2, r10
	mov	r3, r8
	str	r5, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e94

.thumb_func_start OvlFunc_f80
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r2, [r0, #6]
	ldr	r0, =0xffffe000
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.Lfb4
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r0, #0xf
	mov	r1, #0xe0
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	b	.Lffa
.Lfb4:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lfd2
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	b	.Lffa
.Lfd2:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L1002
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r0, #0xf
	mov	r1, #0xe0
	mov	r2, #0xac
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r0, #0xf
	lsl	r1, #8
.Lffa:
	mov	r2, #0x14
	bl	__Func_92adc
	b	.L1018
.L1002:
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
.L1018:
	pop	{r0}
	bx	r0
.func_end OvlFunc_f80

.thumb_func_start OvlFunc_102c
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r1, =0xcccc
	mov	r0, #0xf
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r5, =0x183a
	mov	r0, r5
	bl	__Func_92b94
	cmp	r6, #0
	bne	.L10a4
	sub	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_925cc
	ldr	r0, =0x18ae
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0xf
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
.L10a4:
	cmp	r6, #2
	bne	.L10bc
	ldr	r0, =0x18ac
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
.L10bc:
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_93040
	bl	OvlFunc_f80
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x1e
	bl	__Func_92adc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_102c

.thumb_func_start OvlFunc_1160
	push	{lr}
	mov	r0, #0xd
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x10
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0x13
	mov	r0, #0x12
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x187a
	bl	__Func_92b94
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x10
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0xf
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r2, =0x6666
	mov	r0, #0xf
	ldr	r1, =0xcccc
	bl	__Func_92064
	bl	OvlFunc_f80
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_92adc
	ldr	r0, =0x301
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1160

.thumb_func_start OvlFunc_12e0
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bls	.L130c
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bcs	.L130c
	bl	OvlFunc_bf4
	b	.L1310
.L130c:
	bl	OvlFunc_cd4
.L1310:
	ldr	r0, =0x898
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1320
	bl	OvlFunc_1160
	b	.L1326
.L1320:
	mov	r0, #0
	bl	OvlFunc_102c
.L1326:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_12e0

.thumb_func_start OvlFunc_1334
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xffffe000
	ldrh	r2, [r5, #6]
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.L1366
	bl	OvlFunc_e94
	b	.L1390
.L1366:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L1378
	bl	OvlFunc_bf4
	b	.L1390
.L1378:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L138c
	bl	OvlFunc_db4
	b	.L1390
.L138c:
	bl	OvlFunc_cd4
.L1390:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #1
	bl	OvlFunc_102c
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1334

.thumb_func_start OvlFunc_13b8
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r0, =0xffffe000
	ldrh	r2, [r5, #6]
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.L13dc
	bl	OvlFunc_e94
	b	.L1406
.L13dc:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L13ee
	bl	OvlFunc_bf4
	b	.L1406
.L13ee:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.L1402
	bl	OvlFunc_db4
	b	.L1406
.L1402:
	bl	OvlFunc_cd4
.L1406:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_93500
	bl	__Func_93530
	mov	r1, #0x12
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xd1
	bgt	.L144c
	ldr	r0, =0x89a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L143a
	ldr	r0, =0x89b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1442
.L143a:
	mov	r0, #0
	bl	OvlFunc_102c
	b	.L1446
.L1442:
	bl	OvlFunc_1160
.L1446:
	bl	__Func_91750
	b	.L1476
.L144c:
	ldr	r0, =0x89b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L145e
	mov	r0, #2
	bl	OvlFunc_102c
	b	.L1472
.L145e:
	ldr	r0, =0x89a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L146e
	bl	OvlFunc_1494
	b	.L1472
.L146e:
	bl	OvlFunc_1dbc
.L1472:
	bl	__Func_91750
.L1476:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13b8

.thumb_func_start OvlFunc_1494
	push	{r5, lr}
	ldr	r0, =0x89a
	bl	__Func_79358
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x183b
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_93054
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_9335c
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0x10
	mov	r1, #0xb0
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r1, #0x9a
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0x10
	bl	__Func_92adc
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r2, #0xd
	ldr	r0, =.L477a
	mov	r1, #0x4e
	bl	__Func_10560
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x10
	bl	__Func_92064
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x9a
	mov	r2, #0x88
	strb	r3, [r0]
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x10
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0x10
	mov	r2, #0x32
	bl	__Func_93040
	mov	r1, #0x98
	mov	r2, #0xd8
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x98
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xb
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x11
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x98
	mov	r2, #0xd8
	mov	r0, #0x12
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x98
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_9218c
	mov	r1, #0x8c
	mov	r2, #0x84
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x11
	bl	__Func_9218c
	mov	r0, #0x12
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_92adc
	mov	r0, #0x11
	bl	__Func_923c4
	mov	r0, #0x9f
	bl	__Func_f9080
	ldr	r0, =.L4790
	mov	r1, #0x4e
	mov	r2, #0xd
	bl	__Func_10560
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xb
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x10
	mov	r1, #0x11
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x14
	b	.L18ac

	.pool_aligned

.L18ac:
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0x11
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x11
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x11
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x8c
	mov	r0, #0x11
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0x11
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_923e4
	mov	r0, #0x11
	bl	__Func_92924
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0x10
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0xb8
	mov	r0, #0x12
	mov	r1, #0xf0
	bl	__Func_921c4
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__Func_92054
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__Func_f9080
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__Func_921c4
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #0xf8
	mov	r2, #0xd0
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1c4a
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	b	.L1cb4
.L1c4a:
	ldr	r5, =iwram_1ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	strh	r2, [r3]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1ce0
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x12
.L1cb4:
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	ldr	r0, =0x898
	bl	__Func_79358
	b	.L1d12

	.pool_aligned

.L1ce0:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	ldr	r0, =0x899
	bl	__Func_79358
.L1d12:
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_924d4
	ldr	r1, =.L4638
	mov	r0, #0xc
	bl	__Func_9207c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1494

.thumb_func_start OvlFunc_1d50
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x186e
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1d8c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	ldr	r0, =0x898
	bl	__Func_79358
	bl	__Func_91750
	b	.L1daa
.L1d8c:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	bl	__Func_91750
.L1daa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d50

.thumb_func_start OvlFunc_1dbc
	push	{r5, lr}
	mov	r0, #0x12
	bl	__Func_92054
	mov	r5, #0
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #1
	str	r5, [r0, #0x6c]
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_933d4
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	ldr	r0, =0x1883
	bl	__Func_92b94
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r1, #0x90
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #9
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xb
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x10
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x12
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0xa
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r0, #0xc
	mov	r1, #0x90
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r1, #0x13
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #0x13
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x10
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0xf
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_9259c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_93054
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #9
	bl	__Func_937b8
	mov	r0, #5
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_937b8
	mov	r0, #5
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_937b8
	mov	r0, #5
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #5
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_937b8
	mov	r0, #5
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, #5
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_937b8
	mov	r0, #5
	bl	__Func_9163c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0x10
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_92848
	mov	r1, #0xf
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xb
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #3
	b	.L2224

	.pool_aligned

.L2224:
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_93054
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xc8
	bl	__Func_9218c
	mov	r1, #0x78
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #5
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0xc
	bl	__Func_923c4
	ldr	r1, =.L4638
	mov	r0, #0xc
	bl	__Func_9207c
	mov	r0, #0xf
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x1e
	mov	r0, #0xf
	bl	__Func_92adc
	ldr	r0, =0x898
	bl	__Func_79374
	ldr	r0, =0x89b
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1dbc

.thumb_func_start OvlFunc_2464
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1a58
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2464

.thumb_func_start OvlFunc_2484
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x89a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L24ac
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	bne	.L24ac
	ldr	r0, =0x18ad
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	b	.L24f2
.L24ac:
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L477a
	mov	r1, #0x4e
	mov	r2, #0xd
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x99
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_921c4
	mov	r1, #0x98
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #4
	bl	__Func_91e9c
	bl	__Func_91750
.L24f2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2484

.thumb_func_start OvlFunc_2508
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L2528
	mov	r0, #0xd
	bl	__Func_b29a8
	b	.L2536
.L2528:
	ldr	r0, =0x1a1c
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
.L2536:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2508

.thumb_func_start OvlFunc_254c
	push	{lr}
	bl	__Func_916b0
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	ldr	r0, =0x17df
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_254c

.thumb_func_start OvlFunc_2574
	push	{lr}
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L258c
	ldr	r0, =.L4b90
	b	.L25a0
.L258c:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L259e
	ldr	r0, =.L5184
	b	.L25a0
.L259e:
	ldr	r0, =.L4d40
.L25a0:
	pop	{r1}
	bx	r1
.func_end OvlFunc_2574

.thumb_func_start OvlFunc_25b8
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #0x38
	bl	__Func_92054
	mov	r5, #7
	add	r6, sp, #0x10
	mov	r7, r0
	str	r5, [r6, #4]
	bl	__Func_4458
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	and	r3, r5
	cmp	r3, #0
	bne	.L25de
	mov	r3, #5
	str	r3, [r6, #4]
.L25de:
	ldr	r3, =0xb333
	str	r3, [r6, #8]
	ldr	r3, =0xcccc
	str	r3, [r6, #0xc]
	bl	__Func_4458
	lsl	r0, #3
	lsr	r0, #16
	lsl	r4, r0, #1
	add	r4, r0
	ldr	r5, =iwram_1e40
	lsl	r3, r4, #4
	add	r4, r3
	ldr	r2, [r5]
	lsl	r3, r4, #8
	add	r4, r3
	mov	r3, #0xf
	and	r2, r3
	mov	r3, #8
	ldr	r0, [r7, #8]
	sub	r3, r2
	lsl	r3, #16
	ldr	r1, [r7, #0xc]
	add	r0, r3
	mov	r3, #0xc0
	lsl	r3, #13
	add	r1, r3
	mov	r3, #0
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	neg	r4, r4
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r6, [sp, #0xc]
	bl	OvlFunc_13c
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2640
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_92950
	b	.L2648
.L2640:
	mov	r0, #0
	mov	r1, #1
	bl	__Func_92950
.L2648:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25b8

.thumb_func_start OvlFunc_265c
	push	{lr}
	mov	r1, #0x20
	neg	r1, r1
	mov	r0, #0
	bl	OvlFunc_268c
	pop	{r0}
	bx	r0
.func_end OvlFunc_265c

.thumb_func_start OvlFunc_266c
	push	{lr}
	mov	r0, #0
	mov	r1, #0x20
	bl	OvlFunc_268c
	pop	{r0}
	bx	r0
.func_end OvlFunc_266c

.thumb_func_start OvlFunc_267c
	push	{lr}
	mov	r0, #0x20
	neg	r0, r0
	mov	r1, #0
	bl	OvlFunc_268c
	pop	{r0}
	bx	r0
.func_end OvlFunc_267c

.thumb_func_start OvlFunc_268c
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	__Func_916b0
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #7
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #6
	bl	__Func_924d4
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_268c

.thumb_func_start OvlFunc_26d8
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r5, =OvlFunc_25b8
	mov	r1, #0xc8
	mov	r0, r5
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r1, =0x3333
	mov	r0, #0
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x3c
	str	r2, [r3]
	bl	__Func_91df4
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, #0
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
	mov	r0, r5
	bl	__Func_4278
	bl	__Func_91e20
	mov	r0, #3
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_26d8

.thumb_func_start OvlFunc_2764
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_2764

.thumb_func_start OvlFunc_2778
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r1, #0x4d
	mov	r2, #8
	ldr	r0, =.L4764
	bl	__Func_10560
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2778

.thumb_func_start OvlFunc_27ec
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0xfc
	mov	r1, #0xa8
	mov	r0, #0
	lsl	r2, #1
	bl	__Func_9218c
	ldr	r5, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	ldr	r0, =0x17be
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L28f8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L293c
.L28f8:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r2, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L293c:
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L29ca
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x17c8
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
.L299c:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L29ca
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r0, =0x17e0
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92c40
	b	.L299c
.L29ca:
	ldr	r0, =0x17c9
	bl	__Func_92b94
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2a28
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2a50
.L2a28:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L2a50:
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #5
	mov	r0, #8
	bl	__Func_924d4
	ldr	r0, =0x893
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_27ec

.thumb_func_start OvlFunc_2ad0
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0xec
	mov	r2, #0x86
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_9218c
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	bl	__Func_923c4
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1969
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2b9c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L2b9c:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2bb0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L2bb0:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2bc4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L2bc4:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xe8
	mov	r2, #0xfc
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xf0
	mov	r2, #0xfc
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xf8
	mov	r2, #0xf8
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xe0
	mov	r2, #0xf8
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
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
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_93054
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	b	.L2ed8

	.pool_aligned

.L2ed8:
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #1
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
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
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_93054
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #8
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
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
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
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
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
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #1
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_93054
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
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_93054
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
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
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
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
	b	.L34d8

	.pool_aligned

.L34d8:
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #8
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
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #0
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
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
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
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xec
	mov	r2, #0x86
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xf4
	mov	r2, #0x80
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0xe4
	mov	r2, #0x80
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
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
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #2
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #1
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xec
	mov	r2, #0xfc
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	b	.L38e8

	.pool_aligned

.L38e8:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #8
	bl	__Func_923c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xec
	mov	r2, #0x8e
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xec
	mov	r2, #0x86
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_921c4
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
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
	mov	r1, #0xec
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xe0
	mov	r2, #0x80
	lsl	r1, #1
	strb	r3, [r0]
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
	bl	OvlFunc_41ec
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x90
	bl	__Func_91d94
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #8
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
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xec
	mov	r2, #0x8a
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_921c4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xf0
	mov	r2, #0x87
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xec
	mov	r2, #0x88
	mov	r0, #9
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xec
	mov	r2, #0x98
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0xa
	bl	__Func_921c4
	mov	r0, #9
	bl	__Func_923c4
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #9
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_923c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xf4
	mov	r2, #0x82
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_93054
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3d28
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L3d56
.L3d28:
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
.L3d56:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xe0
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_921c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x895
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ad0

.thumb_func_start OvlFunc_3e58
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x3d
	sub	sp, #8
	cmp	r2, r3
	beq	.L3e70
	b	.L4010
.L3e70:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xe1
	add	r2, #0x49
	str	r2, [r3]
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L3ed2
	ldr	r0, =0x88f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3ea0
	mov	r0, #8
	mov	r1, #6
	bl	__Func_924d4
	b	.L4092
.L3ea0:
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	ldr	r0, =0xf14
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3eb4
	b	.L4092
.L3eb4:
	ldr	r0, =0x893
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3ec0
	b	.L4092
.L3ec0:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3ecc
	b	.L4092
.L3ecc:
	bl	OvlFunc_27ec
	b	.L4092
.L3ed2:
	cmp	r3, #2
	beq	.L3eda
	cmp	r3, #4
	bne	.L3fd6
.L3eda:
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r0, =0x895
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	bne	.L3f6a
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x50]
	lsl	r2, #8
	str	r2, [r0, #0x1c]
	strh	r2, [r3, #0x1e]
	ldr	r0, =0x89a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3fb2
	mov	r1, #0xf8
	mov	r2, #0xd0
	mov	r0, #0x12
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	ldr	r0, =0x89b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3fb2
	mov	r1, #0x80
	mov	r2, #0xf0
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x10
	bl	__Func_923e4
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r5, =OvlFunc_324
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0x10
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	b	.L3fb2
.L3f6a:
	mov	r0, #0x13
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	mov	r1, #0x80
	ldr	r3, =0xcccc
	lsl	r1, #8
	str	r3, [r0, #0x18]
	str	r1, [r0, #0x1c]
	mov	r3, #0x59
	add	r3, r0
	ldrb	r2, [r3]
	mov	r12, r3
	mov	r3, #8
	orr	r3, r2
	mov	r2, r12
	strb	r3, [r2]
	ldr	r3, [r0, #0x50]
	mov	r2, #0xa
	strh	r1, [r3, #0x1e]
	mov	r3, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L3fb2:
	mov	r0, #0x98
	mov	r1, #0xc0
	mov	r2, #0xe0
	lsl	r1, #13
	lsl	r2, #16
	mov	r3, #0xdf
	lsl	r0, #17
	bl	OvlFunc_48
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_924d4
	b	.L4092
.L3fd6:
	cmp	r3, #3
	bne	.L4092
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3ff0
	bl	OvlFunc_2ad0
	b	.L4092
.L3ff0:
	ldr	r0, =0x8b2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4092
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L4092
.L4010:
	mov	r0, #0xaa
	bl	__Func_91ff0
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	mov	r1, #0xe1
	orr	r3, r2
	lsl	r1, #1
	strb	r3, [r0]
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L405c
	ldr	r0, =0xf14
	bl	__Func_79338
	cmp	r0, #0
	beq	.L405c
	ldr	r0, =0x894
	bl	__Func_79338
	cmp	r0, #0
	bne	.L405c
	mov	r3, #0xa
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x54
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L405c:
	ldr	r0, =0x892
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4092
	mov	r1, #0x98
	mov	r2, #0xc4
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r3, #0xa
	mov	r2, #0x16
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L4092:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3e58

.thumb_func_start OvlFunc_40dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r0, #0xa0
	lsl	r0, #1
	mov	r8, r1
	bl	__Func_79358
	mov	r0, #0x8d
	mov	r1, #1
	bl	__Func_96fb0
	ldr	r3, =iwram_1f30
	ldr	r5, [r3]
	mov	r0, r6
	mov	r1, r8
	bl	__Func_970f8
	add	r5, #0x23
	mov	r3, #0
	strb	r3, [r5]
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	mov	r0, #1
	bl	__Func_30f8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_40dc

.thumb_func_start OvlFunc_4128
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #2
	bl	__Func_967e4
	bl	__Func_97174
	pop	{r0}
	bx	r0
.func_end OvlFunc_4128

.thumb_func_start OvlFunc_4140
	push	{r5, r6, r7, lr}
	mov	r0, #8
	sub	sp, #0x38
	bl	__Func_92054
	mov	r3, #1
	add	r5, sp, #0x10
	str	r3, [r5]
	ldr	r3, =0x119
	strh	r3, [r5, #0x18]
	ldr	r3, =.L51d8
	str	r3, [r5, #0x1c]
	mov	r3, #0xe0
	lsl	r3, #10
	str	r3, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x14]
	mov	r7, r0
	mov	r6, #0
.L4168:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L417c
	mov	r0, #0x82
	bl	__Func_f9080
.L417c:
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xffe80000
	add	r2, r3
	ldr	r3, =0x9999
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	ldr	r3, =0x360001
	add	r6, #1
	str	r3, [sp, #8]
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_13c
	cmp	r6, #7
	bls	.L4168
	mov	r0, #0x3c
	bl	__Func_9163c
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4140

.thumb_func_start OvlFunc_41c4
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L41dc
	mov	r1, #0xa
	bl	__Func_929d8
	b	.L41e2
.L41dc:
	mov	r1, #9
	bl	__Func_929d8
.L41e2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_41c4

.thumb_func_start OvlFunc_41ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x83
	sub	sp, #0x38
	bl	__Func_f9080
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, =OvlFunc_41c4
	str	r5, [r0, #0x6c]
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #1
	ldr	r0, =0x205c54
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x83
	bl	__Func_f9080
	mov	r0, #2
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, =0x11d
	strh	r3, [r2, #0x18]
	mov	r8, r0
	mov	r10, r2
	mov	r7, #0
.L425a:
	mov	r3, #3
	and	r3, r7
	cmp	r3, #0
	bne	.L4268
	mov	r0, #0xf6
	bl	__Func_f9080
.L4268:
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r8
	lsl	r3, #4
	ldr	r6, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	ldr	r3, =0xfff40000
	add	r6, r3
	bl	__Func_4458
	mov	r2, r8
	lsl	r0, #5
	ldr	r5, [r2, #0xc]
	lsr	r0, #16
	ldr	r3, =0xfff00000
	lsl	r0, #16
	add	r5, r0
	add	r5, r3
	bl	__Func_4458
	lsl	r0, #2
	lsr	r0, #16
	mov	r2, #0x80
	lsl	r2, #8
	mov	r3, r8
	lsl	r0, #15
	add	r0, r2
	ldr	r2, [r3, #0x10]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r9, r3
	mov	r3, #0x98
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r3, r10
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	bl	OvlFunc_13c
	add	r7, #1
	mov	r0, #2
	bl	__Func_30f8
	cmp	r7, #0x3f
	bls	.L425a
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	mov	r2, r9
	str	r2, [r0, #0x6c]
	mov	r0, #2
	bl	__Func_92054
	mov	r3, r9
	str	r3, [r0, #0x6c]
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92950
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92950
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_41ec

	.section .data

	.incbin "overlays/rom_7b2078/orig.bin", 0x4584, (0x462c-0x4584)
.L462c:
	.incbin "overlays/rom_7b2078/orig.bin", 0x462c, (0x4638-0x462c)
.L4638:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4638, (0x4764-0x4638)
.L4764:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4764, (0x477a-0x4764)
.L477a:
	.incbin "overlays/rom_7b2078/orig.bin", 0x477a, (0x4790-0x477a)
.L4790:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4790, (0x47a8-0x4790)
.L47a8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x47a8, (0x4838-0x47a8)
.L4838:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4838, (0x48c8-0x4838)
.L48c8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x48c8, (0x48f0-0x48c8)
.L48f0:
	.incbin "overlays/rom_7b2078/orig.bin", 0x48f0, (0x4998-0x48f0)
.L4998:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4998, (0x4ae8-0x4998)
.L4ae8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4ae8, (0x4b90-0x4ae8)
.L4b90:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4b90, (0x4d40-0x4b90)
.L4d40:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4d40, (0x5184-0x4d40)
.L5184:
	.incbin "overlays/rom_7b2078/orig.bin", 0x5184, (0x51d8-0x5184)
.L51d8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x51d8
