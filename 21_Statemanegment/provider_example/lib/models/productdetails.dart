import 'package:flutter/material.dart';

class ProductDetailsModel extends ChangeNotifier {
  String url;
  String name;
  double price;
  bool isFavarate;
  int contity;

  ProductDetailsModel({
    required this.url,
    required this.name,
    required this.price,
    required this.isFavarate,
    required this.contity,
  });

  void increaseContity() {
    contity++;
    notifyListeners();
  }

  void decreaseContity() {
    if (contity > 0) {
      contity--;
      notifyListeners();
    }
  }
}

class ProductList extends ChangeNotifier {
  List productlist;

  ProductList({required this.productlist});

  void addProduct({required ProductDetailsModel productDetailsModel}) {
    productlist.add(productDetailsModel);
  }
}
