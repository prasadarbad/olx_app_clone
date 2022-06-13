import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CarFormProvider with ChangeNotifier {
  File? carimage;
  String? imageurl;
  String? title;
  String? price;
  bool? isNegotiable;
  bool? availableforexchange;
  String? address;
  String? description;
  String? brand;
  String? transmission;
  bool? insuarance;
  String? distance;
  String? fuel;
  String? url;

  CarFormProvider({
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
    this.carimage,
    this.imageurl,
  });
  Future uploadimage() async {
    final file = File(carimage!.path);
    String fileName = file.path.split('/').last;
    final path = 'carimagesadvertise/$fileName';

    final ref = FirebaseStorage.instance.ref().child(path);
    UploadTask? uploadTask = ref.putFile(file);
    await uploadTask.whenComplete(() async {
      imageurl = await uploadTask.snapshot.ref.getDownloadURL();

      validation();
    });
  }
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
  }

  // void getUrl(String value) {
  //   url = value;
  //   print(url);
  //   notifyListeners();
  // }

  void validation() {
    if (imageurl == null) {
      return;
    } else if (title == null) {
      return;
    } else if (price == null) {
      return;
    } else if (address == null) {
      return;
    } else if (description == null) {
      return;
    } else if (brand == null) {
      return;
    } else if (transmission == null) {
      return;
    } else if (distance == null) {
      return;
    } else if (fuel == null) {
      return;
    } else {
      insertdata();
    }
  }

  void insertdata() {
    var db = FirebaseFirestore.instance.collection("cars");
    Map<String, dynamic> ourData = {
      "imageurl": imageurl,
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
    };
    db.doc().set(ourData).whenComplete(() {});
  }
}
