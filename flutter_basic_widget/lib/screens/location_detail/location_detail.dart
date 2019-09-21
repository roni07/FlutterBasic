import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/models/location.dart';
import 'package:flutter_basic_widget/screens/location_detail/image_banner.dart';
import 'package:flutter_basic_widget/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
        ]..addAll(textSections(location)), // .. means cascade
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  } // map is used for convert one type of list to another type of list
}
