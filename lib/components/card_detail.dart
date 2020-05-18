import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  CardDetails({@required this.iconType, @required this.iconText});
  final String iconText;
  final IconData iconType;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconType, size: 80.0, color: Colors.white),
        SizedBox(height: 15),
        Text(iconText, style: kLabelTextStyle)
      ],
    );
  }
}
