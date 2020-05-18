import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/haris/flutterApps/bmi-calculator-flutter/lib/components/bottom_button.dart';
import 'file:///C:/Users/haris/flutterApps/bmi-calculator-flutter/lib/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("BMI Calculator")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                newColor: Color(kInActiveCardColor),
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiNumberStyle,
                    ),
                    Text(interpretation)
                  ],
                ),
              ),
              flex: 9,
            ),
            BottomButton(
                buttonTitle: "RECALCULATE",
                onTop: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
