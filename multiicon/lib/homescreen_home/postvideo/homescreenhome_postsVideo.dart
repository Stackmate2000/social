import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/postsecond/reacts_captions_pum_posttwo/homescreenhome_PCS_two.dart';
import 'package:multiicon/homescreen_home/postvideo/reacts_caption_pum_video/homescreenhomeReacts_video.dart';
import 'package:multiicon/homescreen_home/postvideo/reacts_caption_pum_video/homescreenhome_PCS_video.dart';
import 'package:multiicon/homescreen_home/postvideo/reacts_caption_pum_video/homescreenhomecaptionVideo.dart';

class HomeScreenHomePostVideo extends StatefulWidget {
  @override
  _HomeScreenHomePostVideoState createState() =>
      _HomeScreenHomePostVideoState();
}

class _HomeScreenHomePostVideoState extends State<HomeScreenHomePostVideo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: HomeScreenHomePCSVideo(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onDoubleTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width * 0.89,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/holis.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.89,
                child: HomeScreenHomeReactsVideo(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.89,
                child: HomeScreenHomeCaptionVideo(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
