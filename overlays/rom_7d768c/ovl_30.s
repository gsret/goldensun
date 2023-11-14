	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L4a1c
	b	.L4a
.L48:
	ldr	r0, =.L4614
.L4a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_60
	ldr	r0, =.L4a7c
	bx	lr
.func_end OvlFunc_60

.thumb_func_start OvlFunc_68
	ldr	r0, =.L4a8c
	bx	lr
.func_end OvlFunc_68

.thumb_func_start OvlFunc_70
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.L88
	ldr	r0, =.L4b3c
	b	.La8
.L88:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L98
	ldr	r0, =.L4e6c
	b	.La8
.L98:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.La6
	ldr	r0, =.L4d64
	b	.La8
.La6:
	ldr	r0, =.L4b84
.La8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_70

.thumb_func_start OvlFunc_c8
	push	{r5, r6, lr}
	ldr	r5, =0x1ff1
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lf0
	add	r0, r5, #1
	bl	__Func_92b94
	b	.Lf6
.Lf0:
	add	r0, r5, #2
	bl	__Func_92b94
.Lf6:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c8

.thumb_func_start OvlFunc_108
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	lsl	r3, #16
	asr	r6, r3, #16
	bl	__Func_916b0
	bl	__Func_8e118
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1b8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x969
	bl	__Func_79374
	ldr	r0, =0x1ff7
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	b	.L160

	.pool_aligned

.L160:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x80
	lsl	r3, r6, #16
	lsl	r2, #23
	mov	r6, #0x80
	lsl	r6, #7
	cmp	r3, r2
	bne	.L188
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x68
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
.L188:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x30
	mov	r0, r5
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r0, r5
	mov	r1, #0x40
	mov	r2, #0
	bl	__Func_92304
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	bl	__Func_92adc
	b	.L252
.L1b8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x969
	bl	__Func_79358
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x60
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r6, =0x1ff8
	mov	r0, r6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L21a
	add	r0, r6, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	b	.L228
.L21a:
	add	r0, r6, #2
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L228:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, r5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x40
	mov	r0, r5
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_92304
.L252:
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_108

.thumb_func_start OvlFunc_264
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x966
	bl	__Func_79338
	cmp	r0, #0
	bne	.L320
	ldr	r0, =0x966
	bl	__Func_79358
	ldr	r0, =0x967
	bl	__Func_79358
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x60
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r6, =0x2241
	mov	r0, r6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2d8
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r6, #1
	bl	__Func_92b94
	b	.L2de
.L2d8:
	add	r0, r6, #2
	bl	__Func_92b94
.L2de:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, r5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x40
	mov	r0, r5
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_92304
	b	.L32e
.L320:
	ldr	r0, =0x2245
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92c40
.L32e:
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_264

.thumb_func_start OvlFunc_348
	push	{r5, r6, lr}
	ldr	r6, =0x2006
	mov	r5, r0
	mov	r0, r6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L382
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	add	r0, r6, #1
	bl	__Func_92b94
	b	.L398
.L382:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r5
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	add	r0, r6, #2
	bl	__Func_92b94
.L398:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_348

.thumb_func_start OvlFunc_3b0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	bl	__Func_92054
	mov	r8, r0
	bl	__Func_916b0
	ldr	r3, =.L4570
	mov	r10, r3
	mov	r1, r10
	mov	r0, r5
	bl	__Func_9207c
	ldr	r0, =0x2009
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	mov	r6, #0x80
	mov	r0, r5
	bl	__Func_920a0
	lsl	r6, #9
	mov	r3, r8
	str	r6, [r3, #0x1c]
	str	r6, [r3, #0x18]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, r5
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, r5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, r10
	bl	__Func_9207c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, r5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, r8
	str	r6, [r3, #0x1c]
	str	r6, [r3, #0x18]
	mov	r0, r5
	mov	r1, r10
	bl	__Func_9207c
	bl	__Func_91750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3b0

.thumb_func_start OvlFunc_49c
	push	{r5, lr}
	mov	r5, r1
	bl	__Func_916b0
	ldr	r0, =0x2052
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x968
	bl	__Func_79338
	cmp	r0, #0
	bne	.L512
	ldr	r0, =0x968
	bl	__Func_79358
	bl	__Func_97608
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, r5
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, r5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.L512:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_49c

.thumb_func_start OvlFunc_524
	push	{r5, r6, lr}
	ldr	r5, =0x22a8
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L54c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L552
.L54c:
	add	r0, r5, #2
	bl	__Func_92b94
.L552:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_524

.thumb_func_start OvlFunc_564
	push	{r5, r6, lr}
	ldr	r5, =0x22ab
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L58c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L592
.L58c:
	add	r0, r5, #2
	bl	__Func_92b94
.L592:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_564

.thumb_func_start OvlFunc_5a4
	push	{r5, lr}
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r5, =0x2352
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0x1e
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L602
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	b	.L664
.L602:
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #0xcd
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xcd
	mov	r1, #0
	bl	__Func_91a58
	ldr	r0, =0xf31
	bl	__Func_79358
.L664:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5a4

.thumb_func_start OvlFunc_674
	push	{r5, r6, lr}
	bl	__Func_916b0
	ldr	r0, =0x2280
	bl	__Func_92b94
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x54
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x54
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_30f8
	mov	r5, #0x80
	ldr	r3, .L6dc	@ 0x1140
	lsl	r5, #19
	mov	r0, #1
	mov	r1, #0
	strh	r3, [r5]
	neg	r0, r0
	bl	__Func_92f84
	ldr	r3, .L6e0	@ 0x140
	mov	r0, #0
	strh	r3, [r5]
	bl	__Func_92054
	mov	r5, #1
	add	r0, #0x54
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x54
	strb	r5, [r0]
	mov	r1, #0x1f
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	b	.L6e8

	.align	2, 0
.L6dc:
	.word	0x1140
.L6e0:
	.word	0x140
	.pool

.L6e8:
	bl	__Func_c528
	mov	r1, #0xf0
	mov	r2, #0xd0
	mov	r0, #1
	lsl	r1, #15
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xd0
	mov	r2, #0xa0
	mov	r0, #3
	lsl	r1, #15
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xf0
	mov	r2, #0xf0
	mov	r0, #2
	lsl	r1, #15
	lsl	r2, #15
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0
	bl	__Func_92adc
	ldr	r6, =iwram_1ebc
	mov	r5, #0xe4
	ldr	r2, [r6]
	mov	r3, #0x3c
	lsl	r5, #1
	str	r3, [r2, r5]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r2, [r6]
	mov	r3, #0x18
	str	r3, [r2, r5]
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #3
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	ldr	r5, =0xfffd0000
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x40]
	add	r3, r5
	str	r3, [r0, #0x40]
	mov	r1, #0x20
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x22
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x21
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
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
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x83
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x2d
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L93e
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x22
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x21
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L976
.L93e:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x21
	mov	r0, #0
	bl	__Func_92548
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L976:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__Func_92064
	mov	r1, #0x20
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0
	bl	__Func_92304
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.La5a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.La5a:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.La8a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.La8a:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Laba
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.Laba:
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_674

.thumb_func_start OvlFunc_af8
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	lsl	r3, #16
	asr	r5, r3, #16
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x1ffb
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.Lb36
	b	.Lfde
.Lb36:
	ldr	r0, =0x96a
	bl	__Func_79338
	b	.Lb4c

	.pool_aligned

.Lb4c:
	cmp	r0, #0
	beq	.Lb5e
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_b3398
	b	.Lfe2
.Lb5e:
	mov	r0, #0x14
	bl	__Func_9163c
	lsl	r3, r5, #16
	lsr	r5, r3, #16
	cmp	r5, #0
	bne	.Lb76
	mov	r0, #0
	mov	r1, #0x80
	mov	r2, #0x78
	bl	__Func_921c4
.Lb76:
	mov	r6, #0x80
	lsl	r6, #8
	cmp	r5, r6
	bne	.Lb88
	mov	r0, #0
	mov	r1, #0xf0
	mov	r2, #0x78
	bl	__Func_921c4
.Lb88:
	mov	r0, #0
	mov	r1, #0xb8
	mov	r2, #0x78
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, r6
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #1
	bl	__Func_9233c
	mov	r0, #1
	bl	__Func_920e8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #9
	mov	r2, r6
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #0x28
	mov	r2, #0
	bl	__Func_92304
	mov	r2, #0x20
	mov	r0, #1
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, r6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r3, #0
	mov	r2, #0
	neg	r1, r1
	mov	r0, #2
	bl	__Func_9233c
	mov	r0, #2
	bl	__Func_920e8
	mov	r0, #0xa
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
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #9
	mov	r2, r6
	bl	__Func_92064
	mov	r1, #0x28
	mov	r0, #2
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92304
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r3, r6
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #3
	bl	__Func_9233c
	mov	r0, #3
	bl	__Func_920e8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #9
	mov	r2, r6
	bl	__Func_92064
	mov	r0, #3
	mov	r1, #0x28
	mov	r2, #0
	bl	__Func_92304
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92304
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_933f8
	mov	r1, #0x38
	mov	r0, #0
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r2, #0x20
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x96a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld6e
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	b	.Ld7e
.Ld6e:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Ld7e:
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x96a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lda0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	b	.Ldb0
.Lda0:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Ldb0:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_b3398
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
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x96a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le56
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	b	.Le66
.Le56:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Le66:
	mov	r0, #3
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x96a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le88
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	b	.Le98
.Le88:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Le98:
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x20
	bl	__Func_92304
	mov	r1, #0x70
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_922c4
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r1, #0x70
	neg	r1, r1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_922c4
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r2, #0x18
	mov	r1, #0
	neg	r2, r2
	mov	r0, #2
	bl	__Func_92304
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #1
	bl	__Func_92304
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
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
	beq	.Lf68
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.Lf68:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lf98
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.Lf98:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lfc8
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.Lfc8:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x96a
	bl	__Func_79358
.Lfde:
	bl	__Func_91750
.Lfe2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_af8

.thumb_func_start OvlFunc_ff8
	push	{lr}
	ldr	r0, =0x96b
	bl	__Func_79358
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x2021
	bl	__Func_92b94
	mov	r1, #0x82
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0x28
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0x92
	mov	r2, #0xb4
	lsl	r2, #1
	mov	r0, #0x14
	lsl	r1, #2
	bl	__Func_921c4
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x84
	mov	r2, #0xb0
	mov	r0, #0x15
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0x84
	mov	r2, #0xb8
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0x16
	bl	__Func_921c4
	mov	r0, #3
	bl	__Func_30f8
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x14
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_924d4
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x15
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x15
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r2, #0x50
	mov	r0, #0x14
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x16
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #0x16
	mov	r2, #0x3c
	bl	__Func_92848
	mov	r0, #0x15
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0x14
	mov	r0, #0x16
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	b	.L1408

	.pool_aligned

.L1408:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #0x16
	mov	r2, #0x3c
	bl	__Func_92848
	mov	r0, #0x15
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x14
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	mov	r1, #0x16
	mov	r2, #0x3c
	bl	__Func_92848
	mov	r0, #0x15
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0x14
	mov	r0, #0x16
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0x16
	bl	__Func_92848
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x15
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_92064
	mov	r0, #0x16
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_92064
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_922c4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_92304
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x14
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x14
	bl	__Func_92304
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0x78
	mov	r2, #0
	bl	__Func_92304
	mov	r0, #0x14
	mov	r1, #0x3c
	mov	r2, #0
	bl	__Func_92304
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_ff8

.thumb_func_start OvlFunc_17e8
	push	{r5, r6, r7, lr}
	bl	__Func_916b0
	ldr	r0, =0x228c
	bl	__Func_92b94
	mov	r1, #0x1f
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0xd0
	mov	r2, #0xd0
	mov	r0, #1
	lsl	r1, #15
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r2, #0xf0
	mov	r0, #3
	lsl	r1, #15
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xf0
	mov	r2, #0xf0
	mov	r0, #2
	lsl	r1, #15
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	ldr	r5, =iwram_1ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0xc
	str	r3, [r2]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #9
	bl	__Func_8fe38
	ldr	r7, [r5, #0x10]
	ldr	r3, =0x52a
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r3, =0x534
	add	r2, r7, r3
	ldr	r3, =0x1f1f
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r3, =0x52a
	mov	r5, #1
	add	r6, r7, r3
.L189e:
	mov	r0, #3
	bl	__Func_30f8
	strh	r5, [r6]
	add	r5, #1
	cmp	r5, #5
	ble	.L189e
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r3, =0x52a
	mov	r5, #5
	add	r6, r7, r3
.L18c6:
	mov	r0, #3
	bl	__Func_30f8
	strh	r5, [r6]
	add	r5, #1
	cmp	r5, #0x1f
	ble	.L18c6
	ldr	r3, =0x536
	ldr	r6, =iwram_1ebc
	add	r2, r7, r3
	mov	r3, #0x1f
	strh	r3, [r2]
	ldr	r1, [r6]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xe0
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
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0
	bl	__Func_92054
	ldr	r5, =0xfffd0000
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x40]
	add	r3, r5
	str	r3, [r0, #0x40]
	mov	r1, #0x20
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x22
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x21
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x28
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
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1ab0
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x21
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x103
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
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L1af8

	.pool_aligned

.L1ab0:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x22
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x1e
	bl	__Func_92560
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L1af8:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
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
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
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
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1c28
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x21
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x107
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	mov	r5, #0
	strh	r3, [r2]
	b	.L1c60
.L1c28:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x22
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	mov	r5, #1
	bl	__Func_92f84
.L1c60:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
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
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x23
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	cmp	r5, #0
	bne	.L1d88
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
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L1dd0

	.pool_aligned

.L1d88:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L1dd0:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_937b8
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
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x28
	bl	__Func_92848
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r1, =iwram_1ae8
	ldr	r3, [r1]
	mov	r2, #0xf0
	and	r3, r2
	cmp	r3, #0
	bne	.L1e4a
	mov	r6, r1
	mov	r5, #0xf0
.L1e3c:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.L1e3c
.L1e4a:
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__Func_92064
	mov	r1, #0x20
	mov	r2, #8
	neg	r2, r2
	neg	r1, r1
	mov	r0, #0
	bl	__Func_92304
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
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
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
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
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1f7c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1f7c:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1fac
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L1fac:
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1fdc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L1fdc:
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17e8

.thumb_func_start OvlFunc_2014
	push	{r5, lr}
	mov	r0, #0x1e
	bl	__Func_f9080
	bl	__Func_916b0
	ldr	r0, =0x22c4
	bl	__Func_92b94
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xe
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9335c
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0xbe
	mov	r1, #0xd0
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xb8
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_933f8
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
	mov	r2, #0x18
	lsl	r3, #8
	bl	__Func_9233c
	mov	r3, #0xc0
	mov	r2, #0x10
	lsl	r3, #8
	mov	r1, #0x10
	mov	r0, #2
	bl	__Func_9233c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x951
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2140
	b	.L2320
.L2140:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92304
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x20
	bl	__Func_92304
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0x14
	bl	__Func_92064
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0x10
	strb	r3, [r0]
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0x14
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x80
	strb	r3, [r0]
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xe
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92304
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa4
	mov	r1, #2
	bl	__Func_19908
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa4
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, #0xa4
	bl	__Func_91a58
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x10
	mov	r0, #0xe
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92c40
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L23a2
.L2320:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #5
	strh	r3, [r2]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92c40
.L23a2:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L23f0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
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
	b	.L241c

	.pool_aligned

.L23f0:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
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
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
.L241c:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_92560
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0x14
	bl	__Func_92304
	mov	r0, #2
	bl	__Func_30f8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r1, #2
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #1
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x83
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
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
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L26e0
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe
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
	b	.L270c

	.pool_aligned

.L26e0:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
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
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L270c:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
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
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0x14
	mov	r2, #0x3c
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r2, #0x32
	mov	r1, #0xe
	mov	r0, #0x14
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0x14
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
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
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
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_92848
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x3c
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
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92848
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2a3a
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	b	.L2aa2
.L2a3a:
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r5, =iwram_1ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2a8c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2aa2

	.pool_aligned

.L2a8c:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L2aa2:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
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
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r0, #0x14
	mov	r1, #0xe
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x46
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
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
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
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
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_9280c
	mov	r0, #0x32
	bl	__Func_9163c
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
	mov	r0, #0xe
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #0x1e
	bl	__Func_9280c
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
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
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
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__Func_92848
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x14
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x18
	bl	__Func_92304
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0x14
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	b	.L2f20

	.pool_aligned

.L2f20:
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x14
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r2, #0x18
	mov	r0, #0x14
	mov	r1, #0
	neg	r2, r2
	bl	__Func_92304
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
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
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x32
	ldr	r1, =0x101
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
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
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	b	.L339c

	.pool_aligned

.L339c:
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L34d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #2
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
	b	.L34f2
.L34d4:
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
.L34f2:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__Func_9280c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92848
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x3c
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
	mov	r0, #3
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #0x3c
	bl	__Func_92848
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L36dc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
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
	b	.L36fa

	.pool_aligned

.L36dc:
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
.L36fa:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
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
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xe
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0x46
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
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
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x83
	mov	r2, #0x32
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x14
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3928
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xe
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
	b	.L3952

	.pool_aligned

.L3928:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L3952:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, #0xe
	bl	__Func_9280c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x14
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x14
	bl	__Func_920c0
	mov	r0, #1
	mov	r1, #0x14
	bl	__Func_920c0
	mov	r0, #3
	mov	r1, #0x14
	bl	__Func_920c0
	mov	r0, #2
	mov	r1, #0x14
	bl	__Func_920c0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x20
	bl	__Func_92304
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0
	mov	r2, #0x50
	mov	r0, #0x14
	bl	__Func_922c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_923c4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
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
	mov	r1, #0xe
	bl	__Func_920c0
	mov	r0, #1
	mov	r1, #0xe
	bl	__Func_920c0
	mov	r0, #3
	mov	r1, #0xe
	bl	__Func_920c0
	mov	r1, #0xe
	mov	r0, #2
	bl	__Func_920c0
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x18
	bl	__Func_92304
	mov	r1, #0x50
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92304
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_92304
	mov	r1, #0x40
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_92304
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #3
	bl	__Func_920a0
	mov	r0, #2
	bl	__Func_920a0
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0
	bl	__Func_92848
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	bl	__Func_92848
	mov	r0, #0x1e
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
	beq	.L3ca4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L3ca4:
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
	beq	.L3cd4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L3cd4:
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
	beq	.L3d1c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
	b	.L3d1c

	.pool_aligned

.L3d1c:
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_8acc4
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2014

.thumb_func_start OvlFunc_3d40
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x20
	bne	.L3d8e
	mov	r0, #1
	bl	__Func_118a8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_9228c
	b	.L3dc4
.L3d8e:
	cmp	r3, #0x1e
	bne	.L3dac
	mov	r0, #4
	bl	__Func_118a8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_92208
	b	.L3dc4
.L3dac:
	mov	r0, #2
	bl	__Func_118a8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_92208
.L3dc4:
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	mov	r0, #1
	bl	__Func_118c0
	mov	r0, #2
	bl	__Func_118c0
	mov	r0, #4
	bl	__Func_118c0
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3d40

.thumb_func_start OvlFunc_3df8
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L4550
	mov	r1, #0x24
	mov	r2, #0xa
	bl	__Func_10560
	mov	r2, #0x10
	mov	r1, #2
	neg	r2, r2
	mov	r0, #0
	bl	__Func_92208
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, #2
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3df8

.thumb_func_start OvlFunc_3e40
	push	{r5, lr}
	ldr	r0, =0x96c
	bl	__Func_79358
	bl	__Func_916b0
	bl	__Func_8e118
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0x88
	mov	r0, #0
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r5, =0x2233
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3eb8
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L3f70
.L3eb8:
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #9
	mov	r2, #0x3c
	bl	__Func_92848
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #9
	bl	__Func_92848
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #8
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
.L3f70:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3e40

.thumb_func_start OvlFunc_3f84
	push	{lr}
	ldr	r0, =0x96d
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3fa6
	ldr	r0, =0x96d
	bl	__Func_79358
	ldr	r0, =0x2239
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	b	.L3fb4
.L3fa6:
	ldr	r0, =0x223a
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
.L3fb4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_3f84

.thumb_func_start OvlFunc_3fc4
	push	{r5, r6, lr}
	ldr	r6, =0x22a3
	mov	r5, r0
	mov	r0, r6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3ff4
	add	r0, r6, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	b	.L4002
.L3ff4:
	add	r0, r6, #2
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L4002:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3fc4

.thumb_func_start OvlFunc_400c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_1776c
	ldr	r0, =0x29e0
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_400c

.thumb_func_start OvlFunc_4034
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.L406a
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4058
	ldr	r0, =.L5ad8
	b	.L408a
.L4058:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4066
	ldr	r0, =.L5a48
	b	.L408a
.L4066:
	ldr	r0, =.L59e8
	b	.L408a
.L406a:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L407a
	ldr	r0, =.L5688
	b	.L408a
.L407a:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4088
	ldr	r0, =.L5394
	b	.L408a
.L4088:
	ldr	r0, =.L5004
.L408a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_4034

.thumb_func_start OvlFunc_40b4
	push	{r5, r6, r7, lr}
	mov	r0, #1
	sub	sp, #0x20
	bl	__Func_118c0
	mov	r0, #2
	bl	__Func_118c0
	mov	r0, #4
	bl	__Func_118c0
	ldr	r6, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r6, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0x5a
	bne	.L40e4
	ldr	r0, =0x962
	bl	__Func_79358
	ldrh	r2, [r5]
.L40e4:
	lsl	r3, r2, #16
	mov	r2, #0xb6
	lsl	r2, #15
	cmp	r3, r2
	bne	.L40fc
	ldr	r0, =0x962
	bl	__Func_79358
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79358
.L40fc:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.L410e
	b	.L430e
.L410e:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xb
	bne	.L411c
	ldr	r0, =0x12f
	bl	__Func_79374
.L411c:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L41e6
	ldr	r0, =0xf31
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L4140
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L419e
.L4140:
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, r0
	mov	r2, r1
	add	r2, #0x5c
	mov	r3, #1
	strb	r3, [r2]
	mov	r3, r1
	add	r3, #0x55
	strb	r5, [r3]
	mov	r3, #0x80
	ldr	r6, [r1, #0x50]
	lsl	r3, #11
	str	r3, [r1, #0xc]
	mov	r3, r6
	add	r3, #0x27
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	mov	r5, r0
	mov	r0, #0xcd
	bl	__Func_1a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r5
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
.L419e:
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x21
	bne	.L41d0
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L41d0
	ldr	r0, =0x96f
	bl	__Func_79358
	mov	r1, #0xd0
	mov	r2, #0xb0
	mov	r0, #0xe
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	bl	OvlFunc_2014
.L41d0:
	mov	r1, #5
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	b	.L4208
.L41e6:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4208
	ldr	r0, =0x966
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4208
	mov	r1, #0xf0
	mov	r2, #0x90
	mov	r0, #0xa
	lsl	r1, #15
	lsl	r2, #15
	bl	__Func_923e4
.L4208:
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	str	r2, [r3]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	mov	r1, #0xe1
	ldr	r2, =ewram_240
	lsl	r1, #1
	strb	r3, [r0]
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x63
	bne	.L4288
	add	r0, sp, #0x10
	bl	__Func_796c4
	cmp	r0, #0
	ble	.L4262
	add	r7, sp, #0x10
	mov	r6, #0
	mov	r5, r0
.L4246:
	ldrsh	r0, [r6, r7]
	bl	__Func_77394
	ldrh	r3, [r0, #0x34]
	strh	r3, [r0, #0x38]
	ldrh	r3, [r0, #0x36]
	sub	r5, #1
	strh	r3, [r0, #0x3a]
	ldrsh	r0, [r6, r7]
	bl	__Func_7822c
	add	r6, #2
	cmp	r5, #0
	bne	.L4246
.L4262:
	mov	r0, #1
	bl	__Func_7961c
	mov	r0, #2
	bl	__Func_7961c
	mov	r0, #3
	bl	__Func_7961c
	bl	__Func_7a7a0
	bl	OvlFunc_17e8
	ldr	r2, =ewram_240
	mov	r3, #0xe1
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #8
	strh	r3, [r1]
.L4288:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x62
	bne	.L430e
	mov	r0, sp
	bl	__Func_796c4
	cmp	r0, #0
	ble	.L42c2
	mov	r7, sp
	mov	r6, #0
	mov	r5, r0
.L42a6:
	ldrsh	r0, [r6, r7]
	bl	__Func_77394
	ldrh	r3, [r0, #0x34]
	strh	r3, [r0, #0x38]
	ldrh	r3, [r0, #0x36]
	sub	r5, #1
	strh	r3, [r0, #0x3a]
	ldrsh	r0, [r6, r7]
	bl	__Func_7822c
	add	r6, #2
	cmp	r5, #0
	bne	.L42a6
.L42c2:
	mov	r0, #1
	bl	__Func_7961c
	mov	r0, #2
	bl	__Func_7961c
	mov	r0, #3
	bl	__Func_7961c
	bl	__Func_7a7a0
	ldr	r0, =0x966
	bl	__Func_79358
	ldr	r0, =0x967
	bl	__Func_79358
	mov	r1, #0xe0
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #14
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_92adc
	bl	OvlFunc_674
	ldr	r3, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #8
	strh	r3, [r2]
.L430e:
	mov	r0, #0
	add	sp, #0x20
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_40b4

	.section .data

.L4550:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4550, (0x4570-0x4550)
.L4570:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4570, (0x4614-0x4570)
.L4614:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4614, (0x4a1c-0x4614)
.L4a1c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4a1c, (0x4a7c-0x4a1c)
.L4a7c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4a7c, (0x4a8c-0x4a7c)
.L4a8c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4a8c, (0x4b3c-0x4a8c)
.L4b3c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4b3c, (0x4b84-0x4b3c)
.L4b84:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4b84, (0x4d64-0x4b84)
.L4d64:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4d64, (0x4e6c-0x4d64)
.L4e6c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4e6c, (0x5004-0x4e6c)
.L5004:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5004, (0x5394-0x5004)
.L5394:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5394, (0x5688-0x5394)
.L5688:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5688, (0x59e8-0x5688)
.L59e8:
	.incbin "overlays/rom_7d768c/orig.bin", 0x59e8, (0x5a48-0x59e8)
.L5a48:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5a48, (0x5ad8-0x5a48)
.L5ad8:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5ad8
