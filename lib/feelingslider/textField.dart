import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/colors/backgroundColor.dart';
import 'package:multiicon/colors/primaryColor.dart';
import 'package:multiicon/feelingslider/delete_ownAccount.dart';
import 'package:multiicon/feelingslider/editProfile.dart';
import 'package:multiicon/feelingslider/editProfileImage.dart';

class TextFieldHello extends StatefulWidget {
  @override
  _TextFieldHelloState createState() => _TextFieldHelloState();
}

class _TextFieldHelloState extends State<TextFieldHello> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor.withOpacity(0.3),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topRight,
                decoration: BoxDecoration(color: primaryColor.withOpacity(0.2)),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 400,
                      left: 150,
                      child: Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(
                          color: backgroundColor.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: EditProfileImage(),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Container(
                                  // height: MediaQuery.of(context).size.height * 0.35,
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Colors.grey[400].withOpacity(0.7),
                                          blurRadius: 6.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0.0, 6.0))
                                    ],
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        child: EditProfile(),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Colors.grey[400].withOpacity(0.7),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Accounts",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.blueGrey,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Change account details",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.grey[500],
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          MdiIcons.keyVariant,
                                          size: 70.0,
                                          color: Colors.grey[100],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Colors.grey[400].withOpacity(0.7),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Your Activity ",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.blueGrey,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Average time you spend on TrickyBin",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.grey[500],
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          MdiIcons.cameraTimer,
                                          size: 70.0,
                                          color: Colors.grey[100],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Colors.grey[400].withOpacity(0.7),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Saved ",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.blueGrey,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Save History",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.grey[500],
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          MdiIcons.bookmarkOutline,
                                          size: 70.0,
                                          color: Colors.grey[100],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Colors.grey[400].withOpacity(0.7),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Help and Support",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.blueGrey,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Help us with your suggestions",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.grey[500],
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          MdiIcons.chatQuestion,
                                          size: 70.0,
                                          color: Colors.grey[100],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Colors.grey[400].withOpacity(0.7),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Disabled",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.blueGrey,
                                                  fontSize: 19.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Dark Mode",
                                              style: GoogleFonts.roboto(
                                                  color: Colors.grey[500],
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Switch(
                                            activeColor: Colors.purple[800],
                                            value: status,
                                            onChanged: (value) {
                                              print(
                                                "VALUE : $value",
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Colors.grey[500].withOpacity(0.7),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                  color: Colors.purple[800].withOpacity(0.8),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                child: Text(
                                  "Sign Out",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(child: DeleteOwnAccount()),
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Container(
                                  child: Text(
                                    "Version 1.0.0",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[500],
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[500].withOpacity(0.7),
                                blurRadius: 6.0,
                                offset: Offset(0.0, 6.0))
                          ]),
                      child: Icon(
                        CupertinoIcons.arrow_left,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: backgroundColor.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
