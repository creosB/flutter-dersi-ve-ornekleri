List<String> isimlistesi = [
  "ahmet"
  "baris"
  "mehmet"
];
//anahtar deger ve normal deger string olacak.
//generic tip koruması sağlarlar.
Map<String, String> ahmet = {
  "isim" : "ahmet"
};
// yeni sınıf oluşturmak
abstract class Madde {
// abstract method (gövdesi oldmayan method - soyut method)
  kutleGetir();
  hacimGetir();

  bool renklimi(g_deger) {
    return g_deger;
  }
}
// extends ettiğimiz class'ın abstract (soyut) olmayan methodlarını override etmek zorunda değiliz.
// implements ettiğimiz zaman bütün metodları override etmemiz gerekir.
class Esya implements Madde { 
  String marka;
  static num esyasayisi = 0;

  Esya(String g_marka){
    this.marka = g_marka;
    esyasayisi++;
    print("$marka markasıyla esya oluşturuldu.Esya sayisi $esyasayisi oldu.");
  }

  @override //yeniden yazma
  hacimGetir() {
    print("esyanın hacmi");
  }

  @override
  kutleGetir() {
    print("esyanın kütlesi");
  }
  bool renklimi(g_deger){
    return true;
  }
}
// extends kapının bir esya olduğunu söyler.
class Kapi extends Esya {
  String renk;
  int uretimyili;
  String malzeme;

  Kapi(String g_marka) : super (g_marka); //super demek üst sınıfn methodunu kullanmak demek.

  kapiAc(){
    print("kapı açıldı.");
  }
  kapiKapa(){
    print("kapı kapatıldı");
  }
}
class Pencere extends Esya {

    String malzeme;
    num boyut;
// yapıcı method
//kısa yoldan yapıcı method Pencere(this.malzeme, this.boyut);
  Pencere(this.malzeme, this.boyut, String m) : super(m);
// isimlendirilmiş method
  Pencere.olustur() : super(''){
    this.malzeme = "tahta";
    marka = "baris markasi";
  }
//getter and setter oku ve yaz
  String getMalzeme(){
    return malzeme;
  }
  num getBoyut(){
    return boyut;
  }
  setMalzeme(g_malzeme){
    this.malzeme = g_malzeme;
  }
  setBoyut(g_boyut){
    this.malzeme = g_boyut;
  }
// getter ve setter kısa yol
String kGetMalzeme() => malzeme;
num kGetBoyut() => boyut;
String kSetMalzeme(g_malzeme) => this.malzeme = g_malzeme;
num kSetBoyut(g_boyut) => this.malzeme = g_boyut;
}
main(){
nesnegiris();
Pencere mutfakpenceresi = Pencere("PVC",15,"");
Pencere banyopenceresi = Pencere("tahta ", 15, "pimapen");
Pencere salonpenceresi = Pencere.olustur();
mutfakpenceresi.marka = "baris markası";
banyopenceresi.marka = "baris pen";

List <Pencere> pencereler = [mutfakpenceresi, banyopenceresi, salonpenceresi];
print("generic kullanarak oluşturduğumuz pencerenin malzemesi " + pencereler[0].malzeme);

print("mutfak pencere malzemesi " + mutfakpenceresi.malzeme + " boyutu " + mutfakpenceresi.boyut.toString());
print(banyopenceresi.malzeme);
print("salon pencere malzemesi " + salonpenceresi.getMalzeme());
salonpenceresi.setMalzeme("PVC");
print("salon pencere malzemesi " + salonpenceresi.getMalzeme());

}

void nesnegiris(){
  // kapı sınıfından yeni nesne oluşturmak Not: new yazısına gerek yok.
  Kapi giriskapisi = new Kapi("baris kapisi");
  giriskapisi.renk = "kahverengi";
  giriskapisi.uretimyili = 2005;
  giriskapisi.malzeme = "çelik";

  print("giriş kapısı rengi " + giriskapisi.renk);
  print("giriş kapısı rengi " + giriskapisi.uretimyili.toString());
  print("giriş kapısı rengi " + giriskapisi.malzeme);

  giriskapisi.kapiAc();
  giriskapisi.kapiKapa();
}