import 'package:beauty_services_app/constants.dart';
import 'package:flutter/material.dart';

class SalonMenuNavigationButton extends StatelessWidget {
  const SalonMenuNavigationButton(
      {Key? key, required this.text, this.active = false, required this.onTap})
      : super(key: key);
  final String text;
  final bool active;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            active ? EdgeInsets.symmetric(horizontal: 20, vertical: 12) : null,
        child: Text(
          text,
          style: active ? TextStyle(color: Colors.white) : null,
        ),
        decoration: active
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: kBlackButtonColor,
              )
            : null,
      ),
    );
  }
}
