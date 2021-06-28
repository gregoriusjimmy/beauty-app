import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/details/components/menu_title.dart';
import 'package:beauty_services_app/screens/details/components/service_items.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SalonMenuNavigatonButton(text: 'Details'),
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
              SalonMenuNavigatonButton(text: 'Reviews'),
              SalonMenuNavigatonButton(text: 'Portofolio'),
            ],
          ),
          SizedBox(
            height: 24.0,
          ),
          MenuTitle(
            textSpans: [
              TextSpan(text: 'Top '),
              TextSpan(
                text: 'services',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          ServiceItems()
        ],
      ),
    );
  }
}

class SalonMenuNavigatonButton extends StatelessWidget {
  const SalonMenuNavigatonButton({
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
