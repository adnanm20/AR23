void myabs(int*, int);

int main()
{
  int n = -5;
  int s = 0;
  myabs(&s, n);
  printf("abs(-5) = %d\n", s);
  return 0;
}
