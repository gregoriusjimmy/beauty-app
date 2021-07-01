import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/details/details_screen.dart';
import 'package:beauty_services_app/services/salon.dart';
import 'package:flutter/material.dart';

List<Salon> salons = [
  Salon(
    title: 'Cute Cut - Hair salon',
    imagePath: 'assets/images/1.jpg',
    distance: 1.6,
    rating: 4.5,
  ),
  Salon(
    imagePath: 'assets/images/3.jpg',
    title: 'Easy Nails Spa',
    distance: 1.8,
    rating: 4.8,
  )
];

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
            salon: salons[0],
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(salon: salons[0]),
                ),
              );
            },
          ),
          PopularSalonCard(
            salon: salons[1],
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    salon: salons[1],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class PopularSalonCard extends StatelessWidget {
  const PopularSalonCard({
    Key? key,
    required this.salon,
    required this.press,
  }) : super(key: key);

  final Salon salon;
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
                image: AssetImage(salon.imagePath),
              ),
            ),
            SizedBox(height: kDefaultPadding - 8),
            Text(
              salon.title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: kDefaultPadding / 3),
            Text(
              '${salon.distance} km away',
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
                  '${salon.rating}/5',
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
