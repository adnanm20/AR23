.globl main
main:
  lui $t0, 0x7FFF
  ori $t0, 0xFFF0
  addiu $t0, $t0, 20

  addiu $v0, $0, 0
  jr $ra


