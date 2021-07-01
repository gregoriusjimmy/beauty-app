import 'package:beauty_services_app/screens/details/components/salon_menu_navigations.dart';
import 'package:beauty_services_app/screens/details/components/header_with_images_preview.dart';
import 'package:beauty_services_app/screens/details/components/salon_title_with_call_button.dart';
import 'package:beauty_services_app/services/salon.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.salon,
  }) : super(key: key);
  final Salon salon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithImagesPreview(size: size, imagePath: salon.imagePath),
          SalonTitleWithCallButton(
            salon: salon,
          ),
          SalonMenuNavigations(),
        ],
      ),
    );
  }
}
