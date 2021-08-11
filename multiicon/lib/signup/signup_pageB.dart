import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/signup/signup_pageA.dart';
import 'package:multiicon/signup/signup_pageC.dart';

class SignUpB extends StatefulWidget {
  @override
  _SignUpBState createState() => _SignUpBState();
}

class _SignUpBState extends State<SignUpB> {
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
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onHorizontalDragStart: (DragStartDetails) {
                    AspectRatio(
                      aspectRatio: 16 / 9,
                    );
                    print("Hello");
                  },
                  onHorizontalDragUpdate: (DragUpdateDetails) {
                    AspectRatio(aspectRatio: 16 / 9);
                    print("One");
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        color: Colors.white),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 50.0, left: 20.0, right: 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Nickname what's gonna be you email address and password for your account ?",
                              style: GoogleFonts.roboto(
                                  color: Colors.blueGrey[900].withOpacity(0.9),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 50.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
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
                                          helperText:
                                              "Email address or password",
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
                                  padding: const EdgeInsets.only(top: 40.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
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
                                          helperText: "Password",
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
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 40.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(_nextRoute());
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
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
                                            Radius.circular(16.0),
                                          ),
                                        ),
                                        child: Icon(
                                          CupertinoIcons.arrow_right,
                                          color: Colors.white.withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                  top: 5.0,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      MdiIcons.chevronLeft,
                      color: Colors.blueGrey.withOpacity(0.6),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(_createRoute());
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SignUpPageC(),
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
    pageBuilder: (context, animation, secondaryAnimation) => SignupA(),
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
