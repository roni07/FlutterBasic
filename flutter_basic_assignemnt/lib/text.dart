import 'package:flutter/material.dart';

class TextGenerator extends StatelessWidget {
  final String mainText;

  TextGenerator(this.mainText);

  @override
  Widget build(BuildContext context) {
    return Text(mainText);
  }
}