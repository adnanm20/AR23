.section .rodata
.globl str
str: .asciiz "Hello World"
.section .data
.globl res
res: .space 40
.section .text
.globl main
main:
  la $t0, str
  la $t3, res
  addiu $t2, $0, 0
  addiu $t7, $0, 97
while:
  lb $t1, 0($t0)
  beq $t1, $0, napolje
  addu $t6, $t2, $t3
  sb $t1, 0($t6)
  slt $t5, $t7, $t1
  beq $t5, $0, else
  slti $t5, $t1, 123
  beq $t5, $0, else
  addiu $t1, $t1, -32
  sb $t1, 0($t6)
else:
  addiu $t0, $t0, 1
  addiu $t2, $t2, 1
  j while
napolje:
  addiu $v0, $0, 0
  jr $ra


