import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

      String address =
          'Address Line1:$addressline1\nAddess Line 2:$addressline2\nArea:$area\nCity:$city\nCountry:$country\nPincode:$pincode\nLandMark:$landmark';
      finaladdress = address;
      Navigator.of(context).pop();
    }
  }

  String addressline1 = '';
  String addressline2 = '';
  String area = '';
  String city = '';
  String country = '';
  String pincode = '';
  String landmark = '';
  String finaladdress = '';
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final sendaddress = Provider.of<CarFormProvider>(context);
    sendaddress.getaddress(finaladdress);
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
                    const Text(
                      'Address Line 1',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Address Line 1';
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          addressline1 = value!;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(7, 7, 7, 0),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Address Line 2',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      onSaved: (value) {
                        setState(() {
                          addressline2 = value!;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Area',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Area';
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          area = value!;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'City*',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter City Name';
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          city = value!;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        FilteringTextInputFormatter(RegExp(r'[a-zA-z]'),
                            allow: true)
                      ],
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Country*',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Country Name';
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          country = value!;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        FilteringTextInputFormatter(RegExp(r'[a-zA-z]'),
                            allow: true)
                      ],
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Pincode*',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter PinCode';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        setState(() {
                          pincode = value!;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter(RegExp(r'[0-9]+$'),
                            allow: true)
                      ],
                      maxLength: 6,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'LandMark',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      onSaved: (value) {
                        setState(() {
                          landmark = value!;
                        });
                      },
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
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
