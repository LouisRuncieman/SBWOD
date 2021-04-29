import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_buddy/src/views/settings.dart';
import 'colors.dart';
import 'images.dart';

double circularBorderRadius = 12.0;

ThemeData mainTheme = new ThemeData(
  fontFamily: GoogleFonts.robotoSlab().fontFamily,
  brightness: Brightness.dark,
  primaryColor: primaryBlackColor,
  accentColor: primaryGoldColor,
  highlightColor: primaryGoldColor,
);

AppBar customAppBar = new AppBar(
  centerTitle: true,
  title: Image.asset(AppImages.SbwodIcon, height:35, alignment: Alignment.center),
  // actions: <Widget>[
  //   IconButton(
  //       icon: const Icon(Icons.settings),
  //       tooltip: 'Go to settings',
  //       onPressed: () {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => SettingsWidget()),
  //         );
  //       }
  //   ),
  // ],
);
