.section .rodata
.globl niz
niz:
  .hword 12
  .hword 3
  .hword -9
  .hword 1200
  .hword -2400
  .hword 490
  .hword 800
  .hword -23
  .hword 5
  .hword 22
.section .data
.globl suma
.globl najmanji
suma:
  .word 0
najmanji:
  .hword  0

.section .text
.globl main
main:
  addiu $t0, $0, 0
  addiu $t1, $0, 0
  la $t7, niz
  lh $t2, 0($t7)

  for:
    slti $t4, $t1, 10
    beq $t4, $0, napolje
    sll $t4, $t1, 1
    addu $t4, $t4, $t7
    lh $t3, 0($t4)
    addu $t0, $t0, $t3
    slt $t4, $t3, $t2
    beq $t4, $0, else
    addu $t2, $0, $t3
  else:
    addiu $t1, $t1, 1
    j for
  napolje:

  la $t1, najmanji
  sh $t2, 0($t1)
  la $t1, suma
  sw $t0, 0($t1)

  addiu $v0, $0, 0
  jr $ra
