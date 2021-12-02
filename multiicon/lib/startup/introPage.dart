import 'package:flutter/material.dart';
import 'package:multiicon/login/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xffFFFFFF)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/nigga.jpg"), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0.0, end: 1.0),
                      builder:
                          (BuildContext context, double _val, Widget child) {
                        return Opacity(
                          opacity: _val,
                          child: Text(
                            "Never Stress",
                            style: GoogleFonts.montserrat(
                                color: Color(0xffFFFFFF),
                                fontSize: 28,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                      duration: Duration(milliseconds: 1000),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Text(
                        "Plan your day, stay productive and accomplish your goals",
                        style: GoogleFonts.montserrat(
                            color: Color(0xffFFFFFF).withOpacity(0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(_nextRoute());
                        },
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff896ae4).withOpacity(0.1),
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(7.0, 6.0))
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(21.0)),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff896ae4),
                                  Color(0xff937cdc),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft),
                          ),
                          child: Icon(
                            CupertinoIcons.arrow_right,
                            color: Color(0xffFFFFFF),
                          ),
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
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Login(),
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
