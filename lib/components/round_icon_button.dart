import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white70),
      onPressed: onPress,
      elevation: 0.0,
      constraints: BoxConstraints(minWidth: 40, minHeight: 40),
      fillColor: Color(0xff4c4f5e),
      shape: CircleBorder(),
    );
  }
}
