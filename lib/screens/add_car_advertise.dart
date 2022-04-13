import 'package:flutter/material.dart';

class AddCarAdvertisement extends StatefulWidget {
  const AddCarAdvertisement({Key? key}) : super(key: key);

  @override
  State<AddCarAdvertisement> createState() => _AddCarAdvertisementState();
}

class _AddCarAdvertisementState extends State<AddCarAdvertisement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Cars'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.all(10),
                  semanticContainer: true,
                  shadowColor: Colors.black,
                  child: IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_a_photo_rounded,
                        size: 60,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
