import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/policy/policy.dart';
import 'package:multiicon/signup/signup_pageB.dart';

class SignUpPageC extends StatefulWidget {
  @override
  _SignUpPageCState createState() => _SignUpPageCState();
}

class _SignUpPageCState extends State<SignUpPageC> {
  @override
  Widget build(BuildContext context) {
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(_createRoute());
                          },
                          child: Container(
                            height: 35,
                            width: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[100].withOpacity(0.9),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 6.0))
                              ],
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: Icon(
                              CupertinoIcons.arrow_left,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Container(
                        child: Text(
                          "Create a password",
                          style: GoogleFonts.roboto(
                              color: Color(0xff000000),
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Container(
                          child: Text(
                            "If you want we can remember your password on this device, by clicking on remember me.",
                            style: GoogleFonts.roboto(
                                color: Color(0xff000000).withOpacity(0.7),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        child: TextField(
                          style: GoogleFonts.roboto(
                              color: Color(0xff000000),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                          autofocus: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff000000).withOpacity(0.1)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                  borderSide: BorderSide(
                                      color:
                                          Color(0xff000000).withOpacity(0.1))),
                              hintText: "Password",
                              hintStyle: GoogleFonts.roboto(
                                  color: Color(0xff000000).withOpacity(0.5),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                              fillColor: Color(0xffFAFAFA),
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(_nextRoute());
                        },
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
                              "Next",
                              style: GoogleFonts.roboto(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            )),
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
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Policy(),
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
    pageBuilder: (context, animation, secondaryAnimation) => SignUpB(),
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
