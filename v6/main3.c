double foo3(double* p, double f);

int main(void)
{
  double p = 10.15;
  double d = 15.10;
  foo3(&p, d);
  printf("%f\n", p);
  return 0;
}
