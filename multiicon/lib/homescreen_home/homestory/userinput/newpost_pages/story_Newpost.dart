import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/animation/animatedcamera/animatedMusic_button.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/reelbuttons/cameraRotate_reels.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/reelbuttons/flashCamera_reels.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/storybuttons/musicPage.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/newpost_pages/storybuttons/textPage.dart';

class StoryNewPost extends StatefulWidget {
  @override
  _StoryNewPostState createState() => _StoryNewPostState();
}

class _StoryNewPostState extends State<StoryNewPost> {
  modalModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 30.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Only share with",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Container(
                              child: Text(
                                "Only the specific peoples can see your post",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                            icon: Icon(
                              MdiIcons.chevronRight,
                              color: Colors.grey[600],
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  indent: 30.0,
                  color: Colors.grey[400],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 30.0, right: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Share with everyone except",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Container(
                              child: Text(
                                "Block some users from seeing your post ?",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                            icon: Icon(
                              MdiIcons.chevronRight,
                              color: Colors.grey[600],
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding:
                    const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
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
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          modalModalBottomSheet(context);
                        },
                        child: Container(
                          child: Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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
                        Container(
                          child: IconButton(
                            icon: Icon(
                              CupertinoIcons.pencil,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(_textpageRoute());
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          child: TweenAnimationBuilder(
                            child: Text(
                              "Create",
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
    );
  }
}

Route _textpageRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TextPage(),
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
