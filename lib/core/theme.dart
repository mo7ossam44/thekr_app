// theme.dart
import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.green,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: kAppBarFontSize),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black87),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xff1C1A1A),
  scaffoldBackgroundColor: const Color(0xff1C1A1A),
  cardColor: Colors.grey[900],
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff1C1A1A),
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: kAppBarFontSize),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white70),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
);
