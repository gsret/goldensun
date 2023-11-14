	.include "macros.inc"

.thumb_func_start Func_447c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r10, r0
	mov	r0, #0x80
	mov	r8, r1
	lsl	r0, #7
	add	r0, r8
	mov	r5, r2
	bl	Func_2322
	ldr	r6, =Func_888
	mov	r1, r0
	mov	r0, r10
	.call_via r6
	ldr	r3, [r5]
	add	r3, r0
	stmia	r5!, {r3}
	mov	r0, r8
	bl	Func_2322
	add	r5, #4
	mov	r1, r0
	mov	r0, r10
	.call_via r6
	ldr	r3, [r5]
	add	r3, r0
	str	r3, [r5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_447c

.thumb_func_start Func_44d0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, #0
	cmp	r6, #0
	beq	.L4582
	mov	r4, #0x80
	lsl	r4, #7
	cmp	r5, #0
	beq	.L4582
	cmp	r5, #0
	bge	.L44ea
	neg	r1, r5
.L44ea:
	mov	r0, r6
	cmp	r6, #0
	bge	.L44f2
	neg	r0, r6
.L44f2:
	lsl	r0, #8
	bl	Func_af0_from_thumb
	ldr	r3, =0xfb6a
	mov	r4, #0x80
	mov	r1, r0
	lsl	r4, #7
	cmp	r1, r3
	bgt	.L4582
	ldr	r2, =.L7676
	ldrh	r0, [r2]
	mov	r4, #0
	sub	r2, #0x80
	cmp	r1, r0
	ble	.L451a
	mov	r3, #0x80
	mov	r4, #0x80
	lsl	r3, #1
	lsl	r4, #6
	add	r2, r3
.L451a:
	ldrh	r0, [r2]
	sub	r2, #0x40
	cmp	r1, r0
	ble	.L452a
	mov	r3, #0x80
	lsl	r3, #5
	orr	r4, r3
	add	r2, #0x80
.L452a:
	ldrh	r0, [r2]
	sub	r2, #0x20
	cmp	r1, r0
	ble	.L453a
	mov	r3, #0x80
	lsl	r3, #4
	orr	r4, r3
	add	r2, #0x40
.L453a:
	ldrh	r0, [r2]
	sub	r2, #0x10
	cmp	r1, r0
	ble	.L454a
	mov	r3, #0x80
	lsl	r3, #3
	orr	r4, r3
	add	r2, #0x20
.L454a:
	ldrh	r0, [r2]
	sub	r2, #8
	cmp	r1, r0
	ble	.L455a
	mov	r3, #0x80
	lsl	r3, #2
	orr	r4, r3
	add	r2, #0x10
.L455a:
	ldrh	r0, [r2]
	sub	r2, #4
	cmp	r1, r0
	ble	.L456a
	mov	r3, #0x80
	lsl	r3, #1
	orr	r4, r3
	add	r2, #8
.L456a:
	ldrh	r0, [r2]
	sub	r2, #2
	cmp	r1, r0
	ble	.L4578
	mov	r3, #0x80
	orr	r4, r3
	add	r2, #4
.L4578:
	ldrh	r0, [r2]
	cmp	r1, r0
	ble	.L4582
	mov	r3, #0x40
	orr	r4, r3
.L4582:
	cmp	r5, #0
	bge	.L458c
	mov	r3, #0x80
	lsl	r3, #8
	sub	r4, r3, r4
.L458c:
	cmp	r6, #0
	bge	.L4592
	neg	r4, r4
.L4592:
	lsl	r0, r4, #16
	lsr	r0, #16
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_44d0

.thumb_func_start Func_45a4
	push	{r5, r6, lr}
	mov	r5, #0
	mov	r4, #0xf
	mov	r6, #1
.L45ac:
	add	r3, r4, #1
	mov	r2, r5
	lsl	r2, r3
	lsl	r1, r4, #1
	mov	r3, r6
	lsl	r3, r1
	add	r2, r3
	cmp	r2, r0
	bgt	.L45c6
	mov	r3, r6
	lsl	r3, r4
	orr	r5, r3
	sub	r0, r2
.L45c6:
	sub	r4, #1
	cmp	r4, #0
	bge	.L45ac
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_45a4

.thumb_func_start Func_45d4
	push	{lr}
	ldr	r3, =iwram_1d8
	bl	_call_via_r3
	lsl	r0, #8
	pop	{r1}
	bx	r1
.func_end Func_45d4

	.section .rodata

.L7676:
	.incrom 0x7676, 0x777c
