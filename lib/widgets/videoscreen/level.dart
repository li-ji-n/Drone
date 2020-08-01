import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';

class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  Timer _timer;
  int _sec = 0;
  
  void startTimer() {
    const oneSec = const Duration(seconds: 2);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_sec > 9) {
            _sec = 0;
            
          } else {
            _sec = _sec + 1;
          }
        },
      ),
    );
  }
  @override
  void initState() {
    startTimer();
    super.initState();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    
    return Positioned(
      right: 10,
      top: (MediaQuery.of(context).size.height / 12+10+MediaQuery.of(context).size.height / 4),
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width / 5* .7,
        color: Colors.black.withOpacity(0.8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 16 * 1,
            width: MediaQuery.of(context).size.width / 5* .7,
            child: Center(
              child: Text(
                "Altitude Level",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: MediaQuery.of(context).size.width / 60,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 16 * 1.5,
            width: MediaQuery.of(context).size.width / 5* .7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width:(MediaQuery.of(context).size.width / 5* .7)*.1,
                  height: (MediaQuery.of(context).size.height / 16 * 1.5)*.3,
                  color: _sec < 3? Colors.green:Colors.red,
                ),
                Container(
                  width:(MediaQuery.of(context).size.width / 5* .7)*.1,
                  height: (MediaQuery.of(context).size.height / 16 * 1.5)*.6,
                  color: _sec < 6 && _sec >=3?Colors.green:Colors.red,
                ),
                Container(
                  width:(MediaQuery.of(context).size.width / 5* .7)*.1,
                  height: (MediaQuery.of(context).size.height / 16 * 1.5)*.9,
                  color: _sec < 11 && _sec >=6?Colors.green:Colors.red,
                ),
              ],
            ),),
           ]),
           
      ),
    );
  }
}
