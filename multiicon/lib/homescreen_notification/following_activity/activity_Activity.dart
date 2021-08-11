import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activityactivity extends StatefulWidget {
  @override
  _ActivityactivityState createState() => _ActivityactivityState();
}

class _ActivityactivityState extends State<Activityactivity> {
  bool isfollowing = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedCrossFade(
        duration: Duration(milliseconds: 0),
        reverseDuration: Duration(milliseconds: 0),
        crossFadeState:
            isfollowing ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        firstChild: Center(
          child: Container(
            height: 28,
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.blue[600],
            ),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                setState(() {
                  isfollowing = true;
                });
              },
              child: Text(
                "Follow",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        secondChild: Center(
          child: Container(
            height: 28,
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[400]),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white),
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  isfollowing = false;
                });
              },
              child: Text(
                "Unfollow",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
