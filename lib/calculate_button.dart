import 'package:flutter/material.dart';
import 'package:bmi/result_page.dart';

class CalculateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultPage()));
      },
      child: Container(
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            "CALCULATE",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        width: double.infinity,
        height: 64,
      ),
    );
  }
}
