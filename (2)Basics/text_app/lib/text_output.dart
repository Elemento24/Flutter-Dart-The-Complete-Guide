import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String displayText;
  TextOutput(this.displayText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        displayText,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
