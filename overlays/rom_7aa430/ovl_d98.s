	.include "macros.inc"

.thumb_func_start OvlFunc_d98
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
	bne	.Le22
	ldr	r3, =.L291c
	ldr	r2, [r3]
	mov	r1, #0x1f
	add	r2, #4
	and	r2, r1
	str	r2, [r3]
	mov	r6, #0
	mov	r7, r5
	b	.Ldd0

	.pool_aligned

.Ldd0:
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
	bhi	.Ldf4
	lsl	r0, r5, #2
	mov	r1, #0xa
	bl	_Func_af0
	sub	r5, r0
.Ldf4:
	mov	r2, #0x6f
	sub	r2, r6
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r2, #1
	add	r2, r3
	ldr	r3, =.L2924
	ldr	r3, [r3]
	lsl	r1, r3, #10
	ldr	r3, =.L2920
	ldr	r3, [r3]
	lsl	r3, #5
	orr	r1, r3
	orr	r5, r1
	add	r6, #1
	strh	r5, [r2]
	cmp	r6, #5
	bls	.Ldd0
	ldr	r3, =.L291c
	ldr	r3, [r3]
	ldr	r2, =0x50000d2
	orr	r3, r1
	strh	r3, [r2]
.Le22:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_d98

.thumb_func_start OvlFunc_e3c
	push	{lr}
	ldr	r1, =0
	ldr	r3, =0x50000de
	mov	r2, #0
	b	.Le50

	.pool_aligned

.Le50:
	add	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #6
	bls	.Le50
	pop	{r0}
	bx	r0
.func_end OvlFunc_e3c

.thumb_func_start OvlFunc_e60
	push	{lr}
	bl	OvlFunc_2370
	pop	{r0}
	bx	r0
.func_end OvlFunc_e60

.thumb_func_start OvlFunc_e6c
	push	{lr}
	bl	OvlFunc_1fe8
	pop	{r0}
	bx	r0
.func_end OvlFunc_e6c

.thumb_func_start OvlFunc_e78
	push	{lr}
	bl	OvlFunc_2030
	pop	{r0}
	bx	r0
.func_end OvlFunc_e78

.thumb_func_start OvlFunc_e84
	push	{lr}
	bl	OvlFunc_1ec8
	pop	{r0}
	bx	r0
.func_end OvlFunc_e84

	.section .data

.L291c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x291c, (0x2920-0x291c)
.L2920:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2920, (0x2924-0x2920)
.L2924:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2924, (0x2928-0x2924)
