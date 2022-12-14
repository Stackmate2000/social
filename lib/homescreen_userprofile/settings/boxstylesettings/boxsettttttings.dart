import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BoxSettings extends StatefulWidget {
  @override
  _BoxSettingsState createState() => _BoxSettingsState();
}

class _BoxSettingsState extends State<BoxSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: LinearGradient(colors: [
                    Color(0xff896ae4),
                    Color(0xff937cdc),
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff000000).withOpacity(0.1),
                        blurRadius: 40.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 30.0))
                  ],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 30.0),
                        child: Container(
                          child: Text(
                            "Rate",
                            style: GoogleFonts.montserrat(
                              fontSize: 38,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Container(
                          child: Icon(
                            Icons.star_outline,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Container(
                          child: Text(
                            "Rate TrickyBin stars",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff000000).withOpacity(0.1),
                        blurRadius: 40.0,
                        spreadRadius: 0.0,
                        offset: Offset(0.0, 30.0))
                  ],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Container(
                          child: Text(
                            "Contac",
                            style: GoogleFonts.montserrat(
                              fontSize: 38,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Container(
                          child: Icon(
                            Icons.mobile_friendly,
                            color: Color(0xff896ae4),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Container(
                          child: Text(
                            "Contact support",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Color(0xff000000).withOpacity(0.7),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff000000).withOpacity(0.1),
                        blurRadius: 40.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 6.0))
                  ],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 30.0),
                        child: Container(
                          child: Text(
                            "Know ",
                            style: GoogleFonts.montserrat(
                              fontSize: 38,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Container(
                            child: Icon(
                          Icons.book_outlined,
                          color: Color(0xff896ae4),
                        )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Container(
                          child: Text(
                            "Know about our Policy",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Color(0xff000000).withOpacity(0.7),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff000000).withOpacity(0.1),
                        blurRadius: 40.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 6.0))
                  ],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Container(
                          child: Text(
                            "Achie'v",
                            style: GoogleFonts.montserrat(
                              fontSize: 38,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Container(
                            child: Icon(
                          MdiIcons.bullseyeArrow,
                          color: Color(0xff896ae4),
                        )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Container(
                          child: Text(
                            "Achievements",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Color(0xff000000).withOpacity(0.7),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
