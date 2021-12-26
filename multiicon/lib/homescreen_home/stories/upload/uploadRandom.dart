import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/animation.dart';

class UploadRandom extends StatefulWidget {
  const UploadRandom({Key key}) : super(key: key);

  @override
  _UploadRandomState createState() => _UploadRandomState();
}

class _UploadRandomState extends State<UploadRandom>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);

    animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.4;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Transform(
                        transform: Matrix4.translationValues(
                            0.0, animation.value * height, 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "What's your",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 28,
                                      color: Color(0xff000000).withOpacity(0.5),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.0,
                                ),
                                Container(
                                  child: Text(
                                    "plan for the day?",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 28,
                                      color: Color(0xff000000).withOpacity(0.9),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: Container(
                                    child: Text(
                                      "Add your feed with powerful categories and beautiful pictures.",
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xff000000)
                                              .withOpacity(0.5),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[900],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Icon(
                                      MdiIcons.plus,
                                      color: Color(0xffFFFFFF),
                                    )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    "Add Story",
                                    style: GoogleFonts.roboto(
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[900],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.music_note,
                                      color: Color(0xffFFFFFF),
                                    )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    "Record",
                                    style: GoogleFonts.roboto(
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[900],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.camera_fill,
                                      color: Color(0xffFFFFFF),
                                    )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    "Upload",
                                    style: GoogleFonts.roboto(
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[900],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Icon(
                                      MdiIcons.feather,
                                      color: Color(0xffFFFFFF),
                                    )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    "Note to speak",
                                    style: GoogleFonts.roboto(
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 450,
                  right: e + 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        color: Colors.blueGrey[900],
                      ),
                      child: Icon(
                        CupertinoIcons.clear,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
