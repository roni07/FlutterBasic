import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/screens/location_detail/location_detail.dart';
import 'package:flutter_basic_widget/style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle)
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        )
      ),
    );
  }
}
