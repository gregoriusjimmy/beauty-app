import 'package:beauty_app/constants.dart';
import 'package:flutter/material.dart';

class ImagesPreview extends StatelessWidget {
  const ImagesPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding,
        ),
        child: Row(
          children: <Widget>[
            ImagePreview(
              imagePath: 'assets/images/1.jpg',
            ),
            ImagePreview(
              imagePath: 'assets/images/2.jpg',
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
