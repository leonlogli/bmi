import 'package:flutter/material.dart';

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
                ),
              ),
              Expanded(
                child: BmiCard(
                  bgColor: cardColor,
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

class BmiCard extends StatelessWidget {
  final Color bgColor;

  BmiCard({
    @required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
    );
  }
}
