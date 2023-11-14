	.include "macros.inc"

.thumb_func_start Func_d924
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e64
	ldr	r5, [r3]
	mov	r6, r5
	sub	sp, #4
	mov	r7, r0
	mov	r8, r1
	mov	r4, #0
	add	r6, #0x59
.Ld93a:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Ld96e
	ldrb	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Ld96e
	cmp	r5, r7
	beq	.Ld96e
	ldrh	r1, [r5, #0x20]
	ldrh	r3, [r7, #0x20]
	mov	r0, r5
	add	r0, #8
	sub	r1, #2
	sub	r3, #2
	mov	r2, r8
	str	r4, [sp]
	bl	Func_eba0
	ldr	r4, [sp]
	cmp	r0, #0
	blt	.Ld96e
	mov	r0, #1
	neg	r0, r0
	b	.Ld97a
.Ld96e:
	add	r4, #1
	add	r6, #0x70
	add	r5, #0x70
	cmp	r4, #0x3f
	ble	.Ld93a
	mov	r0, #0
.Ld97a:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_d924

.thumb_func_start Func_d98c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e64
	ldr	r5, [r3]
	mov	r6, r5
	sub	sp, #4
	mov	r7, r0
	mov	r8, r1
	mov	r4, #0
	add	r6, #0x59
.Ld9a2:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Ld9d4
	ldrb	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Ld9d4
	cmp	r5, r7
	beq	.Ld9d4
	ldrh	r1, [r5, #0x20]
	ldrh	r3, [r7, #0x20]
	mov	r0, r5
	add	r0, #8
	sub	r1, #2
	sub	r3, #2
	mov	r2, r8
	str	r4, [sp]
	bl	Func_eba0
	ldr	r4, [sp]
	cmp	r0, #0
	blt	.Ld9d4
	mov	r0, r5
	b	.Ld9e0
.Ld9d4:
	add	r4, #1
	add	r6, #0x70
	add	r5, #0x70
	cmp	r4, #0x3f
	ble	.Ld9a2
	mov	r0, #0
.Ld9e0:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_d98c

.thumb_func_start Func_d9f0
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r1}
	ldmia	r3!, {r2}
	ldr	r3, [r3]
	bl	Func_d130
	ldrh	r3, [r5, #4]
	add	r3, #4
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_d9f0

.thumb_func_start Func_da18
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r1}
	ldmia	r3!, {r2}
	ldr	r3, [r3]
	bl	Func_d14c
	ldrh	r3, [r5, #4]
	add	r3, #4
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_da18

.thumb_func_start Func_da40
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r2}
	ldr	r1, [r5, #8]
	ldmia	r3!, {r0}
	add	r1, r2
	ldr	r4, [r3]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	add	r2, r0
	add	r3, r4
	mov	r0, r5
	bl	Func_d14c
	ldrh	r3, [r5, #4]
	add	r3, #4
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_da40

.thumb_func_start Func_da78
	push	{r5, lr}
	mov	r5, r0
	ldr	r2, [r5, #0x68]
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	Func_44d0
	ldrh	r3, [r5, #4]
	add	r3, #1
	strh	r0, [r5, #6]
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_da78

.thumb_func_start Func_daa0
	push	{r5, lr}
	mov	r5, r0
	ldr	r3, [r5, #0x68]
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #0xc]
	ldr	r3, [r3, #0x10]
	bl	Func_d14c
	ldrh	r3, [r5, #4]
	add	r3, #1
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_daa0

.thumb_func_start Func_dac0
	push	{r5, lr}
	sub	sp, #0xc
	mov	r5, r0
	mov	r0, sp
	ldr	r3, [r0]
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	add	r1, r3
	ldr	r3, [r0, #4]
	ldr	r0, [r0, #8]
	add	r2, r3
	ldr	r3, [r5, #0x10]
	add	r3, r0
	mov	r0, r5
	bl	Func_d14c
	ldrh	r3, [r5, #4]
	add	r3, #3
	mov	r0, #1
	strh	r3, [r5, #4]
	add	sp, #0xc
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_dac0

.thumb_func_start Func_daf0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1e70
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r2, #0xf0
	lsl	r2, #15
	mov	r8, r0
	add	r7, r3, r2
	ldr	r0, [r0, #0x68]
	mov	r3, r1
	add	r3, #0xf0
	ldr	r2, [r0, #0xc]
	ldr	r3, [r3]
	mov	r4, #0xc0
	add	r3, r2
	lsl	r4, #15
	add	r6, r3, r4
	mov	r3, r1
	add	r3, #0xf4
	ldr	r3, [r3]
	ldr	r5, =0xff880000
	add	r4, r3, r5
	mov	r3, r1
	add	r3, #0xf8
	ldr	r3, [r3]
	add	r3, r2
	ldr	r2, =0xffc00000
	add	r1, r3, r2
	mov	r2, r8
	add	r2, #0x55
	mov	r3, #0
	sub	sp, #8
	strb	r3, [r2]
	cmp	r0, #0
	bne	.Ldb48
	b	.Ldca0
.Ldb48:
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.Ldb50
	b	.Ldca0
.Ldb50:
	ldr	r3, [r0, #8]
	ldr	r5, [r0, #0xc]
	mov	r11, r3
	ldr	r0, [r0, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r2, r8
	str	r0, [sp, #4]
	str	r3, [r2, #0x38]
	str	r3, [r2, #0x3c]
	str	r3, [r2, #0x40]
	cmp	r11, r7
	bge	.Ldb6c
	mov	r11, r7
.Ldb6c:
	ldr	r3, [sp, #4]
	cmp	r3, r6
	bge	.Ldb74
	str	r6, [sp, #4]
.Ldb74:
	cmp	r11, r4
	ble	.Ldb7a
	mov	r11, r4
.Ldb7a:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.Ldb82
	str	r1, [sp, #4]
.Ldb82:
	mov	r3, r8
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.Ldb9c
	mov	r4, r8
	mov	r3, r11
	str	r3, [r4, #8]
	str	r5, [r4, #0xc]
	ldr	r5, [sp, #4]
	str	r5, [r4, #0x10]
	b	.Ldca0
.Ldb9c:
	mov	r2, r8
	ldr	r3, [r2, #8]
	mov	r4, r11
	sub	r0, r4, r3
	cmp	r0, #0
	bge	.Ldbac
	ldr	r2, =0xffff
	add	r0, r2
.Ldbac:
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	ldr	r4, [sp, #4]
	asr	r0, #16
	mov	r10, r0
	sub	r0, r4, r3
	cmp	r0, #0
	bge	.Ldbc0
	ldr	r2, =0xffff
	add	r0, r2
.Ldbc0:
	asr	r6, r0, #16
	mov	r3, r10
	mov	r0, r10
	mul	r0, r3
	mov	r3, r6
	mul	r3, r6
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	mov	r4, r8
	ldr	r3, [r4, #8]
	mov	r2, r11
	sub	r2, r3
	ldr	r3, [r4, #0xc]
	sub	r5, r3
	mov	r9, r5
	ldr	r3, [r4, #0x10]
	mov	r5, #0x80
	ldr	r4, [sp, #4]
	lsl	r7, r0, #16
	lsl	r5, #15
	mov	r10, r2
	sub	r6, r4, r3
	cmp	r7, r5
	bge	.Ldc16
	ldr	r4, =Func_888
	mov	r0, r10
	mov	r1, r10
	.call_via r4
	mov	r3, r0
	mov	r1, r6
	mov	r0, r6
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	Func_45d4
	mov	r7, r0
.Ldc16:
	mov	r1, r7
	cmp	r7, #0
	bge	.Ldc1e
	add	r1, r7, #7
.Ldc1e:
	mov	r2, r8
	ldr	r3, [r2, #0x30]
	asr	r5, r1, #3
	cmp	r5, r3
	ble	.Ldc2a
	mov	r5, r3
.Ldc2a:
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r7, r3
	bge	.Ldc3e
	mov	r5, r8
	mov	r4, r11
	str	r4, [r5, #8]
	ldr	r2, [sp, #4]
	str	r2, [r5, #0x10]
	b	.Ldc7c
.Ldc3e:
	cmp	r7, r5
	ble	.Ldc6e
	ldr	r3, =Func_8ac
	mov	r1, r10
	mov	r11, r3
	mov	r0, r7
	bl	_call_via_r11
	ldr	r3, =Func_888
	mov	r1, r5
	.call_via r3
	mov	r1, r6
	str	r3, [sp]
	mov	r10, r0
	mov	r0, r7
	bl	_call_via_r11
	mov	r1, r5
	ldr	r3, [sp]
	.call_via r3
	mov	r6, r0
.Ldc6e:
	mov	r4, r8
	ldr	r3, [r4, #8]
	add	r3, r10
	str	r3, [r4, #8]
	ldr	r3, [r4, #0x10]
	add	r3, r6
	str	r3, [r4, #0x10]
.Ldc7c:
	mov	r3, r9
	cmp	r3, #0
	bge	.Ldc84
	neg	r3, r3
.Ldc84:
	mov	r5, #0x80
	lsl	r5, #8
	cmp	r3, r5
	ble	.Ldc98
	mov	r3, r9
	cmp	r3, #0
	bge	.Ldc94
	add	r3, #3
.Ldc94:
	asr	r3, #2
	mov	r9, r3
.Ldc98:
	mov	r2, r8
	ldr	r3, [r2, #0xc]
	add	r3, r9
	str	r3, [r2, #0xc]
.Ldca0:
	mov	r4, r8
	ldrh	r3, [r4, #4]
	mov	r5, r8
	add	r3, #1
	mov	r0, #1
	strh	r3, [r5, #4]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_daf0

.thumb_func_start Func_dcdc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	ldr	r2, [r6, #0x68]
	ldr	r3, [r2, #0x30]
	str	r3, [r6, #0x30]
	ldr	r3, [r2, #0x34]
	str	r3, [r6, #0x34]
	ldr	r3, [r6, #8]
	ldr	r1, [r2, #8]
	ldr	r2, [r2, #0x10]
	sub	r1, r3
	ldr	r3, [r6, #0x10]
	sub	r2, r3
	mov	r10, r2
	asr	r3, r1, #16
	asr	r2, #16
	mov	r0, r3
	mul	r0, r3
	mov	r3, r2
	mul	r3, r2
	add	r0, r3
	ldr	r3, =Func_948
	mov	r8, r1
	bl	_call_via_r3
	mov	r7, r0
	cmp	r7, #0x10
	ble	.Ldd56
	mov	r5, r7
	sub	r5, #0x10
	mov	r0, r8
	mul	r0, r5
	mov	r1, r7
	bl	Func_af0_from_thumb
	mov	r1, r7
	mov	r8, r0
	mov	r0, r10
	mul	r0, r5
	bl	Func_af0_from_thumb
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r1, r8
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	bl	Func_d14c
	mov	r0, r6
	mov	r1, #2
	bl	Func_c300
	ldrh	r3, [r6, #4]
	add	r3, #1
	strh	r3, [r6, #4]
	mov	r0, #1
	b	.Ldd60
.Ldd56:
	mov	r0, r6
	mov	r1, #1
	bl	Func_c300
	mov	r0, #0
.Ldd60:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_dcdc

.thumb_func_start Func_dd70
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #4
	ldrsh	r2, [r6, r0]
	ldr	r3, [r6]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r2}
	sub	sp, #0x20
	str	r2, [sp, #4]
	ldmia	r3!, {r5}
	ldr	r3, [r3]
	mov	r11, r5
	cmp	r3, #0
	bge	.Ldda0
	ldr	r0, =0xffff
	add	r3, r0
.Ldda0:
	asr	r3, #16
	mov	r5, r3
	mul	r5, r3
	str	r3, [sp]
	mov	r2, #0
	str	r5, [sp]
	mov	r9, r2
.Lddae:
	mov	r0, #1
	add	r9, r0
	mov	r2, r9
	cmp	r2, #7
	ble	.Lddba
	b	.Ldebe
.Lddba:
	ldr	r3, [r6, #8]
	add	r7, sp, #0x14
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r7, #8]
	bl	Func_4458
	ldr	r3, =Func_888
	mov	r1, r11
	.call_via r3
	ldr	r3, [sp, #4]
	add	r3, r0
	mov	r8, r3
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	ldrh	r3, [r6, #6]
	lsr	r5, #2
	lsr	r0, #2
	add	r3, r5
	sub	r3, r0
	mov	r10, r3
	mov	r0, r8
	mov	r1, r10
	mov	r2, r7
	bl	Func_447c
	mov	r0, r6
	mov	r1, r7
	bl	Func_d924
	cmp	r0, #0
	bne	.Lddae
	mov	r0, r6
	mov	r1, r7
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lddae
	mov	r5, #0x80
	ldr	r3, [r6, #8]
	lsl	r5, #12
	add	r8, r5
	add	r5, sp, #8
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r8
	str	r3, [r5, #8]
	mov	r1, r10
	mov	r2, r5
	bl	Func_447c
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r1, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r1, #6
	add	r1, r10
	mov	r0, r8
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lddae
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r1, =0xffffe000
	ldr	r3, [r6, #0x10]
	add	r1, r10
	mov	r0, r8
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lddae
	ldr	r3, [r7]
	mov	r1, r3
	cmp	r3, #0
	bge	.Lde86
	ldr	r0, =0xffff
	add	r3, r0
.Lde86:
	mov	r2, r6
	add	r2, #0x64
	mov	r5, #0
	ldrsh	r2, [r2, r5]
	asr	r3, #16
	sub	r0, r3, r2
	ldr	r2, [r7, #8]
	mov	r4, r2
	cmp	r2, #0
	bge	.Lde9e
	ldr	r3, =0xffff
	add	r2, r3
.Lde9e:
	mov	r3, r6
	add	r3, #0x66
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	asr	r2, #16
	sub	r2, r3
	mov	r3, r0
	mul	r3, r0
	mov	r0, r2
	mul	r0, r2
	mov	r2, r0
	add	r3, r2
	ldr	r2, [sp]
	cmp	r3, r2
	ble	.Lded4
	b	.Lddae
.Ldebe:
	ldrh	r3, [r6, #6]
	mov	r5, #0x80
	lsl	r5, #8
	add	r3, r5
	mov	r2, r6
	strh	r3, [r6, #6]
	add	r2, #0x5e
	mov	r3, #1
	strh	r3, [r2]
	mov	r0, #0
	b	.Ldee6
.Lded4:
	mov	r0, r6
	mov	r3, r4
	ldr	r2, [r7, #4]
	bl	Func_d14c
	ldrh	r3, [r6, #4]
	add	r3, #4
	strh	r3, [r6, #4]
	mov	r0, #1
.Ldee6:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_dd70

.thumb_func_start Func_df04
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #4
	ldrsh	r2, [r6, r0]
	ldr	r3, [r6]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r1}
	sub	sp, #0x34
	str	r1, [sp, #0x18]
	ldmia	r3!, {r2}
	str	r2, [sp, #0x14]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.Ldf34
	ldr	r4, =0xffff
	add	r3, r4
.Ldf34:
	asr	r3, #16
	mov	r1, r3
	mul	r1, r3
	mov	r2, #0
	mov	r0, #6
	ldrsh	r5, [r6, r0]
	mov	r10, r2
	ldr	r2, [r6, #8]
	str	r3, [sp, #0x10]
	str	r5, [sp, #0xc]
	str	r1, [sp, #0x10]
	cmp	r2, #0
	bge	.Ldf52
	ldr	r3, =0xffff
	add	r2, r3
.Ldf52:
	mov	r4, r6
	add	r4, #0x64
	str	r4, [sp, #8]
	mov	r5, #0
	ldrsh	r3, [r4, r5]
	asr	r2, #16
	sub	r2, r3
	mov	r11, r2
	ldr	r2, [r6, #0x10]
	cmp	r2, #0
	bge	.Ldf6c
	ldr	r0, =0xffff
	add	r2, r0
.Ldf6c:
	mov	r1, r6
	add	r1, #0x66
	str	r1, [sp, #4]
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	asr	r2, #16
	sub	r2, r3
	mov	r9, r2
	mov	r5, r11
	mov	r0, r9
	mov	r3, r11
	mul	r3, r5
	mov	r2, r9
	mul	r2, r0
	ldr	r1, [sp, #0x10]
	add	r3, r2
	cmp	r3, r1
	ble	.Ldf92
	b	.Le146
.Ldf92:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #7
	ble	.Ldf9e
	b	.Le146
.Ldf9e:
	bl	Func_4458
	ldr	r3, =Func_888
	ldr	r1, [sp, #0x14]
	.call_via r3
	ldr	r4, [sp, #0x18]
	add	r4, r0
	mov	r8, r4
	bl	Func_4458
	mov	r5, r0
	bl	Func_4458
	ldr	r3, [r6, #8]
	add	r7, sp, #0x28
	ldr	r1, [sp, #0xc]
	str	r3, [r7]
	lsl	r2, r1, #16
	ldr	r3, [r6, #0xc]
	lsr	r5, #2
	lsr	r2, #16
	lsr	r0, #2
	str	r3, [r7, #4]
	add	r2, r5
	sub	r2, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, #16
	lsr	r4, r2, #16
	mov	r0, #0x80
	mov	r1, r4
	str	r3, [r7, #8]
	lsl	r0, #12
	mov	r2, r7
	str	r4, [sp]
	bl	Func_447c
	mov	r0, r6
	mov	r1, r7
	bl	Func_d924
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ldf92
	ldr	r3, [r6, #8]
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r1, r4
	str	r3, [r7, #8]
	mov	r0, r8
	mov	r2, r7
	bl	Func_447c
	mov	r0, r6
	mov	r1, r7
	bl	Func_120dc
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ldf92
	ldr	r3, [r6, #8]
	add	r5, sp, #0x1c
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r2, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r2, #12
	add	r8, r2
	mov	r1, r4
	str	r3, [r5, #8]
	mov	r0, r8
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_120dc
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ldf92
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #6
	add	r1, r4, r3
	mov	r0, r8
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_120dc
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ldf92
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r0, =0xffffe000
	ldr	r3, [r6, #0x10]
	add	r1, r4, r0
	str	r3, [r5, #8]
	mov	r0, r8
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_120dc
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.Le098
	b	.Ldf92
.Le098:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r2, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r2, #7
	add	r1, r4, r2
	str	r3, [r5, #8]
	mov	r0, r8
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_120dc
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.Le0c2
	b	.Ldf92
.Le0c2:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r3, =0xffffc000
	mov	r0, r8
	add	r1, r4, r3
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	beq	.Le0e8
	b	.Ldf92
.Le0e8:
	ldr	r1, [r7]
	mov	r2, r1
	cmp	r1, #0
	bge	.Le0f4
	ldr	r4, =0xffff
	add	r2, r1, r4
.Le0f4:
	ldr	r0, [sp, #8]
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	asr	r2, #16
	ldr	r4, [r7, #8]
	sub	r2, r3
	mov	r11, r2
	mov	r2, r4
	cmp	r4, #0
	bge	.Le10c
	ldr	r3, =0xffff
	add	r2, r4, r3
.Le10c:
	ldr	r0, [sp, #4]
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	asr	r2, #16
	sub	r2, r3
	mov	r9, r2
	mov	r5, r9
	mov	r2, r11
	mov	r3, r11
	mul	r3, r2
	mov	r2, r9
	mul	r2, r5
	ldr	r0, [sp, #0x10]
	add	r3, r2
	cmp	r3, r0
	ble	.Le12e
	b	.Ldf92
.Le12e:
	mov	r0, r6
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r2, r3
	strb	r2, [r0]
	ldr	r2, [r7, #4]
	mov	r0, r6
	mov	r3, r4
	bl	Func_d14c
	b	.Le1f6
.Le146:
	mov	r1, #0
	mov	r10, r1
	mov	r0, r9
	mov	r1, r11
	bl	Func_44d0
	mov	r2, #0x80
	lsl	r2, #8
	add	r0, r2
	lsl	r0, #16
	asr	r0, #16
	str	r0, [sp, #0xc]
.Le15e:
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	cmp	r4, #7
	bgt	.Le1f6
	bl	Func_4458
	ldr	r3, =Func_888
	ldr	r1, [sp, #0x14]
	.call_via r3
	ldr	r5, [sp, #0x18]
	add	r5, r0
	bl	Func_4458
	mov	r8, r5
	mov	r5, r0
	bl	Func_4458
	ldr	r1, [sp, #0xc]
	lsl	r2, r1, #16
	ldr	r3, [r6, #8]
	lsr	r5, #2
	lsr	r2, #16
	add	r2, r5
	add	r5, sp, #0x28
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	lsr	r0, #2
	str	r3, [r5, #4]
	sub	r2, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, #16
	lsr	r7, r2, #16
	mov	r0, #0x80
	lsl	r0, #12
	mov	r1, r7
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_d924
	cmp	r0, #0
	bne	.Le15e
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r8
	mov	r1, r7
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Le15e
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r1]
	mov	r0, r6
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	bl	Func_d14c
.Le1f6:
	ldrh	r3, [r6, #4]
	add	r3, #4
	mov	r0, #1
	strh	r3, [r6, #4]
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_df04
