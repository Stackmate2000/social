import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryMediaButtons extends StatefulWidget {
  @override
  _StoryMediaButtonsState createState() => _StoryMediaButtonsState();
}

class _StoryMediaButtonsState extends State<StoryMediaButtons> {
  int _index = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 0;
                            });
                          },
                          child: _index == 0
                              ? Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        MdiIcons.brush,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "Text",
                                        style: GoogleFonts.roboto(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 1;
                            });
                          },
                          child: _index == 1
                              ? Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        MdiIcons.brush,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "Aa",
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 2;
                            });
                          },
                          child: _index == 2
                              ? Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        MdiIcons.brush,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "Text",
                                        style: GoogleFonts.roboto(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 3;
                            });
                          },
                          child: _index == 3
                              ? Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        MdiIcons.brush,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "Text",
                                        style: GoogleFonts.roboto(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  child: Icon(
                                    MdiIcons.brush,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
