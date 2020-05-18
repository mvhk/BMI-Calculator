import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.newColor, this.childCard, this.onPress});

  final Color newColor;
  final Widget childCard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: childCard,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: newColor, borderRadius: BorderRadius.circular(10.0))),
    );
  }
}
