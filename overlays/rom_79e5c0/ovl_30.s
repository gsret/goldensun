	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, lr}
	ldr	r5, =.L3698
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L44
	mov	r1, #2
	bl	__Func_c300
	mov	r3, #0
	str	r3, [r5]
.L44:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_50
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_4458
	mov	r3, #0x64
	mov	r2, r0
	mul	r2, r3
	mov	r6, r5
	add	r6, #0x64
	ldrh	r3, [r6]
	lsr	r2, #16
	add	r3, r2
	mov	r2, #0xfa
	strh	r3, [r6]
	lsl	r2, #18
	lsl	r3, #16
	cmp	r3, r2
	ble	.L7e
	mov	r0, r5
	mov	r1, #7
	bl	__Func_929d8
	b	.L86
.L7e:
	mov	r0, r5
	mov	r1, #0xa
	bl	__Func_929d8
.L86:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #0x96
	lsl	r2, #3
	cmp	r3, r2
	ble	.L96
	mov	r3, #0
	strh	r3, [r6]
.L96:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_50

.thumb_func_start OvlFunc_a0
	push	{r5, r6, lr}
	add	r0, #0x48
	mov	r2, #0
	mov	r6, #0x69
	mov	r5, #0x6e
	mov	r4, #2
	mov	r1, #1
.Lae:
	sub	r3, r2, #6
	strh	r6, [r0]
	cmp	r3, #1
	bhi	.Lb8
	strh	r5, [r0]
.Lb8:
	add	r2, #1
	strb	r4, [r0, #0x16]
	str	r1, [r0, #4]
	add	r0, #0x18
	cmp	r2, #8
	bls	.Lae
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a0

.thumb_func_start OvlFunc_cc
	push	{lr}
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x24]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r2, [r0, #0x2c]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r3, =0xfffff5c3
	add	r2, r3
	str	r2, [r0, #0x2c]
	ldr	r3, [r0, #0x18]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L108
	bl	__Func_c0f4
.L108:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_cc

.thumb_func_start OvlFunc_114
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L15e
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, [r1, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r1, [r1, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_44d0
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	asr	r0, #16
	cmp	r0, #0
	beq	.L15e
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L152
	mov	r0, r2
.L152:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L15a
	mov	r0, r2
.L15a:
	add	r3, r0
	strh	r3, [r5, #6]
.L15e:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_114

.thumb_func_start OvlFunc_16c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.L184
	ldr	r0, =.L2f80
	b	.L190
.L184:
	ldr	r3, =0x26
	cmp	r2, r3
	bne	.L18e
	ldr	r0, =.L2fc8
	b	.L190
.L18e:
	ldr	r0, =.L2e60
.L190:
	pop	{r1}
	bx	r1
.func_end OvlFunc_16c

.thumb_func_start OvlFunc_1ac
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x26
	mov	r0, #0
	cmp	r2, r3
	bne	.L1c4
	ldr	r0, =.L3010
.L1c4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1ac

.thumb_func_start OvlFunc_1d4
	ldr	r0, =.L3040
	bx	lr
.func_end OvlFunc_1d4

.thumb_func_start OvlFunc_1dc
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x24
	cmp	r2, r3
	bne	.L204
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.L200
	ldr	r0, =.L3098
	bl	OvlFunc_a0
.L200:
	ldr	r0, =.L3098
	b	.L210
.L204:
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.L20e
	ldr	r0, =.L3368
	b	.L210
.L20e:
	ldr	r0, =.L3080
.L210:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1dc

.thumb_func_start OvlFunc_230
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L250
	mov	r0, #0x10
	bl	__Func_b29a8
	b	.L25e
.L250:
	ldr	r0, =0x16b3
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_93054
.L25e:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_230

.thumb_func_start OvlFunc_274
	push	{lr}
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #1
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_274

.thumb_func_start OvlFunc_284
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.L29c
	ldr	r0, =.L3590
	b	.L29e
.L29c:
	ldr	r0, =.L33b0
.L29e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_284

.thumb_func_start OvlFunc_2b4
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_9228c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r5
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b4

.thumb_func_start OvlFunc_304
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	bl	__Func_916b0
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #5
	mov	r6, #0
	mov	r5, #0
	cmp	r3, #4
	bhi	.L39a
	ldr	r2, =.L330
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L330:
	.word	.L344
	.word	.L34a
	.word	.L350
	.word	.L356
	.word	.L35c
.L344:
	mov	r6, #0x47
	mov	r5, #9
	b	.L39a
.L34a:
	mov	r6, #0x49
	mov	r5, #0x11
	b	.L39a
.L350:
	mov	r6, #0x50
	mov	r5, #0x15
	b	.L39a
.L356:
	mov	r6, #0x54
	mov	r5, #0xc
	b	.L39a
.L35c:
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_9228c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, #9
	bl	__Func_91e9c
	bl	__Func_91750
	b	.L3b6
.L39a:
	ldr	r0, =.L2e48
	mov	r1, r6
	mov	r2, r5
	bl	__Func_10560
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	OvlFunc_2b4
	bl	__Func_91750
.L3b6:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_304

.thumb_func_start OvlFunc_3c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xa8
	mov	r2, #0xf6
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	ldr	r0, =0x1786
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0xa8
	mov	r2, #0xea
	mov	r3, #1
	lsl	r0, #16
	mov	r1, #0
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r2, #0x8b
	mov	r0, #0
	mov	r1, #0xae
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x90
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #8
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xe0
	mov	r2, #0xc5
	mov	r0, #8
	bl	__Func_92158
	mov	r0, #0xb0
	bl	__Func_f9080
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xea
	mov	r2, #0xc8
	mov	r0, #8
	bl	__Func_92158
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xc6
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r5, #5
	mov	r6, #4
	mov	r1, #0
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r3, #9
	mov	r1, #4
	mov	r2, #0x48
	mov	r0, #0x5b
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #9
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #8
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #6
	bl	__Func_9163c
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r1, #0xd
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0x80
	lsl	r0, #9
	mov	r7, #0x94
	mov	r6, #0
	mov	r8, r0
	lsl	r7, #16
.L564:
	mov	r3, #0x81
	mov	r0, #0xde
	mov	r1, r7
	mov	r2, #0
	lsl	r3, #17
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L5d4
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	mov	r2, r5
	add	r3, #0x28
	add	r2, #0x64
	strh	r3, [r2]
	mov	r3, #3
	and	r3, r6
	lsl	r3, #16
	add	r3, r8
	asr	r2, r3, #1
	mov	r3, r8
	str	r3, [r5, #0x2c]
	mov	r3, #1
	and	r3, r6
	str	r2, [r5, #0x24]
	cmp	r3, #0
	beq	.L5c4
	neg	r3, r2
	str	r3, [r5, #0x24]
.L5c4:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r0, r5
	ldr	r1, =.L2e20
	bl	__Func_c2d8
.L5d4:
	mov	r0, #0x80
	lsl	r0, #11
	add	r6, #1
	add	r7, r0
	cmp	r6, #9
	bls	.L564
	mov	r3, #5
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5b
	mov	r1, #0x13
	mov	r2, #0x48
	mov	r3, #9
	bl	__Func_10424
	mov	r3, #8
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #7
	mov	r0, #0x17
	mov	r1, #0xb
	mov	r2, #5
	bl	__Func_10704
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	mov	r0, #0
	bl	__Func_12330
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r1, #0x80
	ldr	r2, =.L2e34
	lsl	r1, #9
	mov	r0, #8
	bl	__Func_92a1c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0
	bl	__Func_937b8
	ldr	r0, =0x847
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3c8

.thumb_func_start OvlFunc_694
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	sub	sp, #8
	cmp	r2, r3
	bne	.L6b0
	bl	OvlFunc_2910
	b	.L7d4
.L6b0:
	ldr	r3, =0x26
	cmp	r2, r3
	bne	.L6c6
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	b	.L7d4
.L6c6:
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r5, =.L2dd8
	mov	r0, #0x17
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x19
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1a
	mov	r1, r5
	bl	__Func_9207c
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.L770
	mov	r5, #8
.L724:
	mov	r0, r5
	bl	__Func_92054
	add	r5, #1
	mov	r1, #0
	bl	__Func_c528
	cmp	r5, #0x10
	bls	.L724
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #8
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xe
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L770:
	ldr	r0, =0x843
	bl	__Func_79338
	cmp	r0, #0
	bne	.L78e
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L78e
	bl	OvlFunc_8ec
.L78e:
	ldr	r0, =0x843
	bl	__Func_79338
	cmp	r0, #0
	beq	.L7d4
	mov	r0, #1
	bl	__Func_92924
	mov	r0, #2
	bl	__Func_92924
	mov	r0, #3
	bl	__Func_92924
	mov	r0, #0x11
	bl	__Func_92924
	mov	r0, #0x12
	bl	__Func_92924
	mov	r0, #0x13
	bl	__Func_92924
	mov	r0, #0x14
	bl	__Func_92924
	mov	r0, #0x15
	bl	__Func_92924
	mov	r0, #0x16
	bl	__Func_92924
	ldr	r0, =.L32d8
	bl	__Func_917ac
.L7d4:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_694

.thumb_func_start OvlFunc_800
	push	{lr}
	mov	r0, #0x13
	bl	__Func_92054
	cmp	r0, #0
	beq	.L82a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L824
	str	r2, [r0, #0xc]
	b	.L82a
.L824:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L82a:
	mov	r0, #0x14
	bl	__Func_92054
	cmp	r0, #0
	beq	.L852
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L84c
	str	r1, [r0, #0xc]
	b	.L852
.L84c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L852:
	mov	r0, #0x15
	bl	__Func_92054
	cmp	r0, #0
	beq	.L87a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L874
	str	r2, [r0, #0xc]
	b	.L87a
.L874:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L87a:
	mov	r0, #0x16
	bl	__Func_92054
	cmp	r0, #0
	beq	.L8a2
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L89c
	str	r1, [r0, #0xc]
	b	.L8a2
.L89c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L8a2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_800

.thumb_func_start OvlFunc_8ac
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0x8d
	mov	r1, #1
	bl	__Func_96fb0
	mov	r0, r5
	mov	r1, r6
	bl	__Func_970f8
	bl	__Func_9728c
	mov	r0, #1
	bl	__Func_967e4
	mov	r0, #1
	bl	__Func_30f8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8ac

.thumb_func_start OvlFunc_8d8
	push	{lr}
	mov	r0, #2
	bl	__Func_967e4
	bl	__Func_97174
	bl	__Func_97194
	pop	{r0}
	bx	r0
.func_end OvlFunc_8d8

.thumb_func_start OvlFunc_8ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__Func_916b0
	mov	r0, #3
	ldr	r5, =.L369c
	bl	__Func_79338
	str	r0, [r5]
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x16
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xd0
	mov	r1, #1
	mov	r2, #0x80
	mov	r3, #0
	lsl	r0, #15
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r1, #0xb8
	mov	r2, #0xf7
	lsl	r1, #13
	lsl	r2, #16
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #0xee
	bl	__Func_921c4
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L9a0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L9a0:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L9b4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L9b4:
	ldr	r1, =.L2bd4
	mov	r0, #1
	bl	__Func_9207c
	ldr	r1, =.L2c08
	mov	r0, #2
	bl	__Func_9207c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L9f0
	mov	r0, #3
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L9e8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L9e8:
	ldr	r1, =.L2c3c
	mov	r0, #3
	bl	__Func_9207c
.L9f0:
	mov	r0, #2
	bl	__Func_920e8
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r5, =.L369c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La2e
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
.La2e:
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_92adc
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La64
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.La64:
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La94
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
.La94:
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_9259c
	ldr	r0, =0x1473
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r2, #0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x8f
	mov	r0, #2
	mov	r1, #0x48
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x97
	mov	r0, #2
	mov	r1, #0x48
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0x9b
	lsl	r2, #1
	mov	r0, #2
	mov	r1, #0x58
	bl	__Func_921c4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lb28
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
.Lb28:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lb44
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
.Lb44:
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #9
	mov	r0, #2
	bl	OvlFunc_8ac
	mov	r0, #0x28
	bl	__Func_9163c
	bl	OvlFunc_8d8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #2
	bl	__Func_92064
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r7, #0xfe
	mov	r3, r7
	and	r3, r2
	mov	r2, #0x9b
	strb	r3, [r0]
	mov	r1, #0x50
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0x81
	strb	r3, [r0]
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lc08
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
.Lc08:
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x3c
	bl	__Func_92848
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lc24
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.Lc24:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #2
	bl	__Func_92064
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r7
	and	r3, r2
	mov	r2, #0x8f
	strb	r3, [r0]
	mov	r1, #0x48
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	ldr	r1, =.L2c08
	mov	r0, #2
	bl	__Func_9207c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lce4
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	b	.Lcf4

	.pool_aligned

.Lce4:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lcf4:
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Ld68
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	b	.Ld80
.Ld68:
	mov	r0, #1
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
.Ld80:
	mov	r5, #0x80
	lsl	r5, #6
	mov	r0, #1
	mov	r1, #0x28
	bl	OvlFunc_25a8
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_25c0
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r2, #0x80
	lsl	r2, #7
	mov	r8, r2
	mov	r0, #2
	mov	r1, r8
	mov	r2, #0x28
	bl	OvlFunc_25c0
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r6, #0xc0
	mov	r0, #0x3c
	bl	__Func_9163c
	lsl	r6, #7
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x3c
	bl	OvlFunc_25c0
	mov	r1, r5
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r1, r5
	mov	r5, #0xa0
	lsl	r5, #8
	mov	r0, #1
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_25c0
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	ldr	r0, =0x147b
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_25c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0x28
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x1e
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r1, #0xe0
	mov	r2, #0x1e
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_25c0
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r2, #0xa
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_25c0
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0xce
	bl	__Func_f9080
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =.L36a0
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_2608
	bl	__Func_41d8
	mov	r0, #0x14
	bl	__Func_30f8
	ldr	r0, =0x405210
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	ldr	r5, =.L2c70
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #2
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_9207c
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_25a8
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lfb0
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_25a8
	b	.Lfc0

	.pool_aligned

.Lfb0:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lfc0:
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r7, =.L369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1018
	mov	r0, #3
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, r5
	mov	r2, r5
	bl	__Func_92064
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__Func_9228c
	ldr	r1, =.L2cfc
	mov	r0, #3
	bl	__Func_9207c
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #3
	mov	r1, #0x13
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
.L1018:
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, r5
	mov	r1, r5
	mov	r0, #0
	bl	__Func_92064
	ldr	r6, =.L2cfc
	mov	r0, #0
	mov	r1, r6
	bl	__Func_9207c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_92054
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, r5
	mov	r1, r5
	mov	r0, #1
	bl	__Func_92064
	mov	r1, r6
	mov	r0, #1
	bl	__Func_9207c
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x13
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_92054
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r6
	mov	r0, #2
	bl	__Func_9207c
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x13
	mov	r0, #2
	bl	__Func_924d4
	ldr	r3, =.L36a0
	mov	r5, #0
	str	r5, [r3]
	mov	r0, #0xa0
	bl	__Func_9163c
	ldr	r0, =OvlFunc_2608
	bl	__Func_4278
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	ldr	r3, =.L3690
	ldr	r2, =.L368c
	str	r5, [r3]
	mov	r3, #0x80
	ldr	r5, =.L3694
	lsl	r3, #16
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_27ac
	bl	__Func_41d8
	mov	r0, #0xb4
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #0x50
	bl	OvlFunc_25a8
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_25a8
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
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r3, #2
	str	r3, [r5]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1214
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_25a8
	b	.L1224

	.pool_aligned

.L1214:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1224:
	ldr	r7, =.L3694
	mov	r3, #3
	str	r3, [r7]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	mov	r6, #0xfe
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92b08
	ldr	r3, =.L3698
	mov	r5, #0
	mov	r1, #0xc8
	str	r5, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_800
	bl	__Func_41d8
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r0, #0x13
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_92b08
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r2, #16
	mov	r0, #0x13
	lsl	r1, #15
	bl	__Func_923e4
	ldr	r5, =.L2d20
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_92b08
	mov	r1, #0xc8
	mov	r2, #0x89
	mov	r0, #0x14
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1336
	mov	r0, #0x15
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_92b08
	mov	r1, #0x94
	mov	r2, #0xfe
	mov	r0, #0x15
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_9207c
.L1336:
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_92b08
	mov	r1, #0xbc
	mov	r2, #0xe1
	mov	r0, #0x16
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #0x16
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1378
	mov	r5, r7
.L136c:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L136c
.L1378:
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_9163c
	ldr	r0, =OvlFunc_27ac
	bl	__Func_4278
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r0, #0x13
	bl	__Func_920a0
	mov	r0, #0x14
	bl	__Func_920a0
	ldr	r7, =.L369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L13c2
	mov	r0, #0x15
	bl	__Func_920a0
.L13c2:
	mov	r0, #0x16
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =.L2d7c
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L13ee
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_9207c
.L13ee:
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_920fc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r1, #0xae
	mov	r2, #0x8b
	mov	r0, #0x11
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xae
	mov	r2, #0x8b
	lsl	r1, #15
	mov	r0, #0x12
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L1450
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1450:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1490
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x1488
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_25a8
.L1490:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	ldr	r0, =0x1489
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_25a8
	mov	r1, #3
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_92b08
	mov	r0, #1
	bl	__Func_92054
	mov	r2, #1
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r2, #0
	mov	r0, #1
	mov	r1, #6
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r5, #0x80
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_25a8
	lsl	r5, #6
	mov	r0, #0
	mov	r1, #3
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r6, #0xc0
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	lsl	r6, #7
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L166e
	b	.L15e8

	.pool_aligned

.L15e8:
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92b08
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__Func_9228c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xe0
	mov	r2, #0x3c
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_25c0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_25a8
	b	.L167e
.L166e:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L167e:
	mov	r6, #0x80
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	lsl	r6, #7
	bl	__Func_92560
	mov	r7, #0x80
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_25c0
	lsl	r7, #6
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r7
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_92b08
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r2, #0
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r5, #0xc0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_92560
	lsl	r5, #7
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0x3c
	bl	OvlFunc_25c0
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1856
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L1878
.L1856:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L1878:
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_25c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_25a8
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L18f4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_25a8
	b	.L1904

	.pool_aligned

.L18f4:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1904:
	mov	r1, #0x80
	mov	r6, #0xa0
	lsl	r6, #8
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_25c0
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r5, #0x80
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	lsl	r5, #7
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r5
	bl	OvlFunc_25c0
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0xe0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_25c0
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_25c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_25c0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1a68
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	b	.L1a8c

	.pool_aligned

.L1a68:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1a8c:
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x15
	bl	__Func_f9080
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	ldr	r2, =.L3690
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L368c
	mov	r3, #0x80
	lsl	r3, #16
	ldr	r6, =.L3694
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r6]
	lsl	r1, #4
	ldr	r0, =OvlFunc_27ac
	bl	__Func_41d8
	mov	r0, #0x50
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
	mov	r5, #0xc0
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	lsl	r5, #8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, r5
	mov	r0, #2
	bl	OvlFunc_25c0
	ldr	r0, =0x149d
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_25c0
	ldr	r7, =.L369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1b3a
	mov	r0, #3
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_25c0
.L1b3a:
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92b08
	mov	r3, #2
	str	r3, [r6]
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r2, #16
	mov	r0, #0x13
	lsl	r1, #15
	bl	__Func_923e4
	ldr	r5, =.L2d20
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, #0xc8
	mov	r2, #0x89
	mov	r0, #0x14
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1bee
	mov	r1, #0x94
	mov	r2, #0xfe
	mov	r0, #0x15
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_923e4
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_9207c
.L1bee:
	mov	r1, #0xbc
	mov	r2, #0xe1
	lsl	r2, #16
	mov	r0, #0x16
	lsl	r1, #15
	bl	__Func_923e4
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r3, #3
	str	r3, [r6]
	mov	r5, r6
.L1c10:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L1c10
	mov	r0, #0x11
	mov	r1, #0x50
	bl	OvlFunc_25a8
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_25a8
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
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_25a8
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
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_25a8
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
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_25a8
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
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x11
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	mov	r6, #0xc0
	lsl	r6, #8
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, r6
	bl	OvlFunc_25c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_25a8
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
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_25c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_25c0
	mov	r0, #0x11
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_25c0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_25a8
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
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_25c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r0, #0
	b	.L1e94

	.pool_aligned

.L1e94:
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #3
	mov	r1, r6
	bl	__Func_92adc
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_25c0
	mov	r0, #0x11
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_25c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_25a8
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
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_92f84
	ldr	r0, =OvlFunc_27ac
	bl	__Func_4278
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x50
	bl	__Func_30f8
	mov	r0, #0x13
	bl	__Func_920a0
	mov	r0, #0x14
	bl	__Func_920a0
	mov	r0, #0x15
	ldr	r7, =.L369c
	bl	__Func_920a0
	mov	r0, #0x16
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	ldr	r5, =.L2d7c
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_9207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L2014
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_9207c
.L2014:
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_920fc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #1
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #2
	mov	r1, #2
	bl	__Func_92b08
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r5, #0xe0
	mov	r0, #2
	mov	r1, #2
	lsl	r5, #8
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_25c0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L21bc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2152
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_25c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_25c0
	b	.L21aa
.L2152:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_25c0
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
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_25c0
	ldr	r0, =0x14b4
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
.L21aa:
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	b	.L236e
.L21bc:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x14b6
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_25c0
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L222a
	b	.L239c
.L222a:
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_25a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L2274
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #3
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_25a8
	b	.L2284
.L2274:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L2284:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_25a8
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L22ec
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #3
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_25a8
	b	.L22fc
.L22ec:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L22fc:
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L232a
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_25c0
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_25c0
.L232a:
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_25a8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
.L236e:
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	b	.L24a0

	.pool_aligned

.L239c:
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	ldr	r0, =0x14bf
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L23e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_25c0
	mov	r0, #3
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_25a8
	b	.L23f4
.L23e4:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L23f4:
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25a8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_25a8
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L245c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0x14
	bl	OvlFunc_25c0
	mov	r0, #3
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_25a8
	b	.L246c
.L245c:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L246c:
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_25a8
.L24a0:
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
	beq	.L24e4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L24e4:
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
	beq	.L2514
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L2514:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2570
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2560
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L2560:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L2570:
	ldr	r0, =0x843
	bl	__Func_79358
	bl	__Func_8acc4
	bl	__Func_91750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8ec

.thumb_func_start OvlFunc_25a8
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25a8

.thumb_func_start OvlFunc_25c0
	push	{r5, lr}
	mov	r5, r2
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25c0

.thumb_func_start OvlFunc_25d8
	push	{lr}
	ldr	r3, [r0, #0x18]
	ldr	r2, =0x1eb8
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L25fc
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L25fc
	ldr	r3, [r0, #0x40]
	cmp	r3, r2
	bne	.L25fc
	bl	__Func_c0f4
.L25fc:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_25d8

.thumb_func_start OvlFunc_2608
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e40
	ldr	r6, [r3]
	mov	r3, #7
	and	r6, r3
	cmp	r6, #0
	bne	.L268a
	ldr	r3, =.L36a0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2624
	mov	r0, #0xc8
	bl	__Func_f9080
.L2624:
	mov	r1, #0xc4
	mov	r3, #0xd2
	mov	r0, #0x1a
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #15
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L268a
	ldr	r1, [r5, #0x50]
	add	r0, #0x23
	mov	r3, r1
	ldrb	r2, [r0]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =0x1999
	str	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_c300
	mov	r1, #0xc4
	mov	r0, r5
	lsl	r1, #15
	mov	r2, #0
	ldr	r3, =0x10d0000
	bl	__Func_d14c
	ldr	r1, =.L35d8
	mov	r0, r5
	bl	__Func_c2d8
.L268a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2608

.thumb_func_start OvlFunc_26a4
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L26bc
	mov	r1, #0xa
	bl	__Func_929d8
	b	.L26c2
.L26bc:
	mov	r1, #7
	bl	__Func_929d8
.L26c2:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_26a4

.thumb_func_start OvlFunc_26cc
	push	{r5, lr}
	ldr	r3, =.L369c
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L2702
	ldr	r1, =0xffc4ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.L26f4
	mov	r1, #0xd3
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.L26f4
	ldr	r1, =0x100ffff
	cmp	r3, r1
	ble	.L2756
.L26f4:
	ldr	r1, =0xffbaffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.L276a
	mov	r1, #0xc2
	b	.L2748
.L2702:
	ldr	r1, =0xffc4ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.L2720
	mov	r1, #0xc2
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.L2720
	mov	r1, #0xe6
	lsl	r1, #16
	cmp	r3, r1
	blt	.L2756
.L2720:
	ldr	r1, =0xff90ffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.L273c
	mov	r1, #0xd8
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.L273c
	mov	r1, #0xfa
	lsl	r1, #16
	cmp	r3, r1
	blt	.L2756
.L273c:
	ldr	r1, =0xffb1ffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.L276a
	mov	r1, #0xf1
.L2748:
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.L276a
	ldr	r2, =0x114ffff
	cmp	r3, r2
	bgt	.L276a
.L2756:
	mov	r0, #0x6a
	bl	__Func_f9080
	ldr	r1, =.L35ec
	mov	r0, r5
	bl	__Func_c2d8
	ldr	r2, =.L3698
	mov	r3, #1
	str	r3, [r2]
.L276a:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_26cc

.thumb_func_start OvlFunc_27ac
	push	{r5, r6, r7, lr}
	ldr	r2, =.L3694
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #2
	beq	.L27e0
	cmp	r3, #2
	bhi	.L27c2
	cmp	r3, #1
	beq	.L27c8
	b	.L281e
.L27c2:
	cmp	r3, #3
	beq	.L2802
	b	.L281e
.L27c8:
	ldr	r2, =.L3690
	ldr	r1, =0x3a97
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L27d6
	add	r3, #0x32
	str	r3, [r2]
.L27d6:
	ldr	r2, =.L368c
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #14
	b	.L27f6
.L27e0:
	ldr	r2, =.L3690
	ldr	r1, =0x752f
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L27ee
	add	r3, #0x32
	str	r3, [r2]
.L27ee:
	ldr	r2, =.L368c
	mov	r1, #0xc0
	ldr	r3, [r2]
	lsl	r1, #13
.L27f6:
	cmp	r3, r1
	ble	.L281e
	ldr	r1, =0xffffc000
	add	r3, r1
	str	r3, [r2]
	b	.L281e
.L2802:
	ldr	r0, =.L368c
	ldr	r3, =0xff800000
	ldr	r1, [r0]
	cmp	r1, r3
	bge	.L2810
	str	r5, [r2]
	b	.L281e
.L2810:
	ldr	r3, =.L3690
	ldr	r2, [r3]
	add	r2, #0x32
	str	r2, [r3]
	ldr	r2, =0xffffc000
	add	r3, r1, r2
	str	r3, [r0]
.L281e:
	ldr	r7, =iwram_1e40
	ldr	r3, [r7]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L28da
	ldr	r0, =0x11d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L28da
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r7]
	mov	r2, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.L2852
	mov	r0, #0xf6
	bl	__Func_f9080
.L2852:
	ldr	r3, =.L3694
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2874
	bl	__Func_4458
	ldr	r3, =.L3690
	ldr	r3, [r3]
	mul	r3, r0
	ldr	r2, [r6]
	lsr	r3, #16
	lsl	r3, #8
	add	r2, r3
	ldr	r3, =.L368c
	ldr	r3, [r3]
	add	r7, r2, r3
	b	.L2882
.L2874:
	bl	__Func_4458
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r1, =0xff800000
	add	r3, r0
	add	r7, r3, r1
.L2882:
	bl	__Func_4458
	ldr	r2, [r6, #8]
	lsl	r0, #8
	ldr	r3, =0xff800000
	add	r2, r0
	add	r2, r3
	mov	r3, r5
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r1, [r5, #0x50]
	ldr	r3, =0xe666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, r1
	add	r3, #0x26
	str	r7, [r5, #8]
	str	r2, [r5, #0x10]
	strb	r0, [r3]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	ldr	r1, =.L3610
	mov	r0, r5
	bl	__Func_c2d8
.L28da:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_27ac

.thumb_func_start OvlFunc_2910
	push	{lr}
	ldr	r0, =0x845
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2948
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #9
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #5
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.L2952
.L2948:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L2952:
	ldr	r0, =0x847
	bl	__Func_79338
	cmp	r0, #0
	beq	.L298e
	mov	r3, #5
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5b
	mov	r1, #0x13
	mov	r2, #0x48
	mov	r3, #9
	bl	__Func_10424
	mov	r3, #8
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0xb
	mov	r2, #5
	mov	r3, #7
	bl	__Func_10704
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
.L298e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2910

	.section .data

.L2bd4:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2bd4, (0x2c08-0x2bd4)
.L2c08:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c08, (0x2c3c-0x2c08)
.L2c3c:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c3c, (0x2c70-0x2c3c)
.L2c70:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c70, (0x2cfc-0x2c70)
.L2cfc:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2cfc, (0x2d20-0x2cfc)
.L2d20:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2d20, (0x2d7c-0x2d20)
.L2d7c:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2d7c, (0x2dd8-0x2d7c)
.L2dd8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2dd8, (0x2e20-0x2dd8)
.L2e20:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e20, (0x2e34-0x2e20)
.L2e34:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e34, (0x2e48-0x2e34)
.L2e48:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e48, (0x2e60-0x2e48)
.L2e60:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e60, (0x2f80-0x2e60)
.L2f80:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2f80, (0x2fc8-0x2f80)
.L2fc8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2fc8, (0x3010-0x2fc8)
.L3010:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3010, (0x3040-0x3010)
.L3040:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3040, (0x3080-0x3040)
.L3080:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3080, (0x3098-0x3080)
.L3098:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3098, (0x32d8-0x3098)
.L32d8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x32d8, (0x3368-0x32d8)
.L3368:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3368, (0x33b0-0x3368)
.L33b0:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x33b0, (0x3590-0x33b0)
.L3590:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3590, (0x35d8-0x3590)
.L35d8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x35d8, (0x35ec-0x35d8)
.L35ec:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x35ec, (0x3610-0x35ec)
.L3610:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3610

	.section .bss

	.lcomm	.L368c, 4
	.lcomm	.L3690, 4
	.lcomm	.L3694, 4
	.lcomm	.L3698, 4
	.lcomm	.L369c, 4
	.lcomm	.L36a0, 4
