import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/stories/addStory/user_inputprofile/userInput_main.dart';
import 'package:multiicon/homescreen_home/stories/followingStories/followingStory_one.dart';
import 'package:multiicon/homescreen_home/stories/followingStories/followingStory_two.dart';
import 'package:multiicon/homescreen_home/stories/followingstory_viewed/followingstoryViewed_one.dart';

class StoryMain extends StatefulWidget {
  @override
  _StoryMainState createState() => _StoryMainState();
}

class _StoryMainState extends State<StoryMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              child: Icon(
                                CupertinoIcons.chevron_left,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Activities",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff000000),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            child: Icon(MdiIcons.plus),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 0.0,
                      ),
                      Container(
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 0.0, right: 0.0),
                              child: Container(
                                child: Text(
                                  "Story",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 38,
                                    color: Color(0xff000000).withOpacity(0.1),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 38.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Stack(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push(_nextRoute());
                                              },
                                              child: Container(
                                                height: 60,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(16.0),
                                                  ),
                                                  color: Color(0xffADB3BF),
                                                ),
                                                child: Icon(
                                                  CupertinoIcons.person_fill,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.3),
                                                  size: 40,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              right: e - 10,
                                              left: 30,
                                              child: SizedBox(
                                                child: CircleAvatar(
                                                  radius: 14,
                                                  backgroundColor:
                                                      Color(0xffF4F6F6),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .push(_nextRoute());
                                                    },
                                                    child: Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xff896ae4),
                                                          shape:
                                                              BoxShape.circle),
                                                      child: Center(
                                                        child: Icon(
                                                          MdiIcons.plus,
                                                          color:
                                                              Color(0xffF4F6F6),
                                                          size: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Your story",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.9),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "add a new story",
                                              style: GoogleFonts.montserrat(
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.5),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Icon(CupertinoIcons.camera),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        child: Text(
                          "New stories",
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Color(0xff000000).withOpacity(0.9),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      FollowingStoryOne(),
                      SizedBox(
                        height: 10.0,
                      ),
                      FollowingStoryTwo(),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        child: Text(
                          "Viewed stories",
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Color(0xff000000).withOpacity(0.9),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      FollowingStoryViewedOne(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => UserInputMain(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeIn;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      // ignore: unused_local_variable
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
