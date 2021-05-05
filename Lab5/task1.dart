void task1(){
  var spisok = new List();
  spisok.add("Alibi");
  spisok.add("Aldiyar");
  spisok.add("Kamilla");
  spisok.add("Sihophazatron");
  spisok.add("Zero");
  int dlina = 0;
  for(int i=0; i<5; i++){
    if(spisok[i].length > dlina){
      dlina = spisok[i].length;
    }
  }
  for(int i=0; i<5; i++){
    if(spisok[i].length == dlina){
      print(spisok[i]);
    }
  }
}