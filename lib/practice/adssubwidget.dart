import 'package:flutter/material.dart';

//https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'
class AdsSub extends StatelessWidget {
  const AdsSub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/Iron-Man-HD-Background.jpg',
                  fit: BoxFit.contain,
                ),
                const Positioned(
                  top: 4.0,
                  left: 4.0,
                  child: Text(
                    'Time',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Positioned(
                    top: 1.0,
                    right: 4.0,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        ))),
              ],
            ),
            const Text('Title'),
            const Text('Price'),
            const Text('Posted by'),
            const Text('Location')
          ],
        ),
      ),
    );
  }
}
