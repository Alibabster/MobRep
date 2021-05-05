void printMiddleNumber(int a, int b, int c){
  if ((a > b && a < c)
  || (a > c && a < b)){
    print(a);
  }
  else if((b > a && b < c)
  || (b > c && b < a)){
    print(b);
  }
  else if((c > b && c < b)
  || (c > b && c < a)){
    print(c);
  }
  else{
    print(a);
  }
}