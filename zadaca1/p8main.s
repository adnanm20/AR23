.section .rodata
str: .asciiz "Buffer=%s\nIterations=%d\n"
.section .data
buffer: .space 33
.section .text
.globl main
main:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  la $a0, buffer
  addiu $a1, $0, 430
  jal toBinary
  addu $a2, $0, $v0
  la $a0, str
  la $a1, buffer
  jal printf
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  addiu $v0, $0, 0
  jr $ra
