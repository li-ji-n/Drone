import 'package:flutter/material.dart';
import 'package:webdev/widgets/trip/trip.dart';
import 'package:webdev/widgets/videoscreen/videoscreen.dart';
import 'package:webdev/widgets/violation.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff000F58),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * (0.75),
                height: MediaQuery.of(context).size.height,
                child: VideoScreen(),
              ),
            ),
            Container(
              color: Color(0xff000F58),
              width: MediaQuery.of(context).size.width * (0.25) - 20,
              child: Column(
                children: [
                  Violation(),
                  Trip(),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
