import 'package:beauty_app/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.30,
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .apply(color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Daria.',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(
                Icons.tune_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage('assets/images/profile-pic.jpg'),
                  width: 48.0,
                  height: 48.0,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "What are you looking for?",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
