.section .text
.globl sum_evens
sum_evens:
  addiu $t0, $0, 0
  addiu $v0, $0, 0
  for:
    slt $t1, $t0, $a1
    beq $t1, $0, endf
    sll $t2, $t0, 1
    addu $t3, $a0, $t2
    lh $t3, 0($t3)
    andi $t4, $t3, 1
    bne $t4, $0, skip
    addu $v0, $v0, $t3
  skip:
    addiu $t0, $t0, 1
    j for
  endf:
  jr $ra
