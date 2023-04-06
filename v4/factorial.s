.section .text
.globl factorial
factorial:
  bne $a0, $0, recursion
  addiu $v0, $0, 1
  jr $ra
recursion:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  sw $a0, 56($sp)
  addiu $a0, $a0, -1
  jal factorial
  lw $t0, 56($sp)
  mult $t0, $v0
  mflo $v0
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  jr $ra
