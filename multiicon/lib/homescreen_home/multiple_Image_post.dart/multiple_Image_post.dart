import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/multiple_Image_post.dart/multipleImage_hero.dart';
import 'package:multiicon/homescreen_home/multiple_Image_post.dart/multipleImage_menubutton.dart';

class MultipleImagePost extends StatefulWidget {
  @override
  _MultipleImagePostState createState() => _MultipleImagePostState();
}

class _MultipleImagePostState extends State<MultipleImagePost> {
  int counter = 0;
  bool isliked = false;
  bool isfollowing = false;
  bool issavedfile = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
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
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                ),
                                image: DecorationImage(
                                    image: AssetImage("assets/girl.jpg"),
                                    fit: BoxFit.cover),
                                color: Color(0xffADB3BF),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jonason mike",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color:
                                            Color(0xff000000).withOpacity(0.9),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    "United States",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color:
                                            Color(0xff000000).withOpacity(0.5),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: MultipleImageMenuButton(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        "When I find myself in a creative block I always find it the most reenergizing to explore the way.",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
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
                            decoration: BoxDecoration(),
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
                                            // image: DecorationImage(
                                            //    image: AssetImage(
                                            //       "assets/splash.jpg"),
                                            //   fit: BoxFit.cover),//
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
                                            // image: DecorationImage(
                                            //    image: AssetImage(
                                            //       "assets/girl.jpg"),
                                            //
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
                                            // image: DecorationImage(
                                            //    image: AssetImage(
                                            //       "assets/work.jpg"),
                                            //
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
                            height: 10.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Icon(
                                              CupertinoIcons.bubble_right,
                                              size: 20.0,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3.0,
                                          ),
                                          Text(
                                            "0",
                                            style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                color: Color(0xff000000)
                                                    .withOpacity(0.7),
                                                letterSpacing: 0.2,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: AnimatedCrossFade(
                                              duration:
                                                  Duration(milliseconds: 0),
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
                                                  CupertinoIcons
                                                      .suit_heart_fill,
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
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          CupertinoIcons.arrow_2_squarepath,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: AnimatedCrossFade(
                                      duration: Duration(milliseconds: 0),
                                      reverseDuration:
                                          Duration(milliseconds: 0),
                                      crossFadeState: issavedfile
                                          ? CrossFadeState.showSecond
                                          : CrossFadeState.showFirst,
                                      firstChild: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            issavedfile = true;
                                          });
                                        },
                                        child: Icon(
                                          CupertinoIcons.bookmark,
                                          size: 20,
                                        ),
                                      ),
                                      secondChild: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            issavedfile = false;
                                          });
                                        },
                                        child: Icon(
                                          CupertinoIcons.bookmark_solid,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
