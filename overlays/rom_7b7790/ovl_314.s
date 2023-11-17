	.include "macros.inc"

.thumb_func_start OvlFunc_314
	ldr	r0, =.L778
	bx	lr
.func_end OvlFunc_314

.thumb_func_start OvlFunc_31c
	mov	r0, #0
	bx	lr
.func_end OvlFunc_31c

.thumb_func_start OvlFunc_320
	ldr	r0, =.L868
	bx	lr
.func_end OvlFunc_320

.thumb_func_start OvlFunc_328
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.L33e
	ldr	r0, =.L9c8
	b	.L348
.L33e:
	ldr	r5, =.L890
	mov	r0, r5
	bl	__Func_8b868
	mov	r0, r5
.L348:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_328

.thumb_func_start OvlFunc_35c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L37e
	mov	r0, #0x10
	mov	r1, #0xe
	bl	__Func_b0278
	b	.L39e
.L37e:
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	bne	.L390
	ldr	r0, =0x1817
	bl	__Func_92b94
	b	.L396
.L390:
	ldr	r0, =0x1a46
	bl	__Func_92b94
.L396:
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L39e:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_35c

.thumb_func_start OvlFunc_3bc
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L3de
	mov	r0, #0x11
	mov	r1, #0xf
	bl	__Func_b0278
	b	.L3fe
.L3de:
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	bne	.L3f0
	ldr	r0, =0x1819
	bl	__Func_92b94
	b	.L3f6
.L3f0:
	ldr	r0, =0x1a48
	bl	__Func_92b94
.L3f6:
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92f84
.L3fe:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3bc

.thumb_func_start OvlFunc_41c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L43e
	mov	r0, #0x12
	mov	r1, #0x10
	bl	__Func_b0278
	b	.L466
.L43e:
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	bne	.L458
	ldr	r0, =0x181b
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_92f84
	b	.L466
.L458:
	ldr	r0, =0x1a4a
	bl	__Func_92b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_93054
.L466:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_41c

.thumb_func_start OvlFunc_484
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r5, [r0, #6]
	bl	__Func_916b0
	ldr	r3, =0xffffe000
	add	r5, r3
	mov	r3, #0xc0
	lsl	r3, #8
	cmp	r5, r3
	bls	.L4a8
	mov	r0, #5
	mov	r1, #0x11
	bl	__Func_b3284
	b	.L4c8
.L4a8:
	ldr	r0, =0x895
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4ba
	ldr	r0, =0x181d
	bl	__Func_92b94
	b	.L4c0
.L4ba:
	ldr	r0, =0x1a4e
	bl	__Func_92b94
.L4c0:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_92f84
.L4c8:
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_484

.thumb_func_start OvlFunc_4e4
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1a3a
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_4e4

.thumb_func_start OvlFunc_504
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1a40
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_93054
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_504

.thumb_func_start OvlFunc_524
	push	{lr}
	bl	__Func_916b0
	ldr	r0, =0x1a64
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_93040
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #9
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_524

.thumb_func_start OvlFunc_570
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.L586
	ldr	r0, =.Ld4c
	b	.L588
.L586:
	ldr	r0, =.La28
.L588:
	pop	{r1}
	bx	r1
.func_end OvlFunc_570

.thumb_func_start OvlFunc_598
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
	cmp	r3, #4
	beq	.L5ba
	cmp	r3, #7
	bne	.L5c4
.L5ba:
	mov	r0, #0xf8
	lsl	r0, #16
	ldr	r2, =0x1a10000
	mov	r1, #0
	b	.L5e2
.L5c4:
	cmp	r3, #6
	bne	.L5ea
	mov	r5, #0x8e
	lsl	r5, #18
	mov	r0, #0xe6
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0x14
	lsl	r0, #17
	bl	OvlFunc_common0_70
	mov	r0, #0xf2
	lsl	r0, #17
	mov	r1, #0
	mov	r2, r5
.L5e2:
	mov	r3, #0x14
	bl	OvlFunc_common0_70
	b	.L5fc
.L5ea:
	cmp	r3, #8
	bne	.L5fc
	ldr	r0, =0x12f
	bl	__Func_79374
	mov	r0, #0xa
	mov	r1, #6
	bl	__Func_924d4
.L5fc:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_598

	.section .data

.L778:
	.incbin "overlays/rom_7b7790/orig.bin", 0x778, (0x868-0x778)
.L868:
	.incbin "overlays/rom_7b7790/orig.bin", 0x868, (0x890-0x868)
.L890:
	.incbin "overlays/rom_7b7790/orig.bin", 0x890, (0x9c8-0x890)
.L9c8:
	.incbin "overlays/rom_7b7790/orig.bin", 0x9c8, (0xa28-0x9c8)
.La28:
	.incbin "overlays/rom_7b7790/orig.bin", 0xa28, (0xd4c-0xa28)
.Ld4c:
	.incbin "overlays/rom_7b7790/orig.bin", 0xd4c
