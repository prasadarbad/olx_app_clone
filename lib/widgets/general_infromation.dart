import 'package:flutter/material.dart';
import 'package:olx_app_clone/providers/car_form_provider.dart';
import 'package:provider/provider.dart';

class GeneralInformation extends StatefulWidget {
  const GeneralInformation({Key? key}) : super(key: key);

  @override
  State<GeneralInformation> createState() => _GeneralInformationState();
}

class _GeneralInformationState extends State<GeneralInformation> {
  bool isOn = false;
  bool isexchangable = false;
  @override
  Widget build(BuildContext context) {
    final senddata = Provider.of<CarFormProvider>(context);
    return Container(
      width: double.infinity,
      height: 400,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                color: Colors.black,
                child: const Text(
                  'GENERAL INFORMATION',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Title',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              TextFormField(
                onChanged: (value) {
                  senddata.gettitle(value);
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Price',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              TextFormField(
                onChanged: (value) {
                  senddata.getprice(value);
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      'Negotiable',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Switch(
                    activeColor: Colors.blue,
                    value: isOn,
                    onChanged: (value) {
                      senddata.isnegotiable(value);
                      setState(() {
                        isOn = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      'Available For Exchange',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Switch(
                    activeColor: Colors.blue,
                    value: isexchangable,
                    onChanged: (value) {
                      senddata.exchangebale(value);
                      setState(() {
                        isexchangable = value;
                      });
                    },
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
