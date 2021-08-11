import 'package:flutter/material.dart';
import 'package:multiicon/colors/backgroundColor.dart';

import 'package:google_fonts/google_fonts.dart';

class ThemeThree extends StatefulWidget {
  @override
  _ThemeThreeState createState() => _ThemeThreeState();
}

class _ThemeThreeState extends State<ThemeThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.28,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey[400].withOpacity(0.7),
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 6.0))
          ],
          image: DecorationImage(
            image: AssetImage("assets/imagetwo.jpg"),
            fit: BoxFit.cover,
          ),
          color: backgroundColor.withOpacity(0.9),
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Text(
                    "# 3",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
