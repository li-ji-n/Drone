// import 'package:flutter/material.dart';
// import 'dart:ui';
// import 'dart:async';

// class Siren extends StatefulWidget {
//   @override
//   _SirenState createState() => _SirenState();
// }

// class _SirenState extends State<Siren> {
//   Timer _timer;
//   int _sec = 1;
//   int _alert=0;
  
//    void startTimer() {
//     const oneSec = const Duration(seconds: 2);
//     _timer = new Timer.periodic(
//       oneSec,
//       (Timer timer) => setState(
//         () {
//           if (_sec > 12) {
//             _sec = 1;
            
            
//           } else {
//             _sec = _sec + 1;
            
//           }
//           if(_alert>10){
//             _alert=0;
//           }
//           else{
//             _alert+=1;
//           }
//         },
//       ),
//     );
//   }
//   @override
//   void initState() {
//     startTimer();
//     super.initState();
//   }
//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
    
//     return Positioned(
//       right: 10,
//       top: MediaQuery.of(context).size.height / 12 +
//           10 +
//           MediaQuery.of(context).size.height / 4 +
//           MediaQuery.of(context).size.height / 6+ MediaQuery.of(context).size.height / 6,
//       child: Container(
//         height: MediaQuery.of(context).size.height / 5,
//         width: MediaQuery.of(context).size.width / 6,
//         color: Colors.black.withOpacity(0.8),
//         child: Column(children: <Widget>[
//           Container(
//             height: MediaQuery.of(context).size.height / 20 * 1.5,
//             width:MediaQuery.of(context).size.width / 5 * .7,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Text(
//                   "Alert",
//                   style: TextStyle(
//                    fontFamily: 'Raleway',
//                       fontSize: MediaQuery.of(context).size.width / 60,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 // Stack(
//                 //   children: [
//                 //     Icon(
//                 //       Icons.add_alert,
//                 //       color:_sec < 6? Color(0xff13D927):Colors.red,
//                 //       size: MediaQuery.of(context).size.width <
//                 //               MediaQuery.of(context).size.height
//                 //           ? MediaQuery.of(context).size.width / 33
//                 //           : MediaQuery.of(context).size.height / 25,
//                 //     ),
//                 //     Positioned(
//                 //       top: MediaQuery.of(context).size.width <
//                 //                 MediaQuery.of(context).size.height
//                 //             ? (MediaQuery.of(context).size.width / 33)/2 -(MediaQuery.of(context).size.width / 70)/2
//                 //             : (MediaQuery.of(context).size.height / 25)/2-(MediaQuery.of(context).size.height / 60)/2,
//                 //       left: MediaQuery.of(context).size.width <
//                 //                 MediaQuery.of(context).size.height
//                 //             ? (MediaQuery.of(context).size.width / 33)/2 -(MediaQuery.of(context).size.width / 70)/2
//                 //             : (MediaQuery.of(context).size.height / 25)/2-(MediaQuery.of(context).size.height / 60)/2,
//                 //       child: Container(
//                 //         width: MediaQuery.of(context).size.width <
//                 //                 MediaQuery.of(context).size.height
//                 //             ? MediaQuery.of(context).size.width / 70
//                 //             : MediaQuery.of(context).size.height / 60,
//                 //         height: MediaQuery.of(context).size.width <
//                 //                 MediaQuery.of(context).size.height
//                 //             ? MediaQuery.of(context).size.width / 70
//                 //             : MediaQuery.of(context).size.height / 60,
//                 //         color: _sec <6? Color(0xff13D927):Colors.red,
//                 //       ),
//                 //     )
//                 //   ],
//                 // )
//               ],
//             ),
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height / 20 * 2.5,
//             width: MediaQuery.of(context).size.width / 5 * .7,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   width: MediaQuery.of(context).size.width / 5 * .7,
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           "Gathering",
//                           style: TextStyle(
//                             fontSize: MediaQuery.of(context).size.width <
//                                     MediaQuery.of(context).size.height
//                                 ? MediaQuery.of(context).size.height / 60
//                                 : MediaQuery.of(context).size.width / 80,
//                             color:Colors.white,
//                           ),
//                         ),
//                         Icon(
//                           Icons.radio_button_checked,
//                           color: _alert > 3 ? Color(0xff13D927): Color(0xffDE0202),
//                           size: MediaQuery.of(context).size.width <
//                                   MediaQuery.of(context).size.height
//                               ? MediaQuery.of(context).size.width / 45
//                               : MediaQuery.of(context).size.height / 35,
//                         )
//                       ]),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width / 5 * .7,
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           "Mask",
//                           style: TextStyle(
//                             fontSize: MediaQuery.of(context).size.width <
//                                     MediaQuery.of(context).size.height
//                                 ? MediaQuery.of(context).size.height / 60
//                                 : MediaQuery.of(context).size.width / 80,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Icon(
//                           Icons.radio_button_checked,
//                           color:_alert < 8 ?  Color(0xffDE0202):Color(0xff13D927),
//                           size: MediaQuery.of(context).size.width <
//                                   MediaQuery.of(context).size.height
//                               ? MediaQuery.of(context).size.width / 45
//                               : MediaQuery.of(context).size.height / 35,
//                         )
//                       ]),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width / 5 * .7,
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           "Distance",
//                           style: TextStyle(
//                             fontSize: MediaQuery.of(context).size.width <
//                                     MediaQuery.of(context).size.height
//                                 ? MediaQuery.of(context).size.height / 60
//                                 : MediaQuery.of(context).size.width / 80,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Icon(
//                           Icons.radio_button_checked,
//                           color: _alert >6 ? Color(0xffDE0202):Color(0xff13D927),
//                           size: MediaQuery.of(context).size.width <
//                                   MediaQuery.of(context).size.height
//                               ? MediaQuery.of(context).size.width / 45
//                               : MediaQuery.of(context).size.height / 35,
//                         )
//                       ]),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }









import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';

class Siren extends StatefulWidget {
  @override
  _SirenState createState() => _SirenState();
}

class _SirenState extends State<Siren> {
  Timer _timer;
  int _alert=0;
  
   void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if(_alert>15){
            _alert=0;
          }
          else{
            _alert+=1;
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
          MediaQuery.of(context).size.height / 6+MediaQuery.of(context).size.height / 6),
      child: Container(
        height: MediaQuery.of(context).size.height / 5.5,
        width: MediaQuery.of(context).size.width / 5 * .7,
        color: Colors.black.withOpacity(0.8),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 5 * .5,
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                    height: MediaQuery.of(context).size.height / 16 * 1,
                    width: MediaQuery.of(context).size.width / 5 * .7,
                    child: Center(
                      child: Text(
                        "Alert",
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
                      width: MediaQuery.of(context).size.width / 5 * .7,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Gathering",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width <
                                        MediaQuery.of(context).size.height
                                    ? MediaQuery.of(context).size.height / 60
                                    : MediaQuery.of(context).size.width / 80,
                                color:Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.radio_button_checked,
                              color: (_alert > 5 && _alert <10) ||_alert > 12 ? Color(0xffDE0202): Color(0xff13D927),
                              size: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.width / 45
                                  : MediaQuery.of(context).size.height / 35,
                            )
                          ]),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5 * .7,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Masks",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width <
                                        MediaQuery.of(context).size.height
                                    ? MediaQuery.of(context).size.height / 60
                                    : MediaQuery.of(context).size.width / 80,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.radio_button_checked,
                              color:(_alert > 9 && _alert <13)||_alert == 6  ? Color(0xffDE0202): Color(0xff13D927),
                              size: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.width / 45
                                  : MediaQuery.of(context).size.height / 35,
                            )
                          ]),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5 * .7,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Distance",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width <
                                        MediaQuery.of(context).size.height
                                    ? MediaQuery.of(context).size.height / 60
                                    : MediaQuery.of(context).size.width / 80,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.radio_button_checked,
                              color: (_alert > 12 && _alert <17)||_alert == 8 ?Color(0xffDE0202): Color(0xff13D927),
                              size: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.width / 45
                                  : MediaQuery.of(context).size.height / 35,
                            )
                          ]),
                    ),
                    SizedBox(height:10)
                  ],
                ),
          ),
        ),
      ),
    );
  }
}

