.section .rodata
str: .asciiz "Number of upper characters in the array is %d\n"
array: .asciiz "helLoWorld"
.section .text
.globl main
main:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  la $a0, array
  addiu $a1, $0, 10
  jal count_uppercase
  add $a1, $0, $v0
  la $a0, str
  jal printf
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  addiu $v0, $0, 0
  jr $ra
