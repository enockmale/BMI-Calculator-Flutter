import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  CustomIcon({@required this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0),
        SizedBox(height: 10),
        Text(
          title,
          style: kTitleTextStyle,
        ),
      ],
    );
  }
}
