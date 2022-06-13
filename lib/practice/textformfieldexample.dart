import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx_app_clone/subwidgets/fixedwidgets.dart';

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? address1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EXAMPLE'),
      ),
      body: MyTextFormField(
        onsaved: (value) {
          address1 = value;
          print(address1);
        },
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter address one';
          }
        },
        textInputFormatter: FilteringTextInputFormatter.allow(
          RegExp(r'[0-9]+$'),
        ),
      ),
    );
  }
}
