.globl str
.section .data
str: .byte 'r', 'a', 'c', 'e', 'r', 'a', 'r', 0
result: .word
.globl main
.section .text
main:
  la $t0, str
  or $t1, $0, $t0
  lbu $t2, 0($t1)
  beq $t2, $0, cancel
  loop:
    addiu $t1, $t1, 1
    lbu $t2, 0($t1)
    beq $t2, $0, end_loop
    j loop
  end_loop:
    addiu $t1, $t1, -1
    l2:
      lb $t3, 0($t0)
      lb $t4, 0($t1)
      addiu $t0, $t0, 1
      addiu $t1, $t1, -1
      bgt $t0, $t1, end_l2
      beq $t3, $t4, l2

      la $t0, result
      sw $0, ($t0)
      addiu $v0, $0, 0
      jr $ra
    end_l2:
      la $t0, result
      addiu $t1, $0, 1
      sw $t1, ($t0)
  cancel:
    addiu $v0, $0, 0
    jr $ra

