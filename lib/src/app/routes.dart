import 'package:flutter/material.dart';
import 'package:workout_buddy/src/views/homepage/homepage.dart';
import 'package:workout_buddy/src/views/stopwatch/stopwatch.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => HomePageWidget(),
  '/stopwatch': (context) => Stopwatch(),
};
