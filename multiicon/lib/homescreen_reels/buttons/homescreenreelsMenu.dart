import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_reels/buttons/homescreenreelsreportMenu.dart';

class HomeScreenReelsMenu extends StatefulWidget {
  @override
  _HomeScreenReelsMenuState createState() => _HomeScreenReelsMenuState();
}

class _HomeScreenReelsMenuState extends State<HomeScreenReelsMenu> {
  modalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return buildBlur(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                      CupertinoIcons.music_note_2,
                                      color: Color(0xffFFFFFF),
                                    )),
                                SizedBox(width: 10.0),
                                Container(child: HomeScreenReelsReportMenu()),
                              ],
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
                                      CupertinoIcons.music_note_2,
                                      color: Color(0xffFFFFFF),
                                    )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    "Remix this Reel",
                                    style: GoogleFonts.roboto(
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
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
                                      CupertinoIcons.music_note_2,
                                      color: Color(0xffFFFFFF),
                                    )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    "Save",
                                    style: GoogleFonts.roboto(
                                        color:
                                            Color(0xff000000).withOpacity(0.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
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
                                      CupertinoIcons.music_note_2,
                                      color: Color(0xffFFFFFF),
                                    )),
                                SizedBox(width: 10.0),
                                Container(
                                  child: Text(
                                    "Copy link",
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
                ],
              ),
            ),
          );
        });
  }

  Widget buildBlur({
    @required Widget child,
    double sigmaX = 2,
    double sigmaY = 2,
  }) =>
      ClipRRect(
        borderRadius: BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: IconButton(
        icon: Icon(
          MdiIcons.dotsHorizontal,
          color: Colors.white,
        ),
        onPressed: () {
          modalBottomSheet(context);
        },
      ),
    );
  }
}
