import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryMediaButtons extends StatefulWidget {
  @override
  _StoryMediaButtonsState createState() => _StoryMediaButtonsState();
}

class _StoryMediaButtonsState extends State<StoryMediaButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                CupertinoIcons.music_note,
                color: Colors.white,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "music",
                style: GoogleFonts.roboto(
                    color: Color(0xffFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Icon(
                MdiIcons.arrangeSendBackward,
                color: Colors.white,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "layouts",
                style: GoogleFonts.roboto(
                    color: Color(0xffFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Icon(
                MdiIcons.atom,
                color: Colors.white,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "boomerang",
                style: GoogleFonts.roboto(
                    color: Color(0xffFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Icon(
                MdiIcons.brush,
                color: Colors.white,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Aa",
                style: GoogleFonts.roboto(
                    color: Color(0xffFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
