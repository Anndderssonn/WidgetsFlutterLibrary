import 'package:flutter/material.dart';

const colors = <Color>[
  Colors.indigo,
  Colors.deepPurple,
  Colors.teal,
  Colors.amberAccent,
  Colors.pinkAccent,
  Colors.cyan,
  Colors.blueGrey,
  Colors.green,
  Colors.orange,
  Color(0xFF7331DE),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0, 'Selected color must be greater than 0'),
      assert(
        selectedColor < colors.length,
        'Selected color must be less or equal than ${colors.length - 1}',
      );

  ThemeData getTheme() => ThemeData(colorSchemeSeed: colors[selectedColor]);
}
