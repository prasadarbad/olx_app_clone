import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx_app_clone/subwidgets/brands.dart';
import 'package:olx_app_clone/subwidgets/fueltype.dart';
import 'package:olx_app_clone/subwidgets/transmission.dart';
import 'package:olx_app_clone/widgets/olx_image_picker.dart';
import 'package:provider/provider.dart';
import '../providers/car_form_provider.dart';

class Specification extends StatefulWidget {
  const Specification({Key? key}) : super(key: key);

  @override
  State<Specification> createState() => _SpecificationState();
}

class _SpecificationState extends State<Specification> {
  OlxImagePicker? picker;
  bool insuarance = false;
  @override
  Widget build(BuildContext context) {
    final senddata = Provider.of<CarFormProvider>(context);
    return Container(
      width: double.infinity,
      height: 800,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                color: Colors.black,
                child: const Text(
                  'Specification',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Brands()));
                },
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        child: const Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 20,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Brands()));
                        }),
                    enabled: false,
                    label: const Text(
                      'Brand',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Title(
                color: Colors.black,
                child: const Text(
                  'Transmission',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Transmissions(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Title(
                    color: Colors.black,
                    child: const Text(
                      'Insurance',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Switch(
                    activeColor: Colors.blue,
                    value: insuarance,
                    onChanged: (value) {
                      senddata.insuarance = value;
                      setState(() {
                        insuarance = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Distance',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    senddata.distance = value;
                  });
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter(RegExp(r'[0-9-.]+$'), allow: true)
                ],
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                      child: const Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 20,
                        color: Colors.blue,
                      ),
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => AddressDetails()));
                      }),
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
                height: 30,
              ),
              const Text(
                'Distance',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              FuelType(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'URL',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              TextFormField(
                onChanged: (value) {
                  senddata.url = value;
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
              ElevatedButton(
                  onPressed: () {
                    //  senddata.validation();
                  },
                  child: const Text('Submit data'))
            ],
          ),
        ),
      ),
    );
  }
}
