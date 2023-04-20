.section .text
.globl partition
partition:
  slti $t0, $a1, 2
  beq $t0, 0, els
  jr $ra
els:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  sll $a1, $a1, 2
  addu $a1, $a0, $a1
  addiu $a1, $a1, -4
  jal part_impl
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  jr $ra

part_impl:
  bne $a0, $a1, work
  jr $ra
work:
  addiu $sp, $sp, -64
  sw $ra, 60($sp)
  sw $a0, 56($sp)
  sw $a1, 52($sp)
  sw $a2, 48($sp)
  lw $a0, ($a0)
  jalr $a2
  lw $a0, 56($sp)
  lw $a1, 52($sp)
  lw $a2, 48($sp)
  beq $v0, $0, else
  lw $t0, ($a0) #t0 = *f
  lw $t1, ($a1) #t1 = *s
  sw $t0, ($a1) #*s = t0
  sw $t1, ($a0) #*f = t1
  addiu $a1, $a1, -4
  j sk
else:
  addiu $a0, $a0, 4
sk:
  jal part_impl
  lw $ra, 60($sp)
  addiu $sp, $sp, 64
  jr $ra
