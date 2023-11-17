	.include "macros.inc"

.thumb_func_start OvlFunc_4e4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x201
	sub	sp, #0xc
	bl	__Func_79374
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L590
	mov	r3, #0x16
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #8
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x17
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x10
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x24
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0xe
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	b	.L7e6
.L590:
	ldr	r3, =0x5a
	cmp	r2, r3
	beq	.L598
	b	.L6f8
.L598:
	mov	r3, #0x2a
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r5, #0x14
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0xe
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r2, #0x38
	mov	r3, #0x12
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r8, r2
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0x18
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x19
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x26
	str	r3, [sp]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x1a
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x11
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x32
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r5, #0x22
	mov	r6, #0x2b
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #6
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x1b
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_105d4
	b	.L7e6
.L6f8:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L7e6
	mov	r3, #0x10
	str	r3, [sp, #4]
	mov	r6, #8
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_10788
	mov	r1, #6
	mov	r2, #0x14
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r8, r1
	mov	r10, r2
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10788
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10788
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0x12
	mov	r1, r8
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	bl	__Func_10704
	mov	r2, r8
	mov	r3, r10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2b
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r6, #9
	mov	r5, #5
	mov	r0, #6
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_10704
.L7e6:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r5, #0x64
.L824:
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__Func_8edac
	cmp	r5, #0x6b
	ble	.L824
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5c
	cmp	r2, r3
	beq	.L866
	mov	r3, #0x80
	mov	r1, #0x80
	lsl	r3, #8
	lsl	r1, #7
	mov	r2, #0x80
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	mov	r3, #0x80
	mov	r1, #0x80
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #11
	lsl	r3, #6
	str	r2, [sp]
	bl	__Func_94730
.L866:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4e4

.thumb_func_start OvlFunc_88c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_79374
	ldr	r0, =0x201
	bl	__Func_79358
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L948
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r6, #0x16
	mov	r0, #0x40
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #8
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x17
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x10
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x24
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0xe
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r1, #0xc8
	mov	r2, #0xb6
	mov	r0, #9
	lsl	r1, #17
	b	.Laee
.L948:
	ldr	r3, =0x5a
	cmp	r2, r3
	beq	.L950
	b	.Laf6
.L950:
	mov	r3, #0x2a
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r5, #0x14
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0xc
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0xe
	str	r3, [sp]
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r2, #0x38
	mov	r3, #0x12
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r10, r2
	mov	r0, #0x4c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r6, #0x17
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r1, r8
	str	r1, [sp]
	mov	r5, #0x18
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x26
	str	r3, [sp]
	mov	r0, #0x58
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x1a
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x11
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x60
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x32
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x64
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r5, #0x22
	mov	r6, #0x2b
	mov	r0, #0x68
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #6
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, #0x1b
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x70
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x74
	mov	r3, #2
	mov	r1, #0x7e
	mov	r2, #4
	str	r6, [sp]
	bl	__Func_105d4
	mov	r1, #0xb0
	mov	r2, #0xcc
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb8
	mov	r2, #0xc6
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x90
	mov	r2, #0xbe
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x90
	mov	r2, #0xb3
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r1, #0xa2
	mov	r2, #0xcc
	mov	r0, #0xd
	lsl	r1, #18
.Laee:
	lsl	r2, #17
	bl	__Func_923e4
	b	.Lbde
.Laf6:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.Lbde
	mov	r1, #8
	mov	r3, #0xe
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r8, r1
	mov	r0, #0x40
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	bl	__Func_105d4
	mov	r3, #0x12
	str	r3, [sp, #4]
	mov	r6, #6
	mov	r0, #0x44
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #0x14
	str	r3, [sp, #4]
	mov	r0, #0x44
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0xa
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	bl	__Func_105d4
	mov	r2, r8
	str	r2, [sp]
	mov	r5, #0x20
	mov	r0, #0xa
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2b
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r5, #9
	mov	r7, #5
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r0, #3
	mov	r3, #1
	mov	r1, #0x78
	mov	r2, #3
	str	r7, [sp, #4]
	bl	__Func_105d4
	mov	r1, #0xa8
	mov	r2, #0xb8
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x9e
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #6
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_10704
	ldr	r0, =0x90a
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lbde
	mov	r0, #0
	mov	r1, #0x77
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_105d4
.Lbde:
	mov	r5, #0x64
.Lbe0:
	mov	r1, #1
	mov	r2, #1
	mov	r0, r5
	neg	r1, r1
	neg	r2, r2
	add	r5, #1
	bl	__Func_8edac
	cmp	r5, #0x6b
	ble	.Lbe0
	bl	__Func_8ee0c
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5c
	cmp	r2, r3
	beq	.Lc0e
	bl	__Func_947e4
.Lc0e:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_88c

.thumb_func_start OvlFunc_c38
	push	{lr}
	mov	r0, #8
	mov	r1, #2
	bl	__Func_925cc
	ldr	r0, =0x5b
	mov	r1, #5
	bl	__Func_91f90
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #5
	bl	__Func_91eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_c38

.thumb_func_start OvlFunc_c6c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r7, #0
	b	.Lc7a
.Lc78:
	add	r7, #1
.Lc7a:
	cmp	r7, #2
	bgt	.Lc9c
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r6, r3, #16
	ldr	r3, =0x303
	add	r5, r6, r3
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lc78
	mov	r0, r5
	bl	__Func_79358
.Lc9c:
	bl	__Func_916b0
	mov	r3, r8
	lsl	r0, r3, #1
	add	r0, r8
	ldr	r3, =0x1a10
	add	r0, r6
	add	r0, r3
	bl	__Func_92b94
	add	r0, r6, #1
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c6c

.thumb_func_start OvlFunc_cd0
	push	{r5, r6, lr}
	ldr	r0, =0x232
	ldr	r3, =iwram_1ebc
	ldr	r2, =ewram_240
	ldr	r6, [r3]
	add	r3, r2, r0
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	mov	r3, #0x64
	mov	r0, r1
	mul	r0, r3
	mov	r1, #0x8b
	lsl	r1, #2
	add	r2, r1
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	bl	_Func_af0
	mov	r5, r0
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldda
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld28
	cmp	r5, #0x4a
	bgt	.Ld28
	ldr	r0, =0x302
	bl	__Func_79374
	ldr	r0, =0x303
	bl	__Func_79374
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x305
	bl	__Func_79374
.Ld28:
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld50
	cmp	r5, #0x31
	bgt	.Ld50
	ldr	r0, =0x301
	bl	__Func_79374
	ldr	r0, =0x303
	bl	__Func_79374
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x305
	bl	__Func_79374
.Ld50:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld7c
	cmp	r5, #0x18
	bgt	.Ld7c
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x303
	bl	__Func_79374
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79374
	ldr	r0, =0x305
	bl	__Func_79374
.Ld7c:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ld9e
	cmp	r5, #0x18
	ble	.Ld9e
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #0xc1
	lsl	r0, #1
	add	r2, r6, r0
	mov	r3, #1
	strh	r3, [r2]
.Ld9e:
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldbc
	cmp	r5, #0x31
	ble	.Ldbc
	ldr	r0, =0x301
	bl	__Func_79358
	mov	r1, #0xc1
	lsl	r1, #1
	add	r2, r6, r1
	mov	r3, #2
	strh	r3, [r2]
.Ldbc:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	bne	.Ldda
	cmp	r5, #0x4a
	ble	.Ldda
	ldr	r0, =0x302
	bl	__Func_79358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #3
	strh	r3, [r2]
.Ldda:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_cd0

.thumb_func_start OvlFunc_e00
	push	{lr}
	ldmia	r0!, {r3}
	ldmia	r1!, {r4}
	ldr	r2, [r0, #4]
	sub	r4, r3
	ldr	r3, [r1]
	sub	r3, r2
	asr	r3, #16
	asr	r4, #16
	mov	r2, r3
	mul	r2, r3
	mov	r0, r4
	mul	r0, r4
	mov	r3, r2
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_e00

.thumb_func_start OvlFunc_e2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xf0
	ldr	r3, [r3]
	mov	r0, #0x80
	sub	sp, #0x68
	mov	r1, #0x3c
	lsl	r2, #16
	lsl	r0, #2
	str	r3, [sp, #0x14]
	str	r1, [sp, #0x10]
	mov	r11, r2
	bl	__Func_79358
	mov	r0, #1
	bl	OvlFunc_1c78
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.Le74
	ldr	r2, =.L1f30
	mov	r7, #3
	mov	r8, r2
	b	.Le88
.Le74:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.Le82
	ldr	r3, =.L1f48
	mov	r7, #5
	mov	r8, r3
	b	.Le88
.Le82:
	ldr	r1, =.L1f70
	mov	r7, #2
	mov	r8, r1
.Le88:
	mov	r9, r7
	mov	r5, r8
	cmp	r7, #0
	beq	.Leb8
	mov	r6, #0
.Le92:
	mov	r0, #0
	bl	__Func_92054
	mov	r1, r5
	add	r0, #8
	bl	OvlFunc_e00
	cmp	r0, r11
	bgt	.Leac
	mov	r2, r9
	sub	r2, r7
	mov	r11, r0
	mov	r10, r2
.Leac:
	add	r6, #8
	mov	r3, r8
	sub	r7, #1
	add	r5, r3, r6
	cmp	r7, #0
	bne	.Le92
.Leb8:
	mov	r1, r10
	lsl	r1, #1
	mov	r10, r1
	mov	r2, #0x80
	mov	r1, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #0
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r10
	lsl	r3, r2, #2
	add	r3, r8
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r3, [r3, #4]
	bl	__Func_d14c
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r1, [r0, #0xc]
	mov	r0, r5
	bl	OvlFunc_324
	mov	r0, #0xf1
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xd6
	add	r4, sp, #0x40
	strh	r3, [r4, #0x18]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r4, #8]
	ldr	r3, =0xcccc
	str	r3, [r4, #0xc]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r4, #0x10]
	ldr	r3, =0x13333
	str	r3, [r4, #0x14]
	mov	r3, #0xe0
	ldr	r5, [r0, #8]
	lsl	r3, #13
	ldr	r1, [r0, #0xc]
	ldr	r2, [r0, #0x10]
	mov	r6, #0
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, #0x82
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_924d4
	ldr	r1, =0xcba
	ldr	r3, [sp, #0x14]
	ldr	r5, =ewram_472
	add	r6, r3, r1
	mov	r7, #0
.Lf6a:
	mov	r3, #0x96
	lsl	r3, #2
	strh	r3, [r6]
	ldr	r2, [sp, #0x10]
	sub	r2, #1
	str	r2, [sp, #0x10]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0
	beq	.Lf98
	sub	r3, r2, #5
	strh	r3, [r5]
	lsl	r3, #16
	cmp	r3, #0
	bgt	.Lf8e
	strh	r7, [r5]
	b	.Lf98
.Lf8e:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.Lf98
	mov	r3, #1
	str	r3, [sp, #0x10]
.Lf98:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r1, [sp, #0x10]
	cmp	r1, #0
	bne	.Lf6a
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xd6
	add	r4, sp, #0x18
	strh	r3, [r4, #0x18]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	str	r3, [r4, #0xc]
	ldr	r3, =0x13333
	lsl	r2, #8
	str	r2, [r4, #8]
	str	r2, [r4, #0x10]
	str	r3, [r4, #0x14]
	ldr	r3, [sp, #0x10]
	ldr	r2, [r0, #0x10]
	ldr	r1, [r0, #0xc]
	ldr	r5, [r0, #8]
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xe0
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	ldr	r2, =0xcba
	ldr	r1, [sp, #0x14]
	add	r3, r1, r2
	add	r1, sp, #0x10
	ldrh	r1, [r1]
	mov	r0, #0
	strh	r1, [r3]
	bl	OvlFunc_1c78
	add	sp, #0x68
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e2c

.thumb_func_start OvlFunc_1054
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r5, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	sub	sp, #0x38
	bl	__Func_92054
	ldr	r3, =iwram_1ebc
	mov	r6, r0
	ldr	r1, [r3]
	mov	r2, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	beq	.L1156
	ldr	r3, =0x232
	add	r2, r5, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1e
	beq	.L1156
	mov	r2, #0x80
	ldr	r3, [r6, #0x30]
	lsl	r2, #9
	cmp	r3, r2
	bgt	.L1106
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L1156
	mov	r5, #0x80
	add	r7, sp, #0x10
	lsl	r5, #8
	mov	r3, #0
	str	r5, [r7, #8]
	str	r5, [r7, #0xc]
	mov	r8, r3
	bl	__Func_4458
	mov	r2, #0xf8
	lsl	r0, #12
	lsr	r0, #16
	lsl	r2, #8
	ldrh	r3, [r6, #6]
	add	r0, r2
	strh	r0, [r7, #0x22]
	cmp	r3, #0
	beq	.L10e8
	cmp	r3, r5
	beq	.L10e8
	ldr	r4, [r6, #0x10]
	mov	r3, #1
	asr	r2, r4, #20
	and	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #10
	sub	r2, r3
	mov	r8, r2
	b	.L10ea
.L10e8:
	ldr	r4, [r6, #0x10]
.L10ea:
	mov	r3, #0
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r3, =0x880001
	add	r0, r8
	str	r3, [sp, #8]
	mov	r2, r4
	mov	r3, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	b	.L1156
.L1106:
	ldr	r2, =iwram_1e40
	ldr	r7, [r2]
	mov	r3, #7
	and	r7, r3
	cmp	r7, #0
	bne	.L1156
	ldr	r3, [r2]
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Func_4458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	strh	r0, [r5, #0x22]
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, =0x1999
	lsr	r3, #16
	mul	r3, r2
	ldr	r1, [r6, #0xc]
	mov	r2, #0x80
	lsl	r2, #10
	ldr	r0, [r6, #8]
	add	r1, r2
	ldr	r2, [r6, #0x10]
	str	r3, [sp]
	ldr	r3, =0x880001
	str	r3, [sp, #8]
	mov	r3, #0
	str	r7, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L1156:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1054

.thumb_func_start OvlFunc_1180
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0x80
	mov	r3, #9
	lsl	r0, #2
	mov	r8, r3
	bl	__Func_79358
	mov	r7, #0x80
	lsl	r7, #13
	mov	r5, #9
.L11a8:
	mov	r0, r5
	bl	__Func_92054
	cmp	r0, #0
	beq	.L11ea
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.L11c0
	ldr	r3, =0xffff
	add	r2, r3
.L11c0:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L11d0
	ldr	r2, =0xffff
	add	r0, r2
.L11d0:
	mov	r2, r1
	asr	r0, #16
	cmp	r2, #0
	bge	.L11da
	neg	r2, r2
.L11da:
	cmp	r0, #0
	bge	.L11e0
	neg	r0, r0
.L11e0:
	add	r0, r2, r0
	cmp	r0, r7
	bge	.L11ea
	mov	r8, r5
	mov	r7, r0
.L11ea:
	add	r5, #1
	cmp	r5, #0xc
	ble	.L11a8
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0
	mov	r1, r8
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	add	r3, r2
	ldr	r2, .L1284	@ 0xfffff000
	and	r3, r2
	strh	r3, [r5, #6]
	mov	r0, #0
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0x18
	bl	__Func_924ec
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, =OvlFunc_344
	str	r3, [r0, #0x6c]
	mov	r0, r8
	bl	__Func_92054
	cmp	r0, #0
	beq	.L12ae
	b	.L12a0

	.align	2, 0
.L1284:
	.word	0xfffff000
	.pool

.L12a0:
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0
	bl	__Func_92128
.L12ae:
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x82
	mov	r2, #0
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_92054
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r1, #4
	mov	r0, #0x35
	bl	__Func_91eb0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1180

.thumb_func_start OvlFunc_12fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x48
	bl	OvlFunc_1054
	ldr	r3, =iwram_1ebc
	mov	r0, #0xfa
	ldr	r2, [r3]
	ldr	r3, =ewram_240
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0xf0
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r1
	mov	r11, r3
	ldr	r2, [r2]
	mov	r0, r11
	str	r2, [sp, #0x10]
	bl	__Func_92054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r6, sp, #0x3c
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r2, #0xc0
	lsl	r2, #9
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r10, r3
	mov	r8, r0
	mov	r3, #4
	mov	r0, r10
	and	r0, r3
	mov	r10, r0
	cmp	r0, #0
	bne	.L13ba
	bl	__Func_4458
	add	r1, sp, #0x14
	lsl	r0, #12
	mov	r2, #0xf8
	mov	r9, r1
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	mov	r3, r9
	strh	r0, [r3, #0x22]
	bl	__Func_4458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	ldr	r5, [r7, #8]
	lsr	r3, #16
	lsl	r3, #16
	ldr	r0, =0xfffa0000
	add	r5, r3
	add	r5, r0
	bl	__Func_4458
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, =0x1999
	lsr	r3, #16
	mul	r3, r2
	ldr	r1, =0x7ffd
	add	r3, r1
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	str	r3, [sp, #4]
	mov	r3, #0x80
	lsl	r3, #16
	mov	r0, r10
	str	r3, [sp, #8]
	mov	r3, r9
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r3, #0
	bl	OvlFunc_common0_10c
.L13ba:
	mov	r0, r8
	cmp	r0, #0
	bge	.L1408
	mov	r1, #0x81
	mov	r0, r11
	lsl	r1, #1
	bl	__Func_93874
	ldr	r3, [r7, #0x10]
	mov	r0, #0x80
	lsl	r0, #12
	add	r3, r0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	mov	r0, r7
	bl	__Func_d14c
	mov	r0, r7
	mov	r1, #7
	bl	__Func_c300
	mov	r0, r7
	bl	__Func_ca6c
.L13ea:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	cmp	r2, r3
	bne	.L13ea
	mov	r0, r7
	mov	r1, #6
	bl	__Func_c300
	mov	r0, #3
	bl	__Func_30f8
	b	.L147c
.L1408:
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, #0x80
	lsl	r1, #12
	add	r3, r1
	mov	r0, r7
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	mov	r8, r0
	cmp	r0, #0
	bgt	.L147c
	ldr	r3, [r7, #8]
	ldr	r2, =0x5b333
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, r7
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_120dc
	mov	r8, r0
	cmp	r0, #0
	bgt	.L147c
	ldr	r3, [r7, #8]
	ldr	r2, =0xfffa4ccd
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x5b333
	mov	r1, r6
	add	r3, r0
	mov	r0, r7
	str	r3, [r6, #8]
	bl	__Func_120dc
	mov	r8, r0
	cmp	r0, #0
	bgt	.L147c
	ldr	r1, [sp, #0x10]
	mov	r2, #0xc0
	ldr	r3, [r1, #0x10]
	lsl	r2, #9
	add	r3, r2
	str	r3, [r1, #0x10]
	ldr	r3, [r7, #0x10]
	add	r3, r2
	str	r3, [r7, #0x10]
.L147c:
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_12fc

.thumb_func_start OvlFunc_14b0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	sub	sp, #0xc
	ldr	r5, [r3]
	bl	OvlFunc_1054
	ldr	r0, =0x90a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L14cc
	b	.L1618
.L14cc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	beq	.L14dc
	b	.L1618
.L14dc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	mov	r0, #1
	bl	OvlFunc_1c78
	ldr	r3, =0xcba
	add	r7, r5, r3
	mov	r3, #0x96
	lsl	r3, #2
	mov	r8, r3
	mov	r3, r8
	strh	r3, [r7]
	mov	r0, #0
	bl	__Func_92054
	str	r6, [r0, #0x24]
	mov	r0, #0
	bl	__Func_92054
	str	r6, [r0, #0x2c]
	mov	r0, #0
	bl	__Func_92054
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0
	bl	__Func_92054
	mov	r1, #1
	str	r5, [r0, #0x40]
	mov	r0, #0
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_93874
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	mov	r5, sp
	and	r3, r2
	strb	r3, [r0]
	str	r6, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r5
	ldrh	r1, [r0, #6]
	ldr	r0, =0xfff00000
	bl	__Func_447c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #2
	mov	r0, #0
	bl	__Func_924d4
	ldr	r1, [r5]
	cmp	r1, #0
	bge	.L1594
	ldr	r3, =0xffff
	add	r1, r3
.L1594:
	ldr	r2, [r5, #8]
	asr	r1, #16
	cmp	r2, #0
	bge	.L15a0
	ldr	r3, =0xffff
	add	r2, r3
.L15a0:
	asr	r2, #16
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #2
	bl	__Func_9163c
	mov	r0, #0
	bl	__Func_92054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x94
	bl	__Func_f9080
	mov	r1, #2
	mov	r0, #8
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x68
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x5c
	bl	__Func_921c4
	mov	r3, r8
	strh	r3, [r7]
	mov	r0, #0
	bl	OvlFunc_1c78
.L1618:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_14b0

.thumb_func_start OvlFunc_1638
	push	{r5, lr}
	ldr	r0, =ewram_240
	mov	r3, #0x8b
	lsl	r3, #2
	add	r2, r0, r3
	add	r3, #0x2c
	strh	r3, [r2]
	ldr	r2, =0x22e
	mov	r1, #0
	add	r3, r0, r2
	strh	r1, [r3]
	mov	r3, #0x8c
	lsl	r3, #2
	add	r2, r0, r3
	ldr	r3, =0x119
	strh	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r5, r0, r2
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x5c
	sub	sp, #8
	cmp	r2, r3
	bne	.L166c
	b	.L1846
.L166c:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	OvlFunc_1c1c
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_cd0
	lsl	r1, #4
	bl	__Func_41d8
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L16f8
	mov	r3, #0x40
	mov	r5, #0x7e
	str	r3, [sp]
	mov	r0, #0x16
	mov	r1, #7
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0x17
	mov	r1, #0x15
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x4c
	str	r3, [sp]
	mov	r0, #0x10
	mov	r1, #0x2a
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x50
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #0x2c
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x54
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0x37
	b	.L17f2
.L16f8:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.L17fe
	mov	r3, #0x40
	mov	r5, #0x7e
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #5
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0xb
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0xc
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x4c
	str	r3, [sp]
	mov	r0, #0x38
	mov	r1, #0x12
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x50
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0x16
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x54
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x17
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x58
	str	r3, [sp]
	mov	r0, #0x26
	mov	r1, #0x18
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x5c
	str	r3, [sp]
	mov	r0, #0x1a
	mov	r1, #0x1c
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x60
	str	r3, [sp]
	mov	r0, #0x11
	mov	r1, #0x23
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x64
	str	r3, [sp]
	mov	r0, #0x32
	mov	r1, #0x24
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x68
	str	r3, [sp]
	mov	r0, #0x22
	mov	r1, #0x2b
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x6c
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0x2e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x70
	str	r3, [sp]
	mov	r0, #0x1b
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x74
	str	r3, [sp]
	mov	r0, #0x2b
	mov	r1, #0x38
.L17f2:
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_105d4
	b	.L1842
.L17fe:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L1842
	mov	r0, #0xa9
	bl	__Func_91ff0
	mov	r3, #0x40
	mov	r5, #0x7c
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x44
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0x12
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
	mov	r3, #0x48
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x15
	mov	r2, #4
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_105d4
.L1842:
	bl	OvlFunc_4e4
.L1846:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1638

.thumb_func_start OvlFunc_1874
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_92064
	mov	r0, #8
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x60
	bl	__Func_921c4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1874

	.section .data

.L1f30:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f30, (0x1f48-0x1f30)
.L1f48:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f48, (0x1f70-0x1f48)
.L1f70:
	.incbin "overlays/rom_7bc690/orig.bin", 0x1f70, (0x1f80-0x1f70)
