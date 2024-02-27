import 'package:flutter/material.dart';

const colorsList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0,
          'SelectedColor must be greeter than 0',
        ),
        assert(
          selectedColor < colorsList.length,
          'SelectedColor must be less or equal than ${colorsList.length - 1}',
        );

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorsList[selectedColor],
      );
}
