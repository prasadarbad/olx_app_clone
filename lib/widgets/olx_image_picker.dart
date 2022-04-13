import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class OlxImagePicker extends StatefulWidget {
  const OlxImagePicker({Key? key}) : super(key: key);

  @override
  State<OlxImagePicker> createState() => _OlxImagePickerState();
}

class _OlxImagePickerState extends State<OlxImagePicker> {
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
    if (_pickedImage!.path.isNotEmpty) {
      _imageList.add(_pickedImage as File);
    }
  }

  @override
  Widget build(BuildContext context) {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: _pickedImage != null && _imageList != null
                        ? Image.file(File(_imageList[1].path))
                        : null,
                  ),
                  Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: _pickedImage != null && _imageList != null
                        ? Image.file(File(_imageList[0].path))
                        : null,
                  ),
                  Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: _pickedImage != null && _imageList != null
                        ? Image.file(File(_imageList[0].path))
                        : null,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: _pickedImage != null && _imageList != null
                        ? Image.file(File(_imageList[0].path))
                        : null,
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: _pickedImage != null && _imageList != null
                        ? Image.file(File(_imageList[0].path))
                        : null,
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: _pickedImage != null && _imageList != null
                        ? Image.file(File(_imageList[0].path))
                        : null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
