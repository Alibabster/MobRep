void task3(){
  var spisok = ["dart", "abc", "good luck"];
  int dlina = spisok.length;
  var cifSpisok = new List();

  var slovo = '';
  int posiciya = 1;

  for(int i=0; i<dlina; i++){
    int itogo = 0;
    slovo = spisok[i];
    int dlinaa = slovo.length;
    slovo.codeUnitAt(0);
    slovo.codeUnits;
    for(int j=0; j<dlinaa; j++){
      if (slovo[j] == 'a')
      {itogo+=1;}

      else if (slovo[j] == 'b')
      {itogo+=2;}

      else if (slovo[j] == 'c')
      {itogo+=3;}

      else if (slovo[j] == 'd')
      {itogo+=4;}

      else if (slovo[j] == 'e')
      {itogo+=5;}

      else if (slovo[j] == 'f')
      {itogo+=6;}

      else if (slovo[j] == 'g')
      {itogo+=7;}

      else if (slovo[j] == 'h')
      {itogo+=8;}

      else if (slovo[j] == 'i')
      {itogo+=9;}

      else if (slovo[j] == 'j')
      {itogo+=10;}

      else if (slovo[j] == 'k')
      {itogo+=11;}

      else if (slovo[j] == 'l')
      {itogo+=12;}

      else if (slovo[j] == 'm')
      {itogo+=13;}

      else if (slovo[j] == 'n')
      {itogo+=14;}

      else if (slovo[j] == 'o')
      {itogo+=15;}

      else if (slovo[j] == 'p')
      {itogo+=16;}

      else if (slovo[j] == 'q')
      {itogo+=17;}

      else if (slovo[j] == 'r')
      {itogo+=18;}

      else if (slovo[j] == 's')
      {itogo+=19;}

      else if (slovo[j] == 't')
      {itogo+=20;}

      else if (slovo[j] == 'u')
      {itogo+=21;}

      else if (slovo[j] == 'v')
      {itogo+=22;}

      else if (slovo[j] == 'w')
      {itogo+=23;}

      else if (slovo[j] == 'x')
      {itogo+=24;}

      else if (slovo[j] == 'y')
      {itogo+=25;}

      else if (slovo[j] == 'z')
      {itogo+=26;}

      else
      {itogo+=0;}
    }
    itogo *= posiciya;
    posiciya++;
    cifSpisok.add(itogo);
  }
  print(cifSpisok);
}