import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// dosyanın yolunu belirledik
class KayitIslemleri {
//Future bu işlem daha sonra olacak anlamına geliyor yani bekle ve yap
  Future<String> get dosyaYolu async {
    final konum = await getApplicationDocumentsDirectory();
    return konum.path;
  }

//dosyayı oluşturduk
  Future<File> get yereldosya async {
    final yol = await dosyaYolu;
    return File("$yol/yenidosya.txt");
  }

// dosyayı okuma işlemi
  Future<String> dosyaOku() async {
    try {
      final dosya = await yereldosya;
      String icerik = await dosya.readAsString();
      return icerik;
    } catch (h) {
      return "dosya bulunamadı: $h";
    }
  }

// Dosyaya yazma işlemi
  Future<File> dosyaYaz(String gicerik) async {
    final dosya = await yereldosya;
    return dosya.writeAsString("$gicerik");
  }
}

class DosyaIslemleri extends StatefulWidget {
  final KayitIslemleri kayitislemi;
  DosyaIslemleri({Key key, this.kayitislemi}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DosyaState();
}

class DosyaState extends State<DosyaIslemleri> {
  final yazikontrol = TextEditingController();
  String veri = "";
  Future<File> verikaydet() async {
    setState(() {
      veri = yazikontrol.text;
    });
    return widget.kayitislemi.dosyaYaz(veri);
  }

// initState uygulama açılırken oluşmasını istediğimiz işlemler
  void initState() {
    super.initState();
    
  }

  void dosyaOku() {
    widget.kayitislemi.dosyaOku().then((String deger) {
      setState(() {
        veri = deger;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dosya İşlemleri"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Dosyaya yazmak istediğiniz metini girin",
            ),
            controller: yazikontrol,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Colors.blueAccent.shade50,
                  onPressed: verikaydet,
                  child: Text(
                    "Yazıyı kaydet",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Colors.greenAccent.shade50,
                  onPressed: dosyaOku,
                  child: Text(
                    "Yazıyı oku",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("$veri"),
              ),
              ),
        ],
      ),
    );
  }
}
