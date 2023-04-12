.section .text
.globl swap
swap:
  addiu $t0, $0, 0
  loop:
    slt $t7, $t0, $a2
    beq $t7, $0, endloop
    addu $t1, $a0, $t0
    addu $t2, $a1, $t0
    lb $t3, 0($t1)
    lb $t4, 0($t2)
    sb $t4, 0($t1)
    sb $t3, 0($t2)
    addiu $t0, $t0, 1
    j loop
  endloop:
  jr $ra
