	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L7a
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
	beq	.L7a
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L6e
	mov	r0, r2
.L6e:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L76
	mov	r0, r2
.L76:
	add	r3, r0
	strh	r3, [r5, #6]
.L7a:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_88
	mov	r1, r0
	add	r1, #0x64
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r3, [r0, #8]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #8]
	mov	r4, #0x66
	add	r4, r0
	mov	r3, #0
	ldrsh	r2, [r4, r3]
	ldr	r3, [r0, #0xc]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, =0x666
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	add	r3, #5
	strh	r3, [r1]
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	mov	r0, #0
	bx	lr
.func_end OvlFunc_88

.thumb_func_start OvlFunc_cc
	ldr	r0, =.L1478
	bx	lr
.func_end OvlFunc_cc

.thumb_func_start OvlFunc_d4
	mov	r0, #0
	bx	lr
.func_end OvlFunc_d4

.thumb_func_start OvlFunc_d8
	push	{lr}
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le8
	ldr	r0, =.L1590
	b	.Lea
.Le8:
	ldr	r0, =.L1568
.Lea:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d8

.thumb_func_start OvlFunc_fc
	push	{r5, lr}
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10c
	ldr	r5, =.L18b8
	b	.L11c
.L10c:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L11a
	ldr	r5, =.L1738
	b	.L11c
.L11a:
	ldr	r5, =.L15b8
.L11c:
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_fc

.thumb_func_start OvlFunc_140
	push	{lr}
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L150
	ldr	r0, =.L1ac8
	b	.L16e
.L150:
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L15e
	ldr	r0, =.L1ffc
	b	.L16e
.L15e:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16c
	ldr	r0, =.L1da4
	b	.L16e
.L16c:
	ldr	r0, =.L1c00
.L16e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_140

.thumb_func_start OvlFunc_190
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0xf6d
	bl	__Func_92b94
	mov	r2, #6
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_190

.thumb_func_start OvlFunc_1bc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0xf73
	bl	__Func_92b94
	mov	r2, #6
	mov	r0, #0
	mov	r1, #0x13
	bl	__Func_92848
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bc

.thumb_func_start OvlFunc_1e8
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x81b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L214
	ldr	r0, =0x11a6
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	ldr	r2, =.L12fc
	mov	r0, #0x14
	lsl	r1, #9
	bl	__Func_92a1c
	b	.L23e
.L214:
	ldr	r5, =0x11a4
	mov	r0, r5
	bl	__Func_92b94
	add	r5, #1
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	mov	r0, r5
	mov	r1, #1
	bl	__Func_1776c
	mov	r0, #0xb4
	mov	r1, #0
	bl	__Func_91a58
	ldr	r0, =0x81b
	bl	__Func_79358
.L23e:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e8

.thumb_func_start OvlFunc_258
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x11be
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_258

.thumb_func_start OvlFunc_278
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1c3d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_278

.thumb_func_start OvlFunc_298
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1c40
	bl	__Func_92b94
	ldr	r0, =0x800b
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_298

.thumb_func_start OvlFunc_2bc
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2ce
	bl	__Func_95214
.L2ce:
	mov	r0, #0x7b
	bl	__Func_f9080
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, r5
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2bc

.thumb_func_start OvlFunc_308
	push	{lr}
	mov	r0, #1
	bl	OvlFunc_2bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_308

.thumb_func_start OvlFunc_314
	push	{lr}
	mov	r0, #2
	bl	OvlFunc_2bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_320
	push	{lr}
	mov	r0, #3
	bl	OvlFunc_2bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_320

.thumb_func_start OvlFunc_32c
	push	{lr}
	mov	r0, #4
	bl	OvlFunc_2bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_32c

.thumb_func_start OvlFunc_338
	push	{lr}
	mov	r0, #5
	bl	OvlFunc_2bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_338

.thumb_func_start OvlFunc_344
	push	{lr}
	mov	r0, #6
	bl	OvlFunc_2bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_344

.thumb_func_start OvlFunc_350
	push	{lr}
	mov	r0, #7
	bl	OvlFunc_2bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_350

.thumb_func_start OvlFunc_35c
	push	{lr}
	mov	r0, #8
	bl	OvlFunc_2bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_35c

.thumb_func_start OvlFunc_368
	push	{r5, lr}
	ldr	r5, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x10
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
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r0, #0x16
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_95160
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_95240
	mov	r0, #0x1e
	bl	__Func_30f8
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	__Func_95268
.L43c:
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L474
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.L464
	ldr	r0, =0x81d
	bl	__Func_79338
	cmp	r0, #0
	bne	.L464
	bl	OvlFunc_658
.L464:
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r0]
.L474:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L4b6
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4b6
	mov	r1, #0xe3
	mov	r2, #0x96
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0xd
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xd
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #4
	bl	__Func_118a8
.L4b6:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_368

.thumb_func_start OvlFunc_4dc
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L4fa
	mov	r0, #1
	mov	r1, #0x15
	bl	__Func_b0278
	b	.L53c
.L4fa:
	bl	__Func_916b0
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L518
	ldr	r0, =0x1c06
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_93054
	b	.L538
.L518:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L52a
	ldr	r0, =0x11a2
	bl	__Func_92b94
	b	.L530
.L52a:
	ldr	r0, =0xf53
	bl	__Func_92b94
.L530:
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
.L538:
	bl	__Func_91750
.L53c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4dc

.thumb_func_start OvlFunc_55c
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L57a
	mov	r0, #2
	mov	r1, #0x16
	bl	__Func_b0278
	b	.L5b4
.L57a:
	bl	__Func_916b0
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L590
	ldr	r0, =0x1c09
	bl	__Func_92b94
	b	.L5a8
.L590:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5a2
	ldr	r0, =0x11a3
	bl	__Func_92b94
	b	.L5a8
.L5a2:
	ldr	r0, =0xf54
	bl	__Func_92b94
.L5a8:
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L5b4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_55c

.thumb_func_start OvlFunc_5d4
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L5f2
	mov	r0, #3
	mov	r1, #0x14
	bl	__Func_b0278
	b	.L63a
.L5f2:
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L614
	bl	__Func_916b0
	ldr	r0, =0x1c0a
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	b	.L63a
.L614:
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.L624
	bl	OvlFunc_1e8
	b	.L63a
.L624:
	bl	__Func_916b0
	ldr	r0, =0xf55
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L63a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_5d4

.thumb_func_start OvlFunc_658
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #3
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	ldr	r2, =0x3333
	mov	r0, #3
	ldr	r1, =0x6666
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #0xca
	mov	r2, #0xfe
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_9218c
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
	mov	r0, #0x17
	bl	__Func_92054
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x18
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x19
	bl	__Func_92054
	ldr	r7, =OvlFunc_10c0
	add	r0, #0x55
	mov	r1, #0xc8
	lsl	r1, #4
	strb	r6, [r0]
	mov	r0, r7
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =iwram_1ebc
	ldr	r3, [r2]
	mov	r8, r2
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L752
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L752:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L766
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L766:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L77a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L77a:
	mov	r1, #0xc6
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xce
	mov	r2, #0xfc
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0x83
	lsl	r2, #2
	mov	r0, #3
	ldr	r1, =0x332
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r5, =.L12fc
	mov	r0, #0
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_92a1c
	mov	r0, #1
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_92a1c
	mov	r0, #2
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_92a1c
	mov	r2, r5
	ldr	r1, =0x1000a
	mov	r0, #3
	bl	__Func_92a1c
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_9163c
	bl	__Func_93554
	add	r0, #0x55
	strb	r6, [r0]
	ldr	r1, =0x333
	ldr	r0, =0x1999
	bl	__Func_933d4
	mov	r2, #0xd7
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3120000
	bl	__Func_933f8
	mov	r0, #0xf0
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_920a0
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	ldr	r2, =0x195
	ldr	r1, =0x333
	mov	r0, #0xa
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0xa
	bl	__Func_92adc
	ldr	r0, =0x1c1e
	bl	__Func_92b94
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x900a
	bl	__Func_93040
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r0, #2
	bl	__Func_920a0
	mov	r0, #3
	bl	__Func_920a0
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0x14
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x900a
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0x28
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x900a
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0x83
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0x28
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_924d4
	mov	r2, #0xa
	ldr	r0, =0x900a
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0
	mov	r0, #9
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #5
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0x28
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	ldr	r0, =0x400a
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #9
	mov	r1, #2
	bl	__Func_92560
	mov	r0, #9
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x50
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x3c
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_9259c
	mov	r3, #1
	b	.Labc

	.pool_aligned

.Labc:
	mov	r0, #0xc
	mov	r4, #7
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x14]
	mov	r2, #6
	mov	r1, #0xb
	mov	r3, #6
	mov	r0, #0xa
	str	r2, [sp]
	str	r1, [sp, #4]
	str	r4, [sp, #0x10]
	str	r6, [sp, #0x18]
	bl	__Func_931ec
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r2, #0xea
	mov	r3, #1
	lsl	r2, #17
	mov	r1, #0
	ldr	r0, =0x3090000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	ldr	r0, =0x1001
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, r7
	bl	__Func_4278
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #6
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r3, #1
	mov	r1, #0
	ldr	r2, =0x1c30000
	ldr	r0, =0x2ee0000
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #6
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x315
	ldr	r2, =0x1d9
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #5
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0
	ldr	r0, =0x4008
	bl	__Func_92c40
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.Lc6c
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lc6c:
	mov	r2, #0xd6
	lsl	r2, #17
	mov	r3, #1
	mov	r1, #0
	ldr	r0, =0x3090000
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1c33
	bl	__Func_92b94
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xea
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #8
	mov	r1, #3
	bl	__Func_92548
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #5
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0x333
	ldr	r2, =0x1e9
	bl	__Func_921c4
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #3
	bl	__Func_92b08
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r2, #0x82
	mov	r0, #3
	ldr	r1, =0x31a
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc4
	mov	r2, #0xf8
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x90
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #9
	b	.Lf18

	.pool_aligned

.Lf18:
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xd6
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_933f8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r2, #0xc2
	mov	r0, #0xb
	ldr	r1, =0x343
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x84
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	ldr	r0, =0x200b
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r2, #0xea
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_933f8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x90
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
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
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #2
	lsl	r1, #9
	bl	__Func_92064
	ldr	r5, =.L1400
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_920fc
	ldr	r1, =.L1310
	mov	r0, #0xa
	bl	__Func_9207c
	mov	r2, #0xbc
	mov	r0, #0xb
	ldr	r1, =0x345
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0xb
	bl	__Func_92adc
	ldr	r0, =0x81d
	bl	__Func_79358
	bl	__Func_91750
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_658

.thumb_func_start OvlFunc_10c0
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e40
	mov	r1, #0xb4
	ldr	r0, [r3]
	bl	_Func_b50
	mov	r6, #0x17
	cmp	r0, #0x14
	beq	.L10e2
	cmp	r0, #0x14
	bhi	.L10dc
	cmp	r0, #0xa
	beq	.L10e8
	b	.L1130
.L10dc:
	cmp	r0, #0x1e
	beq	.L10e6
	b	.L1130
.L10e2:
	mov	r6, #0x18
	b	.L10e8
.L10e6:
	mov	r6, #0x19
.L10e8:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L1130
	mov	r0, #8
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1108
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	__Func_923e4
.L1108:
	ldr	r3, =0x6666
	mov	r2, #0xc0
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r5, #0xc]
	lsl	r2, #13
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	add	r2, #0x64
	mov	r3, #0x19
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r1, =.L1440
	mov	r0, r6
	bl	__Func_9207c
.L1130:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c0

	.section .data

.L12fc:
	.incbin "overlays/rom_786f0c/orig.bin", 0x12fc, (0x1310-0x12fc)
.L1310:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1310, (0x1400-0x1310)
.L1400:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1400, (0x1440-0x1400)
.L1440:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1440, (0x1478-0x1440)
.L1478:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1478, (0x1568-0x1478)
.L1568:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1568, (0x1590-0x1568)
.L1590:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1590, (0x15b8-0x1590)
.L15b8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x15b8, (0x1738-0x15b8)
.L1738:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1738, (0x18b8-0x1738)
.L18b8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x18b8, (0x1ac8-0x18b8)
.L1ac8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1ac8, (0x1c00-0x1ac8)
.L1c00:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1c00, (0x1da4-0x1c00)
.L1da4:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1da4, (0x1ffc-0x1da4)
.L1ffc:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1ffc
