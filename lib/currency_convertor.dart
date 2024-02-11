import 'package:currency_convertor/components/custom_button.dart';
import 'package:flutter/material.dart';

class CurrencyConvertorMaterialApp extends StatefulWidget {
  const CurrencyConvertorMaterialApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CurrencyConvertorMaterialAppState();
  }
}

class _CurrencyConvertorMaterialAppState
    extends State<CurrencyConvertorMaterialApp> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Currency Convertor',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'In INR - ${result.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              // color: Color.fromARGB(255, 48, 44, 255),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              cursorColor: Colors.white,
              decoration: const InputDecoration(
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
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 81;
                  print(result);
                });
              },
              text: 'Convert',
              shadowColor: Colors.white,
              style: ButtonStyle(
                foregroundColor: const MaterialStatePropertyAll(Colors.black),
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
                minimumSize: const MaterialStatePropertyAll(
                  Size(double.infinity, 50),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
