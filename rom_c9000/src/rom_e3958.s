	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_e3958
	push	{r5, lr}
	mov	r5, r1
	bl	Func_e3994
	ldr	r3, [r5, #4]
	sub	r3, #0x10
	str	r3, [r5, #4]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_e3958

.thumb_func_start Func_e396c
	push	{r5, lr}
	mov	r5, r1
	bl	_Func_b845c
	ldr	r3, [r5, #4]
	sub	r3, #0x10
	str	r3, [r5, #4]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_e396c

.thumb_func_start Func_e3980
	push	{r5, lr}
	mov	r5, r1
	bl	_Func_b7f20
	ldr	r3, [r5, #4]
	sub	r3, #0x10
	str	r3, [r5, #4]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_e3980

.thumb_func_start Func_e3994
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_1e80
	sub	sp, #0xc
	ldr	r6, [r3]
	mov	r8, r1
	mov	r9, r0
	bl	_Func_b7dd0
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	_Func_b7f70
	mov	r10, r0
	bl	Func_49ac
	mov	r1, r6
	mov	r0, r6
	add	r1, #0xc
	add	r5, #8
	bl	Func_51d8
	mov	r1, r8
	mov	r0, r5
	bl	Func_5268
	mov	r2, r10
	ldr	r5, =Func_888
	ldr	r1, [r2, #0x18]
	.align	2, 0
	mov	r12, pc
	bx	r5
	mov	r6, r0
	mov	r0, r9
	bl	_Func_b8530
	mov	r1, r0
	asr	r1, #17
	mov	r0, r6
	.align	2, 0
	mov	r12, pc
	bx	r5
	mov	r2, r8
	ldr	r3, [r2, #4]
	sub	r3, r0
	str	r3, [r2, #4]
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_e3994

.thumb_func_start Func_e3a14
	push	{lr}
	ldr	r3, =iwram_1eec
	ldr	r2, =0x7828
	ldr	r3, [r3]
	add	r3, r2
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x7f
	ble	.Le3a2c
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
.Le3a2c:
	pop	{r0}
	bx	r0
.func_end Func_e3a14

.thumb_func_start Func_e3a3c
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, =0x60e
	mov	r0, #0x29
	bl	Func_48f4
	ldr	r1, =0x782c
	mov	r0, #0x27
	bl	Func_48b0
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0x28
	bl	Func_48b0
	ldr	r3, [r5]
	mov	r1, r3
	sub	r1, #0x64
	cmp	r1, #0x23
	bhi	.Le3a6c
	mov	r0, r5
	bl	Func_e47b8
	b	.Le3a7e
.Le3a6c:
	cmp	r3, #0xc7
	ble	.Le3a78
	mov	r0, r5
	bl	Func_e40a4
	b	.Le3a7e
.Le3a78:
	mov	r0, r5
	bl	Func_e3aa0
.Le3a7e:
	mov	r0, #0x28
	bl	Func_2dd8
	mov	r0, #0x27
	bl	Func_2dd8
	mov	r0, #0x29
	bl	Func_2dd8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_e3a3c

.thumb_func_start Func_e3aa0
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
	ldr	r3, [r3]
	sub	sp, #0x5c
	str	r3, [sp, #0x2c]
	ldr	r3, [r2, #8]
	str	r3, [sp, #0x24]
	sub	r2, #0x6c
	ldr	r2, [r2]
	str	r2, [sp, #0x20]
	ldr	r5, [r0]
	str	r5, [sp, #0x1c]
	ldr	r5, =0x7828
	mov	r11, r1
	add	r5, r11
	str	r0, [r5]
	ldr	r0, [r0, #8]
	bl	_Func_77394
	str	r0, [sp, #0x18]
	mov	r0, #1
	bl	Func_30f8
	bl	Func_c9048
	bl	Func_cdd58
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Le3b04	@ 0x1f80
	mov	r0, #1
	strh	r3, [r2]
	bl	Func_30f8
	ldr	r6, [sp, #0x1c]
	cmp	r6, #5
	bne	.Le3b58
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3b36
	b	.Le3b14

	.align	2, 0
.Le3b04:
	.word	0x1f80
	.pool

.Le3b14:
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	mov	r0, #0x2e
	bl	Func_ed408
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	bl	Func_ed408
	b	.Le3ba0
.Le3b36:
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	mov	r0, #0x2e
	bl	Func_ed408
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	bl	Func_ed408
	b	.Le3ba0
.Le3b58:
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3b80
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	Func_ed408
	b	.Le3ba0
.Le3b80:
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	Func_ed408
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
.Le3ba0:
	ldr	r3, =iwram_1e50
	mov	r2, r3
	add	r2, #0xb8
	ldr	r2, [r2]
	str	r2, [sp, #0x30]
	add	r3, #0xbc
	ldr	r3, [r3]
	mov	r0, sp
	add	r0, #0x30
	str	r0, [sp, #0x10]
	str	r3, [r0, #4]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x1c]
	cmp	r1, #4
	bne	.Le3bc6
	ldr	r0, =0x6b
	b	.Le3bf2
.Le3bc6:
	ldr	r2, [sp, #0x1c]
	cmp	r2, #3
	bne	.Le3bda
	ldr	r0, =0xc5
	mov	r1, r11
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	b	.Le3c0a
.Le3bda:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #2
	beq	.Le3bfe
	cmp	r3, #2
	bgt	.Le3bea
	cmp	r3, #0
	blt	.Le3c0a
	b	.Le3bf0
.Le3bea:
	ldr	r5, [sp, #0x1c]
	cmp	r5, #5
	bne	.Le3c0a
.Le3bf0:
	ldr	r0, =0xb5
.Le3bf2:
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Le3c0a
.Le3bfe:
	ldr	r0, =0xb6
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
.Le3c0a:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #7
	ble	.Le3c2c
	ldr	r0, =0x8e
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	b	.Le3c40
.Le3c2c:
	ldr	r0, =0x4a
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Le3c40:
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =0x76
	ldr	r1, [sp, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x99
	ldr	r1, =ewram_10000
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r5, =0x7828
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Le3ca4	@ 0x1f81
	add	r5, r11
	strh	r3, [r2]
	ldr	r3, [r5]
	mov	r1, sp
	mov	r6, #0x24
	ldrsh	r0, [r3, r6]
	add	r1, #0x44
	str	r1, [sp, #0x14]
	bl	Func_e3958
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3ce4
	ldr	r3, [sp, #0x14]
	ldr	r2, [r3]
	mov	r3, #0x60
	b	.Le3cea

	.align	2, 0
.Le3ca4:
	.word	0x1f81
	.pool

.Le3ce4:
	ldr	r5, [sp, #0x14]
	ldr	r2, [r5]
	mov	r3, #0x20
.Le3cea:
	sub	r3, r2
	str	r3, [sp, #0x28]
	ldr	r6, [sp, #0x28]
	cmp	r6, #0
	ble	.Le3cf8
	mov	r0, #0
	str	r0, [sp, #0x28]
.Le3cf8:
	mov	r3, #0x80
	ldr	r1, [sp, #0x28]
	neg	r3, r3
	cmp	r1, r3
	bge	.Le3d04
	str	r3, [sp, #0x28]
.Le3d04:
	ldr	r2, [sp, #0x14]
	ldr	r5, [sp, #0x28]
	ldr	r3, [r2]
	add	r6, sp, #0x28
	add	r3, r5
	str	r3, [r2]
	ldrh	r6, [r6]
	ldr	r2, =iwram_1ad0
	ldr	r5, =0x7828
	mov	r3, #0x50
	strh	r6, [r2, #4]
	strh	r3, [r2, #6]
	add	r5, r11
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [r5]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r6, [r0]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_b8530
	lsr	r3, r0, #31
	add	r0, r3
	mov	r5, #0xe1
	asr	r0, #1
	mov	r3, #0
	lsl	r5, #7
	mov	r8, r0
	mov	r10, r3
	mov	r7, #0xff
	add	r5, r11
.Le3d4e:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	add	r3, r8
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x7f
	ldr	r3, [r5]
	lsl	r0, #10
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Le3d8a
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le3d8a:
	ldr	r3, [r5, #0xc]
	mov	r0, #1
	neg	r3, r3
	str	r3, [r5, #0xc]
	mov	r3, r10
	add	r10, r0
	add	r3, #0x10
	mov	r1, r10
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Le3d4e
	ldr	r5, [sp, #0x20]
	mov	r3, sp
	add	r3, #0x50
	add	r5, #0xc
	mov	r2, #0
	str	r3, [sp, #0xc]
	str	r5, [sp, #8]
	mov	r9, r2
.Le3db2:
	mov	r6, r9
	cmp	r6, #5
	bne	.Le3dd8
	ldr	r0, [sp, #0x18]
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r0, r1
	ldrb	r0, [r3]
	bl	_Func_c2434
	cmp	r0, #0
	beq	.Le3dd2
	mov	r0, #0x86
	bl	_Func_bd7dc
	b	.Le3dd8
.Le3dd2:
	mov	r0, #0x85
	bl	_Func_bd7dc
.Le3dd8:
	mov	r2, r9
	cmp	r2, #4
	bne	.Le3dee
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r1, #0
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_Func_b8228
.Le3dee:
	ldr	r6, =0x7828
	add	r6, r11
	ldr	r3, [r6]
	ldr	r1, [sp, #0xc]
	ldr	r0, [r3, #8]
	bl	Func_e396c
	ldr	r1, [sp, #0xc]
	ldr	r0, [r1, #4]
	mov	r7, r0
	add	r7, #0x10
	str	r7, [r1, #4]
	ldr	r2, [sp, #0x1c]
	cmp	r2, #4
	bne	.Le3e7a
	mov	r3, r9
	cmp	r3, #0xb
	ble	.Le3e14
	b	.Le3f6e
.Le3e14:
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3e4c
	mov	r5, r9
	lsr	r2, r5, #31
	add	r2, r9
	asr	r2, #1
	mov	r3, #5
	sub	r3, r2
	ldr	r6, [sp, #0xc]
	lsl	r1, r3, #1
	ldr	r2, [r6]
	add	r1, r3
	ldr	r3, [sp, #0x28]
	mov	r5, #0x30
	add	r2, r3
	mov	r3, r0
	mov	r0, #0x10
	str	r0, [sp, #4]
	str	r5, [sp]
	ldr	r6, [sp, #0x10]
	lsl	r1, #8
	add	r1, r11
	sub	r2, #0x30
	add	r3, #8
	ldr	r4, [r6, #4]
	b	.Le3f32
.Le3e4c:
	mov	r1, r9
	lsr	r2, r1, #31
	add	r2, r9
	asr	r2, #1
	mov	r3, #5
	sub	r3, r2
	lsl	r1, r3, #1
	add	r1, r3
	ldr	r3, [sp, #0xc]
	mov	r6, #0x30
	ldr	r2, [r3]
	mov	r3, r0
	mov	r0, #0x10
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x28]
	ldr	r0, [sp, #0x10]
	str	r6, [sp]
	lsl	r1, #8
	ldr	r4, [r0, #4]
	add	r1, r11
	add	r2, r5
	add	r3, #8
	b	.Le3f32
.Le3e7a:
	ldr	r1, [sp, #0x1c]
	cmp	r1, #2
	bls	.Le3e84
	cmp	r1, #5
	bne	.Le3eee
.Le3e84:
	mov	r2, r9
	cmp	r2, #0xb
	bgt	.Le3f6e
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le3ec0
	lsr	r3, r2, #31
	add	r3, r9
	asr	r3, #1
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	sub	r1, r3
	ldr	r3, [sp, #0xc]
	ldr	r5, [sp, #0x28]
	ldr	r2, [r3]
	mov	r6, #0x30
	mov	r3, r0
	mov	r0, #0x48
	str	r0, [sp, #4]
	str	r6, [sp]
	ldr	r0, [sp, #0x10]
	lsl	r1, #7
	add	r2, r5
	ldr	r4, [r0, #4]
	add	r1, r11
	sub	r2, #0x30
	sub	r3, #0x18
	b	.Le3f32
.Le3ec0:
	mov	r1, r9
	lsr	r3, r1, #31
	add	r3, r9
	asr	r3, #1
	lsl	r1, r3, #3
	sub	r1, r3
	lsl	r1, #2
	sub	r1, r3
	ldr	r3, [sp, #0xc]
	mov	r6, #0x30
	ldr	r2, [r3]
	mov	r3, r0
	mov	r0, #0x48
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x28]
	ldr	r0, [sp, #0x10]
	str	r6, [sp]
	lsl	r1, #7
	ldr	r4, [r0, #4]
	add	r1, r11
	add	r2, r5
	sub	r3, #0x18
	b	.Le3f32
.Le3eee:
	mov	r1, r9
	cmp	r1, #0x11
	bgt	.Le3f6e
	mov	r0, r9
	mov	r1, #3
	bl	Func_af0_from_thumb
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	mov	r5, r0
	cmp	r3, #0
	bne	.Le3f3a
	ldr	r2, =.Leedbe
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r6, [sp, #0xc]
	ldr	r3, =.Leedca
	ldr	r2, [r6]
	ldrb	r3, [r3, r5]
	ldr	r0, [sp, #0x28]
	add	r2, r3
	add	r2, r0
	ldr	r3, =.Leedb8
	ldr	r0, =.Leedb2
	ldrb	r4, [r3, r5]
	ldrb	r0, [r0, r5]
	str	r4, [sp, #4]
	str	r0, [sp]
	ldr	r5, [sp, #0x10]
	lsr	r3, r4, #1
	add	r1, r11
	sub	r2, #0x3a
	sub	r3, r7, r3
	ldr	r4, [r5, #4]
.Le3f32:
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	b	.Le3f6e
.Le3f3a:
	ldr	r2, =.Leedbe
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r6, [sp, #0xc]
	ldr	r3, =.Leedca
	ldr	r2, [r6]
	ldrb	r3, [r3, r5]
	sub	r2, r3
	ldr	r3, =.Leedb2
	ldr	r0, [sp, #0x28]
	ldrb	r4, [r3, r5]
	ldr	r3, =.Leedb8
	add	r2, r0
	ldrb	r0, [r3, r5]
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r5, [sp, #0x10]
	sub	r2, r4
	lsr	r3, r0, #1
	add	r1, r11
	add	r2, #0x3a
	sub	r3, r7, r3
	ldr	r4, [r5, #4]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Le3f6e:
	mov	r5, r9
	sub	r5, #4
	cmp	r5, #0xb
	bhi	.Le3fa0
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	ldr	r0, [sp, #0x14]
	lsl	r1, r3, #4
	sub	r1, r3
	ldr	r6, =ewram_10000
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	lsl	r1, #7
	mov	r0, #0x28
	add	r1, r6
	mov	r6, #0x30
	str	r0, [sp]
	sub	r2, #0x10
	sub	r3, #0x18
	str	r6, [sp, #4]
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Le3fa0:
	bl	Func_49ac
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #8]
	bl	Func_51d8
	cmp	r5, #0x1b
	bhi	.Le402e
	mov	r1, #0x38
	mov	r0, #0
	add	r1, sp
	mov	r10, r0
	mov	r8, r1
.Le3fba:
	mov	r2, r10
	lsr	r3, r2, #31
	add	r3, r10
	asr	r6, r3, #1
	lsl	r3, r6, #3
	sub	r3, r6
	lsl	r3, #2
	mov	r5, #0xe1
	lsl	r5, #7
	add	r3, r11
	add	r7, r3, r5
	ldr	r5, [r7, #0x18]
	cmp	r5, #0
	ble	.Le4024
	mov	r1, r8
	mov	r0, r7
	bl	Func_5268
	mov	r0, r8
	ldr	r2, [r0]
	ldr	r1, [sp, #0x28]
	asr	r5, #3
	add	r5, #2
	lsl	r4, r5, #1
	add	r2, r1
	ldr	r1, =Data_ede5c
	str	r2, [r0]
	sub	r3, r4, #2
	ldrh	r1, [r1, r3]
	mov	r0, #1
	ldr	r3, [sp, #0x24]
	and	r0, r6
	mov	r6, r8
	add	r1, r3, r1
	ldr	r3, [r6, #4]
	sub	r2, r5
	sub	r3, r5
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r5, [sp, #0x10]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	mov	r0, r7
	mov	r1, #0x3c
	ldr	r2, =0xfffffc00
	bl	Func_e38b8
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.Le4024:
	mov	r6, #1
	add	r10, r6
	mov	r0, r10
	cmp	r0, #0x40
	bne	.Le3fba
.Le402e:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #0x20
	beq	.Le4048
	b	.Le3db2
.Le4048:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r3, =iwram_1ad0
	mov	r5, r9
	strh	r5, [r3, #6]
	bl	Func_cdd14
	add	sp, #0x5c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e3aa0

.thumb_func_start Func_e40a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	mov	r2, r3
	mov	r1, r0
	ldmia	r2!, {r0}
	ldr	r2, [r2]
	sub	sp, #0x70
	str	r2, [sp, #0x34]
	ldr	r2, [r3, #8]
	str	r2, [sp, #0x2c]
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	ldr	r3, [r1]
	mov	r11, r0
	mov	r6, #1
	cmp	r3, #0xc7
	bgt	.Le40d6
	mov	r6, #0
.Le40d6:
	ldr	r5, =0x7828
	add	r5, r11
	mov	r2, #0x82
	ldr	r0, [r1, #8]
	str	r1, [r5]
	ldr	r1, [r1, #0xc]
	bl	_Func_c0df4
	mov	r0, #1
	bl	Func_30f8
	bl	Func_cdd58
	ldr	r3, .Le4120	@ 0x1f80
	ldr	r2, =REG_BG1CNT
	strh	r3, [r2]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le4130
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	Func_ed408
	b	.Le4150

	.align	2, 0
.Le4120:
	.word	0x1f80
	.pool

.Le4130:
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	Func_ed408
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
.Le4150:
	ldr	r3, =iwram_1e50
	mov	r2, r3
	add	r2, #0xb8
	ldr	r2, [r2]
	str	r2, [sp, #0x38]
	add	r3, #0xbc
	mov	r5, sp
	ldr	r3, [r3]
	add	r5, #0x38
	str	r5, [sp, #0x10]
	str	r3, [r5, #4]
	ldr	r5, =0x7828
	add	r5, r11
	ldr	r3, [r5]
	mov	r2, #0x82
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	bl	_Func_c0df4
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =0x49
	mov	r1, r11
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	ldr	r3, [r5]
	mov	r2, #0x82
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	bl	_Func_c0df4
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	mov	r3, #1
	ldr	r0, =0x4a
	ldr	r1, =ewram_10000
	bl	Func_e0524
	ldr	r2, [r5]
	ldr	r3, [r2, #8]
	cmp	r3, #7
	ble	.Le41c4
	ldr	r0, =0x8e
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	ldr	r3, =Func_1af8
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r2, [r5]
.Le41c4:
	ldr	r1, [r2, #0xc]
	ldr	r0, [r2, #8]
	mov	r2, #0x82
	bl	_Func_c0df4
	mov	r0, #1
	bl	Func_30f8
	ldr	r0, =0x76
	ldr	r1, [sp, #0x2c]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r3, [r5]
	mov	r2, #0x82
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	bl	_Func_c0df4
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #1
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	cmp	r6, #1
	beq	.Le4214
	b	.Le43cc
.Le4214:
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	mov	r5, #0xe1
	mov	r8, r0
	lsl	r5, #7
	mov	r0, #0
	ldr	r6, =0xffff
	mov	r10, r0
	mov	r7, #0
	add	r5, r11
.Le422e:
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x10
	str	r3, [r5]
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	bl	Func_4458
	and	r0, r6
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r6
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r1, #1
	add	r10, r1
	and	r0, r6
	mov	r2, r10
	str	r0, [r5, #0x14]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Le422e
	mov	r0, r8
	mov	r1, #0
	bl	_Func_c344
	mov	r3, r8
	ldr	r3, [r3, #0x24]
	str	r3, [sp, #0x24]
	mov	r5, r8
	ldr	r5, [r5, #0x28]
	str	r5, [sp, #0x20]
	mov	r0, r8
	ldr	r0, [r0, #0x2c]
	str	r0, [sp, #0x1c]
	mov	r1, r8
	ldr	r1, [r1, #0x48]
	str	r1, [sp, #0x14]
	mov	r2, r8
	ldr	r2, [r2, #0x34]
	mov	r5, #0
	mov	r3, r8
	str	r2, [sp, #0x18]
	str	r5, [r3, #0x24]
	str	r5, [r3, #0x28]
	str	r5, [r3, #0x2c]
	str	r5, [r3, #0x34]
	str	r5, [r3, #0x48]
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r1, sp
	ldr	r0, [r3, #8]
	add	r1, #0x64
	str	r1, [sp, #0xc]
	bl	Func_e396c
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	mov	r0, r10
	sub	r0, r3
	str	r0, [sp, #0x30]
	add	r1, sp, #0x30
	ldr	r2, =iwram_1ad0
	ldrh	r1, [r1]
	mov	r3, #0x50
	strh	r1, [r2, #4]
	strh	r3, [r2, #6]
	ldr	r2, =0x77b4
	mov	r3, #0x18
	add	r2, r11
	str	r3, [r2]
	ldr	r3, =0x77b8
	mov	r1, #0xc8
	add	r3, r11
	str	r5, [r3]
	lsl	r1, #4
	ldr	r0, =Func_cd4b4
	bl	Func_41d8
	mov	r0, #0xd4
	bl	_Func_f9080
	mov	r9, r5
.Le42de:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r2, #0x82
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	mov	r6, #0xe1
	bl	_Func_c0df4
	lsl	r6, #7
	mov	r2, #0
	mov	r10, r2
	add	r6, r11
.Le42f8:
	ldr	r3, [r6]
	cmp	r3, #0
	blt	.Le4384
	mov	r3, r10
	cmp	r3, #0
	bge	.Le4306
	add	r3, #3
.Le4306:
	asr	r3, #2
	cmp	r9, r3
	blt	.Le4384
	mov	r5, r10
	mov	r3, #1
	and	r3, r5
	add	r7, r3, #5
	bl	Func_49ac
	ldr	r0, [r6, #0x14]
	bl	Func_4c6c
	ldr	r0, [r6, #0xc]
	bl	Func_4bd4
	ldr	r0, [r6, #0x10]
	bl	Func_4c1c
	add	r5, sp, #0x4c
	mov	r0, r6
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	add	r3, #0x40
	str	r3, [r5]
	ldr	r2, [sp, #0x68]
	ldr	r3, [r5, #4]
	add	r3, r2
	add	r3, #0x18
	str	r3, [r5, #4]
	mov	r2, #0x3c
	ldr	r3, [r5, #8]
	neg	r2, r2
	cmp	r3, r2
	bge	.Le4352
	str	r2, [r5, #8]
	mov	r3, r2
.Le4352:
	cmp	r3, #0x3c
	ble	.Le435a
	mov	r3, #0x3c
	str	r3, [r5, #8]
.Le435a:
	lsl	r0, r7, #1
	ldr	r2, =Data_ede5c
	add	r3, #0x3c
	str	r3, [r5, #8]
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x2c]
	ldr	r3, [r5, #4]
	add	r1, r2, r1
	ldr	r2, [r5]
	sub	r3, r7
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r2, r7
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r3, [r6]
	sub	r3, #4
	str	r3, [r6]
.Le4384:
	mov	r3, #1
	add	r10, r3
	mov	r5, r10
	add	r6, #0x1c
	cmp	r5, #0x40
	bne	.Le42f8
	ldr	r2, =0x7824
	add	r2, r11
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	mov	r0, #1
	add	r9, r0
	mov	r1, r9
	cmp	r1, #0x20
	bne	.Le42de
	ldr	r0, =Func_cd4b4
	bl	Func_4278
	mov	r0, r8
	mov	r1, #0x10
	bl	_Func_c344
	ldr	r2, [sp, #0x24]
	mov	r3, r8
	str	r2, [r3, #0x24]
	ldr	r5, [sp, #0x20]
	str	r5, [r3, #0x28]
	ldr	r0, [sp, #0x1c]
	str	r0, [r3, #0x2c]
	ldr	r1, [sp, #0x18]
	str	r1, [r3, #0x34]
	ldr	r2, [sp, #0x14]
	str	r2, [r3, #0x48]
	b	.Le43d2
.Le43cc:
	mov	r3, sp
	add	r3, #0x64
	str	r3, [sp, #0xc]
.Le43d2:
	mov	r1, #0x80
	ldr	r5, =Func_8d4
	ldr	r0, [sp, #0x34]
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	ldr	r5, =0x7828
	str	r3, [r2]
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Le4420	@ 0x1f81
	add	r5, r11
	strh	r3, [r2]
	ldr	r3, [r5]
	add	r6, sp, #0x58
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r6
	bl	Func_e396c
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le4474
	ldr	r2, [r6]
	mov	r3, #0x20
	b	.Le4478

	.align	2, 0
.Le4420:
	.word	0x1f81
	.pool

.Le4474:
	ldr	r2, [r6]
	mov	r3, #0x60
.Le4478:
	sub	r3, r2
	str	r3, [sp, #0x30]
	ldr	r2, [sp, #0x30]
	cmp	r2, #0
	ble	.Le4486
	mov	r3, #0
	str	r3, [sp, #0x30]
.Le4486:
	mov	r3, #0x80
	ldr	r5, [sp, #0x30]
	neg	r3, r3
	cmp	r5, r3
	bge	.Le4492
	str	r3, [sp, #0x30]
.Le4492:
	ldr	r0, [sp, #0x30]
	ldr	r3, [r6]
	ldr	r5, =0x7828
	ldr	r2, =iwram_1ad0
	add	r3, r0
	str	r3, [r6]
	add	r5, r11
	add	r1, sp, #0x30
	mov	r3, #0x50
	strh	r3, [r2, #6]
	ldrh	r1, [r1]
	ldr	r3, [r5]
	strh	r1, [r2, #4]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r6, [r0]
	mov	r5, #0x24
	ldrsh	r0, [r3, r5]
	bl	_Func_b8530
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	mov	r5, #0xe1
	mov	r8, r0
	lsl	r5, #7
	mov	r0, #0
	mov	r10, r0
	mov	r7, #0xff
	add	r5, r11
.Le44d4:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	add	r3, r8
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x7f
	ldr	r3, [r5]
	lsl	r0, #10
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Le450e
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le450e:
	mov	r1, #1
	mov	r3, r10
	add	r10, r1
	add	r3, #0x10
	mov	r2, r10
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Le44d4
	ldr	r5, [sp, #0x28]
	add	r5, #0xc
	mov	r3, #0
	str	r5, [sp, #8]
	mov	r9, r3
.Le452a:
	mov	r0, r9
	cmp	r0, #5
	bne	.Le4536
	mov	r0, #0x86
	bl	_Func_bd7dc
.Le4536:
	mov	r1, r9
	cmp	r1, #4
	bne	.Le454c
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r1, #0
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_b8228
.Le454c:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	ldr	r0, [r3, #8]
	bl	Func_e396c
	ldr	r5, [sp, #0xc]
	ldr	r3, [r5, #4]
	mov	r0, r9
	add	r3, #0x10
	str	r3, [r5, #4]
	cmp	r0, #1
	bgt	.Le4576
	mov	r1, #0x78
	str	r1, [sp]
	str	r1, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	mov	r1, r11
	b	.Le45a0
.Le4576:
	mov	r2, r9
	cmp	r2, #3
	bgt	.Le458e
	mov	r1, #0xe1
	mov	r3, #0x78
	lsl	r1, #6
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	add	r1, r11
	b	.Le45a0
.Le458e:
	mov	r5, r9
	cmp	r5, #5
	bgt	.Le45aa
	mov	r0, #0x78
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	ldr	r1, =ewram_10000
.Le45a0:
	mov	r2, #0
	mov	r3, #0
	bl	_call_via_r4
	b	.Le45c4
.Le45aa:
	mov	r1, r9
	cmp	r1, #7
	bgt	.Le45c4
	mov	r2, #0x78
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	ldr	r1, =ewram_13840
	mov	r2, #0
	mov	r3, #0
	bl	_call_via_r4
.Le45c4:
	bl	Func_49ac
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #8]
	bl	Func_51d8
	mov	r3, r9
	sub	r3, #4
	cmp	r3, #0x1b
	bhi	.Le465a
	mov	r5, #0x40
	mov	r3, #0
	add	r5, sp
	mov	r10, r3
	mov	r8, r5
.Le45e2:
	mov	r0, r10
	lsr	r3, r0, #31
	add	r3, r10
	asr	r5, r3, #1
	lsl	r3, r5, #3
	sub	r3, r5
	lsl	r3, #2
	mov	r1, #0xe1
	add	r3, r11
	lsl	r1, #7
	add	r7, r3, r1
	ldr	r6, [r7, #0x18]
	cmp	r6, #0
	ble	.Le4650
	mov	r1, r8
	mov	r0, r7
	bl	Func_e3944
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r0, [sp, #0x30]
	add	r2, r0
	str	r2, [r3]
	asr	r6, #3
	ldr	r3, [r3, #4]
	add	r6, #2
	mov	r0, #1
	lsl	r4, r6, #1
	add	r3, #0x10
	mov	r1, r8
	and	r0, r5
	ldr	r5, =Data_ede5c
	str	r3, [r1, #4]
	sub	r1, r4, #2
	ldrh	r1, [r5, r1]
	ldr	r5, [sp, #0x2c]
	str	r4, [sp]
	add	r1, r5, r1
	str	r4, [sp, #4]
	ldr	r5, [sp, #0x10]
	lsl	r0, #2
	sub	r3, r6
	ldr	r4, [r0, r5]
	sub	r2, r6
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r0, r7
	mov	r1, #0x3c
	ldr	r2, =0xfffffc00
	bl	Func_e38b8
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.Le4650:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	cmp	r1, #0x40
	bne	.Le45e2
.Le465a:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #0x20
	beq	.Le4674
	b	.Le452a
.Le4674:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	ldr	r3, =iwram_1ad0
	mov	r5, r9
	strh	r5, [r3, #6]
	ldr	r3, =iwram_1e74
	mov	r1, #0xc9
	ldr	r3, [r3]
	mov	r0, #0
	lsl	r1, #3
	mov	r9, r0
	add	r5, r3, r1
	mov	r6, #6
.Le469c:
	mov	r2, r9
	ldrh	r0, [r5]
	sub	r1, r6, r2
	bl	_Func_c0700
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	cmp	r0, #7
	bne	.Le469c
	bl	Func_cdd14
	add	sp, #0x70
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e40a4

.thumb_func_start Func_e46f0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0xa0
	lsl	r1, #19
	sub	sp, #0x80
	mov	r8, r1
	bl	Func_2f40
	ldr	r3, =Func_1af8
	mov	r1, r0
	mov	r2, #0x80
	mov	r0, sp
	bl	_call_via_r3
	mov	r3, #0
	mov	r2, sp
	strh	r3, [r2]
	mov	r12, r3
	ldr	r7, .Le4724	@ 0x1f
	mov	r3, #0x1f
	mov	r10, r3
	mov	r14, r2
	mov	r6, #0
	b	.Le472c

	.align	2, 0
.Le4724:
	.word	0x1f
	.pool

.Le472c:
	mov	r1, r8
	ldrh	r3, [r1]
	mov	r5, r10
	mov	r1, r14
	and	r5, r3
	lsl	r3, #16
	lsr	r2, r3, #21
	lsr	r0, r3, #26
	ldrh	r3, [r6, r1]
	mov	r1, r10
	and	r1, r3
	lsl	r3, #16
	lsr	r4, r3, #21
	lsr	r3, #26
	and	r2, r7
	and	r0, r7
	and	r4, r7
	and	r3, r7
	cmp	r5, r1
	bge	.Le4758
	add	r5, #1
	b	.Le475e
.Le4758:
	cmp	r5, r1
	ble	.Le475e
	sub	r5, #1
.Le475e:
	cmp	r2, r4
	bge	.Le4766
	add	r2, #1
	b	.Le476c
.Le4766:
	cmp	r2, r4
	ble	.Le476c
	sub	r2, #1
.Le476c:
	cmp	r0, r3
	bge	.Le4774
	add	r0, #1
	b	.Le477a
.Le4774:
	cmp	r0, r3
	ble	.Le477a
	sub	r0, #1
.Le477a:
	lsl	r2, #5
	lsl	r3, r0, #10
	orr	r3, r2
	orr	r3, r5
	mov	r2, r14
	strh	r3, [r6, r2]
	mov	r3, #1
	add	r12, r3
	mov	r1, #2
	mov	r2, r12
	add	r6, #2
	add	r8, r1
	cmp	r2, #0x40
	bne	.Le472c
	mov	r0, #0xa0
	mov	r1, sp
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	sp, #0x80
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e46f0

	.section .rodata

.Leedb2:
	.incrom 0xeedb2, 0xeedb8
.Leedb8:
	.incrom 0xeedb8, 0xeedbe
.Leedbe:
	.incrom 0xeedbe, 0xeedca
.Leedca:
	.incrom 0xeedca, 0xeedd0
