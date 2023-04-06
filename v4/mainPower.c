void power(int*, int);

int main(void)
{
  int num = 5;
  power(&num, 3);
  printf("5^3 = %d\n", num);
  return 0;
}
