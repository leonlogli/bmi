import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color bgColor;
  final Widget child;
  final Function onPressed;

  BmiCard({@required this.bgColor, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
      ),
    );
  }
}
