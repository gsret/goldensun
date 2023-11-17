	.include "macros.inc"

.thumb_func_start OvlFunc_e20
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x39
	cmp	r2, r3
	bne	.Le38
	ldr	r0, =.L650c
	b	.Le4e
.Le38:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Le42
	ldr	r0, =.L635c
	b	.Le4e
.Le42:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Le4c
	ldr	r0, =.L623c
	b	.Le4e
.Le4c:
	ldr	r0, =.L60ec
.Le4e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e20

.thumb_func_start OvlFunc_e74
	mov	r0, #0
	bx	lr
.func_end OvlFunc_e74

.thumb_func_start OvlFunc_e78
	ldr	r0, =.L6614
	bx	lr
.func_end OvlFunc_e78

.thumb_func_start OvlFunc_e80
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.Le98
	ldr	r0, =.L6700
	b	.Leb8
.Le98:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lea2
	ldr	r0, =.L67a8
	b	.Leb8
.Lea2:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Leac
	ldr	r0, =.L6838
	b	.Leb8
.Leac:
	ldr	r3, =0x39
	cmp	r2, r3
	bne	.Leb6
	ldr	r0, =.L6988
	b	.Leb8
.Leb6:
	ldr	r0, =.L66e8
.Leb8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e80

.thumb_func_start OvlFunc_ee4
	push	{lr}
	bl	OvlFunc_5900
	pop	{r0}
	bx	r0
.func_end OvlFunc_ee4

.thumb_func_start OvlFunc_ef0
	push	{lr}
	bl	OvlFunc_5578
	pop	{r0}
	bx	r0
.func_end OvlFunc_ef0

.thumb_func_start OvlFunc_efc
	push	{lr}
	bl	OvlFunc_55c0
	pop	{r0}
	bx	r0
.func_end OvlFunc_efc

.thumb_func_start OvlFunc_f08
	push	{lr}
	bl	OvlFunc_5458
	pop	{r0}
	bx	r0
.func_end OvlFunc_f08

.thumb_func_start OvlFunc_f14
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1637
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f14

.thumb_func_start OvlFunc_f30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.Lf48
	ldr	r0, =.L6ad8
	b	.Lf5e
.Lf48:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lf52
	ldr	r0, =.L6c10
	b	.Lf5e
.Lf52:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Lf5c
	ldr	r0, =.L6d60
	b	.Lf5e
.Lf5c:
	ldr	r0, =.L6ec8
.Lf5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_f30

	.section .data

.L60ec:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x60ec, (0x623c-0x60ec)
.L623c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x623c, (0x635c-0x623c)
.L635c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x635c, (0x650c-0x635c)
.L650c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x650c, (0x6614-0x650c)
.L6614:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6614, (0x66e8-0x6614)
.L66e8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x66e8, (0x6700-0x66e8)
.L6700:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6700, (0x67a8-0x6700)
.L67a8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x67a8, (0x6838-0x67a8)
.L6838:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6838, (0x6988-0x6838)
.L6988:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6988, (0x6ad8-0x6988)
.L6ad8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6ad8, (0x6c10-0x6ad8)
.L6c10:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6c10, (0x6d60-0x6c10)
.L6d60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6d60, (0x6ec8-0x6d60)
.L6ec8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6ec8
