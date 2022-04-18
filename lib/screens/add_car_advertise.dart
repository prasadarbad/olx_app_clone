import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:olx_app_clone/address%20files/location_card.dart';
import 'package:olx_app_clone/widgets/additional_information.dart';
import 'package:olx_app_clone/widgets/general_infromation.dart';
import 'package:olx_app_clone/widgets/oldimagepicker.dart';
import 'dart:io';

import 'package:olx_app_clone/widgets/olx_image_picker.dart';
import 'package:olx_app_clone/widgets/specifications.dart';

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
            children: const [
              //OlxImages(),
              SizedBox(
                height: 5.0,
              ),
              GeneralInformation(),
              LocationCard(),
              AdditionalInformation(),
              Specification(),
            ],
          ),
        ),
      ),
    );
  }
}
