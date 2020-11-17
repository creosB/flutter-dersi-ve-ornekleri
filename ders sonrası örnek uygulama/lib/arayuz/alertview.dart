import 'package:flutter/material.dart';

class AlertView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AlertState();
    
  }
class AlertState extends State<AlertView> {

  final yazikontrol = TextEditingController();
  final genelkontrol = GlobalKey<FormState>();

  void dispose(){
    yazikontrol.dispose();
    super.dispose();
  }

  void selamla(){
    if(genelkontrol.currentState.validate()){
      showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text("Selamlama"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Merhaba ${yazikontrol.text}"),
              ],
            ),
          ),
           actions: <Widget>[
             FlatButton(onPressed: (){ Navigator.of(context).pop();}, child: Text("Tamam"))
           ],
        );
      }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField ve AlertView Kullanımı"),
      ),
      body: Form(
        key: genelkontrol,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (yazi){
                  if(yazi.isEmpty){
                    return "Boş Bırakmayın";
                  }
                },
                controller: yazikontrol,
                decoration: InputDecoration(
                  hintText: "İsminizi girin",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Colors.blue.shade300,
                  onPressed: selamla,
                  child: Text("Selamla", style: TextStyle(color: Colors.redAccent.shade400),),
                ),
              )
            ],
          ),
          ),
      ),
    );
    
  }

}