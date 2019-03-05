NEWLIBNANO_SRC_COMMON_PATH = $(NEWLIBNANO_MODULE_PATH)/src

# Use FreeRTOS heap_4 and a set of newlib wrappers on Photon, P1 and Electron
# Also on Xenon, Argon and Boron
ifneq (,$(filter $(PLATFORM_ID),6 8 10 12 13 14))
CSRC += $(NEWLIBNANO_SRC_COMMON_PATH)/malloc.c
else
# Use nano_malloc for all the other platforms by default
CSRC += $(NEWLIBNANO_SRC_COMMON_PATH)/mallocr.c
endif
