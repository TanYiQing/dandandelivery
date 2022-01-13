import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.blue[200],
      primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)));

  final darkTheme = ThemeData.dark().copyWith(
      primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
      iconTheme:IconThemeData(color: Colors.white));
}
