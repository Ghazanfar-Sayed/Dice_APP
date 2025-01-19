import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, String this.text = 'Not Set'});
  final String text;

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
