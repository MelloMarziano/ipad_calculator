import 'package:flutter/material.dart';

class CustomButtomDoble extends StatelessWidget {
  final String text;
  final Color color;
  final Function() function;

  const CustomButtomDoble(
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
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(214, 80),
        backgroundColor: color,
      ),
    );
  }
}
