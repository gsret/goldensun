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

INCLUDE "wram.sym"

SECTIONS {
	__start_rom = ORIGIN(rom);
	__start_overlay = ORIGIN(overlay);

	header : {
		stage1.o(header)
	} > rom

	rom_c0 : {
		stage1.o(rom_c0)
	} > rom

	rom_770 : {
		stage1.o(rom_770)
	} > iwram AT > rom

	__load_start_rom_770 = LOADADDR(rom_770);

	rom_1b70 : {
		stage1.o(rom_1b70)
	} > rom

	rom_9000 : ALIGN(0x1000) {
		stage1.o(rom_9000)
	} > rom

	rom_15000 : ALIGN(0x1000) {
		stage1.o(rom_15000)
	} > rom

	rom_77000 : ALIGN(0x1000) {
		stage1.o(rom_77000)
	} > rom

	rom_8a000 : ALIGN(0x1000) {
		stage1.o(rom_8a000)
	} > rom

	rom_a1000 : ALIGN(0x1000) {
		stage1.o(rom_a1000)
	} > rom

	rom_b0000 : ALIGN(0x1000) {
		stage1.o(rom_b0000)
	} > rom

	rom_b5000 : ALIGN(0x1000) {
		stage1.o(rom_b5000)
	} > rom

	rom_c9000 : ALIGN(0x1000) {
		stage1.o(rom_c9000)
	} > rom

	rom_f0000 : ALIGN(0x1000) {
		stage1.o(rom_f0000)
	} > rom

	rom_f2000 : ALIGN(0x1000) {
		stage1.o(rom_f2000)
	} > rom

	rom_f4000 : ALIGN(0x1000) {
		stage1.o(rom_f4000)
	} > rom

	rom_f6000 : ALIGN(0x1000) {
		stage1.o(rom_f6000)
	} > rom

	rom_f9000 : ALIGN(0x1000) {
		stage1.o(rom_f9000)
	} > rom

	rom_185000 : ALIGN(0x1000) {
		stage1.o(rom_185000)
	} > rom

	rom_320000 : ALIGN(0x1000) {
		rom_320000/src/rom_320000.o(.rodata)
	} > rom

	.fill : {
		. = ORIGIN(rom) + LENGTH(rom) - 1;
		BYTE(0);
	} > rom

	/DISCARD/ : {
		*(*)
	}
}
