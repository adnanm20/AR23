#include <stdint.h>
uint32_t foo(int16_t, int16_t);

int main(void)
{
  printf("Rez: %#010x\n", foo(27, 5));
  return 0;
}
