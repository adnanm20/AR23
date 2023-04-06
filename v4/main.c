void myabs(int*, int);
int main()
{
  int a = -5, s;
  myabs(&s, a);
  printf("abs(%d) = %d\n", a, s);
  return 0;
}
