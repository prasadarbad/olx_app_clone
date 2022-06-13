import 'package:flutter/material.dart';
import 'package:olx_app_clone/practice/adssubwidget.dart';

class Ads extends StatefulWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(5.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 4 / 5),
      itemCount: 10,
      itemBuilder: (context, index) {
        return AdsSub();
        // Container(
        //     color: Colors.blue, child: Image.asset('assets/icons/car.png'));
      },
    );
  }
}
