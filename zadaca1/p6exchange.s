.section .text
.globl exchange
exchange:
  lh $v0, 0($a0)
  sh $a1, 0($a0)
  jr $ra
