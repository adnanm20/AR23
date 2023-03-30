#include <stdint.h>
const int16_t niz[10] = {12, 3, -9, 1200, -2400, 490, 800, -23, 5, 22};
int suma;
int16_t najmanji;

int main()
{
  najmanji = niz[0];
  for(int i = 0; i < 10; ++i) {
    if(niz[i] < najmanji) najmanji = niz[i];
    suma = suma + niz[i];
  }
  return 0;
}

