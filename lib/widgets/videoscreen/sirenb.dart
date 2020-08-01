import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';
class Sirenb extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Sirenb> {
  Timer _timer;
  int _sir =0;

  void startTimer() {
    const oneSec = const Duration(seconds:1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_sir > 15) {
            _sir = 0;
          } else {
            _sir = _sir+1;
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
      top: (MediaQuery.of(context).size.height / 12 +
          10 +
          MediaQuery.of(context).size.height / 4 +
          MediaQuery.of(context).size.height / 6),
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width / 5 * .7,
        color: Colors.black.withOpacity(0.8),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 16 * 1,
                width: MediaQuery.of(context).size.width / 5 * .7,
                child: Center(
                  child: Text(
                    "Siren Status",
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
                height: MediaQuery.of(context).size.height / 16 * 1,
                width: MediaQuery.of(context).size.width / 5 * .5,
                child: Icon(
                              Icons.settings_remote,
                              color:_sir < 6 ?  Color(0xffDE0202):Color(0xff13D927),
                              size: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.width / 20
                                  : MediaQuery.of(context).size.height / 10,
                            )
              ),
            ]),
      ),
    );
  }
}
