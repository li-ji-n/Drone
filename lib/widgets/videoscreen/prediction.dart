import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';

class Prediction extends StatefulWidget {
  @override
  _PredictionrState createState() => _PredictionrState();
}

class _PredictionrState extends State<Prediction> {
  Timer _timer;
  
  int _sec = 1;
  
  void startTimer() {
    const oneSec = const Duration(seconds: 3);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_sec > 2) {
            _sec = 1;
            
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
      top: MediaQuery.of(context).size.height / 12+10,
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 5* .7,
        color: Colors.black.withOpacity(0.8),
        child: Column(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 16 * 1.5,
            width: MediaQuery.of(context).size.width / 5* .7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Prediction",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: MediaQuery.of(context).size.width / 60,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 16 * 2.5,
            width: MediaQuery.of(context).size.width / 5* .7,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width / 5) * .7,
                    child: Column(
                      children: [
                        
                        Transform.rotate(
                          angle: 270 * pi / 180,
                                                  child: Icon(Icons.arrow_forward_ios,
                              color: _sec ==1 ?Colors.green:Colors.red,
                                size: MediaQuery.of(context).size.width <
                                        MediaQuery.of(context).size.height
                                    ? MediaQuery.of(context).size.width / 20
                                    : MediaQuery.of(context).size.height / 15,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color:_sec ==2 ?Colors.green:Colors.red,
                              size: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.width / 20
                                  : MediaQuery.of(context).size.height / 15,
                            ),
                            Icon(Icons.arrow_forward_ios,
                            color: _sec ==3 ?Colors.green:Colors.red,
                              size: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.width / 20
                                  : MediaQuery.of(context).size.height / 15,),
                          ],
                        )
                      ],
                    ),
                  ),
                  
                ]),
          ),
        ]),
      ),
    );
  }
}
