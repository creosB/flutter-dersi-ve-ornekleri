import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
/*merhaba flutter
    return new Center(
      child: new Text("merhaba flutter", 
      textDirection: TextDirection.ltr,)
    );
*/
    return Scaffold(
      appBar: AppBar(
        title: Text("HELLO"),
      ),
      body: Container(
        color: Colors.green,
        alignment:
            Alignment.center, // içerideki öğeleri nereye yerleşeceğini belirler
// bir öğenin bir üst öğeinden uzaklığı margin
        child: new Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(20.0),
// padding içerideki diğer container'ı iter
          padding: EdgeInsets.all(15.0),
          color: Colors.cyan,
          child: new Container(
            alignment: Alignment.center,
            color: Colors.brown,
/*
          child: new Text("merhaba flutter", textDirection: TextDirection.ltr)
*/
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              verticalDirection: VerticalDirection.down,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                new Container(
                  alignment: Alignment.bottomCenter,
                  color: Colors.blue.shade400,
                  margin: EdgeInsets.all(5.0),
                  child: new Text("merhaba", textDirection: TextDirection.ltr),
                ),
                new Container(
                  color: Colors.blue.shade400,
                  margin: EdgeInsets.all(5.0),
                  child: new Text("merhaba", textDirection: TextDirection.ltr),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
