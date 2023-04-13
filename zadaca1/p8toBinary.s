.section .rodata
str: .asciiz "buffer: %s\nIterations: %d\n"
.section .data
temp: .space 33, 0
.section .text
.globl toBinary
toBinary:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  addiu $t0, $0, 0
  la $t4, temp
  addiu $t7, $0, 2
  addu $t1, $0, $a1
  while:
    beq $t1, $0, endw
    div $t1, $t7
    mflo $t1
    mfhi $t2
    addiu $t2, $t2, 48 #48 == '0'
    addu $t3, $t4, $t0
    sb $t2, 0($t3)
    addiu $t0, $t0, 1
    j while
  endw:
  addu $t6, $0, $t0
  addiu $t0, $t0, -1
  addiu $t8, $0, 0
  addiu $t9, $0, -1
  while2:
    slt $t7, $t9, $t0
    beq $t7, $0, endw2
    addu $t2, $t4, $t0
    lb $t3, 0($t2)
    addu $t2, $a0, $t8
    sb $t3, 0($t2)
    addiu $t8, $t8, 1
    addiu $t0, $t0, -1
    j while2
  endw2:
  addu $t0, $t6, $t8
  sw $t0, 52($sp)

  addiu $t2, $0, 0
  addu $t3, $a0, $t8
  sb $t2, 0($t3)

  addu $a2, $0, $t0
  addu $a1, $0, $a0
  la $a0, str
  jal printf
  lw $t0, 52($sp)
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  addu $v0, $0, $t0
  jr $ra

