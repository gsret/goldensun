	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L2afc
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L2bec
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L2c14
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	ldr	r0, =.L2d34
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_54
	push	{lr}
	bl	OvlFunc_25b0
	cmp	r0, #0
	beq	.Lb8
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lf0
	bl	__Func_916b0
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	ldr	r0, =0x80a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L9c
	bl	OvlFunc_9f4
.L9c:
	bl	OvlFunc_25b0
	cmp	r0, #0
	beq	.Lb2
	ldr	r0, =0x811
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lb2
	bl	OvlFunc_1be8
.Lb2:
	bl	__Func_91750
	b	.Lf0
.Lb8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lf0
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	bl	__Func_91750
.Lf0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_54

.thumb_func_start OvlFunc_108
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L142
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	bl	__Func_91750
.L142:
	pop	{r0}
	bx	r0
.func_end OvlFunc_108

.thumb_func_start OvlFunc_150
	push	{lr}
	bl	OvlFunc_25b0
	cmp	r0, #0
	beq	.L194
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d6
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x201
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	bl	__Func_91750
	b	.L1d6
.L194:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d6
	bl	__Func_916b0
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	ldr	r0, =0x80a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d2
	bl	OvlFunc_9f4
.L1d2:
	bl	__Func_91750
.L1d6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_150

.thumb_func_start OvlFunc_1ec
	push	{lr}
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	bne	.L21a
	mov	r1, #1
	ldr	r0, =0x202db1
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	ldr	r0, =0x202
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x201
	bl	__Func_79374
.L21a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ec

.thumb_func_start OvlFunc_22c
	mov	r3, #0xa0
	mov	r2, #0
	lsl	r3, #19
	strh	r2, [r3]
	bx	lr
.func_end OvlFunc_22c

.thumb_func_start OvlFunc_238
	push	{lr}
	ldr	r0, =0x80b
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L25a
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__Func_10424
.L25a:
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L278
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__Func_10424
.L278:
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L296
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__Func_10424
.L296:
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2b4
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__Func_10424
.L2b4:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_238

.thumb_func_start OvlFunc_2cc
	push	{lr}
	ldr	r0, =0x826
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2ee
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__Func_10424
.L2ee:
	ldr	r0, =0x827
	bl	__Func_79338
	cmp	r0, #0
	beq	.L30c
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__Func_10424
.L30c:
	ldr	r0, =0x828
	bl	__Func_79338
	cmp	r0, #0
	beq	.L32a
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__Func_10424
.L32a:
	ldr	r0, =0x829
	bl	__Func_79338
	cmp	r0, #0
	beq	.L348
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__Func_10424
.L348:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_2cc

.thumb_func_start OvlFunc_360
	push	{lr}
	ldr	r0, =0x80b
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L382
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__Func_10424
.L382:
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3a0
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1e
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__Func_10424
.L3a0:
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3be
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1f
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__Func_10424
.L3be:
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3dc
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1f
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__Func_10424
.L3dc:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_360

.thumb_func_start OvlFunc_3f4
	push	{lr}
	ldr	r0, =0x826
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L416
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__Func_10424
.L416:
	ldr	r0, =0x827
	bl	__Func_79338
	cmp	r0, #0
	beq	.L434
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1e
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__Func_10424
.L434:
	ldr	r0, =0x828
	bl	__Func_79338
	cmp	r0, #0
	beq	.L452
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1f
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__Func_10424
.L452:
	ldr	r0, =0x829
	bl	__Func_79338
	cmp	r0, #0
	beq	.L470
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1f
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__Func_10424
.L470:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_3f4

.thumb_func_start OvlFunc_488
	push	{lr}
	ldr	r0, =0x814
	bl	__Func_79338
	cmp	r0, #0
	beq	.L498
	bl	OvlFunc_54
.L498:
	ldr     r0, =0x809
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4a4
	b	.L9da
.L4a4:
	bl	__Func_916b0
	ldr	r0, =0xfe3
	bl	__Func_92b94
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x90
	mov	r2, #0xe8
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r1, #0
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x15
	bl	__Func_f9080
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L502
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__Func_923e4
.L502:
	mov	r0, #0x10
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__Func_92064
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0xce
	mov	r0, #0x10
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #4
	mov	r2, #0x3c
	bl	__Func_92560
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_25fc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L550
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L550:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L564
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #5
	bl	__Func_923e4
.L564:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x8c
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_9218c
	mov	r1, #0x94
	mov	r2, #0xf8
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xd5
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r0, #0x10
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0x90
	mov	r2, #0xb0
	lsl	r1, #1
	mov	r0, #0x10
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0x10
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_25fc
	mov	r2, #0x28
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x90
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_25fc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xf0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #5
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =0x2005
	mov	r1, #0xa
	bl	OvlFunc_25fc
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x10
	bl	__Func_93874
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
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
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_25fc
	mov	r2, #0x28
	mov	r0, #5
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #5
	mov	r1, #0x3c
	bl	OvlFunc_25fc
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x10
	mov	r1, #0xa
	bl	OvlFunc_25fc
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x3c
	mov	r0, #5
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_25fc
	mov	r1, #3
	mov	r0, #0x10
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
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r2, #0x50
	mov	r0, #0x10
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x90
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x10
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L850
	ldr	r0, =0xff0
	bl	__Func_92b94
	b	.L860

	.pool_aligned

.L850:
	ldr	r0, =0xff1
	bl	__Func_92b94
	mov	r0, #0x10
	ldr	r1, =0x107
	mov	r2, #0x14
	bl	__Func_937b8
.L860:
	mov	r0, #0x10
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_92560
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
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #6
	mov	r0, #0x10
	bl	OvlFunc_25fc
	ldr	r0, =0xff2
	bl	__Func_92b94
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #4
	bl	__Func_92548
	ldr	r0, =0x2005
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_25fc
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x14
	bl	__Func_92560
	mov	r1, #0x82
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #0x1e
	bl	OvlFunc_25fc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L958
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x10
	bl	__Func_92128
.L958:
	mov	r0, #0x10
	bl	__Func_923c4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L988
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L988:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #5
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L9b8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_92128
.L9b8:
	mov	r0, #5
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__Func_923e4
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	ldr	r0, =0x809
	bl	__Func_79358
	bl	__Func_91750
.L9da:
	pop	{r0}
	bx	r0
.func_end OvlFunc_488

.thumb_func_start OvlFunc_9f4
	push	{r5, r6, lr}
	ldr	r0, =0xff6
	bl	__Func_92b94
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xf4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.La32
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__Func_923e4
.La32:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xec
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0x10
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xb5
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	ldr	r0, =0x23f0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x78
	bl	__Func_9163c
	ldr	r0, =0x1010
	mov	r1, #0x50
	bl	OvlFunc_25fc
	mov	r0, #0xf6
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r5, =0x4010
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r2, #0x3c
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lb08
	ldr	r0, =0xffa
	bl	__Func_92b94
	b	.Lb0e
.Lb08:
	ldr	r0, =0xffb
	bl	__Func_92b94
.Lb0e:
	ldr	r5, =0x4010
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0xa
	mov	r0, r5
	bl	OvlFunc_25fc
	ldr	r6, =0xffc
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0x10
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x10
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0x10
	mov	r1, #4
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lb7e
	add	r0, r6, #1
	bl	__Func_92b94
	ldr	r0, =0x896
	bl	__Func_79358
	b	.Lb84
.Lb7e:
	add	r0, r6, #2
	bl	__Func_92b94
.Lb84:
	ldr	r0, =0x4010
	mov	r1, #4
	bl	OvlFunc_25fc
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0xf3
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x83
	bl	__Func_921c4
	mov	r1, #0x90
	mov	r0, #0x10
	lsl	r1, #2
	mov	r2, #0x78
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #2
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	ldr	r0, =0x80a
	bl	__Func_79358
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_9f4

.thumb_func_start OvlFunc_c00
	push	{r5, lr}
	mov	r0, #0x10
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x809
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc16
	b	.Ld80
.Lc16:
	ldr	r0, =0x814
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc26
	bl	OvlFunc_108
	b	.Ld80
.Lc26:
	ldr	r0, =0x819
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc32
	b	.Ld80
.Lc32:
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	ldr	r0, =0x1000
	bl	__Func_92b94
	mov	r0, #0x81
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc5a
	ldr	r0, =0x80a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc84
.Lc5a:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lc6e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__Func_923e4
.Lc6e:
	mov	r0, #4
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	b	.Lcbc
.Lc84:
	mov	r0, #0x81
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc9a
	mov	r2, #0xaa
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	ble	.Lcbc
.Lc9a:
	mov	r1, #0xc4
	mov	r2, #0xa8
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x10
	bl	__Func_923e4
	mov	r0, #4
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
.Lcbc:
	mov	r0, #0x81
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lcd2
	mov	r2, #0xaa
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	ble	.Lce0
.Lcd2:
	mov	r1, #0x90
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_921c4
	b	.Lce6
.Lce0:
	ldr	r0, =0x80a
	bl	__Func_79338
.Lce6:
	mov	r1, #0x90
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x81
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld32
	ldr	r0, =0x80a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld70
.Ld32:
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Ld52
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x10
	bl	__Func_92128
.Ld52:
	mov	r0, #0x10
	bl	__Func_923c4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0x90
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_921c4
	b	.Ld7c
.Ld70:
	mov	r1, #0x90
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_921c4
.Ld7c:
	bl	__Func_91750
.Ld80:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c00

.thumb_func_start OvlFunc_d9c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_4458
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Ldae
	b	.Leaa
.Ldae:
	ldr	r6, =.L2de4
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.Le0c
	cmp	r5, #2
	bgt	.Ldc4
	cmp	r5, #0
	beq	.Ldd2
	cmp	r5, #1
	beq	.Ldee
	b	.Le8c
.Ldc4:
	cmp	r5, #4
	beq	.Le4c
	cmp	r5, #4
	blt	.Le2c
	cmp	r5, #0x50
	beq	.Le78
	b	.Le8c
.Ldd2:
	mov	r0, #0xbb
	bl	__Func_f9080
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x21
	bl	__Func_10424
	b	.Le8c
.Ldee:
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x21
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x22
	b	.Le70
.Le0c:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x23
	b	.Le70
.Le2c:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x23
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x24
	b	.Le70
.Le4c:
	ldr	r2, =.L2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x25
.Le70:
	str	r5, [sp]
	bl	__Func_10424
	b	.Le8c
.Le78:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x31
	mov	r2, #0x1e
	mov	r3, #0x21
	bl	__Func_10424
.Le8c:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x5a
	cmp	r5, r3
	bls	.Leaa
	ldr	r3, .Lec8	@ 0
	strh	r3, [r6]
.Leaa:
	ldr	r5, =.L2de8
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Leec
	cmp	r3, #2
	bne	.Led4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	b	.Lee6

	.align	2, 0
.Lec8:
	.word	0
	.pool

.Led4:
	cmp	r3, #1
	bne	.Lee6
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
.Lee6:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
.Leec:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d9c

.thumb_func_start OvlFunc_ef8
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_4458
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lf0a
	b	.L1006
.Lf0a:
	ldr	r6, =.L2ddc
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.Lf68
	cmp	r5, #2
	bgt	.Lf20
	cmp	r5, #0
	beq	.Lf2e
	cmp	r5, #1
	beq	.Lf4a
	b	.Lfe8
.Lf20:
	cmp	r5, #4
	beq	.Lfa8
	cmp	r5, #4
	blt	.Lf88
	cmp	r5, #0x5a
	beq	.Lfd4
	b	.Lfe8
.Lf2e:
	mov	r0, #0xbb
	bl	__Func_f9080
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x21
	bl	__Func_10424
	b	.Lfe8
.Lf4a:
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x21
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x22
	b	.Lfcc
.Lf68:
	mov	r5, #1
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x22
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x23
	b	.Lfcc
.Lf88:
	mov	r5, #1
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x23
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x24
	b	.Lfcc
.Lfa8:
	ldr	r2, =.L2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x25
.Lfcc:
	str	r5, [sp]
	bl	__Func_10424
	b	.Lfe8
.Lfd4:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #0x2a
	mov	r3, #0x21
	bl	__Func_10424
.Lfe8:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x64
	cmp	r5, r3
	bls	.L1006
	ldr	r3, .L1010	@ 0
	strh	r3, [r6]
.L1006:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.L1010:
	.word	0
.func_end OvlFunc_ef8

.thumb_func_start OvlFunc_101c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_4458
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.L102e
	b	.L112a
.L102e:
	ldr	r6, =.L2de0
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.L108c
	cmp	r5, #2
	bgt	.L1044
	cmp	r5, #0
	beq	.L1052
	cmp	r5, #1
	beq	.L106e
	b	.L110c
.L1044:
	cmp	r5, #4
	beq	.L10cc
	cmp	r5, #4
	blt	.L10ac
	cmp	r5, #0x5f
	beq	.L10f8
	b	.L110c
.L1052:
	mov	r0, #0xbb
	bl	__Func_f9080
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x24
	bl	__Func_10424
	b	.L110c
.L106e:
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x25
	b	.L10f0
.L108c:
	mov	r5, #1
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x25
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x26
	b	.L10f0
.L10ac:
	mov	r5, #1
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x27
	b	.L10f0
.L10cc:
	ldr	r2, =.L2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x28
.L10f0:
	str	r5, [sp]
	bl	__Func_10424
	b	.L110c
.L10f8:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x31
	mov	r2, #0x1f
	mov	r3, #0x24
	bl	__Func_10424
.L110c:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x69
	cmp	r5, r3
	bls	.L112a
	ldr	r3, .L1134	@ 0
	strh	r3, [r6]
.L112a:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.L1134:
	.word	0
.func_end OvlFunc_101c

.thumb_func_start OvlFunc_1140
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_4458
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.L1152
	b	.L124e
.L1152:
	ldr	r6, =.L2dec
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.L11b0
	cmp	r5, #2
	bgt	.L1168
	cmp	r5, #0
	beq	.L1176
	cmp	r5, #1
	beq	.L1192
	b	.L1230
.L1168:
	cmp	r5, #4
	beq	.L11f0
	cmp	r5, #4
	blt	.L11d0
	cmp	r5, #0x55
	beq	.L121c
	b	.L1230
.L1176:
	mov	r0, #0xbb
	bl	__Func_f9080
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x24
	bl	__Func_10424
	b	.L1230
.L1192:
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x25
	b	.L1214
.L11b0:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x25
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x26
	b	.L1214
.L11d0:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x27
	b	.L1214
.L11f0:
	ldr	r2, =.L2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x28
.L1214:
	str	r5, [sp]
	bl	__Func_10424
	b	.L1230
.L121c:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x31
	mov	r2, #0x29
	mov	r3, #0x24
	bl	__Func_10424
.L1230:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x5f
	cmp	r5, r3
	bls	.L124e
	ldr	r3, .L1258	@ 0
	strh	r3, [r6]
.L124e:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.L1258:
	.word	0
	.pool
.func_end OvlFunc_1140

.thumb_func_start OvlFunc_1264
	push	{r5, r6, lr}
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	sub	sp, #8
	bl	__Func_933f8
	mov	r6, #8
	mov	r5, #3
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x20
	mov	r3, #0x28
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x21
	mov	r3, #0x27
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x24
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x29
	mov	r2, #0x20
	mov	r3, #0x29
	str	r6, [sp]
	bl	__Func_10424
	mov	r1, #1
	mov	r2, #0x9e
	mov	r3, #0
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r2, #0xf0
	mov	r0, #0x10
	ldr	r1, =0x23e0000
	lsl	r2, #15
	bl	__Func_923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_91200
	mov	r0, #0x14
	bl	__Func_91254
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xab
	bl	__Func_f9080
	mov	r1, #1
	ldr	r0, =0x10005
	bl	__Func_91200
	mov	r0, #8
	bl	__Func_91254
	mov	r0, #0x20
	bl	__Func_9163c
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_91200
	mov	r0, #0x18
	bl	__Func_91254
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1264

.thumb_func_start OvlFunc_1380
	push	{r5, lr}
	bl	__Func_916b0
	bl	OvlFunc_1264
	ldr	r0, =0x1018
	bl	__Func_92b94
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	bl	__Func_92560
	mov	r1, #1
	mov	r2, #0xae
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x23e0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x8010
	mov	r1, #0x14
	bl	OvlFunc_25fc
	mov	r5, #0
.L13d6:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #0xc
	bl	__Func_9163c
	cmp	r5, #4
	bne	.L13d6
	mov	r5, #0
.L13fe:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #8
	bl	__Func_9163c
	cmp	r5, #6
	bne	.L13fe
	mov	r5, #0
.L1426:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #6
	bl	__Func_9163c
	cmp	r5, #8
	bne	.L1426
	mov	r5, #0
.L144e:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #4
	bl	__Func_9163c
	cmp	r5, #0xa
	bne	.L144e
	mov	r5, #0
.L1476:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #2
	bl	__Func_9163c
	cmp	r5, #0xc
	bne	.L1476
	bl	OvlFunc_238
	mov	r0, #6
	bl	__Func_9163c
	ldr	r0, =0x8010
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x90
	mov	r2, #0x8c
	mov	r0, #0x10
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_921c4
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	ldr	r0, =0x813
	bl	__Func_79358
	mov	r0, #3
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1380

.thumb_func_start OvlFunc_1510
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	bl	OvlFunc_1264
	ldr	r2, =0
	ldr	r3, =.L2de4
	strh	r2, [r3]
	ldr	r3, =.L2ddc
	strh	r2, [r3]
	ldr	r3, =.L2de0
	strh	r2, [r3]
	ldr	r3, =.L2dec
	ldr	r0, =0x1001
	strh	r2, [r3]
	bl	__Func_92b94
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	bl	__Func_92560
	mov	r1, #1
	b	.L1574

	.pool_aligned

.L1574:
	mov	r2, #0xae
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x23e0000
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r0, =0x8010
	mov	r1, #0x14
	bl	OvlFunc_25fc
	mov	r5, #0
.L1596:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #0xc
	bl	__Func_9163c
	cmp	r5, #4
	bne	.L1596
	mov	r1, #6
	ldr	r0, =0x8010
	bl	OvlFunc_25fc
	ldr	r5, =.L2de4
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.L2ddc
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.L2de0
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.L2dec
	bl	__Func_4458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	ldr	r2, =.L2de8
	add	r3, #0x14
	strh	r3, [r5]
	mov	r1, #0xc8
	mov	r3, #0
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_d9c
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_ef8
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_101c
	bl	__Func_41d8
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_1140
	lsl	r1, #4
	bl	__Func_41d8
	mov	r5, #0
.L163c:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #5
	bl	__Func_9163c
	cmp	r5, #6
	bne	.L163c
	mov	r5, #0
.L1664:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #4
	bl	__Func_9163c
	cmp	r5, #8
	bne	.L1664
	mov	r5, #0
.L168c:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #3
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #3
	bl	__Func_9163c
	cmp	r5, #0xa
	bne	.L168c
	mov	r5, #0
.L16b4:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_238
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_360
	mov	r0, #2
	bl	__Func_9163c
	cmp	r5, #0xc
	bne	.L16b4
	mov	r3, #4
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0xa
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x22
	bl	__Func_10424
	mov	r2, #0x28
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_92560
	ldr	r0, =0x8010
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0x90
	mov	r2, #0x8c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0x10
	bl	__Func_921c4
	ldr	r0, =OvlFunc_d9c
	bl	__Func_4278
	ldr	r0, =OvlFunc_ef8
	bl	__Func_4278
	ldr	r0, =OvlFunc_101c
	bl	__Func_4278
	ldr	r0, =OvlFunc_1140
	bl	__Func_4278
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #4
	bl	__Func_91e9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1510

.thumb_func_start OvlFunc_1790
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_916b0
	ldr	r0, =0x80b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L17c8
	ldr	r0, =0x826
	bl	__Func_79338
	cmp	r0, #0
	beq	.L17c8
	ldr	r0, =0x826
	bl	__Func_79374
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__Func_10424
	b	.L17e2
.L17c8:
	ldr	r0, =0x80b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L17e2
	ldr	r0, =0x826
	bl	__Func_79338
	cmp	r0, #0
	bne	.L17e2
	ldr	r0, =0x826
	bl	__Func_79358
.L17e2:
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1812
	ldr	r0, =0x827
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1812
	ldr	r0, =0x827
	bl	__Func_79374
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__Func_10424
	b	.L182c
.L1812:
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L182c
	ldr	r0, =0x827
	bl	__Func_79338
	cmp	r0, #0
	bne	.L182c
	ldr	r0, =0x827
	bl	__Func_79358
.L182c:
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L185c
	ldr	r0, =0x828
	bl	__Func_79338
	cmp	r0, #0
	beq	.L185c
	ldr	r0, =0x828
	bl	__Func_79374
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__Func_10424
	b	.L1876
.L185c:
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1876
	ldr	r0, =0x828
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1876
	ldr	r0, =0x828
	bl	__Func_79358
.L1876:
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18a6
	ldr	r0, =0x829
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18a6
	ldr	r0, =0x829
	bl	__Func_79374
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__Func_10424
	b	.L18c0
.L18a6:
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L18c0
	ldr	r0, =0x829
	bl	__Func_79338
	cmp	r0, #0
	bne	.L18c0
	ldr	r0, =0x829
	bl	__Func_79358
.L18c0:
	bl	OvlFunc_1264
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	bl	__Func_92560
	mov	r1, #1
	mov	r2, #0xae
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r5, #0
.L18f6:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_2cc
	mov	r0, #0xc
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_3f4
	mov	r0, #0xc
	bl	__Func_9163c
	cmp	r5, #4
	bne	.L18f6
	mov	r5, #0
.L191e:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_2cc
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_3f4
	mov	r0, #8
	bl	__Func_9163c
	cmp	r5, #6
	bne	.L191e
	mov	r5, #0
.L1946:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_2cc
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_3f4
	mov	r0, #6
	bl	__Func_9163c
	cmp	r5, #8
	bne	.L1946
	mov	r5, #0
.L196e:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_2cc
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_3f4
	mov	r0, #4
	bl	__Func_9163c
	cmp	r5, #0xa
	bne	.L196e
	mov	r5, #0
.L1996:
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_2cc
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0xf6
	bl	__Func_f9080
	add	r5, #1
	bl	OvlFunc_3f4
	mov	r0, #2
	bl	__Func_9163c
	cmp	r5, #0xc
	bne	.L1996
	mov	r0, #0xf6
	bl	__Func_f9080
	bl	OvlFunc_2cc
	mov	r0, #6
	bl	__Func_9163c
	ldr	r0, =0x822
	bl	__Func_79338
	cmp	r0, #0
	bne	.L19f6
	ldr	r5, =0x8010
	ldr	r0, =0x1025
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_25fc
.L19f6:
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #5
	bl	__Func_91e9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1790

.thumb_func_start OvlFunc_1a58
	push	{lr}
	mov	r0, #0x81
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a68
	b	.L1bd2
.L1a68:
	bl	OvlFunc_25b0
	cmp	r0, #0
	bne	.L1a72
	b	.L1bd2
.L1a72:
	bl	__Func_916b0
	mov	r2, #0x93
	mov	r0, #0x10
	ldr	r1, =0x2410000
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #1
	bl	__Func_92adc
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	ldr	r0, =0x23e0000
	bl	__Func_933f8
	ldr	r0, =0x1027
	bl	__Func_92b94
	mov	r1, #0x90
	mov	r2, #0xe8
	mov	r0, #0
	lsl	r1, #2
	bl	__Func_921c4
	mov	r1, #0
	mov	r0, #0
	bl	__Func_924d4
	bl	__Func_93530
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0x98
	mov	r0, #0x10
	bl	__Func_921c4
	mov	r0, #6
	bl	__Func_9163c
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_92560
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #0x10
	bl	__Func_921c4
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x4010
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x90
	mov	r2, #0xd0
	lsl	r1, #2
	mov	r0, #0x10
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_92548
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1bb6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x10
	bl	__Func_92128
.L1bb6:
	mov	r0, #0x10
	bl	__Func_923c4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x81
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
.L1bd2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a58

.thumb_func_start OvlFunc_1be8
	push	{lr}
	mov	r0, #0x15
	bl	__Func_f9080
	mov	r1, #0xbc
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0xbc
	mov	r2, #0xb8
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xc4
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_924d4
	ldr	r0, =0x102b
	bl	__Func_92b94
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0xbc
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_921c4
	mov	r1, #0xc9
	lsl	r1, #19
	mov	r2, r1
	mov	r0, #0x10
	bl	__Func_923e4
	mov	r0, #4
	bl	__Func_9163c
	ldr	r0, =0x811
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1be8

.thumb_func_start OvlFunc_1ca8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x811
	sub	sp, #8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1cbc
	b	.L20fc
.L1cbc:
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0x94
	mov	r3, #1
	ldr	r0, =0x11f0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	mov	r1, #0x90
	mov	r2, #0x78
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x1e
	bl	__Func_92560
	mov	r1, #0x90
	mov	r2, #0xf0
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x8a
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x88
	bl	__Func_921c4
	mov	r1, #0x84
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x88
	bl	__Func_9218c
	mov	r1, #0x9c
	mov	r2, #0x88
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r0, =0x819
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d72
	mov	r0, #0xdc
	bl	__Func_f9080
.L1d72:
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x819
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1d84
	b	.L1eb2
.L1d84:
	mov	r2, #3
	str	r2, [sp, #4]
	mov	r5, #2
	mov	r8, r2
	mov	r0, #0x24
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__Func_10424
	mov	r6, #1
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__Func_10424
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x27
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x27
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r3, #0x28
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x28
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x29
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x29
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x2a
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	bl	__Func_10424
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #9
	bl	__Func_118a8
	mov	r0, #0xa
	bl	__Func_118a8
	ldr	r0, =0x819
	bl	__Func_79358
.L1eb2:
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92848
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_924d4
	ldr	r5, =0x8010
	mov	r1, #0
	mov	r0, #0
	bl	__Func_924d4
	ldr	r0, =0x102e
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	ldr	r1, =0x1333
	mov	r6, r0
	ldr	r0, =0x9999
	bl	__Func_933d4
	mov	r1, #1
	mov	r2, #0xe4
	mov	r3, #1
	ldr	r0, =0x11f0000
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_933f8
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0x78
	mov	r0, #0
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_92064
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r6
	add	r3, #0x55
	mov	r7, #0
	strb	r7, [r3]
	mov	r0, #0xc9
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_92950
	ldr	r7, [r6, #0x50]
	mov	r3, r7
	mov	r5, #0
	add	r3, #0x26
	strb	r5, [r3]
.L1f88:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x3333
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x78
	bne	.L1f88
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r5, #0
.L1fa4:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0x18]
	ldr	r2, =0xfffffc00
	add	r3, r2
	str	r3, [r7, #0x18]
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x3c
	bne	.L1fa4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_25fc
	mov	r1, #0x90
	mov	r2, #0x78
	mov	r0, #0x10
	lsl	r1, #1
	bl	__Func_921c4
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	mov	r0, #0x10
	bl	__Func_92064
	mov	r0, #0x10
	bl	__Func_92054
	mov	r6, r0
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #0xfe
	and	r2, r3
	mov	r3, r6
	add	r3, #0x55
	mov	r5, #0
	strb	r2, [r1]
	mov	r0, #0xc9
	strb	r5, [r3]
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	bl	__Func_92950
	ldr	r7, [r6, #0x50]
	mov	r3, r7
	add	r3, #0x26
	strb	r5, [r3]
.L2040:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x3333
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x78
	bne	.L2040
	mov	r0, #0xbe
	bl	__Func_f9080
	mov	r5, #0
.L205c:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0x18]
	ldr	r2, =0xfffffc00
	add	r3, r2
	str	r3, [r7, #0x18]
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x3c
	bne	.L205c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_923e4
	mov	r0, #0x50
	bl	__Func_9163c
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	b	.L20c8

	.pool_aligned

.L20c8:
	add	r2, r1, r3
	add	r3, #0x43
	str	r3, [r2]
	sub	r3, #0x3b
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #7
	bl	__Func_91e9c
	bl	__Func_91750
.L20fc:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ca8

.thumb_func_start OvlFunc_2108
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #1
	sub	sp, #8
	bl	__Func_30f8
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x809
	mov	r5, #0
	bl	__Func_79338
	cmp	r0, #0
	beq	.L214c
	ldr	r0, =0x814
	bl	__Func_79338
	cmp	r0, #0
	bne	.L214c
	ldr	r0, =0x819
	bl	__Func_79338
	cmp	r0, #0
	bne	.L214c
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
.L214c:
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_91220
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L218e
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L216e
	ldr	r0, =0x2051cc
	b	.L217a
.L216e:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L21ae
	ldr	r0, =0x202db1
.L217a:
	mov	r1, #1
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	b	.L21ae
.L218e:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x80a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L21ae
	mov	r1, #0x90
	mov	r2, #0xf0
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
.L21ae:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L21d4
	ldr	r0, =0x813
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2220
	bl	OvlFunc_1380
	ldr	r0, =0x813
	bl	__Func_79358
	b	.L221e
.L21d4:
	cmp	r3, #5
	bne	.L2206
	ldr	r0, =0x812
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2220
	bl	OvlFunc_1510
	ldr	r0, =0x812
	bl	__Func_79358
	ldr	r0, =0x80b
	bl	__Func_79374
	ldr	r0, =0x80c
	bl	__Func_79374
	ldr	r0, =0x80d
	bl	__Func_79374
	ldr	r0, =0x80e
	bl	__Func_79374
	b	.L221e
.L2206:
	cmp	r3, #6
	bne	.L2220
	ldr	r0, =0x812
	bl	__Func_79338
	cmp	r0, #0
	beq	.L221e
	bl	OvlFunc_1790
	ldr	r0, =0x822
	bl	__Func_79358
.L221e:
	mov	r5, #1
.L2220:
	ldr	r0, =0x80b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2230
	ldr	r0, =0x826
	bl	__Func_79358
.L2230:
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2240
	ldr	r0, =0x827
	bl	__Func_79358
.L2240:
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2250
	ldr	r0, =0x828
	bl	__Func_79358
.L2250:
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2260
	ldr	r0, =0x829
	bl	__Func_79358
.L2260:
	mov	r0, #4
	bl	__Func_30f8
	cmp	r5, #0
	beq	.L226c
	b	.L2510
.L226c:
	bl	OvlFunc_25b0
	cmp	r0, #0
	bne	.L2276
	b	.L23e4
.L2276:
	mov	r3, #0xc
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2c
	mov	r2, #0x1e
	mov	r3, #0x26
	bl	__Func_10424
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r5, #4
	mov	r0, #0x1e
	mov	r1, #0x2c
	mov	r2, #0x22
	mov	r8, r3
	mov	r3, #0x25
	str	r5, [sp]
	bl	__Func_10424
	mov	r6, #8
	mov	r0, #0xe
	mov	r1, #0x29
	mov	r2, #0x20
	mov	r3, #0x29
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r7, #2
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x10
	mov	r3, #0xa
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_10424
	mov	r2, #0xe
	mov	r3, #0x29
	mov	r0, #0xe
	mov	r1, #0x2d
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.L2380
	ldr	r0, =0x814
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2380
	ldr	r0, =0x819
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2362
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x27
	str	r7, [sp]
	bl	__Func_10424
	mov	r5, #3
	mov	r0, #0x2a
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x28
	str	r7, [sp]
	bl	__Func_10424
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x29
	str	r7, [sp]
	bl	__Func_10424
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x2a
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	b	.L2374
.L2362:
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x25
	str	r7, [sp]
	bl	__Func_10424
.L2374:
	mov	r0, #9
	bl	__Func_118a8
	mov	r0, #0xa
	bl	__Func_118a8
.L2380:
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	b	.L2510

	.pool_aligned

.L23e4:
	ldr	r0, =0x80b
	mov	r5, #0
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2416
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x10
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r5, #1
.L2416:
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2446
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x2f
	mov	r1, #0x1e
	mov	r2, #0x12
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r5, #1
.L2446:
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2476
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x2d
	mov	r1, #0x1f
	mov	r2, #0x10
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r5, #1
.L2476:
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L24a6
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r0, #0x2f
	mov	r1, #0x1f
	mov	r2, #0x12
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10424
	mov	r5, #1
.L24a6:
	ldr	r0, =0x812
	bl	__Func_79338
	cmp	r0, #0
	bne	.L24b4
	cmp	r5, #0
	beq	.L24fc
.L24b4:
	mov	r6, #8
	mov	r5, #3
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x20
	mov	r3, #0x28
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x21
	mov	r3, #0x27
	str	r6, [sp]
	bl	__Func_10424
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x24
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x24
	mov	r1, #0x3a
	mov	r2, #0x20
	mov	r3, #0x29
	str	r6, [sp]
	bl	__Func_10424
.L24fc:
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
.L2510:
	ldr	r0, =0x309
	bl	__Func_79338
	cmp	r0, #0
	bne	.L254a
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.L254a
	bl	OvlFunc_2614
	ldr	r0, =0x309
	bl	__Func_79358
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
	b	.L2582
.L254a:
	ldr	r0, =0x814
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2582
	mov	r0, #0x8d
	bl	__Func_91ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	bl	__Func_9509c
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
.L2582:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_2108

.thumb_func_start OvlFunc_25b0
	push	{r5, lr}
	ldr	r0, =0x80b
	mov	r5, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L25c0
	mov	r5, #0
.L25c0:
	ldr	r0, =0x80c
	bl	__Func_79338
	cmp	r0, #0
	bne	.L25cc
	mov	r5, #0
.L25cc:
	ldr	r0, =0x80d
	bl	__Func_79338
	cmp	r0, #0
	bne	.L25d8
	mov	r5, #0
.L25d8:
	ldr	r0, =0x80e
	bl	__Func_79338
	cmp	r0, #0
	bne	.L25e4
	mov	r5, #0
.L25e4:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_25b0

.thumb_func_start OvlFunc_25fc
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25fc

.thumb_func_start OvlFunc_2614
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__Func_916b0
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x86
	mov	r3, #0
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_91220
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_91200
	mov	r0, #1
	bl	__Func_91254
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0x8c
	mov	r2, #0x86
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	ldr	r0, =iwram_1ebc
	mov	r1, #0xe4
	ldr	r3, [r0]
	lsl	r1, #1
	mov	r7, #1
	str	r7, [r3, r1]
	mov	r8, r0
	mov	r10, r1
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_91200
	mov	r0, #0x78
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_30f8
	ldr	r0, =0x201
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x202
	bl	__Func_79374
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x64
	bl	__Func_30f8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0x90
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #5
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	ldr	r0, =0x1119
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0x6b
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	bl	__Func_9509c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #4
	mov	r0, #0
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__Func_92560
	mov	r1, #0x96
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x82
	bl	__Func_92128
	mov	r1, #0x85
	lsl	r1, #1
	mov	r2, #0x90
	mov	r0, #1
	bl	__Func_92128
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0x8d
	bl	__Func_91ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_12330
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_25fc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	mov	r6, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L288c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L288c:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, r8
	ldr	r3, [r0, #0x14]
	mov	r1, #0xe0
	lsl	r1, #4
	ldr	r0, =0xe02
	add	r2, r3, r1
	strh	r6, [r2]
	add	r2, r3, r0
	add	r0, #2
	strh	r6, [r2]
	add	r2, r3, r0
	mov	r0, #0xa8
	ldr	r1, .L28f0	@ 0
	lsl	r0, #6
	strh	r6, [r2]
	add	r2, r3, r0
	strb	r1, [r2]
	ldr	r1, =0x2a01
	add	r0, #2
	add	r2, r3, r1
	add	r1, #2
	strb	r7, [r2]
	add	r2, r3, r0
	add	r3, r1
	strb	r7, [r2]
	strb	r7, [r3]
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r6, [r3]
	mov	r2, r8
	ldr	r1, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	mov	r0, r10
	mov	r3, #0x10
	str	r3, [r1, r0]
	bl	__Func_91750
	b	.L2918

	.align	2, 0
.L28f0:
	.word	0
	.pool

.L2918:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2614

.thumb_func_start OvlFunc_2924
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x896
	bl	__Func_79338
	cmp	r0, #0
	beq	.L293c
	ldr	r0, =0xffd
	bl	__Func_92b94
	b	.L2942
.L293c:
	ldr	r0, =0xfff
	bl	__Func_92b94
.L2942:
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2924

	.section .data

.L2afc:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2afc, (0x2bec-0x2afc)
.L2bec:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2bec, (0x2c14-0x2bec)
.L2c14:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2c14, (0x2d34-0x2c14)
.L2d34:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2d34

	.section .bss

	.lcomm	.L2ddc, 4
	.lcomm	.L2de0, 4
	.lcomm	.L2de4, 4
	.lcomm	.L2de8, 4
	.lcomm	.L2dec, 4
