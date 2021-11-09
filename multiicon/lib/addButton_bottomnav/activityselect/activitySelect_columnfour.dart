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
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(21.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isrelationship
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
                      ),
                    ),
                    Container(
                      child: Text(
                        "gaming",
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
                        MdiIcons.laptop,
                      ),
                    ),
                    Container(
                      child: Text(
                        "self-employed",
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
                        MdiIcons.plus,
                      ),
                    ),
                    Container(
                      child: Text(
                        "other",
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
