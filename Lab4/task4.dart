void evenOdd(int num) {
  int even = 0, odd = 0;
  while (num != 0) {
    if ((num % 10) % 2 == 0){
      even++;
    }
    else {
      odd++;
    }
    num = (num / 10).floor();
  }
  print("Even: $even    Odd: $odd");
}