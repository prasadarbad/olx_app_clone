import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/car_form_provider.dart';

class Transmissions extends StatefulWidget {
  @override
  _TransmissionsState createState() => _TransmissionsState();
}

class _TransmissionsState extends State<Transmissions> {
  List<bool> isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    final transmission = Provider.of<CarFormProvider>(context);
    return ToggleButtons(
      isSelected: isSelected,
      selectedColor: Colors.white,
      color: Colors.black,
      fillColor: Colors.lightBlue.shade900,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/gear-shift.png',
                width: 50,
                height: 50,
              ),
              Text('Manual'),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/gear-stick.png',
                width: 50,
                height: 50,
              ),
              const Text('Automatic'),
            ],
          ),
        ),
      ],
      onPressed: (int newIndex) {
        transmission.getTransmission(newIndex);
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
