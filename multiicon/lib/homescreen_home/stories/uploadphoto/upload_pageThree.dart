import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadPageThree extends StatefulWidget {
  @override
  _UploadPageThreeState createState() => _UploadPageThreeState();
}

class _UploadPageThreeState extends State<UploadPageThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff000000).withOpacity(0.1),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(7.0, 10.0))
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage("assets/nigga.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Color(0xffADB3BF),
                                ),
                              ),
                            ),
                            Transform.rotate(
                              angle: pi / 2,
                              child: Text(
                                "Los Angles",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.rotate(
                          angle: pi / -2,
                          child: Text(
                            "Home's town",
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 50.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff000000).withOpacity(0.1),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(7.0, 10.0))
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage("assets/work.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Color(0xffADB3BF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
