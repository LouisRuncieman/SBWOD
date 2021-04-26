import 'package:flutter/material.dart';
import 'package:workout_buddy/stopwatch.dart';
import 'package:workout_buddy/settings.dart';

class HomePageWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SBWOD Workout Buddy'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
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
      body:
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(50),
                  child: ElevatedButton(
                    child: new Text('FOR TIME'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Stopwatch()),
                      );
                    },
                  ),
                ),
            Padding(
              padding: EdgeInsets.all(50),
              child: ElevatedButton(
                child: Text('AMRAP'),
                onPressed: () {/** */},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: ElevatedButton(
                child: Text('ROUNDS FT'),
                onPressed: () {/** */},
              ),
            ),
              ],
            )
          )
        )
    );
  }
}
