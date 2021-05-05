void numberOfDigits(int num) {
  int a = 0;
  while (num != 0) {
    a++;
    num = (num / 10).floor();
  }
  print(a);
}