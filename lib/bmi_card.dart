import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color bgColor;
  final Widget child;

  BmiCard({@required this.bgColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
    );
  }
}
