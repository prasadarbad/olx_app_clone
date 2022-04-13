import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          backgroundColor: (Colors.white),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up_sharp),
          backgroundColor: (Colors.white),
          label: 'trending',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_rounded),
          backgroundColor: (Colors.white),
          label: 'add advertise',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.comment),
          backgroundColor: (Colors.white),
          label: 'chatting',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          backgroundColor: (Colors.white),
          label: 'Profile',
        ),
      ],
    );
  }
}
