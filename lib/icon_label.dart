import 'package:flutter/material.dart';

class IconLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  IconLabel({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color(0xFF8D8E98),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
