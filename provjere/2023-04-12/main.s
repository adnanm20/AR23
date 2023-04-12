.section .rodata
str: .asciiz "result=%d\n"
.section .data
array:
  .hword 11
  .hword 1
  .hword 7
  .hword 332
  .hword 100
  .hword 50
  .hword 213
  .hword 24
  .hword 512
  .hword 67
.section .text
.globl main
main:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  la $a0, array
  addiu $a1, $0, 10
  jal sum_evens
  addu $a1, $0, $v0
  la $a0, str
  jal printf
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  addiu $v0, $0, 0
  jr $ra
  
