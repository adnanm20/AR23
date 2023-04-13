char buffer[33];

int toBinary(char*, int);

int main(void)
{
  int result = toBinary(buffer, 430);
  printf("Buffer=%s\nIterationsMain = %d\n", buffer, result);
  return 0;
}
