import 'package:flutter/material.dart';

class AdvertisementItem extends StatelessWidget {
  const AdvertisementItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            const Text('This is title'),
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
