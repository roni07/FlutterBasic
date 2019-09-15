import 'package:flutter/material.dart';

class ImageControl extends StatelessWidget{
  final Function addImage;

  ImageControl(this.addImage);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          addImage('Next Image');
        },
        child: Text('Add+'));
  }
}