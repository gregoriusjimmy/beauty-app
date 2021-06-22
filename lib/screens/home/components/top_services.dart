import 'package:beauty_app/constants.dart';
import 'package:flutter/material.dart';

class TopServices extends StatelessWidget {
  const TopServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          TopServiceCard(
            imagePath: 'assets/images/2.jpg',
          ),
          TopServiceCard(
            imagePath: 'assets/images/4.jpg',
          ),
        ],
      ),
    );
  }
}

class TopServiceCard extends StatelessWidget {
  const TopServiceCard({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding,
        ),
        width: size.width * 0.5,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagePath),
          ),
        ),
      ),
    );
  }
}
