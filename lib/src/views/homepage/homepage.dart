import 'package:flutter/material.dart';
import 'package:workout_buddy/src/app/themes.dart';
import 'package:workout_buddy/src/views/settings.dart';
import 'package:workout_buddy/src/app/images.dart';
import 'widgets/for_time_widget.dart';
import 'widgets/rounds_for_time_widget.dart';
import 'widgets/repeat_for_time_widget.dart';
import 'widgets/AMRAP_widget.dart';
import 'widgets/EMOM_widget.dart';
import 'widgets/SBWOD_widget.dart';

class HomePageWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      body: Center(
        // alignment: Alignment.center,
        child: GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            ForTimeWidget(),
            RoundsForTimeWidget(),
            RepeatForTimeWidget(),
            AmrapWidget(),
            EmomWidget(),
            SbwodWidget(),
          ],
        )
      )
    );
  }
}
