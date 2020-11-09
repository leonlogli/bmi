import 'package:flutter/material.dart';

class BmiSlider extends StatelessWidget {
  final Function onChanged;
  final int value;

  BmiSlider({@required this.onChanged, this.value});

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of((context)).copyWith(
          activeTrackColor: Colors.white,
          thumbColor: Color(0xFFEB1555),
          overlayColor: Color(0x29eb1555),
          inactiveTrackColor: Color(0xFF8D8E98),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 24)),
      child: Slider(
          value: value.toDouble(), min: 120, max: 220, onChanged: onChanged),
    );
  }
}
