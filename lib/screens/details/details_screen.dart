import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/details/components/body.dart';
import 'package:beauty_services_app/services/salon.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.salon}) : super(key: key);
  final Salon salon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(salon: salon),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 120,
      leading: Container(
        margin: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: <Widget>[
              Icon(Icons.arrow_back),
              SizedBox(
                width: kDefaultPadding,
              ),
              Text(
                'Back',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.cloud_upload_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        ),
      ],
    );
  }
}
