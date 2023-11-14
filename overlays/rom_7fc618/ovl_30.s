	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L1a8
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L1d8
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L1ec
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	push	{lr}
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_955b0
	mov	r0, #0x30
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_64
	push	{lr}
	mov	r0, #9
	mov	r1, #1
	mov	r2, #0
	bl	__Func_955b0
	mov	r0, #0x44
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_64

.thumb_func_start OvlFunc_7c
	push	{lr}
	mov	r0, #0xa
	mov	r1, #2
	mov	r2, #0
	bl	__Func_955b0
	mov	r0, #0x58
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_7c

.thumb_func_start OvlFunc_94
	push	{lr}
	mov	r0, #0xb
	mov	r1, #3
	mov	r2, #0
	bl	__Func_955b0
	mov	r0, #0x6c
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_94

.thumb_func_start OvlFunc_ac
	ldr	r0, =.L264
	bx	lr
.func_end OvlFunc_ac

.thumb_func_start OvlFunc_b4
	mov	r0, #0
	bx	lr
.func_end OvlFunc_b4

	.section .data

	.incbin "overlays/rom_7fc618/orig.bin", 0xc8, (0x1a8-0xc8)
.L1a8:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1a8, (0x1d8-0x1a8)
.L1d8:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1d8, (0x1ec-0x1d8)
.L1ec:
	.incbin "overlays/rom_7fc618/orig.bin", 0x1ec, (0x264-0x1ec)
.L264:
	.incbin "overlays/rom_7fc618/orig.bin", 0x264
