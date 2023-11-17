	.include "macros.inc"

.thumb_func_start OvlFunc_169c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.L16b4
	ldr	r0, =.L2420
	b	.L16ca
.L16b4:
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.L16be
	ldr	r0, =.L2450
	b	.L16ca
.L16be:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.L16c8
	ldr	r0, =.L2624
	b	.L16ca
.L16c8:
	ldr	r0, =.L2414
.L16ca:
	pop	{r1}
	bx	r1
.func_end OvlFunc_169c

.thumb_func_start OvlFunc_16f0
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r1, r3, r2
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r1]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.L172e
	mov	r3, #0x80
	lsl	r3, #1
	str	r3, [r1]
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92b08
	ldr	r0, =0x12f
	bl	__Func_79374
.L172e:
	bl	OvlFunc_1984
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_16f0

.thumb_func_start OvlFunc_1748
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, r5
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1748

.thumb_func_start OvlFunc_1770
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r0, #0
	mov	r6, #0x17
	mov	r5, #0x22
	mov	r1, #0x22
	mov	r2, #0xd
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.L17ae
	mov	r0, #0xb
	mov	r1, #0x23
	mov	r2, #0x23
	bl	OvlFunc_1938
	mov	r0, #0x18
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	b	.L17ca
.L17ae:
	mov	r0, #0xb
	mov	r1, #0x17
	mov	r2, #0x23
	bl	OvlFunc_1938
	mov	r3, #0x23
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_10704
.L17ca:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1770

.thumb_func_start OvlFunc_17d8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp]
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92054
	mov	r7, r0
	bl	__Func_916b0
	ldr	r3, [sp, #4]
	lsl	r3, #16
	mov	r11, r3
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	add	r3, r11
	mov	r5, #0x80
	lsl	r5, #12
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [sp]
	lsl	r3, #16
	mov	r9, r3
	ldr	r3, [r6, #0x10]
	add	r3, r9
	mov	r10, r2
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r6, #0x30]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	mov	r8, r2
	str	r2, [r6, #0x34]
	mov	r0, r6
	ldr	r2, [r6, #0xc]
	bl	__Func_d14c
	mov	r0, r6
	mov	r1, #0x1b
	bl	__Func_c300
	ldr	r3, [r7, #8]
	mov	r2, r10
	add	r3, r11
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [r7, #0x10]
	add	r3, r9
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r7, #0x30]
	mov	r2, r8
	add	r3, r5
	str	r2, [r7, #0x34]
	mov	r0, r7
	ldr	r2, [r7, #0xc]
	bl	__Func_d14c
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L187c
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L1886
.L187c:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_c300
	b	.L188e
.L1886:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_c300
.L188e:
	mov	r0, r6
	bl	__Func_ca6c
	bl	__Func_91750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17d8

.thumb_func_start OvlFunc_18b4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r0, #0xb
	mov	r1, #0x70
	mov	r2, #0
	bl	OvlFunc_17d8
	mov	r1, #0x50
	mov	r2, #0
	mov	r0, #0xb
	bl	OvlFunc_17d8
	ldr	r0, =0x301
	bl	__Func_79358
	mov	r0, #2
	bl	__Func_30f8
	bl	OvlFunc_1770
	ldr	r0, =0x121
	bl	__Func_f9080
	pop	{r0}
	bx	r0
.func_end OvlFunc_18b4

.thumb_func_start OvlFunc_18f4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r1, #0x70
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_17d8
	mov	r1, #0x50
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xb
	bl	OvlFunc_17d8
	ldr	r0, =0x301
	bl	__Func_79374
	mov	r0, #2
	bl	__Func_30f8
	bl	OvlFunc_1770
	ldr	r0, =0x121
	bl	__Func_f9080
	pop	{r0}
	bx	r0
.func_end OvlFunc_18f4

.thumb_func_start OvlFunc_1938
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L197a
	mov	r1, #3
	mov	r0, r6
	bl	__Func_92b08
	mov	r1, r5
	add	r1, #0x22
	mov	r3, #2
	strb	r3, [r1]
	add	r1, #1
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r2, r3
	strb	r2, [r1]
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r3, r7, #20
	add	r3, r2
	mov	r1, r8
	str	r3, [r5, #8]
	lsl	r3, r1, #20
	add	r3, r2
	str	r3, [r5, #0x10]
.L197a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1938

.thumb_func_start OvlFunc_1984
	push	{r5, r6, lr}
	ldr	r2, =ewram_240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r2, r0
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	ldr	r3, =0x5e
	sub	sp, #8
	cmp	r1, r3
	beq	.L199c
	b	.L1acc
.L199c:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #9
	bls	.L19ae
	b	.L1bc6
.L19ae:
	ldr	r2, =.L19b8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L19b8:
	.word	.L19e0
	.word	.L19e0
	.word	.L19e0
	.word	.L19e0
	.word	.L1a02
	.word	.L1a02
	.word	.L1a02
	.word	.L1a64
	.word	.L1a64
	.word	.L1a64
.L19e0:
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xf0
	mov	r2, #0xe8
	lsl	r0, #15
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_common0_70
	b	.L1bc6
.L1a02:
	mov	r0, #0x70
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a0e
	b	.L1bc6
.L1a0e:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1a1a
	b	.L1bc6
.L1a1a:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	ldr	r3, =ewram_240
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L1a38
	add	r0, #0x3f
	bl	__Func_79358
.L1a38:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a4a
	b	.L1bc6
.L1a4a:
	mov	r1, #0xc6
	mov	r2, #0x8c
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, =OvlFunc_cf8
	str	r3, [r0, #0x6c]
	b	.L1bc6
.L1a64:
	mov	r2, #0x8a
	lsl	r2, #18
	mov	r1, #0
	mov	r3, #0x14
	ldr	r0, =0x2820000
	bl	OvlFunc_common0_70
	mov	r3, #0
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x22
	mov	r2, #0xd
	mov	r3, #3
	bl	__Func_10704
	bl	OvlFunc_1770
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1aaa
	mov	r3, #0x17
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L1aaa:
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1ab6
	b	.L1bc6
.L1ab6:
	mov	r3, #0x1b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1f
	mov	r1, #0x27
	mov	r2, #2
	mov	r3, #1
	bl	__Func_10704
	b	.L1bc6
.L1acc:
	ldr	r3, =0x5f
	cmp	r1, r3
	bne	.L1bc6
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bgt	.L1bc6
	cmp	r3, #1
	blt	.L1bc6
	add	r0, #0x40
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1b14
	mov	r6, #4
	mov	r5, #0
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_528
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0x10
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_528
	b	.L1b1a
.L1b14:
	mov	r0, #9
	bl	OvlFunc_ba4
.L1b1a:
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1b4a
	mov	r6, #4
	mov	r5, #0
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_528
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_528
	b	.L1b50
.L1b4a:
	mov	r0, #0xa
	bl	OvlFunc_ba4
.L1b50:
	ldr	r0, =0x205
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L1b72
	mov	r3, #2
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0x13
	mov	r3, #4
	bl	OvlFunc_528
	b	.L1bc6
.L1b72:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1bb8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0xf
	mov	r3, #4
	mov	r0, #0
	str	r5, [sp, #4]
	bl	OvlFunc_528
	mov	r3, #0x10
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xf
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	b	.L1bc6
.L1bb8:
	mov	r0, #0xb
	bl	OvlFunc_ba4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_92b08
.L1bc6:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1984

.thumb_func_start OvlFunc_1bfc
	push	{lr}
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bfc

	.section .data

.L2414:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2414, (0x2420-0x2414)
.L2420:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2420, (0x2450-0x2420)
.L2450:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2450, (0x2624-0x2450)
.L2624:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2624
