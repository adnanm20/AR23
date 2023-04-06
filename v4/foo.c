#include <stdint.h>

uint32_t foo(int16_t a, int16_t b) {
  if(b == 0) return 0xFFFFFFFF;
  uint32_t rez = a / b;
  rez <<= 16;
  return rez | (a%b);
}
