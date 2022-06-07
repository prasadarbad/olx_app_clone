import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../providers/car_form_provider.dart';

class OlxImagePicker extends StatefulWidget {
  OlxImagePicker(this.imagepickfn);
  final void Function(File pickedimage) imagepickfn;

  @override
  State<OlxImagePicker> createState() => _OlxImagePickerState();
}

class _OlxImagePickerState extends State<OlxImagePicker> {
  void submitimage() {
    print('hello');
  }

  File? _pickedImage;
  final List<File> _imageList = [];
  void pickimage() async {
    final picker = await ImagePicker();
    final pickedImage = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxWidth: 150,
    );

    final pickedImageFile = File(pickedImage!.path);

    setState(() {
      _pickedImage = pickedImageFile as File;
    });
    widget.imagepickfn(pickedImageFile);
    if (_pickedImage!.path.isNotEmpty) {
      _imageList.add(_pickedImage as File);
    }
  }

  Future uploadimage() async {
    final path = 'carimages/${_pickedImage!}';
    final file = File(_pickedImage!.path);
    final ref = await FirebaseStorage.instance.ref().child(path);
    ref.putFile(file);
  }

  @override
  Widget build(BuildContext context) {
    void submitimages() {}
    final senddata = Provider.of<CarFormProvider>(context);
    return Container(
      height: 170,
      width: double.infinity,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: const EdgeInsets.all(10),
        semanticContainer: true,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: pickimage,
                    icon: const Icon(
                      Icons.add_a_photo_rounded,
                      size: 40,
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: _pickedImage != null && _imageList != null
                        ? Image.file(File(_imageList[0].path))
                        : null,
                  ),
                  // Container(
                  //   height: 70,
                  //   width: 60,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(40),
                  //   ),
                  //   child: _pickedImage != null && _imageList != null
                  //       ? Image.file(File(_imageList[0].path))
                  //       : null,
                  // ),
                  // Container(
                  //   height: 90,
                  //   width: 60,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: _pickedImage != null && _imageList != null
                  //       ? Image.file(File(_imageList[0].path))
                  //       : null,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
