import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/utils/themes/widget_themes/button_theme.dart';
import 'package:flutter_study_app/src/utils/themes/widget_themes/text_theme.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    textTheme: MyTextTheme.lightVarelaRound,
    outlinedButtonTheme: MyButtonTheme.lightOutlinedButton,
    elevatedButtonTheme: MyButtonTheme.lightElevatedButton,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    textTheme: MyTextTheme.darkVarelaRound,
    outlinedButtonTheme: MyButtonTheme.darkOutlinedButton,
    elevatedButtonTheme: MyButtonTheme.darkElevatedButton,
  );
}
