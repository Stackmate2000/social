import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MultipleImageHero extends StatefulWidget {
  @override
  _MultipleImageHeroState createState() => _MultipleImageHeroState();
}

class _MultipleImageHeroState extends State<MultipleImageHero> {
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
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: PageView(
                children: [
                  MultipleImageOne(),
                  MultipleImageTwo(),
                  MultipleImageThree(),
                ],
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
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TweenAnimationBuilder(
                  duration: Duration(milliseconds: 600),
                  builder: (BuildContext context, Object _val, Widget child) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: _val),
                      child: child,
                    );
                  },
                  tween: Tween<double>(begin: 0, end: 20),
                  curve: Curves.easeIn,
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color(0xff000000).withOpacity(0.7),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MultipleImageOne extends StatefulWidget {
  @override
  _MultipleImageOneState createState() => _MultipleImageOneState();
}

class _MultipleImageOneState extends State<MultipleImageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff000000)),
      child: Stack(
        children: [
          Hero(
            tag: 'multipleImageOne',
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff000000),
                image: DecorationImage(
                  image: AssetImage("assets/splash.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MultipleImageTwo extends StatefulWidget {
  @override
  _MultipleImageTwoState createState() => _MultipleImageTwoState();
}

class _MultipleImageTwoState extends State<MultipleImageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff000000)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff000000),
              image: DecorationImage(
                image: AssetImage("assets/girl.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MultipleImageThree extends StatefulWidget {
  @override
  _MultipleImageThreeState createState() => _MultipleImageThreeState();
}

class _MultipleImageThreeState extends State<MultipleImageThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff000000)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff000000),
              image: DecorationImage(
                image: AssetImage("assets/work.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
