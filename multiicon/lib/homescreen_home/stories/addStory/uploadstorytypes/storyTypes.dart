import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

class StoryTypes extends StatefulWidget {
  @override
  _StoryTypesState createState() => _StoryTypesState();
}

class _StoryTypesState extends State<StoryTypes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        blurRadius: 4.0,
                        spreadRadius: 4.0,
                        offset: Offset(7.0, 6.0))
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
                            "Add",
                            style: GoogleFonts.montserrat(
                              fontSize: 36,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: Container(
                          child: Icon(
                            MdiIcons.plus,
                            color: Color(0xff000000).withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: Container(
                          child: Text(
                            "Stories",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                        color: Color(0xff121212).withOpacity(0.1),
                        blurRadius: 4.0,
                        spreadRadius: 4.0,
                        offset: Offset(7.0, 6.0))
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
                            "Record",
                            style: GoogleFonts.montserrat(
                              fontSize: 36,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: Container(
                          child: Icon(
                            MdiIcons.music,
                            color: Color(0xff000000).withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: Container(
                          child: Text(
                            "Reels",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w400,
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
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff000000).withOpacity(0.1),
                        blurRadius: 4.0,
                        spreadRadius: 4.0,
                        offset: Offset(7.0, 6.0))
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
                            "Upload",
                            style: GoogleFonts.montserrat(
                              fontSize: 36,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: Container(
                          child: Icon(
                            MdiIcons.cameraPlusOutline,
                            color: Color(0xff000000).withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: Container(
                          child: Text(
                            "Photo",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                        color: Color(0xff121212).withOpacity(0.1),
                        blurRadius: 4.0,
                        spreadRadius: 4.0,
                        offset: Offset(7.0, 6.0))
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
                            "Speak",
                            style: GoogleFonts.montserrat(
                              fontSize: 36,
                              color: Color(0xff000000).withOpacity(0.1),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: Container(
                          child: Icon(
                            MdiIcons.pencil,
                            color: Color(0xff000000).withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: Container(
                          child: Text(
                            "Aa",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              letterSpacing: 1.0,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w600,
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
