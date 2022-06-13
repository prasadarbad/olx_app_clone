import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/car_form_provider.dart';

class AdvertisementItem extends StatefulWidget {
  const AdvertisementItem({Key? key}) : super(key: key);

  @override
  State<AdvertisementItem> createState() => _AdvertisementItemState();
}

class _AdvertisementItemState extends State<AdvertisementItem> {
  @override
  Widget build(BuildContext contex) {
    return SingleChildScrollView(
      child: GridTile(
          child: Container(
        child: Column(
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
              height: 200,
              width: double.infinity,
            ),
            //   Text(data['title']),
            const SizedBox(
              height: 50,
            ),
            const Text('price'),
          ],
        ),
      )),
    );
  }
}
