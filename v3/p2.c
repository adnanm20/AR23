const char* str = "Hello World";
char res[40];

int main()
{
  int i = 0;
  while(str[i] != 0)
  {
    res[i] = str[i];
    if(res[i] > 97)
      if(res[i] < 123)
        res[i] -= 32;
    ++i;
  }
  
  return 0;
}
