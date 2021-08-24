import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activityactivity extends StatefulWidget {
  @override
  _ActivityactivityState createState() => _ActivityactivityState();
}

class _ActivityactivityState extends State<Activityactivity> {
  bool isfollowing = false;

  _pressed() {
    setState(() {
      isfollowing = !isfollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isfollowing
          ? GestureDetector(
              onTap: () {
                _pressed();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[400],
                      width: 1.0,
                    )),
                height: 30,
                width: MediaQuery.of(context).size.width * 0.25,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: GoogleFonts.roboto(
                      color: Colors.blueGrey[500],
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          : GestureDetector(
              onTap: () {
                _pressed();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.blue[600],
                ),
                height: 30,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(
                  "Follow",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
    );
  }
}
