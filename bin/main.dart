class Hesapla{
  double sayi1, sayi2;
  double sonuc=0;
  Hesapla(this.sayi1,this.sayi2);

     double operator + (Hesapla Toplama)  {
      sonuc=sonuc+ Toplama.sonuc;
      return sonuc;
    }

    double operator - (Hesapla Cikarma)  {
      sonuc=sonuc- Cikarma.sonuc;
      return sonuc;
    }
    
    double operator * (Hesapla Carpma)  {
      sonuc=sonuc+ Carpma.sonuc;
      return sonuc;
    }
    
    double operator / (Hesapla Bolme)  {
      sonuc=sonuc+ Bolme.sonuc;
      return sonuc;
    }

    double Toplama (){
      return sonuc+=sayi1+sayi2;
    }

    double Cikarma (){
      return sonuc+=sayi1-sayi2;
    }

    double Bolme (){
      return sonuc+=sayi1/sayi2;
    }

    double Carpma (){
      return sonuc+=sayi1*sayi2;
    }

}

void main() {
  var hesapla=Hesapla(15,9);
  hesapla.Toplama();
  print(hesapla.sayi1.toString() + ' + ' + hesapla.sayi2.toString() + ' = '+ hesapla.sonuc.toString());

  var hesapla2=Hesapla(17,10);
  hesapla2.Cikarma();
  print(hesapla2.sayi1.toString() + ' - ' + hesapla2.sayi2.toString() + ' = '+ hesapla2.sonuc.toString());

//Overloading 
  print(hesapla.sonuc.toString()+' - '+hesapla2.sonuc.toString()+' = '+(hesapla.sonuc-hesapla2.sonuc).toString());
  print(hesapla.sonuc.toString()+' + '+hesapla2.sonuc.toString()+' = '+(hesapla.sonuc+hesapla2.sonuc).toString());

  
}