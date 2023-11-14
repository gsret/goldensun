	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.Lc0
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L120
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	ldr	r0, =.L130
	bx	lr
.func_end OvlFunc_44

.thumb_func_start OvlFunc_4c
	ldr	r0, =.L148
	bx	lr
.func_end OvlFunc_4c

.thumb_func_start OvlFunc_54
	push	{lr}
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
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

.Lc0:
	.incbin "overlays/rom_78dd40/orig.bin", 0xc0, (0x120-0xc0)
.L120:
	.incbin "overlays/rom_78dd40/orig.bin", 0x120, (0x130-0x120)
.L130:
	.incbin "overlays/rom_78dd40/orig.bin", 0x130, (0x148-0x130)
.L148:
	.incbin "overlays/rom_78dd40/orig.bin", 0x148
