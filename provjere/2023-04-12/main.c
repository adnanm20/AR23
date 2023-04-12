#include <stdint.h>

int sum_evens(int16_t*, int32_t);

int16_t array[] = {11, 1, 7, 332, 100, 50, 213, 24, 512, 67};

int main(void)
{
  int result = sum_evens(array, 10);
  printf("result=%d\n", result);
  return 0;
}
