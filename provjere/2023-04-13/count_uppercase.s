.section .text
.globl count_uppercase
count_uppercase:
  addiu $t0, $0, 0
  addiu $v0, $0, 0
  for:
    slt $t7, $t0, $a1
    beq $t7, $0, endf
    addu $t2, $a0, $t0
    lb $t2, 0($t2)
    slti $t7, $t2, 65
    slti $t8, $t2, 91
    beq $t7, $t8, skip
    addiu $v0, $v0, 1
  skip:
    addiu $t0, $t0, 1
    j for
  endf:
    jr $ra
