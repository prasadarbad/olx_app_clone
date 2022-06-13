import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextBox extends StatelessWidget {
  final String text;

  const TextBox({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final ValueChanged<String> onsaved;
  final FormFieldValidator<String>? validator;
  final FilteringTextInputFormatter? textInputFormatter;

  MyTextFormField({
    Key? key,
    required this.onsaved,
    this.validator,
    this.textInputFormatter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onsaved,
      validator: validator,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
        ),
        contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    );
  }
}
