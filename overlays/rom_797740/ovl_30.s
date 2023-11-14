	.include "macros.inc"

.thumb_func_start OvlFunc_30
	ldr	r0, =.L2d0
	bx	lr
.func_end OvlFunc_30

.thumb_func_start OvlFunc_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_38

.thumb_func_start OvlFunc_3c
	ldr	r0, =.L348
	bx	lr
.func_end OvlFunc_3c

.thumb_func_start OvlFunc_44
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L5a
	ldr	r0, =.L3bc
	b	.L5c
.L5a:
	ldr	r0, =.L35c
.L5c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_44

.thumb_func_start OvlFunc_6c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L82
	ldr	r0, =.L4a0
	b	.L84
.L82:
	ldr	r0, =.L3ec
.L84:
	pop	{r1}
	bx	r1
.func_end OvlFunc_6c

.thumb_func_start OvlFunc_94
	push	{lr}
	bl	__Func_916b0
	mov	r1, #9
	mov	r2, #0
	mov	r0, #8
	bl	__Func_9280c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #8
	bl	__Func_9280c
	mov	r0, #0x28
	bl	__Func_9163c
	ldr	r0, =0x138a
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #9
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92848
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_94

.thumb_func_start OvlFunc_110
	push	{lr}
	bl	__Func_916b0
	mov	r1, #2
	mov	r0, #9
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1388
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_110

.thumb_func_start OvlFunc_140
	push	{lr}
	bl	__Func_916b0
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r0, =0x1389
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_140

.thumb_func_start OvlFunc_170
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x138e
	bl	__Func_92b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_170

.thumb_func_start OvlFunc_190
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x138c
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_190

.thumb_func_start OvlFunc_1b0
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x138d
	bl	__Func_92b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b0

.thumb_func_start OvlFunc_1d0
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d0

.thumb_func_start OvlFunc_1e4
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
	cmp	r3, #2
	bne	.L20a
	ldr	r0, =0x12f
	bl	__Func_79374
	b	.L24c
.L20a:
	cmp	r3, #0xa
	bne	.L220
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x14
	orr	r3, r2
	strb	r3, [r0]
	b	.L24c
.L220:
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x14
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
.L24c:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1e4

	.section .data

.L2d0:
	.incbin "overlays/rom_797740/orig.bin", 0x2d0, (0x348-0x2d0)
.L348:
	.incbin "overlays/rom_797740/orig.bin", 0x348, (0x35c-0x348)
.L35c:
	.incbin "overlays/rom_797740/orig.bin", 0x35c, (0x3bc-0x35c)
.L3bc:
	.incbin "overlays/rom_797740/orig.bin", 0x3bc, (0x3ec-0x3bc)
.L3ec:
	.incbin "overlays/rom_797740/orig.bin", 0x3ec, (0x4a0-0x3ec)
.L4a0:
	.incbin "overlays/rom_797740/orig.bin", 0x4a0
