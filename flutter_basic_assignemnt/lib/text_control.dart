import 'package:flutter/material.dart';
import 'package:flutter_basic_assignemnt/text.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl>  {
  String _mainText = 'Assignmet Text 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          onPressed: () {
            setState(() {
              _mainText = 'changed text';
            });
          },
          child: Text('Change Text'),
        ),
        TextGenerator(_mainText),
      ],
    );
  }
}