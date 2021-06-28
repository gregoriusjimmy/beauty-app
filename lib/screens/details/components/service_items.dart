import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/details/components/add_to_cart_button.dart';
import 'package:flutter/material.dart';

class ServiceItems extends StatelessWidget {
  const ServiceItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <ServiceItemCard>[
        ServiceItemCard(
          service: 'Hybird Removal',
          treatment: 'Manicure',
          duration: '1h',
          price: 12,
        ),
        ServiceItemCard(
          service: 'Japanese Manicure',
          treatment: 'Manicure',
          duration: '1h 30m',
          price: 20,
        ),
        ServiceItemCard(
          service: 'Predicure SPA',
          treatment: 'Predicure',
          duration: '1h',
          price: 15,
        ),
      ],
    );
  }
}

class ServiceItemCard extends StatelessWidget {
  const ServiceItemCard({
    Key? key,
    required this.service,
    required this.treatment,
    required this.duration,
    required this.price,
  }) : super(key: key);
  final String service;
  final String treatment;
  final String duration;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      margin: EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
          color: kCaptionColor,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                service,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '$treatment * $duration',
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
          Spacer(),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText2,
              children: <TextSpan>[
                TextSpan(
                  text: '\$',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                TextSpan(
                  text: '$price',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          AddToCartButton(),
        ],
      ),
    );
  }
}
