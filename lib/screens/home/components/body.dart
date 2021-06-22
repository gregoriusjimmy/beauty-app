import 'package:beauty_app/constants.dart';
import 'package:beauty_app/screens/home/components/header.dart';
import 'package:beauty_app/screens/home/components/popular_salons.dart';
import 'package:beauty_app/screens/home/components/title_with_more_button.dart';
import 'package:beauty_app/screens/home/components/top_services.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(size: size),
          SizedBox(height: kDefaultPadding),
          TitleWithMoreButton(
            textSpan: [
              TextSpan(text: 'Popular in '),
              TextSpan(
                text: 'Warsaw',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
          PopularSalons(),
          TitleWithMoreButton(
            textSpan: [
              TextSpan(
                text: 'Nails. ',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: 'Top services',
              )
            ],
          ),
          TopServices()
        ],
      ),
    );
  }
}
