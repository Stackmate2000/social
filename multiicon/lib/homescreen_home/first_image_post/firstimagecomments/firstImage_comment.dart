import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstImageComment extends StatefulWidget {
  const FirstImageComment({Key key}) : super(key: key);

  @override
  _FirstImageCommentState createState() => _FirstImageCommentState();
}

class _FirstImageCommentState extends State<FirstImageComment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage("assets/work.jpg"),
                          fit: BoxFit.cover),
                      color: Color(0xffADB3BF),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    child: Text(
                      "Rovira james",
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Color(0xff000000).withOpacity(0.9),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "When I find myself in a creative block I always find it the most reenergizing to explore the way.",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text(
                        "50m.",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Color(0xff000000).withOpacity(0.7),
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage("assets/nigga.jpg"),
                          fit: BoxFit.cover),
                      color: Color(0xffADB3BF),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    child: Text(
                      "Nigga man",
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Color(0xff000000).withOpacity(0.9),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "When I find myself.",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "5m",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Color(0xff000000).withOpacity(0.7),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                CupertinoIcons.heart,
                                color: Color(0xff000000).withOpacity(0.7),
                                size: 20.0,
                              ),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              "0",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Color(0xff000000).withOpacity(0.7),
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Container(
                              child: Text(
                                "Reply",
                                style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    color: Color(0xff000000).withOpacity(0.7),
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.start,
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
        ),
      ],
    );
  }
}
