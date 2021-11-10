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
                color: isWorking ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isWorking
                          ? Color(0xff000000).withOpacity(0.1)
                          : Colors.transparent,
                      blurRadius: 4.0,
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
                        color:
                            isWorking ? Color(0xffA55FEB) : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "work",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isWorking
                                ? Color(0xffA55FEB)
                                : Color(0xffFFFFFF).withOpacity(0.6),
                            fontWeight: FontWeight.bold),
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
                color: isSchool ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isSchool
                          ? Color(0xff000000).withOpacity(0.1)
                          : Colors.transparent,
                      blurRadius: 4.0,
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
                        color: isSchool ? Color(0xffA55FEB) : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "school",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isSchool
                                ? Color(0xffA55FEB)
                                : Color(0xffFFFFFF).withOpacity(0.6),
                            fontWeight: FontWeight.bold),
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
                color: isFoodie ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isFoodie
                          ? Color(0xff000000).withOpacity(0.1)
                          : Colors.transparent,
                      blurRadius: 4.0,
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
                        color: isFoodie ? Color(0xffA55FEB) : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "foodie",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isFoodie
                                ? Color(0xffA55FEB)
                                : Color(0xffFFFFFF).withOpacity(0.6),
                            fontWeight: FontWeight.bold),
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
