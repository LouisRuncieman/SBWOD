import 'package:flutter/material.dart';
import 'package:workout_buddy/src/views/stopwatch.dart';
import 'package:workout_buddy/src/theme/colors.dart';
import 'package:workout_buddy/src/theme/themes.dart';

class EmomWidget extends StatelessWidget {
  const EmomWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(circularBorderRadius),
        color: primaryBlackColor,
      ),
      child: Material(
          color: Colors.transparent,
          child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(circularBorderRadius),
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
                            color: primaryGoldColor,
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
    );
  }
}
