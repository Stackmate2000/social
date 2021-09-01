import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/colors/backgroundColor.dart';
import 'package:multiicon/speechDesk/themes/ThemeFour.dart';
import 'package:multiicon/speechDesk/themes/themeOne.dart';
import 'package:multiicon/speechDesk/themes/themeThree.dart';
import 'package:multiicon/speechDesk/themes/themeTwo.dart';

class ComposeSpeech extends StatefulWidget {
  @override
  _ComposeSpeechState createState() => _ComposeSpeechState();
}

class _ComposeSpeechState extends State<ComposeSpeech> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.height * 0.95,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        Container(
                          child: Icon(
                            CupertinoIcons.circle_grid_hex_fill,
                            size: 200,
                            color: backgroundColor.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[200].withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: IconButton(
                            icon: Icon(
                              Icons.clear,
                              color: Colors.blueGrey,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 130.0),
                        child: Container(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 50.0,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey[400]
                                                .withOpacity(0.7),
                                            blurRadius: 6.0,
                                            spreadRadius: 2.0,
                                            offset: Offset(0.0, 6.0))
                                      ],
                                      color:
                                          Colors.purple[800].withOpacity(0.8),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    child: Text(
                                      "themes",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Still images",
                                  style: GoogleFonts.roboto(
                                      color: Colors.blueGrey.withOpacity(0.1),
                                      fontSize: 50,
                                      fontWeight: FontWeight.w500),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ThemeOne(),
                                        ThemeTwo(),
                                        ThemeThree()
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      child: ThemeFour(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue[800], Colors.cyan],
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 100.0, left: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _showModalBottomSheet(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.pencil,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  "Themes",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20.0),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[200].withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: Colors.blueGrey,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
