import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/stories/uploadphoto/upload_pageOne.dart';
import 'package:multiicon/homescreen_home/stories/uploadphoto/upload_pageTwo.dart';

class UploadPhotoMain extends StatefulWidget {
  @override
  _UploadPhotoMainState createState() => _UploadPhotoMainState();
}

class _UploadPhotoMainState extends State<UploadPhotoMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff896ae4),
            Color(0xff937cdc),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        ),
        child: Stack(
          children: [
            Container(
              child: PageView(
                children: [UploadPageOne(), UploadPageTwo()],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF).withOpacity(0.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Icon(
                          CupertinoIcons.arrow_left,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff000000).withOpacity(0.1),
                                blurRadius: 4.0,
                                spreadRadius: 2.0,
                                offset: Offset(7.0, 10.0))
                          ],
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Color(0xff000000).withOpacity(0.8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF).withOpacity(0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              MdiIcons.gamepadCircleOutline,
                              color: Color(0xffFFFFFF),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "All categories",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xffFFFFFF).withOpacity(0.8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
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
