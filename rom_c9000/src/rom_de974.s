	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_de974
	push	{lr}
	mov	r1, #0
	bl	Func_dea70
	pop	{r0}
	bx	r0
.func_end Func_de974

.thumb_func_start Func_de980
	push	{lr}
	mov	r1, #1
	bl	Func_dea70
	pop	{r0}
	bx	r0
.func_end Func_de980

.thumb_func_start Func_de98c
	push	{lr}
	mov	r1, #2
	bl	Func_dea70
	pop	{r0}
	bx	r0
.func_end Func_de98c

.thumb_func_start Func_de998
	push	{lr}
	mov	r1, #3
	bl	Func_dea70
	pop	{r0}
	bx	r0
.func_end Func_de998

.thumb_func_start Func_de9a4
	push	{lr}
	mov	r1, #0xb
	bl	Func_dea70
	pop	{r0}
	bx	r0
.func_end Func_de9a4

.thumb_func_start Func_de9b0
	push	{lr}
	mov	r1, #4
	bl	Func_dea70
	pop	{r0}
	bx	r0
.func_end Func_de9b0

.thumb_func_start Func_de9bc
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, [r6, #8]
	bl	_Func_b7dd0
	ldr	r5, [r0]
	mov	r1, #2
	mov	r0, r5
	bl	_Func_c300
	mov	r0, r5
	mov	r1, #0x30
	bl	_Func_c344
	mov	r0, r6
	mov	r1, #5
	bl	Func_dea70
	mov	r0, r5
	mov	r1, #0x10
	bl	_Func_c344
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_de9bc

.thumb_func_start Func_de9f0
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, [r6, #8]
	bl	_Func_b7dd0
	ldr	r5, [r0]
	mov	r1, #2
	mov	r0, r5
	bl	_Func_c300
	mov	r0, r5
	mov	r1, #0x30
	bl	_Func_c344
	mov	r0, r6
	mov	r1, #6
	bl	Func_dea70
	mov	r0, r5
	mov	r1, #0x10
	bl	_Func_c344
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_de9f0

.thumb_func_start Func_dea24
	push	{lr}
	mov	r1, #7
	bl	Func_dea70
	pop	{r0}
	bx	r0
.func_end Func_dea24

.thumb_func_start Func_dea30
	push	{lr}
	mov	r1, #0xa
	bl	Func_dea70
	pop	{r0}
	bx	r0
.func_end Func_dea30

.thumb_func_start Func_dea3c
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, [r6, #8]
	bl	_Func_b7dd0
	ldr	r5, [r0]
	mov	r1, #2
	mov	r0, r5
	bl	_Func_c300
	mov	r0, r5
	mov	r1, #0x30
	bl	_Func_c344
	mov	r0, r6
	mov	r1, #9
	bl	Func_dea70
	mov	r0, r5
	mov	r1, #0x10
	bl	_Func_c344
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_dea3c

.thumb_func_start Func_dea70
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	mov	r2, r3
	mov	r5, r0
	ldmia	r2!, {r0}
	ldr	r2, [r2]
	sub	sp, #0x9c
	str	r2, [sp, #0x84]
	mov	r2, r3
	sub	r2, #0x6c
	ldr	r2, [r2]
	str	r2, [sp, #0x6c]
	ldr	r3, [r3, #8]
	mov	r8, r1
	mov	r1, #0
	str	r3, [sp, #0x68]
	str	r1, [sp, #0x64]
	ldr	r3, =0x7828
	mov	r11, r0
	add	r3, r11
	ldr	r2, [r5, #0x18]
	str	r5, [r3]
	mov	r3, r8
	str	r2, [sp, #0x5c]
	cmp	r3, #0xa
	bne	.Ldeab8
	mov	r0, #0
	bl	Func_cd594
	b	.Ldeabe
.Ldeab8:
	mov	r0, #1
	bl	Func_cd594
.Ldeabe:
	ldr	r6, =0x7828
	add	r6, r11
	ldr	r2, [r6]
	ldr	r3, [r2, #0x1c]
	cmp	r3, #1
	bne	.Ldeae0
	add	r3, sp, #0x8c
	ldr	r2, [r2, #4]
	str	r3, [sp]
	add	r3, sp, #0x88
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #1
	mov	r3, #2
	bl	Func_de2f8
	ldr	r2, [r6]
.Ldeae0:
	mov	r4, r8
	cmp	r4, #5
	bne	.Ldeb02
	ldr	r3, [r2, #4]
	cmp	r3, #1
	bne	.Ldeaf0
	mov	r3, #2
	b	.Ldeb0a
.Ldeaf0:
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	Func_ed408
	b	.Ldeb28
.Ldeb02:
	ldr	r3, [r2, #4]
	cmp	r3, #1
	bne	.Ldeb1a
	mov	r3, #3
.Ldeb0a:
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
	b	.Ldeb28
.Ldeb1a:
	mov	r3, #3
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	str	r3, [sp]
	bl	Func_ed408
.Ldeb28:
	ldr	r3, =iwram_1e50
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r0, =0x73
	str	r3, [sp, #0x70]
	ldr	r1, [sp, #0x68]
	mov	r2, #0
	mov	r3, #0
	mov	r6, r8
	bl	Func_e0524
	cmp	r6, #0
	beq	.Ldeb4a
	cmp	r6, #5
	beq	.Ldeb50
	cmp	r6, #8
	bne	.Ldebe8
.Ldeb4a:
	mov	r7, r8
	cmp	r7, #5
	bne	.Ldeb54
.Ldeb50:
	mov	r0, #2
	str	r0, [sp, #0x5c]
.Ldeb54:
	mov	r1, r8
	cmp	r1, #8
	bne	.Ldeb5e
	mov	r2, #0
	str	r2, [sp, #0x5c]
.Ldeb5e:
	ldr	r3, [sp, #0x5c]
	cmp	r3, #0
	bne	.Ldeb6c
	mov	r1, #0x80
	lsl	r1, #5
	ldr	r0, =0x7f
	b	.Ldeb78
.Ldeb6c:
	ldr	r4, [sp, #0x5c]
	cmp	r4, #1
	bne	.Ldeb84
	mov	r1, #0x80
	lsl	r1, #5
	ldr	r0, =0x80
.Ldeb78:
	add	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Ldeb94
.Ldeb84:
	mov	r1, #0x80
	lsl	r1, #5
	ldr	r0, =0x81
	add	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
.Ldeb94:
	mov	r6, r8
	cmp	r6, #5
	bne	.Ldebae
	ldr	r0, =0xb9
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ldebae:
	mov	r1, #0x80
	lsl	r1, #6
	ldr	r0, =0xc7
	add	r1, r11
	mov	r2, #1
	mov	r3, #0
	mov	r7, r8
	bl	Func_e0524
	cmp	r7, #5
	bne	.Ldebd8
	ldr	r0, =0xb9
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ldebd8:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	b	.Ldecd4
.Ldebe8:
	mov	r0, r8
	cmp	r0, #1
	bne	.Ldec4c
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	ldr	r0, =0x5d
	bl	Func_e0524
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Ldec14	@ 0
	strh	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r11
	mov	r1, r8
	str	r1, [r3]
	add	r2, r11
	mov	r3, #0
	b	.Ldecd6

	.align	2, 0
.Ldec14:
	.word	0
	.pool

.Ldec4c:
	mov	r2, r8
	cmp	r2, #2
	bne	.Ldec84
	ldr	r0, =0x7f
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r2, #0
	mov	r3, #0
	ldr	r0, =0x5c
	mov	r1, r11
	bl	Func_e0524
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r11
	mov	r4, r8
	str	r4, [r3]
	add	r2, r11
	mov	r3, #0x32
	b	.Ldecd6
.Ldec84:
	mov	r3, r8
	sub	r3, #3
	cmp	r3, #1
	bls	.Ldec92
	mov	r6, r8
	cmp	r6, #0xb
	bne	.Ldec9c
.Ldec92:
	mov	r2, #1
	mov	r3, #1
	ldr	r0, =0x5b
	mov	r1, r11
	b	.Ldecc2
.Ldec9c:
	mov	r7, r8
	cmp	r7, #6
	bne	.Ldecac
	mov	r2, #1
	mov	r3, #1
	ldr	r0, =0x68
	mov	r1, r11
	b	.Ldecc2
.Ldecac:
	ldr	r0, =0xb8
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r1, =0x65c0
	mov	r2, #1
	mov	r3, #0
	ldr	r0, =0x92
	add	r1, r11
.Ldecc2:
	bl	Func_e0524
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
.Ldecd4:
	add	r2, r11
.Ldecd6:
	str	r3, [r2]
	ldr	r5, =0x7828
	mov	r1, #0x90
	lsl	r1, #3
	add	r5, r11
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b7dd0
	ldr	r6, [r0]
	mov	r0, r8
	lsl	r0, #2
	str	r0, [sp, #0x54]
	ldr	r1, =.Leebec
	mov	r3, r0
	add	r3, r8
	ldrb	r2, [r1, r3]
	str	r2, [sp, #0x58]
	add	r2, r3, #1
	ldrb	r2, [r1, r2]
	mov	r10, r2
	add	r2, r3, #2
	ldrb	r2, [r1, r2]
	str	r2, [sp, #0x50]
	add	r3, #3
	ldrb	r1, [r1, r3]
	str	r1, [sp, #0x4c]
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_Func_b8530
	str	r0, [sp, #0x48]
	ldr	r5, [r5]
	ldr	r4, [sp, #0x58]
	ldr	r3, [r5, #0x14]
	mul	r3, r4
	cmp	r3, #0x3f
	ble	.Lded2c
	mov	r3, #1
	str	r3, [r5, #0x14]
.Lded2c:
	mov	r7, #0
	str	r7, [sp, #0x80]
	ldr	r3, [r5, #0x14]
	cmp	r3, #0
	bne	.Lded38
	b	.Ldef48
.Lded38:
	ldr	r0, =0x7828
	mov	r1, #0
	add	r0, r11
	mov	r2, #0x24
	str	r0, [sp, #0x44]
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x14]
.Lded46:
	ldr	r4, [sp, #0x44]
	ldr	r7, [sp, #0x14]
	ldr	r3, [r4]
	ldrsh	r0, [r3, r7]
	bl	_Func_b7dd0
	ldr	r2, [sp, #0x44]
	ldr	r4, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r7, [r0]
	ldrsh	r0, [r3, r4]
	bl	_Func_b8530
	ldr	r3, [sp, #0x58]
	mov	r2, #0
	str	r0, [sp, #0x40]
	str	r2, [sp, #0x7c]
	cmp	r3, #0
	bne	.Lded6e
	b	.Ldef28
.Lded6e:
	ldr	r4, [sp, #0x48]
	lsr	r3, r4, #31
	ldr	r0, [sp, #0x18]
	add	r3, r4, r3
	asr	r3, #1
	mov	r9, r3
	lsl	r3, r0, #3
	sub	r3, r0
	lsl	r3, #2
	mov	r1, #0xe1
	add	r3, r11
	lsl	r1, #7
	add	r5, r3, r1
.Lded88:
	ldr	r3, [r6, #8]
	mov	r2, r8
	str	r3, [r5]
	cmp	r2, #7
	bne	.Ldeda8
	bl	Func_4458
	mov	r2, #0xf
	ldr	r3, [r6, #0xc]
	and	r2, r0
	lsl	r2, #16
	mov	r4, #0xe8
	add	r3, r2
	lsl	r4, #14
	add	r3, r4
	b	.Ldee1a
.Ldeda8:
	mov	r0, r8
	cmp	r0, #0xa
	bne	.Ldedb4
	ldr	r3, [r6, #0xc]
	add	r3, r9
	b	.Ldee1a
.Ldedb4:
	mov	r1, r8
	cmp	r1, #6
	bne	.Ldedc0
	ldr	r3, [r6, #0xc]
	add	r3, r9
	b	.Ldee1a
.Ldedc0:
	mov	r2, r8
	cmp	r2, #9
	bne	.Ldedd4
	bl	Func_4458
	mov	r2, #0x1f
	ldr	r1, [r6, #0xc]
	and	r2, r0
	mov	r3, #0x10
	b	.Ldedfc
.Ldedd4:
	mov	r3, r8
	sub	r3, #3
	cmp	r3, #1
	bhi	.Ldedea
	bl	Func_4458
	mov	r2, #0x1f
	ldr	r1, [r6, #0xc]
	and	r2, r0
	mov	r3, #0x10
	b	.Ldedfc
.Ldedea:
	mov	r3, r8
	cmp	r3, #0xb
	bne	.Ldee08
	bl	Func_4458
	mov	r2, #0x3f
	ldr	r1, [r6, #0xc]
	and	r2, r0
	mov	r3, #0x20
.Ldedfc:
	sub	r3, r2
	add	r1, r9
	lsl	r3, #16
	add	r1, r3
	str	r1, [r5, #4]
	b	.Ldee1c
.Ldee08:
	mov	r4, r8
	cmp	r4, #5
	bne	.Ldee14
	ldr	r3, [r6, #0xc]
	add	r3, r9
	b	.Ldee1a
.Ldee14:
	ldr	r3, [r6, #0xc]
	ldr	r0, [sp, #0x48]
	add	r3, r0
.Ldee1a:
	str	r3, [r5, #4]
.Ldee1c:
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r0, [r7, #8]
	ldr	r3, [r5]
	mov	r1, r10
	sub	r0, r3
	bl	Func_af0_from_thumb
	mov	r1, r8
	str	r0, [r5, #0xc]
	cmp	r1, #7
	bne	.Ldee4e
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	ldr	r0, [r7, #0xc]
	lsl	r3, #16
	add	r0, r3
	ldr	r3, [r5, #4]
	ldr	r2, =0xfff40000
	sub	r0, r3
	add	r0, r2
	mov	r1, r10
	b	.Ldef00
.Ldee4e:
	mov	r3, r8
	cmp	r3, #8
	bne	.Ldee70
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	ldr	r0, [r7, #0xc]
	lsl	r3, #16
	add	r0, r3
	ldr	r3, [r5, #4]
	mov	r4, #0xb0
	sub	r0, r3
	lsl	r4, #13
	add	r0, r4
	mov	r1, r10
	b	.Ldef00
.Ldee70:
	mov	r0, r8
	cmp	r0, #9
	bne	.Ldee8a
	bl	Func_4458
	mov	r2, #0x3f
	and	r2, r0
	mov	r3, #0x40
	sub	r3, r2
	ldr	r0, [r7, #0xc]
	lsl	r3, #16
	add	r0, r3
	b	.Ldeefa
.Ldee8a:
	mov	r1, r8
	cmp	r1, #0xa
	bne	.Ldeeac
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	ldr	r0, [r7, #0xc]
	lsl	r3, #16
	add	r0, r3
	ldr	r3, [r5, #4]
	mov	r2, #0x80
	sub	r0, r3
	lsl	r2, #11
	add	r0, r2
	mov	r1, r10
	b	.Ldef00
.Ldeeac:
	mov	r3, r8
	sub	r3, #3
	cmp	r3, #1
	bls	.Ldeebe
	mov	r3, r8
	cmp	r3, #0xb
	beq	.Ldeebe
	cmp	r3, #5
	bne	.Ldeec4
.Ldeebe:
	mov	r3, #0
	str	r3, [r5, #0x10]
	b	.Ldef06
.Ldeec4:
	mov	r4, r8
	cmp	r4, #6
	bne	.Ldeee6
	bl	Func_4458
	mov	r2, r0
	ldr	r0, [sp, #0x40]
	lsr	r3, r0, #31
	add	r3, r0, r3
	ldr	r0, [r7, #0xc]
	asr	r3, #1
	add	r0, r3
	mov	r3, #0xf
	and	r3, r2
	lsl	r3, #16
	add	r0, r3
	b	.Ldeefa
.Ldeee6:
	bl	Func_4458
	mov	r3, #0xf
	ldr	r1, [sp, #0x40]
	mov	r2, r0
	ldr	r0, [r7, #0xc]
	and	r3, r2
	add	r0, r1
	lsl	r3, #16
	sub	r0, r3
.Ldeefa:
	ldr	r3, [r5, #4]
	mov	r1, r10
	sub	r0, r3
.Ldef00:
	bl	Func_af0_from_thumb
	str	r0, [r5, #0x10]
.Ldef06:
	ldr	r3, [r5, #8]
	ldr	r0, [r7, #0x10]
	mov	r1, r10
	sub	r0, r3
	bl	Func_af0_from_thumb
	mov	r3, #0
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	ldr	r2, [sp, #0x7c]
	ldr	r3, [sp, #0x58]
	add	r2, #1
	add	r5, #0x1c
	str	r2, [sp, #0x7c]
	cmp	r2, r3
	beq	.Ldef28
	b	.Lded88
.Ldef28:
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x14]
	ldr	r1, [sp, #0x80]
	ldr	r7, [sp, #0x58]
	add	r0, #2
	add	r4, r7
	add	r1, #1
	str	r4, [sp, #0x18]
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x80]
	ldr	r2, [sp, #0x44]
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	beq	.Ldef48
	b	.Lded46
.Ldef48:
	mov	r3, #0
	str	r3, [sp, #0x80]
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r1, #0
	lsl	r2, #3
.Ldef54:
	str	r1, [r3]
	ldr	r4, [sp, #0x80]
	add	r4, #1
	add	r3, #0x1c
	str	r4, [sp, #0x80]
	cmp	r4, r2
	bne	.Ldef54
	mov	r6, r8
	cmp	r6, #6
	bne	.Ldefbc
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r7, [sp, #0x4c]
	ldr	r3, [r3, #0x14]
	ldr	r0, [sp, #0x50]
	ldr	r1, [sp, #0x58]
	mul	r3, r7
	mov	r2, r0
	mul	r2, r1
	add	r3, r2
	add	r3, #0x20
	b	.Ldefd4

	.pool_aligned

.Ldefbc:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, [sp, #0x4c]
	ldr	r3, [r3, #0x14]
	ldr	r4, [sp, #0x50]
	ldr	r6, [sp, #0x58]
	mul	r3, r2
	mov	r2, r4
	mul	r2, r6
	add	r3, r2
	add	r3, #0x10
.Ldefd4:
	str	r3, [sp, #0x60]
	ldr	r0, [sp, #0x60]
	mov	r7, #0
	str	r7, [sp, #0x78]
	cmp	r0, #0
	bne	.Ldefe4
	bl	.Ldf864
.Ldefe4:
	ldr	r1, [sp, #0x6c]
	add	r1, #0xc
	str	r1, [sp, #0x30]
.Ldefea:
	ldr	r2, [sp, #0x64]
	cmp	r2, #0
	ble	.Ldeff4
	sub	r2, #1
	str	r2, [sp, #0x64]
.Ldeff4:
	mov	r3, r8
	cmp	r3, #6
	bne	.Ldf014
	ldr	r4, [sp, #0x78]
	cmp	r4, #4
	bne	.Ldf006
	mov	r0, #0x88
	bl	_Func_f9080
.Ldf006:
	ldr	r6, [sp, #0x78]
	cmp	r6, #0x20
	bne	.Ldf03a
	mov	r0, #0x86
	bl	_Func_bd7dc
	b	.Ldf03a
.Ldf014:
	mov	r7, r8
	cmp	r7, #7
	bne	.Ldf028
	ldr	r0, [sp, #0x78]
	cmp	r0, #0x30
	bne	.Ldf03a
	mov	r0, #0x85
	bl	_Func_bd7dc
	b	.Ldf03a
.Ldf028:
	mov	r1, r8
	cmp	r1, #5
	beq	.Ldf03a
	ldr	r2, [sp, #0x78]
	cmp	r2, #0x10
	bne	.Ldf03a
	mov	r0, #0x85
	bl	_Func_bd7dc
.Ldf03a:
	ldr	r7, =0x7828
	add	r7, r11
	ldr	r3, [r7]
	ldr	r3, [r3, #0x1c]
	cmp	r3, #1
	bne	.Ldf0ec
	ldr	r3, [sp, #0x78]
	lsl	r5, r3, #11
	mov	r0, r5
	bl	Func_2322
	ldr	r3, [sp, #0x8c]
	neg	r0, r0
	lsr	r2, r3, #31
	add	r3, r2
	lsl	r0, #2
	asr	r3, #1
	asr	r0, #16
	add	r0, r3
	sub	r0, #0xa
	mov	r10, r0
	mov	r0, r5
	bl	Func_231c
	lsl	r0, #1
	ldr	r3, [sp, #0x88]
	asr	r0, #16
	add	r0, r3
	ldr	r4, [sp, #0x78]
	mov	r6, r0
	sub	r6, #0x18
	cmp	r4, #0x45
	ble	.Ldf084
	lsl	r3, r4, #1
	sub	r3, r6, r3
	mov	r6, r3
	add	r6, #0x8a
.Ldf084:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldf09e
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
	b	.Ldf0ac
.Ldf09e:
	mov	r3, #3
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	str	r3, [sp]
	bl	Func_ed408
.Ldf0ac:
	ldr	r3, =iwram_1e50
	add	r3, #0xbc
	ldr	r5, [r3]
	ldr	r7, [sp, #0x78]
	str	r5, [sp, #0x74]
	cmp	r7, #3
	bgt	.Ldf0d0
	mov	r3, #0x14
	ldr	r1, =0x65c0
	str	r3, [sp]
	mov	r3, #0x28
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x84]
	add	r1, r11
	mov	r2, r10
	mov	r3, r6
	bl	_call_via_r5
.Ldf0d0:
	mov	r3, #0x14
	ldr	r1, =0x65c0
	str	r3, [sp]
	mov	r3, #0x28
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x84]
	add	r1, r11
	mov	r2, r10
	mov	r3, r6
	bl	_call_via_r5
	mov	r0, #0x2f
	bl	Func_2dd8
.Ldf0ec:
	bl	Func_49ac
	ldr	r0, [sp, #0x6c]
	ldr	r1, [sp, #0x30]
	bl	Func_51d8
	mov	r0, #0
	str	r0, [sp, #0x3c]
	str	r0, [sp, #0x80]
	ldr	r2, =0x7828
	mov	r1, r11
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ldf10c
	b	.Ldf5c0
.Ldf10c:
	mov	r3, #0x24
	str	r3, [sp, #0x20]
	str	r0, [sp, #0x1c]
.Ldf112:
	mov	r4, r11
	ldr	r3, [r4, r2]
	ldr	r6, [sp, #0x20]
	ldrsh	r0, [r3, r6]
	bl	_Func_b7dd0
	ldr	r0, [r0]
	ldr	r1, [sp, #0x58]
	str	r0, [sp, #0x38]
	mov	r0, #0
	str	r0, [sp, #0x7c]
	cmp	r1, #0
	bne	.Ldf12e
	b	.Ldf59e
.Ldf12e:
	ldr	r4, [sp, #0x3c]
	lsl	r3, r4, #3
	sub	r3, r4
	ldr	r6, =ewram_10000
	ldr	r2, [sp, #0x1c]
	lsl	r3, #2
	add	r6, r3, r6
	str	r2, [sp, #0x2c]
	str	r6, [sp, #0x28]
	str	r0, [sp, #0x24]
.Ldf142:
	ldr	r7, [sp, #0x24]
	ldr	r0, [sp, #0x2c]
	ldr	r1, [sp, #0x78]
	add	r3, r7, r0
	cmp	r3, r1
	blt	.Ldf150
	b	.Ldf57c
.Ldf150:
	ldr	r3, [sp, #0x58]
	ldr	r4, [sp, #0x80]
	mov	r2, r3
	mul	r2, r4
	ldr	r6, [sp, #0x7c]
	add	r2, r6
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #2
	mov	r7, #0xe1
	add	r3, r11
	lsl	r7, #7
	add	r6, r3, r7
	add	r7, sp, #0x90
	mov	r0, r6
	mov	r1, r7
	bl	Func_e3944
	ldr	r3, [r7]
	asr	r3, #1
	str	r3, [r7]
	ldr	r2, [r6]
	ldr	r3, [r6, #0xc]
	add	r2, r3
	str	r2, [r6]
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #4]
	add	r2, r3
	str	r2, [r6, #4]
	ldr	r3, [r6, #0x14]
	ldr	r2, [r6, #8]
	mov	r0, r8
	add	r2, r3
	str	r2, [r6, #8]
	cmp	r0, #6
	bne	.Ldf1fe
	mov	r1, #0x80
	ldr	r5, =ewram_13800
	mov	r2, #0
	lsl	r1, #2
	mov	r10, r7
	mov	r4, #0xff
.Ldf1a4:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bne	.Ldf1f2
	mov	r0, r10
	ldr	r3, [r0]
	lsl	r3, #16
	str	r3, [r5]
	ldr	r3, [r0, #4]
	lsl	r3, #16
	str	r3, [r5, #4]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r4, [sp, #8]
	bl	Func_4458
	ldr	r4, [sp, #8]
	and	r0, r4
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Func_4458
	ldr	r4, [sp, #8]
	and	r0, r4
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #7
	ldr	r2, [sp, #0xc]
	and	r3, r0
	add	r3, #0x20
	add	r2, #1
	str	r3, [r5, #0x18]
	ldr	r1, [sp, #0x10]
	ldr	r4, [sp, #8]
	cmp	r2, #2
	beq	.Ldf1fe
.Ldf1f2:
	mov	r3, #0x80
	add	r1, #1
	lsl	r3, #3
	add	r5, #0x1c
	cmp	r1, r3
	bne	.Ldf1a4
.Ldf1fe:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	beq	.Ldf206
	b	.Ldf3a8
.Ldf206:
	ldr	r4, [sp, #0x38]
	ldr	r1, [r4, #8]
	ldr	r2, [r6]
	cmp	r1, #0
	bge	.Ldf218
	lsr	r3, r2, #31
	cmp	r3, #0
	bne	.Ldf222
	b	.Ldf3a8
.Ldf218:
	mvn	r3, r2
	lsr	r3, #31
	cmp	r3, #0
	bne	.Ldf222
	b	.Ldf3a8
.Ldf222:
	mov	r3, r2
	cmp	r3, #0
	bge	.Ldf22a
	neg	r3, r3
.Ldf22a:
	mov	r2, r1
	cmp	r2, #0
	bge	.Ldf232
	neg	r2, r2
.Ldf232:
	cmp	r3, r2
	bge	.Ldf238
	b	.Ldf3a8
.Ldf238:
	mov	r0, #0
	mov	r3, #1
	mov	r1, r8
	str	r0, [sp, #0x34]
	ldr	r2, [sp, #0x28]
	str	r3, [r6, #0x18]
	cmp	r1, #5
	bne	.Ldf252
	mov	r0, #0x86
	str	r2, [sp, #0xc]
	bl	_Func_bd7dc
	b	.Ldf26a
.Ldf252:
	mov	r3, r8
	cmp	r3, #6
	beq	.Ldf26c
	ldr	r4, [sp, #0x64]
	cmp	r4, #0
	bne	.Ldf26c
	mov	r0, #8
	str	r0, [sp, #0x64]
	mov	r0, #0x84
	str	r2, [sp, #0xc]
	bl	_Func_f9080
.Ldf26a:
	ldr	r2, [sp, #0xc]
.Ldf26c:
	mov	r1, r8
	cmp	r1, #2
	bne	.Ldf2a0
	str	r2, [sp, #0xc]
	bl	Func_4458
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x20
	lsl	r5, r3, #12
	bl	Func_4458
	mov	r3, #1
	and	r0, r3
	ldr	r2, [sp, #0xc]
	cmp	r0, #0
	beq	.Ldf294
	ldr	r3, [r6, #0x10]
	add	r3, r5
	b	.Ldf298
.Ldf294:
	ldr	r3, [r6, #0x10]
	sub	r3, r5
.Ldf298:
	str	r3, [r6, #0x10]
	ldr	r3, [r6, #0xc]
	neg	r3, r3
	str	r3, [r6, #0xc]
.Ldf2a0:
	mov	r3, #1
	str	r3, [r2, #0x18]
	ldr	r3, [r7]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [r2, #8]
	mov	r2, r8
	cmp	r2, #7
	beq	.Ldf2be
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r11
	str	r3, [r2]
.Ldf2be:
	ldr	r5, =0x7828
	add	r5, r11
	ldr	r3, [r5]
	ldr	r4, [sp, #0x20]
	ldrsh	r0, [r3, r4]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #7
	ldr	r3, [sp, #0x80]
	bl	Func_d6888
	mov	r2, r8
	cmp	r2, #7
	beq	.Ldf31c
	cmp	r2, #9
	beq	.Ldf31c
	cmp	r2, #0xa
	beq	.Ldf31c
	cmp	r2, #5
	bne	.Ldf310
	ldr	r3, [r5]
	ldr	r4, [sp, #0x20]
	ldrsh	r0, [r3, r4]
	mov	r1, #4
	bl	_Func_b8228
	b	.Ldf31c

	.pool_aligned

.Ldf310:
	ldr	r3, [r5]
	ldr	r2, [sp, #0x20]
	mov	r1, #5
	ldrsh	r0, [r3, r2]
	bl	_Func_b8228
.Ldf31c:
	mov	r2, #5
	mov	r0, r8
	eor	r2, r0
	neg	r3, r2
	orr	r3, r2
	lsr	r2, r3, #31
	mov	r3, #0xc
	sub	r2, r3, r2
	mov	r3, #0xff
	mov	r9, r3
	ldr	r3, [sp, #0x54]
	add	r3, r8
	add	r3, #4
	ldr	r5, =ewram_10af0
	mov	r1, #0x64
	mov	r4, r7
	mov	r10, r3
.Ldf33e:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bne	.Ldf39c
	ldr	r3, [r4]
	lsl	r3, #16
	str	r3, [r5]
	ldr	r3, [r4, #4]
	lsl	r3, #16
	str	r3, [r5, #4]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r4, [sp, #8]
	bl	Func_4458
	mov	r3, r9
	ldr	r2, [sp, #0xc]
	and	r0, r3
	sub	r0, #0x80
	lsl	r0, r2
	str	r0, [r5, #0xc]
	bl	Func_4458
	mov	r3, r9
	and	r0, r3
	ldr	r2, [sp, #0xc]
	sub	r0, #0x80
	lsl	r0, r2
	str	r0, [r5, #0x10]
	bl	Func_4458
	mov	r3, #7
	and	r3, r0
	add	r3, #0x10
	str	r3, [r5, #0x18]
	ldr	r0, [sp, #0x34]
	add	r0, #1
	str	r0, [sp, #0x34]
	ldr	r3, =.Leebec
	mov	r0, r10
	ldrb	r3, [r3, r0]
	mov	r12, r3
	ldr	r3, [sp, #0x34]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	ldr	r4, [sp, #8]
	cmp	r3, r12
	beq	.Ldf3a8
.Ldf39c:
	mov	r0, #0x80
	add	r1, #1
	lsl	r0, #2
	add	r5, #0x1c
	cmp	r1, r0
	bne	.Ldf33e
.Ldf3a8:
	mov	r1, r8
	cmp	r1, #0
	beq	.Ldf3b6
	cmp	r1, #5
	beq	.Ldf3b6
	cmp	r1, #8
	bne	.Ldf466
.Ldf3b6:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldf3d4
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	Func_ed408
	b	.Ldf3e4
.Ldf3d4:
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	Func_ed408
.Ldf3e4:
	ldr	r4, [sp, #0x5c]
	ldr	r3, =.Leebe9
	ldrb	r0, [r3, r4]
	mov	r1, #0x20
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	ldr	r6, =iwram_1f0c
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r1, #0x80
	lsl	r1, #5
	sub	r3, r0
	sub	r2, #0x10
	ldr	r4, [r6]
	ldr	r0, [sp, #0x84]
	add	r1, r11
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldf42c
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	bl	Func_ed408
	b	.Ldf43c
.Ldf42c:
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	bl	Func_ed408
.Ldf43c:
	mov	r1, #0x20
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	ldr	r7, [sp, #0x5c]
	ldr	r1, =.Leebe9
	ldrb	r1, [r1, r7]
	ldr	r0, =iwram_1f0c
	str	r1, [sp, #4]
	mov	r1, #0x80
	lsl	r1, #5
	ldr	r4, [r0]
	sub	r2, #0x10
	ldr	r0, [sp, #0x84]
	add	r1, r11
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	b	.Ldf57c
.Ldf466:
	mov	r1, r8
	cmp	r1, #1
	bne	.Ldf4a6
	ldr	r0, [r6]
	cmp	r0, #0
	bge	.Ldf474
	neg	r0, r0
.Ldf474:
	ldr	r2, [sp, #0x38]
	ldr	r1, [r2, #8]
	cmp	r1, #0
	bge	.Ldf47e
	neg	r1, r1
.Ldf47e:
	cmp	r0, r1
	bgt	.Ldf57c
	mov	r1, #6
	ldr	r0, [sp, #0x78]
	bl	Func_b1c_from_thumb
	lsl	r1, r0, #1
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r1, r0
	mov	r0, #0x20
	lsl	r1, #8
	str	r0, [sp]
	mov	r0, #0x18
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0x10
	sub	r3, #0xc
	ldr	r0, [sp, #0x84]
	b	.Ldf55a
.Ldf4a6:
	mov	r6, r8
	cmp	r6, #7
	beq	.Ldf4b4
	cmp	r6, #9
	beq	.Ldf4b4
	cmp	r6, #0xa
	bne	.Ldf4d4
.Ldf4b4:
	ldr	r0, [sp, #0x7c]
	mov	r3, #3
	and	r3, r0
	ldr	r2, =.Leec52
	lsl	r3, #1
	ldrh	r1, [r2, r3]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r0, #8
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #4
	sub	r3, #4
	ldr	r0, [sp, #0x84]
	b	.Ldf55a
.Ldf4d4:
	mov	r6, r8
	cmp	r6, #2
	bne	.Ldf4fc
	mov	r1, #6
	ldr	r0, [sp, #0x7c]
	bl	Func_b1c_from_thumb
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r1, r0
	mov	r0, #8
	lsl	r1, #7
	str	r0, [sp]
	mov	r0, #0x10
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #4
	sub	r3, #8
	ldr	r0, [sp, #0x84]
	b	.Ldf534
.Ldf4fc:
	mov	r0, r8
	cmp	r0, #3
	bne	.Ldf51a
	mov	r1, #0x12
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0xd
	str	r1, [sp, #4]
	mov	r1, r11
	sub	r2, #9
	sub	r3, #7
	ldr	r0, [sp, #0x84]
	add	r1, #0x60
	b	.Ldf55a
.Ldf51a:
	mov	r6, r8
	cmp	r6, #4
	bne	.Ldf53c
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r1, #0xc
	str	r1, [sp]
	mov	r1, #8
	str	r1, [sp, #4]
	sub	r2, #6
	sub	r3, #4
	ldr	r0, [sp, #0x84]
	mov	r1, r11
.Ldf534:
	ldr	r7, [sp, #0x70]
	bl	_call_via_r7
	b	.Ldf57c
.Ldf53c:
	mov	r0, r8
	cmp	r0, #0xb
	bne	.Ldf562
	mov	r1, #0x1d
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x17
	str	r1, [sp, #4]
	mov	r1, #0xa5
	lsl	r1, #1
	sub	r2, #0xf
	sub	r3, #0xc
	ldr	r0, [sp, #0x84]
	add	r1, r11
.Ldf55a:
	ldr	r4, [sp, #0x70]
	bl	_call_via_r4
	b	.Ldf57c
.Ldf562:
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r1, #0x28
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	sub	r2, #0x14
	sub	r3, #0x20
	ldr	r0, [sp, #0x84]
	mov	r1, r11
	ldr	r6, [sp, #0x70]
	bl	_call_via_r6
.Ldf57c:
	ldr	r7, [sp, #0x24]
	ldr	r1, [sp, #0x7c]
	ldr	r2, [sp, #0x28]
	ldr	r3, [sp, #0x3c]
	ldr	r0, [sp, #0x50]
	ldr	r4, [sp, #0x58]
	add	r7, r0
	add	r1, #1
	add	r2, #0x1c
	add	r3, #1
	str	r7, [sp, #0x24]
	str	r1, [sp, #0x7c]
	str	r2, [sp, #0x28]
	str	r3, [sp, #0x3c]
	cmp	r1, r4
	beq	.Ldf59e
	b	.Ldf142
.Ldf59e:
	ldr	r6, [sp, #0x20]
	ldr	r7, [sp, #0x1c]
	ldr	r1, [sp, #0x80]
	ldr	r0, [sp, #0x4c]
	add	r6, #2
	add	r7, r0
	add	r1, #1
	str	r6, [sp, #0x20]
	str	r7, [sp, #0x1c]
	str	r1, [sp, #0x80]
	ldr	r2, =0x7828
	mov	r4, r11
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	beq	.Ldf5c0
	b	.Ldf112
.Ldf5c0:
	mov	r6, r8
	cmp	r6, #0
	beq	.Ldf5d0
	cmp	r6, #5
	beq	.Ldf5d0
	cmp	r6, #8
	beq	.Ldf5d0
	b	.Ldf772
.Ldf5d0:
	mov	r7, #0
	ldr	r3, =0x7828
	str	r7, [sp, #0x80]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r0, [sp, #0x58]
	ldr	r3, [r3, #0x14]
	mul	r3, r0
	cmp	r3, #0
	bne	.Ldf5e6
	b	.Ldf772
.Ldf5e6:
	ldr	r1, =.Leec44
	ldr	r2, =.Leec28
	ldr	r7, =ewram_10000
	mov	r9, r1
	mov	r10, r2
.Ldf5f0:
	ldr	r1, [r7, #0x18]
	cmp	r1, #1
	beq	.Ldf5f8
	b	.Ldf758
.Ldf5f8:
	ldr	r3, [r7, #8]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r6, r3, #1
	ldr	r3, [sp, #0x80]
	and	r3, r1
	cmp	r3, #0
	bne	.Ldf6bc
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	lsl	r5, r6, #1
	mov	r4, r9
	mov	r0, r10
	ldrh	r1, [r4, r5]
	ldr	r2, [r7]
	ldrb	r4, [r0, r6]
	ldr	r3, =.Leec3d
	sub	r2, r4
	ldrb	r0, [r3, r6]
	ldr	r3, [r7, #4]
	str	r4, [sp]
	ldr	r4, =.Leec2f
	sub	r3, r0
	ldrb	r0, [r4, r6]
	str	r0, [sp, #4]
	ldr	r0, =iwram_1f0c
	add	r1, r11
	ldr	r4, [r0]
	ldr	r0, [sp, #0x84]
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r1, #2
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #0xf
	mov	r0, #0x2f
	bl	Func_ed408
	ldr	r3, =.Leec36
	ldr	r4, =.Leec3d
	ldrb	r0, [r3, r6]
	ldr	r3, [r7, #4]
	add	r3, r0
	ldrb	r0, [r4, r6]
	mov	r4, r10
	sub	r3, r0
	ldrb	r0, [r4, r6]
	mov	r2, r9
	ldrh	r1, [r2, r5]
	ldr	r4, =.Leec2f
	ldr	r2, [r7]
	str	r0, [sp]
	ldrb	r0, [r4, r6]
	ldr	r6, =iwram_1f0c
	str	r0, [sp, #4]
	add	r1, r11
	ldr	r4, [r6]
	ldr	r0, [sp, #0x84]
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	b	.Ldf74a

	.pool_aligned

.Ldf6bc:
	mov	r0, #2
	str	r0, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	Func_ed408
	lsl	r5, r6, #1
	mov	r2, r9
	ldrh	r1, [r2, r5]
	ldr	r4, =.Leec3d
	ldr	r3, =0x128a
	add	r1, r11
	add	r1, r3
	ldr	r2, [r7]
	ldrb	r3, [r4, r6]
	mov	r0, r10
	ldrb	r4, [r0, r6]
	sub	r2, r3
	ldr	r3, [r7, #4]
	sub	r3, r4
	mov	r12, r3
	ldr	r3, =.Leec2f
	ldrb	r0, [r3, r6]
	str	r4, [sp, #4]
	str	r0, [sp]
	ldr	r0, =iwram_1f0c
	mov	r3, r12
	ldr	r4, [r0]
	ldr	r0, [sp, #0x84]
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r1, #2
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #0xf
	mov	r0, #0x2f
	bl	Func_ed408
	mov	r2, r9
	ldrh	r1, [r2, r5]
	ldr	r3, =0x128a
	add	r1, r11
	add	r1, r3
	ldr	r3, =.Leec36
	ldr	r2, [r7]
	ldrb	r3, [r3, r6]
	ldr	r4, =.Leec3d
	add	r2, r3
	ldrb	r3, [r4, r6]
	ldr	r4, =.Leec2f
	ldrb	r0, [r4, r6]
	sub	r2, r3
	ldr	r3, [r7, #4]
	str	r0, [sp]
	mov	r4, r10
	ldrb	r0, [r4, r6]
	ldr	r6, =iwram_1f0c
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x84]
	ldr	r4, [r6]
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	Func_2dd8
.Ldf74a:
	ldr	r3, [r7, #8]
	add	r3, #1
	str	r3, [r7, #8]
	cmp	r3, #0xc
	bne	.Ldf758
	mov	r3, #0
	str	r3, [r7, #0x18]
.Ldf758:
	ldr	r0, [sp, #0x80]
	ldr	r3, =0x7828
	add	r0, #1
	str	r0, [sp, #0x80]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r1, [sp, #0x58]
	ldr	r3, [r3, #0x14]
	mul	r3, r1
	add	r7, #0x1c
	cmp	r0, r3
	beq	.Ldf772
	b	.Ldf5f0
.Ldf772:
	mov	r2, #0x64
	str	r2, [sp, #0x80]
	ldr	r5, =ewram_10af0
.Ldf778:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0
	ble	.Ldf7d4
	asr	r0, #3
	add	r0, #1
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x68]
	add	r1, r3, r1
	lsr	r3, r0, #31
	mov	r6, #2
	ldrsh	r2, [r5, r6]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x84]
	ldr	r4, [sp, #0x70]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3c
	lsl	r2, #5
	bl	Func_e3908
	mov	r6, #0xe0
	ldr	r3, [r5, #4]
	lsl	r6, #15
	cmp	r3, r6
	ble	.Ldf7ce
	ldr	r3, [r5, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5, #0x10]
.Ldf7ce:
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Ldf7d4:
	ldr	r7, [sp, #0x80]
	mov	r0, #0x80
	add	r7, #1
	lsl	r0, #2
	add	r5, #0x1c
	str	r7, [sp, #0x80]
	cmp	r7, r0
	bne	.Ldf778
	ldr	r6, =Data_ede48
	ldr	r5, =ewram_13800
.Ldf7e8:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0
	ble	.Ldf82a
	asr	r0, #4
	add	r0, #1
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r2, [sp, #0x68]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x84]
	ldr	r4, [sp, #0x70]
	bl	_call_via_r4
	mov	r0, r5
	mov	r1, #0x3c
	ldr	r2, =0xffffc000
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Ldf82a:
	ldr	r7, [sp, #0x80]
	mov	r0, #0x80
	add	r7, #1
	lsl	r0, #3
	add	r5, #0x1c
	str	r7, [sp, #0x80]
	cmp	r7, r0
	bne	.Ldf7e8
	mov	r1, #4
	mov	r0, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x78]
	ldr	r2, [sp, #0x60]
	add	r1, #1
	str	r1, [sp, #0x78]
	cmp	r1, r2
	beq	.Ldf864
	bl	.Ldefea
.Ldf864:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x9c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dea70

.thumb_func_start Func_df8b8
	push	{r5, r6, lr}
	bl	_Func_b7dd0
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldr	r3, =0xab85
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	strb	r3, [r2]
	sub	r2, #2
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r5
	bl	_Func_c4ac
	ldr	r1, [r6, #0xc]
	mov	r0, r5
	ldr	r3, [r6, #0x10]
	mov	r2, #0
	bl	_Func_d14c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c300
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_df8b8

.thumb_func_start Func_df90c
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r6, r1
	mov	r11, r2
	bl	_Func_b7dd0
	mov	r5, r0
	mov	r0, r6
	bl	_Func_b7dd0
	ldr	r6, [r5]
	ldr	r0, [r0]
	mov	r2, #0x50
	mov	r10, r2
	ldr	r3, [r0, #8]
	ldr	r2, [r6, #8]
	sub	r3, r2
	mov	r8, r0
	mov	r1, #0x64
	mov	r0, r10
	mul	r0, r3
	mov	r9, r2
	bl	Func_af0_from_thumb
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r3, r2
	mov	r5, r0
	mov	r1, #0x64
	mov	r0, r10
	mul	r0, r3
	mov	r8, r2
	bl	Func_af0_from_thumb
	add	r9, r5
	add	r8, r0
	asr	r5, #8
	asr	r0, #8
	mov	r2, r0
	mul	r2, r0
	mov	r3, r5
	mul	r3, r5
	add	r3, r2
	mov	r0, r3
	ldr	r2, =Func_948
	bl	_call_via_r2
	mov	r1, r11
	lsl	r0, #8
	bl	Func_af0_from_thumb
	mov	r3, r6
	mov	r1, #1
	add	r3, #0x58
	str	r0, [r6, #0x34]
	str	r0, [r6, #0x30]
	strb	r1, [r3]
	ldr	r3, =0xab85
	str	r3, [r6, #0x48]
	mov	r3, r6
	mov	r2, #0
	add	r3, #0x5a
	str	r2, [r6, #0x28]
	str	r2, [r6, #0x44]
	mov	r0, r6
	strb	r1, [r3]
	bl	_Func_c4ac
	mov	r0, r6
	mov	r1, r9
	mov	r2, #0
	mov	r3, r8
	bl	_Func_d14c
	mov	r0, r6
	mov	r1, #2
	bl	_Func_c300
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_df90c

.thumb_func_start Func_df9d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x90
	lsl	r3, #1
	mov	r14, r0
	mov	r6, r1
	mov	r12, r2
	mov	r7, #0
	mov	r8, r3
	mov	r5, #0
.Ldf9e6:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r0, r3, #1
	mov	r3, r14
	mov	r1, #0
	add	r4, r5, r3
.Ldf9f2:
	lsr	r3, r1, #31
	add	r3, r1, r3
	ldrb	r2, [r4]
	asr	r3, #1
	add	r3, r0, r3
	add	r1, #1
	add	r4, #1
	strb	r2, [r6, r3]
	cmp	r1, #0x28
	bne	.Ldf9f2
	add	r7, #1
	add	r5, r12
	cmp	r7, r8
	bne	.Ldf9e6
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_df9d0

	.section .rodata

.Leebe9:
	.incrom 0xeebe9, 0xeebec
.Leebec:
	.incrom 0xeebec, 0xeec28
.Leec28:
	.incrom 0xeec28, 0xeec2f
.Leec2f:
	.incrom 0xeec2f, 0xeec36
.Leec36:
	.incrom 0xeec36, 0xeec3d
.Leec3d:
	.incrom 0xeec3d, 0xeec44
.Leec44:
	.incrom 0xeec44, 0xeec52
.Leec52:
	.incrom 0xeec52, 0xeec5a
