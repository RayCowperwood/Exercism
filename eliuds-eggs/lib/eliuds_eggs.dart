class EggCounter {
  int count(int number) {
    int binary = 0;
    while (number != 0) {
      binary += number % 2 == 0 ? 0 : 1;
      number ~/= 2;
    }
    return binary;
  }
}
