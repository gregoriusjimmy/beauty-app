import 'package:flutter/material.dart';

class MenuTitle extends StatelessWidget {
  const MenuTitle({
    Key? key,
    required this.textSpans,
  }) : super(key: key);

  final List<TextSpan> textSpans;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headline5,
        children: textSpans,
      ),
    );
  }
}
