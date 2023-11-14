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
	ldr	r0, =.L1cf4
	bx	lr
.func_end OvlFunc_88

.thumb_func_start OvlFunc_90
	mov	r0, #0
	bx	lr
.func_end OvlFunc_90

.thumb_func_start OvlFunc_94
	ldr	r0, =.L1db4
	bx	lr
.func_end OvlFunc_94

.thumb_func_start OvlFunc_9c
	ldr	r0, =.L1ddc
	bx	lr
.func_end OvlFunc_9c

.thumb_func_start OvlFunc_a4
	push	{lr}
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lb4
	ldr	r0, =.L2028
	b	.Lc4
.Lb4:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lc2
	ldr	r0, =.L1fb0
	b	.Lc4
.Lc2:
	ldr	r0, =.L1efc
.Lc4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_a4

.thumb_func_start OvlFunc_dc
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x815
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lfc
	ldr	r0, =0x11c4
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	b	.L15a
.Lfc:
	ldr	r5, =0xf76
	mov	r0, r5
	bl	__Func_92b94
	mov	r2, #0xa
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_925cc
	mov	r0, #6
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L138
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L13e
.L138:
	add	r0, r5, #2
	bl	__Func_92b94
.L13e:
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_9259c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
.L15a:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_dc

.thumb_func_start OvlFunc_170
	push	{r5, r6, lr}
	ldr	r0, =0x801
	bl	__Func_79338
	cmp	r0, #0
	beq	.L17e
	b	.L944
.L17e:
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	lsl	r1, #9
	mov	r0, #0
	bl	__Func_92064
	ldr	r0, =0xfa6
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x84
	lsl	r2, #1
	mov	r0, #0
	mov	r1, #0xe8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #0xd
	bl	__Func_92848
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_93040
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	lsl	r5, #16
	lsl	r6, #16
	mov	r0, #5
	mov	r1, r5
	mov	r2, r6
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, r5
	mov	r2, r6
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r2, #0x84
	mov	r0, #5
	mov	r1, #0xf8
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0x84
	lsl	r2, #1
	mov	r0, #1
	mov	r1, #0xd8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #4
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #4
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #8
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L414
	ldr	r0, =0xfb0
	bl	__Func_92b94
	b	.L41a

	.pool_aligned

.L414:
	ldr	r0, =0xfb1
	bl	__Func_92b94
.L41a:
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_93040
	ldr	r0, =0xfb2
	bl	__Func_92b94
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x1e
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0xa
	bl	__Func_92848
	mov	r0, #0
	mov	r1, #5
	mov	r2, #0
	bl	__Func_92848
	mov	r0, #0xd
	mov	r1, #1
	mov	r2, #0xa
	bl	__Func_9280c
	mov	r2, #0xa
	mov	r0, #0xd
	mov	r1, #5
	bl	__Func_9280c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
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
	mov	r2, #0x10
	mov	r0, #5
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #6
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
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #6
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92560
	mov	r0, #5
	mov	r1, #2
	mov	r2, #0xa
	bl	__Func_92560
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x10
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #5
	mov	r2, #0x28
	bl	__Func_92848
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0x50
	mov	r0, #5
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L696
	ldr	r0, =0xfbd
	bl	__Func_92b94
	b	.L69c
.L696:
	ldr	r0, =0xfbe
	bl	__Func_92b94
.L69c:
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0xd
	bl	__Func_93040
	ldr	r5, =0xfbf
	mov	r0, r5
	bl	__Func_92b94
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L6dc
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L6e2
.L6dc:
	add	r0, r5, #2
	bl	__Func_92b94
.L6e2:
	mov	r1, #0
	mov	r2, #6
	mov	r0, #1
	bl	__Func_93040
	ldr	r0, =0xfc2
	bl	__Func_92b94
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #5
	bl	__Func_92c40
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #1
	bne	.L758
	mov	r0, #5
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_92560
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	b	.L78e

	.pool_aligned

.L758:
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L78e:
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
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
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92c40
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L820
	ldr	r0, =0xfc6
	bl	__Func_92b94
	b	.L826
.L820:
	ldr	r0, =0xfc9
	bl	__Func_92b94
.L826:
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #6
	mov	r0, #5
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_92560
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
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L20ac
	mov	r1, #0x2b
	mov	r2, #8
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0xd
	mov	r1, #0xe8
	mov	r2, #0xda
	bl	__Func_921c4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_937b8
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, #0xd
	bl	__Func_91e9c
	bl	__Func_91750
.L944:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_170

.thumb_func_start OvlFunc_964
	push	{r5, r6, lr}
	bl	__Func_916b0
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xd8
	mov	r2, #0x84
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xf8
	mov	r2, #0x84
	lsl	r1, #16
	lsl	r2, #17
	mov	r0, #5
	bl	__Func_923e4
	mov	r0, #1
	bl	__Func_92054
	mov	r5, #0xc0
	lsl	r5, #8
	strh	r5, [r0, #6]
	mov	r0, #5
	bl	__Func_92054
	mov	r1, #0x2b
	strh	r5, [r0, #6]
	mov	r2, #8
	ldr	r0, =.L20ac
	bl	__Func_10560
	ldr	r6, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_91dc8
	bl	__Func_91e20
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xd
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xe6
	mov	r2, #0xdc
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_923e4
	mov	r2, #0xe8
	mov	r1, #0xe6
	mov	r0, #0xd
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	ldr	r0, =0xfcc
	bl	__Func_92b94
	mov	r2, #0xa
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lac8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.Lac8:
	mov	r0, #5
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lae8
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_92128
.Lae8:
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lb08
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xd
	bl	__Func_92128
.Lb08:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__Func_923e4
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_923e4
	ldr	r0, =0x801
	bl	__Func_79358
	ldr	r3, [r6]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x80
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91220
	ldr	r0, =0x242
	bl	__Func_79358
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964

.thumb_func_start OvlFunc_ba8
	push	{lr}
	ldr	r0, =0x242
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lbc4
	mov	r0, #0x9e
	bl	__Func_f9080
	ldr	r0, =.L20ac
	mov	r1, #0x2b
	mov	r2, #8
	bl	__Func_10560
.Lbc4:
	mov	r0, #0
	mov	r1, #0xe5
	mov	r2, #0xd9
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_ba8

.thumb_func_start OvlFunc_be0
	push	{r5, r6, r7, lr}
	ldr	r0, =0x808
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lbee
	b	.L1280
.Lbee:
	bl	__Func_916b0
	mov	r0, #0x11
	bl	__Func_f9080
	ldr	r0, =0x808
	bl	__Func_79358
	ldr	r7, =0xf85
	mov	r0, r7
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r1, #0xc4
	mov	r2, #0xa4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xa
	ldrsh	r5, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	lsl	r5, #16
	lsl	r6, #16
	mov	r0, #5
	mov	r1, r5
	mov	r2, r6
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, r5
	mov	r2, r6
	bl	__Func_923e4
	mov	r0, #5
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_92064
	mov	r1, #0xbc
	mov	r2, #0xa4
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xcc
	mov	r2, #0xa4
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__Func_937b8
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
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_933d4
	mov	r0, #0xd7
	mov	r1, #1
	mov	r3, #1
	ldr	r2, =0x1590000
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x3d
	bl	__Func_f9080
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0xa
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_92adc
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xf
	mov	r1, #4
	bl	__Func_92548
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #6
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_92adc
	mov	r2, #0xb4
	mov	r0, #0xe
	mov	r1, #0xe8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc4
	mov	r2, #0xb4
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r2, #0xb4
	mov	r0, #0xf
	mov	r1, #0xd8
	lsl	r2, #1
	bl	__Func_921c4
	mov	r1, #0xbc
	mov	r2, #0xb4
	mov	r0, #0xf
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
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
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1890000
	neg	r1, r1
	ldr	r2, =0x1530000
	bl	__Func_933f8
	mov	r1, #0xc4
	mov	r2, #0xb4
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xbc
	mov	r2, #0xb4
	lsl	r2, #1
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xf
	mov	r1, #4
	bl	__Func_92548
	mov	r1, #0
	ldr	r0, =0x100f
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lf40
	mov	r0, r7
	add	r0, #0xa
	bl	__Func_92b94
	b	.Lf48

	.pool_aligned

.Lf40:
	mov	r0, r7
	add	r0, #0xb
	bl	__Func_92b94
.Lf48:
	mov	r2, #0xa
	ldr	r0, =0x100f
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #1
	bl	__Func_925cc
	ldr	r5, =0xf91
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #0xf
	mov	r2, #0x28
	bl	__Func_92848
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r2, #0x3c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	ldr	r0, =0x100f
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #5
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1002
	add	r0, r5, #5
	bl	__Func_92b94
	b	.L1008
.L1002:
	add	r0, r5, #6
	bl	__Func_92b94
.L1008:
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r0, #0xe
	mov	r1, #1
	mov	r2, #0x1e
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #5
	mov	r2, #0x1e
	bl	__Func_9280c
	mov	r2, #0x50
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_92548
	ldr	r0, =0xf98
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #6
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
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9259c
	mov	r0, #5
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r2, #0xa
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	ldr	r0, =0x100f
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #0xe
	bl	__Func_92064
	mov	r0, #0xe
	bl	__Func_92054
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1]
	mov	r0, #0xf
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	and	r5, r3
	strb	r5, [r2]
	mov	r1, #0xc4
	mov	r2, #0xbc
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0xbc
	mov	r2, #0xbc
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xf
	bl	__Func_921c4
	mov	r0, #6
	bl	__Func_9163c
	mov	r0, #0xe
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0xf
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r5, r3
	strb	r5, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #1
	bl	__Func_92adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L121e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L121e:
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
	beq	.L124e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_92128
.L124e:
	mov	r0, #5
	bl	__Func_923c4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r5, =.L1ce0
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_92a1c
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_92a1c
	bl	__Func_8acc4
	bl	__Func_91750
.L1280:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_be0

.thumb_func_start OvlFunc_12a0
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12b0
	b	.L14ec
.L12b0:
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	lsl	r1, #9
	mov	r0, #0
	bl	__Func_92064
	ldr	r0, =0xf9f
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xa
	ldrsh	r5, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	lsl	r5, #16
	lsl	r6, #16
	mov	r0, #5
	mov	r1, r5
	mov	r2, r6
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, r5
	mov	r2, r6
	bl	__Func_923e4
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0x94
	mov	r2, #0xa4
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r1, #0x8c
	mov	r2, #0xa4
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #5
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xf0
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_933f8
	bl	__Func_93530
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	mov	r2, #0xe8
	mov	r1, #0xd8
	mov	r0, #0xd
	bl	__Func_921c4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0xa
	bl	__Func_92560
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_93040
	mov	r2, #0xe8
	mov	r1, #0xf8
	mov	r0, #0xd
	bl	__Func_921c4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x101
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_925cc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_92adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #2
	bl	__Func_93040
	mov	r1, #0xe8
	mov	r2, #0xe8
	mov	r0, #0xd
	bl	__Func_921c4
	mov	r0, #2
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #4
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, #4
	bl	__Func_9163c
	mov	r2, #2
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	bl	__Func_93530
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L14a0
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L14a0:
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
	beq	.L14d0
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_92128
.L14d0:
	mov	r0, #5
	bl	__Func_923c4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x80
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
.L14ec:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12a0

.thumb_func_start OvlFunc_150c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r3, r2
	ldrh	r3, [r5]
	mov	r2, #0x80
	sub	r3, #5
	lsl	r3, #16
	lsl	r2, #9
	sub	sp, #8
	cmp	r3, r2
	bhi	.L1530
	ldr	r0, =0x12f
	bl	__Func_79374
.L1530:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1540
	ldr	r0, =0x242
	bl	__Func_79374
.L1540:
	ldr	r0, =0x834
	bl	__Func_79338
	cmp	r0, #0
	bne	.L154c
	b	.L1656
.L154c:
	bl	__Func_94ac8
	bl	__Func_95160
	bl	__Func_916b0
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
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	mov	r1, #0xa6
	strb	r3, [r0]
	lsl	r1, #15
	mov	r0, #0xb
	ldr	r2, =0x1090000
	bl	__Func_923e4
	ldr	r2, =0x111
	mov	r0, #0xb
	mov	r1, #0x53
	bl	__Func_921c4
	mov	r1, #5
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0xb
	bl	__Func_92054
	mov	r3, #0xc
	strh	r3, [r0, #0x20]
	ldr	r1, =.L1c34
	mov	r0, #0xb
	bl	__Func_9207c
	ldr	r0, =0x839
	bl	__Func_79338
	cmp	r0, #0
	beq	.L15de
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L15de:
	bl	__Func_91750
	mov	r3, #0xe
	str	r3, [sp]
	mov	r5, #0x15
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x17
	str	r3, [sp]
	mov	r5, #0x13
	mov	r8, r3
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r6, #0x18
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_10704
	mov	r2, r8
	mov	r5, #0x14
	str	r2, [sp]
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	b	.L171e
.L1656:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_916b0
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1698
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xa
	bne	.L1698
	bl	OvlFunc_964
.L1698:
	ldr	r0, =0x801
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16c2
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
	b	.L1702
.L16c2:
	ldr	r0, =0x808
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1702
	mov	r1, #0xc4
	mov	r2, #0xbc
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xbc
	mov	r2, #0xbc
	mov	r0, #0xf
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	ldr	r5, =.L1ce0
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_92a1c
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_92a1c
.L1702:
	ldr	r0, =0x87a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L171a
	mov	r1, #0x84
	mov	r2, #0x84
	mov	r0, #0x10
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
.L171a:
	bl	__Func_91750
.L171e:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_150c

.thumb_func_start OvlFunc_1760
	push	{r5, lr}
	ldr	r0, =0x839
	bl	__Func_79338
	cmp	r0, #0
	beq	.L176e
	b	.L196c
.L176e:
	ldr	r0, =0x82f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1798
	bl	__Func_916b0
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_925cc
	ldr	r0, =0xe8b
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	b	.L196c
.L1798:
	bl	__Func_916b0
	mov	r0, #0xb
	bl	__Func_920a0
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_925cc
	ldr	r5, =0xe85
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r0, #0xc4
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x11b0000
	bl	__Func_933f8
	mov	r0, #0
	mov	r1, #0x5e
	ldr	r2, =0x125
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1802
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L1802:
	mov	r0, #1
	mov	r1, #0x6e
	ldr	r2, =0x117
	bl	__Func_921c4
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L185e
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	ldr	r0, =0x82f
	bl	__Func_79358
	b	.L1938
.L185e:
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_93040
	mov	r2, #0
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_92560
	mov	r0, #0xb
	mov	r1, #6
	bl	__Func_924d4
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_937b8
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_93040
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92548
	ldr	r5, =.L1ce0
	mov	r0, #0
	ldr	r1, =0x1000b
	mov	r2, r5
	bl	__Func_92a1c
	mov	r2, r5
	mov	r0, #1
	ldr	r1, =0x1000b
	bl	__Func_92a1c
	ldr	r1, =.L1bdc
	mov	r0, #0xb
	bl	__Func_920fc
	mov	r0, #0
	bl	__Func_920a0
	mov	r0, #1
	bl	__Func_920a0
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_92adc
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x78
	bl	__Func_937b8
	ldr	r0, =0x839
	bl	__Func_79358
.L1938:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1958
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1958:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
.L196c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1760

.thumb_func_start OvlFunc_19a4
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
	ldr	r0, =0x87d
	bl	__Func_79358
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_91eb0
	mov	r0, #0x90
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_19a4

.thumb_func_start OvlFunc_19e8
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
	ldr	r0, =0x87e
	bl	__Func_79358
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_91eb0
	mov	r0, #0x90
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e8

.thumb_func_start OvlFunc_1a2c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1c96
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a2c

	.section .data

.L1bdc:
	.incbin "overlays/rom_78603c/orig.bin", 0x1bdc, (0x1c34-0x1bdc)
.L1c34:
	.incbin "overlays/rom_78603c/orig.bin", 0x1c34, (0x1ce0-0x1c34)
.L1ce0:
	.incbin "overlays/rom_78603c/orig.bin", 0x1ce0, (0x1cf4-0x1ce0)
.L1cf4:
	.incbin "overlays/rom_78603c/orig.bin", 0x1cf4, (0x1db4-0x1cf4)
.L1db4:
	.incbin "overlays/rom_78603c/orig.bin", 0x1db4, (0x1ddc-0x1db4)
.L1ddc:
	.incbin "overlays/rom_78603c/orig.bin", 0x1ddc, (0x1efc-0x1ddc)
.L1efc:
	.incbin "overlays/rom_78603c/orig.bin", 0x1efc, (0x1fb0-0x1efc)
.L1fb0:
	.incbin "overlays/rom_78603c/orig.bin", 0x1fb0, (0x2028-0x1fb0)
.L2028:
	.incbin "overlays/rom_78603c/orig.bin", 0x2028, (0x20ac-0x2028)
.L20ac:
	.incbin "overlays/rom_78603c/orig.bin", 0x20ac
