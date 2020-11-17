import 'package:flutter/material.dart';
//import 'package:ilk/arayuz/ilksayfa.dart';

class DegisenWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyPageState();

}

class MyPageState extends State<DegisenWidget>{
  int degisensayi = 0;

  void sayiyiArttir(){
    setState(() {
      degisensayi++;
    });
  }
  void sayiyiAzalt(){
    setState(() {
      degisensayi--;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful - Stateless Farkı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.greenAccent.shade400,
              child: Text("Sayıyı arttır"),
              onPressed: sayiyiArttir,
            ),
            Text("değişen sayı $degisensayi", textDirection: TextDirection.ltr,style: TextStyle(
              fontSize: 20.0,
              color: degisensayi <0 ? Colors.red: Colors.blue.shade300,
            ),),
            FlatButton(
              color: Colors.limeAccent.shade700,
              child: Text("Sayıyı azalt"),
              onPressed: sayiyiAzalt,
            ),
          ],
      ),
      ),
    );
  }

}