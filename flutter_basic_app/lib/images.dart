import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final List<String> images;

  Images(this.images);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: images
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/flutter.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
