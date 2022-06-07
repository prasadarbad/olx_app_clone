import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/car_form_provider.dart';

class Brands extends StatefulWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  String brand = '';
  int seletectedvalue = 0;
  @override
  Widget build(BuildContext context) {
    final sendbrand = Provider.of<CarFormProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BRANDS'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          RadioListTile<int>(
            title: const Text('Ford'),
            value: 0,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 0;
                brand = 'ford';
                sendbrand.brand = brand;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('Jeep'),
            value: 1,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 1;
                brand = 'Jeep';
                sendbrand.brand = brand;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('Mahindra'),
            value: 2,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 2;
                brand = 'Mahindra';
                sendbrand.brand = brand;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('Maruti Suzuki'),
            value: 3,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 3;
                brand = 'Maruti Suzuki';
                sendbrand.brand = brand;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('Renault'),
            value: 4,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 4;
                brand = 'Renault';
                sendbrand.brand = brand;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('Honda'),
            value: 5,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 5;
                brand = 'Honda';
                sendbrand.brand = brand;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('FIAT'),
            value: 6,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 6;
                brand = 'FIAT';
                sendbrand.brand = brand;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('Hyundai'),
            value: 7,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 7;
                brand = 'Hyundai';
                sendbrand.brand = brand;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('TATA'),
            value: 8,
            groupValue: seletectedvalue,
            onChanged: (value) {
              setState(() {
                seletectedvalue = 8;
                brand = 'TATA';
                sendbrand.brand = brand;
              });
            },
          ),
        ],
      ),
    );
  }
}
