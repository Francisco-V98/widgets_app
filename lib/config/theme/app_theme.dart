import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.tealAccent,
  Colors.deepPurple,
  Colors.lightGreenAccent,
  Colors.amber,
  Colors.brown,
  Colors.pink,
  Colors.grey,
  Colors.orange,
  Colors.indigo,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }):assert( selectedColor >= 0, 'Selected color must be greater then 0' ),
    assert( selectedColor < colorList.length, 
      'Selected color must be less or equal than ${colorList.length - 1}' 
    );

  ThemeData getTheme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
    );
  }
}
