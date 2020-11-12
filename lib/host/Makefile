CROSS_COMPILE ?= riscv-nuclei-linux-gnu-
CC ?= $(CROSS_COMPILE)gcc
AR ?= $(CROSS_COMPILE)ar

INCLUDE_DIR = include/
SRC_DIR = src
CCFLAGS = -Wall -Werror -I $(INCLUDE_DIR)
SRCS = param.c penglai-enclave.c elf.c
OBJS = $(patsubst %.c,%.o,$(SRCS))
ARFLAGS = rcs

TARGET=../libpenglai-enclave-host.a

all: $(TARGET)

$(TARGET): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

$(OBJS): %.o: $(addprefix $(SRC_DIR)/, %.c)
	$(CC) $(CCFLAGS) -c $<

clean:
	rm -f $(OBJS) $(TARGET)
