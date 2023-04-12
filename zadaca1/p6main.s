.section .rodata
str: .asciiz "a=%d\nb=%d\nex=%d\n"
.section .text
.globl main
main:
  addiu $sp, $sp, -64
  addiu $t0, $0, 5
  sh $t0, 62($sp)
  sw $ra, 56($sp)
  addu $a0, $sp, 62
  addiu $a1, $0, 4
  jal exchange
  la $a0, str
  lh $a1, 62($sp)
  addiu $a2, $0, 4
  add $a3, $0, $v0
  jal printf
  lw $ra, 56($sp)
  addiu $sp, $sp, 64
  addiu $v0, $0, 0
  jr $ra
  
