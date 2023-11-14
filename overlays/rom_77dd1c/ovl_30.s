	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r0, r3
	cmp	r3, #0
	bne	.L56
	bl	__Func_4458
	strh	r0, [r6, #6]
	bl	__Func_4458
	mov	r1, #0x14
	bl	_Func_b50
	add	r0, #0x14
	strh	r0, [r5]
.L56:
	sub	r3, r0, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_64
	push	{r5, lr}
	mov	r5, r0
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	beq	.La2
	cmp	r3, #2
	bgt	.L7c
	cmp	r3, #0
	beq	.Lb6
	b	.Lcc
.L7c:
	cmp	r3, #4
	beq	.L94
	cmp	r3, #6
	bne	.Lcc
	ldr	r3, [r0, #0x18]
	ldr	r2, =0xffffc000
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x1c]
	lsl	r2, #6
	b	.Lb0
.L94:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #6
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff000
	b	.Lae
.La2:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
.Lae:
	ldr	r3, [r0, #0x1c]
.Lb0:
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.Lcc
.Lb6:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r0, #0x3c
	strh	r0, [r5]
.Lcc:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_64

.thumb_func_start OvlFunc_e8
	ldr	r0, =.L50e4
	bx	lr
.func_end OvlFunc_e8

.thumb_func_start OvlFunc_f0
	mov	r0, #0
	bx	lr
.func_end OvlFunc_f0

.thumb_func_start OvlFunc_f4
	ldr	r0, =.L527c
	bx	lr
.func_end OvlFunc_f4

.thumb_func_start OvlFunc_fc
	ldr	r0, =.L52b8
	bx	lr
.func_end OvlFunc_fc

.thumb_func_start OvlFunc_104
	ldr	r0, =.L5558
	bx	lr
.func_end OvlFunc_104

.thumb_func_start OvlFunc_10c
	push	{lr}
	mov	r0, #0x84
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79358
	mov	r3, #0xa
	mov	r2, #0x54
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x54
	mov	r2, #7
	mov	r3, #4
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_10c

.thumb_func_start OvlFunc_134
	push	{lr}
	mov	r0, #0x84
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79374
	mov	r3, #0xa
	mov	r2, #0x54
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x59
	mov	r2, #7
	mov	r3, #4
	bl	__Func_10704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_134

.thumb_func_start OvlFunc_15c
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16e
	bl	__Func_95214
.L16e:
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r0, r5
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_15c

.thumb_func_start OvlFunc_198
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L5774
	mov	r1, #0x2d
	mov	r2, #0xb
	bl	__Func_10560
	mov	r2, #0xd2
	ldr	r1, =0x101
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #0xb
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_198

.thumb_func_start OvlFunc_1d0
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #1
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d0

.thumb_func_start OvlFunc_1e4
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #3
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e4

.thumb_func_start OvlFunc_1f8
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #4
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1f8

.thumb_func_start OvlFunc_20c
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	ldr	r0, =0x841
	bl	__Func_79338
	cmp	r0, #0
	beq	.L22c
	ldr	r0, =0x842
	bl	__Func_79338
	cmp	r0, #0
	bne	.L22c
	bl	OvlFunc_3fb0
.L22c:
	mov	r0, #2
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_20c

.thumb_func_start OvlFunc_240
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L578a
	mov	r1, #0x36
	mov	r2, #0x20
	bl	__Func_10560
	mov	r1, #0xcb
	lsl	r1, #1
	ldr	r2, =0x2d7
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #5
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_240

.thumb_func_start OvlFunc_278
	push	{lr}
	ldr	r0, =0x206
	bl	__Func_79338
	cmp	r0, #0
	bne	.L294
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L57a0
	mov	r1, #0x2d
	mov	r2, #0x27
	bl	__Func_10560
.L294:
	ldr	r0, =0x835
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2b4
	ldr	r0, =0x831
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2b4
	bl	OvlFunc_150c
	ldr	r0, =0x206
	bl	__Func_79358
	b	.L2cc
.L2b4:
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x325
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #6
	bl	OvlFunc_15c
.L2cc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_278

.thumb_func_start OvlFunc_2e4
	push	{lr}
	ldr	r0, =0x205
	bl	__Func_79338
	cmp	r0, #0
	bne	.L300
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L578a
	mov	r1, #0x32
	mov	r2, #0x2c
	bl	__Func_10560
.L300:
	mov	r1, #0xaa
	mov	r2, #0xde
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #7
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e4

.thumb_func_start OvlFunc_328
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L57a0
	mov	r1, #0x31
	mov	r2, #0x45
	bl	__Func_10560
	mov	r1, #0xa3
	lsl	r1, #1
	ldr	r2, =0x466
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #8
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_328

.thumb_func_start OvlFunc_360
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L57b6
	mov	r1, #0x34
	mov	r2, #0x4c
	bl	__Func_10560
	mov	r1, #0xbb
	lsl	r1, #1
	ldr	r2, =0x4d6
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #9
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_360

.thumb_func_start OvlFunc_398
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L578a
	mov	r1, #0x23
	mov	r2, #0x4a
	bl	__Func_10560
	mov	r1, #0x66
	ldr	r2, =0x4b6
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #0xa
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_398

.thumb_func_start OvlFunc_3cc
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L578a
	mov	r1, #0x23
	mov	r2, #0x49
	bl	__Func_10560
	mov	r1, #0x66
	ldr	r2, =0x4b6
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #0xc
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_3cc

.thumb_func_start OvlFunc_400
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L57a0
	mov	r1, #0x26
	mov	r2, #0x48
	bl	__Func_10560
	mov	r1, #0x92
	ldr	r2, =0x49e
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #0xd
	bl	OvlFunc_15c
	pop	{r0}
	bx	r0
.func_end OvlFunc_400

.thumb_func_start OvlFunc_434
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xaa
	sub	sp, #8
	bl	__Func_91ff0
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L462
	ldr	r0, =0x205
	bl	__Func_79374
	ldr	r0, =0x206
	bl	__Func_79374
.L462:
	mov	r0, #0x83
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L480
	mov	r1, #0xa7
	mov	r2, #0xe9
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	bl	OvlFunc_ec4
.L480:
	ldr	r0, =0x831
	bl	__Func_79338
	cmp	r0, #0
	beq	.L49c
	mov	r1, #0xe0
	mov	r2, #0xda
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
	bl	OvlFunc_10a4
.L49c:
	ldr	r0, =0x832
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4b6
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #15
	ldr	r2, =0x2bf0000
	bl	__Func_923e4
	bl	OvlFunc_12f0
.L4b6:
	ldr	r0, =0x833
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4d0
	mov	r1, #0xd8
	mov	r0, #0xe
	lsl	r1, #17
	ldr	r2, =0x47b0000
	bl	__Func_923e4
	bl	OvlFunc_1498
.L4d0:
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #4
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xd
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x11
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	beq	.L556
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L556:
	mov	r0, #0x13
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r0, =0x838
	bl	__Func_79338
	cmp	r0, #0
	beq	.L57c
	mov	r1, #0xe4
	mov	r0, #0x13
	lsl	r1, #15
	ldr	r2, =0x14d0000
	bl	__Func_923e4
	b	.L584
.L57c:
	ldr	r1, =.L49f4
	mov	r0, #0x13
	bl	__Func_9207c
.L584:
	ldr	r0, =0x841
	bl	__Func_79338
	cmp	r0, #0
	bne	.L590
	b	.L6e0
.L590:
	bl	OvlFunc_40f0
	mov	r1, #0xa5
	ldr	r2, =0x4cd0000
	lsl	r1, #16
	mov	r0, #9
	bl	__Func_923e4
	mov	r0, #9
	bl	__Func_92054
	mov	r6, #0xe0
	mov	r5, r0
	lsl	r6, #8
	strh	r6, [r5, #6]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	ldr	r2, =.L4ec8
	mov	r3, r5
	add	r0, #0x3c
	add	r3, #0x64
	mov	r8, r2
	strh	r0, [r3]
	add	r5, #0x66
	mov	r3, #1
	strh	r3, [r5]
	mov	r0, #9
	mov	r1, r8
	bl	__Func_9207c
	mov	r1, #0xa5
	ldr	r2, =0x4e60000
	lsl	r1, #16
	mov	r0, #0x1a
	bl	__Func_923e4
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r5, r0
	strh	r6, [r5, #6]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	mov	r3, r5
	add	r0, #0x3c
	add	r3, #0x64
	strh	r0, [r3]
	add	r5, #0x66
	mov	r3, #2
	strh	r3, [r5]
	mov	r0, #0x1a
	mov	r1, r8
	bl	__Func_9207c
	mov	r1, #0x98
	ldr	r2, =0x5050000
	lsl	r1, #16
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r5, r0
	strh	r6, [r5, #6]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	mov	r3, r5
	add	r0, #0x3c
	add	r3, #0x64
	strh	r0, [r3]
	add	r5, #0x66
	mov	r3, #3
	strh	r3, [r5]
	mov	r0, #0x16
	mov	r1, r8
	bl	__Func_9207c
	mov	r1, #0xb8
	mov	r2, #0xa3
	lsl	r2, #19
	lsl	r1, #16
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	strh	r6, [r5, #6]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	mov	r3, r5
	add	r0, #0x3c
	add	r3, #0x64
	strh	r0, [r3]
	add	r5, #0x66
	mov	r3, #4
	strh	r3, [r5]
	mov	r0, #8
	mov	r1, r8
	bl	__Func_9207c
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0xc8
	and	r5, r3
	strb	r5, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_45b8
	bl	__Func_41d8
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x842
	bl	__Func_79338
	cmp	r0, #0
	bne	.L6dc
	b	.L854
.L6dc:
	mov	r0, #0x16
	b	.L7de
.L6e0:
	ldr	r0, =0x83a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L6ec
	b	.L840
.L6ec:
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #5
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	ldr	r6, =.L4ec8
	add	r0, #0x3c
	add	r5, #0x64
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0xa
	bl	__Func_9207c
	mov	r1, #0xe3
	mov	r0, #0x18
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x18
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #6
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x18
	bl	__Func_9207c
	mov	r1, #0xf7
	mov	r0, #0x19
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #6
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0x19
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x19
	bl	__Func_9207c
	mov	r1, #0xf3
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x4fd0000
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x17
	bl	__Func_92adc
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x12
.L7de:
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L854

	.pool_aligned

.L840:
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L854:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf
	bne	.L86e
	ldr	r0, =0x87b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L876
.L86e:
	bl	__Func_94ac8
	bl	__Func_95160
.L876:
	mov	r0, #0x84
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L886
	bl	OvlFunc_10c
.L886:
	ldr	r0, =0x834
	bl	__Func_79358
	mov	r3, #0x1a
	str	r3, [sp]
	mov	r5, #0x2e
	mov	r0, #0x1d
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x1b
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x1c
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x58
	str	r3, [sp, #4]
	mov	r5, #0x14
	mov	r0, #0x13
	mov	r1, #0x5a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x59
	str	r3, [sp, #4]
	mov	r1, #0x5a
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x13
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #0x15
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #16
	str	r3, [r0, #0xc]
	add	r2, #4
	mov	r3, #8
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x87b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L930
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf
	bne	.L930
	bl	OvlFunc_a10
	b	.L9de
.L930:
	mov	r0, #0x17
	mov	r1, #7
	bl	__Func_924d4
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	bne	.L994
	bl	__Func_916b0
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r1, #0xc8
	mov	r0, #0x16
	lsl	r1, #17
	ldr	r2, =0x2630000
	bl	__Func_923e4
	mov	r1, #0xd4
	mov	r0, #0x15
	lsl	r1, #17
	ldr	r2, =0x2730000
	bl	__Func_923e4
	mov	r1, #0xc8
	mov	r0, #0x16
	lsl	r1, #1
	ldr	r2, =0x26b
	bl	__Func_9218c
	mov	r1, #0xd4
	ldr	r2, =0x26b
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0x16
	mov	r1, #5
	bl	__Func_924d4
	bl	__Func_91750
	b	.L9bc
.L994:
	bl	__Func_916b0
	mov	r1, #0xd4
	mov	r0, #0x15
	lsl	r1, #17
	ldr	r2, =0x2730000
	bl	__Func_923e4
	mov	r1, #0xd4
	mov	r0, #0x15
	lsl	r1, #1
	ldr	r2, =0x26b
	bl	__Func_921c4
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_924d4
	bl	__Func_91750
.L9bc:
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	__Func_95268
.L9de:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_434

.thumb_func_start OvlFunc_a10
	push	{r5, lr}
	bl	__Func_916b0
	bl	__Func_94ac8
	bl	__Func_95160
	bl	__Func_95240
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #7
	lsl	r1, #4
	bl	__Func_933d4
	mov	r0, #0x9e
	mov	r1, #0xa0
	mov	r2, #0xdc
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_933f8
	mov	r1, #0x93
	mov	r2, #0xd9
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	bl	__Func_95268
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r2, #0x2c
	ldr	r0, =.L578a
	mov	r1, #0x32
	bl	__Func_10560
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xab
	mov	r0, #9
	lsl	r1, #17
	ldr	r2, =0x37a0000
	bl	__Func_923e4
	mov	r1, #0xab
	mov	r0, #9
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__Func_921c4
	bl	__Func_9202c
	mov	r1, #0x94
	mov	r0, #9
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__Func_9218c
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #17
	ldr	r2, =0x37a0000
	bl	__Func_923e4
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x37a
	bl	__Func_9218c
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__Func_921c4
	mov	r1, #0x9f
	ldr	r2, =0x389
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #9
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r2, #0x3c
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_92adc
	ldr	r5, =0xe5c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x93
	ldr	r2, =0x346
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_93874
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #9
	ldr	r1, =0x121
	ldr	r2, =0x373
	bl	__Func_921c4
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #9
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #9
	add	r5, #8
	bl	__Func_92adc
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92c40
	mov	r1, #0x97
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	b	.Lc72
.Lc5c:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_925cc
	ldr	r0, =0xe65
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92c40
.Lc72:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	beq	.Lc5c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	ldr	r0, =0xe66
	bl	__Func_92b94
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	ldr	r1, =0x129
	ldr	r2, =0x2ee
	mov	r0, #0xa
	bl	__Func_9218c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #9
	ldr	r1, =0x129
	ldr	r2, =0x2ee
	bl	__Func_921c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #5
	mov	r0, #0x16
	bl	__Func_924d4
	ldr	r0, =0x12f
	bl	__Func_79374
	ldr	r0, =0x87b
	bl	__Func_79358
	ldr	r0, =0x205
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_a10

.thumb_func_start OvlFunc_d5c
	push	{r5, r6, r7, lr}
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld6c
	b	.Le96
.Ld6c:
	bl	__Func_916b0
	mov	r0, #0x83
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le2e
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0x80
	mov	r5, r0
	mov	r2, #0x80
	mov	r0, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	ldr	r6, [r5, #0x50]
	bl	__Func_12330
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r7, r5
	mov	r0, #0x28
	bl	__Func_30f8
	add	r7, #0x23
	mov	r0, #0x91
	bl	__Func_f9080
	ldrb	r2, [r7]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r7]
	ldrb	r2, [r6, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, #0xe9
	strb	r3, [r6, #9]
	mov	r0, #0xb
	ldr	r1, =0x1d90000
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0xf0
	ldr	r3, [r5, #0xc]
	lsl	r2, #16
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	ldr	r3, =0x6666
	mov	r1, #0xac
	mov	r2, #0xe9
	lsl	r1, #1
	str	r3, [r5, #0x44]
	mov	r0, #0xb
	lsl	r2, #2
	bl	__Func_921c4
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	ldrb	r2, [r7]
	strb	r3, [r6, #9]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r7]
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	bl	__Func_9202c
	mov	r0, #0x83
	lsl	r0, #4
	bl	__Func_79358
.Le2e:
	bl	OvlFunc_ec4
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	beq	.Le92
	ldr	r0, =0x841
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le92
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le92
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.Le82
	ldr	r5, =0x396
	mov	r0, #0xa3
	lsl	r0, #1
	mov	r1, r5
	bl	OvlFunc_1a64
	mov	r0, #0
	ldr	r1, =0x123
	mov	r2, r5
	bl	__Func_921c4
	b	.Le8a
.Le82:
	ldr	r0, =0x14f
	ldr	r1, =0x3bd
	bl	OvlFunc_1a64
.Le8a:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_79358
.Le92:
	bl	__Func_91750
.Le96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d5c

.thumb_func_start OvlFunc_ec4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x39
	str	r3, [sp, #4]
	mov	r6, #0x15
	mov	r8, r3
	mov	r0, #0x1d
	mov	r1, #0x40
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r5, #0x3a
	mov	r0, #0x1d
	mov	r1, #0x40
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x16
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r1, #0x40
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r6, #0x14
	mov	r0, #0x1d
	mov	r1, #0x40
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ec4

.thumb_func_start OvlFunc_f38
	push	{r5, lr}
	ldr	r0, =0x311
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf46
	b	.L1070
.Lf46:
	bl	__Func_916b0
	ldr	r0, =0x831
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1002
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0x80
	mov	r5, r0
	mov	r2, #0x80
	mov	r0, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r2, #0xca
	mov	r0, #0xc
	ldr	r1, =0x17d0000
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0x80
	ldr	r3, [r5, #0xc]
	lsl	r2, #17
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0x91
	str	r3, [r5, #0x44]
	ldr	r2, =0x341
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_92b08
	mov	r1, #0x81
	mov	r2, #0xd5
	lsl	r2, #2
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_92b08
	mov	r2, #0xda
	mov	r1, #0xe0
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	bl	__Func_9202c
	ldr	r0, =0x831
	bl	__Func_79358
.L1002:
	bl	OvlFunc_10a4
	ldr	r0, =0x311
	bl	__Func_79358
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	beq	.L106c
	ldr	r0, =0x841
	bl	__Func_79338
	cmp	r0, #0
	bne	.L106c
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L106c
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L1050
	ldr	r1, =0x34b
	mov	r0, #0xdb
	bl	OvlFunc_1a64
	mov	r0, #0
	mov	r1, #0xb3
	ldr	r2, =0x33d
	bl	__Func_921c4
	b	.L1064
.L1050:
	mov	r1, #0xe3
	lsl	r1, #2
	mov	r0, #0xd6
	bl	OvlFunc_1a64
	mov	r0, #0
	mov	r1, #0xdb
	ldr	r2, =0x38f
	bl	__Func_921c4
.L1064:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_79358
.L106c:
	bl	__Func_91750
.L1070:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f38

.thumb_func_start OvlFunc_10a4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #8
	mov	r2, #0xf
	str	r2, [sp]
	mov	r10, r2
	mov	r5, #0x35
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r6, #0xe
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x34
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r2, r8
	str	r2, [sp]
	mov	r5, #0x36
	mov	r0, #0x19
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, r10
	str	r3, [sp]
	mov	r0, #0x19
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xe
	mov	r1, #0x35
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r2, r10
	mov	r3, #0x37
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10a4

.thumb_func_start OvlFunc_1154
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x312
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1168
	b	.L12b0
.L1168:
	bl	__Func_916b0
	ldr	r0, =0x832
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1246
	mov	r0, #0xd
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x23
	ldr	r3, [r0, #0x50]
	mov	r8, r0
	add	r8, r2
	ldrb	r5, [r3, #9]
	mov	r3, r8
	ldrb	r3, [r3]
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #11
	lsl	r0, #11
	mov	r10, r3
	bl	__Func_12330
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xd
	ldr	r2, =0x2bf0000
	bl	__Func_923e4
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r2, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #0x44]
	mov	r1, #0x40
	ldr	r2, =0x2bf
	mov	r0, #0xd
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	lsl	r5, #28
	bl	__Func_12330
	lsr	r5, #30
	bl	__Func_12350
	bl	__Func_9202c
	ldr	r0, =0x832
	bl	__Func_79358
	mov	r0, #0
	mov	r1, r5
	bl	__Func_92b08
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, r8
	mov	r3, r10
	strb	r3, [r2]
.L1246:
	bl	OvlFunc_12f0
	ldr	r0, =0x312
	bl	__Func_79358
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12ac
	ldr	r0, =0x841
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12ac
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12ac
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x2b4ffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.L1292
	ldr	r1, =0x29d
	mov	r0, #0x3e
	bl	OvlFunc_1a64
	mov	r0, #0
	mov	r1, #0x1b
	ldr	r2, =0x273
	bl	__Func_921c4
	b	.L12a4
.L1292:
	ldr	r1, =0x2cb
	mov	r0, #0x4b
	bl	OvlFunc_1a64
	mov	r0, #0
	mov	r1, #0x43
	ldr	r2, =0x2f5
	bl	__Func_921c4
.L12a4:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_79358
.L12ac:
	bl	__Func_91750
.L12b0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1154

.thumb_func_start OvlFunc_12f0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #0x2a
	mov	r0, #0x1d
	mov	r1, #0x16
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r6, #2
	mov	r0, #0x1d
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #4
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x14
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12f0

.thumb_func_start OvlFunc_1348
	push	{r5, lr}
	ldr	r0, =0x313
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1356
	b	.L1458
.L1356:
	bl	__Func_916b0
	ldr	r0, =0x833
	bl	__Func_79338
	cmp	r0, #0
	bne	.L13e8
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, #0x80
	mov	r5, r0
	mov	r2, #0x80
	mov	r0, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r1, #0xed
	mov	r0, #0xe
	lsl	r1, #17
	ldr	r2, =0x47b0000
	bl	__Func_923e4
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0x90
	ldr	r3, [r5, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0xd8
	str	r3, [r5, #0x44]
	lsl	r1, #1
	ldr	r2, =0x47b
	mov	r0, #0xe
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	bl	__Func_12350
	bl	__Func_9202c
	ldr	r0, =0x833
	bl	__Func_79358
.L13e8:
	bl	OvlFunc_1498
	ldr	r0, =0x313
	bl	__Func_79358
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1454
	ldr	r0, =0x841
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1454
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1454
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x479ffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.L143a
	mov	r0, #0xce
	mov	r1, #0x8c
	lsl	r0, #1
	lsl	r1, #3
	bl	OvlFunc_1a64
	mov	r1, #0xcf
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x42c
	bl	__Func_921c4
	b	.L144c
.L143a:
	ldr	r0, =0x1bd
	ldr	r1, =0x494
	bl	OvlFunc_1a64
	mov	r0, #0
	ldr	r1, =0x1bf
	ldr	r2, =0x4cb
	bl	__Func_921c4
.L144c:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_79358
.L1454:
	bl	__Func_91750
.L1458:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1348

.thumb_func_start OvlFunc_1498
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x47
	str	r3, [sp, #4]
	mov	r5, #0x1a
	mov	r8, r3
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r6, #0x46
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r5, #0x1b
	mov	r0, #0x1d
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x1c
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0x48
	str	r3, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x16
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1498

.thumb_func_start OvlFunc_150c
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x32a
	bl	__Func_921c4
	mov	r1, #0x83
	mov	r0, #0x14
	lsl	r1, #17
	ldr	r2, =0x3250000
	bl	__Func_923e4
	mov	r1, #0x83
	mov	r0, #0x14
	lsl	r1, #1
	ldr	r2, =0x339
	bl	__Func_9218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x8d
	ldr	r2, =0x357
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r2, #0
	mov	r1, #0x14
	mov	r0, #0
	bl	__Func_92848
	bl	__Func_9202c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_937b8
	ldr	r5, =0xe67
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_93054
	add	r5, #4
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_925cc
	mov	r0, r5
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_93040
	ldr	r1, =.L48c0
	mov	r0, #0x14
	bl	__Func_920fc
	ldr	r0, =0x835
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_150c

.thumb_func_start OvlFunc_1600
	push	{lr}
	ldr	r0, =0x836
	bl	__Func_79338
	cmp	r0, #0
	bne	.L166a
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	bne	.L166a
	bl	__Func_916b0
	ldr	r0, =0xe6c
	bl	__Func_92b94
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r1, #0xbf
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x26b
	bl	__Func_921c4
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x836
	bl	__Func_79358
	bl	__Func_91750
.L166a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1600

.thumb_func_start OvlFunc_1684
	push	{lr}
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16ba
	ldr	r0, =0x836
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16ba
	bl	__Func_916b0
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xe71
	bl	__Func_92b94
	bl	OvlFunc_173c
	bl	__Func_91750
.L16ba:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1684

.thumb_func_start OvlFunc_16cc
	push	{lr}
	ldr	r0, =0x841
	bl	__Func_79338
	cmp	r0, #0
	beq	.L170c
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xed0
	bl	__Func_92b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	b	.L1728
.L170c:
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1728
	bl	__Func_916b0
	ldr	r0, =0xe6e
	bl	__Func_92b94
	bl	OvlFunc_173c
	bl	__Func_91750
.L1728:
	pop	{r0}
	bx	r0
.func_end OvlFunc_16cc

.thumb_func_start OvlFunc_173c
	push	{r5, lr}
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0x16
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1768
	ldr	r0, =0xee5
	bl	__Func_92b94
	mov	r5, #1
	b	.L176e
.L1768:
	ldr	r0, =0xee6
	bl	__Func_92b94
.L176e:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x28
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_92548
	cmp	r5, #0
	beq	.L17c2
	ldr	r0, =0xe70
	bl	__Func_92b94
	b	.L17c8
.L17c2:
	ldr	r0, =0xee7
	bl	__Func_92b94
.L17c8:
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L17f0
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__Func_92128
.L17f0:
	mov	r0, #0x16
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_917d0
	ldr	r0, =0x837
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_173c

.thumb_func_start OvlFunc_1828
	push	{r5, r6, lr}
	ldr	r0, =0x837
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1836
	b	.L196c
.L1836:
	bl	__Func_916b0
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x16
	bl	__Func_93874
	ldr	r5, =0xe74
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_92adc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0x16
	lsl	r1, #10
	bl	__Func_92064
	ldr	r1, =.L4934
	mov	r0, #0x16
	bl	__Func_920fc
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r1, =.L4984
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92f84
	mov	r0, #0x16
	bl	__Func_92054
	mov	r6, #0x80
	lsl	r6, #9
	mov	r1, #1
	str	r6, [r0, #0x1c]
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_93054
	mov	r0, #0x28
	bl	__Func_9163c
	add	r5, #5
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_925cc
	mov	r0, r5
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x80
	mov	r0, #0x16
	mov	r1, r6
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1942
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__Func_92128
.L1942:
	mov	r0, #0x16
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_917d0
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_924d4
	ldr	r0, =0x837
	bl	__Func_79358
	bl	__Func_91750
.L196c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1828

.thumb_func_start OvlFunc_198c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L19a6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__Func_923e4
.L19a6:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0x16
	ldr	r1, =0x119
	ldr	r2, =0x1fb
	bl	__Func_921c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92848
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0xe7b
	bl	__Func_92b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1a2e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__Func_92128
.L1a2e:
	mov	r0, #0x16
	bl	__Func_923c4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x205
	bl	__Func_921c4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_198c

.thumb_func_start OvlFunc_1a64
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0
	mov	r6, r1
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1a7e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__Func_923e4
.L1a7e:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0x16
	mov	r1, r5
	mov	r2, r6
	bl	__Func_921c4
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0xe7d
	bl	__Func_92b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1afc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__Func_92128
.L1afc:
	mov	r0, #0x16
	bl	__Func_923c4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a64

.thumb_func_start OvlFunc_1b18
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x838
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1b32
	b	.L207e
.L1b32:
	bl	__Func_916b0
	ldr	r0, =.L54b0
	bl	__Func_917ac
	bl	OvlFunc_4550
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1b92
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__Func_923e4
.L1b92:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0x16
	lsl	r1, #10
	bl	__Func_92064
	ldr	r1, =.L4a00
	mov	r0, #0
	bl	__Func_9207c
	ldr	r1, =.L4a3c
	mov	r0, #0x16
	bl	__Func_920fc
	mov	r0, #0
	bl	__Func_920e8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x16
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x20
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0x21
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0x1e
	mov	r1, #8
	bl	__Func_924d4
	mov	r1, #8
	mov	r0, #0x1d
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_92054
	ldr	r3, =0xffff0000
	mov	r1, #2
	str	r3, [r0, #0x18]
	mov	r0, #0x20
	bl	__Func_92b08
	mov	r0, #0x21
	mov	r1, #2
	bl	__Func_92b08
	mov	r0, #0x1e
	mov	r1, #3
	bl	__Func_92b08
	mov	r1, #3
	mov	r0, #0x1d
	bl	__Func_92b08
	ldr	r0, =0xe7f
	bl	__Func_92b94
	mov	r0, #0x1c
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xe0
	mov	r1, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x14b0000
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r5, #0
.L1cc2:
	mov	r0, #0x20
	bl	__Func_92054
	bl	OvlFunc_42bc
	mov	r0, #0x21
	bl	__Func_92054
	bl	OvlFunc_42bc
	mov	r0, #0x1e
	bl	__Func_92054
	bl	OvlFunc_42bc
	mov	r0, #0x1d
	bl	__Func_92054
	bl	OvlFunc_42bc
	add	r5, #1
	mov	r0, #1
	bl	__Func_30f8
	cmp	r5, #0x27
	bls	.L1cc2
	ldr	r5, =.L57fc
	ldr	r2, =.L57f8
	ldr	r7, =OvlFunc_456c
	mov	r6, #0
	mov	r1, #0xc8
	str	r6, [r2]
	lsl	r1, #4
	str	r6, [r5]
	mov	r0, r7
	mov	r9, r2
	bl	__Func_41d8
	ldr	r3, =OvlFunc_45a8
	mov	r1, #0xc8
	mov	r11, r3
	lsl	r1, #4
	mov	r0, r11
	bl	__Func_41d8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #1
	str	r2, [r5]
	mov	r0, #0x1e
	mov	r10, r2
	bl	__Func_9163c
	mov	r1, #0xe4
	mov	r2, #0x91
	lsl	r1, #15
	lsl	r2, #17
	mov	r0, #0x13
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0x13
	bl	__Func_92064
	mov	r0, #0x91
	bl	__Func_f9080
	ldr	r2, =0x14d
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__Func_92158
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x13
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	str	r6, [r5]
	bl	__Func_92064
	mov	r2, #0x96
	lsl	r2, #1
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__Func_92158
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r3, #2
	str	r3, [r5]
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r8, r3
	bl	__Func_92064
	ldr	r2, =0x14d
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__Func_92158
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x13
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	str	r6, [r5]
	bl	__Func_92064
	mov	r2, #0x96
	lsl	r2, #1
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__Func_92158
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r2, r8
	str	r2, [r5]
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	ldr	r2, =0x14d
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__Func_92158
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #10
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r3, r10
	str	r3, [r5]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0x20
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0x20
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1f
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x21
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x21
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x28
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x1e
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0x1e
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1e
	mov	r1, #0
	bl	__Func_92f84
	mov	r3, r9
	mov	r2, r10
	str	r2, [r3]
	mov	r1, #1
	mov	r0, #0x1d
	bl	__Func_924d4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x1d
	mov	r1, #0
	bl	__Func_92950
	mov	r0, #0x1d
	ldr	r1, =0x105
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0x1d
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x1d
	b	.L1f58

	.pool_aligned

.L1f58:
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x1d
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x28
	mov	r0, #0x1d
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #9
	mov	r0, #0x1d
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x1d
	bl	__Func_93040
	ldr	r0, =0x121
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_12330
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0x8d
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_933f8
	bl	__Func_93530
	bl	__Func_9202c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x16
	bl	__Func_93874
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r7
	bl	__Func_4278
	mov	r0, r11
	bl	__Func_4278
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	bl	OvlFunc_4560
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2040
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__Func_92128
.L2040:
	mov	r0, #0x16
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #0x1f
	bl	__Func_92924
	mov	r0, #0x1c
	bl	__Func_92924
	mov	r0, #0x1e
	bl	__Func_92924
	mov	r0, #0x1d
	bl	__Func_92924
	mov	r0, #0x20
	bl	__Func_92924
	mov	r0, #0x21
	bl	__Func_92924
	ldr	r0, =0x838
	bl	__Func_79358
	bl	__Func_91750
.L207e:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b18

.thumb_func_start OvlFunc_209c
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, r1
	mov	r1, #0xf
	and	r1, r3
	cmp	r1, #1
	bne	.L20f0
	ldr	r0, [r0, #0x50]
	sub	r4, r2, #1
	mov	r12, r0
	cmp	r2, #0
	bne	.L20c4
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	ldr	r2, =.L48bc
	lsr	r3, #1
	and	r3, r1
	ldrb	r4, [r2, r3]
.L20c4:
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L20e8
	mov	r0, r12
	add	r0, #0x28
	mov	r1, r3
.L20d4:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.L20e2
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L20e2
	strb	r4, [r2, #5]
.L20e2:
	sub	r1, #1
	cmp	r1, #0
	bne	.L20d4
.L20e8:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L20f0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_209c

.thumb_func_start OvlFunc_20fc
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r2, =.L57fc
	ldr	r3, [r3]
	ldr	r2, [r2]
	lsr	r3, r2
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.L2142
	mov	r0, #0x20
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_209c
	mov	r0, #0x21
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_209c
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_209c
	mov	r0, #0x1d
	bl	__Func_92054
	mov	r1, #1
	bl	OvlFunc_209c
	b	.L2172
.L2142:
	mov	r0, #0x20
	bl	__Func_92054
	mov	r1, #8
	bl	OvlFunc_209c
	mov	r0, #0x21
	bl	__Func_92054
	mov	r1, #8
	bl	OvlFunc_209c
	mov	r0, #0x1e
	bl	__Func_92054
	mov	r1, #8
	bl	OvlFunc_209c
	mov	r0, #0x1d
	bl	__Func_92054
	mov	r1, #8
	bl	OvlFunc_209c
.L2172:
	pop	{r0}
	bx	r0
.func_end OvlFunc_20fc

.thumb_func_start OvlFunc_2180
	push	{r5, r6, lr}
	ldr	r0, =0x83a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L218e
	b	.L287e
.L218e:
	bl	__Func_916b0
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #5
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	ldr	r6, =.L4ec8
	add	r0, #0x3c
	add	r5, #0x64
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0xa
	bl	__Func_9207c
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #16
	ldr	r2, =0x4a50000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe3
	mov	r0, #0x18
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x18
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #6
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x18
	bl	__Func_9207c
	mov	r1, #0xfa
	mov	r0, #0x19
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #6
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0x19
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x19
	bl	__Func_9207c
	mov	r1, #0xe3
	mov	r0, #0x1a
	lsl	r1, #16
	ldr	r2, =0x4a50000
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf3
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x4fd0000
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x17
	bl	__Func_92adc
	mov	r0, #0x17
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #3
	bl	__Func_30f8
	ldr	r0, =0xe8c
	bl	__Func_92b94
	ldr	r0, =0x201a
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r0, #0
	mov	r1, #0x96
	ldr	r2, =0x446
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L22e6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__Func_923e4
.L22e6:
	mov	r0, #0x16
	mov	r1, #0x84
	ldr	r2, =0x446
	bl	__Func_921c4
	mov	r1, #0x16
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9a
	mov	r3, #1
	lsl	r2, #19
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xe8
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x4e50000
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x86
	bl	__Func_f9080
	mov	r2, #0
	mov	r0, #0x17
	mov	r1, #4
	bl	__Func_92560
	mov	r1, #6
	mov	r0, #0x17
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_923e4
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_9202c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #1
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0x19
	bl	__Func_92054
	mov	r1, #2
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0xa
	bl	__Func_9259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9a
	mov	r3, #1
	lsl	r2, #19
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0x81
	mov	r0, #0x1a
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #0x1a
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #0x19
	mov	r1, #0xea
	ldr	r2, =0x4b5
	bl	__Func_92128
	mov	r0, #0x1a
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0xe3
	ldr	r2, =0x4b1
	mov	r0, #0x1a
	bl	__Func_92128
	mov	r0, #0x5a
	bl	__Func_9163c
	mov	r0, #0xe8
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x4e50000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0xf3
	ldr	r2, =0x4fd0000
	lsl	r1, #16
	mov	r0, #0x17
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x6a
	bl	__Func_f9080
	mov	r0, #0x17
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #7
	mov	r0, #0x17
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_9202c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9a
	mov	r3, #1
	lsl	r2, #19
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x18
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #0x18
	bl	__Func_92848
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	ldr	r0, =0x800a
	bl	__Func_92f84
	mov	r0, #0x19
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	b	.L25bc

	.pool_aligned

.L25bc:
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x9999
	mov	r0, #0x19
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0x1a
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r0, #0x19
	mov	r1, #0xf7
	ldr	r2, =0x4ba
	bl	__Func_92128
	mov	r1, #0xe3
	ldr	r2, =0x4a5
	mov	r0, #0x1a
	bl	__Func_92158
	mov	r0, #0x19
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xc0
	orr	r5, r3
	strb	r5, [r0]
	lsl	r1, #7
	mov	r0, #0x1a
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x18
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x8018
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_924d4
	ldr	r0, =0x800a
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0x18
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x83
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x90
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x800a
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x18
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x19
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x1a
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x19
	mov	r2, #0
	mov	r0, #0x18
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0
	mov	r1, #9
	mov	r0, #0xa
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	ldr	r0, =0x800a
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0x18
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0x1a
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #3
	mov	r0, #0x1a
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x1a
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	bl	OvlFunc_28a4
	ldr	r0, =0x83a
	bl	__Func_79358
	bl	__Func_91750
.L287e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2180

.thumb_func_start OvlFunc_28a4
	push	{r5, lr}
	mov	r1, #0xc0
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x4ab0000
	bl	__Func_933f8
	mov	r0, #0x1a
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_92064
	ldr	r2, =0xcccc
	mov	r0, #9
	ldr	r1, =0x19999
	bl	__Func_92064
	ldr	r1, =.L4ab4
	mov	r0, #0x1a
	bl	__Func_9207c
	ldr	r1, =.L4a78
	mov	r0, #9
	bl	__Func_920fc
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r1, #0x26
	mov	r2, #0x48
	ldr	r0, =.L57a0
	bl	__Func_10560
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0x95
	ldr	r2, =0x497
	bl	__Func_921c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x19
	mov	r1, #0xfa
	ldr	r2, =0x4be
	bl	__Func_921c4
	bl	__Func_9202c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0x18
	mov	r1, #6
	bl	__Func_924d4
	mov	r1, #6
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r0, #0x18
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r0, #0x19
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	ldr	r5, =.L4ec8
	mov	r0, #0xa
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x18
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_9207c
	mov	r0, #0x1a
	bl	__Func_920e8
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x9f
	bl	__Func_f9080
	mov	r1, #0x26
	mov	r2, #0x48
	ldr	r0, =.L57e2
	bl	__Func_10560
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_9202c
	mov	r0, #0xe0
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x4c90000
	lsl	r0, #15
	bl	__Func_933f8
	mov	r0, #0x9e
	bl	__Func_f9080
	mov	r2, #0x49
	mov	r1, #0x23
	ldr	r0, =.L578a
	bl	__Func_10560
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_9202c
	ldr	r1, =.L4b28
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =.L4b9c
	mov	r0, #0x1a
	bl	__Func_9207c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x9f
	bl	__Func_f9080
	mov	r1, #0x23
	mov	r2, #0x49
	ldr	r0, =.L57cc
	bl	__Func_10560
	mov	r0, #0x1a
	bl	__Func_920e8
	bl	__Func_9202c
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r5, =0xe9b
	mov	r0, r5
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x28
	ldr	r0, =0x201a
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x1a
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r1, =.L4c0c
	mov	r0, #9
	bl	__Func_9207c
	ldr	r1, =.L4c5c
	mov	r0, #0x1a
	bl	__Func_9207c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x43e0000
	lsl	r0, #15
	bl	__Func_933f8
	mov	r0, #9
	bl	__Func_920e8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r2, =0x43e
	mov	r0, #9
	mov	r1, #0x69
	bl	__Func_921c4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_92c40
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2b9c
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	add	r0, r5, #4
	bl	__Func_92b94
	b	.L2baa
.L2b9c:
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	add	r0, r5, #5
	bl	__Func_92b94
.L2baa:
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x1e
	mov	r0, #9
	bl	__Func_937b8
	ldr	r5, =0xea1
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2c2a
	mov	r1, #3
	mov	r0, #9
	bl	__Func_92548
	add	r0, r5, #1
	bl	__Func_92b94
	ldr	r0, =0x8009
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	b	.L2c54
.L2c2a:
	mov	r0, #9
	ldr	r1, =0x105
	mov	r2, #0x5a
	bl	__Func_937b8
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x103
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #9
	bl	__Func_924d4
	add	r0, r5, #2
	bl	__Func_92b94
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_92f84
.L2c54:
	ldr	r1, =.L4ca8
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #0x5a
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0x16
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2ca8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__Func_92128
.L2ca8:
	mov	r0, #0x16
	bl	__Func_923c4
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_28a4

.thumb_func_start OvlFunc_2d28
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92848
	ldr	r0, =0x30d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2d62
	ldr	r0, =0xea5
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	b	.L2d8c
.L2d62:
	ldr	r0, =0xea4
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_9259c
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
.L2d8c:
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #5
	mov	r0, #0xa
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x3c
	ldr	r1, =.L4ec8
	strh	r0, [r5]
	mov	r0, #0xa
	bl	__Func_9207c
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x30d
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d28

.thumb_func_start OvlFunc_2dec
	push	{r5, r6, r7, lr}
	mov	r0, #0x84
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2dfc
	b	.L3164
.L2dfc:
	ldr	r0, =0x841
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2e08
	b	.L3164
.L2e08:
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1a
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0xd9
	ldr	r2, =0x557
	bl	__Func_921c4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2e62
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__Func_923e4
.L2e62:
	mov	r0, #0x16
	mov	r1, #0xeb
	ldr	r2, =0x557
	bl	__Func_921c4
	mov	r1, #0xb0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2e8c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x1a
	bl	__Func_923e4
.L2e8c:
	mov	r0, #0x1a
	mov	r1, #0xc7
	ldr	r2, =0x557
	bl	__Func_921c4
	mov	r1, #0xd0
	mov	r0, #0x1a
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf7
	mov	r0, #0x19
	lsl	r1, #16
	ldr	r2, =0x4ba0000
	bl	__Func_923e4
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_92adc
	mov	r0, #8
	bl	__Func_92054
	mov	r1, r0
	add	r1, #0x23
	ldr	r4, [r0, #0x50]
	ldrb	r2, [r1]
	mov	r6, #0xfe
	mov	r3, r6
	mov	r5, #0xd
	and	r3, r2
	neg	r5, r5
	ldrb	r2, [r4, #9]
	strb	r3, [r1]
	mov	r3, r5
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r4, #9]
	mov	r0, #0
	bl	__Func_92054
	mov	r7, r0
	add	r7, #0x23
	ldr	r4, [r0, #0x50]
	ldrb	r3, [r7]
	and	r6, r3
	ldrb	r3, [r4, #9]
	and	r5, r3
	mov	r3, #8
	orr	r5, r3
	strb	r6, [r7]
	strb	r5, [r4, #9]
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2f10
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__Func_923e4
.L2f10:
	mov	r0, #8
	mov	r1, #0xdd
	ldr	r2, =0x569
	bl	__Func_921c4
	mov	r1, #0xb0
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_925cc
	ldr	r0, =0xec6
	bl	__Func_92b94
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r1, #0xca
	mov	r0, #9
	lsl	r1, #15
	ldr	r2, =0x4ad0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	ldr	r0, =0x1009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x4ad0000
	bl	__Func_933f8
	ldr	r2, =0xb333
	mov	r0, #9
	ldr	r1, =0x16666
	bl	__Func_92064
	ldr	r1, =.L4d1c
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r0, #0xbb
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	lsl	r2, #19
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #0x1a
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xdd
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x5690000
	bl	__Func_933f8
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x16
	mov	r1, #8
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0x50
	bl	__Func_92adc
	mov	r0, #0xb6
	mov	r1, #1
	mov	r2, #0xaa
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_933f8
	mov	r2, #0xad
	mov	r0, #8
	mov	r1, #0xb6
	lsl	r2, #3
	bl	__Func_921c4
	mov	r2, #0
	mov	r1, #9
	mov	r0, #8
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #0x1a
	mov	r1, #9
	bl	__Func_9280c
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x1a
	mov	r1, #8
	mov	r2, #0
	bl	__Func_92848
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_92848
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x1a
	mov	r1, #9
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #8
	mov	r1, #9
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92548
	ldrb	r3, [r7]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r7]
	mov	r0, #8
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x23
	ldrb	r3, [r2]
	orr	r3, r5
	strb	r3, [r2]
	bl	OvlFunc_31ac
	ldr	r0, =0x841
	bl	__Func_79358
	bl	__Func_91750
.L3164:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2dec

.thumb_func_start OvlFunc_31ac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #4
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	ldr	r0, [r7, #0x50]
	mov	r11, r1
	mov	r10, r0
	mov	r1, #0x80
	mov	r0, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x58b0000
	bl	__Func_933f8
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0x1a
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	ldr	r2, =0x9999
	mov	r0, #0x16
	ldr	r1, =0x13333
	bl	__Func_92064
	ldr	r5, =.L4d6c
	mov	r0, #8
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0x1a
	bl	__Func_9207c
	bl	__Func_95240
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_95214
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r0, #0x80
	bl	__Func_9163c
	bl	OvlFunc_134
	mov	r0, #0xae
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x5940000
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_933f8
	mov	r0, #0x68
	bl	__Func_9163c
	mov	r0, #0x99
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x52d0000
	bl	__Func_933f8
	mov	r2, #0x9f
	mov	r0, #9
	mov	r1, #0x9e
	lsl	r2, #3
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_92adc
	mov	r0, #8
	bl	__Func_920e8
	ldr	r1, =.L4e04
	mov	r0, #8
	bl	__Func_9207c
	ldr	r1, =.L4e30
	mov	r0, #0x1a
	bl	__Func_9207c
	ldr	r1, =.L4e5c
	mov	r0, #0
	bl	__Func_9207c
	ldr	r1, =.L4e88
	mov	r0, #0x16
	bl	__Func_920fc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x1a
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x1a
	mov	r1, #8
	mov	r2, #0
	bl	__Func_92848
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x14
	bl	_Func_b50
	add	r5, #0x64
	ldr	r2, .L3394	@ 0
	add	r0, #0x14
	mov	r3, #0
	strh	r0, [r5]
	mov	r0, #0x16
	mov	r9, r3
	mov	r8, r2
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x14
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x14
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	b	.L33c4

	.align	2, 0
.L3394:
	.word	0
	.pool

.L33c4:
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x14
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_4458
	mov	r1, #0x14
	bl	_Func_b50
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	ldr	r5, =.L4eb4
	mov	r0, #9
	mov	r1, r5
	bl	__Func_9207c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, r5
	mov	r0, #0
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x1a
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r1, r5
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_95214
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_12330
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #12
	bl	__Func_933d4
	mov	r0, #0xd9
	mov	r1, #1
	ldr	r2, =0x43c0000
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91200
	mov	r0, #0x28
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_92950
	mov	r0, #0x13
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	ldr	r3, =0xcccc
	mov	r1, r6
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r0, #0xfe
	mov	r3, r0
	and	r3, r2
	strb	r3, [r1]
	mov	r1, r11
	ldrb	r2, [r1, #9]
	mov	r1, #0xd
	neg	r1, r1
	mov	r3, r1
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, r11
	strb	r3, [r2, #9]
	mov	r3, #0xc8
	lsl	r3, #16
	ldr	r2, =0x3820000
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	mov	r3, r7
	str	r2, [r7, #0x10]
	str	r2, [r7, #0x40]
	add	r3, #0x55
	mov	r2, r8
	str	r3, [sp]
	strb	r2, [r3]
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	and	r0, r3
	strb	r0, [r2]
	mov	r0, r10
	ldrb	r3, [r0, #9]
	and	r1, r3
	strb	r1, [r0, #9]
	bl	__Func_93554
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	bl	__Func_93554
	str	r5, [r0, #0x3c]
	bl	__Func_93554
	str	r5, [r0, #0x40]
	bl	__Func_93554
	mov	r1, r9
	str	r1, [r0, #0x24]
	bl	__Func_93554
	mov	r2, r9
	str	r2, [r0, #0x28]
	bl	__Func_93554
	mov	r3, r9
	str	r3, [r0, #0x2c]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xf7
	mov	r1, #0x80
	ldr	r2, =0x3950000
	mov	r3, #0
	lsl	r1, #16
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x1e
	bl	__Func_91254
	mov	r0, #0x1e
	bl	__Func_30f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_3ce4
	bl	__Func_41d8
	ldr	r1, =.L4edc
	mov	r0, #0x13
	bl	__Func_9207c
	mov	r0, #0x80
	lsl	r0, #10
	ldr	r1, =0x7ae
	bl	__Func_933d4
	mov	r0, #0xaf
	mov	r1, #0xc0
	lsl	r0, #16
	lsl	r1, #15
	ldr	r2, =0x43e0000
	mov	r3, #1
	bl	__Func_933f8
	mov	r5, r7
	add	r5, #0x66
.L3662:
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #8
	bne	.L3662
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	bl	__Func_12350
	bl	__Func_93554
	mov	r1, #0x80
	lsl	r1, #24
	str	r1, [r0, #0x38]
	mov	r8, r1
	bl	__Func_93554
	mov	r2, r8
	str	r2, [r0, #0x3c]
	bl	__Func_93554
	mov	r3, r8
	str	r3, [r0, #0x40]
	bl	__Func_93554
	mov	r5, #0
	str	r5, [r0, #0x24]
	bl	__Func_93554
	str	r5, [r0, #0x28]
	bl	__Func_93554
	str	r5, [r0, #0x2c]
	ldr	r0, =OvlFunc_3ce4
	bl	__Func_4278
	mov	r0, #0x13
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, r11
	mov	r3, #0xa0
	lsl	r3, #9
	add	r2, #0x23
	mov	r0, #2
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	strb	r0, [r2]
	mov	r2, #0x80
	lsl	r2, #10
	mov	r1, r11
	str	r3, [r1, #0x18]
	mov	r0, #1
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x1c]
	str	r5, [r7, #8]
	str	r5, [r7, #0x10]
	str	r5, [r7, #0x38]
	str	r5, [r7, #0x40]
	mov	r10, r2
	bl	__Func_30f8
	mov	r0, #0x17
	mov	r1, #8
	bl	__Func_924d4
	mov	r1, #0xa9
	mov	r2, #0x9e
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #19
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #9
	mov	r1, #9
	bl	__Func_924d4
	mov	r1, #0x97
	mov	r0, #0x1a
	lsl	r1, #16
	ldr	r2, =0x50c0000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x1a
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #0xaa
	mov	r0, #8
	lsl	r1, #16
	ldr	r2, =0x5210000
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #5
	bl	__Func_924d4
	mov	r1, #0xb9
	mov	r0, #0
	lsl	r1, #16
	ldr	r2, =0x5350000
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #0x11
	bl	__Func_924d4
	mov	r1, #0xa9
	mov	r2, #0xad
	mov	r0, #0x16
	lsl	r1, #16
	lsl	r2, #19
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0xa6
	mov	r1, #0
	ldr	r2, =0x5390000
	lsl	r0, #16
	mov	r3, #0
	bl	__Func_933f8
	bl	__Func_fe9c
	ldr	r3, [sp]
	mov	r0, r8
	strb	r5, [r3]
	str	r0, [r7, #0x38]
	str	r0, [r7, #0x3c]
	str	r0, [r7, #0x40]
	bl	OvlFunc_3c48
	mov	r1, #0xda
	mov	r2, #0x93
	mov	r0, #0x1b
	lsl	r1, #16
	lsl	r2, #19
	bl	__Func_923e4
	mov	r0, #0xd2
	ldr	r2, =0x4ac0000
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	bl	__Func_933f8
	b	.L382c

	.pool_aligned

.L382c:
	bl	__Func_fe9c
	mov	r1, r10
	str	r1, [r6, #0x18]
	str	r1, [r6, #0x1c]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_3e18
	bl	__Func_41d8
	mov	r0, #0xa
	bl	__Func_920a0
	mov	r0, #0x18
	bl	__Func_920a0
	mov	r0, #0x19
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xa
	bl	__Func_92054
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r1, r6
	add	r1, #0x23
	mov	r11, r2
	ldrb	r2, [r1]
	mov	r3, #0xfe
	mov	r0, #0x80
	mov	r10, r3
	lsl	r0, #9
	and	r3, r2
	strb	r3, [r1]
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	mov	r1, r11
	mov	r3, #0xd0
	ldrb	r2, [r1, #9]
	sub	r5, #0xd
	lsl	r3, #8
	strh	r3, [r6, #6]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r1, r6
	add	r1, #0x23
	mov	r11, r2
	ldrb	r2, [r1]
	mov	r3, r10
	and	r3, r2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r0, #0xb0
	mov	r3, r11
	ldrb	r2, [r3, #9]
	lsl	r0, #8
	mov	r9, r0
	mov	r3, r5
	and	r3, r2
	mov	r1, r9
	mov	r0, r11
	strb	r3, [r0, #9]
	strh	r1, [r6, #6]
	mov	r0, #0x18
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0x19
	bl	__Func_92054
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	mov	r11, r1
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, r10
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	strb	r3, [r1]
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	mov	r0, r11
	ldrb	r2, [r0, #9]
	mov	r3, r9
	strh	r3, [r6, #6]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0, #9]
	mov	r1, #5
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	mov	r11, r1
	bl	OvlFunc_3c48
	mov	r3, #0xc0
	lsl	r3, #14
	mov	r1, #0xd6
	mov	r2, #0x98
	str	r3, [r7, #0xc]
	lsl	r1, #16
	mov	r3, r8
	lsl	r2, #19
	str	r1, [r7, #8]
	str	r2, [r7, #0x10]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	str	r3, [r7, #0x40]
	mov	r0, r11
	ldrb	r3, [r0, #9]
	and	r5, r3
	mov	r3, #4
	orr	r5, r3
	strb	r5, [r0, #9]
	mov	r0, #0x1b
	bl	__Func_923e4
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_92adc
	mov	r0, #0xb3
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #0
	bl	__Func_118c0
	mov	r0, #1
	bl	__Func_118c0
	mov	r0, #2
	bl	__Func_118c0
	mov	r0, #3
	bl	__Func_118c0
	mov	r0, #4
	bl	__Func_118c0
	mov	r0, #5
	bl	__Func_118c0
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0xa0
	bl	__Func_30f8
	ldr	r0, =0x7fff
	mov	r1, #1
	bl	__Func_91200
	mov	r1, #2
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #0x50
	bl	__Func_91254
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x64
	bl	__Func_9163c
	ldr	r0, =OvlFunc_3e18
	bl	__Func_4278
	ldr	r3, [r6, #0x18]
	mov	r1, r11
	mov	r0, #0xb3
	str	r3, [r1, #0x18]
	lsl	r0, #1
	bl	__Func_79374
	mov	r0, #0
	bl	__Func_118a8
	mov	r0, #1
	bl	__Func_118a8
	mov	r0, #2
	bl	__Func_118a8
	mov	r0, #3
	bl	__Func_118a8
	mov	r0, #4
	bl	__Func_118a8
	mov	r0, #5
	bl	__Func_118a8
	bl	OvlFunc_40f0
	mov	r1, #0xa5
	ldr	r2, =0x4cd0000
	mov	r0, #9
	lsl	r1, #16
	bl	__Func_923e4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_924d4
	mov	r0, #9
	bl	__Func_92054
	mov	r2, #0xe0
	lsl	r2, #8
	mov	r8, r2
	mov	r7, r0
	mov	r3, r8
	strh	r3, [r7, #6]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	mov	r3, r7
	ldr	r5, =.L4ec8
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	strh	r0, [r3]
	add	r2, #0x66
	mov	r3, #1
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #9
	bl	__Func_9207c
	mov	r1, #0xa5
	ldr	r2, =0x4e60000
	mov	r0, #0x1a
	lsl	r1, #16
	bl	__Func_923e4
	mov	r1, #1
	mov	r0, #0x1a
	bl	__Func_924d4
	mov	r0, #0x1a
	bl	__Func_92054
	mov	r7, r0
	mov	r0, r8
	strh	r0, [r7, #6]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	mov	r3, r7
	add	r0, #0x3c
	add	r3, #0x64
	ldr	r1, .L3abc	@ 2
	strh	r0, [r3]
	add	r3, #2
	strh	r1, [r3]
	mov	r0, #0x1a
	mov	r1, r5
	bl	__Func_9207c
	mov	r1, #0x98
	ldr	r2, =0x5050000
	mov	r0, #0x16
	lsl	r1, #16
	bl	__Func_923e4
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_924d4
	mov	r0, #0x16
	bl	__Func_92054
	mov	r2, r8
	mov	r7, r0
	strh	r2, [r7, #6]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	mov	r3, r7
	b	.L3adc

	.align	2, 0
.L3abc:
	.word	2
	.pool

.L3adc:
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	strh	r0, [r3]
	add	r2, #0x66
	mov	r3, #3
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_9207c
	mov	r1, #0xb4
	ldr	r2, =0x51f0000
	lsl	r1, #16
	mov	r0, #8
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	mov	r3, r8
	mov	r7, r0
	strh	r3, [r7, #6]
	bl	__Func_4458
	mov	r1, #0x5a
	bl	_Func_b50
	mov	r3, r7
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	add	r2, #0x66
	strh	r0, [r3]
	mov	r3, #4
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #8
	bl	__Func_9207c
	mov	r1, #6
	mov	r0, #8
	bl	__Func_924d4
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r10
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r10
	and	r1, r3
	strb	r1, [r0]
	mov	r10, r1
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_45b8
	bl	__Func_41d8
	mov	r1, #0xb5
	lsl	r1, #16
	ldr	r2, =0x4f90000
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xb5
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	ldr	r2, =0x4f90000
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0x90
	mov	r0, #0x11
	lsl	r1, #16
	ldr	r2, =0x42e0000
	bl	__Func_923e4
	mov	r1, #0x8a
	ldr	r2, =0x4f60000
	lsl	r1, #17
	mov	r0, #0x12
	bl	__Func_923e4
	mov	r0, #0x3c
	bl	__Func_30f8
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x50
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_9202c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #1
	bl	__Func_91890
	bl	__Func_95268
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_31ac

.thumb_func_start OvlFunc_3c48
	push	{lr}
	mov	r0, #0x14
	bl	__Func_30f8
	mov	r0, #0xb3
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #0
	bl	__Func_118c0
	mov	r0, #1
	bl	__Func_118c0
	mov	r0, #2
	bl	__Func_118c0
	mov	r0, #3
	bl	__Func_118c0
	mov	r0, #4
	bl	__Func_118c0
	mov	r0, #5
	bl	__Func_118c0
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_30f8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x3c
	bl	__Func_30f8
	mov	r0, #0xb3
	lsl	r0, #1
	bl	__Func_79374
	mov	r0, #0
	bl	__Func_118a8
	mov	r0, #1
	bl	__Func_118a8
	mov	r0, #2
	bl	__Func_118a8
	mov	r0, #3
	bl	__Func_118a8
	mov	r0, #4
	bl	__Func_118a8
	mov	r0, #5
	bl	__Func_118a8
	pop	{r0}
	bx	r0
.func_end OvlFunc_3c48

.thumb_func_start OvlFunc_3ce4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r5, r0
	ldr	r1, [r5, #0x50]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r1
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.L3d78
	cmp	r3, #0x3c
	bne	.L3d22
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	ldrh	r2, [r6]
.L3d22:
	mov	r1, #0xa0
	lsl	r3, r2, #16
	lsl	r1, #14
	cmp	r3, r1
	bne	.L3d3e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_12330
	ldrh	r2, [r6]
.L3d3e:
	mov	r1, #0xf0
	lsl	r3, r2, #16
	lsl	r1, #13
	cmp	r3, r1
	bne	.L3d5a
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_12330
	ldrh	r2, [r6]
.L3d5a:
	mov	r1, #0xa0
	lsl	r3, r2, #16
	lsl	r1, #13
	cmp	r3, r1
	bne	.L3d74
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_12330
	ldrh	r2, [r6]
.L3d74:
	sub	r3, r2, #1
	strh	r3, [r6]
.L3d78:
	ldr	r2, [r7, #8]
	str	r2, [r5, #8]
	ldr	r3, [r7, #0x10]
	str	r2, [r5, #0x38]
	mov	r2, r8
	str	r3, [r5, #0x10]
	add	r2, #0x23
	mov	r3, #0xa
	strb	r3, [r2]
	ldr	r3, =iwram_1e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L3df2
	mov	r3, r7
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r0, r3, #1
	cmp	r0, #8
	bhi	.L3dea
	ldr	r2, =.L3dac
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3dac:
	.word	.L3dd0
	.word	.L3ddc
	.word	.L3ddc
	.word	.L3dd6
	.word	.L3dd0
	.word	.L3ddc
	.word	.L3ddc
	.word	.L3ddc
	.word	.L3ddc
.L3dd0:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xa3d
	b	.L3de0
.L3dd6:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0x51e
	b	.L3de0
.L3ddc:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xfffff852
.L3de0:
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
.L3dea:
	ldr	r3, [r5, #0x18]
	mov	r1, r8
	str	r3, [r1, #0x18]
	b	.L3df6
.L3df2:
	mov	r3, r8
	str	r2, [r3, #0x18]
.L3df6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3ce4

.thumb_func_start OvlFunc_3e18
	push	{lr}
	mov	r0, #0x1b
	bl	__Func_92054
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	ldr	r1, [r0, #0x50]
	cmp	r3, #0
	beq	.L3e36
	mov	r2, r1
	add	r2, #0x23
	mov	r3, #2
	b	.L3e3c
.L3e36:
	mov	r2, r1
	add	r2, #0x23
	mov	r3, #0x40
.L3e3c:
	strb	r3, [r2]
	pop	{r0}
	bx	r0
.func_end OvlFunc_3e18

.thumb_func_start OvlFunc_3e48
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	ldr	r0, =0x305
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3eca
	mov	r0, #8
	bl	__Func_920a0
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #6
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	blt	.L3e94
	mov	r0, #8
	mov	r1, #7
	bl	__Func_924d4
	b	.L3e9c
.L3e94:
	mov	r0, #8
	mov	r1, #8
	bl	__Func_924d4
.L3e9c:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xed2
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	ldr	r1, =.L4ec8
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #8
	mov	r1, #6
	bl	__Func_924d4
	b	.L3f96
.L3eca:
	mov	r0, #8
	bl	__Func_920a0
	mov	r3, #0x80
	lsl	r3, #9
	mov	r1, #0x80
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #5
	bl	__Func_92adc
	mov	r2, #6
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	blt	.L3ef6
	mov	r0, #8
	mov	r1, #7
	bl	__Func_924d4
	b	.L3efe
.L3ef6:
	mov	r0, #8
	mov	r1, #8
	bl	__Func_924d4
.L3efe:
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0xed1
	bl	__Func_92b94
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, #4
	mov	r0, #8
	bl	__Func_92560
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #6
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	blt	.L3f4c
	mov	r0, #8
	mov	r1, #7
	bl	__Func_924d4
	b	.L3f54
.L3f4c:
	mov	r0, #8
	mov	r1, #8
	bl	__Func_924d4
.L3f54:
	mov	r0, #2
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #8
	bl	__Func_92560
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	ldr	r1, =.L4ec8
	mov	r0, #8
	bl	__Func_9207c
	mov	r0, #8
	mov	r1, #6
	bl	__Func_924d4
	ldr	r0, =0x305
	bl	__Func_79358
.L3f96:
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3e48

.thumb_func_start OvlFunc_3fb0
	push	{lr}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0x16
	bl	__Func_920a0
	ldr	r0, =OvlFunc_45b8
	bl	__Func_4278
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0x14
	mov	r0, #0x16
	bl	__Func_92adc
	mov	r0, #0x16
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xf9
	mov	r2, #0x9b
	strb	r3, [r0]
	lsl	r2, #19
	lsl	r1, #16
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0xed3
	bl	__Func_92b94
	ldr	r0, =0x1016
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xac
	ldr	r2, =0x4fe0000
	lsl	r1, #16
	mov	r0, #0x16
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xa2
	mov	r3, #1
	ldr	r2, =0x5050000
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x1016
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x1016
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #5
	bl	__Func_92adc
	mov	r0, #0x16
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0x16
	mov	r1, #0xa5
	ldr	r2, =0x514
	bl	__Func_921c4
	mov	r2, #0xb3
	mov	r0, #0x16
	mov	r1, #0xc3
	lsl	r2, #3
	bl	__Func_921c4
	ldr	r0, =0x842
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_3fb0

.thumb_func_start OvlFunc_40f0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r2, #6
	mov	r3, #3
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r9, r2
	mov	r10, r3
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0xb
	mov	r3, #0x49
	bl	__Func_10424
	mov	r2, #0xa
	str	r2, [sp, #4]
	mov	r6, #0xe
	mov	r8, r2
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0x22
	mov	r3, #0x44
	str	r6, [sp]
	bl	__Func_10424
	mov	r5, #7
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0x40
	mov	r3, #0x44
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, r9
	mov	r2, r10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #0x5f
	mov	r2, #0xb
	mov	r3, #0x49
	bl	__Func_10424
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x5e
	mov	r2, #0x22
	mov	r3, #0x44
	str	r6, [sp]
	bl	__Func_10424
	mov	r2, #8
	str	r2, [sp]
	mov	r8, r2
	mov	r0, #0x36
	mov	r1, #0x5e
	mov	r2, #0x40
	mov	r3, #0x44
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r5, #1
	mov	r0, #0x48
	mov	r1, #0x4b
	mov	r2, #0x48
	mov	r3, #0x4c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x48
	mov	r1, #0x4b
	mov	r2, #0x4a
	mov	r3, #0x4c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, r9
	mov	r3, #0x4b
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #7
	mov	r1, #0x4b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r2, r8
	mov	r3, #0x47
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #3
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0x48
	str	r3, [sp, #4]
	mov	r6, #9
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r5, #0x49
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0xb
	mov	r1, #0x42
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x42
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r2, r9
	mov	r3, #0x4a
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	bl	__Func_fe9c
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_40f0

.thumb_func_start OvlFunc_4234
	push	{lr}
	bl	__Func_916b0
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	ldr	r0, =0x87c
	bl	__Func_79358
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_91eb0
	mov	r0, #0x90
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4234

.thumb_func_start OvlFunc_4278
	push	{lr}
	bl	__Func_916b0
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	ldr	r0, =0x87f
	bl	__Func_79358
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_91eb0
	mov	r0, #0x90
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4278

.thumb_func_start OvlFunc_42bc
	push	{r5, lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L42d4
	mov	r1, #7
	bl	__Func_c598
	b	.L42dc
.L42d4:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_c598
.L42dc:
	ldr	r3, =.L57fc
	ldr	r1, [r3]
	ldr	r2, =iwram_1e40
	lsl	r1, #3
	add	r1, #0x10
	ldr	r0, [r2]
	bl	_Func_b50
	cmp	r0, #0
	bne	.L42f6
	mov	r0, r5
	bl	OvlFunc_441c
.L42f6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_42bc

.thumb_func_start OvlFunc_4304
	push	{r5, r6, lr}
	ldr	r5, =iwram_1e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L4326
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_b50
	mov	r1, r0
	mov	r0, r6
	bl	__Func_c598
.L4326:
	ldr	r3, =.L57fc
	ldr	r1, [r3]
	lsl	r1, #3
	add	r1, #0x10
	ldr	r0, [r5]
	bl	_Func_b50
	cmp	r0, #0
	bne	.L433e
	mov	r0, r6
	bl	OvlFunc_441c
.L433e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4304

.thumb_func_start OvlFunc_434c
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =iwram_1e40
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L436e
	ldr	r0, [r0]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_b50
	mov	r1, r0
	mov	r0, r5
	bl	__Func_c598
.L436e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_434c

.thumb_func_start OvlFunc_4378
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L4398
	mov	r0, r5
	bl	__Func_c0f4
	b	.L43c2
.L4398:
	lsl	r0, #10
	bl	__Func_2322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L43c2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4378

.thumb_func_start OvlFunc_43c8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L43e8
	mov	r0, r5
	bl	__Func_c0f4
	b	.L4414
.L43e8:
	lsl	r0, #10
	bl	__Func_2322
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L4414:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_43c8

.thumb_func_start OvlFunc_441c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1f30
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, #0x98
	sub	sp, #8
	mov	r11, r3
	bl	__Func_f9080
	mov	r1, #0x3f
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L4442:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L44f0
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L4478	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L44f0
	b	.L4480

	.align	2, 0
.L4478:
	.word	0
	.pool

.L4480:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_ba30
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_3f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L44e8	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L44f0

	.align	2, 0
.L44e8:
	.word	0xfffffc00
	.pool

.L44f0:
	add	r7, #1
	cmp	r7, #1
	ble	.L4442
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_43c8
	str	r3, [r2, #0x6c]
	ldr	r3, [r6, #0x50]
	ldr	r4, [r2, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r1, #0xc
	and	r1, r3
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	mov	r3, r10
	ldr	r0, [r3, #4]
	ldr	r3, [r6, #0x50]
	ldr	r4, [r0, #0x50]
	ldrb	r1, [r3, #9]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r4, #9]
	and	r2, r1
	orr	r2, r3
	ldr	r3, =OvlFunc_4378
	str	r3, [r0, #0x6c]
	add	r0, #0x23
	mov	r3, #2
	strb	r2, [r4, #9]
	strb	r3, [r0]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_441c

.thumb_func_start OvlFunc_4550
	push	{lr}
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_96fb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_4550

.thumb_func_start OvlFunc_4560
	push	{lr}
	bl	__Func_97194
	pop	{r0}
	bx	r0
.func_end OvlFunc_456c

.thumb_func_start OvlFunc_456c
	push	{lr}
	mov	r0, #0x20
	bl	__Func_92054
	bl	OvlFunc_4304
	mov	r0, #0x21
	bl	__Func_92054
	bl	OvlFunc_4304
	mov	r0, #0x1e
	bl	__Func_92054
	bl	OvlFunc_4304
	ldr	r3, =.L57f8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L459e
	mov	r0, #0x1d
	bl	__Func_92054
	bl	OvlFunc_4304
.L459e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_456c

.thumb_func_start OvlFunc_45a8
	push	{lr}
	mov	r0, #0x13
	bl	__Func_92054
	bl	OvlFunc_434c
	pop	{r0}
	bx	r0
.func_end OvlFunc_45a8

.thumb_func_start OvlFunc_45b8
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r6, [r0, #0x50]
	mov	r0, #0x16
	bl	__Func_92054
	ldr	r0, [r0, #0x50]
	ldrb	r3, [r6, #9]
	mov	r5, #0xd
	ldrb	r1, [r0, #9]
	neg	r5, r5
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r5
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #9]
	mov	r0, #8
	bl	__Func_92054
	ldrb	r2, [r6, #9]
	ldr	r1, [r0, #0x50]
	mov	r3, #0xc
	and	r3, r2
	ldrb	r2, [r1, #9]
	and	r5, r2
	orr	r5, r3
	strb	r5, [r1, #9]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_45b8

.thumb_func_start OvlFunc_45fc
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0xee4
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_45fc

.thumb_func_start OvlFunc_4618
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1120
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4618

	.section .data

.L48bc:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x48bc, (0x48c0-0x48bc)
.L48c0:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x48c0, (0x4934-0x48c0)
.L4934:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4934, (0x4984-0x4934)
.L4984:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4984, (0x49f4-0x4984)
.L49f4:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x49f4, (0x4a00-0x49f4)
.L4a00:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4a00, (0x4a3c-0x4a00)
.L4a3c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4a3c, (0x4a78-0x4a3c)
.L4a78:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4a78, (0x4ab4-0x4a78)
.L4ab4:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4ab4, (0x4b28-0x4ab4)
.L4b28:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4b28, (0x4b9c-0x4b28)
.L4b9c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4b9c, (0x4c0c-0x4b9c)
.L4c0c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4c0c, (0x4c5c-0x4c0c)
.L4c5c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4c5c, (0x4ca8-0x4c5c)
.L4ca8:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4ca8, (0x4d1c-0x4ca8)
.L4d1c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4d1c, (0x4d6c-0x4d1c)
.L4d6c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4d6c, (0x4e04-0x4d6c)
.L4e04:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4e04, (0x4e30-0x4e04)
.L4e30:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4e30, (0x4e5c-0x4e30)
.L4e5c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4e5c, (0x4e88-0x4e5c)
.L4e88:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4e88, (0x4eb4-0x4e88)
.L4eb4:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4eb4, (0x4ec8-0x4eb4)
.L4ec8:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4ec8, (0x4edc-0x4ec8)
.L4edc:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4edc, (0x50e4-0x4edc)
.L50e4:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x50e4, (0x527c-0x50e4)
.L527c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x527c, (0x52b8-0x527c)
.L52b8:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x52b8, (0x54b0-0x52b8)
.L54b0:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x54b0, (0x5558-0x54b0)
.L5558:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x5558, (0x5774-0x5558)
.L5774:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x5774, (0x578a-0x5774)
.L578a:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x578a, (0x57a0-0x578a)
.L57a0:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x57a0, (0x57b6-0x57a0)
.L57b6:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x57b6, (0x57cc-0x57b6)
.L57cc:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x57cc, (0x57e2-0x57cc)
.L57e2:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x57e2

	.section .bss

	.lcomm	.L57f8, 4
	.lcomm	.L57fc, 4
