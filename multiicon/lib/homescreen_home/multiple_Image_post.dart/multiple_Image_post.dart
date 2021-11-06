import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_home/multiple_Image_post.dart/multipleImage_hero.dart';

class MultipleImagePost extends StatefulWidget {
  @override
  _MultipleImagePostState createState() => _MultipleImagePostState();
}

class _MultipleImagePostState extends State<MultipleImagePost> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  Container(
                                    child: Text(
                                      "Talan Lipshutz",
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Row(
                                    children: [
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
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Container(
                                        child: Text(
                                          "posted.",
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              color: Color(0xff000000)
                                                  .withOpacity(0.7),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
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
                        "Friends!!!",
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
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "Posted",
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                color: Color(0xff000000).withOpacity(0.7),
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 3.0,
                          width: 3.0,
                          decoration: BoxDecoration(
                            color: Color(0xff000000).withOpacity(0.7),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          child: Text(
                            "7d ago",
                            style: GoogleFonts.roboto(
                                fontSize: 15,
                                color: Color(0xff000000).withOpacity(0.7),
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(_firstRoute());
                                      },
                                      child: Hero(
                                        tag: 'multipleImageOne',
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.36,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/splash.jpg"),
                                                fit: BoxFit.cover),
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.18,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/girl.jpg"),
                                                fit: BoxFit.cover),
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.18,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/work.jpg"),
                                                fit: BoxFit.cover),
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ],
                                    )
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
                                          color: Color(0xff000000)
                                              .withOpacity(0.7),
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
                                          color: Color(0xff000000)
                                              .withOpacity(0.7),
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
                                          color: Color(0xff000000)
                                              .withOpacity(0.7),
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

Route _firstRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        MultipleImageHero(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 0.0);
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

Route _secondRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MultipleImageTwo(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 0.0);
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

Route _thirdRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        MultipleImageThree(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 0.0);
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
