import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';

class MyButtonTheme {
  static final lightOutlinedButton = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: darkColor700,
          fixedSize: const Size(btnWidth, btnHeight),
          padding: const EdgeInsets.symmetric(vertical: defaultPaddingSize),
          side: const BorderSide(color: darkColor700, width: 2.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)))));
  static final darkOutlinedButton = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: lightColor700,
          fixedSize: const Size(btnWidth, btnHeight),
          padding: const EdgeInsets.symmetric(vertical: defaultPaddingSize),
          side: const BorderSide(color: lightColor700, width: 2.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)))));

  static final lightElevatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: darkColor700,
          foregroundColor: lightColor500,
          fixedSize: const Size(btnWidth, btnHeight),
          padding: const EdgeInsets.symmetric(vertical: defaultPaddingSize),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)))));
  static final darkElevatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: lightColor700,
          foregroundColor: darkColor500,
          fixedSize: const Size(btnWidth, btnHeight),
          padding: const EdgeInsets.symmetric(vertical: defaultPaddingSize),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)))));
}
