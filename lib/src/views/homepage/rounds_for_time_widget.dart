import 'package:flutter/material.dart';
import 'package:workout_buddy/src/views/stopwatch.dart';

class RoundsForTimeWidget extends StatelessWidget {
  const RoundsForTimeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}