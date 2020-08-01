import 'package:flutter/material.dart';

class FlightTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      //FlightTime
                            "FlightTimer",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.height / 45
                                  : MediaQuery.of(context).size.width / 65,
                            ),
    );
  }
}