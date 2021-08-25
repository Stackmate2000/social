import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SpeechOne extends StatefulWidget {
  @override
  _SpeechOneState createState() => _SpeechOneState();
}

class _SpeechOneState extends State<SpeechOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: TweenAnimationBuilder(
              child: Text(
                "The only place where success comes before work is in the dictionary",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: 500),
              builder: (BuildContext context, double _val, Widget child) {
                return Opacity(opacity: _val, child: child);
              },
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: TweenAnimationBuilder(
              child: Text(
                "- " "VIDAL SESSON " "-",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: 250),
              builder: (BuildContext context, double _val, Widget child) {
                return Opacity(opacity: _val, child: child);
              },
            ),
          ),
        ],
      ),
    );
  }
}
