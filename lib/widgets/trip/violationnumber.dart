import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';
int _vio = 20;
class ViolationNumber extends StatefulWidget {
  
  @override
  _ViolationNumberState createState() => _ViolationNumberState();
}

class _ViolationNumberState extends State<ViolationNumber> {
  Timer _timer;
  
  
  
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if(_vio>200)
          {
            _vio=20;
          }
          else{
            _vio = _vio + 1;
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
          ":""$_vio",
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
