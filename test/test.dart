
import 'dart:async';

import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  void startGameSequence() async {
    

    // After audio finishes loading / starts playing, THEN I'd like the 4-second delayed timer to start. (Currently, it seems that the time starts too early because the audio takes a bit to load.)

    Future.delayed(
      const Duration(seconds: 4),
          () => startTimer(),
    );    
  }

  Timer _timer;
  double _timeRemaining = 7.00;

  void startTimer() {
    const tick = const Duration(milliseconds: 10);
    _timer = new Timer.periodic(
      tick,
          (Timer timer) => setState(
            () {
          if (_timeRemaining < 0.01) {
            timer.cancel();
          } else {
            _timeRemaining = _timeRemaining - 0.01;
          }
        },
      ),
    );
  }

  @override
  initState() {
    super.initState();
    startGameSequence();    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Text("$_timeRemaining"));
  }
}