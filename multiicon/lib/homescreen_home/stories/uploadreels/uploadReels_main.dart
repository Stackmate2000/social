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
                padding: const EdgeInsets.only(right: 15.0, top: 15.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          color: Color(0xffFFFFFF).withOpacity(0.1)),
                      child: Icon(
                        MdiIcons.close,
                        color: Color(0xffFFFFFF).withOpacity(0.5),
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
                  width: MediaQuery.of(context).size.width * 0.1,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 0;
                            });
                          },
                          child: _index == 0
                              ? Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white,
                                  ),
                                )
                              : Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        MdiIcons.brush,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 1;
                            });
                          },
                          child: _index == 1
                              ? Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white,
                                  ),
                                )
                              : Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 2;
                            });
                          },
                          child: _index == 2
                              ? Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white,
                                  ),
                                )
                              : Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 3;
                            });
                          },
                          child: _index == 3
                              ? Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white,
                                  ),
                                )
                              : Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                        ),
                      ),
                    ],
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
          ],
        ),
      ),
    );
  }
}
