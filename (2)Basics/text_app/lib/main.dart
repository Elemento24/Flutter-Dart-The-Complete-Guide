import 'package:flutter/material.dart';

import './button.dart';
import 'text_output.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _textArr = const [
    "How was your day, Dear?",
    "Looks like your mood is all hayway?",
    "Don't worry it will all be fine, again!",
    "I am very much hoping that, Dear!",
    "Get well really really soon, my dear!"
  ];

  var _textIndex = 0;

  void _changeText() {
    setState(() {
      _textIndex = (_textIndex + 1) % _textArr.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            child: Text(
              'Text App',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextOutput(_textArr[_textIndex]),
              Button(_changeText),
            ],
          ),
        ),
      ),
    );
  }
}
