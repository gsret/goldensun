	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_dfa18
	push	{lr}
	mov	r1, #0
	bl	Func_dfa48
	pop	{r0}
	bx	r0
.func_end Func_dfa18

.thumb_func_start Func_dfa24
	push	{lr}
	mov	r1, #1
	bl	Func_dfa48
	pop	{r0}
	bx	r0
.func_end Func_dfa24

.thumb_func_start Func_dfa30
	push	{lr}
	mov	r1, #2
	bl	Func_dfa48
	pop	{r0}
	bx	r0
.func_end Func_dfa30

.thumb_func_start Func_dfa3c
	push	{lr}
	mov	r1, #3
	bl	Func_dfa48
	pop	{r0}
	bx	r0
.func_end Func_dfa3c

.thumb_func_start Func_dfa48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_1eec
	mov	r3, r2
	mov	r6, r1
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x48
	str	r3, [sp, #0x20]
	mov	r3, r2
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x14]
	ldr	r5, =0x7828
	mov	r9, r1
	ldr	r2, [r2, #8]
	add	r5, r9
	str	r2, [sp, #0x10]
	str	r0, [r5]
	mov	r0, #0
	bl	Func_cd594
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Ldfaa6
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	str	r5, [sp]
	bl	Func_ed408
	b	.Ldfac4
.Ldfaa6:
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	str	r5, [sp]
	bl	Func_ed408
.Ldfac4:
	ldr	r3, =iwram_1e50
	mov	r2, r3
	add	r2, #0xb8
	add	r3, #0xbc
	ldr	r2, [r2]
	ldr	r3, [r3]
	str	r2, [sp, #0x18]
	str	r3, [sp, #0x1c]
	ldr	r1, [sp, #0x10]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x99
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r3, #0x90
	lsl	r3, #1
	mov	r0, r9
	ldr	r1, =ewram_10000
	mov	r2, #0x28
	bl	Func_df9d0
	ldr	r0, =0xbd
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	cmp	r6, #1
	beq	.Ldfb1e
	cmp	r6, #1
	bgt	.Ldfb14
	cmp	r6, #0
	beq	.Ldfb1a
	b	.Ldfb26
.Ldfb14:
	cmp	r6, #2
	beq	.Ldfb22
	b	.Ldfb26
.Ldfb1a:
	ldr	r0, =0xc2
	b	.Ldfb28
.Ldfb1e:
	ldr	r0, =0xb9
	b	.Ldfb28
.Ldfb22:
	ldr	r0, =0xbb
	b	.Ldfb28
.Ldfb26:
	ldr	r0, =0xc0
.Ldfb28:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r5, =0x7828
	add	r2, r9
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	add	r5, r9
	lsl	r1, #3
	ldr	r0, =Func_cd260
	bl	Func_41d8
	ldr	r3, [r5]
	mov	r2, #0x24
	ldrsh	r1, [r3, r2]
	ldr	r0, [r3, #8]
	mov	r2, #0xa
	bl	Func_df90c
	ldr	r3, [r5]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_Func_b7dd0
	mov	r5, #0xe1
	ldr	r6, [r0]
	lsl	r5, #7
	mov	r0, #0
	mov	r8, r0
	mov	r7, #0xff
	add	r5, r9
.Ldfb80:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	mov	r1, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r1, #12
	add	r3, r1
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Func_4458
	ldr	r3, =0x1ff
	and	r3, r0
	lsl	r3, #11
	str	r3, [r5, #0xc]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Func_4458
	and	r0, r7
	sub	r0, #0x80
	ldr	r3, [r5]
	lsl	r0, #11
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Ldfbc2
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Ldfbc2:
	mov	r2, r8
	lsr	r3, r2, #31
	add	r3, r8
	asr	r3, #1
	add	r3, #0x10
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	add	r5, #0x1c
	cmp	r4, #0x40
	bne	.Ldfb80
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, sp
	add	r2, #0x3c
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r2
	str	r2, [sp, #0xc]
	bl	Func_e3980
	ldr	r4, =0x7828
	mov	r0, #0x30
	add	r4, r9
	mov	r3, #0
	add	r0, sp
	str	r4, [sp, #8]
	mov	r11, r3
	mov	r10, r0
.Ldfc00:
	mov	r1, r11
	cmp	r1, #0xe
	bgt	.Ldfc58
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	mov	r1, r10
	ldr	r0, [r3, #8]
	bl	Func_e3980
	mov	r3, r10
	ldr	r2, [r3]
	mov	r4, r10
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r4, #4]
	mov	r0, #0x28
	mov	r1, #0x20
	asr	r2, #1
	sub	r2, #0x10
	sub	r3, #0x30
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r4, [sp, #0x18]
	mov	r1, r9
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	mov	r0, r10
	ldr	r2, [r0]
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0, #4]
	mov	r1, #0x28
	mov	r4, #0x20
	asr	r2, #1
	str	r1, [sp]
	str	r4, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x10
	ldr	r0, [sp, #0x20]
	mov	r1, r9
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Ldfc58:
	mov	r0, r11
	cmp	r0, #0xa
	bne	.Ldfc90
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #7
	mov	r3, #0
	bl	Func_d6888
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_Func_b8228
	mov	r0, #0x86
	bl	_Func_bd7dc
	ldr	r3, =0x77a8
	mov	r2, #8
	add	r3, r9
	str	r2, [r3]
.Ldfc90:
	mov	r5, r11
	sub	r5, #8
	cmp	r5, #0xb
	bhi	.Ldfcca
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	ldr	r4, [sp, #0xc]
	lsl	r1, r3, #4
	ldr	r2, [r4]
	sub	r1, r3
	ldr	r3, =ewram_10000
	lsl	r1, #6
	mov	r0, r10
	add	r1, r3
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0, #4]
	mov	r0, #0x14
	asr	r2, #1
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x28
	ldr	r0, [sp, #0x20]
	ldr	r4, [sp, #0x18]
	bl	_call_via_r4
.Ldfcca:
	cmp	r5, #0x37
	bhi	.Ldfd40
	bl	Func_49ac
	ldr	r0, [sp, #0x14]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	mov	r6, #0xe1
	mov	r0, #0
	lsl	r6, #7
	mov	r8, r0
	add	r7, sp, #0x24
	add	r6, r9
.Ldfce8:
	ldr	r5, [r6, #0x18]
	cmp	r5, #0
	ble	.Ldfd34
	mov	r1, r7
	mov	r0, r6
	bl	Func_e3944
	asr	r5, #4
	ldr	r2, [r7]
	add	r5, #2
	lsl	r0, r5, #1
	ldr	r4, =Data_ede48
	asr	r2, #1
	str	r2, [r7]
	sub	r3, r0, #2
	ldrh	r1, [r4, r3]
	ldr	r3, [sp, #0x10]
	add	r1, r3, r1
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r7, #4]
	ldr	r4, [sp, #0x18]
	sub	r3, r5
	str	r0, [sp, #4]
	str	r5, [sp]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	ldr	r2, =0xfffffe00
	bl	Func_e38b8
	ldr	r3, [r6, #0x18]
	sub	r3, #1
	str	r3, [r6, #0x18]
.Ldfd34:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x1c
	cmp	r1, #0x40
	bne	.Ldfce8
.Ldfd40:
	mov	r0, #8
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r2, #1
	add	r11, r2
	mov	r3, r11
	cmp	r3, #0x3c
	beq	.Ldfd66
	b	.Ldfc00
.Ldfd66:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dfa48

.thumb_func_start Func_dfddc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r5, r2
	mov	r0, r3
	mov	r2, #0
	mov	r14, r1
	mov	r12, r2
	cmp	r0, #0
	beq	.Ldfe20
	mov	r7, #0
	mov	r6, r0
.Ldfdf6:
	mov	r1, #0
	cmp	r5, #0
	beq	.Ldfe14
	mov	r2, r14
	add	r3, r6, r2
	sub	r2, r3, #1
	mov	r3, r8
	add	r4, r7, r3
.Ldfe06:
	ldrb	r3, [r4]
	add	r1, #1
	strb	r3, [r2]
	add	r4, #1
	add	r2, r0
	cmp	r1, r5
	bne	.Ldfe06
.Ldfe14:
	mov	r2, #1
	add	r12, r2
	add	r7, r5
	sub	r6, #1
	cmp	r12, r0
	bne	.Ldfdf6
.Ldfe20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dfddc

.thumb_func_start Func_dfe2c
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
	sub	sp, #0x24
	str	r3, [sp, #0x18]
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r2, #8]
	add	r3, r9
	str	r2, [sp, #0x10]
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	mov	r2, sp
	add	r2, #0x1c
	mov	r1, r2
	mov	r0, #0
	str	r2, [sp, #0xc]
	bl	Func_cef64
	ldr	r5, =ewram_10000
	ldr	r1, [sp, #0x10]
	ldr	r0, =0x73
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x92
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r1, r5
	ldr	r0, =0x6f
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r1, #0xaa
	lsl	r1, #2
	mov	r0, r5
	add	r1, r9
	mov	r2, #0x11
	mov	r3, #0x68
	bl	Func_dfddc
	mov	r3, #0xdd
	lsl	r3, #3
	mov	r1, #0x99
	add	r5, r3
	lsl	r1, #4
	add	r1, r9
	mov	r0, r5
	mov	r2, #0x22
	mov	r3, #0x41
	bl	Func_dfddc
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	ldr	r3, =0x7098
	mov	r7, #0
	mov	r2, #1
	mov	r10, r7
	neg	r2, r2
	add	r3, r9
.Ldfeda:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r1, #8
	bne	.Ldfeda
	mov	r2, #0
	mov	r10, r2
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	neg	r1, r1
	lsl	r2, #2
.Ldfef6:
	mov	r7, #1
	add	r10, r7
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Ldfef6
	mov	r0, #0xa2
	bl	_Func_f9080
	mov	r0, #0
	str	r0, [sp, #0x14]
.Ldff0c:
	ldr	r1, [sp, #0x14]
	cmp	r1, #0x38
	bne	.Ldff18
	mov	r0, #0x85
	bl	_Func_bd7dc
.Ldff18:
	mov	r3, #0xe1
	lsl	r3, #7
	mov	r2, #0
	add	r3, r9
	mov	r10, r2
	mov	r8, r3
	mov	r11, r2
.Ldff26:
	mov	r7, r8
	mov	r0, #1
	ldr	r3, [r7, #0x18]
	neg	r0, r0
	cmp	r3, r0
	beq	.Ldffce
	mov	r1, #0x41
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x22
	str	r1, [sp, #4]
	mov	r1, #0x99
	lsl	r1, #4
	sub	r3, #0x11
	sub	r2, #0x10
	ldr	r4, [sp, #0x1c]
	ldr	r0, [sp, #0x18]
	add	r1, r9
	bl	_call_via_r4
	ldr	r3, [r7]
	sub	r3, #0xc
	str	r3, [r7]
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
	cmp	r3, #5
	bne	.Ldffce
	mov	r0, #0x85
	bl	_Func_f9080
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r9
	ldr	r7, =ewram_10000
	str	r3, [r2]
	mov	r4, #0
	add	r7, r11
.Ldff74:
	str	r4, [sp, #8]
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	mov	r2, r8
	ldr	r3, [r2]
	lsl	r3, #16
	str	r3, [r7]
	ldr	r3, [r2, #4]
	ldr	r5, =0x1ff
	lsl	r3, #16
	mov	r1, #0x80
	lsl	r1, #1
	str	r3, [r7, #4]
	and	r5, r0
	mov	r0, r6
	add	r5, r1
	bl	Func_2322
	mov	r3, r5
	mul	r3, r0
	asr	r3, #8
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	ldr	r4, [sp, #8]
	and	r3, r0
	add	r3, #0x20
	add	r4, #1
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r4, #0x20
	bne	.Ldff74
.Ldffce:
	mov	r0, #1
	mov	r7, #0xe0
	add	r10, r0
	mov	r3, #0x1c
	lsl	r7, #2
	mov	r1, r10
	add	r8, r3
	add	r11, r7
	cmp	r1, #5
	bne	.Ldff26
	ldr	r2, [sp, #0x14]
	cmp	r2, #0x5f
	ble	.Ldffea
	b	.Le00f0
.Ldffea:
	lsl	r6, r2, #11
	mov	r0, r6
	bl	Func_2322
	ldr	r7, [sp, #0x14]
	mov	r5, #0x40
	lsl	r3, r7, #1
	sub	r5, r3
	mov	r3, r5
	mul	r3, r0
	mov	r0, #0x60
	asr	r7, r3, #17
	add	r0, r7
	mov	r8, r0
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	mov	r1, #0x3c
	asr	r3, #16
	add	r1, r3
	mov	r11, r1
	mov	r1, #0x14
	str	r1, [sp]
	mov	r1, #0x22
	str	r1, [sp, #4]
	ldr	r0, [sp, #0xc]
	mov	r2, r7
	add	r2, #0x56
	add	r3, #0x2b
	ldr	r4, [r0, #4]
	mov	r1, r9
	ldr	r0, [sp, #0x18]
	bl	_call_via_r4
	ldr	r0, =.Leec5a
	mov	r1, #0
	ldrb	r3, [r0, r1]
	ldr	r2, [sp, #0x14]
	mov	r10, r1
	cmp	r2, r3
	bne	.Le0064
	mov	r1, #0xe1
	lsl	r1, #7
	add	r1, r9
	mov	r2, #1
	ldr	r3, [r1, #0x18]
	neg	r2, r2
	cmp	r3, r2
	bne	.Le0064
	mov	r3, r7
	add	r3, #0x58
	str	r3, [r1]
	mov	r7, r11
	mov	r3, r8
	mov	r0, r10
	str	r3, [r1, #0xc]
	str	r7, [r1, #4]
	str	r0, [r1, #0x18]
	b	.Le00f0
.Le0064:
	mov	r1, r10
	ldrb	r3, [r0, r1]
	ldr	r2, [sp, #0x14]
	add	r3, #6
	cmp	r2, r3
	bne	.Le00b0
	ldr	r3, =0x7828
	mov	r7, r9
	ldr	r3, [r7, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Le00b0
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Le0084:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #6
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r4
	mov	r1, #7
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r4, #1
	add	r6, #2
	cmp	r4, r3
	bne	.Le0084
.Le00b0:
	mov	r3, #1
	add	r10, r3
	mov	r7, r10
	cmp	r7, #5
	beq	.Le00f0
	ldr	r3, =.Leec5a
	mov	r0, r3
	ldrb	r3, [r0, r7]
	ldr	r1, [sp, #0x14]
	cmp	r1, r3
	bne	.Le0064
	lsl	r3, r7, #3
	sub	r3, r7
	lsl	r3, #2
	mov	r7, #0xe1
	add	r3, r9
	lsl	r7, #7
	add	r2, r3, r7
	mov	r1, #1
	ldr	r3, [r2, #0x18]
	neg	r1, r1
	cmp	r3, r1
	bne	.Le0064
	mov	r3, r8
	sub	r3, #8
	str	r3, [r2]
	mov	r3, r8
	str	r3, [r2, #0xc]
	mov	r7, r11
	mov	r3, #0
	str	r7, [r2, #4]
	str	r3, [r2, #0x18]
.Le00f0:
	mov	r0, #0
	ldr	r5, =ewram_10000
	ldr	r6, =Data_ede48
	mov	r10, r0
.Le00f8:
	mov	r1, #1
	ldr	r0, [r5, #0x18]
	neg	r1, r1
	cmp	r0, r1
	beq	.Le0148
	cmp	r0, #0
	bge	.Le0108
	add	r0, #0xf
.Le0108:
	asr	r0, #4
	add	r0, #2
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r2, [sp, #0x10]
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
	ldr	r0, [sp, #0xc]
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x18]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3e
	lsl	r2, #6
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Le0148:
	mov	r1, #1
	mov	r2, #0x80
	add	r10, r1
	lsl	r2, #1
	add	r5, #0x1c
	cmp	r10, r2
	bne	.Le00f8
	mov	r0, #4
	mov	r1, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, [sp, #0x14]
	add	r3, #1
	str	r3, [sp, #0x14]
	cmp	r3, #0x60
	beq	.Le017c
	b	.Ldff0c
.Le017c:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dfe2c

.thumb_func_start Func_e01e4
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
	sub	sp, #0x28
	str	r3, [sp, #0x1c]
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r2, #8]
	add	r3, r9
	str	r2, [sp, #0x18]
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r3, .Le0250	@ 0x1010
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	mov	r2, sp
	add	r2, #0x20
	mov	r1, r2
	mov	r0, #0
	str	r2, [sp, #0x14]
	bl	Func_cef64
	ldr	r0, =0x73
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	ldr	r0, =0x90
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r1, #0xc8
	lsl	r1, #2
	ldr	r0, =0x89
	add	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	b	.Le026c

	.align	2, 0
.Le0250:
	.word	0x1010
	.pool

.Le026c:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	mov	r5, #0xe1
	bl	Func_41d8
	lsl	r5, #7
	mov	r3, #0
	mov	r10, r3
	mov	r6, #0x3f
	add	r5, r9
.Le0294:
	bl	Func_4458
	and	r0, r6
	add	r0, #0x40
	str	r0, [r5]
	bl	Func_4458
	mov	r7, #1
	and	r0, r6
	sub	r0, #0x50
	add	r10, r7
	str	r0, [r5, #4]
	mov	r0, r10
	add	r5, #0x1c
	cmp	r0, #0x20
	bne	.Le0294
	mov	r1, #0
	mov	r2, #0x80
	ldr	r3, =ewram_10018
	mov	r10, r1
	lsl	r2, #2
	sub	r1, #1
.Le02c0:
	mov	r7, #1
	add	r10, r7
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Le02c0
	mov	r0, #0xab
	bl	_Func_f9080
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0
	str	r1, [sp, #0x10]
	mov	r11, r0
.Le02dc:
	mov	r2, r11
	cmp	r2, #0x38
	bne	.Le02e8
	mov	r0, #0x85
	bl	_Func_bd7dc
.Le02e8:
	mov	r3, r11
	cmp	r3, #0x5f
	bgt	.Le0326
	ldr	r0, [sp, #0x10]
	bl	Func_2322
	mov	r7, r11
	lsl	r3, r7, #1
	mov	r5, #0x40
	sub	r5, r3
	mov	r6, r5
	mul	r6, r0
	ldr	r0, [sp, #0x10]
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	mov	r2, #0x14
	asr	r6, #17
	asr	r3, #16
	add	r6, #0x56
	str	r2, [sp]
	mov	r2, #0x28
	str	r2, [sp, #4]
	add	r3, #0x1c
	ldr	r4, [sp, #0x20]
	ldr	r0, [sp, #0x1c]
	mov	r1, r9
	mov	r2, r6
	bl	_call_via_r4
.Le0326:
	mov	r1, #0xe1
	mov	r0, #0
	lsl	r1, #7
	add	r1, r9
	str	r0, [sp, #0xc]
	mov	r10, r0
	mov	r8, r1
.Le0334:
	mov	r2, r10
	lsl	r3, r2, #2
	add	r3, #8
	cmp	r11, r3
	blt	.Le0422
	mov	r7, r8
	ldr	r3, [r7, #4]
	cmp	r3, #0x5f
	bgt	.Le0422
	mov	r1, #0x28
	ldr	r2, [r7]
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	mov	r1, #0xc8
	lsl	r1, #2
	sub	r3, #0x20
	sub	r2, #0x14
	ldr	r4, [sp, #0x20]
	ldr	r0, [sp, #0x1c]
	add	r1, r9
	bl	_call_via_r4
	ldr	r3, [r7]
	sub	r3, #6
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0xc
	str	r3, [r7, #4]
	cmp	r3, #0x5f
	ble	.Le0422
	ldr	r0, [sp, #0xc]
	ldr	r1, =ewram_10000
	mov	r4, #0
	add	r7, r0, r1
.Le037a:
	str	r4, [sp, #8]
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Func_4458
	ldr	r5, =0x1ff
	and	r5, r0
	mov	r0, r8
	ldr	r3, [r0]
	lsl	r3, #16
	str	r3, [r7]
	ldr	r3, [r0, #4]
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #1
	str	r3, [r7, #4]
	mov	r0, r6
	add	r5, r2
	bl	Func_2322
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	Func_231c
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Func_4458
	mov	r3, #0xf
	ldr	r4, [sp, #8]
	and	r3, r0
	add	r3, #0x20
	add	r4, #1
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r4, #0x20
	bne	.Le037a
	mov	r0, #0x85
	bl	_Func_f9080
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r9
	str	r3, [r2]
	ldr	r3, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Le0422
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Le03f6:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r4
	mov	r2, #5
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r3, [r5]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_Func_b8228
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r4, #1
	add	r6, #2
	cmp	r4, r3
	bne	.Le03f6
.Le0422:
	ldr	r1, [sp, #0xc]
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #2
	add	r10, r3
	mov	r0, #0x1c
	add	r1, r2
	mov	r7, r10
	add	r8, r0
	str	r1, [sp, #0xc]
	cmp	r7, #8
	beq	.Le043c
	b	.Le0334
.Le043c:
	mov	r0, #0
	ldr	r5, =ewram_10000
	ldr	r6, =Data_ede48
	mov	r10, r0
.Le0444:
	mov	r1, #1
	ldr	r0, [r5, #0x18]
	neg	r1, r1
	cmp	r0, r1
	beq	.Le0494
	cmp	r0, #0
	bge	.Le0454
	add	r0, #0xf
.Le0454:
	asr	r0, #4
	add	r0, #1
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r2, [sp, #0x18]
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
	ldr	r0, [sp, #0x14]
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x1c]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3e
	lsl	r2, #6
	bl	Func_e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Le0494:
	mov	r1, #1
	mov	r2, #0x80
	add	r10, r1
	lsl	r2, #2
	add	r5, #0x1c
	cmp	r10, r2
	bne	.Le0444
	mov	r1, #4
	mov	r0, #4
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r7, =0xfffff800
	ldr	r3, [sp, #0x10]
	mov	r0, #1
	add	r11, r0
	add	r3, r7
	mov	r1, r11
	str	r3, [sp, #0x10]
	cmp	r1, #0x60
	beq	.Le04d0
	b	.Le02dc
.Le04d0:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_e01e4

	.section .rodata

.Leec5a:
	.incrom 0xeec5a, 0xeec5f
