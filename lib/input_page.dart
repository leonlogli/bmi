import 'package:bmi/bmi_card.dart';
import 'package:bmi/icon_label.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: BmiCard(
                  bgColor: cardColor,
                  child: IconLabel(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                ),
              ),
              Expanded(
                child: BmiCard(
                  bgColor: cardColor,
                  child: IconLabel(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE",
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: BmiCard(
              bgColor: cardColor,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: BmiCard(
                  bgColor: cardColor,
                ),
              ),
              Expanded(
                child: BmiCard(
                  bgColor: cardColor,
                ),
              ),
            ],
          )),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
