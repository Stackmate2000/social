import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActivitySelectColumnTwo extends StatefulWidget {
  @override
  _ActivitySelectColumnTwoState createState() =>
      _ActivitySelectColumnTwoState();
}

class _ActivitySelectColumnTwoState extends State<ActivitySelectColumnTwo> {
  var isrelationship = false;

  _togglerelationship() {
    setState(() {
      isrelationship = !isrelationship;
    });
  }

  var istraveller = false;

  _toggletraveller() {
    setState(() {
      istraveller = !istraveller;
    });
  }

  var isgym = false;

  _togglegym() {
    setState(() {
      isgym = !isgym;
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
              _togglerelationship();
            },
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: isrelationship ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isrelationship
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
                        MdiIcons.heartPulse,
                        color: isrelationship
                            ? Color(0xffA55FEB)
                            : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "relationship",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isrelationship
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
              _toggletraveller();
            },
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: istraveller ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: istraveller
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
                        MdiIcons.airplaneTakeoff,
                        color:
                            istraveller ? Color(0xffA55FEB) : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "traveller",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: istraveller
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
              _togglegym();
            },
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: isgym ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isgym
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
                        MdiIcons.dumbbell,
                        color: isgym ? Color(0xffA55FEB) : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "exercise",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isgym
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
