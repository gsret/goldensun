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
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.La0
	ldr	r0, =.L11ec
	b	.Lb6
.La0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.Laa
	ldr	r0, =.L130c
	b	.Lb6
.Laa:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.Lb4
	ldr	r0, =.L136c
	b	.Lb6
.Lb4:
	ldr	r0, =.L11d4
.Lb6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_88

.thumb_func_start OvlFunc_dc
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x20
	mov	r0, #0
	cmp	r2, r3
	bne	.Lf4
	ldr	r0, =.L13fc
.Lf4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_dc

.thumb_func_start OvlFunc_104
	ldr	r0, =.L142c
	bx	lr
.func_end OvlFunc_104

.thumb_func_start OvlFunc_10c
	push	{lr}
	mov	r0, #9
	mov	r1, #3
	mov	r2, #0
	bl	__Func_955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c

.thumb_func_start OvlFunc_11c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L134
	ldr	r0, =.L1498
	b	.L14a
.L134:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L13e
	ldr	r0, =.L1600
	b	.L14a
.L13e:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L148
	ldr	r0, =.L16f0
	b	.L14a
.L148:
	ldr	r0, =.L1480
.L14a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_11c

.thumb_func_start OvlFunc_170
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_1776c
	ldr	r0, =0x29dd
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_170

.thumb_func_start OvlFunc_198
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L1b0
	ldr	r0, =.L1744
	b	.L1c6
.L1b0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L1ba
	ldr	r0, =.L1a2c
	b	.L1c6
.L1ba:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L1c4
	ldr	r0, =.L1bc4
	b	.L1c6
.L1c4:
	ldr	r0, =.L1738
.L1c6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_198

.thumb_func_start OvlFunc_1ec
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1472
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ec

.thumb_func_start OvlFunc_208
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x146e
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_208

.thumb_func_start OvlFunc_224
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1470
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_224

.thumb_func_start OvlFunc_240
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x13ae
	bl	__Func_92b94
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.L266
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L266:
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	ldr	r0, =0x301
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_240

.thumb_func_start OvlFunc_288
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x13b3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_288

.thumb_func_start OvlFunc_2a8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x13b7
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2a8

.thumb_func_start OvlFunc_2c8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x16bf
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c8

.thumb_func_start OvlFunc_2e8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x16c8
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e8

.thumb_func_start OvlFunc_308
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x16cc
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_308

.thumb_func_start OvlFunc_328
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	bl	__Func_916b0
	mov	r5, #8
	mov	r6, #0
.L336:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L346
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L346:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L336
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r3, [r3]
	sub	r3, #3
	lsl	r3, #16
	asr	r5, r3, #16
	cmp	r5, #6
	bne	.L366
	mov	r0, #0xbc
	bl	__Func_f9080
	b	.L36c
.L366:
	mov	r0, #0x9e
	bl	__Func_f9080
.L36c:
	ldr	r2, =.L1d0c
	lsl	r0, r5, #2
	ldrsh	r1, [r2, r0]
	add	r3, r0, #2
	ldrsh	r2, [r2, r3]
	ldr	r3, =.L1cf0
	ldr	r0, [r3, r0]
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	cmp	r5, #6
	bne	.L3c0
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #4
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_9228c
	b	.L3cc
.L3c0:
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_92208
.L3cc:
	cmp	r5, #4
	bne	.L3da
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92b08
	b	.L3e2
.L3da:
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
.L3e2:
	mov	r0, #0x10
	bl	__Func_9163c
	add	r0, r5, #3
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_328

.thumb_func_start OvlFunc_404
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	beq	.L420
	b	.L554
.L420:
	bl	__Func_916b0
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0xb
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r6, =0xffff0000
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	mov	r1, #0x81
	strb	r2, [r3]
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__Func_93874
	mov	r5, #0x80
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_924d4
	lsl	r5, #9
	mov	r0, #0xb
	mov	r1, #0x6f
	mov	r2, #0xc4
	bl	__Func_92158
	mov	r2, #0xb9
	mov	r1, #0x80
	mov	r0, #0
	str	r5, [r7, #0x18]
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__Func_93874
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #0x79
	mov	r2, #0xbe
	bl	__Func_92158
	mov	r2, #0xbd
	mov	r1, #0x8d
	mov	r0, #0
	str	r5, [r7, #0x18]
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__Func_93874
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_924d4
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #0xb
	bl	__Func_92158
	str	r5, [r7, #0x18]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x9999
	mov	r0, #0
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xa6
	mov	r2, #0xb9
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_92b08
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_97540
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r0, =0x1774
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92f84
	bl	__Func_97608
	mov	r0, #0xa
	bl	__Func_30f8
	ldr	r0, =0x848
	bl	__Func_79358
	bl	__Func_91750
.L554:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_404

.thumb_func_start OvlFunc_578
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_578

.thumb_func_start OvlFunc_584
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.L59a
	b	.L85c
.L59a:
	ldr	r0, =0x848
	bl	__Func_79338
	cmp	r0, #0
	bne	.L5a6
	b	.L85c
.L5a6:
	bl	__Func_916b0
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xad
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x1070000
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r3, [r5, #8]
	ldr	r2, [r0, #8]
	cmp	r2, r3
	ble	.L60a
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0xd
	bl	__Func_937b8
	ldr	r0, =0x1775
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	b	.L63e
.L60a:
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0xc
	bl	__Func_937b8
	ldr	r0, =0x1775
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
.L63e:
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x86
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xc
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	mov	r0, #0xe
	bl	__Func_92064
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0x85
	mov	r2, #0xac
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	ldr	r0, =0x177a
	mov	r1, #1
	bl	__Func_1776c
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc2
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, #0xc2
	bl	__Func_91a58
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xe
	bl	__Func_92064
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0x83
	and	r5, r3
	mov	r2, #0x9c
	lsl	r1, #1
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	ldr	r5, =.L11c0
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_92a1c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_92a1c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_92a1c
	ldr	r0, =0x849
	bl	__Func_79358
	bl	__Func_91750
.L85c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_584

.thumb_func_start OvlFunc_890
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x80
	lsl	r2, #1
	lsl	r3, #1
	str	r3, [r1, r2]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L8b0
	bl	OvlFunc_8f0
	b	.L8d0
.L8b0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L8c6
	bl	OvlFunc_ae0
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_ed8
	lsl	r1, #4
	bl	__Func_41d8
	b	.L8d0
.L8c6:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L8d0
	bl	OvlFunc_d10
.L8d0:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_890

.thumb_func_start OvlFunc_8f0
	push	{lr}
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.L920
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	b	.L936
.L920:
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L936:
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r0, #0x1c]
	mov	r2, #0xe1
	ldr	r3, =ewram_240
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L95e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L968
.L95e:
	cmp	r3, #9
	bne	.L968
	ldr	r0, =0x12f
	bl	__Func_79374
.L968:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L990
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L990
	mov	r1, #0xf8
	mov	r2, #0xd8
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
.L990:
	bl	OvlFunc_9cc
	ldr	r0, =0x84a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L9b0
	ldr	r0, =0x84b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L9b0
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79358
.L9b0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_8f0

.thumb_func_start OvlFunc_9cc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x14
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	ldr	r3, [r5, #8]
	asr	r3, #20
	mov	r9, r3
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	mov	r10, r3
	mov	r3, #0xc
	ldr	r6, [r0, #8]
	mov	r5, #0xf
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r8, r3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	asr	r6, #20
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_10704
	cmp	r6, #0x10
	bne	.La4c
	cmp	r7, #0xd
	beq	.La60
.La4c:
	mov	r3, #0x10
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.La60:
	mov	r3, r9
	cmp	r3, #0x10
	bne	.Lace
	mov	r3, r10
	cmp	r3, #0xd
	bne	.Lace
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92560
	cmp	r7, #0xd
	bne	.Lab2
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xc4
	bl	__Func_92158
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	b	.Laca
.Lab2:
	mov	r1, #0x8f
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xda
	bl	__Func_92158
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
.Laca:
	bl	__Func_91750
.Lace:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9cc

.thumb_func_start OvlFunc_ae0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0xb
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r0, =0x845
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb8c
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
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x38
	mov	r1, #0xf
	mov	r2, #0x28
	mov	r3, #0xf
	bl	__Func_10424
	mov	r3, #0xa
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_10704
	ldr	r0, =0x849
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lb72
	ldr	r0, =0x848
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb68
	b	.Lc92
.Lb68:
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.Lb72:
	mov	r1, #0xd0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	b	.Lc92
.Lb8c:
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_923e4
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
	mov	r2, r6
	add	r2, #0x55
	strb	r5, [r2]
	ldr	r0, =0x881
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc80
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x10
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r1, #0x8e
	orr	r3, r5
	mov	r2, #0x9c
	strb	r3, [r0]
	lsl	r2, #16
	lsl	r1, #16
	mov	r0, #0x10
	bl	__Func_923e4
	mov	r0, #0x10
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r1, #0x8e
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r2, #16
	lsl	r1, #16
	bl	__Func_923e4
	ldr	r2, [r6, #0x50]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
	ldr	r2, =0xfff80000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r0, =0x848
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc5c
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	b	.Lc92
.Lc5c:
	mov	r1, #0xb0
	mov	r2, #0xc4
	lsl	r2, #16
	mov	r0, #0xb
	lsl	r1, #15
	bl	__Func_923e4
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_92b08
	mov	r3, r7
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r1, #4
	orr	r2, r1
	strb	r2, [r3]
	b	.Lc92
.Lc80:
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r6, #0xc]
	mov	r3, r7
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xc0
	lsl	r3, #14
	str	r3, [r7, #0xc]
.Lc92:
	bl	OvlFunc_cb4
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ae0

.thumb_func_start OvlFunc_cb4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r8, r3
	ldr	r3, [r0, #0x10]
	ldr	r5, =.L1d28
	asr	r7, r3, #20
	mov	r6, #0
.Lcd0:
	ldrb	r3, [r5]
	ldrb	r2, [r5, #1]
	mov	r0, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	add	r6, #2
	bl	__Func_10704
	add	r5, #2
	cmp	r6, #0x13
	bls	.Lcd0
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cb4

.thumb_func_start OvlFunc_d10
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	bl	OvlFunc_fa0
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #3
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.Ld6e
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld6e
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r1, #0x80
	lsl	r1, #13
	ldr	r0, [r5, #8]
	str	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	mov	r3, #0
	bl	__Func_933f8
	bl	__Func_fe9c
	bl	__Func_91750
	mov	r0, #1
	bl	__Func_30f8
.Ld6e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d10

.thumb_func_start OvlFunc_d80
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r2, r3
	mov	r5, r0
	mov	r4, #8
	add	r2, #0x34
.Ld8e:
	ldmia	r2!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r5, r3
	bne	.Lda0
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r1, r3
	beq	.Lda8
.Lda0:
	add	r4, #1
	cmp	r4, #0x41
	bls	.Ld8e
	mov	r0, #0
.Lda8:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_d80

.thumb_func_start OvlFunc_db4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	ldr	r2, =.L1d3c
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r3, [r2, r5]
	mov	r8, r0
	mov	r1, #0xa
	ldrsh	r0, [r0, r1]
	mov	r10, r2
	asr	r2, r3, #16
	add	r0, r2
	mov	r2, r8
	mov	r4, #0x12
	ldrsh	r1, [r2, r4]
	lsl	r3, #16
	asr	r3, #16
	add	r1, r3
	asr	r0, #4
	asr	r1, #4
	bl	OvlFunc_d80
	mov	r7, r0
	cmp	r7, #0
	beq	.Leaa
	mov	r3, #0
	mov	r2, r7
	add	r2, #0x22
	mov	r9, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r4, r10
	ldr	r1, [r4, r5]
	ldr	r2, =0xffff0000
	ldr	r3, [r7, #8]
	and	r2, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	cmp	r0, #0
	bgt	.Leaa
	mov	r1, #8
	mov	r0, r8
	bl	__Func_c300
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__Func_30f8
	mov	r0, #0xb9
	bl	__Func_f9080
	str	r5, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, r7
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Func_d14c
	mov	r1, r8
	str	r5, [r1, #0x30]
	str	r5, [r1, #0x34]
	mov	r0, r8
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Func_d14c
	mov	r0, r7
	bl	__Func_ca6c
	ldr	r3, [r6]
	str	r3, [r7, #8]
	ldr	r3, [r6, #8]
	mov	r2, r9
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x2c]
	mov	r1, #1
	mov	r0, r8
	bl	__Func_c300
	ldr	r3, =ewram_240
	mov	r4, #0xe0
	lsl	r4, #1
	add	r3, r4
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.Le94
	bl	OvlFunc_cb4
	b	.Leaa
.Le94:
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.Lea0
	bl	OvlFunc_9cc
	b	.Leaa
.Lea0:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.Leaa
	bl	OvlFunc_fa0
.Leaa:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_db4

.thumb_func_start OvlFunc_ed8
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r2, #0x8e
	ldr	r3, [r0, #8]
	lsl	r2, #16
	cmp	r3, r2
	bge	.Lf28
	mov	r1, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r1, #12
	cmp	r3, r1
	bge	.Lf22
	ldr	r5, =.L1d88
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0
	bne	.Lf0e
	bl	OvlFunc_f3c
	ldrh	r2, [r5]
.Lf0e:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r5]
	lsl	r2, #13
	lsl	r3, #16
	cmp	r3, r2
	bne	.Lf28
	ldr	r3, .Lf30	@ 0
	strh	r3, [r5]
	b	.Lf28
.Lf22:
	ldr	r2, =.L1d88
	ldr	r3, .Lf30	@ 0
	strh	r3, [r2]
.Lf28:
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lf30:
	.word	0
.func_end OvlFunc_ed8

.thumb_func_start OvlFunc_f3c
	push	{r5, r6, r7, lr}
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x18
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.Lf96
	ldr	r1, =.L1d7c
	ldr	r6, [r5, #0x50]
	bl	__Func_c2d8
	mov	r3, r5
	add	r3, #0x55
	mov	r7, #0
	mov	r2, r5
	strb	r7, [r3]
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	add	r2, #1
	mov	r3, #2
	strb	r3, [r2]
	cmp	r6, #0
	beq	.Lf96
	mov	r0, r6
	mov	r1, #2
	bl	__Func_ba30
	mov	r3, r6
	add	r3, #0x26
	strb	r7, [r3]
	mov	r3, #0xd
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
.Lf96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f3c

.thumb_func_start OvlFunc_fa0
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L1010
	ldr	r3, [r5, #0x10]
	asr	r2, r3, #20
	cmp	r2, #6
	bne	.Lfcc
	mov	r3, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.Lfe0
.Lfcc:
	mov	r3, #0xe
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.Lfe0:
	ldr	r3, [r5, #0x10]
	asr	r0, r3, #20
	cmp	r0, #9
	bne	.Lffc
	mov	r3, #0xe
	str	r3, [sp]
	str	r0, [sp, #4]
	mov	r1, #0
	mov	r0, #2
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L1010
.Lffc:
	mov	r3, #0xe
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L1010:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fa0

	.section .data

.L11c0:
	.incbin "overlays/rom_79b154/orig.bin", 0x11c0, (0x11d4-0x11c0)
.L11d4:
	.incbin "overlays/rom_79b154/orig.bin", 0x11d4, (0x11ec-0x11d4)
.L11ec:
	.incbin "overlays/rom_79b154/orig.bin", 0x11ec, (0x130c-0x11ec)
.L130c:
	.incbin "overlays/rom_79b154/orig.bin", 0x130c, (0x136c-0x130c)
.L136c:
	.incbin "overlays/rom_79b154/orig.bin", 0x136c, (0x13fc-0x136c)
.L13fc:
	.incbin "overlays/rom_79b154/orig.bin", 0x13fc, (0x142c-0x13fc)
.L142c:
	.incbin "overlays/rom_79b154/orig.bin", 0x142c, (0x1480-0x142c)
.L1480:
	.incbin "overlays/rom_79b154/orig.bin", 0x1480, (0x1498-0x1480)
.L1498:
	.incbin "overlays/rom_79b154/orig.bin", 0x1498, (0x1600-0x1498)
.L1600:
	.incbin "overlays/rom_79b154/orig.bin", 0x1600, (0x16f0-0x1600)
.L16f0:
	.incbin "overlays/rom_79b154/orig.bin", 0x16f0, (0x1738-0x16f0)
.L1738:
	.incbin "overlays/rom_79b154/orig.bin", 0x1738, (0x1744-0x1738)
.L1744:
	.incbin "overlays/rom_79b154/orig.bin", 0x1744, (0x1a2c-0x1744)
.L1a2c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1a2c, (0x1bc4-0x1a2c)
.L1bc4:
	.incbin "overlays/rom_79b154/orig.bin", 0x1bc4, (0x1cf0-0x1bc4)
.L1cf0:
	.incbin "overlays/rom_79b154/orig.bin", 0x1cf0, (0x1d0c-0x1cf0)
.L1d0c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d0c, (0x1d28-0x1d0c)
.L1d28:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d28, (0x1d3c-0x1d28)
.L1d3c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d3c, (0x1d7c-0x1d3c)
.L1d7c:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d7c, (0x1d88-0x1d7c)
.L1d88:
	.incbin "overlays/rom_79b154/orig.bin", 0x1d88
