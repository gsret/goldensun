	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.Lc8
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L110
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L11c
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	ldr	r0, =.L134
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_54
	push	{lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xa2
	add	r2, #0x44
	lsl	r0, #1
	str	r2, [r3]
	bl	__Func_79358
	ldr	r0, =0x814
	bl	__Func_79338
	cmp	r0, #0
	beq	.L90
	mov	r0, #0x8d
	bl	__Func_91ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_12330
	bl	__Func_9509c
.L90:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_54

	.section .data

.Lc8:
	.incbin "overlays/rom_78dc80/orig.bin", 0xc8, (0x110-0xc8)
.L110:
	.incbin "overlays/rom_78dc80/orig.bin", 0x110, (0x11c-0x110)
.L11c:
	.incbin "overlays/rom_78dc80/orig.bin", 0x11c, (0x134-0x11c)
.L134:
	.incbin "overlays/rom_78dc80/orig.bin", 0x134
