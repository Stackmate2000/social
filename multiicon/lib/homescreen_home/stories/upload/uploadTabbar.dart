import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/animation.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/homescreen_home/homeScreen_main.dart';
import 'package:multiicon/homescreen_home/stories/upload/uploadpages/uploadStory.dart';
import 'package:multiicon/homescreen_notification/homescreen_Notification.dart';
import 'package:multiicon/homescreen_reels/homescreen_Reels.dart';

class UploadTabBar extends StatefulWidget {
  const UploadTabBar({Key key}) : super(key: key);

  @override
  _UploadTabBarState createState() => _UploadTabBarState();
}

class _UploadTabBarState extends State<UploadTabBar>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);

    animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Container(
            decoration: BoxDecoration(color: Colors.grey[400]),
            child: Stack(
              children: [
                _index == 0
                    ? UploadOne()
                    : (_index == 1 ? UploadTwo() : UploadThree()),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, animation.value * height, 0.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _index = 0;
                                });
                              },
                              child: Container(
                                  height: 60,
                                  child: Center(
                                    child: Container(
                                        height: _index == 0 ? 25.0 : 22.0,
                                        width: 30.0,
                                        child: _index == 0
                                            ? SvgPicture.asset(
                                                "assets/svg/homesevenfill.svg",
                                                color: Color(0xffFFFFFF),
                                              )
                                            : SvgPicture.asset(
                                                "assets/svg/homeseven.svg",
                                                color: Colors.grey[600],
                                              )),
                                  )),
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _index = 1;
                                });
                              },
                              child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(),
                                  child: Center(
                                    child: Container(
                                        height: _index == 1 ? 25.0 : 22.0,
                                        width: 30.0,
                                        child: SvgPicture.asset(
                                          "assets/svg/reeltv.svg",
                                          color: _index == 1
                                              ? Color(0xffFFFFFF)
                                              : Colors.grey[600],
                                        )),
                                  )),
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _index = 2;
                                });
                              },
                              child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(),
                                  child: Center(
                                    child: Container(
                                      height: _index == 2 ? 25.0 : 22.0,
                                      width: 30.0,
                                      child: _index == 2
                                          ? SvgPicture.asset(
                                              "assets/svg/notifynew.svg",
                                              color: Color(0xff000000),
                                            )
                                          : SvgPicture.asset(
                                              "assets/svg/notificationone.svg",
                                              color: Colors.grey[600],
                                            ),
                                    ),
                                  )),
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
        },
      ),
    );
  }
}

class UploadOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UploadStory(),
    );
  }
}

class UploadTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class UploadThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
