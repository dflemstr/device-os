# this is included in the top-level-module makefile to provide
# HAL-specific defines

DEPENDENCIES += communication newlib_nano third_party/freertos
MAKE_DEPENDENCIES += third_party/freertos

CPPFLAGS += -std=gnu++11
CFLAGS += -DIMPLEMENT_STDIO_FUNCTIONS
