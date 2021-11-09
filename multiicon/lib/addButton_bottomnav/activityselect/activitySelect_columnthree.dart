import 'package:flutter/cupertino.dart';
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
              _togglehealthconsious();
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
                      color: ishealthconsious
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
                        "health consious",
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
              _toggletraveller();
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
                      color: istraveller
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
                        MdiIcons.soccer,
                      ),
                    ),
                    Container(
                      child: Text(
                        "into sports",
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
              _togglegym();
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
                      color: isgym
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
                        MdiIcons.sofaSingleOutline,
                      ),
                    ),
                    Container(
                      child: Text(
                        "relaxing",
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
