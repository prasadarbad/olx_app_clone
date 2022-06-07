import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CarFormProvider with ChangeNotifier {
  // File? carimage;
  String title;
  String price = '';
  bool isNegotiable = false;
  bool availableforexchange = false;
  String address = '';
  String description = '';
  String brand = '';
  String transmission = '';
  bool insuarance = false;
  String distance = '';
  String fuel = '';
  String url = '';

  CarFormProvider(
    // this.carimage,
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
    this.fuel,
    this.url,
  );

  // void gettitle(String value) {
  //   title = value;

  //   print(title);
  //   notifyListeners();
  // }

  // void getprice(String value) {
  //   price = value;
  //   print(price);
  //   notifyListeners();
  // }

  // void isnegotiable(bool value) {
  //   isNegotiable = value;
  //   print(isNegotiable);
  //   notifyListeners();
  // }

  // void exchangebale(bool value) {
  //   availableforexchange = value;
  //   notifyListeners();
  //   print(availableforexchange);
  // }

  // void getaddress(String value) {
  //   address = value;
  // }

  // void getinformation(String value) {
  //   description = value;

  //   notifyListeners();
  // }

  // void getbrand(String value) {
  //   brand = value;
  //   print(brand);
  //   notifyListeners();
  // }

  void getTransmission(int value) {
    if (value == 0) {
      transmission = 'Manual';
    } else {
      transmission = 'Automatic';
    }
    notifyListeners();
  }

  // void getinsuarance(bool value) {
  //   insuarance = value;
  //   print(insuarance);
  //   notifyListeners();
  // }

  // void getdistance(String value) {
  //   distance = value;
  //   print(distance);
  //   notifyListeners();
  // }

  void getfueltype(int value) {
    if (value == 0) {
      fuel = 'Petrol';
    } else if (value == 1) {
      fuel = 'Disel';
    } else if (value == 2) {
      fuel = 'CNG';
    } else {
      fuel = 'Electric';
    }
    print(fuel);
  }

  // void getUrl(String value) {
  //   url = value;
  //   print(url);
  //   notifyListeners();
  // }

  printdata() {
    CarFormProvider carFormProvider;
  }

  void validation() {
    if (title == null) {
      print('fields empty');
      return;
    } else {
      print('else block');
    }
  }

  void insertdata() {
    var db = FirebaseFirestore.instance.collection("cars");
    db.add({
      "title": title,
      "price": price,
      "negotiable": isNegotiable,
      "exchangable": availableforexchange,
      "address": address,
      "description": description,
      "brand": brand,
      "transmission": transmission,
      "insuarance": insuarance,
      "distance": distance,
      "fuel": fuel,
      "url": url,
    }).then((value) {
      print('hello');
    });
  }
}
