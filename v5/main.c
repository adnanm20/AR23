#include <string.h>

int isPalindrome(const char*, int);

int main(void)
{
  const char* s = "racecar";
  if(isPalindrome(s, strlen(s))) {
    printf("%s je palindrom\n", s);
  } else {
    printf("%s nije palindrom\n", s);
  }
  return 0;
}
