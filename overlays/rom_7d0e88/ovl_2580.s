	.include "macros.inc"

.thumb_func_start OvlFunc_2580
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L2598
	ldr	r0, =.L33a8
	b	.L25c2
.L2598:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L25a2
	ldr	r0, =.L3438
	b	.L25c2
.L25a2:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L25ac
	ldr	r0, =.L3498
	b	.L25c2
.L25ac:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L25b6
	ldr	r0, =.L351c
	b	.L25c2
.L25b6:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L25c0
	ldr	r0, =.L3618
	b	.L25c2
.L25c0:
	ldr	r0, =.L339c
.L25c2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_2580

.thumb_func_start OvlFunc_25f8
	push	{r5, lr}
	bl	__Func_92054
	mov	r5, r0
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, r5
	mov	r1, #0
	add	r3, #0x55
	strb	r1, [r3]
	mov	r0, r5
	bl	__Func_c528
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_25f8

.thumb_func_start OvlFunc_263c
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, =0x1f5
	mov	r5, r0
	add	r0, r6, r3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2680
	mov	r0, r5
	mov	r1, #5
	bl	__Func_c300
	ldr	r3, =OvlFunc_20b8
	ldr	r2, [r5, #8]
	str	r3, [r5, #0x6c]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r1, =OvlData_2d64
	mov	r0, r6
	bl	__Func_9207c
.L2680:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_263c

.thumb_func_start OvlFunc_2694
	push	{lr}
	bl	__Func_92054
	mov	r3, #2
	mov	r1, r0
	add	r0, #0x22
	strb	r3, [r0]
	mov	r3, r1
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r3, =OvlFunc_1aa8
	str	r3, [r1, #0x6c]
	pop	{r0}
	bx	r0
.func_end OvlFunc_2694

.thumb_func_start OvlFunc_26b8
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r6, #8
	mov	r5, r0
.L26c4:
	mov	r0, r6
	bl	__Func_92054
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L26d4
	ldr	r1, =0xffff
	add	r3, r1
.L26d4:
	asr	r2, r3, #16
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L26e0
	ldr	r4, =0xffff
	add	r3, r4
.L26e0:
	asr	r3, #16
	cmp	r2, r3
	bne	.L2720
	ldr	r2, =0xfff80000
	ldr	r1, [r0, #0x10]
	add	r3, r1, r2
	ldr	r2, [r5, #0x10]
	cmp	r2, r3
	bgt	.L2720
	ldr	r4, =0xffe80000
	add	r3, r1, r4
	cmp	r2, r3
	ble	.L2720
	ldr	r2, =0xfff00000
	ldr	r1, [r5, #8]
	add	r3, r1, r2
	ldr	r2, [r0, #8]
	cmp	r3, r2
	bgt	.L2730
	mov	r4, #0x80
	lsl	r4, #13
	add	r3, r1, r4
	cmp	r2, r3
	bge	.L2730
	ldr	r3, [r0, #0x50]
	ldrb	r1, [r3, #9]
	lsl	r1, #28
	lsr	r1, #30
	mov	r0, #0
	bl	__Func_92b08
	b	.L2736
.L2720:
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
.L2730:
	add	r6, #1
	cmp	r6, #0xb
	bls	.L26c4
.L2736:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_26b8

.thumb_func_start OvlFunc_274c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r3, #2
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r1, =ewram_240
	ldrsh	r2, [r1, r2]
	ldr	r3, =0x74
	sub	sp, #8
	cmp	r2, r3
	bne	.L2788
	mov	r0, #8
	bl	OvlFunc_ba4
	mov	r0, #9
	bl	OvlFunc_ba4
	mov	r0, #0xa
	bl	OvlFunc_ba4
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r0, #0xc
	bl	OvlFunc_ba4
	b	.L29fa
.L2788:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L2858
	mov	r3, #0
	mov	r2, #0x40
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0x20
	mov	r0, #0x20
	str	r2, [sp, #4]
	bl	__Func_105d4
	mov	r0, #8
	bl	OvlFunc_ba4
	mov	r0, #9
	bl	OvlFunc_ba4
	mov	r0, #0xa
	bl	OvlFunc_ba4
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r0, #0xc
	bl	OvlFunc_ba4
	mov	r0, #0xd
	bl	OvlFunc_ba4
	mov	r0, #0xe
	bl	OvlFunc_ba4
	mov	r0, #0xf
	bl	OvlFunc_ba4
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L27dc
	b	.L29fa
.L27dc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L27ea
	b	.L29fa
.L27ea:
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4f
	mov	r1, #0x22
	mov	r2, #0x54
	mov	r3, #0x18
	bl	__Func_10424
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r1, #0x20
	mov	r2, #0x40
	mov	r3, #0
	mov	r0, #0x20
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10424
	mov	r0, #9
	bl	OvlFunc_ec8
	mov	r0, #0xa
	bl	OvlFunc_ec8
	mov	r0, #0xb
	bl	OvlFunc_ec8
	mov	r0, #0xc
	bl	OvlFunc_ec8
	mov	r0, #0xd
	bl	OvlFunc_ec8
	mov	r0, #0xe
	bl	OvlFunc_ec8
	mov	r0, #0xf
	bl	OvlFunc_ec8
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #3
	b	.L2918
.L2858:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L2922
	mov	r0, #0x92
	mov	r2, #0xc8
	lsl	r0, #18
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_common0_70
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2884
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
.L2884:
	mov	r0, #0
	bl	__Func_91494
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x62
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L289c
	bl	OvlFunc_209c
.L289c:
	mov	r0, #8
	bl	OvlFunc_2694
	mov	r0, #9
	bl	OvlFunc_2694
	mov	r0, #0xa
	bl	OvlFunc_2694
	mov	r0, #0xb
	bl	OvlFunc_2694
	mov	r4, #0x80
	ldr	r2, =bss_36d0
	mov	r1, #0
	mov	r0, #0
	lsl	r4, #2
.L28be:
	add	r3, r1, r4
	add	r1, #1
	str	r0, [r2]
	str	r0, [r2, #4]
	str	r0, [r2, #8]
	str	r3, [r2, #0x10]
	add	r2, #0x14
	cmp	r1, #3
	bls	.L28be
	bl	OvlFunc_1d84
	mov	r0, #1
	bl	__Func_9163c
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_26b8
	lsl	r1, #4
	bl	__Func_41d8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L28f0
	b	.L29fa
.L28f0:
	mov	r5, #8
	b	.L28f6
.L28f4:
	add	r5, #1
.L28f6:
	cmp	r5, #0xb
	bhi	.L29fa
	mov	r0, r5
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r2, #0x25
	bne	.L28f4
	ldr	r3, [r0, #0x10]
	asr	r0, r3, #20
	cmp	r0, #9
	bne	.L28f4
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r1, #8
	mov	r0, #0x1b
.L2918:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L29fa
.L2922:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L29fa
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #6
	mov	r0, #0xa
	bl	__Func_92950
	mov	r0, #8
	bl	OvlFunc_ba4
	mov	r0, #9
	bl	OvlFunc_ba4
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	bl	OvlFunc_24cc
	mov	r0, #0xb
	bl	OvlFunc_25f8
	mov	r0, #0xc
	bl	OvlFunc_25f8
	mov	r0, #0xd
	bl	OvlFunc_25f8
	mov	r0, #0xb
	bl	OvlFunc_263c
	mov	r0, #0xc
	bl	OvlFunc_263c
	mov	r0, #0xd
	bl	OvlFunc_263c
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	OvlFunc_25f8
	mov	r0, #0xe
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	bne	.L29fa
	mov	r0, #0xd
	bl	__Func_92054
	mov	r5, #0xc0
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_92054
	str	r5, [r0, #0x1c]
	mov	r0, #0xd
	bl	__Func_92054
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r5, #0xc
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0xe
	bl	__Func_92054
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r3, #0x16
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L29fa:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_274c

	.section .data

.L339c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x339c, (0x33a8-0x339c)
.L33a8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x33a8, (0x3438-0x33a8)
.L3438:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3438, (0x3498-0x3438)
.L3498:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3498, (0x351c-0x3498)
.L351c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x351c, (0x3618-0x351c)
.L3618:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3618
