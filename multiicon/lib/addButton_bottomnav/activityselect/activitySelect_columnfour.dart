import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActivitySelectColumnFour extends StatefulWidget {
  @override
  _ActivitySelectColumnFourState createState() =>
      _ActivitySelectColumnFourState();
}

class _ActivitySelectColumnFourState extends State<ActivitySelectColumnFour> {
  var isgaming = false;

  _togglegaming() {
    setState(() {
      isgaming = !isgaming;
    });
  }

  var isselfemployed = false;

  _toggleselfemployed() {
    setState(() {
      isselfemployed = !isselfemployed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              _togglegaming();
            },
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(21.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isgaming
                          ? Color(0xff32C1E0).withOpacity(0.2)
                          : Colors.white,
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 6.0))
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        MdiIcons.googleController,
                        color: isgaming
                            ? Color(0xff32C1E0)
                            : Color(0xff000000).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      child: Text(
                        "gaming",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isgaming
                                ? Color(0xff32C1E0)
                                : Color(0xff000000).withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              _toggleselfemployed();
            },
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(21.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isselfemployed
                          ? Color(0xff32C1E0).withOpacity(0.2)
                          : Colors.white,
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 6.0))
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        MdiIcons.laptop,
                        color: isselfemployed
                            ? Color(0xff32C1E0)
                            : Color(0xff000000).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      child: Text(
                        "self-employed",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isselfemployed
                                ? Color(0xff32C1E0)
                                : Color(0xff000000).withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ]),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        MdiIcons.plus,
                        color: Color(0xff000000).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      child: Text(
                        "other",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: Color(0xff000000).withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
