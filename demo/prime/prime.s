.section .text._start, "ax", %progbits
.global main
main:
    li  a0,0xd
    li	a7,16
    li	a6,89
    ecall
