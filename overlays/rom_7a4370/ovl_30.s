	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L1ba4
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	ldr	r0, =.L1c04
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_40
	ldr	r0, =.L1c24
	bx	lr
.func_end OvlFunc_40

.thumb_func_start OvlFunc_48
	ldr	r0, =.L1c34
	bx	lr
.func_end OvlFunc_48

.thumb_func_start OvlFunc_50
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92304
	mov	r3, #0xb6
	lsl	r3, #1
	add	r5, r3
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_50

.thumb_func_start OvlFunc_80
	ldr	r0, =.L1d3c
	bx	lr
.func_end OvlFunc_80

.thumb_func_start OvlFunc_88
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xb
	mov	r1, #1
	bl	OvlFunc_12f4
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.La4
	ldr	r0, =0x151d
	b	.Lb0
.La4:
	ldr	r0, =0x84c
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbe
	ldr	r0, =0x1525
.Lb0:
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	b	.L134
.Lbe:
	ldr	r0, =0x1520
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #1
	bl	OvlFunc_12f4
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #1
	bl	OvlFunc_12f4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	ldr	r0, =0x84c
	bl	__Func_79358
.L134:
	mov	r0, #0xb
	mov	r1, #0
	bl	OvlFunc_12f4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_88

.thumb_func_start OvlFunc_158
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.L188
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_12f4
	ldr	r0, =0x151c
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_12f4
	b	.L220
.L188:
	ldr	r0, =0x844
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1ce
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_12f4
	ldr	r0, =0x14eb
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0xb8
	bl	__Func_78698
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L220
	ldr	r3, =iwram_1ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
	b	.L220
.L1ce:
	ldr	r0, =0x14c9
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r2, #0xa
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
.L220:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_158

.thumb_func_start OvlFunc_248
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.L260
	ldr	r0, =0x151f
	bl	__Func_92b94
	b	.L266
.L260:
	ldr	r0, =0x14c8
	bl	__Func_92b94
.L266:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_248

.thumb_func_start OvlFunc_284
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.L29c
	ldr	r0, =0x151e
	bl	__Func_92b94
	b	.L2a2
.L29c:
	ldr	r0, =0x14ec
	bl	__Func_92b94
.L2a2:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_284

.thumb_func_start OvlFunc_2c0
	push	{lr}
	bl	__Func_916b0
	bl	__Func_8e118
	ldr	r0, =0x844
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2da
	bl	OvlFunc_2ec
	b	.L2de
.L2da:
	bl	OvlFunc_488
.L2de:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2c0

.thumb_func_start OvlFunc_2ec
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0xc0
	mov	r2, #0
	mov	r6, r0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r0, #0x11
	bl	__Func_f9080
	ldr	r5, =.L1dd0
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_1218
	bl	__Func_41d8
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r3, #0
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xeb
	lsl	r2, #16
	str	r3, [r5]
	lsl	r0, #17
	mov	r3, #1
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #1
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0x10
	mov	r0, #0
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #10
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0x85
	bl	__Func_f9080
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x48]
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r2, #0x81
	str	r3, [r6, #0x44]
	mov	r0, #0
	ldr	r1, =0x14f
	lsl	r2, #1
	bl	__Func_92158
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	blt	.L3ac
.L3a0:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	bge	.L3a0
.L3ac:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	ble	.L3ac
	mov	r0, #0xa1
	bl	__Func_f9080
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r5, #0x80
	ldr	r0, =OvlFunc_1218
	bl	__Func_4278
	lsl	r5, #7
	mov	r0, #0x28
	bl	__Func_30f8
	str	r5, [r6, #0x44]
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r0, =0x14cc
	bl	__Func_92b94
	mov	r2, #0x14
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_8acc4
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x48]
	mov	r1, #2
	str	r5, [r6, #0x44]
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2ec

.thumb_func_start OvlFunc_488
	push	{r5, r6, lr}
	mov	r0, #3
	bl	__Func_79338
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0xd4
	mov	r6, r0
	mov	r0, #0
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0x11
	bl	__Func_f9080
	ldr	r0, =0x14ed
	mov	r1, #1
	bl	__Func_1776c
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
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L4e8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L4e8:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L4fc
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L4fc:
	ldr	r1, =.L1ab8
	mov	r0, #1
	bl	__Func_9207c
	ldr	r1, =.L1af4
	mov	r0, #2
	bl	__Func_9207c
	cmp	r6, #0
	beq	.L53a
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L532
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L532:
	ldr	r1, =.L1b30
	mov	r0, #3
	bl	__Func_9207c
.L53a:
	mov	r0, #2
	bl	__Func_920e8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	bl	OvlFunc_18b8
	mov	r0, #0x20
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
	ldr	r5, =.L1dd4
	mov	r3, #0
	mov	r1, #0xc8
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_12b4
	bl	__Func_41d8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_92adc
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xfe
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xf6
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x1050000
	ldr	r0, =0x19d0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xf6
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0xa3
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0xf6
	bl	__Func_f9080
	ldr	r3, [r5]
	cmp	r3, #0x18
	beq	.L614
.L608:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r5]
	cmp	r3, #0x18
	bne	.L608
.L614:
	ldr	r0, =OvlFunc_12b4
	bl	__Func_4278
	mov	r0, #0xa
	bl	__Func_30f8
	mov	r5, #0
.L622:
	mov	r0, #0
	bl	OvlFunc_18b8
	mov	r0, #6
	bl	__Func_91254
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #1
	bl	OvlFunc_18b8
	mov	r0, #6
	bl	__Func_91254
	add	r5, #1
	mov	r0, #6
	bl	__Func_30f8
	cmp	r5, #3
	bls	.L622
	mov	r0, #0
	bl	OvlFunc_18b8
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x50
	bl	__Func_30f8
	mov	r0, #0xa4
	mov	r1, #0x80
	mov	r2, #0xd4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #12
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #7
	bl	__Func_f9080
	ldr	r0, =0x14ee
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
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
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #0xea
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0xa
	bl	__Func_9163c
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
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_12f4
	mov	r2, #0xa
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_92c40
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L8a4
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	b	.L926

	.pool_aligned

.L8a4:
	ldr	r5, =iwram_1ebc
	mov	r3, #0xec
	ldr	r2, [r5]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #3
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	cmp	r6, #0
	beq	.L8f8
	mov	r0, #3
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	b	.L906
.L8f8:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L906:
	mov	r0, #2
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
.L926:
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
	mov	r0, #0xa4
	mov	r1, #0x80
	mov	r2, #0xd4
	lsl	r2, #16
	mov	r3, #1
	lsl	r1, #12
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	OvlFunc_18b8
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r2, =.L1dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L1dc0
	mov	r3, #0xa4
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_15a0
	mov	r3, #0xcd
	lsl	r3, #16
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_4278
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #0
	bl	OvlFunc_18b8
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r0, =0x14fb
	bl	__Func_92b94
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
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
	mov	r0, #0xea
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lac0
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	b	.Lad8

	.pool_aligned

.Lac0:
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
.Lad8:
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1501
	bl	__Func_92b94
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
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
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #0
	bl	OvlFunc_12f4
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
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
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #5
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #5
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_12f4
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	OvlFunc_18b8
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r2, =.L1dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L1dc0
	mov	r3, #0x88
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_15a0
	mov	r3, #0x81
	lsl	r3, #17
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_41d8
	mov	r0, #0x64
	bl	__Func_9163c
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
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #2
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r2, #0xa
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r0, =0x8002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_93040
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
	mov	r0, #0xa
	bl	__Func_9163c
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
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x78
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, r5
	bl	__Func_4278
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	bl	OvlFunc_18b8
	mov	r0, #0x28
	bl	__Func_91254
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_12f4
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xa
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
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
	mov	r0, #0xa
	mov	r1, #1
	b	.Leec

	.pool_aligned

.Leec:
	bl	OvlFunc_12f4
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_92c40
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.Lf44
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lf44:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x8008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_92adc
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
	mov	r0, #0x11
	bl	__Func_f9080
	ldr	r5, =.L1b6c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_9207c
	cmp	r6, #0
	beq	.Lfe8
	mov	r0, #3
	mov	r1, r5
	bl	__Func_9207c
.Lfe8:
	mov	r1, r5
	mov	r0, #2
	bl	__Func_920fc
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_12f4
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1519
	bl	__Func_92b94
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xb
	mov	r1, #4
	bl	OvlFunc_12f4
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_12f4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xa
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	ldr	r0, =0x845
	bl	__Func_79358
	mov	r0, #1
	bl	__Func_f9080
	mov	r0, #0xb8
	mov	r1, #0xb9
	bl	OvlFunc_172c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_488

.thumb_func_start OvlFunc_1070
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xa
	bl	__Func_92054
	mov	r8, r0
	mov	r0, #0xe
	bl	__Func_92054
	mov	r10, r0
	mov	r0, #0xb
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xe
	mov	r1, #0xf
	bl	__Func_92950
	ldr	r3, =iwram_1ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r2, #0x81
	add	r3, r0
	lsl	r2, #2
	str	r2, [r3]
	ldr	r2, =ewram_240
	add	r0, #0x80
	ldr	r1, =0x28
	add	r3, r2, r0
	strh	r1, [r3]
	ldr	r3, =0x242
	add	r2, r3
	mov	r3, #4
	strh	r3, [r2]
	ldr	r0, =0x845
	ldr	r6, .L10d4	@ 0
	bl	__Func_79338
	cmp	r0, #0
	bne	.L10ec
	mov	r0, #3
	bl	OvlFunc_1768
	b	.L10ec

	.align	2, 0
.L10d4:
	.word	0
	.pool

.L10ec:
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #6
	strh	r5, [r0, #0x20]
	mov	r0, #9
	bl	__Func_92054
	strh	r5, [r0, #0x20]
	mov	r0, #0xc
	bl	__Func_92054
	strh	r5, [r0, #0x20]
	mov	r0, #0xd
	bl	__Func_92054
	strh	r5, [r0, #0x20]
	mov	r0, #0xe
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
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #9
	mov	r1, #2
	bl	__Func_92b08
	mov	r3, r8
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r7
	mov	r3, #0xe0
	lsl	r3, #13
	mov	r0, r8
	add	r2, #0x55
	str	r3, [r0, #0xc]
	strb	r6, [r2]
	mov	r2, r10
	add	r2, #0x55
	str	r3, [r7, #0xc]
	strb	r6, [r2]
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #8
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1070

.thumb_func_start OvlFunc_11e8
	push	{lr}
	ldr	r3, [r0, #0x18]
	ldr	r2, =0x1eb8
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L120c
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L120c
	ldr	r3, [r0, #0x40]
	cmp	r3, r2
	bne	.L120c
	bl	__Func_c0f4
.L120c:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_11e8

.thumb_func_start OvlFunc_1218
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e40
	ldr	r6, [r3]
	mov	r3, #3
	and	r6, r3
	cmp	r6, #0
	bne	.L129e
	ldr	r3, =.L1dd0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1234
	mov	r0, #0xc8
	bl	__Func_f9080
.L1234:
	mov	r1, #0xa3
	mov	r2, #0x80
	mov	r3, #0xc0
	mov	r0, #0x1a
	lsl	r1, #17
	lsl	r2, #14
	lsl	r3, #16
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L129e
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
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_c300
	mov	r1, #0xa3
	mov	r3, #0xf0
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_d14c
	ldr	r1, =.L1d9c
	mov	r0, r5
	bl	__Func_c2d8
.L129e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1218

.thumb_func_start OvlFunc_12b4
	push	{r5, lr}
	ldr	r5, =.L1dd4
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L12cc
	mov	r0, #0
	bl	OvlFunc_18b8
	mov	r0, #0x14
	bl	__Func_91254
	b	.L12dc
.L12cc:
	cmp	r3, #0x14
	bne	.L12dc
	mov	r0, #1
	bl	OvlFunc_18b8
	mov	r0, #8
	bl	__Func_91254
.L12dc:
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x1e
	bne	.L12ea
	mov	r3, #0
	str	r3, [r5]
.L12ea:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12b4

.thumb_func_start OvlFunc_12f4
	push	{lr}
	cmp	r0, #0xa
	beq	.L12fc
	b	.L1454
.L12fc:
	cmp	r1, #0xb
	bls	.L1302
	b	.L1518
.L1302:
	ldr	r2, =.L130c
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L130c:
	.word	.L133c
	.word	.L134e
	.word	.L1352
	.word	.L1364
	.word	.L1376
	.word	.L13b2
	.word	.L13ca
	.word	.L144a
	.word	.L13e2
	.word	.L13fa
	.word	.L1412
	.word	.L144a
.L133c:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	b	.L1488
.L134e:
	mov	r0, #8
	b	.L14fa
.L1352:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	b	.L14a0
.L1364:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	b	.L14b8
.L1376:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #3
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #3
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	b	.L14fa
.L13b2:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	b	.L1518
.L13ca:
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #8
	bl	__Func_924d4
	b	.L1518
.L13e2:
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #9
	bl	__Func_924d4
	b	.L1518
.L13fa:
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_924d4
	b	.L1518
.L1412:
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #8
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #8
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
.L144a:
	mov	r0, #8
	mov	r1, #6
	bl	__Func_924d4
	b	.L1518
.L1454:
	cmp	r1, #5
	bhi	.L1518
	ldr	r2, =.L1460
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1460:
	.word	.L1478
	.word	.L14f8
	.word	.L1490
	.word	.L14a8
	.word	.L14c0
	.word	.L1502
.L1478:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #9
.L1488:
	mov	r1, #3
	bl	__Func_924d4
	b	.L1518
.L1490:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #9
.L14a0:
	mov	r1, #5
	bl	__Func_924d4
	b	.L1518
.L14a8:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #9
.L14b8:
	mov	r1, #4
	bl	__Func_924d4
	b	.L1518
.L14c0:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #3
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r1, #3
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
.L14f8:
	mov	r0, #9
.L14fa:
	mov	r1, #1
	bl	__Func_924d4
	b	.L1518
.L1502:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #6
	bl	__Func_30f8
	mov	r0, #9
	mov	r1, #2
	bl	__Func_924d4
.L1518:
	mov	r0, #0xc
	bl	__Func_30f8
	pop	{r0}
	bx	r0
.func_end OvlFunc_12f4

.thumb_func_start OvlFunc_152c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x64
	mov	r1, #0
	ldrsh	r2, [r7, r1]
	sub	sp, #0xc
	cmp	r2, #0x77
	bgt	.L1586
	ldr	r3, [r6, #0x38]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x3c]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x40]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r1, r2, #1
	add	r1, r2
	lsl	r1, #8
	lsl	r0, r2, #16
	add	r1, r3
	mov	r2, r5
	bl	__Func_447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	ldr	r2, =0x147
	str	r3, [r6, #0x10]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	b	.L1594
.L1586:
	ldr	r3, [r6, #0x50]
	ldrb	r0, [r3, #0x1c]
	bl	__Func_3f3c
	mov	r0, r6
	bl	__Func_c0f4
.L1594:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_152c

.thumb_func_start OvlFunc_15a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, =.L1dcc
	ldr	r3, [r1]
	mov	r0, #0
	mov	r9, r0
	cmp	r3, #0x28
	bls	.L15b8
	b	.L16f8
.L15b8:
	ldr	r2, =.L15c0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L15c0:
	.word	.L1664
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L1664
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L1664
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L1664
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L1664
.L1664:
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r2, #0
	ldr	r6, =.L1dc0
	mov	r8, r2
	mov	r10, r2
	mov	r7, #0
.L1674:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L16e6
	mov	r1, r9
	ldr	r0, [r5, #0x50]
	bl	__Func_96c48
	mov	r3, r5
	add	r3, #0x55
	mov	r9, r0
	mov	r0, r10
	strb	r0, [r3]
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r2, [r1, #9]
	neg	r0, r0
	mov	r3, r0
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r1, #9]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c528
	mov	r0, r5
	mov	r1, #1
	bl	__Func_c300
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	mov	r1, #0xb4
	strh	r2, [r3]
	lsl	r1, #1
	mov	r0, r7
	bl	_Func_b60
	mov	r3, r5
	add	r3, #0x66
	strh	r0, [r3]
	ldr	r3, [r6]
	str	r3, [r5, #0x38]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x3c]
	ldr	r3, [r6, #8]
	str	r3, [r5, #0x40]
	ldr	r3, =0x19999
	str	r3, [r5, #0x30]
	ldr	r3, =OvlFunc_152c
	str	r3, [r5, #0x6c]
.L16e6:
	mov	r0, #1
	mov	r3, #0xf0
	add	r8, r0
	lsl	r3, #14
	mov	r2, r8
	add	r7, r3
	cmp	r2, #5
	bls	.L1674
	ldr	r1, =.L1dcc
.L16f8:
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0x78
	ble	.L1706
	mov	r3, #0
	str	r3, [r1]
.L1706:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15a0

.thumb_func_start OvlFunc_172c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	bl	__Func_78698
	mov	r7, #1
	mov	r5, r0
	neg	r7, r7
	cmp	r5, r7
	beq	.L175e
	mov	r1, r6
	bl	__Func_78664
	mov	r6, r0
	cmp	r6, r7
	beq	.L175e
	mov	r0, r5
	bl	__Func_77394
	lsl	r3, r6, #1
	add	r3, #0xd8
	mov	r2, r8
	strh	r2, [r0, r3]
.L175e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_172c

.thumb_func_start OvlFunc_1768
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	OvlFunc_1838
	mov	r6, #0
.L1772:
	ldr	r2, =0xffef0000
	add	r3, r6, r2
	mov	r2, #0xc0
	lsl	r2, #11
	lsr	r5, r6, #16
	cmp	r3, r2
	bls	.L17a0
	ldr	r2, =0xff3f
	add	r3, r5, r2
	mov	r2, #0xe0
	lsl	r3, #16
	lsl	r2, #11
	cmp	r3, r2
	bls	.L17a0
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r5, #1
	add	r5, r3
	ldrh	r0, [r5]
	mov	r1, r7
	bl	OvlFunc_17d0
	strh	r0, [r5]
.L17a0:
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r6, r2
	mov	r2, #0xdf
	lsl	r2, #16
	mov	r6, r3
	cmp	r3, r2
	bls	.L1772
	bl	OvlFunc_1878
	bl	OvlFunc_1858
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1768

.thumb_func_start OvlFunc_17d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xf8
	lsl	r0, #16
	lsl	r3, #13
	and	r3, r0
	asr	r6, r3, #16
	ldr	r2, =0x1f
	mov	r8, r1
	lsr	r5, r0, #21
	lsr	r7, r0, #26
	lsl	r1, #2
	mov	r0, r6
	and	r5, r2
	and	r7, r2
	bl	_Func_af0
	add	r0, r6, r0
	lsl	r0, #16
	mov	r1, r8
	asr	r6, r0, #16
	mov	r0, r5
	bl	_Func_af0
	sub	r0, r5, r0
	lsl	r0, #16
	asr	r5, r0, #16
	mov	r1, r8
	mov	r0, r7
	bl	_Func_af0
	sub	r0, r7, r0
	lsl	r0, #16
	asr	r7, r0, #16
	b	.L181c

	.pool_aligned

.L181c:
	cmp	r6, #0x1f
	ble	.L1822
	mov	r6, #0x1f
.L1822:
	lsl	r3, r7, #10
	lsl	r2, r5, #5
	orr	r3, r2
	orr	r6, r3
	lsl	r0, r6, #16
	lsr	r0, #16
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_17d0

.thumb_func_start OvlFunc_1838
	ldr	r2, =iwram_1ed0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r2]
	ldr	r1, =.L1de0
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_1838

.thumb_func_start OvlFunc_1858
	ldr	r2, =iwram_1ed0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, [r2]
	ldr	r1, =.L24e0
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_1858

.thumb_func_start OvlFunc_1878
	push	{lr}
	ldr	r3, =iwram_1ed0
	ldr	r4, [r3]
	mov	r0, #0xa0
	ldr	r3, =REG_DMA3SAD
	lsl	r0, #19
	mov	r1, r4
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #1
	add	r1, r4, r2
	ldr	r0, =0x5000200
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	pop	{r0}
	bx	r0
.func_end OvlFunc_1878

.thumb_func_start OvlFunc_18b8
	push	{lr}
	ldr	r3, =iwram_1ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.L18c8
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L24e0
	b	.L18cc
.L18c8:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L1de0
.L18cc:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91200
	bl	OvlFunc_1878
	pop	{r0}
	bx	r0
.func_end OvlFunc_18b8

	.section .data

.L1ab8:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1ab8, (0x1af4-0x1ab8)
.L1af4:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1af4, (0x1b30-0x1af4)
.L1b30:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1b30, (0x1b6c-0x1b30)
.L1b6c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1b6c, (0x1ba4-0x1b6c)
.L1ba4:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1ba4, (0x1c04-0x1ba4)
.L1c04:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c04, (0x1c24-0x1c04)
.L1c24:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c24, (0x1c34-0x1c24)
.L1c34:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c34, (0x1d3c-0x1c34)
.L1d3c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1d3c, (0x1d9c-0x1d3c)
.L1d9c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1d9c

	.section .bss

	.lcomm	.L1dc0, 0xc
	.lcomm	.L1dcc, 4
	.lcomm	.L1dd0, 4
	.lcomm	.L1dd4, 4
	.lcomm	.Lunused_1dd8, 4
	.lcomm	.L1de0, 0x700
	.lcomm	.L24e0, 0x700

