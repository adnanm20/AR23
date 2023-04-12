#include <stdint.h>

void swap(void*, void*, int32_t);

int main(void)
{
  int32_t n1[10] = {1,3,5,7,9,-9,-7,-5,-3,-1};
  int32_t n2[10] = {0,2,4,6,8,-8,-6,-4,-2,0};
  swap(n1, n2, 10*sizeof(int32_t));
  for(int i = 0; i < 10; ++i)
  {
    printf("%d\t%d\n", n1[i], n2[i]);
  }
  return 0;
}
