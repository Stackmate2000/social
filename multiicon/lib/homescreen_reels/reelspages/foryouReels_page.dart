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
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0, right: 20.0),
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
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryNewPostTabBar()));
                  },
                  child: Container(
                    child: Icon(
                      CupertinoIcons.camera,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
