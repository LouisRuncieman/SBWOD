import 'package:flutter/material.dart';
import 'package:workout_buddy/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePageWidget(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Color.fromRGBO(220, 171, 18, 1.0),

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              minimumSize: Size(100.0, 50.0),
            )
        ),
        fontFamily: GoogleFonts.robotoSlab().fontFamily,
        // fontFamily: 'Raleway',

      ),
    );
  }
}
