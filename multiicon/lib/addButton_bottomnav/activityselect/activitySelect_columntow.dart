import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActivitySelectColumnTwo extends StatefulWidget {
  @override
  _ActivitySelectColumnTwoState createState() =>
      _ActivitySelectColumnTwoState();
}

class _ActivitySelectColumnTwoState extends State<ActivitySelectColumnTwo> {
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
                      ),
                    ),
                    Container(
                      child: Text(
                        "work",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: Color(0xff000000),
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
                      ),
                    ),
                    Container(
                      child: Text(
                        "school",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: Color(0xff000000),
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
                      ),
                    ),
                    Container(
                      child: Text(
                        "foodie",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: Color(0xff000000),
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
