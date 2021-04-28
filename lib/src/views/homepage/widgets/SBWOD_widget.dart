import 'package:flutter/material.dart';
import 'package:workout_buddy/src/theme/colors.dart';
import 'package:workout_buddy/src/views/utils/launch_url.dart';
import 'package:workout_buddy/src/theme/images.dart';
import 'package:workout_buddy/src/theme/themes.dart';

class SbwodWidget extends StatelessWidget {
  const SbwodWidget({
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
              onTap: () {launchURL();},
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Image.asset(AppImages.SbwodIcon, height:75, alignment: Alignment.center),
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
    );
  }
}
