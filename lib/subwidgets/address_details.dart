import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx_app_clone/subwidgets/fixedwidgets.dart';
import 'package:provider/provider.dart';
import '../providers/car_form_provider.dart';

class AddressDetails extends StatefulWidget {
  const AddressDetails({Key? key}) : super(key: key);

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  void formvalidation() {
    final isValid = formkey.currentState!.validate();
    if (isValid) {
      formkey.currentState!.save();

      String finaladdress =
          'Address Line1:$addressline1\nAddess Line 2:$addressline2\nArea:$area\nCity:$city\nCountry:$country\nPincode:$pincode\nLandMark:$landmark';

      Navigator.of(context).pop();
    }
  }

  String? addressline1;
  String? addressline2;
  String? area;
  String? city;
  String? country;
  String? pincode;
  String? landmark;
  String? finaladdress;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final sendaddress = Provider.of<CarFormProvider>(context);
    sendaddress.address = finaladdress;
    return Scaffold(
      appBar: AppBar(
        title: Text('Address'),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const TextBox(text: 'Address line 1'),
                    MyTextFormField(
                      onsaved: (value) {
                        addressline1 = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter address one';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextBox(text: 'Address Line 2'),
                    MyTextFormField(
                      onsaved: (value) {
                        addressline2 = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextBox(text: 'Area'),
                    MyTextFormField(
                      onsaved: (value) {
                        area = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Area';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextBox(text: 'City'),
                    MyTextFormField(
                      onsaved: (value) {
                        city = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter City Name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextBox(text: 'Country'),
                    MyTextFormField(
                      onsaved: (value) {
                        country = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Country Name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextBox(text: 'Pincode'),
                    MyTextFormField(
                      onsaved: (value) {
                        pincode = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Pincode';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextBox(text: 'Landmark'),
                    MyTextFormField(
                      onsaved: (value) {
                        landmark = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          formvalidation();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          alignment: Alignment.center,
                        ),
                        child: const Text(
                          'Submit',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//  inputFormatters: [
//                         FilteringTextInputFormatter(RegExp(r'[a-zA-z]'),
//                             allow: true)
//                       ],
//  inputFormatters: [
//                         FilteringTextInputFormatter(RegExp(r'[0-9]+$'),
//                             allow: true)
//                       ],