import 'package:flutter/material.dart';
import 'package:webdev/widgets/videoscreen/backgroundvideo.dart';
import 'package:webdev/widgets/videoscreen/level.dart';
import 'package:webdev/widgets/videoscreen/siren.dart';
import 'package:webdev/widgets/videoscreen/sirenb.dart';
import 'package:webdev/widgets/videoscreen/prediction.dart';
import 'package:webdev/widgets/videoscreen/Map/map.dart';
import 'package:webdev/widgets/videoscreen/statusbar.dart';

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
                  children: <Widget>[
                    
                    VideoApp(),
                    StatusBar(),
                    Map(),
                    Prediction(),
                    Level(),
                    Siren(),
                    Sirenb(),
                  ],
                
      
    );
  }
}