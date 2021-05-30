import 'package:flutter/material.dart';

class ColorChoice {
  final Color? primary;
  final List<Color>? gradient;

  ColorChoice({
    @required this.primary,
    @required this.gradient,
  });
}

class ColorChoices {
  static List<ColorChoice> colors = [
    ColorChoice(primary: Color(0xFF5A89E6), gradient: [
      Color.fromRGBO(9, 9, 121, 1.0),
      Color.fromRGBO(0, 212, 255, 1.0),
    ]),
  ];
}
