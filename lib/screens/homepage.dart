import 'package:flutter/material.dart';

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
        title: Container(
          width: 350,
          height: 40,
          color: Colors.white,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Search in Leooffer',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        actions: const [Icon(Icons.settings), Icon(Icons.notification_add)],
      ),
      drawer: Drawer(),
    );
  }
}
