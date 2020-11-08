PENGLAI_SDK:=${PWD}
RISCV := ../work/buildroot_initramfs/host
PATH := $(RISCV)/bin:$(PATH)

all:
	make -C musl
	make -C lib
	make -C demo

clean:
	make -C musl clean
	make -C lib clean
	make -C demo clean
