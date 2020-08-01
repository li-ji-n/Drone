import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:webdev/hand_cursor.dart';

class StatusBar extends StatelessWidget {
  static final boxDecoration = BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withAlpha(60),
            blurRadius: 5,
            offset: Offset(0, 8),
            spreadRadius: 2)
      ]);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width * (0.75),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.7),
                Color(0xffA8D600).withOpacity(0.5)
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(2.1, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 100,
              child: Image(
                image: AssetImage("assets/drone.png"),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "BRUTUS ",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: MediaQuery.of(context).size.width / 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                    ": ",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                HandCursor(
                    child: Container(
                      child: InkWell(
                  child: Text(
                      "COVID FIGHTER DRONE",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                  ),
                  onTap: () =>
                        launch('https://brutus-cfd.github.io/drone-brutus/#/'),
                ),
                    )),
              ],
            ),
            SizedBox(
              width: 100,
            ),
            // MirrorAnimation<double>(
            //   tween: (00.0).tweenTo(-MediaQuery.of(context).size.width *
            //       (0.53)-100), // <-- value for offset x-coordinate
            //   duration: 5.seconds,
            //   curve: Curves.easeInOutSine, // <-- non-linear animation
            //   builder: (context, child, value) {
            //     return Transform.translate(
            //       offset: Offset(
            //           value, 0), // <-- use animated value for x-coordinate
            //       child: child,
            //     );
            //   },
            //   child: Image(
            //     image: AssetImage("assets/drone.png"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
