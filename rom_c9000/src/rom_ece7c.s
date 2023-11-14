	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_ece7c
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	ldr	r3, =0xc3333
	mov	r2, #0x18
	bl	_Func_b82c4
	mov	r0, #0x1d
	bl	Func_30f8
	mov	r3, #4
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x18]
	bl	Func_d4604
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_ece7c

.thumb_func_start Func_eceac
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	ldr	r3, =0x73333
	mov	r2, #0x18
	bl	_Func_b82c4
	mov	r0, #0xc
	bl	Func_30f8
	mov	r3, #3
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x18]
	bl	Func_d4604
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_eceac

.thumb_func_start Func_ecedc
	push	{lr}
	mov	r1, #1
	bl	Func_ecef4
	pop	{r0}
	bx	r0
.func_end Func_ecedc

.thumb_func_start Func_ecee8
	push	{lr}
	mov	r1, #2
	bl	Func_ecef4
	pop	{r0}
	bx	r0
.func_end Func_ecee8

.thumb_func_start Func_ecef4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldmia	r3!, {r7}
	ldr	r2, =0x7828
	ldr	r3, [r3]
	mov	r5, r0
	mov	r8, r3
	add	r3, r7, r2
	str	r5, [r3]
	mov	r0, #0
	sub	sp, #0x10
	mov	r6, r1
	bl	Func_cd594
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lecf30	@ 0
	strh	r3, [r2]
	cmp	r6, #0
	bne	.Lecf48
	ldr	r0, =0x4f
	mov	r1, r7
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x50
	b	.Lecf5a

	.align	2, 0
.Lecf30:
	.word	0
	.pool

.Lecf48:
	cmp	r6, #1
	bne	.Lecf66
	ldr	r0, =0x4d
	mov	r1, r7
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x4e
.Lecf5a:
	ldr	r1, =ewram_10000
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Lecf7e
.Lecf66:
	ldr	r0, =0x4b
	mov	r1, r7
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x4c
	ldr	r1, =ewram_10000
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
.Lecf7e:
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r4, =0x7784
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r1, #0x90
	add	r2, r7, r4
	mov	r3, #0
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	cmp	r6, #1
	bne	.Lecfb0
	mov	r3, #0x80
	mov	r2, #0x24
	ldrsh	r1, [r5, r2]
	ldr	r0, [r5, #8]
	lsl	r3, #12
	mov	r2, #0x10
	bl	_Func_b82c4
	b	.Lecfbe
.Lecfb0:
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_b82c4
.Lecfbe:
	mov	r0, #0x10
	bl	Func_30f8
	ldr	r4, =0x7828
	add	r3, r7, r4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lecfe2
	mov	r3, #0
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
	b	.Lecff2
.Lecfe2:
	mov	r3, #0
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	Func_ed408
.Lecff2:
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r0, #0xd4
	str	r3, [sp, #8]
	bl	_Func_f9080
	mov	r5, #0
	mov	r6, #0x78
.Led004:
	cmp	r5, #3
	bgt	.Led012
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r8
	mov	r1, r7
	b	.Led030
.Led012:
	cmp	r5, #7
	bgt	.Led024
	mov	r2, #0xe1
	lsl	r2, #6
	add	r1, r7, r2
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r8
	b	.Led030
.Led024:
	cmp	r5, #0xb
	bgt	.Led03c
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r8
	ldr	r1, =ewram_10000
.Led030:
	mov	r2, #0
	mov	r3, #0
	ldr	r4, [sp, #8]
	bl	_call_via_r4
	b	.Led052
.Led03c:
	cmp	r5, #0xf
	bgt	.Led052
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r8
	ldr	r1, =ewram_13840
	mov	r2, #0
	mov	r3, #0
	ldr	r4, [sp, #8]
	bl	_call_via_r4
.Led052:
	mov	r3, r5
	sub	r3, #0x10
	cmp	r3, #3
	bhi	.Led068
	mov	r1, #0x80
	ldr	r3, =Func_8d8
	mov	r0, r8
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Led068:
	cmp	r5, #0x12
	bne	.Led072
	mov	r0, #0x86
	bl	_Func_bd7dc
.Led072:
	cmp	r5, #0x14
	bne	.Led08e
	ldr	r3, =0x77a8
	ldr	r4, =0x7828
	add	r2, r7, r3
	mov	r3, #8
	str	r3, [r2]
	add	r3, r7, r4
	ldr	r3, [r3]
	mov	r1, #4
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_b8228
.Led08e:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r3, =0x7824
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x15
	bne	.Led004
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ecef4

.thumb_func_start Func_ed104
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1eec
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r6, =0x7828
	ldr	r3, [r3]
	sub	sp, #0x2c
	mov	r10, r1
	str	r3, [sp, #0x14]
	add	r6, r10
	str	r0, [r6]
	mov	r0, #0
	ldr	r5, [r2, #8]
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Led170	@ 0x100
	mov	r1, r5
	strh	r3, [r2]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x51
	mov	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r1, #0x8c
	lsl	r1, #3
	ldr	r0, =0xc0
	add	r1, r10
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r3, [r6]
	mov	r2, sp
	add	r2, #0x18
	ldr	r0, [r3, #4]
	mov	r1, r2
	str	r2, [sp, #0x10]
	bl	Func_cef64
	b	.Led18c

	.align	2, 0
.Led170:
	.word	0x100
	.pool

.Led18c:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r10
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r3, [r6]
	add	r5, sp, #0x20
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r1, r5
	bl	Func_e3980
	ldr	r2, [r5]
	mov	r3, #0x40
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	mov	r7, #0xe1
	str	r3, [r1]
	lsl	r7, #7
	mov	r1, #0
	mov	r8, r1
	add	r7, r10
.Led1cc:
	bl	Func_4458
	ldr	r6, =0x1ff
	and	r6, r0
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r3, #0x80
	lsl	r3, #15
	str	r3, [r7]
	mov	r3, #0xe0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r5
	bl	Func_2322
	add	r6, #0x80
	mov	r3, r6
	mul	r3, r0
	asr	r3, #8
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	asr	r3, #9
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #7
	mov	r2, #1
	and	r3, r0
	add	r8, r2
	str	r3, [r7, #0x18]
	mov	r3, r8
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Led1cc
	ldr	r2, =0x77a8
	ldr	r1, =0x7828
	mov	r4, #0
	add	r2, r10
	mov	r3, #8
	add	r1, r10
	str	r3, [r2]
	str	r1, [sp, #0xc]
	str	r4, [sp, #8]
	mov	r9, r4
.Led232:
	mov	r2, r9
	cmp	r2, #0xa
	bne	.Led26a
	ldr	r3, =0x77a8
	mov	r4, #8
	add	r3, r10
	str	r4, [r3]
	mov	r0, #0xd4
	bl	_Func_bd7dc
	ldr	r1, [sp, #0xc]
	ldr	r3, [r1]
	mov	r1, #0
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_b8228
	ldr	r4, [sp, #0xc]
	ldr	r3, [r4]
	mov	r2, #8
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_d6888
.Led26a:
	mov	r3, r9
	cmp	r3, #7
	ble	.Led2f4
	cmp	r3, #0x1f
	bgt	.Led280
	lsl	r3, #1
	add	r3, r9
	lsl	r3, #2
	mov	r5, r3
	sub	r5, #0x60
	b	.Led288
.Led280:
	mov	r3, #0x88
	ldr	r4, [sp, #8]
	lsl	r3, #1
	sub	r5, r3, r4
.Led288:
	cmp	r5, #0
	ble	.Led2f4
	cmp	r5, #0x50
	ble	.Led296
	mov	r5, #0x50
	mov	r7, #2
	b	.Led298
.Led296:
	mov	r7, #3
.Led298:
	mov	r1, #0
	mov	r2, #0x70
	mov	r8, r1
	mov	r6, #0x32
	mov	r11, r2
.Led2a2:
	mov	r3, r8
	cmp	r3, #0
	bne	.Led2b8
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	str	r7, [sp]
	bl	Func_ed408
	b	.Led2c6
.Led2b8:
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	str	r7, [sp]
	bl	Func_ed408
.Led2c6:
	ldr	r4, =iwram_1f08
	ldr	r4, [r4]
	mov	r3, #0xe
	mov	r12, r4
	str	r4, [sp, #0x18]
	mov	r4, r11
	mov	r2, r6
	str	r3, [sp]
	mov	r1, r10
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x14]
	sub	r3, r4, r5
	bl	_call_via_r12
	mov	r0, #0x2e
	bl	Func_2dd8
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0xe
	cmp	r2, #2
	bne	.Led2a2
.Led2f4:
	ldr	r4, [sp, #0xc]
	ldr	r3, [r4]
	ldr	r1, [sp, #0x10]
	ldr	r0, [r3, #4]
	mov	r5, #0xe1
	bl	Func_cef64
	lsl	r5, #7
	mov	r1, #0
	mov	r8, r1
	add	r5, r10
.Led30a:
	mov	r2, r8
	lsr	r3, r2, #31
	add	r3, r8
	asr	r3, #1
	add	r3, #8
	cmp	r9, r3
	blt	.Led366
	ldr	r0, [r5, #0x18]
	cmp	r0, #0x1c
	bgt	.Led366
	mov	r1, #3
	bl	Func_af0_from_thumb
	mov	r3, #2
	ldrsh	r4, [r5, r3]
	mov	r1, #6
	ldrsh	r6, [r5, r1]
	cmp	r0, #6
	ble	.Led332
	mov	r0, #6
.Led332:
	ldr	r3, =.Leef88
	lsl	r2, r0, #1
	ldrh	r1, [r3, r2]
	mov	r3, #0x8c
	lsl	r3, #3
	add	r1, r10
	add	r1, r3
	ldr	r3, =.Leef96
	ldrh	r0, [r3, r2]
	lsr	r3, r0, #1
	sub	r2, r4, r3
	str	r0, [sp]
	sub	r3, r6, r3
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x14]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	mov	r0, r5
	mov	r1, #0x3e
	ldr	r2, =0xffffe000
	bl	Func_e3908
.Led366:
	mov	r4, #1
	add	r8, r4
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x10
	bne	.Led30a
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	mov	r2, r9
	cmp	r2, #7
	bgt	.Led38e
	mov	r0, #2
	mov	r1, #2
	bl	Func_e155c
	b	.Led396
.Led38e:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	Func_e155c
.Led396:
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r4, #1
	ldr	r3, [sp, #8]
	add	r9, r4
	add	r3, #6
	mov	r1, r9
	str	r3, [sp, #8]
	cmp	r1, #0x36
	beq	.Led3ba
	b	.Led232
.Led3ba:
	ldr	r0, =Func_cd260
	bl	Func_4278
	bl	Func_cdbc0
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_ed104

	.section .rodata

.Leef88:
	.incrom 0xeef88, 0xeef96
.Leef96:
	.incrom 0xeef96, 0xeefa4
