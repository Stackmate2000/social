import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MoodCheckInResults extends StatefulWidget {
  @override
  _MoodCheckInResultsState createState() => _MoodCheckInResultsState();
}

class _MoodCheckInResultsState extends State<MoodCheckInResults> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              right: 30.0,
              left: 30.0,
            ),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(CupertinoIcons.arrow_left,
                        color: Color(0xffFFFFFF).withOpacity(0.5)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          color: Color(0xffFFFFFF).withOpacity(0.1)),
                      child: Icon(
                        MdiIcons.close,
                        color: Color(0xffFFFFFF).withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Container(
                          child: Text(
                            "Activities",
                            style: GoogleFonts.karla(
                              fontSize: 38,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30.0,
                        ),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff000000).withOpacity(0.1),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(21.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          MdiIcons.briefcaseOutline,
                                          color: Color(0xffA55FEB),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "work",
                                        style: GoogleFonts.karla(
                                            fontSize: 14,
                                            color: Color(0xffA55FEB),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff000000).withOpacity(0.1),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(21.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          MdiIcons.airplaneTakeoff,
                                          color: Color(0xffA55FEB),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "traveller",
                                        style: GoogleFonts.karla(
                                            fontSize: 14,
                                            color: Color(0xffA55FEB),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff000000).withOpacity(0.1),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(21.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          MdiIcons.noodles,
                                          color: Color(0xffA55FEB),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "Foodie",
                                        style: GoogleFonts.karla(
                                            fontSize: 14,
                                            color: Color(0xffA55FEB),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Container(
                              child: Text(
                                "Mood",
                                style: GoogleFonts.karla(
                                    fontSize: 38,
                                    color: Color(0xff000000).withOpacity(0.1),
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff000000).withOpacity(0.1),
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(0.0, 6.0))
                                ],
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(21.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      child: Icon(
                                        CupertinoIcons.smiley,
                                        color: Color(0xffA55FEB),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "Super Awsome",
                                      style: GoogleFonts.karla(
                                          fontSize: 14,
                                          color: Color(0xffA55FEB),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
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
          ),
        ],
      ),
    );
  }
}
