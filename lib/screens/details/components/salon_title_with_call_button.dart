import 'package:beauty_services_app/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:beauty_services_app/services/salon.dart';
import 'package:flutter/material.dart';

class SalonTitleWithCallButton extends StatelessWidget {
  const SalonTitleWithCallButton({
    Key? key,
    required this.salon,
  }) : super(key: key);
  final Salon salon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AutoSizeText(
                  salon.title,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Wolva, Warsaw * ${salon.distance}km away',
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
                      '${salon.rating}/5',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 20.0),
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
      borderRadius: BorderRadius.circular(25),
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
