.section .text
.globl foo
foo:
  div $a0, $a1
  mflo $v0
  mfhi $t0
  sll $v0, $v0, 16
  or $v0, $v0, $t0
  jr $ra
