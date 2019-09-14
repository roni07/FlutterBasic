import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _imgs.add('New Image Adder');
              });
            },
            child: Text('Add+')),
      ),
      Images(_imgs)
    ]);
  }
}
