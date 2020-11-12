CROSS_COMPILE ?= riscv-nuclei-linux-gnu-
CC    ?= $(CROSS_COMPILE)gcc
STRIP ?= $(CROSS_COMPILE)strip

HOST=host

all:
	#$(CC) -static -o $(HOST) -I $(PENGLAI_SDK)/lib/host/include/  host.c  $(PENGLAI_SDK)/lib/libpenglai-enclave-host.a  -lpthread
	$(CC) -static -Os -o $(HOST) -I $(PENGLAI_SDK)/lib/host/include/  host.c  $(PENGLAI_SDK)/lib/libpenglai-enclave-host.a -lpthread
	$(STRIP) host

clean:
	rm -f *.o $(HOST)
