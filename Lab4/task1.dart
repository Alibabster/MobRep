void ushPenBes(){
  for (int i = 1; i < 101; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("ushpen bes");
    }
    else if (i % 3 == 0) {
      print("ush");
    }
    else if (i % 5 == 0) {
      print("bes");
    }
    else {
      print(i);
    }
  }
}