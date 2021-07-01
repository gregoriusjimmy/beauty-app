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
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: !active
            ? EdgeInsets.symmetric(horizontal: size.width * 0.03, vertical: 12)
            : null,
        padding: active
            ? EdgeInsets.symmetric(horizontal: size.width * 0.03, vertical: 12)
            : null,
        child: Text(
          text,
          style: active ? TextStyle(color: Colors.white) : null,
        ),
        decoration: active
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * 0.05),
                color: kBlackButtonColor,
              )
            : null,
      ),
    );
  }
}
