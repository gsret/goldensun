# Golden Sun

This is a disassembly of [Golden Sun](https://en.wikipedia.org/wiki/Golden_Sun_%28video_game%29).

It builds the following ROM:

- [goldensun.gba](https://datomatic.no-intro.org/index.php?page=show_record&s=23&n=0170) (SHA1: `5c4695205413df7db52b9a184815a07783999971`)

## Status

* All known code has been disassembled and symbolized.
* Data has not been disassembled yet.
* Overlays (map code) are not yet built into the output ROM, due to lacking a matching compressor. The build system builds and verifies uncompressed overlays.
* Editing is not meaningfully possible yet. Data included verbatim from the base ROM contains many absolute addresses, so changing the position of any symbol is likely to produce a broken ROM.

## Roadmap

More like a list of goals. Not in any particular order.

* Develop a matching compressor and build overlays into the output ROM.
* Declare variables in source files and get rid of [wram.sym](wram.sym).
* Isolate modules further. Modules should be partially linked and combined in a final link. Functions and data should not be visible, only exported entry points.
* Document code.
* Disassemble and document data.
* Develop a matching C compiler and decompile C instead of disassembling.

## Prerequisites

The original ROM (USA version) is required. It must be named `baserom.gba` and placed in the root directory of the repository.

Required software:

* GNU make
* GNU binutils targeting ARM/Thumb (arm-none-eabi)
* C compiler such as GCC or Clang, targeting host architecture (not ARM/Thumb)

To install these dependencies on Debian or Ubuntu:

```
apt install make gcc binutils-arm-none-eabi
```

## Build

```
make
```

The default target builds and verifies the ROM and all overlays.

To build only the ROM:

```
make goldensun.bin
```

To verify the ROM:

```
make compare-goldensun
```

To build a single overlay, for example `overlays/rom_779188/overlay.bin`:

```
make overlays/rom_779188/overlay.bin
```

To verify a single overlay, for example `overlays/rom_779188/overlay.bin`:

```
make compare-overlays/rom_779188/overlay
```

To delete all output files produced by the build:

```
make clean
```

## Acknowledgements

Golden Sun is copyright 2001 Nintendo / Camelot Software Planning.

This is a fan project, not associated in any way with Nintendo or Camelot.
