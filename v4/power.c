void power(int* s, int a) {
  int rez = 1, i = 0;
  for(; i < a; ++i) {
    rez = rez * (*s);
  }
  *s = rez;
}
