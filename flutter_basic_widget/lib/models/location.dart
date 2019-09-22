import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Dhaka Airport ', 'assets/images/dhaka_airport.png', [LocationFact(
      'About Airport', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'
      )

      ]),
      Location(2, 'Sundarban', 'assets/images/sundarban.jpg', [LocationFact(
        'About Sundarban', 'Lontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.'
      )

      ]),
      Location(3, 'Shat Gambuj Mosque', 'assets/images/shat_gambuj_mosque.jpg', [LocationFact(
        'About Mosque', 'Dontrary to popular belief, Lorem Ipsum is not simply random text. It has.'
      )

      ])
    ];
  }

  static Location fetchById(int locationId) {
    List<Location> locations = fetchAll();
    for(var i = 0; i < locations.length; i++){
      if(locations[i].id == locationId){
        return locations[i];
      }
    }
    return null;
  }
}
