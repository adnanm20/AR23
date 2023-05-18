.section .text
.globl foo2
foo2:
  j doublecastverzija
  mtc1 $a1, $f4
  cvt.s.w $f4, $f4
  c.lt.s $f12, $f4
  bc1f else
  add.s $f0, $f12, $f4
  cvt.d.s $f0, $f0
  j end
else:
  sub.s $f0, $f12, $f4
  cvt.d.s $f0, $f0
end:
  jr $ra

doublecastverzija:
  mtc1 $a1, $f4
  cvt.s.w $f4, $f4
  c.lt.s $f12, $f4

  cvt.d.s $f12, $f12
  mtc1 $a1, $f4
  cvt.d.w $f4, $f4

  bc1f else2
  add.d $f0, $f12, $f4
  j end2
else2:
  sub.d $f0, $f12, $f4
end2:
  jr $ra
