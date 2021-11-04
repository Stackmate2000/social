import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstImageHero extends StatefulWidget {
  @override
  _FirstImageHeroState createState() => _FirstImageHeroState();
}

class _FirstImageHeroState extends State<FirstImageHero> {
  int counter = 0;
  bool isliked = false;
  bool isfollowing = false;
  int sharecount = 0;
  bool isshared = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Hero(
              tag: 'firstpost',
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/splash.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: AnimatedCrossFade(
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
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
                                color: Color(0xffFFFFFF),
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
                              color: Color(0xffFFFFFF),
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
                            reverseDuration: Duration(milliseconds: 0),
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
                                color: Color(0xffFFFFFF),
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
                              color: Color(0xffFFFFFF),
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
                            color: Color(0xffFFFFFF),
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
                              color: Color(0xffFFFFFF),
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Icon(
                        CupertinoIcons.chevron_left,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
