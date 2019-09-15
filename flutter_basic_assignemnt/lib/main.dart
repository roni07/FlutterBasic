import 'package:flutter/material.dart';
import 'package:flutter_basic_assignemnt/text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: TextControl(),
      ),
    );
  }
}
