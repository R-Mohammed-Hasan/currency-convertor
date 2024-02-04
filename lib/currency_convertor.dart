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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(176, 255, 255, 255),
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(50)), // set the border radius here
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
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
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
          ),
        ],
      )),
    );
  }
}
