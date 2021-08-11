import 'package:flutter/material.dart';
import 'package:multiicon/speechDesk/buttons.dart/selectTheme_speechdesk.dart';
import 'package:multiicon/speechDesk/buttons.dart/speechLike.dart';
import 'package:multiicon/speechDesk/buttons.dart/speechShare.dart';

import 'package:google_fonts/google_fonts.dart';

class SpeechDeskMain extends StatefulWidget {
  @override
  _SpeechDeskMainState createState() => _SpeechDeskMainState();
}

class _SpeechDeskMainState extends State<SpeechDeskMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue[800], Colors.cyan],
              ),
            ),
            child: PageView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: TweenAnimationBuilder(
                            child: Text(
                              "The only place where success comes before work is in the dictionary",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 500),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          child: TweenAnimationBuilder(
                            child: Text(
                              "- " "VIDAL SESSON " "-",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 250),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: TweenAnimationBuilder(
                            child: Text(
                              "Sometimes the dreams that cometrue are the dreams you never even knew you had",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 500),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          child: TweenAnimationBuilder(
                            child: Text(
                              "- " "ALICE SEBOLD " "-",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 250),
                            builder: (BuildContext context, double _val,
                                Widget child) {
                              return Opacity(opacity: _val, child: child);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
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
                    Container(
                      child: SelectThemeSpeechDesk(),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Align(
                              alignment: Alignment.center, child: SpeechLike()),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Align(
                              alignment: Alignment.center,
                              child: SpeechShare()),
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
