import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemeData {
  static ThemeData lightMood = ThemeData(
      scaffoldBackgroundColor: mintGreen,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey));
  static ThemeData darkMood = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey));
}
