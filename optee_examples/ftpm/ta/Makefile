export V ?= 1
export TA_CPU 			?= cortex-a9

BINARY=bc50d971-d4c9-42c4-82cb-343fb7f37896
TA_DEV_KIT_DIR ?= /home/palatrauss/optee_with_ftpm_ta/optee_os/ta/

O ?= out
WOLF_ROOT := lib/external/wolfssl/
TPM_ROOT := ./

-include $(TA_DEV_KIT_DIR)/mk/ta_dev_kit.mk

CFLAGS += -I/home/palatrauss/optee_with_ftpm_ta/toolchains/aarch32/arm-none-linux-gnueabihf/libc/usr/include
CFLAGS += -fstack-protector-strong


# Aggiungi le opzioni per il linker: collegare libc e altre librerie
LDFLAGS += -Wl,--no-as-needed -L/home/palatrauss/optee_with_ftpm_ta/toolchains/aarch32/arm-none-linux-gnueabihf/libc/usr/lib \
         -lc -lgcc -lssp






TA_FILE="bc50d971-d4c9-42c4-82cb-123456789123.ta"

clean: clean_stripped_file
.PHONY: clean_stripped_file
clean_stripped_file:
	rm -f $(BINARY).stripped.elf

