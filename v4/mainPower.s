.section .rodata
str: .asciiz "5^3 = %d\n"
.section .text
.globl main
main:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  addiu $t0, $0, 5
  sw $t0, 56($sp)
  addiu $a0, $sp, 56
  addiu $a1, $0, 3
  jal power
  la $a0, str
  lw $a1, 56($sp)
  jal printf
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  addiu $v0, $0, 0
  jr $ra
