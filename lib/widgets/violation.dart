import 'package:flutter/material.dart';
import 'dart:async';

class Violation extends StatefulWidget {
  @override
  _ViolationState createState() => _ViolationState();
}

class _ViolationState extends State<Violation> {
  Timer _timer;
  int _sec = 0;
  
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_sec > 30) {
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
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 5,
          ),
          color: Color(0xff5A6585),
        ),
        height: MediaQuery.of(context).size.height / 2 - 15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.black.withOpacity(.5),
              width: MediaQuery.of(context).size.width * (0.25) - 20,
              height: (MediaQuery.of(context).size.height / 2 - 15) * .18,
              child: Center(
                child: Text(
                  "Violations",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: MediaQuery.of(context).size.width / 60,
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              width: (MediaQuery.of(context).size.width * (0.25) - 20) * .93,
              height: (MediaQuery.of(context).size.height / 2 - 15) * .75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: Container(
                      width: (MediaQuery.of(context).size.width * (0.25) - 20) *
                          .93,
                      height: ((MediaQuery.of(context).size.height / 2 - 15) *
                              .75) /
                          2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width:
                                (((MediaQuery.of(context).size.width * (0.25) -
                                                20) *
                                            .93) /
                                        2) *
                                    .90,
                            height: (((MediaQuery.of(context).size.height / 2 -
                                            15) *
                                        .75) /
                                    2) *
                                .95,
                            child: Stack(children: [
                              Positioned(
                                child: Image(
                                  width: MediaQuery.of(context).size.width *
                                      (0.75),
                                  height: MediaQuery.of(context).size.height,
                                  image:(_sec >8 && _sec<13) ||(_sec >15 && _sec<23) ||(_sec >26 && _sec<30) ? AssetImage("assets/images/1.jpg"):AssetImage("assets/images/4.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 30,
                                    width:
                                        MediaQuery.of(context).size.width / 40,
                                    color: Colors.black.withOpacity(0.4),
                                    child: Center(
                                        child: Text(
                                      "001",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    55
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    75,
                                      ),
                                    ))),
                              ),
                            ]),
                          ),
                          Container(
                            width:
                                (((MediaQuery.of(context).size.width * (0.25) -
                                                20) *
                                            .93) /
                                        2) *
                                    .90,
                            height: (((MediaQuery.of(context).size.height / 2 -
                                            15) *
                                        .75) /
                                    2) *
                                .95,
                            child: Stack(children: [
                              Positioned(
                                child: Image(
                                  width: MediaQuery.of(context).size.width *
                                      (0.75),
                                  height: MediaQuery.of(context).size.height,
                                  image: (_sec >3 && _sec<8) ||(_sec >12 && _sec<18) ||(_sec >22 && _sec<30) ? AssetImage("assets/images/2.jpg"):AssetImage("assets/images/3.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 30,
                                    width:
                                        MediaQuery.of(context).size.width / 40,
                                    color: Colors.black.withOpacity(0.4),
                                    child: Center(
                                        child: Text(
                                      "011",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    55
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    75,),
                                    ))),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: (MediaQuery.of(context).size.width * (0.25) - 20) *
                          .93,
                      height: ((MediaQuery.of(context).size.height / 2 - 15) *
                              .75) /
                          2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width:
                                (((MediaQuery.of(context).size.width * (0.25) -
                                                20) *
                                            .93) /
                                        2) *
                                    .90,
                            height: (((MediaQuery.of(context).size.height / 2 -
                                            15) *
                                        .75) /
                                    2) *
                                .95,
                            child: Stack(children: [
                              Positioned(
                                child: Image(
                                  width: MediaQuery.of(context).size.width *
                                      (0.75),
                                  height: MediaQuery.of(context).size.height,
                                  image: (_sec >5 && _sec<10) ||(_sec >13 && _sec<20) ||(_sec >23 && _sec<28) ? AssetImage("assets/images/3.jpg"):AssetImage("assets/images/2.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 30,
                                    width:
                                        MediaQuery.of(context).size.width / 40,
                                    color: Colors.black.withOpacity(0.4),
                                    child: Center(
                                        child: Text(
                                      "011",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    55
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    75,),
                                    ))),
                              ),
                            ]),
                          ),
                          Container(
                            width:
                                (((MediaQuery.of(context).size.width * (0.25) -
                                                20) *
                                            .93) /
                                        2) *
                                    .90,
                            height: (((MediaQuery.of(context).size.height / 2 -
                                            15) *
                                        .75) /
                                    2) *
                                .95,
                            child: Stack(children: [
                              Positioned(
                                child: Image(
                                  width: MediaQuery.of(context).size.width *
                                      (0.75),
                                  height: MediaQuery.of(context).size.height,
                                  image: (_sec >8 && _sec<13) ||(_sec >15 && _sec<23) ||(_sec >26 && _sec<30) ? AssetImage("assets/images/4.jpg"):AssetImage("assets/images/1.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 30,
                                    width:
                                        MediaQuery.of(context).size.width / 40,
                                    color: Colors.black.withOpacity(0.4),
                                    child: Center(
                                        child: Text(
                                      "001",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    55
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    75,),
                                    ))),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}