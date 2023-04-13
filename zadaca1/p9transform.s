.section .text
.globl transform
transform:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  sw $a0, 56($sp)
  sw $a1, 52($sp)
  sw $a2, 48($sp)
  sw $s0, 44($sp)
  addiu $s0, $0, 0
  for:
    slt $t7, $s0, $a1
    beq $t7, $0, endf

    addu $t1, $a0, $s0
    lb $a0, 0($t1)
    jalr $a2
    lw $a0, 56($sp)
    addu $t1, $a0, $s0
    sb $v0, 0($t1)
  
    lw $a1, 52($sp)
    lw $a2, 48($sp)
    addiu $s0, $s0, 1
    j for
  endf:
  lw $ra, 60($sp)
  lw $s0, 44($sp)
  addiu $sp, $sp, 64
  addiu $v0, $0, 0
  jr $ra
