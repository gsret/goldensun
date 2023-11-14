	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_49a8
	bx	lr
.func_end Func_49a8

.thumb_func_start Func_49ac
	push	{r5, lr}
	mov	r1, #0x30
	mov	r0, #2
	ldr	r5, =iwram_1d2c
	bl	Func_48f4
	ldr	r2, =iwram_1cc4
	mov	r3, #0
	str	r3, [r2]
	str	r0, [r5]
	ldr	r3, =Data_ac0
	mov	r0, r3
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_49ac

.thumb_func_start Func_49e8
	push	{r5, lr}
	ldr	r5, =iwram_1cc4
	ldr	r3, [r5]
	cmp	r3, #0
	bgt	.L4a0c
	ldr	r4, =iwram_1d2c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_ac0
	ldr	r1, [r4]
	ldr	r2, =0x8400000c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	ldr	r3, [r4]
	add	r3, #0x30
	str	r3, [r4]
.L4a0c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_49e8

.thumb_func_start Func_4a28
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Data_ac0
	ldr	r2, =0x8400000c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_4a28

.thumb_func_start Func_4a44
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =Data_ac0
	ldr	r2, =0x8400000c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_4a44

.thumb_func_start Func_4a5c
	push	{lr}
	ldr	r2, =iwram_1cc4
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L4a7c
	sub	r3, #1
	str	r3, [r2]
	ldr	r3, =iwram_1d2c
	ldr	r0, [r3]
	sub	r0, #0x30
	str	r0, [r3]
	ldr	r1, =Data_ac0
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8400000c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L4a7c:
	pop	{r0}
	bx	r0
.func_end Func_4a5c

.thumb_func_start Func_4a94
	ldr	r3, =Data_ac0
	mov	r0, r3
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	bx	lr
.func_end Func_4a94

.thumb_func_start Func_4ab0
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	ldr	r0, [r5]
	sub	sp, #0x30
	bl	Func_2322
	mov	r10, r0
	ldr	r0, [r5]
	bl	Func_231c
	mov	r9, r0
	ldr	r0, [r5, #4]
	bl	Func_2322
	mov	r8, r0
	ldr	r0, [r5, #4]
	bl	Func_231c
	mov	r11, r0
	ldr	r0, [r5, #8]
	bl	Func_2322
	mov	r6, r0
	ldr	r0, [r5, #8]
	bl	Func_231c
	mov	r14, r0
	ldr	r3, =Func_888
	mov	r0, r11
	mov	r1, r14
	.call_via r3
	mov	r5, sp
	str	r0, [r5]
	mov	r1, r6
	mov	r0, r11
	.call_via r3
	mov	r1, r8
	neg	r2, r1
	str	r0, [r5, #4]
	str	r2, [r5, #8]
	mov	r0, r10
	.call_via r3
	mov	r1, r14
	.call_via r3
	mov	r4, r0
	mov	r1, r6
	mov	r0, r9
	.call_via r3
	sub	r4, r0
	str	r4, [r5, #0xc]
	mov	r0, r10
	mov	r1, r8
	.call_via r3
	mov	r1, r6
	.call_via r3
	mov	r4, r0
	mov	r1, r14
	mov	r0, r9
	.call_via r3
	add	r4, r0
	str	r4, [r5, #0x10]
	mov	r0, r10
	mov	r1, r11
	.call_via r3
	str	r0, [r5, #0x14]
	mov	r1, r8
	mov	r0, r9
	.call_via r3
	mov	r1, r14
	.call_via r3
	mov	r4, r0
	mov	r1, r6
	mov	r0, r10
	.call_via r3
	add	r4, r0
	str	r4, [r5, #0x18]
	mov	r0, r9
	mov	r1, r8
	.call_via r3
	mov	r1, r6
	.call_via r3
	mov	r4, r0
	mov	r1, r14
	mov	r0, r10
	.call_via r3
	sub	r4, r0
	str	r4, [r5, #0x1c]
	mov	r0, r9
	mov	r1, r11
	.call_via r3
	mov	r3, #0
	str	r0, [r5, #0x20]
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r0, r5
	ldr	r3, =Func_a30
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_4ab0

.thumb_func_start Func_4bd4
	push	{r5, r6, lr}
	sub	sp, #0x30
	mov	r5, r0
	bl	Func_2322
	mov	r6, r0
	mov	r0, r5
	bl	Func_231c
	mov	r12, r0
	mov	r5, sp
	mov	r0, r5
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	mov	r3, r12
	str	r6, [r5, #0x14]
	neg	r6, r6
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x20]
	str	r6, [r5, #0x1c]
	ldr	r3, =Func_a30
	mov	r0, r5
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_4bd4

.thumb_func_start Func_4c1c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #0x30
	mov	r5, r0
	bl	Func_2322
	mov	r8, r0
	mov	r0, r5
	bl	Func_231c
	mov	r6, r0
	mov	r5, sp
	mov	r0, r5
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	mov	r2, r8
	neg	r3, r2
	str	r3, [r5, #8]
	str	r6, [r5]
	str	r2, [r5, #0x18]
	str	r6, [r5, #0x20]
	ldr	r3, =Func_a30
	mov	r0, r5
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_4c1c

.thumb_func_start Func_4c6c
	push	{r5, r6, lr}
	sub	sp, #0x30
	mov	r5, r0
	bl	Func_2322
	mov	r6, r0
	mov	r0, r5
	bl	Func_231c
	mov	r12, r0
	mov	r5, sp
	mov	r0, r5
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	mov	r3, r12
	str	r6, [r5, #4]
	neg	r6, r6
	str	r3, [r5]
	str	r3, [r5, #0x10]
	str	r6, [r5, #0xc]
	ldr	r3, =Func_a30
	mov	r0, r5
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_4c6c

.thumb_func_start Func_4cb4
	push	{r5, r6, lr}
	sub	sp, #0x30
	mov	r6, r0
	mov	r5, sp
	mov	r0, r5
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	ldr	r3, [r6]
	str	r3, [r5, #0x24]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x28]
	ldr	r3, [r6, #8]
	mov	r0, r5
	str	r3, [r5, #0x2c]
	ldr	r3, =Func_a30
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_4cb4

.thumb_func_start Func_4cf0
	push	{r5, r6, lr}
	sub	sp, #0x30
	mov	r6, r0
	mov	r5, sp
	mov	r0, r5
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	ldr	r3, [r6]
	str	r3, [r5]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x10]
	ldr	r3, [r6, #8]
	mov	r0, r5
	str	r3, [r5, #0x20]
	ldr	r3, =Func_a30
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_4cf0

.thumb_func_start Func_4d2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	ldr	r0, [r5]
	mov	r7, r1
	sub	sp, #0x30
	bl	Func_2322
	mov	r10, r0
	ldr	r0, [r5]
	bl	Func_231c
	mov	r9, r0
	ldr	r0, [r5, #4]
	bl	Func_2322
	mov	r8, r0
	ldr	r0, [r5, #4]
	bl	Func_231c
	mov	r11, r0
	ldr	r0, [r5, #8]
	bl	Func_2322
	mov	r6, r0
	ldr	r0, [r5, #8]
	bl	Func_231c
	mov	r14, r0
	ldr	r3, =Func_888
	mov	r0, r11
	mov	r1, r14
	.call_via r3
	mov	r5, sp
	str	r0, [r5]
	mov	r1, r6
	mov	r0, r11
	.call_via r3
	mov	r1, r8
	neg	r2, r1
	str	r0, [r5, #4]
	str	r2, [r5, #8]
	mov	r0, r10
	.call_via r3
	mov	r1, r14
	.call_via r3
	mov	r4, r0
	mov	r1, r6
	mov	r0, r9
	.call_via r3
	sub	r4, r0
	str	r4, [r5, #0xc]
	mov	r0, r10
	mov	r1, r8
	.call_via r3
	mov	r1, r6
	.call_via r3
	mov	r4, r0
	mov	r1, r14
	mov	r0, r9
	.call_via r3
	add	r4, r0
	str	r4, [r5, #0x10]
	mov	r0, r10
	mov	r1, r11
	.call_via r3
	str	r0, [r5, #0x14]
	mov	r1, r8
	mov	r0, r9
	.call_via r3
	mov	r1, r14
	.call_via r3
	mov	r4, r0
	mov	r1, r6
	mov	r0, r10
	.call_via r3
	add	r4, r0
	str	r4, [r5, #0x18]
	mov	r0, r9
	mov	r1, r8
	.call_via r3
	mov	r1, r6
	.call_via r3
	mov	r4, r0
	mov	r1, r14
	mov	r0, r10
	.call_via r3
	sub	r4, r0
	str	r4, [r5, #0x1c]
	mov	r0, r9
	mov	r1, r11
	.call_via r3
	str	r0, [r5, #0x20]
	ldr	r3, [r7]
	str	r3, [r5, #0x24]
	ldr	r3, [r7, #4]
	str	r3, [r5, #0x28]
	ldr	r3, [r7, #8]
	mov	r0, r5
	str	r3, [r5, #0x2c]
	ldr	r3, =Func_a30
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_4d2c

.thumb_func_start Func_4e54
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r5, r0
	ldr	r0, [r5]
	bl	Func_2322
	mov	r10, r0
	ldr	r0, [r5]
	bl	Func_231c
	mov	r9, r0
	ldr	r0, [r5, #4]
	bl	Func_2322
	mov	r8, r0
	ldr	r0, [r5, #4]
	bl	Func_231c
	mov	r11, r0
	ldr	r0, [r5, #8]
	bl	Func_2322
	mov	r6, r0
	ldr	r0, [r5, #8]
	bl	Func_231c
	ldr	r2, [sp]
	mov	r14, r0
	ldr	r7, [r2]
	ldr	r3, =Func_888
	mov	r0, r11
	mov	r1, r14
	.call_via r3
	mov	r1, r0
	mov	r0, r7
	.call_via r3
	add	r5, sp, #8
	str	r0, [r5]
	mov	r1, r6
	mov	r0, r11
	.call_via r3
	mov	r1, r0
	mov	r0, r7
	.call_via r3
	mov	r2, r8
	str	r0, [r5, #4]
	neg	r1, r2
	mov	r0, r7
	.call_via r3
	str	r0, [r5, #8]
	ldr	r2, [sp]
	mov	r0, r10
	ldr	r7, [r2, #4]
	mov	r1, r8
	.call_via r3
	mov	r1, r14
	.call_via r3
	mov	r4, r0
	mov	r1, r6
	mov	r0, r9
	.call_via r3
	sub	r4, r0
	mov	r1, r4
	mov	r0, r7
	.call_via r3
	str	r0, [r5, #0xc]
	mov	r1, r8
	mov	r0, r10
	.call_via r3
	mov	r1, r6
	.call_via r3
	mov	r4, r0
	mov	r1, r14
	mov	r0, r9
	.call_via r3
	add	r4, r0
	mov	r1, r4
	mov	r0, r7
	.call_via r3
	str	r0, [r5, #0x10]
	mov	r1, r11
	mov	r0, r10
	.call_via r3
	mov	r1, r0
	mov	r0, r7
	.call_via r3
	str	r0, [r5, #0x14]
	ldr	r2, [sp]
	mov	r0, r9
	ldr	r7, [r2, #8]
	mov	r1, r8
	.call_via r3
	mov	r1, r14
	.call_via r3
	mov	r4, r0
	mov	r1, r6
	mov	r0, r10
	.call_via r3
	add	r4, r0
	mov	r1, r4
	mov	r0, r7
	.call_via r3
	str	r0, [r5, #0x18]
	mov	r1, r8
	mov	r0, r9
	.call_via r3
	mov	r1, r6
	.call_via r3
	mov	r4, r0
	mov	r1, r14
	mov	r0, r10
	.call_via r3
	sub	r4, r0
	mov	r1, r4
	mov	r0, r7
	.call_via r3
	str	r0, [r5, #0x1c]
	mov	r1, r11
	mov	r0, r9
	.call_via r3
	mov	r1, r0
	mov	r0, r7
	.call_via r3
	str	r0, [r5, #0x20]
	ldr	r2, [sp, #4]
	ldr	r3, [r2]
	str	r3, [r5, #0x24]
	ldr	r3, [r2, #4]
	str	r3, [r5, #0x28]
	ldr	r3, [r2, #8]
	mov	r0, r5
	str	r3, [r5, #0x2c]
	ldr	r3, =Func_a30
	bl	_call_via_r3
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_4e54

.thumb_func_start Func_4fe4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x40
	str	r0, [sp, #0x20]
	mov	r0, sp
	add	r0, #0x24
	str	r0, [sp, #0xc]
	mov	r4, r1
	mov	r9, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L7994
	ldr	r1, [sp, #0xc]
	ldr	r2, =0x84000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, [sp, #0x20]
	ldr	r2, [r4]
	ldr	r3, [r1]
	sub	r2, r3
	str	r2, [sp, #0x1c]
	ldr	r3, [r1, #4]
	ldr	r2, [r4, #4]
	sub	r2, r3
	str	r2, [sp, #0x18]
	ldr	r3, [r1, #8]
	ldr	r2, [r4, #8]
	sub	r2, r3
	str	r2, [sp, #0x14]
	ldr	r4, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	ldr	r0, [sp, #0x14]
	asr	r1, r2, #8
	asr	r3, r4, #8
	asr	r2, r0, #8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0xc]
	mov	r2, r3
	mov	r0, r1
	bl	_call_via_r4
	ldr	r3, =Func_948
	bl	_call_via_r3
	mov	r1, r0
	ldr	r0, =Func_b60
	mov	r11, r0
	mov	r0, #0x80
	lsl	r0, #24
	bl	_call_via_r11
	lsr	r3, r0, #15
	neg	r3, r3
	ldr	r5, =Func_888
	ldr	r0, [sp, #0x1c]
	mov	r1, r3
	.call_via r5
	str	r0, [sp, #0x1c]
	mov	r1, r3
	ldr	r0, [sp, #0x18]
	.call_via r5
	str	r0, [sp, #0x18]
	mov	r1, r3
	ldr	r0, [sp, #0x14]
	.call_via r5
	ldr	r1, [sp, #0x1c]
	neg	r1, r1
	mov	r8, r1
	str	r0, [sp, #0x14]
	ldr	r0, [sp, #0x18]
	mov	r1, r0
	.call_via r5
	mov	r3, #0x80
	lsl	r3, #9
	sub	r0, r3, r0
	cmp	r0, #0
	ble	.L50a6
	bl	Func_45d4
	mov	r1, r0
	mov	r0, #0x80
	lsl	r0, #24
	bl	_call_via_r11
	lsl	r3, r0, #1
.L50a6:
	ldr	r0, [sp, #0x14]
	mov	r1, r3
	.call_via r5
	str	r0, [sp, #0x10]
	mov	r1, r3
	mov	r0, r8
	.call_via r5
	mov	r8, r0
	mov	r1, r8
	ldr	r0, [sp, #0x18]
	.call_via r5
	mov	r10, r0
	ldr	r1, [sp, #0x10]
	ldr	r0, [sp, #0x14]
	.call_via r5
	mov	r3, r0
	mov	r1, r8
	ldr	r0, [sp, #0x1c]
	.call_via r5
	sub	r6, r3, r0
	ldr	r1, [sp, #0x10]
	ldr	r0, [sp, #0x18]
	.call_via r5
	neg	r7, r0
	mov	r3, r6
	str	r7, [sp]
	str	r7, [sp, #4]
	mov	r1, r10
	mov	r2, r6
	ldr	r4, [sp, #0xc]
	mov	r0, r10
	bl	_call_via_r4
	bl	Func_45d4
	mov	r1, r0
	mov	r0, #0x80
	lsl	r0, #24
	bl	_call_via_r11
	lsl	r3, r0, #1
	mov	r1, r3
	mov	r0, r10
	.call_via r5
	mov	r10, r0
	mov	r1, r3
	mov	r0, r6
	.call_via r5
	mov	r6, r0
	mov	r1, r3
	mov	r0, r7
	.call_via r5
	ldr	r1, [sp, #0x20]
	mov	r7, r0
	ldr	r1, [r1, #4]
	ldr	r0, [sp, #0x20]
	ldr	r2, [sp, #0x20]
	ldr	r0, [r0]
	str	r1, [sp, #8]
	ldr	r3, [sp, #0x10]
	ldr	r5, [r2, #8]
	mov	r11, r0
	mov	r4, r9
	mov	r0, #0
	mov	r1, r8
	str	r3, [r4]
	str	r0, [r4, #0xc]
	str	r1, [r4, #0x18]
	ldr	r1, [sp, #0x10]
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0xc]
	mov	r2, r5
	mov	r3, r8
	mov	r0, r11
	bl	_call_via_r4
	mov	r1, r9
	mov	r2, r10
	neg	r0, r0
	str	r0, [r1, #0x24]
	str	r6, [r1, #0x10]
	str	r7, [r1, #0x1c]
	str	r2, [r1, #4]
	ldr	r2, [sp, #8]
	str	r5, [sp]
	str	r7, [sp, #4]
	ldr	r4, [sp, #0xc]
	mov	r1, r10
	mov	r3, r6
	mov	r0, r11
	bl	_call_via_r4
	mov	r1, r9
	neg	r0, r0
	str	r0, [r1, #0x28]
	ldr	r2, [sp, #0x1c]
	str	r2, [r1, #8]
	ldr	r3, [sp, #0x18]
	str	r3, [r1, #0x14]
	ldr	r4, [sp, #0x14]
	str	r4, [r1, #0x20]
	ldr	r1, [sp, #0x1c]
	str	r5, [sp]
	str	r4, [sp, #4]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x18]
	ldr	r4, [sp, #0xc]
	mov	r0, r11
	bl	_call_via_r4
	mov	r1, r9
	neg	r0, r0
	str	r0, [r1, #0x2c]
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_4fe4

.thumb_func_start Func_51d8
	push	{lr}
	ldr	r2, =Data_ac0
	bl	Func_4fe4
	pop	{r0}
	bx	r0
.func_end Func_51d8

.thumb_func_start Func_51e8
	push	{r5, lr}
	sub	sp, #0x30
	mov	r5, sp
	mov	r2, r5
	bl	Func_4fe4
	ldr	r3, =Func_a30
	mov	r0, r5
	bl	_call_via_r3
	add	sp, #0x30
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_51e8

	.section .rodata

.L7994:
	.incrom 0x7994, 0x79b0
