import 'package:flutter/material.dart';
import '../constants.dart';

class iconContent extends StatelessWidget {
  final String? label;
  final IconData? icon;

  iconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kSizeBoxHeight,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
