import 'package:flutter/material.dart';

class CurrencyConvertorMaterialApp extends StatelessWidget {
  const CurrencyConvertorMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Currency Convertor...!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              // color: Color.fromARGB(255, 48, 44, 255),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(176, 255, 255, 255),
                ),
              ),
              hoverColor: Colors.white,
              labelText: 'Enter the amount in USD',
              labelStyle: TextStyle(
                color: Colors.white70,
              ),
              prefixIcon: Icon(
                Icons.monetization_on,
                color: Color.fromARGB(255, 225, 225, 225),
              ),
            ),
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      )),
    );
  }
}
