import 'package:bmi/bmi_card.dart';
import 'package:bmi/icon_label.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    final isMale = selectedGender == Gender.male;
    final isFemale = selectedGender == Gender.female;

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
                  onClick: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  bgColor: isMale ? activeCardColor : cardColor,
                  child: IconLabel(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                ),
              ),
              Expanded(
                child: BmiCard(
                  onClick: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  bgColor: isFemale ? activeCardColor : cardColor,
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
              bgColor: activeCardColor,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: BmiCard(
                  bgColor: activeCardColor,
                ),
              ),
              Expanded(
                child: BmiCard(
                  bgColor: activeCardColor,
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
