CROSS_COMPILE ?= riscv-nuclei-linux-gnu-
CC ?= $(CROSS_COMPILE)gcc
LINK ?= $(CROSS_COMPILE)ld
AR ?= $(CROSS_COMPILE)ar

LINKFLAGS = -static
INCLUDE_DIR = include
CFLAGS = -Wall
ARFLAGS = rcs

ASM_SRCS = src/eret.S
C_SRCS = 

A_OBJS = $(patsubst %.S,%.o,$(ASM_SRCS))
C_OBJS = $(patsubst %.c,%.o,$(C_SRCS))

TARGET = ../libpenglai-enclave-eapp.a

all: $(TARGET)

$(A_OBJS): %.o : %.S
	$(CC) $(CFLAGS) -I$(INCLUDE_DIR) -c $< -o $@
$(C_OBJS): %.o: %.c
	$(CC) $(CFLAGS) -I$(INCLUDE_DIR) -c $< -o $@
$(TARGET): $(A_OBJS) $(C_OBJS)
	$(AR) $(ARFLAGS) $@ $^


clean:
	rm -f $(A_OBJS) $(C_OBJS) $(TARGET)
