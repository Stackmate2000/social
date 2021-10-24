import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/bottom_nav/bottomNav2.dart';
import 'package:multiicon/login/animated_Logo.dart';
import 'package:multiicon/signup/signup_pageB.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    color: Colors.white),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 20.0, right: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 120,
                          child: AnimatedLogo(),
                        ),
                        Divider(
                          height: 10,
                          thickness: 0.5,
                          color: Colors.grey[600].withOpacity(0.6),
                          endIndent: 16,
                          indent: 16,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 10.0),
                                    child: TextField(
                                      style: GoogleFonts.roboto(
                                          color: Colors.blueGrey[900]
                                              .withOpacity(0.9),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.left,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "abc@trickybin.com",
                                        hintStyle: GoogleFonts.roboto(
                                            color: Colors.blueGrey[900]
                                                .withOpacity(0.9),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                        helperText: "Account address",
                                        helperStyle: GoogleFonts.roboto(
                                            color: Colors.grey[500]
                                                .withOpacity(0.9),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 10.0),
                                    child: TextField(
                                      style: GoogleFonts.roboto(
                                          color: Colors.blueGrey[900]
                                              .withOpacity(0.9),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.left,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "********",
                                        hintStyle: GoogleFonts.roboto(
                                            color: Colors.blueGrey[900]
                                                .withOpacity(0.9),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                        helperText: "Account password",
                                        helperStyle: GoogleFonts.roboto(
                                            color: Colors.grey[500]
                                                .withOpacity(0.9),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text("Forgot your password ?",
                                          style: GoogleFonts.roboto(
                                              color: Colors.blueGrey[900]
                                                  .withOpacity(0.9),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 0.0, top: 20.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(_createRoute());
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey[400]
                                                  .withOpacity(0.9),
                                              blurRadius: 4.0,
                                              spreadRadius: 2.0,
                                              offset: Offset(0.0, 6.0))
                                        ],
                                        color: Colors.blueGrey[900]
                                            .withOpacity(0.8),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Continue",
                                        style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("New User?",
                                          style: GoogleFonts.roboto(
                                              color: Colors.blueGrey[900]
                                                  .withOpacity(0.9),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(_nextRoute());
                                        },
                                        child: Text(
                                          "Create a new account",
                                          style: GoogleFonts.roboto(
                                            color: Colors.blue[900]
                                                .withOpacity(0.8),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
