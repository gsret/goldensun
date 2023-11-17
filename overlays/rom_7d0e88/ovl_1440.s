	.include "macros.inc"

.thumb_func_start OvlFunc_1440
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L1458
	ldr	r0, =.L2eac
	b	.L1482
.L1458:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L1462
	ldr	r0, =.L2ef4
	b	.L1482
.L1462:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L146c
	ldr	r0, =.L2f3c
	b	.L1482
.L146c:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L1476
	ldr	r0, =.L2f84
	b	.L1482
.L1476:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L1480
	ldr	r0, =.L2fcc
	b	.L1482
.L1480:
	ldr	r0, =.L2e7c
.L1482:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1440

.thumb_func_start OvlFunc_14b8
	mov	r0, #0
	bx	lr
.func_end OvlFunc_14b8

.thumb_func_start OvlFunc_14bc
	ldr	r0, =.L3014
	bx	lr
.func_end OvlFunc_14bc

.thumb_func_start OvlFunc_14c4
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L14dc
	ldr	r0, =.L306c
	b	.L14fc
.L14dc:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L14e6
	ldr	r0, =.L30e4
	b	.L14fc
.L14e6:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L14f0
	ldr	r0, =.L3174
	b	.L14fc
.L14f0:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L14fa
	ldr	r0, =.L32dc
	b	.L14fc
.L14fa:
	ldr	r0, =.L3264
.L14fc:
	pop	{r1}
	bx	r1
.func_end OvlFunc_14c4

	.section .data

.L2e7c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e7c, (0x2eac-0x2e7c)
.L2eac:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2eac, (0x2ef4-0x2eac)
.L2ef4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ef4, (0x2f3c-0x2ef4)
.L2f3c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f3c, (0x2f84-0x2f3c)
.L2f84:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f84, (0x2fcc-0x2f84)
.L2fcc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2fcc, (0x3014-0x2fcc)
.L3014:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3014, (0x306c-0x3014)
.L306c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x306c, (0x30e4-0x306c)
.L30e4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x30e4, (0x3174-0x30e4)
.L3174:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3174, (0x3264-0x3174)
.L3264:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3264, (0x32dc-0x3264)
.L32dc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x32dc, (0x339c-0x32dc)
