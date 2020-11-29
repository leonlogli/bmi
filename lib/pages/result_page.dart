import 'package:bmi/components/bmi_card.dart';
import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your result",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            )),
            Expanded(
                flex: 5,
                child: BmiCard(
                  bgColor: activeCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Normal",
                        style: TextStyle(
                            color: Color(0xFF24d876),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '15.5',
                        style: TextStyle(
                            fontSize: 64, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Your BMI result is quite low. You sould eat more",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )),
            BottomButton(
              text: "RE-CALCUATE",
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
