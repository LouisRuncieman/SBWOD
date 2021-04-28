import 'package:flutter/material.dart';
import 'package:workout_buddy/src/views/homepage/homepage.dart';
import 'package:workout_buddy/src/theme/style.dart';

void main() {
  runApp(WorkoutBuddy());
}

class WorkoutBuddy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBWOD',
      home: HomePageWidget(),
      theme: mainTheme,
    );
  }
}
