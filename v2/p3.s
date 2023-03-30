.section .data
.globl a
a: .byte 25
.globl d
d: .hword 40000
.globl b
b: .byte -2
.globl c
c: .byte -10
.globl e
e: .hword 40000
.globl x
x: .word 3400
.globl y
y: .word 2800
.globl f
f: .word
.globl i
i: .word
.globl g
g: .hword
.globl h
h: .hword
.globl j
j: .word
.globl z
z: .word
.globl main
.section .text
main:
  la $t0, f
  lw $t0, 0($t0)
  la $t1, a
  lbu $t1, 0($t1)
  addi $t0, $t1, 190
  la $t1, f
  sw $t0, ($t1)

  la $t0, g
  lh $t0, 0($t0)
  la $t1, b
  lb $t1, 0($t1)
  addi $t0, $t1, -12
  la $t1, g
  sh $t0, ($t1)

  la $t0, h
  lh $t0, 0($t0)
  la $t1, c
  lbu $t1, 0($t1)
  addi $t0, $t1, 15
  la $t1, h
  sh $t0, ($t1)

  la $t0, i
  lw $t0, 0($t0)
  la $t1, d
  lhu $t1, 0($t1)
  ori $t2, $0, 45000
  sub $t0, $t1, $t2
  la $t1, i
  sw $t0, ($t1)

  la $t0, j
  lw $t0, 0($t0)
  la $t1, e
  lhu $t1, 0($t1)
  ori $t2, $0, 45000
  sub $t0, $t1, $t2
  la $t1, j
  sw $t0, ($t1)

  la $t0, z
  lw $t0, 0($t0)
  la $t1, x
  lw $t1, 0($t1)
  la $t2, y
  lw $t2, 0($t2)
  add $t0, $t1, $t2
  la $t1, z
  sw $t0, ($t1)


  addiu $v0, $0, 0
  jr $ra

