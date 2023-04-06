.section .text
.globl power
power:
  addiu $t0, $0, 1
  addiu $t1, $0, 0
  lw $t2, 0($a0)
  for:
    slt $t7, $t1, $a1
    beq $t7, $0, endfor
    mult $t0, $t2
    mflo $t0
    addiu $t1, $t1, 1
    j for
  endfor:
  sw $t0, 0($a0)
  jr $ra
