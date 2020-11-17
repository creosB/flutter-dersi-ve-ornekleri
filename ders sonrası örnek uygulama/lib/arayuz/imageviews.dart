import 'package:flutter/material.dart';

class ImageViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageView Kullanımı"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
// FadeInImage resim yüklenirken gif gelicek ardından resim gelecek
             FadeInImage.assetNetwork(
              placeholder: "assets/images/loading.gif",
              image: "https://wallpapersprinted.com/download/2/city_ruins-wallpaper-4800x1350.jpg",
            ),
            Text("Assets klasöründen resim kullanma",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            Image.asset("assets/images/manzara.jpg"),
            Text("İnternetten resim kullanma",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            Image.network(
                "https://storage.googleapis.com/material-design/publish/material_v_11/assets/0Bx4BSt6jniD7T0hfM01sSmRyTG8/layout_structure_regions_mobile.png"),
          ],
        ),
      ),
    );
  }
}
