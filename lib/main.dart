import 'package:flutter/material.dart';
import 'package:olx_app_clone/screens/add_car_advertise.dart';
import 'package:olx_app_clone/screens/homepage.dart';
import 'package:olx_app_clone/widgets/bottomnavbar.dart';
import 'package:olx_app_clone/widgets/iconsgrid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.amber,
      ),
      home: const AddCarAdvertisement(),
    );
  }
}
