	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.Lbb4
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.Ldac
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L56
	ldr	r0, =.L1040
	b	.L58
.L56:
	ldr	r0, =.Le00
.L58:
	pop	{r1}
	bx	r1
.func_end OvlFunc_44

.thumb_func_start OvlFunc_64
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L76
	ldr	r0, =.L19d0
	b	.L86
.L76:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L84
	ldr	r0, =.L1670
	b	.L86
.L84:
	ldr	r0, =.L1310
.L86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_64

.thumb_func_start OvlFunc_9c
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_9c

.thumb_func_start OvlFunc_c0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r6, [r3]
	mov	r5, #8
	mov	r7, #0
.Lca:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lda
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
.Lda:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lca
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	mov	r0, #0x9e
	sub	r5, #0xe
	bl	__Func_f9080
	lsl	r5, #3
	ldr	r0, =.L1dcc
	add	r3, r5, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r5]
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_91e9c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c0

.thumb_func_start OvlFunc_13c
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x2394
	bl	__Func_92b94
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x8e
	mov	r1, #0x96
	mov	r3, #0xce
	lsl	r3, #18
	mov	r2, #0
	lsl	r1, #18
	lsl	r0, #1
	bl	__Func_c150
	mov	r1, #0
	mov	r5, r0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #6
	bl	__Func_c300
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, r5
	bl	__Func_c300
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_c0f4
	mov	r0, #2
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x32
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x19
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x96
	mov	r2, #0xd4
	mov	r0, #0x19
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x8e
	mov	r2, #0xd4
	mov	r0, #0x19
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x32
	mov	r0, #0x19
	bl	__Func_937b8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x19
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x32
	ldr	r1, =0x101
	mov	r0, #0
	bl	__Func_937b8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x19
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x19
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x19
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__Func_92064
	mov	r0, #0x19
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_92304
	mov	r2, #0x20
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92304
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_92304
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x19
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_92064
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_92304
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_13c

.thumb_func_start OvlFunc_328
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x23a4
	bl	__Func_92b94
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x1f
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_92560
	mov	r2, #0x1e
	mov	r0, #0x1f
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #0
	mov	r0, #0x1f
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #0x20
	bl	__Func_937b8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x20
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x20
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x21
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x21
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x1f
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x1f
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x20
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_328

.thumb_func_start OvlFunc_3dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x95
	add	r2, #0x49
	str	r2, [r3]
	lsl	r0, #4
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4e2
	mov	r3, #0x33
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2f
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x33
	bl	__Func_10704
	mov	r0, #0x1f
	bl	__Func_92054
	mov	r2, #0
	mov	r3, r0
	mov	r8, r2
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	ldr	r1, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r2, [r1, #9]
	neg	r5, r5
	mov	r3, r5
	and	r3, r2
	mov	r6, #8
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #0x20
	bl	__Func_92054
	mov	r3, r0
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	and	r5, r3
	orr	r5, r6
	strb	r5, [r2, #9]
	ldr	r0, =0x8bc
	bl	__Func_79338
	cmp	r0, #0
	beq	.L472
	mov	r1, #0x8c
	mov	r2, #0xaa
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.L472:
	ldr	r5, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.L49a
	ldr	r0, =0x8bc
	bl	__Func_79338
	cmp	r0, #0
	bne	.L49a
	ldr	r0, =0x8bc
	bl	__Func_79358
	bl	__Func_91dc8
	bl	OvlFunc_13c
.L49a:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x10
	bne	.L4c4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4c4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_91dc8
	bl	OvlFunc_328
.L4c4:
	ldr	r0, =0x8ab
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4e2
	mov	r0, #0x23
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x24
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L4e2:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_3dc

.thumb_func_start OvlFunc_500
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L52a
	mov	r0, #0x1c
	mov	r1, r6
	bl	__Func_b0278
	b	.L596
.L52a:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L544
	ldr	r0, =0x238d
	b	.L550

	.pool_aligned

.L544:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L55e
	ldr	r0, =0x221b
.L550:
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	b	.L596
.L55e:
	ldr	r5, =0x1fd5
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L588
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L58e
.L588:
	add	r0, r5, #2
	bl	__Func_92b94
.L58e:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.L596:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_500

.thumb_func_start OvlFunc_5a8
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
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L5d8
	mov	r0, #0x1a
	mov	r1, r5
	bl	__Func_b0278
	b	.L654

	.pool_aligned

.L5d8:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L612
	ldr	r6, =0x2389
	mov	r0, r6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L60a
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r6, #1
	b	.L61e
.L60a:
	add	r0, r6, #2
	bl	__Func_92b94
	b	.L622
.L612:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L62c
	ldr	r0, =0x2219
.L61e:
	bl	__Func_92b94
.L622:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	b	.L654
.L62c:
	ldr	r0, =0x1fd2
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x83
	lsl	r1, #1
	mov	r0, r5
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L654:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5a8

.thumb_func_start OvlFunc_66c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L696
	mov	r0, #0x1b
	mov	r1, r5
	bl	__Func_b0278
	b	.L6d8
.L696:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L6b0
	ldr	r0, =0x238f
	b	.L6bc

	.pool_aligned

.L6b0:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L6ca
	ldr	r0, =0x221d
.L6bc:
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	b	.L6d8
.L6ca:
	ldr	r0, =0x1fd9
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L6d8:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_66c

.thumb_func_start OvlFunc_6ec
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_916b0
	ldr	r5, =0x239e
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L71e
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L724
.L71e:
	add	r0, r5, #2
	bl	__Func_92b94
.L724:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_6ec

.thumb_func_start OvlFunc_73c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_916b0
	ldr	r0, =0x23a1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_73c

.thumb_func_start OvlFunc_760
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_916b0
	ldr	r5, =0x1fbb
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L792
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L798
.L792:
	add	r0, r5, #2
	bl	__Func_92b94
.L798:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_760

.thumb_func_start OvlFunc_7b0
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_916b0
	ldr	r0, =0x8bd
	bl	__Func_79338
	cmp	r0, #0
	bne	.L7fc
	ldr	r5, =0x2399
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L7ec
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L7f2
.L7ec:
	add	r0, r5, #2
	bl	__Func_92b94
.L7f2:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	b	.L83c
.L7fc:
	ldr	r0, =0x8be
	bl	__Func_79338
	cmp	r0, #0
	bne	.L82e
	ldr	r0, =0x8be
	bl	__Func_79358
	ldr	r0, =0x239c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
.L82e:
	ldr	r0, =0x239d
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
.L83c:
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7b0

.thumb_func_start OvlFunc_85c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x8be
	bl	__Func_79338
	cmp	r0, #0
	bne	.L874
	ldr	r0, =0x23b3
	bl	__Func_92b94
	b	.L87a
.L874:
	ldr	r0, =0x23b4
	bl	__Func_92b94
.L87a:
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_85c

.thumb_func_start OvlFunc_898
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_916b0
	ldr	r0, =0x23a8
	bl	__Func_92b94
	mov	r2, #0x28
	mov	r0, #0x1f
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898

.thumb_func_start OvlFunc_8cc
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_916b0
	ldr	r5, =0x23ac
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L8fe
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L904
.L8fe:
	add	r0, r5, #2
	bl	__Func_92b94
.L904:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_8cc

.thumb_func_start OvlFunc_91c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L944
	mov	r0, r5
	bl	__Func_b29a8
	b	.L984
.L944:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L95c
	ldr	r0, =0x23bf
	b	.L968

	.pool_aligned

.L95c:
	ldr	r0, =0x962
	bl	__Func_79338
	cmp	r0, #0
	beq	.L976
	ldr	r0, =0x2231
.L968:
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	b	.L984
.L976:
	ldr	r0, =0x1feb
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
.L984:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_91c

	.section .data

	.incbin "overlays/rom_7d5838/orig.bin", 0xa90, (0xbb4-0xa90)
.Lbb4:
	.incbin "overlays/rom_7d5838/orig.bin", 0xbb4, (0xdac-0xbb4)
.Ldac:
	.incbin "overlays/rom_7d5838/orig.bin", 0xdac, (0xe00-0xdac)
.Le00:
	.incbin "overlays/rom_7d5838/orig.bin", 0xe00, (0x1040-0xe00)
.L1040:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1040, (0x1310-0x1040)
.L1310:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1310, (0x1670-0x1310)
.L1670:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1670, (0x19d0-0x1670)
.L19d0:
	.incbin "overlays/rom_7d5838/orig.bin", 0x19d0, (0x1dcc-0x19d0)
.L1dcc:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1dcc
