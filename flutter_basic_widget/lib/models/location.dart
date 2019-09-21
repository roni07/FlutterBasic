import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Dhaka Airport', 'assets/images/logo.png', [
        LocationFact('Summary', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
        LocationFact('Create Somehting', 'It is a long established fact that a reader will be.')
      ])
    ];
  }
}
