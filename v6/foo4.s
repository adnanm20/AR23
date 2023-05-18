.section .data
d: .double 10.25
.section .text
.globl foo4
foo4:
  mtc1 $a0, $f4
  cvt.d.w $f4, $f4

  mtc1 $a2, $f6
  mtc1 $a3, $f7

  c.lt.d $f6, $f4
  la $t0, d
  lwc1 $f8, 0($t0)
  lwc1 $f9, 4($t0)
  bc1f elseif
  add.d $f0, $f4, $f6
  sub.d $f0, $f0, $f8
  jr $ra
elseif:
  c.eq.d $f4, $f6
  bc1f else
  add.d $f0, $f4, $f6
  jr $ra
else:
  add.d $f0, $f4, $f6
  add.d $f0, $f0, $f8
  jr $ra
