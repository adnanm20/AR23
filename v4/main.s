.section .rodata
str: .asciiz "abs(%d) = %d\n"
.section .text
.globl main
main:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  addiu $a1, $0, -5
  sw $a1, 52($sp)
  addiu $a0, $sp, 56
  jal myabs
  la $a0, str
  lw $a1, 52($sp)
  lw $a2, 56($sp)
  jal printf
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  addiu $v0, $0, 0
  jr $ra
