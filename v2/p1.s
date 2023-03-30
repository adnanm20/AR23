.section .text
.globl main
main:
  addi $t0, $0, 100
  addi $t1, $t0, 20
  ori $t1, $t1, 5
  addiu $v0, $0, 0
  jr $ra

