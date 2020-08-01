import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';

class TimerSiren extends StatefulWidget {
  @override
  _TimerSirenState createState() => _TimerSirenState();
}

class _TimerSirenState extends State<TimerSiren> {
  Timer _timer;
  int _min = 0;
  int _sec = 0;
  int _flag=0;
  
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          _flag=_flag+1;
          if(_flag>5){
            _sec = _sec + 1;

          }
          if(_flag>16){
            _flag =0;
          }
          if (_sec > 59) {
            _sec = 0;
            _min += 1;
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
    
    return Column(
      children: <Widget>[
        // RaisedButton(
        //   onPressed: () {
        //     startTimer();
        //   },
        //   child: Text("start"),
        // ),
        Text(
          "                            :""$_min""Min ""$_sec""sec",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width <
                    MediaQuery.of(context).size.height
                ? MediaQuery.of(context).size.height / 45
                : MediaQuery.of(context).size.width / 65,
          ),
        )
      ],
    );
  }
}
