import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainMenuButtonProfile extends StatefulWidget {
  @override
  _MainMenuButtonProfileState createState() => _MainMenuButtonProfileState();
}

class _MainMenuButtonProfileState extends State<MainMenuButtonProfile> {
  modalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 360.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Container(
              height: 260,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 30.0, bottom: 30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              CupertinoIcons.settings,
                              color: Color(0xff000000).withOpacity(0.9),
                            ),
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Settings",
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000),
                                    letterSpacing: 0.3,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey[300],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              MdiIcons.cloudOutline,
                              color: Color(0xff000000).withOpacity(0.9),
                            ),
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Manage your interest",
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000).withOpacity(0.9),
                                    letterSpacing: 0.3,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey[300],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              MdiIcons.broadcast,
                              color: Color(0xff000000).withOpacity(0.9),
                            ),
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Story achievements",
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000).withOpacity(0.9),
                                    letterSpacing: 0.3,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey[300],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              MdiIcons.cameraTimer,
                              color: Color(0xff000000).withOpacity(0.9),
                            ),
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Activity",
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000).withOpacity(0.9),
                                    letterSpacing: 0.3,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey[300],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.download,
                              color: Color(0xff000000).withOpacity(0.9),
                            ),
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Saved",
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000).withOpacity(0.9),
                                    letterSpacing: 0.3,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        modalBottomSheet(context);
      },
      child: Container(
        child: Icon(
          MdiIcons.dotsVertical,
          color: Color(0xff000000).withOpacity(0.5),
        ),
      ),
    );
  }
}
