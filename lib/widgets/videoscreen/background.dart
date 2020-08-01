import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Positioned(
                      child: Image(
                        width: MediaQuery.of(context).size.width * (0.75),
                        height: MediaQuery.of(context).size.height,
                        image: AssetImage("assets/images/Drone_video.jpg"),
                        fit: BoxFit.fill,
                      ),
                    );
                   
  }
}