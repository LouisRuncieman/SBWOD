import 'dart:async';

import 'package:flutter/material.dart';
import 'package:workout_buddy/src/app/colors.dart';
import 'package:workout_buddy/src/app/themes.dart';

class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  bool isStopwatchPaused = false;
  bool stopwatchReset = true;
  bool flag = true;
  Stream<int> timerStream;
  StreamSubscription<int> timerSubscription;
  String hoursStr = '00';
  String minutesStr = '00';
  String secondsStr = '00';

  Stream<int> stopWatchStream() {
    StreamController<int> streamController;
    Timer timer;
    Duration timerInterval = Duration(seconds: 1);
    int counter = 0;

    void stopTimer() {
      if (timer != null) {
        timer.cancel();
        timer = null;
        counter = 0;
        streamController.close();
      }
    }

    void tick(_) {
      counter++;
      streamController.add(counter);
      if (!flag) {
        stopTimer();
      }
    }

    void startTimer() {
      timer = Timer.periodic(timerInterval, tick);
    }

    // void pauseTimer() {
    //   streamController.add(pause)
    // }
    // void resumeTimer() {
    //   // timer = Timer.pause(, tick);
    // }

    streamController = StreamController<int>(
      onListen: startTimer,
      onCancel: stopTimer,
      onResume: startTimer,
      onPause: stopTimer,
    );

    return streamController.stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Stopwatch")),
      appBar: customAppBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.timer,
              color: primaryGoldColor,
              size: 75.0,
            ),
            Text(
              'FOR TIME',
              style: TextStyle(
                fontSize: 60.0,
              ),
            ),
            Text(
              "$hoursStr:$minutesStr:$secondsStr",
              style: TextStyle(
                fontSize: 90.0,
              ),
            ),
            SizedBox(height: 30.0),
            buildRow(),
          ],
        ),
      ),
    );
  }

  // ElevatedButton pauseOrResumeButton() {
  //   if (!isStopwatchPaused) {
  //     return ElevatedButton(
  //       style: ElevatedButton.styleFrom(primary: Colors.blue),
  //       onPressed: () {
  //         isStopwatchPaused = true;
  //         timerSubscription.pause();
  //         // todo
  //       },
  //       child:
  //       Text(
  //         'PAUSE',
  //         style: TextStyle(
  //           fontSize: 20.0,
  //         ),
  //       ),
  //     );
  //   }
  //   else {
  //     return ElevatedButton(
  //       style: ElevatedButton.styleFrom(primary: Colors.blue),
  //       onPressed: () {
  //         isStopwatchPaused = false;
  //         timerSubscription.resume();
  //         // todo
  //       },
  //       child:
  //       Text(
  //         'RESUME',
  //         style: TextStyle(
  //           fontSize: 20.0,
  //         ),
  //       ),
  //     );
  //   }
  // }

  ElevatedButton pauseOrResumeButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.blue),
      onPressed: () {
        if(isStopwatchPaused) {
          isStopwatchPaused = false;
          // timerSubscription?.resume(); // performing a null check operation here...
        }
        else {
          isStopwatchPaused = true;
          // timerSubscription?.pause();
        }
        // if (!isStopwatchPaused) {
        //   pauseResumeButtonText = 'RESUME';
        //   isStopwatchPaused = true;
        //   timerSubscription.pause();
        // }
        // else {
        //   pauseResumeButtonText = 'PAUSE';
        //   isStopwatchPaused = false;
        //   timerSubscription.resume();
        // }
        // todo
      },
      child:
      Text(
        isStopwatchPaused ? 'RESUME' : 'PAUSE',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Row buildRow() {
    if (stopwatchReset) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () {
                stopwatchReset = false;
                timerStream = stopWatchStream();
                timerSubscription = timerStream.listen((int newTick) {
                  if (mounted) {
                    setState(() {
                      hoursStr = ((newTick / (60 * 60)) % 60)
                          .floor()
                          .toString()
                          .padLeft(2, '0');
                      minutesStr = ((newTick / 60) % 60)
                          .floor()
                          .toString()
                          .padLeft(2, '0');
                      secondsStr =
                          (newTick % 60).floor().toString().padLeft(2, '0');
                    });
                  }
                });
              },
              child: Text(
                'START',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            )
          ]
      );
    }
    else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          pauseOrResumeButton(),
          SizedBox(width: 40.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
            onPressed: () {
              stopwatchReset = true;
              isStopwatchPaused = false;
              timerSubscription.cancel();
              timerStream = null;
              if (mounted) {
                setState(() {
                  hoursStr = '00';
                  minutesStr = '00';
                  secondsStr = '00';
                });
              }
            },
            child: Text(
              'RESET',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      );
    }
  }
}
