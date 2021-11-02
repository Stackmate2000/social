import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstImage_post.dart';
import 'package:multiicon/homescreen_home/multiple_Image_post.dart/multiple_Image_post.dart';
import 'package:multiicon/homescreen_home/reelscover_home/reelOne.dart';
import 'package:multiicon/homescreen_home/sharedImage_post/sharedImage_post.dart';
import 'package:multiicon/homescreen_home/stories/addStory/addStory_home.dart';
import 'package:multiicon/homescreen_home/stories/followingStories/followingStory_one.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 70.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff7170B8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SafeArea(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 0.0),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration:
                                  BoxDecoration(color: Color(0xffFFFFFF)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Icon(
                                      CupertinoIcons.search,
                                      color: Color(0xff000000).withOpacity(0.7),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "uNEven",
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      MdiIcons.feather,
                                      color: Color(0xff3190FF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  AddStoryHome(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FollowingStoryOne(),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            child: FirstImagePost(),
                          ),
                          ReelOne(),
                          Container(
                            child: SharedImage_post(),
                          ),
                          Container(
                            child: MultipleImagePost(),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
