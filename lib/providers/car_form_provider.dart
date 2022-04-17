import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CarFormProvider with ChangeNotifier {
  String title = '';
  String price = '';
  bool isNegotiable = false;
  bool availableforexchange = false;
  String address = '';
  String description = '';
  String brand = '';
  bool transmission = false;
  bool insuarance = false;
  String distance = '';
  String url = '';

  CarFormProvider(
    this.title,
    this.price,
    this.isNegotiable,
    this.availableforexchange,
    this.address,
    this.description,
    this.brand,
    this.transmission,
    this.insuarance,
    this.distance,
    this.url,
  );
  void gettitle(String value) {
    title = value;

    print(title);
    notifyListeners();
  }

  void getprice(String value) {
    price = value;
    print(price);
    notifyListeners();
  }

  void isnegotiable(bool value) {
    isNegotiable = value;
    print(isNegotiable);
  }

  void exchangebale(bool value) {
    availableforexchange = value;
    print(availableforexchange);
  }
}
