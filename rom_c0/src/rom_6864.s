	.include "macros.inc"

.thumb_func_start Func_6864
	swi	0xb
	bx	lr
.func_end Func_6864

.thumb_func_start Func_6868
	mov	r0, #0
	swi	0x19
	bx	lr
.func_end Func_6868

.thumb_func_start Func_6870
	mov	r0, #1
	swi	0x19
	bx	lr
.func_end Func_6870
