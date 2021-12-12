import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstImage_hero.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstImage_menubutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/first_image_post/firstimagecomments/firstImage_comment.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FirstImagePost extends StatefulWidget {
  @override
  _FirstImagePostState createState() => _FirstImagePostState();
}

class _FirstImagePostState extends State<FirstImagePost> {
  int counter = 0;
  bool isliked = false;
  bool isfollowing = false;
  bool issavedfile = false;

  @override
  Widget build(BuildContext context) {
    modalBottomSheet(context) {
      showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        child: Container(
                          child: FirstImageComment(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          style: GoogleFonts.montserrat(
                              color: Color(0xff000000),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                          autofocus: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff000000).withOpacity(0.1)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(21.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            hintText: "Text a comment..",
                            hintStyle: GoogleFonts.montserrat(
                                color: Color(0xff000000).withOpacity(0.5),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            suffixIcon: Icon(MdiIcons.send),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          });
    }

    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 0.0, left: 0.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                ),
                                gradient: LinearGradient(
                                    colors: [Colors.redAccent, Colors.purple],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 55,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                    color: Color(0xffFFFFFF),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/work.jpg"),
                                            fit: BoxFit.cover),
                                        color: Color(0xffADB3BF),
                                      ),
                                    ),
                                  ),
                                ),
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
                                      "Rovira james",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          color: Color(0xff000000)
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Container(
                                    child: Text(
                                      "netherland",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12,
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
                        Container(
                          child: FirstImageMenuButton(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Container(
                          child: Text(
                            "Exploring",
                            style: GoogleFonts.montserrat(
                                fontSize: 15,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Container(
                          child: Text(
                            "When I find myself in a creative block I always find it the most reenergizing to explore the way.",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
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
                              height: MediaQuery.of(context).size.height * 0.65,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                image: DecorationImage(
                                  image: AssetImage("assets/nigga.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Color(0xffADB3BF),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, left: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        modalBottomSheet(context);
                                      },
                                      child: Row(
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
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
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
                                    reverseDuration: Duration(milliseconds: 0),
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
