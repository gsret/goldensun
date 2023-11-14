	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L18cc
	b	.L5e
.L48:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L1a34
	b	.L5e
.L52:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.L5c
	ldr	r0, =.L1b9c
	b	.L5e
.L5c:
	ldr	r0, =.L189c
.L5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_30

.thumb_func_start OvlFunc_84
	ldr	r0, =.L1c5c
	bx	lr
.func_end OvlFunc_84

.thumb_func_start OvlFunc_8c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.La4
	ldr	r0, =.L1c80
	b	.Lba
.La4:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.Lae
	ldr	r0, =.L1cc0
	b	.Lba
.Lae:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.Lb8
	ldr	r0, =.L1cfc
	b	.Lba
.Lb8:
	ldr	r0, =.L1c7c
.Lba:
	pop	{r1}
	bx	r1
.func_end OvlFunc_8c

.thumb_func_start OvlFunc_e0
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.Lf8
	ldr	r0, =.L1d34
	b	.L10e
.Lf8:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.L102
	ldr	r0, =.L1d4c
	b	.L10e
.L102:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.L10c
	ldr	r0, =.L1ecc
	b	.L10e
.L10c:
	ldr	r0, =.L1d1c
.L10e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e0

.thumb_func_start OvlFunc_134
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r2, r3
	mov	r5, r0
	mov	r4, #8
	add	r2, #0x34
.L142:
	ldmia	r2!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r5, r3
	bne	.L15e
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r1, r3
	bne	.L15e
	mov	r3, r0
	add	r3, #0x59
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L166
.L15e:
	add	r4, #1
	cmp	r4, #0x41
	bls	.L142
	mov	r0, #0
.L166:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_134

	.section .data

.L189c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x189c, (0x18cc-0x189c)
.L18cc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x18cc, (0x1a34-0x18cc)
.L1a34:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1a34, (0x1b9c-0x1a34)
.L1b9c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1b9c, (0x1c5c-0x1b9c)
.L1c5c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c5c, (0x1c7c-0x1c5c)
.L1c7c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c7c, (0x1c80-0x1c7c)
.L1c80:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1c80, (0x1cc0-0x1c80)
.L1cc0:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1cc0, (0x1cfc-0x1cc0)
.L1cfc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1cfc, (0x1d1c-0x1cfc)
.L1d1c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d1c, (0x1d34-0x1d1c)
.L1d34:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d34, (0x1d4c-0x1d34)
.L1d4c:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1d4c, (0x1ecc-0x1d4c)
.L1ecc:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1ecc, (0x1f8c-0x1ecc)
