import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SharedKullanimi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SharedState();
}

class SharedState extends State<SharedKullanimi> {
  final isimkontrol = TextEditingController();
  final soyisimkontrol = TextEditingController();
  final genelkontrol = GlobalKey<FormState>();

  String isim = "";
  String soyisim = "";
  bool kayitdurum = false;
  int kayitnumara = 0;

  void dispose() {
    isimkontrol.dispose();
    soyisimkontrol.dispose();
    super.dispose();
  }

  void kayitYap(String gisim, String gsoyisim) async {
    final kayitAraci = await SharedPreferences.getInstance();

    if (genelkontrol.currentState.validate()) {
      kayitAraci.setBool("durum", true);
      kayitAraci.setInt("kayıtno", 1);
      kayitAraci.setString("isim", gisim);
      kayitAraci.setString("soyisim", gsoyisim);

    }
  }

  void kayitGoster() async{
    final kayitAraci = await SharedPreferences.getInstance();

    bool kDurum = kayitAraci.getBool("durum");
    int kNo = kayitAraci.getInt("kayıtno");
    String kIsim = kayitAraci.getString("isim");
    String ksoyIsim = kayitAraci.getString("soyisim");

    setState(() {
      isim = kIsim;
      kayitdurum = kDurum;
      kayitnumara = kNo;
      soyisim = ksoyIsim;
    });
  }
  void kayitSil() async {
  final kayitAraci = await SharedPreferences.getInstance();

  kayitAraci.remove("isim");
  kayitAraci.remove("soyisim");
  kayitAraci.remove("kayıtno");
  kayitAraci.remove("kayıtdurum");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Kullanımı"),
      ),
      body: Form(
        key: genelkontrol,
        child: Padding(
          padding: EdgeInsets.all(20.0),
// Coulmn alt alta dizer
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
// Yazılan değeri kontrol et
              TextFormField(
                validator: (deger) {
// yazılan isim 2 den kısa ise kabul etmeyecek
                  if (deger.length < 2) {
                    return "Lütfen isminizi yazın";
                  }
                },
                controller: isimkontrol,
// ismi girmeden önce yer alan deger
                decoration: InputDecoration(hintText: "İsminizi girin"),
              ),
              TextFormField(
                validator: (deger) {
                  if (deger.length < 2) {
                    return "Lütfen soyisminizi yazın";
                  }
                },
                controller: soyisimkontrol,
                decoration: InputDecoration(hintText: "Soyisminizi girin"),
              ),
// Row yan yana dizer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.blue.shade200,
                        child: Text("kaydet",
                            style: TextStyle(color: Colors.redAccent.shade50)),
                        onPressed: () => kayitYap(isimkontrol.text, soyisimkontrol.text),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.green.shade200,
                        child: Text("getir",
                            style: TextStyle(color: Colors.redAccent.shade50)),
                        onPressed: () => kayitGoster(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.yellow.shade200,
                        child: Text("sil",
                            style: TextStyle(color: Colors.redAccent.shade50)),
                        onPressed: () => kayitSil(),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("İsim: $isim"),
                          Text("Soyisim: $soyisim"),
                          Text("Kayıt Durumu:  $kayitdurum"),
                          Text("Kayıt Numarası: $kayitnumara "),
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
