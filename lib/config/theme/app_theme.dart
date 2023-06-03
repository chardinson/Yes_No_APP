import 'package:flutter/material.dart';

const List<Color> themeListColors = [
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.green,
  Colors.purple,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor});

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: themeListColors[selectedColor]);
  }
}
