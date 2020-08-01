import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';
int _rep = 15;
int i=0;
class HotspotNumber extends StatefulWidget {
  @override
  _HotspotNumberState createState() => _HotspotNumberState();
}

class _HotspotNumberState extends State<HotspotNumber> {
  Timer _timer;
   
  void startTimer() {
    const oneSec = const Duration(seconds: 2);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if(_rep>104){
            _rep=15;
            i=0;
          }
          else{
            i=i+1;
            _rep=(2*i)-i+15;
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
          "                           :""$_rep",
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
