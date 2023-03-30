.section .text
.globl myabs
myabs:
  slti $t0, $a1, 0
  beq $t0, $0, L1
  subu $t0, $0, $a1
L1:
  sw $a1, ($a0)
  jr $ra
  
