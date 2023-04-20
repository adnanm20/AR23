static void part_impl(int* f, int* s, int(*pred)(int)) {
  if(f == s) return;
  if(pred(*f)) {
    int t = *f;
    *f = *s;
    *s = t;
    --s;
  } else {
    ++f;
  }
  part_impl(f, s, pred);
}

void partition(int* array, int len, int (*predicate)(int)) {
  if(len < 2) return;
  part_impl(array, array+len-1, predicate);
}
