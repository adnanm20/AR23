.section .data
a: .word 5
.globl c
c: .float 2.5
.section .text
.globl foo
foo:
  la $t0, a
  lwc1 $f4, 0($t0)
  cvt.s.w $f4, $f4
  la $t0, c
  lwc1 $f6, 0($t0)
  add.s $f4, $f4, $f6
  lwc1 $f6, 0($a0)
  add.s $f4, $f4, $f6
  swc1 $f4, 0($a0)
  jr $ra
