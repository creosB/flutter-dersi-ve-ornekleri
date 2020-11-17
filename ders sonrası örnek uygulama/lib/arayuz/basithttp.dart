import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BasitHttp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HttpState();
}

class HttpState extends State<BasitHttp> {

  var veri = "";
  getIslemiYap(){
    http.get("http://trflutter.com/").then((cevap) {
      print(cevap.statusCode);
      print(cevap.body.length);
      setState(() {
        veri = cevap.body;
      });
    });
  }
  postIslemiYap(){
    http.post("https://jsonplaceholder.typicode.com/posts", body: {
      "title: ": "uygulamadan geldi", 
      "body":"sunucudan gelen cevap" ,
      "userId": "4",
      "id": "134534534", 
      }).then((cevap) {
        print(cevap.statusCode);
        print(cevap.body.length);
        setState(() {
          veri = cevap.body;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit Http"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  color: Colors.amber.shade400,
                  child: Text("GET"),
                  onPressed: getIslemiYap,
                ),
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.tealAccent.shade400,
                  child: Text("POST"),
                  onPressed: postIslemiYap,
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Text("Gelen veri: \n $veri"),
                ],
              ),
              ),
            ),
        ],
      ),
    );
  }
}
