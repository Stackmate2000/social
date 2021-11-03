import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowingStoryOne extends StatefulWidget {
  @override
  _FollowingStoryOneState createState() => _FollowingStoryOneState();
}

class _FollowingStoryOneState extends State<FollowingStoryOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Color(0xffADB3BF),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/splash.jpg"),
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Container(
          child: Text(
            "Talan",
            style: GoogleFonts.roboto(
                fontSize: 14,
                color: Color(0xff000000),
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
