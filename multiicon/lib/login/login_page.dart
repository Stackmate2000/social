import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/bottom_nav/bottomNav2.dart';
import 'package:multiicon/signup/signup_pageB.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
              ),
              child: Stack(
                children: [
                  SafeArea(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 0.0, bottom: 150.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.pinkAccent.withOpacity(0.7),
                                Color(0xff3190FF).withOpacity(0.4)
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(100.0),
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(190.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0.0, top: 280.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(100.0),
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(190.0),
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.purpleAccent.withOpacity(0.9),
                                  Color(0xff3190FF).withOpacity(0.9)
                                ],
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(100.0),
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(190.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: buildBlur(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF).withOpacity(0.1),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "B",
                                    style: GoogleFonts.dancingScript(
                                        color:
                                            Color(0xff000000).withOpacity(0.6),
                                        fontSize: 45,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                  Container(
                                    child: Text(
                                      "eta",
                                      style: GoogleFonts.dancingScript(
                                          color: Color(0xff000000)
                                              .withOpacity(0.6),
                                          fontSize: 38,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                "Style your feed with powerful categories andbeautiful themes.",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xff000000).withOpacity(0.3),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: TextField(
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                                autofocus: false,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color(0xff000000).withOpacity(0.1)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.cyan.withOpacity(0.4))),
                                  hintText:
                                      "Phone number email address or username",
                                  hintStyle: GoogleFonts.montserrat(
                                      color: Color(0xff000000).withOpacity(0.6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  fillColor: Color(0xffFFFFFF).withOpacity(0.9),
                                  filled: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: TextField(
                                style: GoogleFonts.roboto(
                                    color: Color(0xff000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                                autofocus: false,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color(0xff000000).withOpacity(0.1)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.cyan.withOpacity(0.4))),
                                  hintText: "Create password",
                                  hintStyle: GoogleFonts.montserrat(
                                      color: Color(0xff000000).withOpacity(0.6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  fillColor: Color(0xffFFFFFF).withOpacity(0.9),
                                  filled: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Container(
                                alignment: Alignment.centerRight,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Text(
                                  "Forgotten password?",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff000000).withOpacity(0.9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(_createRoute());
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.9,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff000000).withOpacity(0.1),
                                        blurRadius: 40.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 20.0))
                                  ],
                                  color: Color(0xffFFFFFF).withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                child: Text(
                                  "Log in",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff000000).withOpacity(0.7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(_nextRoute());
                                    },
                                    child: Container(
                                      child: Text(
                                        "No account yet?",
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xff000000)
                                                .withOpacity(0.5),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(_nextRoute());
                                    },
                                    child: Container(
                                      child: Text(
                                        "Sign up",
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xff000000)
                                                .withOpacity(0.7),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBlur({
    @required Widget child,
    double sigmaX = 50,
    double sigmaY = 50,
  }) =>
      ClipRRect(
        borderRadius: BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SignUpB(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeIn;
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

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => BottomNav2(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(-1.0, 0.0);
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
