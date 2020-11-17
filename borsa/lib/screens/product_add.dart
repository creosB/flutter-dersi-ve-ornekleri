import 'package:borsa/models/product.dart';
import 'package:borsa/data/dbHelper.dart';
import 'package:flutter/material.dart';

class ProductAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductAddState();
  }
}

class ProductAddState extends State {
  var dbHelper = DbHelper();
  var txtName = TextEditingController();
  var txtDescription = TextEditingController();
  var txtUnitPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ürün Ekleme Sayfası"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            buildNameField(),
            buildDescriptionField(),
            buildUnitPriceField(),
            buildSaveButton()
          ],
        ),
      ),
    );
  }

  buildNameField() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün İsmi"),
      controller: txtName,
    );
  }

  buildUnitPriceField() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün Fiyatı"),
      controller: txtUnitPrice,
    );
  }

  buildSaveButton() {
    return FlatButton(
      child: Text("Ekle"),
      onPressed: () {
        addProduct();
      },
    );
  }

  buildDescriptionField() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün Açıklaması"),
      controller: txtDescription,
    );
  }

  void addProduct() async {
    bool result = await dbHelper.insert(Product(name: txtName.text,description: txtDescription.text,unitPrice: double.tryParse(txtUnitPrice.text)));
    Navigator.pop(context,true);
  }
}
