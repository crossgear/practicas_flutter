import 'package:flutter/material.dart';

const Color customColor = Color(0xff00796B);

const List<Color> _colorThemes = [
  customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
];

class AppTheme{
  final int selectedColor;

  AppTheme({
    required this.selectedColor,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 
  'Colors must be between 0 and ${_colorThemes.length}');


  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}