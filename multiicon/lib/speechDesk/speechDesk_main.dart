import 'package:flutter/material.dart';
import 'package:multiicon/speechDesk/buttons.dart/selectTheme_speechdesk.dart';
import 'package:multiicon/speechDesk/buttons.dart/speechLike.dart';
import 'package:multiicon/speechDesk/buttons.dart/speechShare.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/speechDesk/speech/speechOne.dart';
import 'package:multiicon/speechDesk/speech/speechTwo.dart';

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
                  child: SpeechOne(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: SpeechTwo(),
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
