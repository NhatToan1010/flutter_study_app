import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme {
  static TextTheme lightVarelaRound = TextTheme(
    // --- Headline ---
      headlineMedium: GoogleFonts.varelaRound(
          color: darkColor700,
          fontSize: txtHeadlineMediumSize,
          fontWeight: FontWeight.bold),
      headlineSmall: GoogleFonts.varelaRound(
          color: darkColor700,
          fontSize: txtHeadlineSmallSize,
          fontWeight: FontWeight.bold),
      // --- Title ---
      titleMedium: GoogleFonts.varelaRound(
          color: darkColor700,
          fontSize: txtTitleMediumSize,
          fontWeight: FontWeight.w500),
      titleSmall: GoogleFonts.varelaRound(
          color: darkColor700,
          fontSize: txtTitleSmallSize,
          fontWeight: FontWeight.w500),
      // --- Label
      labelMedium: GoogleFonts.varelaRound(
          color: darkColor700,
          fontSize: txtLabelMediumSize,
          fontWeight: FontWeight.w500),
      labelSmall: GoogleFonts.varelaRound(
          color: darkColor700,
          fontSize: txtLabelSmallSize,
          fontWeight: FontWeight.w500),
      // --- Body ---
      bodyLarge: GoogleFonts.varelaRound(
          color: darkColor700,
          fontSize: txtBodyLargeSize,
          fontWeight: FontWeight.w500),
      bodyMedium:
          GoogleFonts.varelaRound(color: darkColor700, fontSize: txtBodySize),
      bodySmall: GoogleFonts.varelaRound(
          color: darkColor700,
          fontSize: txtBodySmallSize,
          fontWeight: FontWeight.w300));

  static TextTheme darkVarelaRound = TextTheme(
      headlineMedium: GoogleFonts.varelaRound(
          color: lightColor500,
          fontSize: txtHeadlineMediumSize,
          fontWeight: FontWeight.bold),
      headlineSmall: GoogleFonts.varelaRound(
          color: lightColor500,
          fontSize: txtHeadlineSmallSize,
          fontWeight: FontWeight.bold),
      titleMedium: GoogleFonts.varelaRound(
          color: lightColor500,
          fontSize: txtTitleMediumSize,
          fontWeight: FontWeight.w500),
      titleSmall: GoogleFonts.varelaRound(
          color: lightColor500,
          fontSize: txtTitleSmallSize,
          fontWeight: FontWeight.w500),
      bodyMedium:
          GoogleFonts.varelaRound(color: lightColor500, fontSize: txtBodySize));
}
