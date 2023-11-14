	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L2f0
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L3c8
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	push	{lr}
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54
	ldr	r0, =.L4e0
	b	.L56
.L54:
	ldr	r0, =.L3f0
.L56:
	pop	{r1}
	bx	r1
.func_end OvlFunc_44

.thumb_func_start OvlFunc_68
	push	{r5, r6, lr}
	ldr	r5, =0x25b8
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L96
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.L9c
.L96:
	add	r0, r5, #2
	bl	__Func_92b94
.L9c:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_68

.thumb_func_start OvlFunc_b0
	push	{r5, r6, lr}
	ldr	r5, =0x25dc
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Lde
	mov	r0, #0xa
	bl	__Func_9163c
	add	r0, r5, #1
	bl	__Func_92b94
	b	.Le4
.Lde:
	add	r0, r5, #2
	bl	__Func_92b94
.Le4:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b0

.thumb_func_start OvlFunc_f8
	push	{lr}
	sub	sp, #8
	mov	r3, #4
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x19
	bl	__Func_10704
	ldr	r0, =0x201
	bl	__Func_79358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_f8

.thumb_func_start OvlFunc_120
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r1]
	lsl	r2, #1
	add	r3, r2
	mov	r8, r1
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r2, =.L5d0
	lsl	r3, r1, #2
	mov	r10, r1
	ldrsh	r6, [r2, r3]
	add	r3, #2
	ldrsh	r5, [r2, r3]
	lsl	r6, #16
	lsl	r5, #16
	mov	r0, #0x9e
	lsr	r6, #16
	lsr	r5, #16
	bl	__Func_f9080
	mov	r1, r6
	mov	r2, r5
	ldr	r0, =.L5e8
	bl	__Func_10560
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_922c4
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #0xe4
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r10
	bl	__Func_91e9c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_120

.thumb_func_start OvlFunc_194
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r1]
	lsl	r2, #1
	add	r3, r2
	mov	r8, r1
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r2, =.L5d0
	lsl	r3, r1, #2
	mov	r10, r1
	ldrsh	r6, [r2, r3]
	add	r3, #2
	ldrsh	r5, [r2, r3]
	lsl	r6, #16
	lsl	r5, #16
	mov	r0, #0x9e
	lsr	r6, #16
	lsr	r5, #16
	bl	__Func_f9080
	mov	r1, r6
	mov	r2, r5
	ldr	r0, =.L5fe
	bl	__Func_10560
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_922c4
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #0xe4
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r10
	bl	__Func_91e9c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_194

.thumb_func_start OvlFunc_208
	push	{lr}
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.L218
	ldr	r0, =.L758
	b	.L21a
.L218:
	ldr	r0, =.L614
.L21a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_208

.thumb_func_start OvlFunc_22c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x5a
	bne	.L244
	ldr	r0, =0x96f
	bl	__Func_79358
.L244:
	ldr	r3, =iwram_1ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L270
	bl	OvlFunc_f8
	mov	r0, #0x10
	mov	r1, #4
	bl	__Func_924d4
.L270:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_22c

	.section .data

.L2f0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x2f0, (0x3c8-0x2f0)
.L3c8:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x3c8, (0x3f0-0x3c8)
.L3f0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x3f0, (0x4e0-0x3f0)
.L4e0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x4e0, (0x5d0-0x4e0)
.L5d0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5d0, (0x5e8-0x5d0)
.L5e8:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5e8, (0x5fe-0x5e8)
.L5fe:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5fe, (0x614-0x5fe)
.L614:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x614, (0x758-0x614)
.L758:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x758
