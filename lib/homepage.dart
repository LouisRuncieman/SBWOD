import 'package:flutter/material.dart';
import 'package:workout_buddy/stopwatch.dart';
import 'package:workout_buddy/settings.dart';

class HomePageWidget extends StatelessWidget {
  // const MyStatelessWidget({Key? key}) : super(key: key);

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
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: new Text('FOR TIME'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Stopwatch()),
                        );
                      },
                    ),
                    ElevatedButton(
                      child: Text('AMRAP'),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {/** */},
                    ),
                    ElevatedButton(
                      child: Text('ROUNDS FT'),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {/** */},
                    ),
                  ],
                ),
              ],
            )
          )
        )
    );
    // body: const Center(
      //   child: Text(
      //     'This is the home page',
      //     style: TextStyle(fontSize: 24),
      //       // onPressed: () {
      //       //   Navigator.push(
      //       //     context,
      //       //     MaterialPageRoute(builder: (context) => Stopwatch()),
      //       //   );
      //       // }
      //   ),
      // ),
    // );
  }
}
