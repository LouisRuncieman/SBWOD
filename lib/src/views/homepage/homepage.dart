import 'package:flutter/material.dart';
import 'package:workout_buddy/src/views/settings.dart';
import 'for_time_widget.dart';
import 'rounds_for_time_widget.dart';
import 'repeat_for_time_widget.dart';
import 'AMRAP_widget.dart';
import 'EMOM_widget.dart';
import 'SBWOD_widget.dart';

class HomePageWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/SBWOD.png', height:35, alignment: Alignment.center),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Go to settings',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsWidget()),
                );
              }
          ),
        ],
      ),
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
            AMRAPWidget(),
            EMOMWidget(),
            SBWODWidget(),
          ],
        )
      )
    );
  }
}
