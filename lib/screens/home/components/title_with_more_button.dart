import 'package:beauty_services_app/constants.dart';
import 'package:flutter/material.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.textSpan,
  }) : super(key: key);
  final List<TextSpan> textSpan;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 20),
                children: textSpan),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'More',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            style: ButtonStyle(),
          ),
        ],
      ),
    );
  }
}
