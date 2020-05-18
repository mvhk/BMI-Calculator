import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTop});

  final Function onTop;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
          child: Center(
            child: Text(
              buttonTitle,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          color: Color(kBtmCtnrColor),
          margin: EdgeInsets.only(top: 10),
          height: 50),
    );
  }
}
