import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

class PopularSalons extends StatelessWidget {
  const PopularSalons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopularSalonCard(
            imagePath: 'assets/images/1.jpg',
            salonTitle: 'Cute Cut - Hair salon',
            distance: 1.6,
            rating: 4.5,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          PopularSalonCard(
            imagePath: 'assets/images/3.jpg',
            salonTitle: 'Easy Nails Spa',
            distance: 1.8,
            rating: 4.8,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class PopularSalonCard extends StatelessWidget {
  const PopularSalonCard({
    Key? key,
    required this.imagePath,
    required this.salonTitle,
    required this.distance,
    required this.rating,
    required this.press,
  }) : super(key: key);

  final String imagePath;
  final String salonTitle;
  final double distance;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding,
      ),
      width: size.width * 0.5,
      child: InkWell(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image(
                image: AssetImage(imagePath),
              ),
            ),
            SizedBox(height: kDefaultPadding - 8),
            Text(
              '$salonTitle',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: kDefaultPadding / 3),
            Text(
              '$distance km away',
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(height: kDefaultPadding / 2),
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
                  '$rating/5',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
