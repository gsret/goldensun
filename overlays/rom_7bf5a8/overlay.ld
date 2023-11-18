MEMORY {
	bios	(x)	: ORIGIN = 0x00000000, LENGTH = 16K
	ewram	(rwx)	: ORIGIN = 0x02000000, LENGTH = 256K
	overlay (rwx)	: ORIGIN = 0x02008000, LENGTH = 32K
	iwram	(rwx)	: ORIGIN = 0x03000000, LENGTH = 32K
	io	(rw)	: ORIGIN = 0x04000000, LENGTH = 1K
	palette	(rw)	: ORIGIN = 0x05000000, LENGTH = 1K
	vram	(rw)	: ORIGIN = 0x06000000, LENGTH = 96K
	oam	(rw)	: ORIGIN = 0x07000000, LENGTH = 1K
	rom	(rx)	: ORIGIN = 0x08000000, LENGTH = 8M
	sram	(rw)	: ORIGIN = 0x0E000000, LENGTH = 64K
}

SECTIONS {
	.text : {
		overlays/rom_7bf5a8/exports.o(.text)
		overlays/rom_7bf5a8/ovl_30.o(.text)
		overlays/rom_7bf5a8/ovl_170.o(.text)
		overlays/rom_7bf5a8/ovl_2e0.o(.text)
		overlays/rom_7bf5a8/ovl_b8c.o(.text)
		overlays/rom_7bf5a8/imports.o(.text)
		overlays/common/common2.o(.text)
	} > overlay

	.data : {
		overlays/rom_7bf5a8/ovl_170.o(.data)
		overlays/rom_7bf5a8/ovl_b8c.o(.data)
		overlays/common/common2.o(.data)
		overlays/rom_7bf5a8/ovl_30.o(.data)
		overlays/rom_7bf5a8/ovl_2e0.o(.data)
	} > overlay

	/DISCARD/ : {
		*(*)
	}
}
