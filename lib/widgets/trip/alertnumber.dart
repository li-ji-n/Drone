import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';

int _res = 5;

class AlertNumber extends StatefulWidget {
  @override
  _AlertNumberState createState() => _AlertNumberState();
}

class _AlertNumberState extends State<AlertNumber> {
  Timer _timer;

  void startTimer() {
    const oneSec = const Duration(seconds: 2);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_res > 94) {
            _res = 0;
          } else {
            _res = _res + 1;
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
          "                            :" "$_res",
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
