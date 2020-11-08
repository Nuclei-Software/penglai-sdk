#define SYS_eret 89 //ret to host
.globl EAPP_RETURN
EAPP_RETURN:
	li a7, 0x10 # SBI_EXT_BASE
	li a6, SYS_eret
	ecall
