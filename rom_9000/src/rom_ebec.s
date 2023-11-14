	.include "macros.inc"

.thumb_func_start Func_ebec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x68
	mov	r7, r0
	mov	r0, #0
	str	r0, [sp, #0x14]
	str	r0, [sp, #0x10]
	ldr	r5, =iwram_1f54
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.Lec40
	mov	r0, #0xaf
	lsl	r0, #1
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lec40
	mov	r2, #0x80
	ldr	r1, =iwram_1810
	mov	r0, #0
	lsl	r2, #2
.Lec20:
	ldrb	r3, [r1]
	add	r1, #1
	cmp	r3, #0xff
	bne	.Lec2a
	add	r0, #1
.Lec2a:
	sub	r2, #1
	cmp	r2, #0
	bne	.Lec20
	mov	r3, r0
	sub	r3, #0x88
	cmp	r3, #0
	bge	.Lec3e
	mov	r0, #0x87
	bl	_Func_f9080
.Lec3e:
	ldr	r5, =iwram_1f54
.Lec40:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.Lec76
	ldr	r5, =iwram_1ae8
	mov	r2, #0x80
	ldr	r3, [r5]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lec78
	mov	r3, r2
.Lec56:
	sub	r3, #1
	cmp	r3, #0
	bne	.Lec56
	mov	r3, #0x5f
.Lec5e:
	sub	r3, #1
	cmp	r3, #0
	bge	.Lec5e
	mov	r3, #0x3f
.Lec66:
	sub	r3, #1
	cmp	r3, #0
	bge	.Lec66
	mov	r3, #0x3f
.Lec6e:
	sub	r3, #1
	cmp	r3, #0
	bge	.Lec6e
	b	.Lec78
.Lec76:
	ldr	r5, =iwram_1ae8
.Lec78:
	ldr	r3, =ewram_240
	mov	r1, #0x87
	lsl	r1, #2
	add	r3, r1
	ldrh	r2, [r3]
	ldr	r3, [r5]
	and	r3, r2
	cmp	r3, #0
	beq	.Lec9c
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r2, #5
	str	r3, [r7, #0x34]
	str	r2, [sp, #8]
	b	.Lecac
.Lec9c:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x34]
	mov	r3, #2
	str	r3, [sp, #8]
.Lecac:
	ldr	r0, =0x17f
	bl	_Func_79338
	cmp	r0, #0
	beq	.Lecd4
	ldr	r5, =iwram_1ae8
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lecd6
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r0, #5
	str	r3, [r7, #0x34]
	str	r0, [sp, #8]
	b	.Lecd6
.Lecd4:
	ldr	r5, =iwram_1ae8
.Lecd6:
	ldr	r3, [r5]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L13254
	and	r3, r2
	lsl	r3, #1
	ldrsh	r3, [r1, r3]
	lsl	r3, #16
	str	r3, [sp, #4]
	lsr	r1, r3, #16
	ldr	r3, =0xffff
	cmp	r1, r3
	bne	.Lecfa
	ldr	r0, [sp, #0x14]
	mov	r3, #4
	orr	r0, r3
	str	r0, [sp, #0x14]
	b	.Lf0c6
.Lecfa:
	mov	r2, #0
	mov	r3, #0x5c
	str	r2, [sp, #0x14]
	add	r3, sp
	mov	r11, r3
	ldr	r3, [r7, #8]
	mov	r0, r11
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #8]
	mov	r0, #0x80
	lsl	r0, #12
	mov	r2, r11
	bl	Func_447c
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Led38
	ldr	r3, [r5]
	mov	r2, #0x80
	ldr	r1, [sp, #4]
	lsl	r2, #2
	asr	r1, #16
	and	r3, r2
	str	r1, [sp, #0xc]
	cmp	r3, #0
	beq	.Led38
	b	.Lf0c6
.Led38:
	mov	r0, r7
	mov	r1, r11
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lee14
	ldr	r3, [r7, #8]
	add	r5, sp, #0x50
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	ldr	r3, [sp, #4]
	mov	r2, #0x80
	lsl	r2, #12
	mov	r0, #0x80
	mov	r8, r2
	lsr	r6, r3, #16
	lsl	r0, #5
	add	r1, r6, r0
	mov	r2, r5
	mov	r0, r8
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lee14
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	ldr	r2, =0xfffff000
	mov	r0, r8
	add	r1, r6, r2
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lee14
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #6
	add	r1, r6, r3
	mov	r0, r8
	mov	r2, r5
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lee14
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0xffffe000
	str	r3, [r5, #8]
	add	r1, r6, r0
	mov	r2, r5
	mov	r0, r8
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lee14
	ldr	r1, [sp, #4]
	asr	r1, #16
	lsl	r2, r1, #16
	str	r1, [sp, #0xc]
	str	r2, [sp]
	b	.Lef44

	.pool_aligned

.Lee14:
	ldr	r0, [sp, #4]
	add	r3, sp, #0x18
	mov	r1, #0x80
	mov	r10, r3
	lsl	r1, #5
	lsr	r3, r0, #16
	add	r2, r3, r1
	ldr	r1, =0xfffff000
	mov	r0, r10
	strh	r2, [r0]
	add	r2, r3, r1
	mov	r1, #0x80
	lsl	r1, #6
	strh	r2, [r0, #2]
	add	r2, r3, r1
	ldr	r1, =0xffffe000
	strh	r2, [r0, #4]
	add	r2, r3, r1
	mov	r1, #0xc0
	lsl	r1, #6
	strh	r2, [r0, #6]
	add	r2, r3, r1
	ldr	r1, =0xffffd000
	strh	r2, [r0, #8]
	add	r3, r1
	mov	r2, r10
	strh	r3, [r2, #0xa]
	mov	r3, #0
	mov	r9, r3
	mov	r8, r11
.Lee50:
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	ldrsh	r1, [r1, r3]
	str	r1, [sp, #0xc]
	ldr	r3, [r7, #8]
	mov	r0, r8
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	lsl	r1, #16
	str	r3, [r0, #8]
	lsr	r6, r1, #16
	mov	r0, #0x80
	str	r1, [sp]
	lsl	r0, #12
	mov	r1, r6
	mov	r2, r8
	bl	Func_447c
	mov	r0, r7
	mov	r1, r8
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lef24
	ldr	r3, [r7, #8]
	add	r5, sp, #0x50
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r2, #0x80
	lsl	r2, #5
	mov	r0, #0x80
	add	r1, r6, r2
	lsl	r0, #12
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lef24
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	ldr	r3, =0xfffff000
	mov	r0, #0x80
	add	r1, r6, r3
	lsl	r0, #12
	mov	r2, r5
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lef24
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	mov	r0, #0x80
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	lsl	r0, #6
	add	r1, r6, r0
	mov	r0, #0x80
	lsl	r0, #12
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lef24
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	ldr	r2, =0xffffe000
	mov	r0, #0x80
	add	r1, r6, r2
	lsl	r0, #12
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r7
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	beq	.Lef44
.Lef24:
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	cmp	r0, #6
	blt	.Lee50
	ldr	r3, [r7, #8]
	mov	r1, r11
	str	r3, [r1]
	ldr	r3, [r7, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r1, #8]
	ldr	r2, [sp, #0x14]
	mov	r3, #1
	orr	r2, r3
	str	r2, [sp, #0x14]
.Lef44:
	add	r3, sp, #0x44
	mov	r11, r3
	ldr	r3, [r7, #8]
	mov	r0, r11
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #8]
	ldr	r2, [sp]
	mov	r0, #0x80
	lsr	r1, r2, #16
	lsl	r0, #11
	mov	r2, r11
	bl	Func_447c
	ldr	r3, =iwram_1e64
	ldr	r3, [r3]
	mov	r8, r3
	mov	r6, r8
	mov	r3, #0x3f
	mov	r9, r3
	add	r6, #8
.Lef72:
	ldrh	r3, [r7, #0x20]
	mov	r0, r8
	sub	r1, r3, #2
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.Lef80
	b	.Lf09a
.Lef80:
	mov	r3, r8
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lef90
	b	.Lf09a
.Lef90:
	cmp	r8, r7
	bne	.Lef96
	b	.Lf09a
.Lef96:
	ldrh	r3, [r6, #0x18]
	mov	r0, r6
	sub	r3, #2
	mov	r2, r11
	bl	Func_eba0
	cmp	r0, #0
	blt	.Lf09a
	ldr	r3, [r6, #0x50]
	ldr	r2, =0xff000200
	mov	r1, #0x80
	and	r3, r2
	lsl	r1, #2
	cmp	r3, r1
	bne	.Lf092
	ldr	r3, [r7, #0x10]
	ldr	r0, [r6, #8]
	ldr	r1, [r6]
	sub	r0, r3
	ldr	r3, [r7, #8]
	sub	r1, r3
	bl	Func_44d0
	ldr	r3, [r6]
	add	r5, sp, #0x50
	str	r3, [r5]
	ldr	r3, [r6, #4]
	str	r3, [r5, #4]
	lsl	r0, #16
	ldr	r3, [r6, #8]
	asr	r2, r0, #16
	lsr	r0, #16
	mov	r10, r0
	mov	r0, #0x80
	str	r3, [r5, #8]
	lsl	r0, #7
	str	r2, [sp, #0xc]
	mov	r1, r10
	mov	r2, r5
	bl	Func_447c
	mov	r0, r8
	mov	r1, r5
	bl	Func_d924
	cmp	r0, #0
	bne	.Lf092
	ldr	r3, [r6]
	str	r3, [r5]
	ldr	r3, [r6, #4]
	str	r3, [r5, #4]
	ldr	r3, [r6, #8]
	mov	r0, #0xa0
	lsl	r0, #12
	mov	r1, r10
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r8
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lf092
	ldr	r3, [r6]
	str	r3, [r5]
	ldr	r3, [r6, #4]
	str	r3, [r5, #4]
	mov	r1, #0x80
	ldr	r3, [r6, #8]
	lsl	r1, #5
	mov	r0, #0xa0
	add	r1, r10
	lsl	r0, #12
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r8
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lf092
	mov	r0, r8
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lf092
	ldr	r3, [r6]
	str	r3, [r5]
	ldr	r3, [r6, #4]
	str	r3, [r5, #4]
	ldr	r1, =0xfffff000
	ldr	r3, [r6, #8]
	mov	r0, #0xa0
	add	r1, r10
	lsl	r0, #12
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r8
	mov	r1, r5
	bl	Func_120dc
	cmp	r0, #0
	bne	.Lf092
	mov	r0, #0x80
	lsl	r0, #7
	mov	r1, r10
	mov	r2, r6
	bl	Func_447c
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	str	r3, [r6, #0x38]
	ldr	r3, [sp, #0x10]
	mov	r0, #1
	orr	r3, r0
	str	r3, [sp, #0x10]
	b	.Lf09a
.Lf092:
	ldr	r1, [sp, #0x14]
	mov	r3, #2
	orr	r1, r3
	str	r1, [sp, #0x14]
.Lf09a:
	mov	r2, #1
	neg	r2, r2
	add	r9, r2
	mov	r3, #0x70
	mov	r0, r9
	add	r6, #0x70
	add	r8, r3
	cmp	r0, #0
	blt	.Lf0ae
	b	.Lef72
.Lf0ae:
	ldr	r1, [sp, #0x14]
	cmp	r1, #0
	bne	.Lf0c6
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	beq	.Lf0c6
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #6
	str	r3, [r7, #0x34]
.Lf0c6:
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lf0ee
	ldr	r0, [sp, #0x14]
	mov	r2, #3
	and	r2, r0
	cmp	r2, #0
	beq	.Lf0e6
	mov	r1, #0xce
	lsl	r1, #1
	add	r2, r3, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lf0ee
.Lf0e6:
	mov	r0, #0xce
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
.Lf0ee:
	ldr	r1, [sp, #0x10]
	cmp	r1, #0
	beq	.Lf0fe
	mov	r0, r7
	mov	r1, #8
	bl	Func_c300
	b	.Lf130
.Lf0fe:
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	beq	.Lf128
	ldr	r3, =ewram_240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	_Func_77394
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	mov	r5, #9
	cmp	r3, #0
	bne	.Lf11e
	mov	r5, #0x16
.Lf11e:
	mov	r0, r7
	mov	r1, r5
	bl	Func_c300
	b	.Lf130
.Lf128:
	mov	r0, r7
	ldr	r1, [sp, #8]
	bl	Func_c300
.Lf130:
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	beq	.Lf1a4
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	str	r3, [r7, #0x40]
	mov	r3, #0
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x2c]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Lf170
	ldr	r0, [sp, #4]
	ldrh	r1, [r7, #6]
	lsr	r3, r0, #16
	sub	r3, r1
	lsl	r3, #16
	mov	r2, #0x80
	asr	r3, #16
	lsl	r2, #5
	cmp	r3, r2
	ble	.Lf164
	mov	r3, r2
.Lf164:
	ldr	r2, =0xfffff000
	cmp	r3, r2
	bge	.Lf16c
	mov	r3, r2
.Lf16c:
	add	r3, r1, r3
	strh	r3, [r7, #6]
.Lf170:
	mov	r1, #0x64
	add	r1, r7
	mov	r10, r1
	mov	r3, #0
	mov	r2, r10
	strh	r3, [r2]
	mov	r2, r7
	add	r2, #0x66
	mov	r3, #2
	strh	r3, [r2]
	b	.Lf1fa

	.pool_aligned

.Lf1a4:
	add	r3, sp, #0x5c
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r7
	ldr	r3, [r3, #8]
	bl	Func_d14c
	ldr	r1, [r7, #0x24]
	ldr	r4, =Func_888
	mov	r0, r1
	.call_via r4
	ldr	r1, [r7, #0x2c]
	mov	r3, r0
	mov	r0, r1
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	Func_45d4
	ldr	r3, [sp, #0x14]
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x2c]
	ldr	r2, [sp, #0xc]
	lsl	r1, r2, #16
	mov	r2, r7
	add	r2, #0x24
	lsr	r1, #16
	bl	Func_447c
	mov	r3, #0x64
	add	r3, r7
	mov	r10, r3
	ldrh	r2, [r3]
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	beq	.Lf1fa
	sub	r3, r2, #1
	mov	r1, r10
	strh	r3, [r1]
.Lf1fa:
	ldr	r3, =iwram_1e70
	ldr	r3, [r3]
	ldr	r2, [sp, #4]
	ldrb	r3, [r3, #0x17]
	lsr	r2, #16
	mov	r8, r2
	cmp	r3, #0
	beq	.Lf2d8
	mov	r1, r10
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	cmp	r3, #0
	bne	.Lf2d8
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	bne	.Lf2d8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x19
	bl	Func_c150
	mov	r6, r0
	cmp	r6, #0
	beq	.Lf2d8
	ldr	r3, [r7, #0x14]
	ldr	r1, =.L13274
	str	r3, [r6, #0x14]
	ldr	r5, [r6, #0x50]
	bl	Func_c2d8
	mov	r2, r6
	mov	r3, #2
	add	r2, #0x23
	add	r0, sp, #0x14
	strb	r3, [r2]
	ldrb	r0, [r0]
	mov	r3, r6
	add	r3, #0x55
	strb	r0, [r3]
	cmp	r5, #0
	beq	.Lf270
	mov	r1, #1
	mov	r0, r5
	bl	Func_ba30
	add	r1, sp, #0x14
	mov	r3, r5
	ldrb	r1, [r1]
	add	r3, #0x26
	strb	r1, [r3]
	mov	r3, #0x80
	lsl	r3, #7
	add	r3, r8
	strh	r3, [r5, #0x1e]
	ldrb	r3, [r5, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r5, #9]
.Lf270:
	mov	r2, #0x66
	add	r2, r7
	mov	r8, r2
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldrh	r2, [r2]
	cmp	r3, #2
	bne	.Lf294
	mov	r0, r5
	mov	r1, #2
	bl	Func_ba30
	add	r2, sp, #0x14
	ldrh	r2, [r2]
	mov	r3, r8
	strh	r2, [r3]
	ldr	r2, .Lf2b0	@ 0
.Lf294:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.Lf2a0
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r6, #6]
.Lf2a0:
	ldr	r3, [sp, #8]
	cmp	r3, #5
	bne	.Lf2c0
	mov	r3, #0xc
	mov	r0, r10
	strh	r3, [r0]
	b	.Lf2c6

	.align	2, 0
.Lf2b0:
	.word	0
	.pool

.Lf2c0:
	mov	r3, #0x12
	mov	r1, r10
	strh	r3, [r1]
.Lf2c6:
	mov	r2, r8
	ldrh	r3, [r2]
	ldr	r2, =1
	mov	r0, r8
	eor	r3, r2
	strh	r3, [r0]
	b	.Lf2d8

	.pool_aligned

.Lf2d8:
	bl	Func_eaf8
	ldrh	r3, [r7, #4]
	add	r3, #1
	mov	r0, #1
	strh	r3, [r7, #4]
	add	sp, #0x68
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_ebec

.thumb_func_start Func_f2f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x5c
	mov	r1, #0
	mov	r6, r0
	ldr	r3, =ewram_240
	mov	r0, #2
	mov	r2, #0x87
	str	r1, [sp, #8]
	str	r0, [sp]
	lsl	r2, #2
	ldr	r1, =iwram_1ae8
	add	r3, r2
	ldrh	r2, [r3]
	ldr	r3, [r1]
	and	r3, r2
	cmp	r3, #0
	beq	.Lf338
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x30]
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r6, #0x34]
	mov	r3, #5
	str	r3, [sp]
	b	.Lf344
.Lf338:
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
.Lf344:
	ldr	r3, =iwram_1b04
	mov	r0, #0x80
	ldr	r3, [r3]
	lsl	r0, #2
	and	r3, r0
	mov	r9, r0
	cmp	r3, #0
	beq	.Lf35a
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x30]
.Lf35a:
	ldr	r5, =iwram_1ae8
	ldr	r2, [r5]
	mov	r1, #0xf
	lsr	r2, #4
	and	r2, r1
	ldr	r3, =.L13254
	lsl	r2, #1
	ldrsh	r1, [r3, r2]
	str	r1, [sp, #4]
	lsl	r1, #16
	mov	r11, r1
	lsr	r7, r1, #16
	ldr	r1, =0xffff
	cmp	r7, r1
	bne	.Lf38a
	ldr	r2, [sp, #8]
	mov	r3, #4
	orr	r2, r3
	str	r2, [sp, #8]
	b	.Lf592
.Lf382:
	mov	r3, r11
	asr	r3, #16
	str	r3, [sp, #4]
	b	.Lf592
.Lf38a:
	ldr	r3, [r6, #8]
	add	r1, sp, #0x50
	mov	r0, #0
	str	r0, [sp, #8]
	str	r3, [r1]
	ldr	r3, [r6, #0xc]
	str	r3, [r1, #4]
	mov	r2, #0xe0
	ldr	r3, [r6, #0x10]
	lsl	r2, #11
	mov	r8, r1
	mov	r10, r2
	str	r3, [r1, #8]
	mov	r0, r10
	mov	r1, r7
	mov	r2, r8
	bl	Func_447c
	ldr	r3, =iwram_1f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lf3c2
	ldr	r3, [r5]
	mov	r0, r9
	and	r3, r0
	cmp	r3, #0
	beq	.Lf3c2
	b	.Lf592
.Lf3c2:
	mov	r0, r6
	mov	r1, r8
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf466
	ldr	r3, [r6, #8]
	add	r5, sp, #0x44
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r2, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r2, #5
	add	r1, r7, r2
	mov	r0, r10
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf466
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r3, =0xfffff000
	mov	r0, r10
	add	r1, r7, r3
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf466
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r0, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r0, #6
	add	r1, r7, r0
	str	r3, [r5, #8]
	mov	r0, r10
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf466
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r2, =0xffffe000
	ldr	r3, [r6, #0x10]
	add	r1, r7, r2
	mov	r0, r10
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf466
	b	.Lf592
.Lf466:
	add	r3, sp, #0xc
	mov	r0, r11
	mov	r1, #0x80
	mov	r10, r3
	lsl	r1, #5
	lsr	r3, r0, #16
	add	r2, r3, r1
	ldr	r1, =0xfffff000
	mov	r0, r10
	strh	r2, [r0]
	add	r2, r3, r1
	mov	r1, #0x80
	lsl	r1, #6
	strh	r2, [r0, #2]
	add	r2, r3, r1
	ldr	r1, =0xffffe000
	strh	r2, [r0, #4]
	add	r2, r3, r1
	mov	r1, #0xc0
	lsl	r1, #6
	strh	r2, [r0, #6]
	add	r2, r3, r1
	ldr	r1, =0xffffd000
	strh	r2, [r0, #8]
	add	r2, r3, r1
	mov	r1, #0x80
	lsl	r1, #7
	strh	r2, [r0, #0xa]
	add	r2, r3, r1
	ldr	r1, =0xffffc000
	strh	r2, [r0, #0xc]
	add	r3, r1
	mov	r2, r10
	strh	r3, [r2, #0xe]
	mov	r3, #0
	mov	r9, r3
.Lf4ae:
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	ldrsh	r2, [r1, r3]
	ldr	r3, [r6, #8]
	mov	r1, r8
	str	r3, [r1]
	ldr	r3, [r6, #0xc]
	str	r3, [r1, #4]
	lsl	r2, #16
	ldr	r3, [r6, #0x10]
	lsr	r7, r2, #16
	mov	r0, #0xe0
	str	r3, [r1, #8]
	lsl	r0, #11
	mov	r1, r7
	mov	r11, r2
	mov	r2, r8
	bl	Func_447c
	mov	r0, r6
	mov	r1, r8
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf582
	ldr	r3, [r6, #8]
	add	r5, sp, #0x44
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r2, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r2, #5
	mov	r0, #0xe0
	add	r1, r7, r2
	lsl	r0, #11
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf582
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r3, =0xfffff000
	mov	r0, #0xe0
	add	r1, r7, r3
	lsl	r0, #11
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf582
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r0, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r0, #6
	add	r1, r7, r0
	mov	r0, #0xe0
	lsl	r0, #11
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf582
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r2, =0xffffe000
	ldr	r3, [r6, #0x10]
	mov	r0, #0xe0
	add	r1, r7, r2
	lsl	r0, #11
	str	r3, [r5, #8]
	mov	r2, r5
	bl	Func_447c
	mov	r0, r6
	mov	r1, r5
	bl	Func_122ac
	cmp	r0, #0
	bne	.Lf582
	b	.Lf382
.Lf582:
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	cmp	r0, #8
	blt	.Lf4ae
	ldr	r1, [sp, #8]
	orr	r1, r3
	str	r1, [sp, #8]
.Lf592:
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lf5ba
	ldr	r0, [sp, #8]
	mov	r2, #3
	and	r2, r0
	cmp	r2, #0
	beq	.Lf5b2
	mov	r1, #0xce
	lsl	r1, #1
	add	r2, r3, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lf5ba
.Lf5b2:
	mov	r0, #0xce
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
.Lf5ba:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	beq	.Lf5ca
	mov	r0, r6
	mov	r1, #9
	bl	Func_c300
	b	.Lf5d2
.Lf5ca:
	mov	r0, r6
	ldr	r1, [sp]
	bl	Func_c300
.Lf5d2:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	beq	.Lf658
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r3, #0
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Lf614
	ldr	r0, [sp, #4]
	ldrh	r2, [r6, #6]
	lsl	r3, r0, #16
	lsr	r3, #16
	sub	r3, r2
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r3, #0x80
	lsl	r3, #5
	cmp	r1, r3
	ble	.Lf608
	mov	r1, r3
.Lf608:
	ldr	r3, =0xfffff000
	cmp	r1, r3
	bge	.Lf610
	mov	r1, r3
.Lf610:
	add	r3, r2, r1
	strh	r3, [r6, #6]
.Lf614:
	mov	r1, #0x64
	add	r1, r6
	mov	r8, r1
	mov	r3, #0
	mov	r2, r8
	strh	r3, [r2]
	mov	r2, r6
	add	r2, #0x66
	mov	r3, #2
	strh	r3, [r2]
	b	.Lf6ae

	.pool_aligned

.Lf658:
	add	r3, sp, #0x50
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	Func_d14c
	ldr	r1, [r6, #0x24]
	ldr	r4, =Func_888
	mov	r0, r1
	.call_via r4
	ldr	r1, [r6, #0x2c]
	mov	r3, r0
	mov	r0, r1
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	Func_45d4
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #8]
	lsl	r1, r2, #16
	mov	r2, r6
	add	r2, #0x24
	lsr	r1, #16
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	bl	Func_447c
	mov	r3, #0x64
	add	r3, r6
	mov	r8, r3
	ldrh	r2, [r3]
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	beq	.Lf6ae
	sub	r3, r2, #1
	mov	r1, r8
	strh	r3, [r1]
.Lf6ae:
	ldr	r3, =iwram_1e70
	ldr	r0, [r3]
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L1328c
	and	r3, r2
	mov	r2, #0x8d
	lsl	r3, #2
	lsl	r2, #1
	ldr	r4, [r1, r3]
	add	r1, r0, r2
	ldrh	r0, [r1]
	sub	r3, r4, r0
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0
	bge	.Lf6d6
	add	r3, #7
.Lf6d6:
	asr	r2, r3, #3
	mov	r3, #0x80
	lsl	r3, #2
	cmp	r2, r3
	ble	.Lf6e2
	mov	r2, r3
.Lf6e2:
	ldr	r3, =0xfffffe00
	cmp	r2, r3
	bge	.Lf6ea
	mov	r2, r3
.Lf6ea:
	mov	r3, r2
	add	r3, #0xf
	cmp	r3, #0x1e
	bhi	.Lf6f6
	ldrh	r3, [r1]
	sub	r2, r4, r3
.Lf6f6:
	add	r3, r0, r2
	strh	r3, [r1]
	mov	r3, r6
	add	r3, #0x54
	ldrb	r7, [r3]
	cmp	r7, #1
	bne	.Lf7ba
	mov	r0, r6
	add	r0, #8
	ldr	r5, [r6, #0x50]
	bl	Func_12204
	cmp	r0, #9
	bne	.Lf738
	ldr	r3, [r5, #0x2c]
	mov	r2, r5
	strb	r7, [r3, #6]
	ldr	r3, .Lf720	@ 0
	add	r2, #0x26
	strb	r3, [r2]
	b	.Lf744

	.align	2, 0
.Lf720:
	.word	0
	.pool

.Lf738:
	ldr	r3, [r5, #0x2c]
	mov	r2, #9
	strb	r2, [r3, #6]
	mov	r3, r5
	add	r3, #0x26
	strb	r7, [r3]
.Lf744:
	cmp	r0, #6
	bne	.Lf7ba
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	cmp	r3, #0
	bne	.Lf7ba
	ldr	r2, [sp, #8]
	cmp	r2, #0
	bne	.Lf7ba
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x18
	bl	Func_c150
	mov	r5, r0
	cmp	r5, #0
	beq	.Lf7ba
	ldr	r1, =.L13280
	ldr	r7, [r5, #0x50]
	bl	Func_c2d8
	add	r0, sp, #8
	mov	r3, r5
	ldrb	r0, [r0]
	add	r3, #0x55
	mov	r2, r5
	strb	r0, [r3]
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	cmp	r7, #0
	beq	.Lf7b4
	mov	r1, #1
	mov	r0, r7
	bl	Func_ba30
	add	r1, sp, #8
	ldrb	r1, [r1]
	mov	r3, r7
	add	r3, #0x26
	strb	r1, [r3]
	mov	r2, #0xd
	ldrb	r1, [r7, #5]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	mov	r1, #4
	orr	r3, r1
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #9]
	and	r2, r3
	mov	r3, #8
	orr	r2, r3
	strb	r2, [r7, #9]
.Lf7b4:
	mov	r3, #0xa
	mov	r2, r8
	strh	r3, [r2]
.Lf7ba:
	bl	Func_eaf8
	ldrh	r3, [r6, #4]
	add	r3, #1
	mov	r0, #1
	strh	r3, [r6, #4]
	add	sp, #0x5c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f2f8

.thumb_func_start Func_f7dc
	push	{r5, lr}
	mov	r5, r0
	bl	Func_eaf8
	ldrh	r3, [r5, #4]
	add	r3, #1
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_f7dc

.thumb_func_start Func_f7f4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r4, #0x80
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #7
	lsl	r4, #8
	str	r3, [r6, #0x34]
	str	r4, [r6, #0x30]
	ldr	r3, =iwram_1ae8
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.L13254
	lsl	r3, #1
	ldrsh	r3, [r1, r3]
	mov	r0, #0xc
	lsl	r1, r3, #16
	ldr	r2, =0xffff
	mov	r9, r0
	mov	r3, #4
	lsr	r0, r1, #16
	sub	sp, #0x50
	mov	r10, r3
	cmp	r0, r2
	bne	.Lf832
	b	.Lf93a
.Lf832:
	mov	r2, #0xf0
	lsl	r2, #8
	mov	r3, #0xe
	and	r2, r0
	mov	r9, r3
	cmp	r2, #0
	beq	.Lf84c
	mov	r0, #0xf
	mov	r9, r0
	cmp	r2, r4
	beq	.Lf84c
	mov	r2, #0xa
	mov	r9, r2
.Lf84c:
	add	r5, sp, #0x44
	mov	r0, #0x80
	mov	r3, #0
	mov	r2, r5
	lsl	r0, #12
	lsr	r1, #16
	mov	r10, r3
	str	r3, [r5]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	bl	Func_447c
	ldr	r3, [r5]
	ldr	r2, [r6, #8]
	add	r3, r2
	ldr	r2, [r5, #8]
	str	r3, [r5]
	cmp	r2, #0
	bge	.Lf878
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #6]
.Lf878:
	cmp	r2, #0
	ble	.Lf882
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r6, #6]
.Lf882:
	ldr	r2, [r5, #8]
	ldr	r3, [r6, #0xc]
	sub	r3, r2
	str	r3, [r5, #4]
	ldr	r2, [r6, #0x10]
	ldr	r3, [r6, #8]
	str	r2, [r5, #8]
	cmp	r3, #0
	bge	.Lf898
	ldr	r0, =0xfffff
	add	r3, r0
.Lf898:
	asr	r0, r3, #20
	mov	r3, r2
	cmp	r2, #0
	bge	.Lf8a4
	ldr	r1, =0xfffff
	add	r3, r2, r1
.Lf8a4:
	asr	r3, #20
	lsl	r1, r3, #7
	add	r3, r0, r1
	ldr	r0, =ewram_10000
	lsl	r3, #2
	add	r0, r3
	ldr	r3, [r5]
	mov	r8, r0
	cmp	r3, #0
	bge	.Lf8bc
	ldr	r0, =0xfffff
	add	r3, r0
.Lf8bc:
	asr	r3, #20
	add	r3, r1
	ldr	r1, =ewram_10000
	lsl	r3, #2
	mov	r0, r5
	add	r7, r3, r1
	bl	Func_1219c
	cmp	r0, #0
	bne	.Lf8da
	mov	r3, r8
	ldrb	r2, [r3, #2]
	ldrb	r3, [r7, #2]
	cmp	r2, r3
	beq	.Lf8e4
.Lf8da:
	mov	r0, #4
	mov	r1, #0xc
	mov	r10, r0
	mov	r9, r1
	b	.Lf93a
.Lf8e4:
	ldr	r1, =iwram_1ae8
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lf910
	mov	r3, r6
	add	r3, #0x22
	ldrb	r0, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, =0xfff00000
	ldr	r1, [r5]
	add	r2, r3
	bl	Func_11f54
	ldr	r3, [r6, #0xc]
	sub	r3, r0, r3
	mov	r0, #0x80
	lsl	r0, #13
	cmp	r3, r0
	bge	.Lf93a
	b	.Lf932
.Lf910:
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93a
	mov	r3, r6
	add	r3, #0x22
	ldrb	r0, [r3]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	Func_11f54
	ldr	r3, [r6, #0xc]
	ldr	r1, =0xfff80000
	sub	r3, r0, r3
	cmp	r3, r1
	ble	.Lf93a
.Lf932:
	mov	r2, #1
	mov	r3, #0xc
	mov	r10, r2
	mov	r9, r3
.Lf93a:
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lf962
	mov	r2, #3
	mov	r0, r10
	and	r2, r0
	cmp	r2, #0
	beq	.Lf95a
	mov	r1, #0xce
	lsl	r1, #1
	add	r2, r3, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lf962
.Lf95a:
	mov	r0, #0xce
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
.Lf962:
	mov	r1, r9
	mov	r0, r6
	bl	Func_c300
	mov	r1, r10
	cmp	r1, #0
	beq	.Lf984
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r3, #0
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x28]
	str	r3, [r6, #0x2c]
	b	.Lf992
.Lf984:
	add	r3, sp, #0x44
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	Func_d14c
.Lf992:
	ldrh	r3, [r6, #4]
	add	r3, #1
	mov	r0, #1
	strh	r3, [r6, #4]
	add	sp, #0x50
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f7f4

	.section .rodata

.L13254:
	.incrom 0x13254, 0x13274
.L13274:
	.incrom 0x13274, 0x13280
.L13280:
	.incrom 0x13280, 0x1328c
.L1328c:
	.incrom 0x1328c, 0x132cc
