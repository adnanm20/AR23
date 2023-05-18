double foo2(float a, int b);

int main(void)
{
  double s = foo2(5.5, 16777220);
  double z = 5.5 + 16777220;
  printf("foo: %f\n", s);
  printf("double: %f\n", z);
  return 0;
}
