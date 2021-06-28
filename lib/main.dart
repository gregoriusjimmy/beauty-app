import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beauty Services App',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context)
            .textTheme
            .apply(
              bodyColor: kTextColor,
              displayColor: kTextColor,
              fontFamily: 'Quicksand',
            )
            .copyWith(
              caption:
                  TextStyle(color: kCaptionColor, fontWeight: FontWeight.w600),
              subtitle2:
                  TextStyle(color: kCaptionColor, fontWeight: FontWeight.w600),
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
