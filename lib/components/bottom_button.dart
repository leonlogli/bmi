import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  BottomButton({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        width: double.infinity,
        height: 64,
      ),
    );
  }
}
