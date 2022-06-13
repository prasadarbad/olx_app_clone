import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:olx_app_clone/address%20files/location_card.dart';
import 'package:olx_app_clone/widgets/additional_information.dart';
import 'package:olx_app_clone/widgets/general_infromation.dart';
import 'package:olx_app_clone/practice/oldimagepicker.dart';
import 'dart:io';

import 'package:olx_app_clone/widgets/olx_image_picker.dart';
import 'package:olx_app_clone/widgets/specifications.dart';

class AddCarAdvertisement extends StatefulWidget {
  const AddCarAdvertisement({Key? key}) : super(key: key);

  @override
  State<AddCarAdvertisement> createState() => _AddCarAdvertisementState();
}

class _AddCarAdvertisementState extends State<AddCarAdvertisement> {
  File? userimage;
  void _pickedimage(File image) {
    userimage = image;
  }

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
              OlxImagePicker(_pickedimage),
              //  OlxImages(),
              const SizedBox(
                height: 5.0,
              ),
              const GeneralInformation(),
              const LocationCard(),
              const AdditionalInformation(),
              const Specification(),
            ],
          ),
        ),
      ),
    );
  }
}
