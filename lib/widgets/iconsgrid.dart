import 'dart:ui';

import 'package:flutter/material.dart';

class IconsGridView extends StatefulWidget {
  const IconsGridView({Key? key}) : super(key: key);

  @override
  State<IconsGridView> createState() => _IconsGridViewState();
}

class _IconsGridViewState extends State<IconsGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView(
        shrinkWrap: false,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 4.0,
          maxCrossAxisExtent: 100.0,
          childAspectRatio: 1.0,
        ),
        children: <Widget>[
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/icons/car.png',
                    height: 65,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Cars',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/icons/apartment.png',
                    height: 65,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Real Estate',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/icons/smartphone.png',
                    height: 65,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Smartphone',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/icons/wardrobe.png',
                    height: 65,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Fashion',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/icons/cosmetics.png',
                    height: 65,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Health&beauty',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/icons/sport.png',
                    height: 65,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Sports',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/icons/books.png',
                    height: 65,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Books',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: Center(
                  child: Image.asset(
                    'assets/icons/sofa.png',
                    height: 65,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Furniture',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
