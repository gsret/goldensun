# Default target. Verify the checksums of the built ROM and overlays.

ROM := goldensun.gba
OVERLAYS := $(patsubst %.sha1,%.bin,$(wildcard overlays/*/overlay.sha1))

COMPARE_OVERLAYS := $(OVERLAYS:%.bin=compare-%)

.PHONY: compare compare-goldensun $(COMPARE_OVERLAYS)
compare: compare-goldensun $(COMPARE_OVERLAYS)

compare-goldensun $(COMPARE_OVERLAYS):
	sha1sum -c $<

compare-goldensun: goldensun.sha1 $(ROM)

$(COMPARE_OVERLAYS): compare-%: %.sha1 %.bin


# Clean target.
.PHONY: clean
clean::


# Build ARM binaries from assembly sources.

%.o: %.s
	arm-none-eabi-as -mcpu=arm7tdmi -Iinclude -MD $(@:.o=.d) -o $@ $<

%.elf: %.ld
	arm-none-eabi-ld -T $< -Map $(@:.elf=.map) -o $@

$(ROM) $(OVERLAYS):
	arm-none-eabi-objcopy -O binary $< $@

$(ROM): %.gba: %.elf

$(OVERLAYS): %.bin: %.elf

ELFS := $(ROM:.gba=.elf) $(OVERLAYS:.bin=.elf)
MAPS := $(ELFS:.elf=.map)
SRCS := $(wildcard *.s */*.s */*/*.s)
OBJS := $(SRCS:.s=.o)
DEPS := $(OBJS:.o=.d)

-include $(DEPS)

clean::
	-$(RM) $(ROM) $(OVERLAYS) $(ELFS) $(MAPS) $(OBJS) $(DEPS)


# Read dependencies from the linker scripts.

define elf_deps
$(1): $(shell grep -o '[A-Za-z0-9/_-]\+\.o' $(1:.elf=.ld))
endef
$(foreach elf,$(ELFS),$(eval $(call elf_deps,$(elf))))


# Tools are compiled for the host and used during the build.

TOOLS := tools/unpack_overlay

CPPFLAGS += -MMD
CFLAGS ?= -O2 -Wall

$(TOOLS):

TOOL_SRCS := $(wildcard tools/*.c)
TOOL_OBJS := $(TOOL_SRCS:.c=.o)
TOOL_DEPS := $(TOOL_OBJS:.o=.d)

-include $(TOOL_DEPS)

clean::
	-$(RM) $(TOOLS) $(TOOL_OBJS) $(TOOL_DEPS)


# Overlays are special in a couple of ways.
#
# They are compressed in the ROM. We extract the compressed overlays
# for two purposes:
# 1. Since we don't yet have a matching compressor, we verify the built
# overlay against the extracted (uncompressed) binary.
# 2. The uncompressed binary is needed for incbin statements in overlay
# sources.

OVERLAY_DIRS := $(dir $(OVERLAYS))

define overlay_orig_deps
$(patsubst %.s,%.o,$(wildcard $(1)*.s)): %.o: $(1)orig.bin
endef
$(foreach overlay_dir,$(OVERLAY_DIRS),$(eval $(call overlay_orig_deps, $(overlay_dir))))

overlays/common/common0.o: overlays/rom_78ef88/orig.bin

overlays/common/common1.o: overlays/rom_7db0c8/orig.bin

overlays/rom_%/orig.bin: baserom.gba tools/unpack_overlay
	tools/unpack_overlay -r $< -a 0x$* -o $@

clean::
	-$(RM) $(addsuffix orig.bin,$(OVERLAY_DIRS))

# Overlays use symbols defined in the main part of the ROM. We have to
# add that as a prerequisite, and tell the linker to refer to it.

OVERLAY_ELFS := $(OVERLAYS:.bin=.elf)

$(OVERLAY_ELFS): %.elf: %.ld goldensun.elf
	arm-none-eabi-ld -T $< -Map $(@:.elf=.map) -R goldensun.elf -o $@
