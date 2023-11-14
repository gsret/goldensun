	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L5f8
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L628
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L62c
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	ldr	r0, =.L644
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_54
	push	{r5, r6, lr}
	ldr	r2, =ewram_240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r2, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xa
	bne	.Lb4
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r2, r1
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x4b
	bl	__Func_f9080
	mov	r0, #0
	bl	OvlFunc_2e8
	mov	r0, #0x78
	bl	__Func_30f8
	ldr	r2, =iwram_1c94
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0
	bne	.Laa
	mov	r6, r2
.L96:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, =0xe0f
	add	r5, #1
	cmp	r5, r2
	bgt	.Laa
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L96
.Laa:
	ldr	r0, =0
	mov	r1, #2
	bl	__Func_91e3c
	b	.L196
.Lb4:
	cmp	r3, #9
	bne	.Lea
	mov	r0, #0x43
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_f03f0
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_3b70
	bl	__Func_3ce0
	mov	r0, #0xf0
	bl	__Func_9163c
	mov	r0, #0x13
	bl	__Func_f9080
	ldr	r0, =1
	mov	r1, #2
	bl	__Func_91e3c
	b	.L196
.Lea:
	ldr	r0, =0xb
	bl	__Func_2f3c
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #2
	bne	.L15c
.Lf8:
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_f2b70
	mov	r0, #0
	bl	__Func_f2d54
	bl	__Func_1f77c
	cmp	r0, #0
	ble	.L152
	mov	r0, #0x46
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_f26ec
	cmp	r0, #0
	bne	.L152
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_3b70
	bl	__Func_3ce0
	ldr	r2, =iwram_1ae8
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0
	bne	.Lf8
	mov	r6, r2
.L13e:
	mov	r0, #1
	add	r5, #1
	bl	__Func_30f8
	cmp	r5, #0x77
	bgt	.Lf8
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L13e
	b	.Lf8
.L152:
	ldr	r0, =1
	mov	r1, #1
	bl	__Func_91e3c
	b	.L17a
.L15c:
	mov	r0, #0x40
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_f26ec
	bl	__Func_77f70
	ldr	r0, =4
	mov	r1, #0x10
	bl	__Func_91e3c
	mov	r0, #0x11
	bl	__Func_f9080
.L17a:
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_3b70
	bl	__Func_3ce0
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x13
	bl	__Func_f9080
.L196:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_54

.thumb_func_start OvlFunc_1c0
	push	{r5, r6, lr}
	mov	r0, #0xa4
	lsl	r0, #3
	bl	__Func_4970
	ldr	r6, =.L650
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r5, r0
	cmp	r3, r2
	bne	.L1e0
	bl	__Func_4080
	strh	r0, [r6]
.L1e0:
	ldr	r0, =0x1c
	bl	__Func_2f40
	mov	r1, r5
	bl	__Func_5340
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x50003e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r5
	mov	r1, #0xa0
	add	r2, #0x20
	lsl	r1, #3
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_3fa4
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L20e:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L20e
	mov	r0, r5
	bl	__Func_2df0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c0

.thumb_func_start OvlFunc_238
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L650
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldr	r4, =.L6a0
	ldrh	r3, [r3, #2]
	mov	r2, #0x88
	sub	sp, #4
	mov	r6, r4
	lsr	r7, r3, #5
	mov	r5, #0
	mov	r8, r2
.L25a:
	mov	r2, #0x12
	sub	r2, r5
	lsl	r2, #3
	mov	r3, #0xe8
	sub	r3, r2
	mov	r2, #0
	stmia	r6!, {r2}
	mov	r1, r8
	lsl	r3, #16
	mov	r2, #0x84
	orr	r3, r1
	lsl	r2, #8
	orr	r3, r2
	stmia	r6!, {r3}
	mov	r3, #0xf0
	lsl	r3, #8
	orr	r3, r7
	stmia	r6!, {r3}
	ldr	r3, =.L68c
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	sub	r1, r2, r5
	cmp	r1, #0
	bge	.L294
	mov	r1, #0
.L294:
	cmp	r1, #2
	bgt	.L2a6
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2a6
	mov	r1, #0
.L2a6:
	cmp	r1, #0
	beq	.L2b8
	mov	r0, r4
	mov	r1, #0xff
	add	r4, #0xc
	str	r4, [sp]
	bl	__Func_3dec
	ldr	r4, [sp]
.L2b8:
	add	r5, #1
	add	r7, #2
	cmp	r5, #0x11
	ble	.L25a
	ldr	r2, =.L68c
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_238

.thumb_func_start OvlFunc_2e8
	push	{r5, r6, r7, lr}
	bl	OvlFunc_454
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r2, =.L68c
	ldr	r3, .L31c	@ 0
	mov	r0, #0
	strh	r3, [r2]
	bl	OvlFunc_1c0
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_238
	bl	__Func_41d8
	ldr	r7, =ewram_2090
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r7]
	cmp	r2, #0x1f
	bgt	.L350
	b	.L330

	.align	2, 0
.L31c:
	.word	0
	.pool

.L330:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r7
	strh	r2, [r7]
	mov	r2, #0xaa
	add	r3, #4
	lsl	r2, #5
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L350:
	strh	r1, [r5]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r7]
	cmp	r2, #0x1f
	bgt	.L37a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r7
	strh	r2, [r7]
	ldr	r2, =0x2fce
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L37a:
	strh	r1, [r5]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r7]
	cmp	r2, #0x1f
	bgt	.L3a4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r7
	add	r3, #4
	strh	r2, [r7]
	mov	r2, #0x10
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDY
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L3a4:
	strh	r1, [r5]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r7]
	cmp	r2, #0x1f
	bgt	.L3ce
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r7
	strh	r2, [r7]
	ldr	r2, =0x1010
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDALPHA
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L3ce:
	strh	r1, [r5]
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r6, #0
.L3d8:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r7]
	cmp	r3, #0x1f
	bgt	.L402
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #2
	add	r3, #1
	add	r2, r7, r2
	strh	r3, [r7]
	mov	r3, #0x10
	add	r2, #4
	sub	r3, r6
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDY
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L402:
	strh	r1, [r5]
	mov	r0, #3
	add	r6, #1
	bl	__Func_30f8
	cmp	r6, #0x10
	ble	.L3d8
	ldr	r6, =iwram_1ebc
	mov	r3, #0xe0
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	mov	r5, #0xe4
	mov	r3, #0
	str	r3, [r2]
	lsl	r5, #1
	mov	r3, #1
	str	r3, [r1, r5]
	bl	__Func_91dc8
	bl	__Func_91e20
	ldr	r2, [r6]
	mov	r3, #0x3c
	str	r3, [r2, r5]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2e8

.thumb_func_start OvlFunc_454
	push	{r5, r6, lr}
	mov	r0, #0
	ldr	r5, =0x1a
	bl	__Func_3b70
	ldr	r2, =REG_BG2CNT
	ldr	r3, .L498	@ 0x681
	strh	r3, [r2]
	ldr	r2, =iwram_1ad0
	mov	r3, #0
	strh	r3, [r2, #0xa]
	mov	r0, r5
	bl	__Func_2f40
	mov	r1, #0xa0
	ldr	r6, =0x1ff
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xe0
	lsl	r3, #1
	add	r4, r3
	mov	r0, r4
	ldr	r1, =ewram_10000
	bl	__Func_5340
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =ewram_10000
	ldr	r1, =0x6006800
	ldr	r2, =0x84002580
	b	.L4c0

	.align	2, 0
.L498:
	.word	0x681
	.pool

.L4c0:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xd0
	ldr	r1, =0x6003000
	lsl	r3, #1
	mov	r4, #0
.L4cc:
	mov	r0, #0
.L4ce:
	mov	r2, r3
	mov	r5, #0x80
	lsl	r3, r2, #16
	lsl	r5, #9
	add	r3, r5
	add	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0x1d
	bls	.L4ce
	strh	r6, [r1]
	add	r4, #1
	add	r1, #2
	strh	r6, [r1]
	add	r1, #2
	cmp	r4, #0x13
	bls	.L4cc
	ldr	r3, =iwram_1ad0
	mov	r4, #0
	mov	r2, #0
.L4f8:
	add	r4, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r4, #3
	bls	.L4f8
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_1ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1e70
	ldr	r2, [r3]
	mov	r3, #0xa0
	lsl	r3, #5
	strh	r3, [r2, #0x14]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_454

	.section .data

.L5f8:
	.incbin "overlays/rom_779188/orig.bin", 0x5f8, (0x628-0x5f8)
.L628:
	.incbin "overlays/rom_779188/orig.bin", 0x628, (0x62c-0x628)
.L62c:
	.incbin "overlays/rom_779188/orig.bin", 0x62c, (0x644-0x62c)
.L644:
	.incbin "overlays/rom_779188/orig.bin", 0x644, (0x650-0x644)
.L650:
	.incbin "overlays/rom_779188/orig.bin", 0x650

	.section .bss

	.lcomm	.Lunused_658, 0x34
	.lcomm	.L68c, 4
	.lcomm	.Lunused_690, 0x10
	.lcomm	.L6a0, 0xc
