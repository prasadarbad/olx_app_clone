import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/car_form_provider.dart';

class FuelType extends StatefulWidget {
  @override
  _FuelTypeState createState() => _FuelTypeState();
}

class _FuelTypeState extends State<FuelType> {
  List<bool> isSelected = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final fuel = Provider.of<CarFormProvider>(context);
    return ToggleButtons(
      isSelected: isSelected,
      selectedColor: Colors.white,
      color: Colors.black,
      fillColor: Colors.lightBlue.shade900,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Petrol',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Disel',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'CNG',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Electrical',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
      ],
      onPressed: (int newIndex) {
        fuel.getfueltype(newIndex);
        setState(() {
          for (int index = 0; index < isSelected.length; index++) {
            if (index == newIndex) {
              isSelected[index] = !isSelected[index];
            } else {
              isSelected[index] = false;
            }
          }
        });
      },
    );
  }
}
