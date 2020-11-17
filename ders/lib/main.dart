

main() {
// fonk. cağırma
degiskenler();
print('yazi yazılacak: ' + yaziyazmak());
uretmeyen();
kisaFonk();
kendinitanit("baris");
toplamak(10, 5);
dongu();
ustFonsiyon("baris");
// if else
int kosul = 3;
if(kosul == 3){
  print("koşul sağlandı");
}
else{
  print("koşul sağlanamadı");
}
//if else kısa yazımı
var ifkisa = 0;
ifkisa == 0 ? print("sayı sıfıra eşittir.") : print("sayı sıfıra eşit değildir.");
// for döngüsü
 for (var i = 1; i <= 5; i = i+1){
    print("sayi $i değerini aldı");
 } 
// while döngüsü
  List yeniliste = [
    "ahmet",
    "mehmet",
    "veli",
    "hasan"
  ];
  var yenisayi = 0;
  while(yenisayi < yeniliste.length){
    print("isimler " + yeniliste[yenisayi]);
    yenisayi = yenisayi+1;
// break (döngüyü durdurur) continue(döngüyü durdurup başka bir döngü başlatır)
    if(yenisayi == 3){
      break;
    }
  }
// switch (yakalama) case(durum) devami altta
List yakala = ["ahmet","veli","ali","baris"];
switchdongu(yakala[0]);
//exception
//switchdongu(1);
}
// iç içe fonksiyonlar
ustFonsiyon(String ilk_deger){
  int ilk_sayi = 15;
  print(ilk_deger);

  ikinciFonksiyon(String ikinci_deger){
    int ikinci_sayi = 9;
    print(ikinci_deger);
    print(ilk_sayi);

    sonFonksiyon(){
      print("Merhaba $ilk_deger $ilk_sayi ve $ikinci_deger $ikinci_sayi");
    }
    sonFonksiyon();
  }
  ikinciFonksiyon("Ahmet");
}
// foreach elemanları yazdırmak
void dongu(){
  List liste = const ["ahmet", " mehmet", "can"];
  liste.forEach((element) => print("merhaba $element"));
}
/* isteğe bağlı değerler Not: köşeli parantezler içine yazılır []
ve varsayılan değer (default) eşittir = ile değer ataması yapılıyor. 
*/
toplamak(num x, [num y = 6]){
  print(x + y);
}
// fonksiyonlara deger gönderme işlemi
kendinitanit(deger){
  print("ben " "$deger " "memnun oldum");
}

// kisa fonksiyon tanımlamak (direkt işlem yaptırıyoruz)
kisaFonk() => print("kisa fonksiyon tanımlandı");

// deger döndüren (üreten) fonksiyonlar
String yaziyazmak(){
  var yaziyazmak = "yazi yazildi";

  return yaziyazmak;
}
// deger döndermeyen fonksiyon (üretmeyen)
void uretmeyen(){
  print(8 - 5);
}

ozelfonksiyon(int gelceksayi){
  print("girilen sayi $gelceksayi");
}
// fonk tanımlama
Function degiskenler(){
    //varriables değişkenler
  var sayimiz = 42;

  print(4 + 7 /* 9 */);
  ozelfonksiyon(sayimiz);

  /* birden fazla satır için  geçerli
  print('merhaba');

  */
  print('bu satır görülecek');

  // dynamic bu değişkenin türünü de değiştirebiliriz.
  dynamic degisken = 45;
  print(degisken);

  degisken = "kırk beş";
  print(degisken);

  // const sabit değişken
  const sabit = "bu değişken bir daha değiştirilemez";
  print(sabit);

  // final derlendikten sonra bir daha değişmez
  final sonhal = "bu değişken sonradan değişmez";
  print(sonhal);

  //number sayılar

  int deste = 5;
  double pi = 5.2;
  var yazi = "12";
  print(deste + pi + int.parse(yazi));

  //string yazı
  String bucumle = "yazi";
  String ikincicumle = 'tek tirnak "yaz".....';

  print("$bucumle $ikincicumle $deste");
  var coksatir = """cok satirli
  yazi yazdirmak""";

  //boolen true-false  doğru-yanlış
  bool acik = true;
  print(acik);

  print(sayimiz.isNaN);

  //Lists - listeler
  List siniflistesi = ["ali","mehmet"];
  print(siniflistesi);

  List<int> notlar = [43,55,66];
  print(notlar);
  print(notlar[0]);

  notlar[0] = 99;
  print(notlar[0]);

  //maps haritalanmış değişkenler
  var aile = {'anne':'leyla','kardeş':'alperen'};
  print(aile['anne']);

  Map baris = new Map();
  baris['baba'] = "ozcan";
  print(baris['baba']);

  //Runes emoji
  Runes input = new Runes(
    '\u2665' '\u{1f605}' '\u{1f60e}' '\u{1f47b}' '\u{1f44d}');
    print(new String.fromCharCodes(input));
}
// switch case
switchdongu(String isim){
  switch(isim){
    case "ahmet":
    print("merhaba ahmet");
    break;
    case "veli":
    print("merhaba veli");
    break;
    case "baris":
    print("merhaba baris");
    break;
    default:
    print("yanlış isim girildi");
    break;
  }
 // throw hataolustu("yazi girilmedi"); exception
}
// hataolustu(h) => print(h); exception
