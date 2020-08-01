import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';
import 'dart:async';
import 'dart:html';

import 'package:google_maps/google_maps.dart' hide Icon;
import 'dart:ui' as ui;
double _lat = 11.082281;
  double _long = 75.970233;  
int _a;




class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  Timer _timer;
  void startTimer() {
    const oneSec = const Duration(milliseconds: 100);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_lat > 15) {
            _lat = 11.082281;
            _long = 75.970233;
          } else {
            _lat = _lat + 0.052;
            _lat = _lat *1000000;
            _a = _lat as int;
            _lat = _a/1000000;

            _long=_long +0.031;
            
          }
        },
      ),
    );
  }
  
  Widget getMap() {
  String htmlId = "7";
    
  // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
       var myLatlng = LatLng(_lat, _long);

      var mapOptions = MapOptions()
        ..zoom = 15
        ..center = LatLng(_lat, _long);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'Drone location'
        );

      return elem;
    });
  

    return HtmlElementView(viewType: htmlId);
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
                      left: MediaQuery.of(context).size.width /8.85,
                      bottom: 10,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        width: MediaQuery.of(context).size.width / 5.5,
                        color: Colors.black.withOpacity(0.7),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Opacity(
                                opacity: 0.7,
                                   child: getMap(),
                                // child: Image(
                                //   height:
                                //       MediaQuery.of(context).size.height / 3.8,
                                //   width: MediaQuery.of(context).size.width / 5,
                                //   image: AssetImage("assets/images/map.jpg"),
                                //   fit: BoxFit.fill,
                                // ),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                height: MediaQuery.of(context).size.height / 18,
                                width: MediaQuery.of(context).size.width / 4,
                                color: Colors.black.withOpacity(0.4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "Latitude:""$_lat",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                105,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    Text(
                                      "Longitude:""$_long",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                105,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              bottom: 0,
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 25,
                                  width: MediaQuery.of(context).size.width / 40,
                                  color: Colors.black.withOpacity(0.4),
                                  child: Icon(
                                    Icons.zoom_in,
                                    color: Colors.white.withOpacity(.8),
                                    size: MediaQuery.of(context).size.width <
                                            MediaQuery.of(context).size.height
                                        ? MediaQuery.of(context).size.width / 45
                                        : MediaQuery.of(context).size.height /
                                            35,
                                  )),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 25,
                                  width: MediaQuery.of(context).size.width / 40,
                                  color: Colors.black.withOpacity(0.4),
                                  child: Center(
                                    child: Text(
                                      "5m",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(.8),
                                        fontSize:
                                            MediaQuery.of(context).size.width <
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    55
                                                : MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    45,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
  }
}

