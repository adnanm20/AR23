.section .rodata
str: .asciiz "p = %f\n"
.section .text
.globl main
main:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  lui $t0, 0x4123
  ori $t0, $t0, 0x3333
  sw $t0, 56($sp)
  addiu $a0, $sp, 56
  jal foo
  la $a0, str
  lwc1 $f4, 56($sp)
  cvt.d.s $f4, $f4
  mfc1 $a2, $f4
  mfc1 $a3, $f5
  jal printf
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  jr $ra

