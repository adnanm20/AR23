void foo(float*);

int main(void)
{
  float p = 10.2f;
  foo(&p);
  printf("p = %f\n", p);
  return 0;
}
