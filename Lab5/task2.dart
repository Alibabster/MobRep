void task2() {
  String valu = 'dart';
  int valuu = 15;
  var spisok = new List();
  spisok = [60, 999, 14, "dart1", 45, 95, "dart", 1];
  bool a = false;

  for(int i=0; i<spisok.length; i++){
    if(spisok[i] == valu){
      a = true;
    }
  }
  print(a);

  a = false;

  for(int i=0; i<spisok.length; i++){
    if(spisok[i] == valuu){
      a = true;
    }
  }
  print(a);
}