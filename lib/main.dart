import 'package:flutter/material.dart';
import 'package:workout_buddy/src/app/themes.dart';
import 'package:workout_buddy/src/app/routes.dart';


void main() {
  runApp(WorkoutBuddy());
}

class WorkoutBuddy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBWOD',
      routes: customRoutes,
      theme: mainTheme,
    );
  }
}
