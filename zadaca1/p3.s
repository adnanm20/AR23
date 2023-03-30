.globl main
.section .text
main:
#100010000000000000
  ori $t1, $0, 17
  sll $t1, $t1, 13
  ori $t1, $t1, 1
  sll $t1, $t1, 14
  ori $t1, $t1, 1

  not $t1, $t1

  and $t0, $t6, $t1

  addu $v0, $0, $t0
  jr $ra
  
