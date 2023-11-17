	.include "macros.inc"

.thumb_func_start OvlFunc_e90
	ldr	r0, =.L2928
	bx	lr
.func_end OvlFunc_e90

.thumb_func_start OvlFunc_e98
	mov	r0, #0
	bx	lr
.func_end OvlFunc_e98

.thumb_func_start OvlFunc_e9c
	ldr	r0, =.L2bf8
	bx	lr
.func_end OvlFunc_e9c

.thumb_func_start OvlFunc_ea4
	ldr	r0, =.L2c58
	bx	lr
.func_end OvlFunc_ea4

.thumb_func_start OvlFunc_eac
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	ldr	r0, =0x1632
	mov	r1, #1
	bl	__Func_1776c
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_eac

.thumb_func_start OvlFunc_ed0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r3, =OvlFunc_cc0
	str	r3, [r5, #0x6c]
	ldr	r3, =0x3333
	mov	r0, #0
	str	r3, [r5, #0x30]
	mov	r1, #2
	bl	__Func_924d4
	mov	r2, #6
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_92950
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r3, #0
	str	r3, [r5, #0x6c]
	mov	r0, #0x1e
	bl	__Func_9163c
	bl	__Func_91df4
	bl	__Func_91e20
	mov	r0, r6
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ed0

.thumb_func_start OvlFunc_f48
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_916b0
	mov	r0, #0xe4
	bl	__Func_f9080
	ldr	r2, =0x3333
	mov	r0, #0
	ldr	r1, =0x6666
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_92b08
	mov	r2, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	bl	__Func_9163c
	mov	r3, #0x80
	lsl	r3, #12
	lsl	r5, #19
	add	r5, r3
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f48

.thumb_func_start OvlFunc_fac
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_fac

.thumb_func_start OvlFunc_fb8
	push	{lr}
	mov	r0, #0x12
	bl	OvlFunc_ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_fb8

.thumb_func_start OvlFunc_fc4
	push	{lr}
	mov	r0, #0x13
	bl	OvlFunc_ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_fc4

.thumb_func_start OvlFunc_fd0
	ldr	r0, =.L2d60
	bx	lr
.func_end OvlFunc_fd0

.thumb_func_start OvlFunc_fd8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lff2
	ldr	r2, =0xfffff
	add	r3, r2
.Lff2:
	mov	r0, #0
	asr	r5, r3, #20
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1004
	ldr	r2, =0xfffff
	add	r3, r2
.L1004:
	asr	r3, #20
	cmp	r5, #0xc
	beq	.L100c
	b	.L111c
.L100c:
	cmp	r3, #0x20
	beq	.L1012
	b	.L111c
.L1012:
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #1
	ldr	r0, =0x10005
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r3, #0
	mov	r8, r3
	add	r7, sp, #0x10
	mov	r10, r3
.L1048:
	mov	r3, #1
	str	r3, [r7]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =.L2f4c
	mov	r0, #0xf6
	str	r3, [r7, #0x1c]
	bl	__Func_f9080
	bl	__Func_4458
	lsl	r0, #4
	lsr	r0, #16
	mov	r6, #0xd0
	sub	r6, r0
	bl	__Func_4458
	mov	r5, #0x8c
	lsl	r0, #4
	lsr	r0, #16
	lsl	r5, #2
	sub	r5, r0
	bl	__Func_4458
	mov	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	lsl	r0, r3, #4
	sub	r0, r3
	mov	r2, #0xf0
	lsl	r2, #14
	lsl	r0, #16
	add	r0, r2
	mov	r1, #0x64
	bl	_Func_af0
	mov	r3, r10
	str	r3, [sp, #4]
	ldr	r3, =0x320001
	lsl	r6, #16
	lsl	r5, #16
	str	r0, [sp]
	str	r3, [sp, #8]
	mov	r2, r5
	mov	r3, #0
	mov	r0, r6
	mov	r1, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #4
	bl	__Func_9163c
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xe
	bls	.L1048
	mov	r0, #0xdc
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x875
	bl	__Func_79358
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_d98
	bl	__Func_41d8
	mov	r3, #5
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0x62
	mov	r2, #0xa
	mov	r3, #0x61
	bl	__Func_10424
	mov	r3, #6
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #7
	mov	r2, #0xd
	mov	r0, #0x46
	mov	r1, #0x20
	bl	__Func_10704
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_91200
	mov	r0, #0x3c
	bl	__Func_91254
	mov	r0, #0x78
	bl	__Func_9163c
	bl	__Func_91750
.L111c:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fd8

.thumb_func_start OvlFunc_1144
	push	{lr}
	mov	r0, #0x3f
	bl	__Func_91e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_1144

	.section .data

.L2928:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2928, (0x2bf8-0x2928)
.L2bf8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2bf8, (0x2c58-0x2bf8)
.L2c58:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2c58, (0x2d60-0x2c58)
.L2d60:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2d60, (0x2f4c-0x2d60)
.L2f4c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2f4c
