import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/details/components/salon_menu_navigation.dart';
import 'package:beauty_services_app/screens/details/components/header_with_images_preview.dart';
import 'package:beauty_services_app/screens/details/components/salon_title_with_call_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithImagesPreview(size: size),
          SalonTitleWithCallButton(),
          SalonMenuNavigation(),
        ],
      ),
    );
  }
}
