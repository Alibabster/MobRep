void century(int year){
  if (year % 100 == 0) {
    year = (year / 100).floor();
    print("$year'th century");
  }
  else {
    year = (year / 100).floor() + 1;
    print("$year'th century");
  }
}