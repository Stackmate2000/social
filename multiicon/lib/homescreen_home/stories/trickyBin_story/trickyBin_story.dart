import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrickyBinStory extends StatefulWidget {
  @override
  _TrickyBinStoryState createState() => _TrickyBinStoryState();
}

class _TrickyBinStoryState extends State<TrickyBinStory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            shape: BoxShape.circle,
          ),
          child: Container(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/svg/logorabbit.svg",
            ),
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Container(
          child: Text(
            "TrickyBin",
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
