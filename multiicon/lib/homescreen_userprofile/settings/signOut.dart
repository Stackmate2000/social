import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignOut extends StatefulWidget {
  @override
  _SignOutState createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TweenAnimationBuilder(
        curve: Curves.bounceOut,
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(milliseconds: 1000),
        builder: (BuildContext context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xff3190FF).withOpacity(0.2),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 6.0))
            ],
            color: Color(0xff3190FF),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Text(
            "Sign Out",
            style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
