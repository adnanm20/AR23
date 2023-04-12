.section .data
str: .asciiz "%d\t%d\n"
n1:
  .word 1
  .word 3
  .word 5
  .word 7
  .word 9
  .word -9
  .word -7
  .word -5
  .word -3
  .word -1
n2:
  .word 0
  .word 2
  .word 4
  .word 6
  .word 8
  .word -8
  .word -6
  .word -4
  .word -2
  .word 0
.section .text
.globl main
main:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  la $a0, n1
  la $a1, n2
  addiu $a2, $0, 40
  jal swap
  la $s2, n1
  la $s3, n2
  addiu $s1, $0, 0
  for:
    slti $t1, $s1, 40
    beq $t1, $0, endf
    addu $t5, $s2, $s1
    addu $t6, $s3, $s1
    la $a0, str
    lw $a1, 0($t5)
    lw $a2, 0($t6)
    jal printf
    addiu $s1, $s1, 4
    j for
  endf:
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  addiu $v0, $0, 0
  jr $ra
