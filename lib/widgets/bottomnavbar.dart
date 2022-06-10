import 'package:flutter/material.dart';
import 'package:olx_app_clone/screens/add_car_advertise.dart';

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
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          backgroundColor: (Colors.white),
          label: 'search',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.trending_up_sharp),
          backgroundColor: (Colors.white),
          label: 'trending',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddCarAdvertisement()),
                );
              },
              icon: const Icon(
                Icons.add_box_outlined,
              )),
          backgroundColor: (Colors.white),
          label: 'add advertise',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.comment),
          backgroundColor: (Colors.white),
          label: 'chatting',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          backgroundColor: (Colors.white),
          label: 'Profile',
        ),
      ],
    );
  }
}
