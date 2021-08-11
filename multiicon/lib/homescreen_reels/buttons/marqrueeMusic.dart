import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class MarqueeMusic extends StatefulWidget {
  @override
  _MarqueeMusicState createState() => _MarqueeMusicState();
}

class _MarqueeMusicState extends State<MarqueeMusic> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Marquee(
          scrollAxis: Axis.horizontal,
          text: 'hello',
          style: GoogleFonts.roboto(
              color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          velocity: 20,
        ),
      ),
    );
  }
}
