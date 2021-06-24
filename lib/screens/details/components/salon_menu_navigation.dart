import 'package:beauty_services_app/constants.dart';
import 'package:flutter/material.dart';

class SalonMenuNavigation extends StatelessWidget {
  const SalonMenuNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DetailsMenuButton(text: 'Details'),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Text(
                'Services',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: kBlackButtonColor,
              ),
            ),
          ),
          DetailsMenuButton(text: 'Reviews'),
          DetailsMenuButton(text: 'Portofolio'),
        ],
      ),
    );
  }
}

class DetailsMenuButton extends StatelessWidget {
  const DetailsMenuButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Text(text),
      ),
    );
  }
}
