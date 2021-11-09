import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActivitySelectColumnOne extends StatefulWidget {
  @override
  _ActivitySelectColumnOneState createState() =>
      _ActivitySelectColumnOneState();
}

class _ActivitySelectColumnOneState extends State<ActivitySelectColumnOne> {
  var isWorking = false;

  _toggleSelected() {
    setState(() {
      isWorking = !isWorking;
    });
  }

  var isSchool = false;

  _toggleSchool() {
    setState(() {
      isSchool = !isSchool;
    });
  }

  var isFoodie = false;

  _toggleFoodie() {
    setState(() {
      isFoodie = !isFoodie;
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
              _toggleSelected();
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
                      color: isWorking
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
                        MdiIcons.briefcaseOutline,
                        color: isWorking
                            ? Color(0xff32C1E0)
                            : Color(0xff000000).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      child: Text(
                        "work",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isWorking
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
              _toggleSchool();
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
                      color: isSchool
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
                        MdiIcons.schoolOutline,
                        color: isSchool
                            ? Color(0xff32C1E0)
                            : Color(0xff000000).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      child: Text(
                        "school",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isSchool
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
              _toggleFoodie();
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
                      color: isFoodie
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
                        MdiIcons.noodles,
                        color: isFoodie
                            ? Color(0xff32C1E0)
                            : Color(0xff000000).withOpacity(0.7),
                      ),
                    ),
                    Container(
                      child: Text(
                        "foodie",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isFoodie
                                ? Color(0xff32C1E0)
                                : Color(0xff000000).withOpacity(0.7),
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
