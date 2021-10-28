import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SharedImage_post extends StatefulWidget {
  @override
  _SharedImage_postState createState() => _SharedImage_postState();
}

class _SharedImage_postState extends State<SharedImage_post> {
  int counter = 0;
  bool isliked = false;
  bool isfollowing = false;
  int sharecount = 0;
  bool isshared = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(color: Color(0xffFFFFFF)),
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/splash.jpg"),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Talan Lipshutz,",
                                          style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Color(0xff000000),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        "Shared a post.",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            color: Color(0xff000000)
                                                .withOpacity(0.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Container(
                                    child: Text(
                                      "@Soloman",
                                      style: GoogleFonts.roboto(
                                          fontSize: 15,
                                          color: Color(0xff000000)
                                              .withOpacity(0.5),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          MdiIcons.dotsHorizontal,
                          color: Color(0xff000000).withOpacity(0.5),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "Worlds best UI/UX design inspiration.Submit your work.Contact us for further details.Best faces in town ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Color(0xff000000).withOpacity(0.7),
                            letterSpacing: 0.2,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: Colors.grey[600],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff000000)
                                                .withOpacity(0.2),
                                            width: 0.6),
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(16.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/parkstreet.jpg"),
                                                      fit: BoxFit.cover),
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.0,
                                              ),
                                              Container(
                                                child: Text(
                                                  "Talan Lipshutz",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 15,
                                                      color: Color(0xff000000),
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            child: Text(
                                              "Sometimes silent streets are the coldest fhhjssjdaspjsa asknllsa.",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.7),
                                                  letterSpacing: 0.2,
                                                  fontWeight: FontWeight.w400),
                                              maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/parkstreet.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight:
                                                Radius.circular(16.0))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: AnimatedCrossFade(
                                      duration: Duration(milliseconds: 0),
                                      reverseDuration:
                                          Duration(milliseconds: 0),
                                      crossFadeState: isliked
                                          ? CrossFadeState.showSecond
                                          : CrossFadeState.showFirst,
                                      firstChild: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            counter++;
                                            {
                                              print("counter++");
                                            }
                                          });
                                          setState(() {
                                            isliked = true;
                                          });
                                        },
                                        child: Icon(
                                          CupertinoIcons.suit_heart,
                                          size: 20,
                                        ),
                                      ),
                                      secondChild: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            counter--;
                                            {
                                              print("counter--");
                                            }
                                          });
                                          setState(() {
                                            isliked = false;
                                          });
                                        },
                                        child: Icon(
                                          CupertinoIcons.suit_heart_fill,
                                          color: Colors.red,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "$counter",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        letterSpacing: 0.2,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: AnimatedCrossFade(
                                      duration: Duration(milliseconds: 0),
                                      reverseDuration:
                                          Duration(milliseconds: 0),
                                      crossFadeState: isshared
                                          ? CrossFadeState.showSecond
                                          : CrossFadeState.showFirst,
                                      firstChild: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            sharecount++;
                                            {
                                              print("sharecounter++");
                                            }
                                          });
                                          setState(() {
                                            isshared = true;
                                          });
                                        },
                                        child: Icon(
                                          CupertinoIcons.arrow_2_squarepath,
                                          size: 20,
                                        ),
                                      ),
                                      secondChild: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            sharecount--;
                                            {
                                              print("sharecounter--");
                                            }
                                          });
                                          setState(() {
                                            isshared = false;
                                          });
                                        },
                                        child: Icon(
                                          CupertinoIcons.arrow_2_squarepath,
                                          color: Colors.red,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "$sharecount",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        letterSpacing: 0.2,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      CupertinoIcons.bubble_middle_bottom,
                                      size: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "5,423",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        letterSpacing: 0.2,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
