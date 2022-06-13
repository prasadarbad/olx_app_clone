import 'package:flutter/material.dart';
import 'package:olx_app_clone/subwidgets/exgridtile.dart';

class Exgridview extends StatefulWidget {
  const Exgridview({Key? key}) : super(key: key);

  @override
  State<Exgridview> createState() => _ExgridviewState();
}

class _ExgridviewState extends State<Exgridview> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        childAspectRatio: 4 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(choices.length, (index) {
          return ExGridTile(choice: choices[index]);
        }));
  }
}

class Choice {
  const Choice({this.title, this.path});
  final String? title;
  final String? path;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Cars', path: 'assets/icons/car.png'),
  Choice(title: 'Real Estate', path: 'assets/icons/apartment.png'),
  Choice(title: 'Smartphone', path: 'assets/icons/smartphone.png'),
  Choice(title: 'Fashion', path: 'assets/icons/wardrobe.png'),
  Choice(title: 'Health&Beauty', path: 'assets/icons/cosmetics.png'),
  Choice(title: 'Sports', path: 'assets/icons/sport.png'),
  Choice(title: 'Books', path: 'assets/icons/books.png'),
  Choice(title: 'Furniture', path: 'assets/icons/sofa.png'),
];
