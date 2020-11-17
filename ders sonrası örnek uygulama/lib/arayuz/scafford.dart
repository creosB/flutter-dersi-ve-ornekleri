import 'package:flutter/material.dart';

class ScallfoldOgesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//  var center = TextAlign.center;
    return new Scaffold(
      backgroundColor: Colors.tealAccent.shade100,
// Üst menu
      appBar: new AppBar(
        title: Text('My fancy dress '),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: () => Navigator.pushNamed(context, "/ilksayfa"),
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'restich it',
            onPressed: () => print("Restich it"),
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_check),
            tooltip: 'Repair it',
            onPressed: () => print("Repair it"),
          ),
        ],
      ),
      body: new Center(
        child: GridView.count(
          primary: false,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
// GestureDetector tuş ile etkileşim sağlamak
            new GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/imageviews"),
              child: Card(
                child: Container(
// NetworkImage Arka plana resim eklemek
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://storage.googleapis.com/material-design/publish/material_v_11/assets/0Bx4BSt6jniD7T0hfM01sSmRyTG8/layout_structure_regions_mobile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    child: Transform(
                      alignment: Alignment.bottomCenter,
                      transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(8.0),
                        color: Color(0xCDFFFFFF),
                        child: new Text(
                          "Tek tıkalama \n ImageViews sayfasına git",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
              ),
            ),
            new GestureDetector(
              onDoubleTap: () => Navigator.pushNamed(context, "/hello"),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/manzara.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Çift Tıkalama \n Hello sayfasına git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
                onLongPress: () =>
                    Navigator.pushNamed(context, "/degisenwidget"),
                child: Card(
                  child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://media.geeksforgeeks.org/wp-content/uploads/Toast.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      child: Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8.0),
                          color: Color(0xCDFFFFFF),
                          child: new Text(
                            "Uzun Basma \n DegienWidget sayfasına git",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                )),
            new GestureDetector(
                onLongPress: () => Navigator.pushNamed(context, "/alertview"),
                child: Card(
                  child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://media.geeksforgeeks.org/wp-content/uploads/Toast.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      child: Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8.0),
                          color: Color(0xCDFFFFFF),
                          child: new Text(
                            "Uzun Basma \n AletView sayfasına git",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                )),
            new GestureDetector(
                onLongPress: () =>
                    Navigator.pushNamed(context, "/sharedkullanimi"),
                child: Card(
                  child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://media.geeksforgeeks.org/wp-content/uploads/Toast.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      child: Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8.0),
                          color: Color(0xCDFFFFFF),
                          child: new Text(
                            "Uzun Basma \n Shared sayfasına git",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                )),
            new GestureDetector(
                onLongPress: () => Navigator.pushNamed(context, "/dosyakonusu"),
                child: Card(
                  child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://media.geeksforgeeks.org/wp-content/uploads/Toast.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      child: Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8.0),
                          color: Color(0xCDFFFFFF),
                          child: new Text(
                            "Uzun Basma \n Dosya sayfasına git",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                )),
            new GestureDetector(
              onDoubleTap: () => Navigator.pushNamed(context, "/jsonkonusu"),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/manzara.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Çift Tıkalama \n Json sayfasına git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onDoubleTap: () => Navigator.pushNamed(context, "/localjson"),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/manzara.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Çift Tıkalama \n LocalJson sayfasına git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onDoubleTap: () => Navigator.pushNamed(context, "/basithttp"),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/manzara.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.0),
                      color: Color(0xCDFFFFFF),
                      child: new Text(
                        "Çift Tıkalama \n Http sayfasına git",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
                child: Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.blue.shade300,
              alignment: Alignment.center,
              child: const Text("Grid öğesi"),
            )),
            new GestureDetector(
                child: Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.blue.shade300,
              alignment: Alignment.center,
              child: const Text("Grid öğesi"),
            )),
            new GestureDetector(
                child: Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.blue.shade300,
              alignment: Alignment.center,
              child: const Text("Grid öğesi"),
            )),
            new GestureDetector(
                child: Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.blue.shade300,
              alignment: Alignment.center,
              child: const Text("Grid öğesi"),
            )),
            new GestureDetector(
                child: Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.blue.shade300,
              alignment: Alignment.center,
              child: const Text("Grid öğesi"),
            )),
            new GestureDetector(
                child: Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.blue.shade300,
              alignment: Alignment.center,
              child: const Text("Grid öğesi"),
            )),
            new GestureDetector(
                child: Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.blue.shade300,
              alignment: Alignment.center,
              child: const Text("Grid öğesi"),
            )),
          ],
        ),
        // child: new Text("merhaba scaffold", textDirection: TextDirection.ltr)
      ), //
// Alt menu
      bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.radio),
                title: new Text("Radyo", textDirection: TextDirection.ltr)),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.account_balance),
                title: new Text("Balance", textDirection: TextDirection.ltr)),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.access_alarm),
              title: new Text("Alarm", textDirection: TextDirection.ltr),
            ),
          ],
          onTap: (int i) {
            switch (i) {
              case 0:
                debugPrint("tıkladığınız buton Radyo");
                break;
              case 1:
                debugPrint("tıkladığınız buton balance");
                break;
              case 2:
                debugPrint("tıkladığınız buton alarm");
                break;
              default:
                debugPrint("tıkladığınız butonun ismi bulunamadı");
                break;
            }
          }),
// Yan menu
      drawer: new Drawer(
          child: new ListTile(
        leading: Icon(Icons.change_history),
        title: Text('Change history'),
        onTap: () {
          Navigator.pop(context);
          debugPrint("yan menu ifadesine tıkladınız.");
        },
      )),
    );
  }
}
