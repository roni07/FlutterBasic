import 'package:flutter/material.dart';
import 'package:flutter_basic_app/img_control.dart';
import './images.dart';

class ImageManger extends StatefulWidget {
  final String startingImage;

  ImageManger(this.startingImage);

  @override
  State<StatefulWidget> createState() {
    return _ImageManagerState();
  }
}

class _ImageManagerState extends State<ImageManger> {
  List<String> _imgs = [];

  @override
  void initState() {
    _imgs.add(widget.startingImage);
    super.initState();
  }

  @override
  void didUpdateWidget(ImageManger oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addImage(String _image) {
    setState(() {
      _imgs.add(_image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ImageControl(_addImage),
      ),
      Images(_imgs)
    ]);
  }
}
