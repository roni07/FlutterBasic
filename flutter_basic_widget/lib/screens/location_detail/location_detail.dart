import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/screens/location_detail/image_banner.dart';
import 'package:flutter_basic_widget/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner('assets/images/logo.png'),
          TextSection('summary1', 'details1 fsdas afdf a fad dsf asf saf sa sd sa a jsdfjsgafjsagjdf jjafjdfja ajfjasfdjs jasfjdsfjas ajsfjsagfjas ljgg g '),
          TextSection('summary2', 'details2 ljlj lfsf a sf a af af df dfasfsfsffs fdsf '),
          TextSection('summary3', 'details3 fkasfkdhs rehur ujhfhfhaf afafsaf'),
        ],
      ),
    );
  }
}
