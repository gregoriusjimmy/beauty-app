import 'package:beauty_services_app/constants.dart';
import 'package:flutter/material.dart';

class SalonTitleWithCallButton extends StatelessWidget {
  const SalonTitleWithCallButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Easy Nails Spa ',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Wolva, Warsaw * 1.8km away',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: kSecondaryColor,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    '4.8/5',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
          CallButton(),
        ],
      ),
    );
  }
}

class CallButton extends StatelessWidget {
  const CallButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.call,
              color: kTextColor,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Call',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: kTextColor, width: 0.1),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
