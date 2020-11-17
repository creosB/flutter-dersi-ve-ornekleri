import 'dart:convert';
import 'package:flutter/material.dart';

class LocalJson extends StatefulWidget {
  State<StatefulWidget> createState() => LocalState();

  }

class LocalState extends State<LocalJson>{
  List ogrenci;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Json Konusu"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString("assets/veriler/sinif.json"),
// snapshot yerine cevap yazdık yani Builder'ın alacağı cevap
            builder: (context, cevap){
// Cevabın içinde bir veri olacak onu alıp stringe çevirecek
              ogrenci = jsonDecode(cevap.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                   return Card(
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget> [
                       Text("Okul No: " + ogrenci[index]['okulno'].toString()),
                       Text("Adı: " + ogrenci[index]['adi'].toString()),
                       Text("Soyadı: " + ogrenci[index]['soyadi'].toString()),
                       Text("Cinsiyet: " + ogrenci[index]['cinsiyet'].toString()),
                       Text("Velisi: " + ogrenci[index]['veli']['yakinlik'].toString()),
                     ],
                    ),
                  );
                },
                itemCount: ogrenci == null ? 0 : ogrenci.length,
                );
            },
          ),
        ),
      ),
      );
  }
}