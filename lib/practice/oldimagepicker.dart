import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';

class OlxImages extends StatefulWidget {
  const OlxImages({Key? key}) : super(key: key);

  @override
  State<OlxImages> createState() => _OlxImagesState();
}

class _OlxImagesState extends State<OlxImages> {
  List<XFile>? images = [];
  final multipicker = ImagePicker();
  Future getMultiImages() async {
    final List<XFile>? selectedImages = await multipicker.pickMultiImage(
      imageQuality: 70,
    );
    setState(() {
      if (selectedImages!.isEmpty) {
        images!.addAll(selectedImages);
      } else {
        print('no images selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 240,
        child: Card(
          elevation: 1,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: GridView.builder(
                      itemCount: images!.isEmpty ? 1 : images!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: images!.isEmpty
                              ? IconButton(
                                  alignment: Alignment.center,
                                  onPressed: getMultiImages,
                                  icon: const Icon(
                                    Icons.add_a_photo_rounded,
                                    size: 30,
                                  ),
                                )
                              : Image.file(
                                  File(
                                    images![index].path,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
