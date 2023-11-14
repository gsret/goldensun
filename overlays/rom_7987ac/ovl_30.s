	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0
	bl	__Func_92054
	asr	r5, #20
	ldr	r3, [r0, #0x10]
	sub	r5, #0x22
	asr	r3, #20
	cmp	r5, #1
	bhi	.L5e
	cmp	r3, #0x28
	ble	.L5e
	cmp	r3, #0x2a
	bgt	.L5e
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79358
	b	.L66
.L5e:
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79374
.L66:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_6c
	ldr	r0, =.L6dc
	bx	lr
.func_end OvlFunc_6c

.thumb_func_start OvlFunc_74
	mov	r0, #0
	bx	lr
.func_end OvlFunc_74

.thumb_func_start OvlFunc_78
	ldr	r0, =.L7cc
	bx	lr
.func_end OvlFunc_78

.thumb_func_start OvlFunc_80
	push	{r5, lr}
	ldr	r5, =.L7f4
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_80

.thumb_func_start OvlFunc_98
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, r5
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_98

.thumb_func_start OvlFunc_bc
	push	{lr}
	ldr	r0, =0x1cc9
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r0, #9
	bl	OvlFunc_98
	pop	{r0}
	bx	r0
.func_end OvlFunc_bc

.thumb_func_start OvlFunc_dc
	push	{lr}
	ldr	r0, =0x1ccd
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r0, #0xb
	bl	OvlFunc_98
	pop	{r0}
	bx	r0
.func_end OvlFunc_dc

.thumb_func_start OvlFunc_fc
	push	{lr}
	ldr	r0, =0x1cd0
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r0, #0xc
	bl	OvlFunc_98
	pop	{r0}
	bx	r0
.func_end OvlFunc_fc

.thumb_func_start OvlFunc_11c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1cd4
	bl	__Func_92b94
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92848
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_93040
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_93040
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L196
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L196:
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x10
	bl	__Func_93040
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x868
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_11c

.thumb_func_start OvlFunc_1c4
	push	{lr}
	ldr	r0, =0x1cda
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r0, #0x10
	bl	OvlFunc_98
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c4

.thumb_func_start OvlFunc_1e4
	push	{lr}
	ldr	r0, =0x1cee
	bl	__Func_92b94
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #2
	bl	__Func_92848
	mov	r0, #0x17
	bl	OvlFunc_98
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e4

.thumb_func_start OvlFunc_204
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92848
	ldr	r0, =0x85b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L22e
	ldr	r0, =0x137c
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92c40
	b	.L23c
.L22e:
	ldr	r0, =0x1385
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92c40
.L23c:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L2a8
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	bl	__Func_78500
	cmp	r0, #0
	bne	.L290
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1384
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	b	.L2d4
.L290:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_91a58
	ldr	r0, =0x85b
	bl	__Func_79358
	b	.L2d4
.L2a8:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
.L2d4:
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_204

.thumb_func_start OvlFunc_2fc
	push	{r5, lr}
	bl	__Func_916b0
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_925cc
	bl	__Func_91750
	mov	r0, #0x10
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	bl	OvlFunc_11c
	mov	r0, #0x10
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_9207c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2fc

.thumb_func_start OvlFunc_338
	push	{lr}
	bl	__Func_916b0
	bl	__Func_78500
	cmp	r0, #0
	bne	.L364
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1384
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	b	.L374
.L364:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_91a58
.L374:
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_338

.thumb_func_start OvlFunc_380
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L3a2
	mov	r0, #4
	mov	r1, #0x13
	bl	__Func_b0278
	b	.L3b0
.L3a2:
	ldr	r0, =0x1ce2
	bl	__Func_92b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_92f84
.L3b0:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_380

.thumb_func_start OvlFunc_3c8
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L3ea
	mov	r0, #5
	mov	r1, #0x14
	bl	__Func_b0278
	b	.L3f8
.L3ea:
	ldr	r0, =0x1ce4
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
.L3f8:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3c8

.thumb_func_start OvlFunc_410
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L432
	mov	r0, #6
	mov	r1, #0x15
	bl	__Func_b0278
	b	.L440
.L432:
	ldr	r0, =0x1ce6
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
.L440:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_410

.thumb_func_start OvlFunc_458
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L47a
	mov	r0, #1
	mov	r1, #0x16
	bl	__Func_b3284
	b	.L488
.L47a:
	ldr	r0, =0x1cec
	bl	__Func_92b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_92f84
.L488:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_458

.thumb_func_start OvlFunc_4a0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x85b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4b8
	ldr	r0, =0x1382
	bl	__Func_92b94
	b	.L4be
.L4b8:
	ldr	r0, =0x1cf4
	bl	__Func_92b94
.L4be:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4a0

.thumb_func_start OvlFunc_4dc
	ldr	r0, =.L98c
	bx	lr
.func_end OvlFunc_4dc

.thumb_func_start OvlFunc_4e4
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r3, =ewram_240
	sub	r2, #0x47
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #5
	bne	.L536
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x78
	mov	r2, #8
	mov	r3, #0x43
	mov	r0, #0
	bl	__Func_10424
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	str	r5, [r0, #0xc]
	mov	r0, #8
	bl	__Func_92054
	str	r5, [r0, #0x14]
	b	.L55a
.L536:
	cmp	r3, #7
	beq	.L53e
	cmp	r3, #0xb
	bne	.L55a
.L53e:
	mov	r1, #0x8e
	mov	r2, #0x80
	mov	r3, #0xa8
	lsl	r1, #18
	mov	r0, #0xe7
	lsl	r2, #13
	lsl	r3, #18
	bl	OvlFunc_570
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_30
	lsl	r1, #4
	bl	__Func_41d8
.L55a:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4e4

.thumb_func_start OvlFunc_570
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0x16
	mov	r5, #0
	bl	__Func_c150
	cmp	r0, #0
	beq	.L5d4
	ldr	r6, [r0, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r5, [r3]
	add	r3, #1
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r0
	strb	r5, [r3]
	add	r2, #0x5c
	mov	r3, #1
	mov	r1, #0xc1
	strb	r3, [r2]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_48b0
	mov	r5, r0
	mov	r0, r7
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
.L5d4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_570

	.section .data

.L6dc:
	.incbin "overlays/rom_7987ac/orig.bin", 0x6dc, (0x7cc-0x6dc)
.L7cc:
	.incbin "overlays/rom_7987ac/orig.bin", 0x7cc, (0x7f4-0x7cc)
.L7f4:
	.incbin "overlays/rom_7987ac/orig.bin", 0x7f4, (0x98c-0x7f4)
.L98c:
	.incbin "overlays/rom_7987ac/orig.bin", 0x98c
