import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/stories/uploadphoto/upload_pageOne.dart';
import 'package:multiicon/homescreen_home/stories/uploadphoto/upload_pageThree.dart';
import 'package:multiicon/homescreen_home/stories/uploadphoto/upload_pageTwo.dart';

class UploadReelsMain extends StatefulWidget {
  const UploadReelsMain({Key key}) : super(key: key);

  @override
  _UploadReelsMainState createState() => _UploadReelsMainState();
}

class _UploadReelsMainState extends State<UploadReelsMain> {
  int _index = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff0000000)),
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 15.0, top: 15.0, left: 15.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Record",
                          style: GoogleFonts.montserrat(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                              color: Color(0xffFFFFFF).withOpacity(0.1)),
                          child: Icon(
                            MdiIcons.close,
                            color: Color(0xffFFFFFF).withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                MdiIcons.googlePodcast,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            TweenAnimationBuilder(
                              tween: Tween<double>(begin: 0.0, end: 1.0),
                              builder: (BuildContext context, double _val,
                                  Widget child) {
                                return Opacity(
                                  opacity: _val,
                                  child: Text(
                                    "Audio",
                                    style: GoogleFonts.roboto(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                );
                              },
                              duration: Duration(milliseconds: 1000),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                MdiIcons.timer10,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            TweenAnimationBuilder(
                              tween: Tween<double>(begin: 0.0, end: 1.0),
                              builder: (BuildContext context, double _val,
                                  Widget child) {
                                return Opacity(
                                  opacity: _val,
                                  child: Text(
                                    "Length",
                                    style: GoogleFonts.roboto(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                );
                              },
                              duration: Duration(milliseconds: 1000),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                MdiIcons.autoFix,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            TweenAnimationBuilder(
                              tween: Tween<double>(begin: 0.0, end: 1.0),
                              builder: (BuildContext context, double _val,
                                  Widget child) {
                                return Opacity(
                                  opacity: _val,
                                  child: Text(
                                    "Effects",
                                    style: GoogleFonts.roboto(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                );
                              },
                              duration: Duration(milliseconds: 1000),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                MdiIcons.timer,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            TweenAnimationBuilder(
                              tween: Tween<double>(begin: 0.0, end: 1.0),
                              builder: (BuildContext context, double _val,
                                  Widget child) {
                                return Opacity(
                                  opacity: _val,
                                  child: Text(
                                    "Timer",
                                    style: GoogleFonts.roboto(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                );
                              },
                              duration: Duration(milliseconds: 1000),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 15.0, left: 15.0, right: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Icon(
                          CupertinoIcons.camera_rotate_fill,
                          size: 30,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
