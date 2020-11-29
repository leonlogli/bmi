import 'package:bmi/components/bmi_card.dart';
import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResultTitle;
  final String bmiResult;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.bmiResultTitle,
      @required this.interpretation});

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
                        bmiResultTitle.toUpperCase(),
                        style: TextStyle(
                            color: Color(0xFF24d876),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                            fontSize: 64, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          interpretation,
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
