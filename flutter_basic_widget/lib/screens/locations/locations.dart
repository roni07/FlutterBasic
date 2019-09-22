import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/app.dart';
import 'package:flutter_basic_widget/models/location.dart';

class Locations extends StatelessWidget {
  final locations = Location.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                  child: Text(location.name),
                  onTap: () => _onLocationTap(context, location.id),
                ))
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id': locationId});
  }
}
