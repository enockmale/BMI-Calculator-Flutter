import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CalculateButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;

  CalculateButton({@required this.buttonText, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
//              alignment: Alignment.center,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child:
            Center(child: Text(buttonText, style: kCalculateButtonTextStyle)),
      ),
    );
  }
}
