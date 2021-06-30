import 'package:beauty_services_app/constants.dart';
import 'package:beauty_services_app/screens/details/components/menu_title.dart';
import 'package:beauty_services_app/screens/details/components/salon_menu_navigation_button.dart';
import 'package:beauty_services_app/screens/details/components/service_items.dart';
import 'package:flutter/material.dart';
import 'package:enum_to_string/enum_to_string.dart';

enum MenuNavigations { Details, Services, Reviews, Portofolio }

class SalonMenuNavigations extends StatefulWidget {
  const SalonMenuNavigations({
    Key? key,
  }) : super(key: key);

  @override
  _SalonMenuNavigationsState createState() => _SalonMenuNavigationsState();
}

class _SalonMenuNavigationsState extends State<SalonMenuNavigations> {
  MenuNavigations currentActiveNavigation = MenuNavigations.Services;

  List<SalonMenuNavigationButton> updateSalonMenuNavigationButtons() {
    List<SalonMenuNavigationButton> menuButtons = [];
    for (var navigation in MenuNavigations.values) {
      menuButtons.add(
        SalonMenuNavigationButton(
          text: EnumToString.convertToString(navigation),
          active: currentActiveNavigation == navigation,
          onTap: () {
            setState(() {
              currentActiveNavigation = navigation;
            });
          },
        ),
      );
    }
    return menuButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: updateSalonMenuNavigationButtons(),
          ),
          SizedBox(
            height: 24.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MenuTitle(
                  textSpans: [
                    TextSpan(text: 'Top '),
                    TextSpan(
                      text: 'services',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                ServiceItems()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
