	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_18a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L26d0
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	ldr	r2, =iwram_1b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	sub	sp, #0xc
	lsr	r3, #5
	str	r3, [sp, #8]
	ldr	r3, =.L3030
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L18da
	ldr	r2, =.L26be
	ldr	r3, .L18f8	@ 2
	mov	r4, r2
	strh	r3, [r2]
	b	.L1932
.L18da:
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L190c
	ldr	r4, =.L26be
	mov	r5, #0
	ldrsh	r3, [r4, r5]
	ldrh	r2, [r4]
	cmp	r3, #0
	ble	.L1932
	sub	r3, r2, #1
	strh	r3, [r4]
	b	.L1932

	.align	2, 0
.L18f8:
	.word	2
	.pool

.L190c:
	ldr	r4, =.L26be
	mov	r0, #0
	ldrsh	r3, [r4, r0]
	ldrh	r2, [r4]
	cmp	r3, #1
	bgt	.L1932
	add	r3, r2, #1
	mov	r1, #0x80
	strh	r3, [r4]
	lsl	r1, #9
	lsl	r3, #16
	cmp	r3, r1
	bne	.L1932
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =OvlData_1f80
	ldr	r1, =0x50003c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L1932:
	mov	r2, #0
	ldrsh	r0, [r4, r2]
	cmp	r0, #0
	bne	.L1960
	ldr	r3, =.L26d0
	mov	r5, #0
	ldrsh	r0, [r3, r5]
	bl	__Func_3f78
	b	.L1be4

	.pool_aligned

.L1960:
	ldr	r3, =iwram_1ecc
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L198c
	ldr	r2, =0x539
	add	r3, r1, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r1, r3
	lsl	r3, r0, #19
	asr	r2, r3, #16
	add	r1, #0x26
	mov	r4, #0
.L1982:
	add	r4, #1
	strh	r2, [r1]
	add	r1, #4
	cmp	r4, #0x8f
	bls	.L1982
.L198c:
	mov	r0, #0x90
	lsl	r0, #4
	bl	__Func_4938
	mov	r9, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =OvlData_1f80
	mov	r1, r9
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r9
	add	r3, #0xc
	ldr	r5, .L19e4	@ 0x1f
	str	r3, [sp, #4]
	mov	r10, r3
	mov	r4, #6
	mov	r11, r5
.L19b0:
	mov	r1, r10
	mov	r0, #0
	ldrsh	r2, [r1, r0]
	mov	r3, #0xf8
	lsl	r2, #16
	lsl	r3, #13
	and	r3, r2
	lsr	r3, #16
	mov	r8, r3
	lsr	r5, r2, #21
	mov	r3, r11
	lsr	r2, #26
	and	r2, r3
	and	r5, r3
	ldr	r3, =.L26bc
	mov	r0, #0
	ldrsh	r6, [r3, r0]
	mov	r1, #3
	mov	r0, r6
	mov	r7, r2
	str	r4, [sp]
	bl	_Func_af0
	mov	r1, #6
	add	r8, r0
	b	.L1a00

	.align	2, 0
.L19e4:
	.word	0x1f
	.pool

.L1a00:
	mov	r0, r6
	bl	_Func_af0
	sub	r7, #0x14
	sub	r0, r7, r0
	mov	r7, r0
	add	r7, #0x14
	ldr	r4, [sp]
	cmp	r6, #0x3c
	ble	.L1a30
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1a30
	lsl	r0, r6, #6
	mov	r1, #0x78
	bl	_Func_af0
	add	r0, r5, r0
	mov	r5, r0
	ldr	r4, [sp]
	sub	r5, #0x20
.L1a30:
	mov	r1, r8
	cmp	r1, #0x1f
	bls	.L1a3a
	mov	r2, #0x1f
	mov	r8, r2
.L1a3a:
	cmp	r5, #0x1f
	bls	.L1a40
	mov	r5, #0x1f
.L1a40:
	cmp	r7, #0x1f
	bls	.L1a46
	mov	r7, #0x1f
.L1a46:
	lsl	r2, r5, #5
	lsl	r3, r7, #10
	orr	r3, r2
	mov	r5, r8
	mov	r0, r10
	orr	r3, r5
	mov	r1, #2
	add	r4, #1
	strh	r3, [r0]
	add	r10, r1
	cmp	r4, #0xb
	bls	.L19b0
	ldr	r2, [sp, #4]
	ldr	r5, =0x50003cc
	mov	r6, r9
	ldr	r1, [r2]
	mov	r0, r5
	add	r6, #0x10
	add	r5, #4
	bl	__Func_38bc
	mov	r0, r5
	ldr	r1, [r6]
	add	r5, #4
	add	r6, #4
	bl	__Func_38bc
	ldr	r1, [r6]
	mov	r0, r5
	bl	__Func_38bc
	ldr	r2, =ewram_240
	ldr	r0, =0x232
	add	r3, r2, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r0, r3, #4
	sub	r0, r3
	mov	r3, #0x8b
	lsl	r3, #2
	add	r2, r3
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	lsl	r0, #3
	bl	_Func_af0
	ldr	r5, =.L26bc
	mov	r1, #0xec
	strh	r0, [r5]
	lsl	r1, #15
	lsl	r0, #16
	cmp	r0, r1
	ble	.L1ab6
	ldr	r2, =.L26c0
	ldr	r3, .L1ae0	@ 0x77
	strh	r3, [r2]
.L1ab6:
	ldr	r1, =.L26c0
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldrh	r2, [r1]
	cmp	r3, #0
	beq	.L1ad4
	mov	r3, r2
	sub	r3, #8
	strh	r2, [r5]
	strh	r3, [r1]
	lsl	r3, #16
	cmp	r3, #0
	bgt	.L1ad4
	ldr	r3, .L1ae4	@ 0
	strh	r3, [r1]
.L1ad4:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L2730
	mov	r1, r9
	ldr	r2, =0x84000240
	b	.L1b0c

	.align	2, 0
.L1ae0:
	.word	0x77
.L1ae4:
	.word	0
	.pool

.L1b0c:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =.L26c0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x76
	bgt	.L1b52
	ldr	r3, =.L26bc
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	mov	r3, #0x80
	mov	r1, r9
	mov	r4, #0xc
	sub	r3, r2
	add	r1, #0x50
	ldr	r0, =0xeeeeeeee
	cmp	r4, r3
	bcs	.L1b48
	mov	r2, #7
	mov	r12, r3
.L1b34:
	mov	r3, r4
	and	r3, r2
	str	r0, [r1, #0x20]
	stmia	r1!, {r0}
	cmp	r3, #7
	bne	.L1b42
	add	r1, #0x20
.L1b42:
	add	r4, #1
	cmp	r4, r12
	bcc	.L1b34
.L1b48:
	mov	r0, r9
	ldr	r3, [r0]
	str	r3, [r1]
	ldr	r3, [r0, #0x20]
	str	r3, [r1, #0x20]
.L1b52:
	mov	r2, #0x90
	lsl	r2, #3
	ldr	r0, =0x47f
	mov	r1, r9
	add	r2, r9
	mov	r4, #0
.L1b5e:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r3, #0
	beq	.L1b68
	strb	r3, [r1]
.L1b68:
	add	r4, #1
	add	r1, #1
	cmp	r4, r0
	bls	.L1b5e
	ldr	r3, =.L26d0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #0x90
	mov	r2, r9
	lsl	r1, #3
	bl	__Func_3fa4
	ldr	r2, =0x80008000
	ldr	r5, =.L26e0
	mov	r8, r2
	mov	r4, #0
	mov	r7, #0
	mov	r6, #8
.L1b8c:
	ldr	r3, =.L26be
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	lsl	r3, #3
	mov	r2, r3
	ldr	r3, =0x1ff
	sub	r2, #0x10
	and	r2, r3
	cmp	r4, #4
	bne	.L1ba6
	mov	r1, #0x80
	lsl	r1, #23
	mov	r8, r1
.L1ba6:
	mov	r3, #0
	str	r3, [r5]
	lsl	r3, r2, #16
	orr	r3, r6
	mov	r2, r8
	orr	r3, r2
	str	r3, [r5, #4]
	ldr	r0, [sp, #8]
	mov	r3, #0xe4
	lsl	r3, #8
	orr	r3, r0
	ldr	r0, =.L26e0
	str	r3, [r5, #8]
	add	r0, r7, r0
	mov	r1, #0xff
	str	r4, [sp]
	bl	__Func_3dec
	ldr	r1, [sp, #8]
	ldr	r4, [sp]
	add	r1, #8
	add	r4, #1
	add	r5, #0xc
	str	r1, [sp, #8]
	add	r7, #0xc
	add	r6, #0x20
	cmp	r4, #4
	bls	.L1b8c
	mov	r0, r9
	bl	__Func_2df0
.L1be4:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_18a4

.thumb_func_start OvlFunc_1c1c
	push	{r5, lr}
	ldr	r1, =.L2730
	ldr	r0, =OvlData_1fa0
	bl	__Func_5340
	ldr	r5, =.L26d0
	bl	__Func_4080
	mov	r1, #0x90
	strh	r0, [r5]
	lsl	r0, #16
	lsl	r1, #3
	mov	r2, #0
	asr	r0, #16
	bl	__Func_3fa4
	ldr	r2, .L1c50	@ 0
	ldr	r3, =.L26be
	strh	r2, [r3]
	ldr	r3, =.L3030
	ldr	r1, =0xc76
	strh	r2, [r3]
	ldr	r0, =OvlFunc_18a4
	bl	__Func_41d8
	b	.L1c70

	.align	2, 0
.L1c50:
	.word	0
	.pool

.L1c70:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c1c

.thumb_func_start OvlFunc_1c78
	ldr	r3, =.L3030
	strh	r0, [r3]
	bx	lr
.func_end OvlFunc_1c78

	.section .data

.L26bc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26bc, (0x26be-0x26bc)
.L26be:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26be, (0x26c0-0x26be)
.L26c0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26c0

	.section .bss

	.lcomm	.Lunused_26c8, 8
	.lcomm	.L26d0, 0x10
	.lcomm	.L26e0, 0x50
	.lcomm	.L2730, 0x900
	.lcomm	.L3030, 4
