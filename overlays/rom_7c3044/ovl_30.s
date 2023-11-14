	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L4d0
	b	.L54
.L48:
	ldr	r3, =0x65
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L6c8
	b	.L54
.L52:
	ldr	r0, =.L4a0
.L54:
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_70
	mov	r0, #0
	bx	lr
.func_end OvlFunc_70

.thumb_func_start OvlFunc_74
	ldr	r0, =.L728
	bx	lr
.func_end OvlFunc_74

.thumb_func_start OvlFunc_7c
	push	{r5, lr}
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.Lb6
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #9
	blt	.Laa
	cmp	r3, #0xf
	ble	.La6
	cmp	r3, #0x11
	bne	.Laa
.La6:
	ldr	r5, =.L8d4
	b	.Lac
.Laa:
	ldr	r5, =.L79c
.Lac:
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
	b	.Lc2
.Lb6:
	ldr	r3, =0x65
	cmp	r2, r3
	bne	.Lc0
	ldr	r0, =.La0c
	b	.Lc2
.Lc0:
	ldr	r0, =.L784
.Lc2:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_e4
	push	{lr}
	ldr	r1, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.L116
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #9
	blt	.L112
	cmp	r3, #0xf
	ble	.L10e
	cmp	r3, #0x11
	bne	.L112
.L10e:
	ldr	r0, =.Lc88
	b	.L122
.L112:
	ldr	r0, =.La48
	b	.L122
.L116:
	ldr	r3, =0x65
	cmp	r2, r3
	bne	.L120
	ldr	r0, =.Leb0
	b	.L122
.L120:
	ldr	r0, =.La3c
.L122:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e4

.thumb_func_start OvlFunc_144
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1add
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x91
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_144

.thumb_func_start OvlFunc_16c
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1ae3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_16c

.thumb_func_start OvlFunc_18c
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0xffff9fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L1ac
	mov	r0, #7
	mov	r1, #8
	bl	__Func_b3284
	b	.L1e4
.L1ac:
	bl	__Func_916b0
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1ca
	ldr	r0, =0x1afb
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L1e0
.L1ca:
	ldr	r0, =0x1ad7
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_93054
	mov	r0, #0x91
	lsl	r0, #4
	bl	__Func_79358
.L1e0:
	bl	__Func_91750
.L1e4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_18c

.thumb_func_start OvlFunc_1fc
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L21a
	mov	r0, #8
	bl	__Func_b29a8
	b	.L230
.L21a:
	bl	__Func_916b0
	ldr	r0, =0x1a8f
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
.L230:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fc

.thumb_func_start OvlFunc_240
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1ebc
	ldr	r7, [r3]
	bl	__Func_916b0
	mov	r5, #8
	mov	r6, #0
.L24e:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L25e
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L25e:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L24e
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xd
	beq	.L28a
	cmp	r3, #0xd
	bgt	.L27c
	cmp	r3, #0xc
	beq	.L286
	b	.L2fa
.L27c:
	cmp	r3, #0x10
	beq	.L28e
	cmp	r3, #0x13
	beq	.L292
	b	.L2fa
.L286:
	mov	r5, #0
	b	.L294
.L28a:
	mov	r5, #1
	b	.L294
.L28e:
	mov	r5, #2
	b	.L294
.L292:
	mov	r5, #3
.L294:
	mov	r0, #0x9e
	bl	__Func_f9080
	lsl	r4, r5, #3
	ldr	r0, =.Lef8
	add	r3, r4, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r4]
	bl	__Func_10560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	mov	r2, #8
	mov	r1, #3
	neg	r2, r2
	mov	r0, #0
	bl	__Func_92208
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
.L2fa:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_240

.thumb_func_start OvlFunc_308
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	ldr	r3, =0x209
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.L324
	bl	OvlFunc_33c
.L324:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_308

.thumb_func_start OvlFunc_33c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0xf
	bgt	.L35a
	cmp	r3, #9
	bge	.L376
	cmp	r3, #3
	beq	.L360
	b	.L3c2
.L35a:
	cmp	r3, #0x11
	beq	.L376
	b	.L3c2
.L360:
	mov	r3, #4
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0xe
	mov	r2, #0x1e
	mov	r3, #0x10
	bl	__Func_10424
	b	.L3d8
.L376:
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3b8
	mov	r0, #0xa
	bl	__Func_92924
	mov	r0, #0xb
	bl	__Func_92924
	mov	r0, #0xc
	bl	__Func_92924
	mov	r0, #0xd
	bl	__Func_92924
	mov	r0, #0xe
	bl	__Func_92924
	mov	r0, #0x11
	bl	__Func_92924
	mov	r0, #0x12
	bl	__Func_92924
	mov	r0, #0x13
	bl	__Func_92924
	mov	r0, #0xf
	bl	__Func_92924
	b	.L3d8
.L3b8:
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_92950
	b	.L3d8
.L3c2:
	ldr	r0, =0x911
	bl	__Func_79338
	cmp	r0, #0
	beq	.L3d8
	mov	r0, #0x10
	bl	__Func_92924
	mov	r0, #0x11
	bl	__Func_92924
.L3d8:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_33c

	.section .data

.L4a0:
	.incbin "overlays/rom_7c3044/orig.bin", 0x4a0, (0x4d0-0x4a0)
.L4d0:
	.incbin "overlays/rom_7c3044/orig.bin", 0x4d0, (0x6c8-0x4d0)
.L6c8:
	.incbin "overlays/rom_7c3044/orig.bin", 0x6c8, (0x728-0x6c8)
.L728:
	.incbin "overlays/rom_7c3044/orig.bin", 0x728, (0x784-0x728)
.L784:
	.incbin "overlays/rom_7c3044/orig.bin", 0x784, (0x79c-0x784)
.L79c:
	.incbin "overlays/rom_7c3044/orig.bin", 0x79c, (0x8d4-0x79c)
.L8d4:
	.incbin "overlays/rom_7c3044/orig.bin", 0x8d4, (0xa0c-0x8d4)
.La0c:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa0c, (0xa3c-0xa0c)
.La3c:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa3c, (0xa48-0xa3c)
.La48:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa48, (0xc88-0xa48)
.Lc88:
	.incbin "overlays/rom_7c3044/orig.bin", 0xc88, (0xeb0-0xc88)
.Leb0:
	.incbin "overlays/rom_7c3044/orig.bin", 0xeb0, (0xef8-0xeb0)
.Lef8:
	.incbin "overlays/rom_7c3044/orig.bin", 0xef8
