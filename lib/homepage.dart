import 'package:flutter/material.dart';
import 'package:workout_buddy/stopwatch.dart';
import 'package:workout_buddy/settings.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/SBWOD.png', height:35, alignment: Alignment.center),
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Stopwatch())
                    );
                  },
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Icon(
                            Icons.timer,
                            color: Color.fromRGBO(220, 171, 18, 1.0),
                            size: 75.0,
                          ),
                        ),
                        Text(
                          "FOR TIME",
                          style: TextStyle(fontSize: 20)
                        )
                      ]
                    )
                  )
                )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stopwatch())
                        );
                      },
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.add_alarm,
                                    color: Color.fromRGBO(220, 171, 18, 1.0),
                                    size: 75.0,
                                  ),
                                ),
                                Text(
                                    "ROUNDS FT",
                                    style: TextStyle(fontSize: 20)
                                )
                              ]
                          )
                      )
                  )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stopwatch())
                        );
                      },
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.replay_5,
                                    color: Color.fromRGBO(220, 171, 18, 1.0),
                                    size: 75.0,
                                  ),
                                ),
                                Text(
                                    "REPEAT FT",
                                    style: TextStyle(fontSize: 20)
                                )
                              ]
                          )
                      )
                  )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stopwatch())
                        );
                      },
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.alarm,
                                    color: Color.fromRGBO(220, 171, 18, 1.0),
                                    size: 75.0,
                                  ),
                                ),
                                Text(
                                    "AMRAP",
                                    style: TextStyle(fontSize: 20)
                                )
                              ]
                          )
                      )
                  )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stopwatch())
                        );
                      },
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.threesixty,
                                    color: Color.fromRGBO(220, 171, 18, 1.0),
                                    size: 75.0,
                                  ),
                                ),
                                Text(
                                    "EMOM",
                                    style: TextStyle(fontSize: 20)
                                )
                              ]
                          )
                      )
                  )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      onTap: () {_launchURL();},
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Image.asset('assets/images/SBWOD.png', height:75, alignment: Alignment.center),
                                ),
                                Text(
                                    "SBWOD",
                                    style: TextStyle(fontSize: 20)
                                )
                              ]
                          )
                      )
                  )
              ),
            ),
          ],
        )
      )
    );
  }
}

_launchURL() async {
  const url = 'https://www.instagram.com/sandbagwod/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
