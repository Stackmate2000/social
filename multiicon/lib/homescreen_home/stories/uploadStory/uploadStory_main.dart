import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/stories/camerabuttons/cameraMain.dart';

class UploadStoryMain extends StatefulWidget {
  @override
  _UploadStoryMainState createState() => _UploadStoryMainState();
}

class _UploadStoryMainState extends State<UploadStoryMain> {
  int _index = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff000000)),
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    children: [],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                    child: Row(
                                      children: [
                                        Icon(
                                          MdiIcons.brush,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Text",
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
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
                                _index = 1;
                              });
                            },
                            child: _index == 1
                                ? Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          MdiIcons.brush,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Text",
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
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
                                    child: Row(
                                      children: [
                                        Icon(
                                          MdiIcons.brush,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Text",
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
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
                                    child: Row(
                                      children: [
                                        Icon(
                                          MdiIcons.brush,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Text",
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
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
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    Container(
                      child: Icon(
                        CupertinoIcons.camera_rotate_fill,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 60.0, left: 15.0, right: 15.0),
                  child: CameraMain()),
            ),
          ],
        ),
      ),
    );
  }
}
