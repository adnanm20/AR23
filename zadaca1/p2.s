.section .data
.globl broj
.globl result
broj: .word 10
result: .word
.globl main
.section .text
main:
  la $t0, broj
  lw $t0, 0($t0)
  
  andi $t7, $t0, 1
  
  or $t1, $0, $t0
  sll $t2, $t0, 4
  sll $t1, $t1, 3
  addu $t3, $t1, $t2
  sub $t3, $t3, $t0
  sub $t3, $t3, $t0

  sll $t2, $t3, 3
  sub $t2, $t2, $t3

  andi $t2, $t2, 7
  andi $t2, $t2, 31

  la $t4, result
  sw $t2, 0($t4)

  addiu $v0, $0, 0
  jr $ra



