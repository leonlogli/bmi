import 'package:flutter/material.dart';

class RounndIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RounndIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 20,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
    );
  }
}
