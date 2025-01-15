import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;

  const StyledText({super.key, String this.text = 'Not Set'});

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
