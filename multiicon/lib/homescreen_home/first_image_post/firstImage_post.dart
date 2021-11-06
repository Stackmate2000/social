import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstImage_hero.dart';
import 'package:multiicon/homescreen_home/first_image_post/first_image_buttons/firstImage_menubutton.dart';

class FirstImagePost extends StatefulWidget {
  @override
  _FirstImagePostState createState() => _FirstImagePostState();
}

class _FirstImagePostState extends State<FirstImagePost> {
  int counter = 0;
  bool isliked = false;
  bool isfollowing = false;
  int sharecount = 0;
  bool isshared = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
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
                                        "tag",
                                        style: GoogleFonts.roboto(
                                            fontSize: 13,
                                            color: Color(0xff000000)
                                                .withOpacity(0.7),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Container(
                                      child: Text(
                                        "23 others",
                                        style: GoogleFonts.roboto(
                                            fontSize: 15,
                                            color: Color(0xff000000)
                                                .withOpacity(0.5),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: FirstImageMenuButton(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    child: Text(
                      "Worlds best UI/UX design inspiration.Submit your work.Contact us for further details.Best faces in town",
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
                          "2h ago",
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
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(_nextRoute());
                          },
                          child: Hero(
                            tag: 'firstpost',
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.45,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                image: DecorationImage(
                                  image: AssetImage("assets/splash.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Color(0xffADB3BF),
                              ),
                            ),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => FirstImageHero(),
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
