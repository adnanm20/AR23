#include<stdio.h>

int max(int arr[], int size)
{
  int m = arr[0];
  for(int i = 1; i < size; ++i)
    if(arr[i] > m)
      m = arr[i];

  return m;
}

int main(void)
{
  const int size = 7;
  int array[30] = {1, 4, 2, 7, 11, 8, 3};
  int m = max(array, size);
  printf("Najveci element: %d\n", m);
  return 0;
}

//ecc -target mips32r2el-linux -S -g p1.c -o p1.s {-g dodaje stvari za debugger}
//qemu-mipsel p1
//qemu-mipsel -g {port( npr 1337)} p1
//gdb-multiarch -q p1 {-q je da se ne ispise licenca}
//target remote :1337
//b main {postavi breakpoint na main}
//c {continue}
//list
//info registers
//layout regs
//si / ni
//p {varijabla/  size}
//x/{format(3i, 3w)} {label}
//jobs
//fg %n
//ps aux za sve procese
