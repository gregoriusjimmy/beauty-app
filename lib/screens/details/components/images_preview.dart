import 'package:beauty_services_app/constants.dart';
import 'package:flutter/material.dart';

class ImagesPreview extends StatelessWidget {
  const ImagesPreview({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(
          top: size.height * 0.03,
          bottom: kDefaultPadding + 10,
        ),
        child: Row(
          children: <Widget>[
            ImagePreview(
              imagePath: imagePath,
            ),
            ImagePreview(
              imagePath: 'assets/images/4.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class ImagePreview extends StatelessWidget {
  const ImagePreview({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image(
          width: size.width * 0.6,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
