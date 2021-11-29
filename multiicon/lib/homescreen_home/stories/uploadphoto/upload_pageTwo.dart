import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadPageTwo extends StatefulWidget {
  @override
  _UploadPageTwoState createState() => _UploadPageTwoState();
}

class _UploadPageTwoState extends State<UploadPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.1),
                      blurRadius: 4.0,
                      spreadRadius: 2.0,
                      offset: Offset(7.0, 10.0))
                ],
                color: Color(0xffFFFFFF),
              ),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/nigga.jpg"),
                        fit: BoxFit.cover,
                      ),
                      color: Color(0xffADB3BF),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 30.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "THE BETTER SUMMER",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Endless Adventure",
                                      style: GoogleFonts.dancingScript(
                                          fontSize: 26.0,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
