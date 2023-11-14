	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L598
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L688
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	push	{r5, lr}
	ldr	r5, =.L6b0
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_44

.thumb_func_start OvlFunc_5c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L7e
	mov	r0, #7
	mov	r1, #0x10
	bl	__Func_b0278
	b	.L9e
.L7e:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.L90
	ldr	r0, =0x13e3
	bl	__Func_92b94
	b	.L96
.L90:
	ldr	r0, =0x16f5
	bl	__Func_92b94
.L96:
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
.L9e:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5c

.thumb_func_start OvlFunc_bc
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.Lde
	mov	r0, #9
	mov	r1, #0x12
	bl	__Func_b0278
	b	.Lfe
.Lde:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lf0
	ldr	r0, =0x13e9
	bl	__Func_92b94
	b	.Lf6
.Lf0:
	ldr	r0, =0x16f9
	bl	__Func_92b94
.Lf6:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
.Lfe:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_bc

.thumb_func_start OvlFunc_11c
	ldr	r0, =.L8f0
	bx	lr
.func_end OvlFunc_11c

.thumb_func_start OvlFunc_124
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L146
	mov	r0, #8
	mov	r1, #0x11
	bl	__Func_b0278
	b	.L18a
.L146:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	bne	.L17c
	ldr	r0, =0x13e5
	bl	__Func_92b94
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_93054
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_92adc
	b	.L18a
.L17c:
	ldr	r0, =0x16f7
	bl	__Func_92b94
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92f84
.L18a:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_124

.thumb_func_start OvlFunc_1a8
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x13ed
	bl	__Func_92b94
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a8

.thumb_func_start OvlFunc_1e0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x13f0
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x18
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L22a
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L22a:
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e0

.thumb_func_start OvlFunc_250
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x13f6
	bl	__Func_92b94
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x1b
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L290
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L290:
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_250

.thumb_func_start OvlFunc_2b4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x16e1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2b4

.thumb_func_start OvlFunc_2d4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x16ec
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_2d4

.thumb_func_start OvlFunc_2f4
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L316
	mov	r0, #2
	mov	r1, #0x13
	bl	__Func_b3284
	b	.L33e
.L316:
	ldr	r0, =0x845
	bl	__Func_79338
	cmp	r0, #0
	beq	.L330
	ldr	r0, =0x16fb
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_93054
	b	.L33e
.L330:
	ldr	r0, =0x13eb
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
.L33e:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2f4

.thumb_func_start OvlFunc_35c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3be
	ldr	r0, =0x16ff
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_92adc
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x16
	bl	__Func_93874
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
.L3be:
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_9280c
	ldr	r0, =0x1702
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_35c

.thumb_func_start OvlFunc_3f4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1703
	bl	__Func_92b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_3f4

.thumb_func_start OvlFunc_430
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1705
	bl	__Func_92b94
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_430

.thumb_func_start OvlFunc_470
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x170a
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_470

.thumb_func_start OvlFunc_490
	push	{lr}
	bl	__Func_916b0
	mov	r0, #3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4a8
	ldr	r0, =0x146f
	bl	__Func_92b94
	b	.L4ae
.L4a8:
	ldr	r0, =0x13d9
	bl	__Func_92b94
.L4ae:
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_490

.thumb_func_start OvlFunc_4c8
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r0, #0x1b
	bl	__Func_92054
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_4c8

	.section .data

.L598:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x598, (0x688-0x598)
.L688:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x688, (0x6b0-0x688)
.L6b0:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x6b0, (0x8f0-0x6b0)
.L8f0:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x8f0
