import 'package:flutter/material.dart';
import 'package:workout_buddy/src/app/colors.dart';
import 'package:workout_buddy/src/app/themes.dart';

class RepeatForTimeWidget extends StatelessWidget {
  const RepeatForTimeWidget({
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
                Navigator.pushNamed(context, '/stopwatch');
              },
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Icon(
                            Icons.replay_5,
                            color: primaryGoldColor,
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
    );
  }
}
