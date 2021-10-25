import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/animation/animated%20logos/loader.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/bottom_nav/bottomNav2.dart';

class Policy extends StatefulWidget {
  @override
  _PolicyState createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  modalModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    CupertinoIcons.check_mark,
                                    color: Colors.grey[500],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 10.0, left: 10.0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: [
                                  Text("Privacy Policy",
                                      style: GoogleFonts.roboto(
                                          color: Colors.blueGrey[900]
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext contex1t) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xffFFFFFF)),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "DASHBOARD DESIGN",
                            style: GoogleFonts.roboto(
                                color: Color(0xff3190FF),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          child: Text(
                            "Welcome to",
                            style: GoogleFonts.roboto(
                                color: Color(0xff000000),
                                fontSize: 22,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Container(
                          child: Text(
                            "TrickyBin, " "username",
                            style: GoogleFonts.roboto(
                                color: Color(0xff000000),
                                fontSize: 22,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff3190FF).withOpacity(0.2),
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 6.0))
                            ],
                            color: Color(0xff3190FF),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.roboto(
                                color: Color(0xffFFFFFF),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        modalModalBottomSheet(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Text(
                          "See Terms and Data Policy",
                          style: GoogleFonts.roboto(
                              color: Color(0xff000000).withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        modalModalBottomSheet(context);
                      },
                      child: Container(
                        child: Icon(
                          MdiIcons.chevronDown,
                          color: Color(0xff000000).withOpacity(0.4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => BottomNav2(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      // ignore: unused_local_variable
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
