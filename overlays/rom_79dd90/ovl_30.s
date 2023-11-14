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
	ldr	r0, =.Lc08
	bx	lr
.func_end OvlFunc_88

.thumb_func_start OvlFunc_90
	mov	r0, #0
	bx	lr
.func_end OvlFunc_90

.thumb_func_start OvlFunc_94
	ldr	r0, =.Lc50
	bx	lr
.func_end OvlFunc_94

.thumb_func_start OvlFunc_9c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.Ld8
	ldr	r0, =0x84f
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc2
	ldr	r3, =.Lc7c
	mov	r2, #1
	add	r3, #0x76
	strb	r2, [r3]
.Lc2:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld4
	ldr	r3, =.Lc7c
	mov	r2, #0
	add	r3, #0x46
	strb	r2, [r3]
.Ld4:
	ldr	r0, =.Lc7c
	b	.Lda
.Ld8:
	ldr	r0, =.Lc64
.Lda:
	pop	{r1}
	bx	r1
.func_end OvlFunc_9c

.thumb_func_start OvlFunc_f8
	push	{lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_923e4
	ldr	r0, =0xfd2
	bl	__Func_79358
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_91a58
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f8

.thumb_func_start OvlFunc_12c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_1776c
	ldr	r0, =0x29de
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_12c

.thumb_func_start OvlFunc_154
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.L16c
	ldr	r0, =.Ld30
	b	.L16e
.L16c:
	ldr	r0, =.Ld24
.L16e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_154

.thumb_func_start OvlFunc_184
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x13c0
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_184

.thumb_func_start OvlFunc_1a4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x13c3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a4

.thumb_func_start OvlFunc_1c4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1751
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c4

.thumb_func_start OvlFunc_1e4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x84a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L25c
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L24c
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L23c
	ldr	r0, =0x1414
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xc
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x201
	bl	__Func_79358
.L23c:
	ldr	r0, =0x1416
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	b	.L41c
.L24c:
	ldr	r0, =0x1413
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	b	.L3fa
.L25c:
	ldr	r0, =0x140d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L278
	b	.L408
.L278:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc
	mov	r2, #0xa
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x10dffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.L2d2
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xad
	mov	r2, #0x89
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xa4
	mov	r2, #0x8d
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
.L2d2:
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x84
	mov	r2, #0x3c
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_9259c
	mov	r2, #0x14
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xf0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xc
	bl	__Func_92064
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xad
	strb	r3, [r0]
	lsl	r1, #1
	ldr	r2, =0x107
	mov	r0, #0xc
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x9999
	mov	r0, #0xb
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	ldr	r2, =0x107
	bl	__Func_921c4
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xfc
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	bl	OvlFunc_8e8
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xf6
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_923e4
	ldr	r0, =0x84a
	bl	__Func_79358
.L3fa:
	mov	r1, #0x80
	ldr	r2, =.Lbf4
	mov	r0, #0xc
	lsl	r1, #9
	bl	__Func_92a1c
	b	.L41c
.L408:
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
.L41c:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e4

.thumb_func_start OvlFunc_45c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L472
	bl	OvlFunc_8e8
.L472:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
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
.func_end OvlFunc_45c

.thumb_func_start OvlFunc_4bc
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r5, #0xe0
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	lsl	r5, #1
	str	r3, [r2, r5]
	mov	r0, #8
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r5]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.L4f6
	bl	OvlFunc_50c
.L4f6:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4bc

.thumb_func_start OvlFunc_50c
	push	{lr}
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L520
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79374
.L520:
	ldr	r0, =0xfd2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L530
	mov	r0, #0xd
	bl	OvlFunc_974
.L530:
	ldr	r0, =0x84a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L57c
	mov	r1, #0x9a
	mov	r0, #0xb
	lsl	r1, #17
	ldr	r2, =0x1070000
	bl	__Func_923e4
	mov	r1, #0xad
	mov	r0, #0xc
	lsl	r1, #17
	ldr	r2, =0x1070000
	bl	__Func_923e4
	ldr	r0, =0x84f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L57c
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.L57c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0x80
	ldr	r2, =.Lbf4
	mov	r0, #0xc
	lsl	r1, #9
	bl	__Func_92a1c
.L57c:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5b8
	mov	r1, #0xe0
	mov	r2, #0x92
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	ldr	r0, =0x85e
	bl	__Func_79338
	cmp	r0, #0
	bne	.L5b8
	bl	OvlFunc_5dc
.L5b8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_50c

.thumb_func_start OvlFunc_5dc
	push	{lr}
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_933f8
	mov	r0, #0xa0
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_933f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r1, #0xa0
	mov	r2, #0xba
	lsl	r2, #17
	mov	r0, #0
	lsl	r1, #17
	bl	__Func_923e4
	bl	__Func_91dc8
	ldr	r0, =0x3333
	ldr	r1, =0x666
	bl	__Func_933d4
	mov	r0, #0xa0
	mov	r1, #1
	mov	r2, #0x91
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_933f8
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_92064
	mov	r1, #0xa0
	mov	r2, #0x9b
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__Func_937b8
	ldr	r0, =0x1720
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	b	.L73a
.L70e:
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xc
	bl	__Func_937b8
	ldr	r0, =0x1724
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92c40
.L73a:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L70e
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_925cc
	ldr	r0, =0x1726
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x9d
	mov	r2, #0x8c
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x84a
	bl	__Func_79338
	cmp	r0, #0
	bne	.L81e
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xc
	bl	__Func_92064
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xad
	strb	r3, [r0]
	ldr	r2, =0x107
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_921c4
	mov	r0, #1
	bl	__Func_9163c
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
.L81e:
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xa4
	mov	r2, #0x83
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xa4
	mov	r2, #0x8b
	lsl	r2, #1
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_921c4
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_924d4
	bl	OvlFunc_8e8
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xa4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf2
	bl	__Func_9218c
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xf2
	bl	__Func_921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xa
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_5dc

.thumb_func_start OvlFunc_8e8
	push	{lr}
	mov	r0, #0xbc
	bl	__Func_f9080
	ldr	r0, =.Lbd4
	mov	r1, #0x34
	mov	r2, #0xb
	bl	__Func_10560
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_8e8

.thumb_func_start OvlFunc_90c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_2322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L920
	neg	r5, r5
.L920:
	ldr	r0, [r6, #0x30]
	bl	__Func_231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__Func_231c
	cmp	r0, #0
	bge	.L946
	add	r0, #7
.L946:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Func_4458
	mov	r5, r0
	bl	__Func_4458
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_90c

.thumb_func_start OvlFunc_974
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__Func_92054
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L9d8
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L9d8:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	mov	r5, r0
	mov	r0, #0xb5
	bl	__Func_1a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_3fa4
	mov	r0, #0x11
	bl	__Func_2dd8
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_90c
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_974

	.section .data

.Lbd4:
	.incbin "overlays/rom_79dd90/orig.bin", 0xbd4, (0xbf4-0xbd4)
.Lbf4:
	.incbin "overlays/rom_79dd90/orig.bin", 0xbf4, (0xc08-0xbf4)
.Lc08:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc08, (0xc50-0xc08)
.Lc50:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc50, (0xc64-0xc50)
.Lc64:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc64, (0xc7c-0xc64)
.Lc7c:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc7c, (0xd24-0xc7c)
.Ld24:
	.incbin "overlays/rom_79dd90/orig.bin", 0xd24, (0xd30-0xd24)
.Ld30:
	.incbin "overlays/rom_79dd90/orig.bin", 0xd30
