import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/details/components/images_preview.dart';
import 'package:flutter/material.dart';

class HeaderWithImagesPreview extends StatelessWidget {
  const HeaderWithImagesPreview({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: size.height * 0.17,
          color: kPrimaryColor,
        ),
        ImagesPreview(),
      ],
    );
  }
}
