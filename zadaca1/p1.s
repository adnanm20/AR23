.section .data
.globl number
.globl result
number: .word 40
result: .word
.globl main
.section .text
main:
  la $t0, number
  lw $t0, 0($t0)

  addiu $t1, $0, 1
  and $t2, $t0, $t1

  la $t0, result
  sw $t2, 0($t0)

  addiu $v0, $0, 0
  jr $ra
