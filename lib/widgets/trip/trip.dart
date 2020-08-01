import 'package:flutter/material.dart';
import 'package:webdev/widgets/trip/alertnumber.dart';
import 'package:webdev/widgets/trip/flighttime.dart';
import 'package:webdev/widgets/trip/hotspotnumber.dart';
import 'package:webdev/widgets/trip/sirentime.dart';
import 'package:webdev/widgets/trip/time.dart';
import 'package:webdev/widgets/trip/violationnumber.dart';

class Trip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Container(
        height: MediaQuery.of(context).size.height / 2 - 15,
        color: Color(0xff38B0D6),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * (0.25) - 20,
              height: (MediaQuery.of(context).size.height / 2 - 15) * .2,
              child: Center(
                child: Text("TRIP ID:1756",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: MediaQuery.of(context).size.width / 60,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            Container(
              color: Colors.white,
              width: (MediaQuery.of(context).size.width * (0.25) - 20) * .93,
              height: (MediaQuery.of(context).size.height / 2 - 15) * .78,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: ((MediaQuery.of(context).size.width * (0.25) - 20) *
                            .93) /
                        2,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text(
                            //Total Violations
                            "Total  Violations",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.height / 45
                                  : MediaQuery.of(context).size.width / 65,
                            ),
                          ),
                          Text(
                            "Resolved Violations",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.height / 45
                                  : MediaQuery.of(context).size.width / 65,
                            ),
                          ),
                          Text(
                            "Reported Violations",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.height / 45
                                  : MediaQuery.of(context).size.width / 65,
                            ),
                          ),
                          Text(
                            "Siren Time",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width <
                                      MediaQuery.of(context).size.height
                                  ? MediaQuery.of(context).size.height / 45
                                  : MediaQuery.of(context).size.width / 65,
                            ),
                          ),
                          FlightTime(),
                          
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width:
                          ((MediaQuery.of(context).size.width * (0.25) - 20) *
                                  .93) /
                              2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          ViolationNumber(),
                          AlertNumber(),
                          HotspotNumber(),
                          TimerSiren(),
                          TimerButton(),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
