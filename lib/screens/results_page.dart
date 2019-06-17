import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/calculate_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.resultBMI,
      @required this.resultSummary,
      @required this.resultInterpretation});

  final String resultBMI;
  final String resultSummary;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomCenter,
                child: Text('Your Results',
//                    textAlign: TextAlign.center,
                    style: kResultsTitleTextStyle)),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultSummary.toUpperCase(),
                      style: kResultSummaryTextStyle),
                  Text(resultBMI, style: kBMITextStyle),
                  Text(resultInterpretation,
                      textAlign: TextAlign.center,
                      style: kInterpretationTextStyle),
                ],
              ),
            ),
          ),
          CalculateButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
