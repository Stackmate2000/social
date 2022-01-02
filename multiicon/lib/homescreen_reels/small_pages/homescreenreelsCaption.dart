import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenReelsCaption extends StatefulWidget {
  @override
  _HomeScreenReelsCaptionState createState() => _HomeScreenReelsCaptionState();
}

class _HomeScreenReelsCaptionState extends State<HomeScreenReelsCaption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Dope days,dim nights,lit comapny,and love vibes.",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
          textAlign: TextAlign.start,
          maxLines: 3,
        ),
      ),
    );
  }
}
