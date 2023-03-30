.globl niz
.globl size
.globl result
.section .data
niz:
  .hword 1
  .hword 19
  .hword 350
  .hword 740
  .hword 1522
  .hword 2020
size:
  .word 6
result:
  .word
.globl main
.section .text
main:
  ori $t0, $0, 1
  la $t7, size
  lw $t7, 0($t7)
  beq $t7, $0, cancel
  la $t1, niz
  lh $t2, 0($t1)

  loop:
    addiu $t0, $t0, 1
    bgt $t0, $t7, end_loop
    addiu $t1, $t1, 2
    lh $t3, 0($t1)
    bgt $t2, $t3, cancel
    or $t2, $0, $t3
    j loop
  end_loop:
    la $t0, niz
    andi $t1, $t7, 1
    beq $t1, $0, even
    
    addiu $t7, $t7, 1
    srl $t7, $t7, 1
    addiu $t7, $t7, -1
    sll $t7, $t7, 1
    addu $t0, $t0, $t7
    lh $t0, 0($t0)
    or $t5, $0, $t0
    j solve
  even:
    add $t0, $t0, $t7
    lh $t2, 0($t0)
    addiu $t0, $t0, -2
    lh $t3, 0($t0)
    addu $t4, $t2, $t3
    srl $t5, $t4, 1
  solve:
    la $t6, result
    sw $t5, ($t6)
  addiu $v0, $0, 0
  jr $ra

  cancel:
    lui $t0, 0xDEAD
    ori $t0, 0xFA11
    la $t1, result
    sw $t0, ($t1)
    addiu $v0, $0, 0
    jr $ra
