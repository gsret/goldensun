	.include "macros.inc"

.thumb_func_start OvlFunc_d58
	push	{r5, r6, r7, lr}
	sub	sp, #4
	ldr	r3, =0
	mov	r5, sp
	add	r5, #2
	strh	r3, [r5]
	ldr	r3, =iwram_1e40
	mov	r1, #5
	ldr	r0, [r3]
	bl	_Func_b50
	cmp	r0, #0
	bne	.Lde2
	ldr	r3, =.L6004
	ldr	r2, [r3]
	mov	r1, #0x1f
	add	r2, #4
	and	r2, r1
	str	r2, [r3]
	mov	r6, #0
	mov	r7, r5
	b	.Ld90

	.pool_aligned

.Ld90:
.Ld90:
	mov	r3, #0x6e
	sub	r3, r6
	mov	r2, #0xa0
	lsl	r2, #19
	lsl	r3, #1
	add	r3, r2
	ldrh	r2, [r3]
	mov	r3, #0x1f
	and	r3, r2
	strh	r3, [r7]
	ldrh	r5, [r7]
	cmp	r6, #2
	bhi	.Ldb4
	lsl	r0, r5, #2
	mov	r1, #0xa
	bl	_Func_af0
	sub	r5, r0
.Ldb4:
	mov	r2, #0x6f
	sub	r2, r6
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r2, #1
	add	r2, r3
	ldr	r3, =.L600c
	ldr	r3, [r3]
	lsl	r1, r3, #10
	ldr	r3, =.L6008
	ldr	r3, [r3]
	lsl	r3, #5
	orr	r1, r3
	orr	r5, r1
	add	r6, #1
	strh	r5, [r2]
	cmp	r6, #5
	bls	.Ld90
	ldr	r3, =.L6004
	ldr	r3, [r3]
	ldr	r2, =0x50000d2
	orr	r3, r1
	strh	r3, [r2]
.Lde2:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d58

.thumb_func_start OvlFunc_dfc
	push	{lr}
	ldr	r1, =0
	ldr	r3, =0x50000de
	mov	r2, #0
	b	.Le10

	.pool_aligned

.Le10:
	add	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #6
	bls	.Le10
	pop	{r0}
	bx	r0
.func_end OvlFunc_dfc

	.section .data

.L6004:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6004, (0x6008-0x6004)
.L6008:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6008, (0x600c-0x6008)
.L600c:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x600c, (0x6010-0x600c)
