import 'package:flutter/material.dart';
import 'package:olx_app_clone/subwidgets/advexample.dart';
import '../subwidgets/advertisement_item.dart';

class Advertisements extends StatefulWidget {
  const Advertisements({Key? key}) : super(key: key);

  @override
  State<Advertisements> createState() => _AdvertisementsState();
}

class _AdvertisementsState extends State<Advertisements> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) => UserInformation());
  }
}
