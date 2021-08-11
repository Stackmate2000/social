import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/reelbuttons/cameraRotate_reels.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/reelbuttons/flashCamera_reels.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/storybuttons/musicPage.dart';

class ReelsNewPost extends StatefulWidget {
  @override
  _ReelsNewPostState createState() => _ReelsNewPostState();
}

class _ReelsNewPostState extends State<ReelsNewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 20.0),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child: Icon(
                          Icons.clear,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          MusicPage(),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            child: TweenAnimationBuilder(
                              child: Text(
                                "Music",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              tween: Tween<double>(begin: 0.0, end: 1.0),
                              duration: Duration(milliseconds: 500),
                              builder: (BuildContext context, double _val,
                                  Widget child) {
                                return Opacity(opacity: _val, child: child);
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                CupertinoIcons.dial,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          SizedBox(
                            width: 10.0,
                          ),
                          TweenAnimationBuilder(
                            child: Text(
                              "Touch up",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 500),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                CupertinoIcons.stopwatch_fill,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          SizedBox(
                            width: 10.0,
                          ),
                          TweenAnimationBuilder(
                            child: Text(
                              "Speed",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 500),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                CupertinoIcons.gauge,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          SizedBox(
                            width: 10.0,
                          ),
                          TweenAnimationBuilder(
                            child: Text(
                              "Timer",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 500),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: CameraRotateReels(),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          TweenAnimationBuilder(
                            child: Text(
                              "Flip camera",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 500),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: FlashCameraReels(),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          TweenAnimationBuilder(
                            child: Text(
                              "Flash",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeOut,
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
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
  }
}
