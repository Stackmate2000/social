import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              width: MediaQuery.of(context).size.width * 0.2,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  MdiIcons.brush,
                                  size: 22,
                                  color: Colors.black,
                                ),
                              )
                            : Container(
                                child: Icon(
                                  MdiIcons.brush,
                                  size: 22,
                                  color: Colors.white,
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
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  MdiIcons.atom,
                                  size: 22,
                                  color: Colors.black,
                                ),
                              )
                            : Container(
                                child: Icon(
                                  MdiIcons.atom,
                                  size: 22,
                                  color: Colors.white,
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
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  MdiIcons.arrangeSendBackward,
                                  size: 22,
                                  color: Colors.black,
                                ),
                              )
                            : Container(
                                child: Icon(
                                  MdiIcons.arrangeSendBackward,
                                  size: 22,
                                  color: Colors.white,
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
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  CupertinoIcons.music_note,
                                  size: 22,
                                  color: Colors.black,
                                ),
                              )
                            : Container(
                                child: Icon(
                                  CupertinoIcons.music_note,
                                  size: 22,
                                  color: Colors.white,
                                ),
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
    );
  }
}
