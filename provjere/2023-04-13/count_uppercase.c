int count_uppercase(char* array, int size) {
  int i, count = 0;
  for(i = 0; i < size; ++i) {
    if(array[i] >= 'A' && array[i] <= 'Z') {
      ++count;
    }
  }
  return count;
}
