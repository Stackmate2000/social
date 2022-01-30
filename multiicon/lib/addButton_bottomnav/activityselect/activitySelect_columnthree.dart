import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActivitySelectColumnThree extends StatefulWidget {
  @override
  _ActivitySelectColumnThreeState createState() =>
      _ActivitySelectColumnThreeState();
}

class _ActivitySelectColumnThreeState extends State<ActivitySelectColumnThree> {
  var ishealthconsious = false;

  _togglehealthconsious() {
    setState(() {
      ishealthconsious = !ishealthconsious;
    });
  }

  var issports = false;

  _togglesports() {
    setState(() {
      issports = !issports;
    });
  }

  var isrelaxing = false;

  _togglerelaxing() {
    setState(() {
      isrelaxing = !isrelaxing;
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
              _togglehealthconsious();
            },
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: ishealthconsious ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: ishealthconsious
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
                        color: ishealthconsious
                            ? Color(0xffA55FEB)
                            : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "health conciuos",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: ishealthconsious
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
              _togglesports();
            },
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: issports ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: issports
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
                        MdiIcons.soccer,
                        color: issports ? Color(0xffA55FEB) : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "sports lover",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: issports
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
              _togglerelaxing();
            },
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: isrelaxing ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isrelaxing
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
                        MdiIcons.sofaSingleOutline,
                        color:
                            isrelaxing ? Color(0xffA55FEB) : Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                        "relaxing",
                        style: GoogleFonts.karla(
                            fontSize: 14,
                            color: isrelaxing
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
