import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function clickHandler;
  Button(this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: clickHandler,
      child: Text('Press to Change Text'),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}
