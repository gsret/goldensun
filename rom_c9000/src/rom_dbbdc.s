	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_dbbdc
	push	{lr}
	mov	r1, #0
	bl	Func_dbc30
	pop	{r0}
	bx	r0
.func_end Func_dbbdc

.thumb_func_start Func_dbbe8
	push	{lr}
	mov	r1, #2
	bl	Func_dbc30
	pop	{r0}
	bx	r0
.func_end Func_dbbe8

.thumb_func_start Func_dbbf4
	push	{lr}
	mov	r1, #6
	bl	Func_dbc30
	pop	{r0}
	bx	r0
.func_end Func_dbbf4

.thumb_func_start Func_dbc00
	push	{lr}
	mov	r1, #3
	bl	Func_dbc30
	pop	{r0}
	bx	r0
.func_end Func_dbc00

.thumb_func_start Func_dbc0c
	push	{lr}
	mov	r1, #5
	bl	Func_dbc30
	pop	{r0}
	bx	r0
.func_end Func_dbc0c

.thumb_func_start Func_dbc18
	push	{lr}
	mov	r1, #7
	bl	Func_dbc30
	pop	{r0}
	bx	r0
.func_end Func_dbc18

.thumb_func_start Func_dbc24
	push	{lr}
	mov	r1, #4
	bl	Func_dbc30
	pop	{r0}
	bx	r0
.func_end Func_dbc24

.thumb_func_start Func_dbc30
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1ef0
	mov	r11, r1
	ldr	r1, [r6]
	sub	sp, #0xa8
	str	r1, [sp, #0x24]
	sub	r3, r6, #4
	ldr	r3, [r3]
	ldr	r5, =0x7828
	mov	r9, r3
	add	r5, r9
	str	r0, [r5]
	mov	r0, #0
	ldr	r7, [r6, #4]
	bl	Func_cd594
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ldbc6c	@ 0x1010
	strh	r3, [r2]
	mov	r2, r11
	cmp	r2, #7
	bne	.Ldbcaa
	b	.Ldbc7c

	.align	2, 0
.Ldbc6c:
	.word	0x1010
	.pool

.Ldbc7c:
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x18]
	mov	r0, #0x2f
	str	r3, [sp, #0x28]
	mov	r1, #7
	mov	r3, #7
	mov	r2, #7
	str	r5, [sp]
	bl	Func_ed408
	ldr	r3, [r6, #0x1c]
	mov	r0, sp
	add	r0, #0x28
	str	r0, [sp, #0x14]
	str	r3, [r0, #4]
	b	.Ldbcb8
.Ldbcaa:
	ldr	r3, [r5]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x28
	str	r1, [sp, #0x14]
	bl	Func_cef64
.Ldbcb8:
	mov	r2, #1
	ldr	r0, =0xce
	mov	r1, r9
	mov	r3, #0
	bl	Func_e0524
	mov	r2, r11
	cmp	r2, #5
	bne	.Ldbcd0
	ldr	r1, =0xc56
	ldr	r0, =0x5a
	b	.Ldbcda
.Ldbcd0:
	mov	r3, r11
	cmp	r3, #7
	bne	.Ldbce6
	ldr	r1, =0xc56
	ldr	r0, =0x54
.Ldbcda:
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	b	.Ldbda0
.Ldbce6:
	ldr	r1, =0xc56
	ldr	r0, =0x7d
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r0, =0x73
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	Func_e0524
	mov	r0, r11
	cmp	r0, #6
	bne	.Ldbd30
	mov	r0, #0xa0
	mov	r6, #0
	lsl	r0, #19
.Ldbd0c:
	mov	r3, r6
	cmp	r6, #0
	bge	.Ldbd14
	add	r3, r6, #3
.Ldbd14:
	asr	r3, #2
	lsl	r2, r3, #10
	lsl	r1, r3, #5
	orr	r2, r1
	orr	r2, r3
	add	r6, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r6, #0x40
	bne	.Ldbd0c
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Ldbd5c	@ 0
	strh	r3, [r2]
	b	.Ldbda0
.Ldbd30:
	mov	r1, r11
	cmp	r1, #4
	bhi	.Ldbd8c
	ldr	r2, =.Ldbd40
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ldbd40:
	.word	.Ldbd54
	.word	.Ldbd58
	.word	.Ldbd84
	.word	.Ldbd88
	.word	.Ldbd8c
.Ldbd54:
	ldr	r0, =0x7d
	b	.Ldbd8e
.Ldbd58:
	ldr	r0, =0xb9
	b	.Ldbd8e

	.align	2, 0
.Ldbd5c:
	.word	0
	.pool

.Ldbd84:
	ldr	r0, =0x6e
	b	.Ldbd8e
.Ldbd88:
	ldr	r0, =0xa1
	b	.Ldbd8e
.Ldbd8c:
	ldr	r0, =0x8d
.Ldbd8e:
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ldbda0:
	mov	r2, r11
	cmp	r2, #7
	bne	.Ldbdb6
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	b	.Ldbdc4
.Ldbdb6:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
.Ldbdc4:
	add	r2, r9
	str	r3, [r2]
	mov	r1, #0x90
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	ldr	r3, =0x7098
	mov	r2, #1
	mov	r6, #0
	neg	r2, r2
	add	r3, r9
.Ldbddc:
	add	r6, #1
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r6, #0x40
	bne	.Ldbddc
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r3, [r5]
	add	r7, sp, #0x9c
	ldr	r0, [r3, #8]
	mov	r1, r7
	bl	Func_e3958
	mov	r3, r11
	cmp	r3, #3
	bne	.Ldbe02
	ldr	r3, [r7, #4]
	sub	r3, #0x10
	str	r3, [r7, #4]
.Ldbe02:
	mov	r0, r11
	cmp	r0, #4
	bne	.Ldbe1c
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldbe16
	ldr	r3, [r7]
	add	r3, #0x1c
	b	.Ldbe1a
.Ldbe16:
	ldr	r3, [r7]
	sub	r3, #0x1c
.Ldbe1a:
	str	r3, [r7]
.Ldbe1c:
	mov	r1, r11
	cmp	r1, #7
	bne	.Ldbe5a
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldbe54
	ldr	r3, [r7]
	add	r3, #0x10
	b	.Ldbe58

	.pool_aligned

.Ldbe54:
	ldr	r3, [r7]
	sub	r3, #0x10
.Ldbe58:
	str	r3, [r7]
.Ldbe5a:
	mov	r2, r11
	cmp	r2, #5
	bne	.Ldbe70
	ldr	r0, [r7]
	mov	r1, #3
	bl	Func_af0_from_thumb
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldbe84	@ 0x55
	str	r0, [r7]
	strh	r3, [r2]
.Ldbe70:
	ldr	r2, =0x7828
	add	r2, r9
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldbeb0
	add	r5, sp, #0x3c
	mov	r4, #0x24
	b	.Ldbe90

	.align	2, 0
.Ldbe84:
	.word	0x55
	.pool

.Ldbe90:
	ldr	r3, [r2]
	ldrsh	r0, [r3, r4]
	mov	r1, r5
	str	r2, [sp, #0xc]
	str	r4, [sp, #8]
	bl	Func_e396c
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r5, #0xc
	add	r4, #2
	cmp	r6, r3
	bne	.Ldbe90
.Ldbeb0:
	ldr	r3, =0x7828
	mov	r0, #0xe1
	lsl	r0, #7
	mov	r2, #0
	add	r3, r9
	add	r0, r9
	str	r2, [sp, #0x20]
	str	r3, [sp, #0x1c]
	str	r7, [sp, #0x18]
	str	r0, [sp, #0x10]
.Ldbec4:
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r1]
	ldr	r0, [sp, #0x20]
	ldr	r1, [r3, #0x14]
	bl	Func_b1c_from_thumb
	ldr	r2, [sp, #0x20]
	mov	r8, r0
	cmp	r2, #4
	bne	.Ldbede
	mov	r0, #0x88
	bl	_Func_f9080
.Ldbede:
	mov	r3, r11
	cmp	r3, #6
	beq	.Ldbef2
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x18
	bne	.Ldbefe
	mov	r0, #0x86
	bl	_Func_bd7dc
	b	.Ldbefe
.Ldbef2:
	ldr	r1, [sp, #0x20]
	cmp	r1, #0x3c
	bne	.Ldbefe
	mov	r0, #0x86
	bl	_Func_bd7dc
.Ldbefe:
	mov	r2, r11
	cmp	r2, #5
	bne	.Ldbf70
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldbf3a
	ldr	r0, [sp, #0x20]
	mov	r1, #3
	bl	Func_af0_from_thumb
	mov	r1, #3
	bl	Func_b1c_from_thumb
	lsl	r1, r0, #3
	add	r1, r0
	ldr	r2, =0xc56
	ldr	r3, [sp, #0x18]
	lsl	r1, #9
	add	r1, r9
	mov	r0, #0x48
	add	r1, r2
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	str	r0, [sp]
	mov	r0, #0x3e
	str	r0, [sp, #4]
	sub	r2, #2
	b	.Ldbf64
.Ldbf3a:
	ldr	r0, [sp, #0x20]
	mov	r1, #3
	bl	Func_af0_from_thumb
	mov	r1, #3
	bl	Func_b1c_from_thumb
	lsl	r1, r0, #3
	add	r1, r0
	ldr	r3, [sp, #0x18]
	ldr	r0, =0xc56
	lsl	r1, #9
	add	r1, r9
	ldr	r2, [r3]
	add	r1, r0
	ldr	r3, [r3, #4]
	mov	r0, #0x48
	str	r0, [sp]
	mov	r0, #0x3e
	str	r0, [sp, #4]
	sub	r2, #0x46
.Ldbf64:
	sub	r3, #0x20
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	b	.Ldbfcc
.Ldbf70:
	bl	Func_4458
	mov	r1, r8
	lsl	r5, r1, #1
	add	r5, r8
	add	r6, sp, #0x3c
	lsl	r5, #2
	ldr	r3, [r6, r5]
	mov	r2, #0x1f
	and	r2, r0
	add	r3, r2
	add	r7, sp, #0x30
	sub	r3, #0x10
	str	r3, [r7]
	bl	Func_4458
	add	r5, #4
	ldr	r3, [r6, r5]
	mov	r2, #0x3f
	and	r2, r0
	add	r3, r2
	sub	r3, #0x10
	str	r3, [r7, #4]
	ldr	r2, [sp, #0x20]
	cmp	r2, #0x2f
	bgt	.Ldbfcc
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0]
	ldr	r1, [sp, #0x10]
	lsl	r3, #15
	str	r3, [r1]
	ldr	r3, [r0, #4]
	lsl	r3, #16
	str	r3, [r1, #4]
	ldr	r3, [r7]
	ldr	r2, [r0]
	sub	r3, r2
	lsl	r3, #11
	str	r3, [r1, #0xc]
	ldr	r3, [r7, #4]
	ldr	r2, [r0, #4]
	sub	r3, r2
	lsl	r3, #11
	str	r3, [r1, #0x10]
	mov	r3, #0
	str	r3, [r1, #0x18]
.Ldbfcc:
	mov	r5, #0xe1
	mov	r2, #0x20
	lsl	r5, #7
	mov	r6, #0
	mov	r8, r2
	mov	r7, #0x40
	add	r5, r9
.Ldbfda:
	ldr	r1, [r5, #0x18]
	cmp	r1, #0
	blt	.Ldc0a0
	mov	r3, r11
	cmp	r3, #7
	bne	.Ldc014
	cmp	r1, #5
	ble	.Ldc080
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r1, [r3, #4]
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r0, r8
	str	r0, [sp]
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x14]
	lsl	r1, #2
	ldr	r4, [r1, r0]
	ldr	r1, =0xc56
	sub	r2, #0x10
	sub	r3, #0x20
	ldr	r0, [sp, #0x24]
	add	r1, r9
	bl	_call_via_r4
	b	.Ldc080
.Ldc014:
	mov	r2, r11
	cmp	r2, #4
	bne	.Ldc04c
	cmp	r1, #5
	ble	.Ldc080
	mov	r3, r1
	cmp	r1, #0
	bge	.Ldc026
	add	r3, r1, #3
.Ldc026:
	asr	r1, r3, #2
	lsl	r1, #11
	ldr	r3, =0xc56
	add	r1, r9
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	add	r1, r3
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r0, r8
	str	r0, [sp]
	sub	r2, #0x10
	sub	r3, #0x20
	str	r7, [sp, #4]
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	b	.Ldc080
.Ldc04c:
	mov	r2, r11
	cmp	r2, #5
	beq	.Ldc080
	cmp	r1, #1
	ble	.Ldc080
	cmp	r1, #0
	bge	.Ldc05c
	add	r1, #3
.Ldc05c:
	asr	r1, #2
	ldr	r3, =0xc56
	lsl	r1, #11
	add	r1, r9
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	add	r1, r3
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r0, r8
	str	r0, [sp]
	sub	r2, #0x10
	sub	r3, #0x20
	str	r7, [sp, #4]
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
.Ldc080:
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0x18
	bne	.Ldc0a0
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ldc0a0:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #0x40
	bne	.Ldbfda
	mov	r1, r11
	cmp	r1, #5
	bne	.Ldc106
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldc17e
	ldr	r0, [sp, #0x20]
	ldr	r1, =0x77a8
	mov	r3, #7
	ldr	r5, =0x7828
	and	r0, r3
	add	r1, r9
	mov	r8, r0
	add	r5, r9
	mov	r4, #0x24
	mov	r7, #2
	mov	r10, r1
.Ldc0d0:
	ldr	r2, [sp, #0x20]
	cmp	r2, r7
	blt	.Ldc0f6
	cmp	r8, r6
	bne	.Ldc0f6
	mov	r3, #8
	mov	r0, r10
	str	r3, [r0]
	ldr	r3, [r5]
	ldrsh	r0, [r3, r4]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r6
	str	r4, [sp, #8]
	bl	Func_d6888
	ldr	r4, [sp, #8]
.Ldc0f6:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r4, #2
	add	r7, #4
	cmp	r6, r3
	bne	.Ldc0d0
	b	.Ldc17e
.Ldc106:
	ldr	r1, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r1]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldc17e
	ldr	r3, [sp, #0x20]
	mov	r7, #7
	mov	r5, #0x24
	and	r7, r3
.Ldc11c:
	lsl	r3, r6, #2
	ldr	r0, [sp, #0x20]
	add	r3, #0x10
	cmp	r0, r3
	blt	.Ldc16e
	cmp	r7, r6
	bne	.Ldc16e
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	mov	r2, r11
	cmp	r2, #6
	bne	.Ldc14e
	mov	r0, r9
	ldr	r3, [r0, r1]
	ldrsh	r0, [r3, r5]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0xe
	mov	r2, #5
	mov	r3, r6
	bl	Func_d6888
	b	.Ldc162
.Ldc14e:
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldrsh	r0, [r3, r5]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r6
	bl	Func_d6888
.Ldc162:
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldrsh	r0, [r3, r5]
	mov	r1, #4
	bl	_Func_b8228
.Ldc16e:
	ldr	r1, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r1]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r5, #2
	cmp	r6, r3
	bne	.Ldc11c
.Ldc17e:
	mov	r0, #4
	mov	r1, #4
	bl	Func_e155c
	mov	r3, r11
	cmp	r3, #6
	beq	.Ldc190
	bl	Func_cd52c
.Ldc190:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x20]
	add	r0, #0x1c
	add	r1, #1
	str	r0, [sp, #0x10]
	str	r1, [sp, #0x20]
	cmp	r1, #0x40
	beq	.Ldc1b0
	b	.Ldbec4
.Ldc1b0:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0xa8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dbc30

.thumb_func_start Func_dc1ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1eec
	ldmia	r3!, {r2}
	ldr	r5, =0x7828
	mov	r11, r2
	ldr	r3, [r3]
	sub	sp, #0x34
	add	r5, r11
	str	r3, [sp, #0x10]
	str	r0, [r5]
	mov	r0, #0
	bl	Func_cd594
	ldr	r0, =0x8c
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	ldr	r3, [r5]
	ldr	r0, [r3, #4]
	mov	r3, #1
	eor	r0, r3
	add	r1, sp, #0x14
	bl	Func_cef64
	ldr	r5, =ewram_10000
	mov	r3, #0xff
	mov	r7, #0
	mov	r8, r3
	mov	r6, #0
.Ldc236:
	bl	Func_4458
	mov	r2, r8
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #16
	str	r0, [r5]
	bl	Func_4458
	mov	r3, r8
	and	r0, r3
	sub	r0, #0x7f
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Func_4458
	mov	r2, r8
	and	r0, r2
	sub	r0, #0x7f
	mov	r3, #0x80
	lsl	r0, #16
	add	r7, #1
	lsl	r3, #1
	str	r0, [r5, #8]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x14]
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, r3
	bne	.Ldc236
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #1
	str	r3, [r2]
	ldr	r3, =0x7784
	mov	r5, #0
	add	r3, r11
	mov	r1, #0x90
	str	r5, [r3]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	bl	Func_41d8
	mov	r3, #0xa0
	mov	r2, sp
	add	r2, #0x28
	lsl	r3, #15
	str	r2, [sp, #0xc]
	str	r5, [r2]
	str	r3, [r2, #4]
	str	r5, [r2, #8]
	mov	r10, r5
.Ldc2a2:
	ldr	r3, =iwram_1e80
	ldr	r5, [r3]
	bl	Func_49ac
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	Func_51d8
	ldr	r0, [sp, #0xc]
	bl	Func_4cb4
	mov	r3, r10
	neg	r3, r3
	mov	r2, r10
	str	r3, [sp, #8]
	lsl	r2, #8
	lsl	r3, #8
	ldr	r6, =ewram_10000
	mov	r7, #0
	mov	r8, r3
	mov	r9, r2
.Ldc2ce:
	mov	r3, r7
	cmp	r7, #0
	bge	.Ldc2d6
	add	r3, r7, #3
.Ldc2d6:
	asr	r3, #2
	cmp	r10, r3
	ble	.Ldc3d2
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	bne	.Ldc3d2
	bl	Func_49e8
	mov	r3, #3
	and	r3, r7
	cmp	r3, #1
	beq	.Ldc30a
	cmp	r3, #1
	bgt	.Ldc2f8
	cmp	r3, #0
	beq	.Ldc302
	b	.Ldc326
.Ldc2f8:
	cmp	r3, #2
	beq	.Ldc312
	cmp	r3, #3
	beq	.Ldc31a
	b	.Ldc326
.Ldc302:
	mov	r0, r9
	bl	Func_4c1c
	b	.Ldc326
.Ldc30a:
	mov	r0, r8
	bl	Func_4bd4
	b	.Ldc326
.Ldc312:
	mov	r0, r8
	bl	Func_4c6c
	b	.Ldc326
.Ldc31a:
	mov	r0, r8
	bl	Func_4bd4
	mov	r0, r8
	bl	Func_4c6c
.Ldc326:
	add	r5, sp, #0x1c
	mov	r1, r5
	mov	r0, r6
	bl	Func_e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	bl	Func_4a5c
	ldr	r2, [r5, #8]
	cmp	r2, #0xf9
	bgt	.Ldc346
	mov	r3, #0xfa
	str	r3, [r5, #8]
	mov	r2, #0xfa
.Ldc346:
	ldr	r3, =0x27a
	cmp	r2, r3
	ble	.Ldc350
	str	r3, [r5, #8]
	mov	r2, r3
.Ldc350:
	mov	r3, r2
	sub	r3, #0xfa
	cmp	r3, #0
	bge	.Ldc35a
	add	r3, #0x3f
.Ldc35a:
	asr	r3, #6
	mov	r0, #9
	sub	r0, r3
	mov	r3, #3
	and	r3, r7
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	lsl	r1, #7
	add	r1, r3
	sub	r3, r4, #2
	ldrh	r3, [r2, r3]
	lsl	r1, #1
	add	r1, r3
	lsr	r3, r0, #31
	ldr	r2, [r5]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	add	r1, r11
	sub	r3, r0
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x10]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_e38b8
	mov	r3, r7
	cmp	r7, #0
	bge	.Ldc3a6
	add	r3, r7, #3
.Ldc3a6:
	asr	r3, #2
	add	r3, #0x1e
	cmp	r10, r3
	ble	.Ldc3d2
	ldr	r2, [r6]
	ldr	r3, [r6, #0xc]
	neg	r2, r2
	asr	r2, #8
	ldr	r1, [r6, #4]
	add	r3, r2
	neg	r1, r1
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	asr	r1, #8
	ldr	r0, [r6, #8]
	add	r3, r1
	neg	r0, r0
	str	r3, [r6, #0x10]
	ldr	r3, [r6, #0x14]
	asr	r0, #8
	add	r3, r0
	str	r3, [r6, #0x14]
.Ldc3d2:
	ldr	r2, [sp, #8]
	lsl	r3, r2, #3
	mov	r2, r10
	add	r8, r3
	add	r7, #1
	lsl	r3, r2, #3
	add	r9, r3
	add	r6, #0x1c
	cmp	r7, #0x40
	beq	.Ldc3e8
	b	.Ldc2ce
.Ldc3e8:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	mov	r3, #1
	add	r10, r3
	mov	r2, r10
	cmp	r2, #0xa0
	beq	.Ldc402
	b	.Ldc2a2
.Ldc402:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dc1ec

.thumb_func_start Func_dc454
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_1eec
	mov	r3, r6
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x58
	str	r3, [sp, #0x30]
	mov	r3, r6
	sub	r3, #0x6c
	ldr	r3, [r3]
	mov	r0, #1
	mov	r9, r1
	str	r3, [sp, #0x1c]
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldc4bc	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ldc4c0	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r0, =0xa9
	bl	Func_2f40
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r1, r5
	mov	r2, #0x80
	add	r5, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r0, r5
	mov	r1, r9
	bl	Func_5340
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	Func_ed408
	b	.Ldc4d4

	.align	2, 0
.Ldc4bc:
	.word	0x100
.Ldc4c0:
	.word	0x1010
	.pool

.Ldc4d4:
	mov	r1, #0xef
	lsl	r1, #7
	ldr	r2, =0x7784
	add	r1, r9
	mov	r3, #1
	str	r3, [r1]
	add	r2, r9
	mov	r3, #0
	str	r3, [r2]
	ldr	r6, [r6, #0x1c]
	str	r5, [r1]
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_cd260
	lsl	r1, #3
	str	r6, [sp, #0x24]
	bl	Func_41d8
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [sp, #0x18]
	cmp	r3, #0
	beq	.Ldc510
	mov	r3, #0x70
	neg	r3, r3
	str	r3, [sp, #0x18]
.Ldc510:
	ldr	r5, [sp, #0x18]
	ldr	r2, =REG_BG2X
	lsl	r3, r5, #8
	str	r3, [r2]
	mov	r4, #0
	mov	r3, #0xe1
	lsl	r3, #7
	mov	r2, #0
	mov	r1, #4
	add	r3, r9
.Ldc524:
	add	r4, #1
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #0xc]
	str	r1, [r3, #8]
	add	r3, #0x1c
	cmp	r4, #0x40
	bne	.Ldc524
	mov	r1, #0
	str	r1, [sp, #0x2c]
	ldr	r2, =0x7828
	mov	r5, r9
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	sub	r1, #0x40
	lsl	r3, #4
	cmp	r3, r1
	bne	.Ldc54a
	b	.Ldc680
.Ldc54a:
	mov	r3, #0
	str	r3, [sp, #0x20]
	mov	r5, r9
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ldc55a
	b	.Ldc65a
.Ldc55a:
	ldr	r3, [sp, #0x2c]
	mov	r1, #0x34
	mov	r5, #0x24
	add	r1, sp
	str	r3, [sp, #0x10]
	str	r5, [sp, #0xc]
	mov	r11, r1
.Ldc568:
	mov	r1, r9
	add	r5, r1, r2
	ldr	r2, [sp, #0x20]
	lsl	r2, #1
	ldr	r3, [r5]
	ldr	r1, [sp, #0xc]
	str	r2, [sp, #0x14]
	ldrsh	r0, [r3, r1]
	bl	_Func_b7dd0
	ldr	r3, [r5]
	ldr	r5, [sp, #0xc]
	ldr	r6, [r0]
	ldrsh	r0, [r3, r5]
	mov	r1, r11
	bl	Func_e396c
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r5, [sp, #0x18]
	add	r3, r5
	str	r3, [r2]
	ldr	r1, [sp, #0x10]
	cmp	r1, #0x3f
	bhi	.Ldc63c
	bl	Func_49ac
	ldr	r0, [sp, #0x1c]
	mov	r1, r0
	add	r1, #0xc
	bl	Func_51d8
	ldr	r3, [r6, #8]
	add	r0, sp, #0x4c
	str	r3, [r0]
	ldr	r3, [r6, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x10]
	add	r5, sp, #0x40
	str	r3, [r0, #8]
	mov	r1, r5
	bl	Func_e3944
	ldr	r3, [r5]
	ldr	r2, [sp, #0x18]
	add	r3, r2
	str	r3, [r5]
	mov	r4, #0
	mov	r10, r11
	mov	r7, r9
	mov	r8, r4
.Ldc5ce:
	ldr	r5, [sp, #0x14]
	ldr	r1, [sp, #0x20]
	add	r3, r5, r1
	add	r3, r4
	lsl	r5, r3, #3
	sub	r5, r3
	lsl	r5, #2
	mov	r2, #0xe1
	lsl	r2, #7
	add	r5, r9
	add	r5, r2
	ldr	r0, [r5, #0xc]
	add	r0, r8
	str	r4, [sp, #8]
	bl	Func_2322
	mov	r3, r10
	ldr	r6, [r3]
	lsl	r0, #3
	asr	r0, #16
	add	r6, r0
	ldr	r0, [r5, #0xc]
	add	r0, r8
	bl	Func_231c
	mov	r1, r10
	ldr	r3, [r1, #4]
	ldr	r2, [r5, #0xc]
	mov	r1, #0x80
	lsl	r1, #2
	lsl	r0, #3
	add	r2, r1
	asr	r0, #16
	str	r2, [r5, #0xc]
	add	r3, r0
	mov	r2, #0x18
	sub	r6, #0xc
	mov	r1, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	sub	r3, #0x1c
	mov	r2, r6
	ldr	r0, [sp, #0x30]
	ldr	r5, [sp, #0x24]
	bl	_call_via_r5
	ldr	r4, [sp, #8]
	mov	r1, #0x90
	ldr	r2, =0x5555
	lsl	r1, #2
	add	r4, #1
	add	r7, r1
	add	r8, r2
	cmp	r4, #3
	bne	.Ldc5ce
.Ldc63c:
	ldr	r3, [sp, #0x10]
	ldr	r5, [sp, #0xc]
	ldr	r1, [sp, #0x20]
	sub	r3, #0x10
	add	r5, #2
	add	r1, #1
	str	r5, [sp, #0xc]
	str	r3, [sp, #0x10]
	str	r1, [sp, #0x20]
	ldr	r2, =0x7828
	mov	r5, r9
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	bne	.Ldc568
.Ldc65a:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, [sp, #0x2c]
	add	r1, #1
	str	r1, [sp, #0x2c]
	ldr	r2, =0x7828
	mov	r5, r9
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	lsl	r3, #4
	add	r3, #0x40
	cmp	r1, r3
	beq	.Ldc680
	b	.Ldc54a
.Ldc680:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x58
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dc454

.thumb_func_start Func_dc6bc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_1eec
	mov	r3, r5
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x40
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	mov	r10, r1
	add	r3, r10
	str	r0, [r3]
	mov	r0, #0
	bl	Func_cd594
	ldr	r0, =0x9e
	mov	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	Func_e0524
	mov	r1, #0xd8
	lsl	r1, #5
	add	r1, r10
	mov	r2, #0
	mov	r3, #0
	ldr	r0, =0x6c
	bl	Func_e0524
	ldr	r0, =0xbb
	bl	Func_2f40
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_1af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	Func_ed408
	ldr	r2, [r5, #0x1c]
	mov	r3, #2
	str	r2, [sp, #0x18]
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	bl	Func_ed408
	ldr	r5, [r5, #0x20]
	str	r5, [sp, #0x1c]
	mov	r5, #0xe1
	mov	r3, #0
	lsl	r5, #7
	mov	r9, r3
	mov	r8, r3
	add	r5, r10
.Ldc746:
	bl	Func_4458
	ldr	r3, =0xffff
	mov	r7, r0
	and	r7, r3
	bl	Func_4458
	mov	r4, r8
	mov	r6, r0
	mov	r3, #0xff
	str	r4, [r5]
	str	r4, [r5, #4]
	str	r4, [r5, #8]
	mov	r0, r9
	mov	r1, #6
	and	r6, r3
	bl	Func_b1c_from_thumb
	cmp	r0, #5
	bne	.Ldc776
	mov	r1, r8
	str	r1, [r5, #0xc]
	str	r1, [r5, #0x10]
	b	.Ldc792
.Ldc776:
	mov	r0, r7
	bl	Func_2322
	mov	r3, r6
	mul	r3, r0
	asr	r3, #7
	str	r3, [r5, #0xc]
	mov	r0, r7
	bl	Func_231c
	mov	r3, r6
	mul	r3, r0
	asr	r3, #9
	str	r3, [r5, #0x10]
.Ldc792:
	mov	r3, #1
	add	r9, r3
	mov	r2, r8
	mov	r4, r9
	str	r2, [r5, #0x14]
	str	r2, [r5, #0x18]
	add	r5, #0x1c
	cmp	r4, #0x40
	bne	.Ldc746
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r10
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Func_cd260
	bl	Func_41d8
	mov	r1, #0
	str	r1, [sp, #0x20]
.Ldc7c4:
	ldr	r3, =iwram_1e80
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x10]
	ldr	r2, =0x7828
	mov	r4, r10
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ldc7dc
	b	.Ldc8fa
.Ldc7dc:
	ldr	r1, [sp, #0x10]
	mov	r3, #0x28
	add	r1, #0xc
	mov	r4, #0
	add	r3, sp
	str	r1, [sp, #0xc]
	str	r4, [sp, #8]
	mov	r8, r3
.Ldc7ec:
	ldr	r4, [sp, #0x14]
	mov	r1, r10
	ldr	r2, [r1, r2]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_Func_b7dd0
	ldr	r5, [r0]
	bl	Func_49ac
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	bl	Func_51d8
	ldr	r3, [r5, #8]
	mov	r2, r8
	str	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r2, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r8
	str	r3, [r2, #8]
	bl	Func_4cb4
	ldr	r4, [sp, #0x14]
	ldr	r1, [sp, #0x20]
	lsl	r3, r4, #3
	cmp	r1, r3
	blt	.Ldc8e0
	add	r3, #0x28
	cmp	r1, r3
	bge	.Ldc8e0
	ldr	r4, [sp, #8]
	lsl	r3, r4, #3
	sub	r3, r4
	lsl	r3, #2
	mov	r1, #0xe1
	mov	r2, #0
	add	r7, sp, #0x34
	add	r3, r10
	lsl	r1, #7
	mov	r9, r2
	mov	r11, r7
	add	r6, r3, r1
.Ldc848:
	ldr	r0, [r6, #0x18]
	mov	r1, #6
	bl	Func_af0_from_thumb
	mov	r5, r0
	cmp	r5, #5
	ble	.Ldc858
	mov	r5, #5
.Ldc858:
	mov	r0, r6
	mov	r1, r11
	bl	Func_e3944
	mov	r2, r11
	ldr	r3, [r2]
	asr	r3, #1
	str	r3, [r2]
	mov	r3, r9
	cmp	r3, #5
	bne	.Ldc8a2
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x3e
	lsl	r2, #4
	bl	Func_e38b8
	lsl	r1, r5, #3
	add	r1, r5
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r0, #0x18
	lsl	r1, #7
	mov	r4, #0xd8
	lsl	r4, #5
	add	r1, r10
	str	r0, [sp]
	mov	r0, #0x30
	add	r1, r4
	str	r0, [sp, #4]
	sub	r2, #0xc
	sub	r3, #0x24
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x18]
	bl	_call_via_r4
	b	.Ldc8ce
.Ldc8a2:
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x3c
	lsl	r2, #2
	bl	Func_e38b8
	lsl	r1, r5, #3
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r0, #0x18
	add	r1, r5
	lsl	r1, #7
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	add	r1, r10
	sub	r2, #0xc
	sub	r3, #0x24
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Ldc8ce:
	ldr	r3, [r6, #0x18]
	mov	r1, #1
	add	r9, r1
	add	r3, #1
	mov	r2, r9
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r2, #6
	bne	.Ldc848
.Ldc8e0:
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #0x14]
	add	r3, #6
	add	r4, #1
	str	r3, [sp, #8]
	str	r4, [sp, #0x14]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	cmp	r4, r3
	beq	.Ldc8fa
	b	.Ldc7ec
.Ldc8fa:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, [sp, #0x20]
	add	r2, #1
	str	r2, [sp, #0x20]
	cmp	r2, #0x60
	beq	.Ldc914
	b	.Ldc7c4
.Ldc914:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dc6bc

.thumb_func_start Func_dc968
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =iwram_1f00
	ldr	r1, [r7]
	sub	sp, #0x78
	str	r1, [sp, #0x38]
	mov	r3, r7
	sub	r3, #0x10
	ldr	r3, [r3]
	str	r3, [sp, #0x34]
	mov	r3, r7
	sub	r3, #0x14
	ldr	r3, [r3]
	mov	r11, r3
	mov	r3, r7
	sub	r3, #0xc
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =iwram_1ad0
	ldr	r5, =0x7828
	ldrh	r3, [r3, #4]
	add	r5, r11
	str	r3, [sp, #0x20]
	str	r0, [r5]
	mov	r0, #0x80
	lsl	r0, #6
	bl	Func_cd594
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldc9e8	@ 0x100
	mov	r9, r2
	mov	r0, r9
	strh	r3, [r0]
	bl	Func_c9048
	mov	r1, #0xa0
	lsl	r1, #19
	ldr	r2, .Ldc9ec	@ 0
	mov	r8, r1
	mov	r3, r8
	strh	r2, [r3]
	ldr	r3, =0x5000002
	strh	r2, [r3]
	mov	r3, #0xef
	lsl	r3, #7
	add	r3, r11
	mov	r6, #0
	mov	r1, #0x90
	str	r6, [r3]
	lsl	r1, #3
	ldr	r0, =Func_cd260
	mov	r10, r1
	bl	Func_41d8
	mov	r1, #0
	mov	r0, #0
	bl	Func_cd104
	b	.Ldca08

	.align	2, 0
.Ldc9e8:
	.word	0x100
.Ldc9ec:
	.word	0
	.pool

.Ldca08:
	ldr	r0, [r5]
	bl	Func_d6750
	mov	r1, #0xb9
	lsl	r1, #1
	mov	r0, #9
	mov	r2, #1
	bl	Func_dbb24
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	ldr	r0, =0x6a
	bl	Func_e0524
	ldr	r0, =0xa0
	bl	Func_2f40
	ldr	r3, =Func_1af8
	mov	r1, r0
	mov	r2, #0x80
	mov	r0, r8
	bl	_call_via_r3
	mov	r2, #0
	ldr	r1, [sp, #0x24]
	mov	r3, #0
	ldr	r0, =0x73
	bl	Func_e0524
	ldr	r0, =0xd2
	bl	Func_2f40
	mov	r3, #2
	str	r0, [sp, #0x30]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_ed408
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r3, [sp]
	bl	Func_ed408
	ldr	r3, [r7, #8]
	str	r3, [sp, #0x3c]
	ldr	r3, [r7, #0xc]
	mov	r2, sp
	add	r2, #0x3c
	str	r2, [sp, #0x10]
	str	r3, [r2, #4]
	ldr	r2, =iwram_1ce0
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	mov	r0, #1
	bl	Func_30f8
	ldr	r1, =0x3b
	mov	r0, #1
	mov	r2, #0
	bl	_Func_c08ec
	ldr	r3, =0x7790
	ldr	r2, =0x7794
	add	r3, r11
	str	r6, [r3]
	add	r2, r11
	mov	r3, #4
	str	r3, [r2]
	ldr	r2, =0x7798
	sub	r3, #5
	add	r2, r11
	str	r3, [r2]
	ldr	r3, =0x779c
	add	r3, r11
	str	r6, [r3]
	mov	r1, r10
	ldr	r0, =Func_c90e4
	bl	Func_41d8
	ldr	r0, [sp, #0x38]
	mov	r3, #1
	str	r3, [r0, #0x10]
	mov	r1, #1
	mov	r0, #0
	bl	Func_cd104
	ldr	r3, .Ldcaf0	@ 0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Ldcaf4	@ 0x80
	mov	r1, r9
	strh	r3, [r1]
	ldr	r3, .Ldcaf8	@ 0x1010
	add	r2, #0x52
	strh	r3, [r2]
	ldr	r3, .Ldcafc	@ 0x3f44
	sub	r2, #2
	strh	r3, [r2]
	mov	r7, #0xe1
	mov	r2, #0
	ldr	r3, =0xffff
	lsl	r7, #7
	str	r2, [sp, #0x1c]
	str	r2, [sp, #0x18]
	str	r2, [sp, #0x2c]
	mov	r8, r3
	add	r7, r11
	b	.Ldcb34

	.align	2, 0
.Ldcaf0:
	.word	0x7741
.Ldcaf4:
	.word	0x80
.Ldcaf8:
	.word	0x1010
.Ldcafc:
	.word	0x3f44
	.pool

.Ldcb34:
	bl	Func_4458
	mov	r1, #0x60
	bl	Func_b50_from_thumb
	add	r0, #0xc
	lsl	r0, #16
	str	r0, [r7]
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	lsl	r3, #16
	str	r3, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x10]
	str	r3, [r7, #0x18]
	ldr	r0, [sp, #0x2c]
	lsl	r2, r0, #1
	add	r2, r0
	mov	r9, r3
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =ewram_13800
	lsl	r3, #7
	add	r6, r3, r1
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =ewram_10000
	lsl	r3, #5
	add	r5, r3, r2
.Ldcb76:
	bl	Func_4458
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x30
	str	r3, [r5]
	bl	Func_49ac
	bl	Func_4458
	mov	r3, r8
	and	r0, r3
	bl	Func_4c6c
	bl	Func_4458
	mov	r1, r8
	and	r0, r1
	bl	Func_4bd4
	bl	Func_4458
	mov	r2, r8
	and	r0, r2
	bl	Func_4c1c
	mov	r0, r6
	bl	Func_4a28
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	add	r5, #0x1c
	add	r6, #0x30
	cmp	r0, #0x18
	bne	.Ldcb76
	ldr	r1, [sp, #0x2c]
	add	r1, #1
	add	r7, #0x1c
	str	r1, [sp, #0x2c]
	cmp	r1, #0x10
	bne	.Ldcb34
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r11
	str	r3, [r2]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Ldcbfc	@ 0x784
	strh	r3, [r2]
	mov	r2, #0
	str	r2, [sp, #0x28]
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Ldcbf4
	b	.Ldcfba
.Ldcbf4:
	mov	r3, sp
	add	r3, #0x6c
	str	r3, [sp, #0xc]
	b	.Ldcc14

	.align	2, 0
.Ldcbfc:
	.word	0x784
	.pool

.Ldcc14:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0xd1
	bgt	.Ldccc2
	cmp	r0, #0
	bne	.Ldcc3e
	ldr	r1, [sp, #0x30]
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1, #1]
	lsl	r3, #8
	add	r3, r2
	str	r3, [sp, #0x1c]
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1, #3]
	lsl	r3, #8
	add	r3, r2
	add	r1, #4
	str	r3, [sp, #0x18]
	str	r1, [sp, #0x30]
	b	.Ldcc58
.Ldcc3e:
	ldr	r2, [sp, #0x30]
	ldr	r0, [sp, #0x1c]
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	add	r0, r3
	str	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x18]
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	add	r2, #2
	add	r1, r3
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x30]
.Ldcc58:
	add	r2, sp, #0x50
	mov	r3, #0
	str	r3, [r2, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r2, #4]
	ldr	r0, [sp, #0x18]
	mov	r3, #0
	str	r3, [sp, #0x14]
	mov	r9, r3
	mov	r3, #0x80
	mov	r10, r2
	lsl	r3, #15
	lsl	r2, r0, #16
	sub	r7, r3, r2
.Ldcc76:
	ldr	r1, [sp, #0x1c]
	mov	r2, #0xa0
	lsl	r3, r1, #16
	lsl	r2, #15
	mov	r0, r9
	add	r5, r3, r2
	ldr	r1, =0x77d8
	lsl	r3, r0, #2
	add	r3, r11
	mov	r4, #0
	mov	r8, r7
	add	r6, r3, r1
.Ldcc8e:
	mov	r2, r10
	mov	r3, r8
	str	r5, [r2]
	str	r3, [r2, #8]
	ldmia	r6!, {r0}
	mov	r1, r10
	ldr	r2, =.Leeb40
	mov	r3, #0
	str	r4, [sp, #8]
	bl	_Func_b168
	ldr	r4, [sp, #8]
	mov	r0, #0x80
	lsl	r0, #14
	add	r4, #1
	add	r5, r0
	cmp	r4, #3
	bne	.Ldcc8e
	ldr	r2, [sp, #0x14]
	mov	r1, #3
	add	r2, #1
	add	r9, r1
	add	r7, r0
	str	r2, [sp, #0x14]
	cmp	r2, #3
	bne	.Ldcc76
.Ldccc2:
	ldr	r3, [sp, #0xc]
	mov	r1, #0
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x30
	bne	.Ldccde
	ldr	r3, =0x77b4
	mov	r2, #0x18
	add	r3, r11
	str	r2, [r3]
	ldr	r3, =0x77b8
	add	r3, r11
	str	r1, [r3]
.Ldccde:
	mov	r1, #0
	str	r1, [sp, #0x2c]
.Ldcce2:
	ldr	r2, [sp, #0x2c]
	lsl	r6, r2, #3
	mov	r7, r6
	ldr	r3, [sp, #0x28]
	add	r7, #0x40
	cmp	r3, r7
	bge	.Ldccf2
	b	.Ldcf88
.Ldccf2:
	sub	r3, r6, r2
	lsl	r3, #2
	mov	r0, #0xe1
	add	r3, r11
	lsl	r0, #7
	add	r5, r3, r0
	mov	r2, #2
	ldrsh	r1, [r5, r2]
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	mov	r8, r1
	mov	r10, r3
	ldr	r1, [sp, #0x28]
	mov	r3, r6
	add	r3, #0x54
	cmp	r1, r3
	bne	.Ldcd1a
	mov	r0, #0xd4
	bl	_Func_f9080
.Ldcd1a:
	mov	r3, r6
	ldr	r2, [sp, #0x28]
	add	r3, #0x55
	cmp	r2, r3
	blt	.Ldcd8e
	ldr	r1, [r5, #0xc]
	ldr	r3, [r5]
	add	r3, r1
	ldr	r2, [r5, #0x10]
	str	r3, [r5]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, =0xffff0000
	mov	r0, #0x80
	add	r1, r3
	lsl	r0, #10
	str	r1, [r5, #0xc]
	add	r2, r0
	ldr	r1, =0x16ac
	str	r2, [r5, #0x10]
	mov	r0, #0x10
	mov	r5, #0x15
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	ldr	r4, [sp, #0x3c]
	add	r1, r11
	add	r2, #4
	sub	r3, #0x28
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r0, #0x1d
	ldr	r1, =0x17fc
	str	r0, [sp]
	mov	r2, r8
	mov	r0, #0x23
	mov	r3, r10
	add	r1, r11
	sub	r2, #0x10
	sub	r3, #0x13
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r1, =0x1bf3
	mov	r0, #0x18
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0x14
	add	r3, #0x10
	str	r5, [sp]
	b	.Ldcebc
.Ldcd8e:
	mov	r3, r6
	ldr	r1, [sp, #0x28]
	add	r3, #0x50
	cmp	r1, r3
	bge	.Ldcd9a
	b	.Ldcf08
.Ldcd9a:
	sub	r3, r1, r7
	sub	r3, #0x10
	cmp	r3, #4
	bls	.Ldcda4
	b	.Ldcf88
.Ldcda4:
	ldr	r2, =.Ldcdac
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ldcdac:
	.word	.Ldcdc0
	.word	.Ldcddc
	.word	.Ldcdf4
	.word	.Ldce26
	.word	.Ldce74
.Ldcdc0:
	mov	r1, #0xe
	mov	r2, r8
	mov	r3, r10
	str	r1, [sp]
	mov	r1, #0x1c
	str	r1, [sp, #4]
	sub	r2, #7
	sub	r3, #0xe
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	mov	r1, r11
	bl	_call_via_r4
	b	.Ldcf88
.Ldcddc:
	mov	r0, #0x17
	mov	r1, #0xc4
	lsl	r1, #1
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	mov	r0, #0x2c
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0xb
	sub	r3, #0x16
	b	.Ldcebc
.Ldcdf4:
	mov	r0, #0x14
	ldr	r1, =0x57c
	str	r0, [sp]
	mov	r2, r8
	mov	r0, #0x1e
	mov	r3, r10
	add	r1, r11
	sub	r2, #4
	sub	r3, #0x1f
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r0, #0x16
	ldr	r1, =0x7d4
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	mov	r0, #0x21
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0x10
	sub	r3, #1
	b	.Ldcebc
.Ldce26:
	mov	r0, #0x12
	ldr	r1, =0xaaa
	str	r0, [sp]
	mov	r2, r8
	mov	r0, #0x1b
	mov	r3, r10
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x3c]
	add	r1, r11
	add	r2, #1
	sub	r3, #0x26
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r1, #0xc9
	mov	r0, #0x16
	lsl	r1, #4
	mov	r2, r8
	mov	r3, r10
	add	r1, r11
	sub	r2, #0xb
	sub	r3, #0xb
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r0, #0x13
	ldr	r1, =0xe74
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	mov	r0, #0x1c
	str	r0, [sp, #4]
	add	r1, r11
	sub	r2, #0x13
	add	r3, #0xb
	b	.Ldcebc
.Ldce74:
	ldr	r1, =0x1088
	mov	r5, #0x17
	mov	r0, #0x10
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x3c]
	add	r1, r11
	add	r2, #4
	sub	r3, #0x28
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r1, =0x11f8
	str	r5, [sp]
	mov	r2, r8
	mov	r5, #0x1c
	mov	r3, r10
	add	r1, r11
	sub	r2, #0xa
	sub	r3, #0x11
	ldr	r4, [sp, #0x3c]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r1, =0x147c
	mov	r0, #0x14
	mov	r2, r8
	mov	r3, r10
	str	r0, [sp]
	add	r1, r11
	sub	r2, #0x14
	add	r3, #0xb
	str	r5, [sp, #4]
.Ldcebc:
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	b	.Ldcf88

	.pool_aligned

.Ldcf08:
	ldr	r3, [sp, #0x2c]
	mov	r2, #0
	mov	r9, r2
	lsl	r2, r3, #1
	add	r3, r2, r3
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r0, =ewram_13800
	lsl	r2, #7
	add	r7, r2, r0
	lsl	r2, r3, #3
	sub	r2, r3
	ldr	r1, =ewram_10000
	lsl	r2, #5
	add	r6, sp, #0x60
	add	r5, r2, r1
.Ldcf28:
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.Ldcf7a
	mov	r0, r7
	bl	Func_4a44
	ldr	r3, [r5]
	ldr	r2, [sp, #0xc]
	str	r3, [r2]
	mov	r1, r6
	ldr	r0, [sp, #0xc]
	bl	Func_e3944
	ldr	r3, [r6]
	asr	r3, #1
	add	r3, r8
	str	r3, [r6]
	ldr	r3, [r6, #4]
	add	r3, r10
	add	r3, #0x10
	str	r3, [r6, #4]
	ldr	r3, [r5]
	sub	r3, #4
	str	r3, [r5]
	ldr	r3, =Data_ede48
	ldrh	r1, [r3, #8]
	ldr	r3, [sp, #0x24]
	mov	r0, #5
	ldr	r2, [r6]
	add	r1, r3, r1
	ldr	r3, [r6, #4]
	str	r0, [sp]
	mov	r0, #0xa
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x10]
	sub	r2, #2
	ldr	r4, [r0, #4]
	sub	r3, #5
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
.Ldcf7a:
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	add	r7, #0x30
	add	r5, #0x1c
	cmp	r2, #0x18
	bne	.Ldcf28
.Ldcf88:
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	str	r3, [sp, #0x2c]
	cmp	r3, #0x10
	beq	.Ldcf94
	b	.Ldcce2
.Ldcf94:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	ldr	r0, [sp, #0x28]
	add	r0, #1
	str	r0, [sp, #0x28]
	cmp	r0, #0xdc
	beq	.Ldcfba
	ldr	r3, =iwram_1b04
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Ldcfba
	b	.Ldcc14
.Ldcfba:
	ldr	r0, =Func_c90e4
	bl	Func_4278
	ldr	r1, [sp, #0x38]
	mov	r3, #0
	add	r2, sp, #0x20
	str	r3, [r1, #0x10]
	ldrh	r2, [r2]
	ldr	r3, =iwram_1ad0
	strh	r2, [r3, #4]
	bl	Func_d67dc
	ldr	r5, =0x77d8
	mov	r3, #0
	str	r3, [sp, #0x2c]
	add	r5, r11
.Ldcfda:
	ldmia	r5!, {r0}
	bl	_Func_bdd4
	ldr	r0, [sp, #0x2c]
	add	r0, #1
	str	r0, [sp, #0x2c]
	cmp	r0, #9
	bne	.Ldcfda
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldd024	@ 0x80
	strh	r3, [r2]
	ldr	r3, .Ldd028	@ 0x7741
	sub	r2, #0x20
	strh	r3, [r2]
	ldr	r1, =ewram_10000
	ldr	r0, =0xb4
	mov	r2, #1
	mov	r3, #0
	bl	Func_e0524
	mov	r5, #0xe1
	mov	r1, #0
	lsl	r5, #7
	str	r1, [sp, #0x2c]
	add	r6, sp, #0x44
	add	r5, r11
	mov	r7, #0x1f
.Ldd010:
	ldr	r0, [sp, #0x2c]
	mov	r1, #6
	bl	Func_b1c_from_thumb
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r2, [r3]
	ldr	r3, [r2, #0x14]
	b	.Ldd058

	.align	2, 0
.Ldd024:
	.word	0x80
.Ldd028:
	.word	0x7741
	.pool

.Ldd058:
	cmp	r0, r3
	bge	.Ldd08c
	lsl	r3, r0, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	mov	r1, r6
	bl	Func_e396c
	bl	Func_4458
	and	r0, r7
	add	r0, #0x28
	neg	r0, r0
	str	r0, [r5, #4]
	ldr	r1, [r6]
	lsr	r3, r1, #31
	add	r1, r3
	mov	r3, #0x50
	sub	r3, r0
	lsr	r2, r3, #31
	add	r3, r2
	asr	r1, #1
	asr	r3, #1
	add	r1, r3
	str	r1, [r5]
	b	.Ldd0a4
.Ldd08c:
	bl	Func_4458
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x50
	str	r3, [r5]
	bl	Func_4458
	and	r0, r7
	add	r0, #0x28
	neg	r0, r0
	str	r0, [r5, #4]
.Ldd0a4:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
	ldr	r2, [sp, #0x2c]
	add	r2, #1
	add	r5, #0x1c
	str	r2, [sp, #0x2c]
	cmp	r2, #0x20
	bne	.Ldd010
	mov	r3, #0
	str	r3, [sp, #0x28]
.Ldd0ba:
	mov	r0, #0
	mov	r7, #0xe1
	lsl	r7, #7
	str	r0, [sp, #0x2c]
	add	r7, r11
.Ldd0c4:
	ldr	r1, [sp, #0x2c]
	ldr	r2, [sp, #0x28]
	lsl	r3, r1, #1
	cmp	r2, r3
	bge	.Ldd0d4
	cmp	r2, #0x28
	bgt	.Ldd0d4
	b	.Ldd220
.Ldd0d4:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	blt	.Ldd168
	cmp	r3, #0x17
	bgt	.Ldd162
	mov	r6, r3
	cmp	r3, #0
	bge	.Ldd0e6
	add	r6, r3, #3
.Ldd0e6:
	ldr	r3, [sp, #0x2c]
	asr	r6, #2
	ldr	r2, =Data_edeb2
	mov	r4, #1
	and	r4, r3
	lsl	r3, r6, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =Data_ede9f
	ldrb	r5, [r3, r6]
	ldr	r2, [r7]
	lsr	r3, r5, #1
	ldr	r0, =ewram_10000
	sub	r2, r3
	ldr	r3, =Data_edeab
	add	r1, r0
	ldrb	r0, [r3, r6]
	ldr	r3, [r7, #4]
	str	r5, [sp]
	add	r3, r0
	ldr	r0, =Data_edea5
	ldrb	r0, [r0, r6]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x10]
	lsl	r4, #2
	sub	r3, #0x28
	ldr	r4, [r4, r0]
	sub	r2, #8
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	ldr	r3, [r7, #0x18]
	cmp	r3, #0xb
	bgt	.Ldd162
	mov	r1, #0x10
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x15
	str	r1, [sp, #4]
	ldr	r1, =0x16ac
	ldr	r4, [sp, #0x3c]
	add	r2, #4
	sub	r3, #0x28
	ldr	r0, [sp, #0x34]
	add	r1, r11
	bl	_call_via_r4
	mov	r1, #0x1d
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x23
	str	r1, [sp, #4]
	ldr	r1, =0x17fc
	sub	r3, #0x13
	sub	r2, #0x10
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	add	r1, r11
	bl	_call_via_r4
	ldr	r3, [r7, #0x18]
.Ldd162:
	add	r3, #1
	str	r3, [r7, #0x18]
	b	.Ldd220
.Ldd168:
	ldr	r1, [r7, #4]
	mov	r5, #0x18
	cmp	r1, #0x38
	ble	.Ldd176
	sub	r3, r5, r1
	mov	r5, r3
	add	r5, #0x38
.Ldd176:
	mov	r3, r1
	mov	r1, #0x10
	ldr	r2, [r7]
	str	r1, [sp]
	ldr	r1, =0x16ac
	mov	r6, #0x15
	add	r2, #4
	sub	r3, #0x28
	ldr	r4, [sp, #0x3c]
	add	r1, r11
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r4
	mov	r1, #0x1d
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r1, [sp]
	mov	r1, #0x23
	str	r1, [sp, #4]
	ldr	r1, =0x17fc
	sub	r2, #0x10
	sub	r3, #0x13
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	add	r1, r11
	bl	_call_via_r4
	cmp	r5, #0
	ble	.Ldd1ca
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, =0x1bf3
	sub	r2, #0x14
	add	r3, #0x10
	str	r6, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x34]
	add	r1, r11
	bl	_call_via_r4
.Ldd1ca:
	ldr	r3, [r7]
	sub	r3, #6
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0xc
	str	r3, [r7, #4]
	cmp	r3, #0x4f
	ble	.Ldd220
	ldr	r2, =0x77a8
	mov	r3, #0
	add	r2, r11
	str	r3, [r7, #0x18]
	mov	r3, #2
	str	r3, [r2]
	mov	r0, #0x86
	bl	_Func_f9080
	mov	r1, #6
	ldr	r0, [sp, #0x2c]
	bl	Func_b1c_from_thumb
	ldr	r6, =0x7828
	add	r6, r11
	ldr	r2, [r6]
	ldr	r3, [r2, #0x14]
	mov	r4, r0
	cmp	r4, r3
	bge	.Ldd220
	lsl	r5, r4, #1
	add	r5, #0x24
	mov	r3, #8
	ldrsh	r0, [r2, r5]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r4
	bl	Func_d6888
	ldr	r3, [r6]
	mov	r1, #1
	ldrsh	r0, [r3, r5]
	bl	_Func_b8228
.Ldd220:
	ldr	r3, [sp, #0x2c]
	add	r3, #1
	add	r7, #0x1c
	str	r3, [sp, #0x2c]
	cmp	r3, #0x18
	beq	.Ldd22e
	b	.Ldd0c4
.Ldd22e:
	mov	r0, #4
	mov	r1, #8
	bl	Func_e155c
	bl	Func_cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	mov	r0, #1
	str	r3, [r2]
	bl	Func_30f8
	ldr	r0, [sp, #0x28]
	add	r0, #1
	str	r0, [sp, #0x28]
	cmp	r0, #0x58
	beq	.Ldd254
	b	.Ldd0ba
.Ldd254:
	ldr	r0, =Func_cd260
	bl	Func_4278
	mov	r0, #0x2f
	bl	Func_2dd8
	mov	r0, #0x2e
	bl	Func_2dd8
	bl	Func_cdbc0
	add	sp, #0x78
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_dc968

	.section .rodata

.Leeb40:
	.incrom 0xeeb40, 0xeeb48
