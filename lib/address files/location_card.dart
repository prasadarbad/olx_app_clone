import 'package:flutter/material.dart';
import 'package:olx_app_clone/address%20files/address_details.dart';

class LocationCard extends StatefulWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                color: Colors.black,
                child: const Text(
                  'Address',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Selected Address',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                      child: const Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 20,
                        color: Colors.blue,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressDetails()));
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
            ],
          ),
        ),
      ),
    );
  }
}
