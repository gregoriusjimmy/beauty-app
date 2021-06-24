import 'package:beauty_services_app/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: kBlackButtonColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.calendar_today),
            color: kBlackButtonColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
            color: kBlackButtonColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.widgets,
              color: kBlackButtonColor,
            ),
          ),
        ],
      ),
    );
  }
}
