import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/animation/animatedcamera/animatedMusic_button.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/story_Newpost.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/storyNewpost_tabbar.dart';
import 'package:multiicon/homescreen_reels/buttons/comment_Button.dart';
import 'package:multiicon/homescreen_reels/buttons/homescreenreelsMenu.dart';
import 'package:multiicon/homescreen_reels/buttons/like_Button.dart';
import 'package:multiicon/homescreen_reels/buttons/marqrueeMusic.dart';
import 'package:multiicon/homescreen_reels/buttons/music_Button.dart';
import 'package:multiicon/homescreen_reels/buttons/share_Button.dart';
import 'package:multiicon/homescreen_reels/small_pages/homescreenreelsCaption.dart';
import 'package:multiicon/homescreen_reels/small_pages/homescreenreelsProfile.dart';

class ForYouReelsPage extends StatefulWidget {
  @override
  _ForYouReelsPageState createState() => _ForYouReelsPageState();
}

class _ForYouReelsPageState extends State<ForYouReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Stack(
        children: [
          SafeArea(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("assets/splash.jpg"), fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0, right: 20.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: LikeButton(),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: CommentButton(),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: ShareButton(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0, left: 20.0),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: HomeScreenReelsProfile(),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: HomeScreenReelsCaption(),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Container(
                            child: AnimatedMusicButton(),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 20,
                              child: MarqueeMusic()),
                          Container(
                            child: HomeScreenReelsMenu(),
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
