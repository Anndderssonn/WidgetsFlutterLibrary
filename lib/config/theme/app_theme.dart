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
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
    : assert(selectedColor >= 0, 'Selected color must be greater than 0'),
      assert(
        selectedColor < colors.length,
        'Selected color must be less or equal than ${colors.length - 1}',
      );

  ThemeData getTheme() => ThemeData(
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colors[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: false),
  );

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode,
  );
}
