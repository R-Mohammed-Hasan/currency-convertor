import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color shadowColor;
  final ButtonStyle style;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.style = const ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(Colors.black),
      backgroundColor: MaterialStatePropertyAll(Colors.white),
    ),
    this.color = Colors.black,
    this.shadowColor = Colors.white,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(2),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(2, 1),
            ),
          ],
        ),
        child: TextButton(
          onPressed: onPressed ?? () {},
          style: style,
          child: const Text("Convert"),
        ),
      ),
    );
  }
}
