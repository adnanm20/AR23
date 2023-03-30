.section .data
.globl a
a:
  .word 40
.globl b
b:
  .word 20
c:
  .word 30
.globl main
.section .text
main:
  la $t5, a
  lw $t0, 0($t5)

  la $t6, b
  lw $t1, 0($t6)
  
  la $t6, c
  lw $t2, 0($t6)
  
  add $t0, $t0, $t1
  sub $t0, $t0, $t2

  la $t5, a
  sw $t0, ($t5)

  addiu $v0, $0, 0
  jr $ra
  
