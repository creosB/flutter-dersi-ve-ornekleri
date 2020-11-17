import 'package:borsa/models/product.dart';
import 'package:flutter/material.dart';
import 'package:borsa/data/dbHelper.dart';

class ProductDetail extends StatefulWidget {
  Product product;
  ProductDetail(this.product);

  @override
  State<StatefulWidget> createState() {
    return _ProductDetailState(product);
  }
}

enum Options { delete, update }

class _ProductDetailState extends State {
  Product product;
  _ProductDetailState(this.product);
  var dbHelper = DbHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ürün Detayı: ${product.name}"),
        actions: <Widgets>[
          PopupMenuButton<Options>(
            onSelected: selectProcess,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
              PopupMenuItem<Options>(
                value: Options.delete,
                child: Text("Sil"),
              ),
              PopupMenuItem<Options>(
                value: Options.update,
                child: Text("Değiştir"),
              ),
            ],
          )
        ],
      ),
      body: buildProductDetail(),
    );
  }

  buildProductDetail() {}

  selectProcess(Options options) async {
    switch (Options) {
      case Options.delete:
        await dbHelper.delete(product.id);
        Navigator.pop(context, true);
        break;
      default:
    }
  }
}
