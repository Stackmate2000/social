import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenHomeFollowButton extends StatefulWidget {
  @override
  _HomeScreenHomeFollowButtonState createState() =>
      _HomeScreenHomeFollowButtonState();
}

class _HomeScreenHomeFollowButtonState
    extends State<HomeScreenHomeFollowButton> {
  bool isfollowing = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedCrossFade(
          duration: Duration(milliseconds: 0),
          reverseDuration: Duration(milliseconds: 0),
          crossFadeState: isfollowing
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          firstChild: TextButton(
              onPressed: () {
                setState(() {
                  isfollowing = true;
                });
              },
              child: Text(
                "Follow",
                style: GoogleFonts.roboto(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )),
          secondChild: TextButton(
              onPressed: () {
                setState(() {
                  isfollowing = false;
                });
              },
              child: Text(
                "Following",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ))),
    );
  }
}
