import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final Color color;
  final Function() function;

  const CustomButtom(
      {super.key,
      required this.text,
      required this.color,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(100, 80),
        backgroundColor: color,
      ),
    );
  }
}
