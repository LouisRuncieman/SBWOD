import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color goldenRodColor = const Color.fromRGBO(220, 171, 18, 1.0);

ThemeData mainTheme = new ThemeData(
  fontFamily: GoogleFonts.robotoSlab().fontFamily,

  brightness: Brightness.dark,
  primaryColor: Colors.black,
  accentColor: goldenRodColor,
  highlightColor: goldenRodColor,

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      minimumSize: Size(100.0, 50.0),
    )
  ),
);
