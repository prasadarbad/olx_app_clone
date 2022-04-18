import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/car_form_provider.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({Key? key}) : super(key: key);

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  @override
  Widget build(BuildContext context) {
    final sendinformation = Provider.of<CarFormProvider>(context);
    return Container(
      width: double.infinity,
      height: 300,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                color: Colors.black,
                child: const Text(
                  'Additional INFORMATION',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Description',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              TextFormField(
                onChanged: (value) {
                  sendinformation.getinformation(value);
                },
                maxLength: 500,
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(7, 7, 7, 0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
