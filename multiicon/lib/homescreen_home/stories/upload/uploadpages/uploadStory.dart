import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/animation.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/homescreen_home/homeScreen_main.dart';
import 'package:multiicon/homescreen_notification/homescreen_Notification.dart';
import 'package:multiicon/homescreen_reels/homescreen_Reels.dart';

class UploadStory extends StatefulWidget {
  const UploadStory({Key key}) : super(key: key);

  @override
  _UploadStoryState createState() => _UploadStoryState();
}

class _UploadStoryState extends State<UploadStory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            color: Color(0xffFFFFFF).withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Color(0XFFffffff),
                          ),
                        ),
                      )
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
