import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_home/postsecond/smallpages/homepagehomeLikepage_second.dart';
import 'package:multiicon/homescreen_home/postsecond/smallpages/homescreenhomeComment_second.dart';

class HomeScreenHomeReactsTwo extends StatefulWidget {
  @override
  _HomeScreenHomeReactsTwoState createState() =>
      _HomeScreenHomeReactsTwoState();
}

class _HomeScreenHomeReactsTwoState extends State<HomeScreenHomeReactsTwo> {
  int counter = 0;
  bool isliked = false;
  bool isfollowing = false;
  int sharecount = 0;
  bool isshared = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: AnimatedCrossFade(
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      crossFadeState: isliked
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      firstChild: IconButton(
                          icon: Icon(
                            CupertinoIcons.suit_heart,
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              counter++;
                              {
                                print("counter++");
                              }
                            });
                            setState(() {
                              isliked = true;
                            });
                          }),
                      secondChild: IconButton(
                          icon: Icon(
                            CupertinoIcons.suit_heart_fill,
                            color: Colors.red,
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              counter--;
                              {
                                print("counter--");
                              }
                            });
                            setState(() {
                              isliked = false;
                            });
                          }),
                    ),
                  ),
                  Container(
                    child: IconButton(
                        icon: Icon(
                          CupertinoIcons.bubble_middle_bottom,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomeScreenHomeCommentSecond()));
                        }),
                  ),
                ],
              ),
            ),
            Container(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 100),
                reverseDuration: Duration(milliseconds: 100),
                crossFadeState: isshared
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: Row(
                  children: [
                    Container(
                      child: Text(
                        "$sharecount " "shares",
                        style: GoogleFonts.roboto(
                            color: Colors.grey[800],
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          CupertinoIcons.arrowshape_turn_up_right,
                          size: 20,
                        ),
                        onPressed: () {
                          setState(() {
                            sharecount++;
                            {
                              print("sharecounter++");
                            }
                          });
                          setState(() {
                            isshared = true;
                          });
                        }),
                  ],
                ),
                secondChild: Row(
                  children: [
                    Container(
                      child: Text(
                        "$sharecount " "shared",
                        style: GoogleFonts.roboto(
                            color: Colors.grey[800],
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          MdiIcons.checkAll,
                          size: 20,
                          color: Colors.cyan,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeScreenHOmeLikePageSecond()));
                },
                child: Text(
                  "$counter " "Likes",
                  style: GoogleFonts.roboto(
                      color: Colors.grey[800],
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              child: Text(
                "with",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreenHomeCommentSecond()));
                },
                child: Text(
                  "12k " "comments",
                  style: GoogleFonts.roboto(
                      color: Colors.grey[800],
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
