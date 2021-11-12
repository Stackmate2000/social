import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FollowersView extends StatefulWidget {
  @override
  _FollowersViewState createState() => _FollowersViewState();
}

class _FollowersViewState extends State<FollowersView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Icon(
                                            MdiIcons.imageOutline,
                                            color: Colors.grey.withOpacity(0.1),
                                            size: 80,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "67",
                                                style: GoogleFonts.karla(
                                                  fontSize: 24,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                "Photo",
                                                style: GoogleFonts.karla(
                                                  fontSize: 16,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Icon(
                                            MdiIcons.imageOutline,
                                            color: Colors.grey.withOpacity(0.1),
                                            size: 80,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "326 K",
                                                style: GoogleFonts.karla(
                                                  fontSize: 24,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                "following",
                                                style: GoogleFonts.karla(
                                                  fontSize: 16,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Icon(
                                            MdiIcons.imageOutline,
                                            color: Colors.grey.withOpacity(0.1),
                                            size: 80,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "7",
                                                style: GoogleFonts.karla(
                                                  fontSize: 24,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                "follower",
                                                style: GoogleFonts.karla(
                                                  fontSize: 16,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
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
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "We make designs driven development of your web product.",
                          style: GoogleFonts.karla(
                            fontSize: 16,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        child: Text(
                          "Born 3 of Febuary",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        child: Text(
                          "www.websitedesigner@hotmail.com",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Color(0xff3190FF),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff896ae4),
                                    Color(0xff937cdc),
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.1),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 6.0))
                              ],
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
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "work",
                                    style: GoogleFonts.karla(
                                        fontSize: 14,
                                        color: Color(0xffFFFFFF),
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
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff896ae4),
                                    Color(0xff937cdc),
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.1),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 6.0))
                              ],
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
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "traveller",
                                    style: GoogleFonts.karla(
                                        fontSize: 14,
                                        color: Color(0xffFFFFFF),
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
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff896ae4),
                                    Color(0xff937cdc),
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.1),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 6.0))
                              ],
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
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Foodie",
                                    style: GoogleFonts.karla(
                                        fontSize: 14,
                                        color: Color(0xffFFFFFF),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
