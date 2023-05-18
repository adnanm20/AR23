.section .data
a: .word 5
.section .text
.globl foo3
foo3:
  la $t0, 0($a0)
  lwc1 $f4, 0($t0)
  cvt.d.w $f4, $f4
  mtc1 $a2, $f6
  mtc1 $a3, $f7
  add.d $f4, $f4, $f6
  lwc1 $f6, 0($a0)
  lwc1 $f7, 4($a0)
  add.d $f4, $f4, $f6
  swc1 $f4, 0($a0)
  jr $ra

