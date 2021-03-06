import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:olx_app_clone/practice/ads.dart';
import 'package:olx_app_clone/practice/adssubwidget.dart';
import 'package:olx_app_clone/widgets/exgridview.dart';
import 'package:olx_app_clone/widgets/advertisements.dart';
import 'package:olx_app_clone/widgets/bottomnavbar.dart';

import 'package:olx_app_clone/widgets/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          alignment: Alignment.center,
          width: 300,
          height: 40,
          color: Colors.white,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                alignLabelWithHint: true,
                hintText: 'Search in Leooffer',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.black,
          ),
          Icon(
            Icons.notification_add,
            color: Colors.black,
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            ImageSlider(),
            SizedBox(
              height: 20,
            ),
            Exgridview(),
            SizedBox(
              height: 10,
            ),
            Ads(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
