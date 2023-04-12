#include <stdint.h>

int16_t exchange(int16_t*, int16_t);

int main(void)
{
  int16_t a = 5, b = 4;
  int16_t c = exchange(&a, b);
  printf("a=%d\nb=%d\nex=%d\n", a, b, c);
  return 0;
}
