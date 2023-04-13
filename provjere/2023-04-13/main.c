#include <stdio.h>

int count_uppercase(char*, int);

char array[] = "helLoWorld";

int main(void)
{
  int count = count_uppercase(array, 12);
  printf("Number of upper characters in the array is %d\n", count);
  return 0;
}
