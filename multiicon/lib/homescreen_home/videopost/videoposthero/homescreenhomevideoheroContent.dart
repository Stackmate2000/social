import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/videopost/videoposthero/video_hero_buttons/homescreenhomevideocontentButtons.dart';

class HomeScreenHomeVideoHeroContent extends StatefulWidget {
  @override
  _HomeScreenHomeVideoHeroContentState createState() =>
      _HomeScreenHomeVideoHeroContentState();
}

class _HomeScreenHomeVideoHeroContentState
    extends State<HomeScreenHomeVideoHeroContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Hero(
                          tag: "postVideo",
                          child: Image(
                            image: AssetImage("assets/holi.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      child: HomeScreenHomeVideoContentButtons(),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
