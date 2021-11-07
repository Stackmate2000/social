import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/homescreen_home/home_Main.dart';
import 'package:multiicon/homescreen_home/homescreen_Home.dart';
import 'package:multiicon/homescreen_notification/homescreen_Notification.dart';
import 'package:multiicon/homescreen_reels/homescreen_Reels.dart';
import 'package:multiicon/homescreen_userprofile/profileUI/profileUI.dart';

class BottomNav2 extends StatefulWidget {
  @override
  _BottomNav2State createState() => _BottomNav2State();
}

class _BottomNav2State extends State<BottomNav2> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[400]),
        child: Stack(
          children: [
            _index == 0
                ? Home()
                : (_index == 1
                    ? Reels()
                    : _index == 2
                        ? Notify()
                        : Profile()),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  color: _index == 1 ? Color(0xff000000) : Color(0xffFFFFFFF),
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 0;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.07,
                              height: 50,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                    height: _index == 0 ? 25.0 : 22.0,
                                    width: 30.0,
                                    child: _index == 0
                                        ? SvgPicture.asset(
                                            "assets/svg/homesevenfill.svg",
                                            color: Color(0xff3190FF),
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
                              width: MediaQuery.of(context).size.width * 0.07,
                              height: 50,
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
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 2;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.07,
                              height: 50,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                  height: _index == 2 ? 25.0 : 22.0,
                                  width: 30.0,
                                  child: _index == 2
                                      ? SvgPicture.asset(
                                          "assets/svg/notifynew.svg",
                                          color: Color(0xff3190FF),
                                        )
                                      : SvgPicture.asset(
                                          "assets/svg/notificationone.svg",
                                          color: Colors.grey[600],
                                        ),
                                ),
                              )),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 3;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.07,
                              height: 50,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                    height: _index == 3 ? 25.0 : 22.0,
                                    width: 30.0,
                                    child: Icon(CupertinoIcons.person)),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Positioned(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff46C0DE).withOpacity(0.2),
                                blurRadius: 4.0,
                                spreadRadius: 2.0,
                                offset: Offset(0.0, 6.0))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(21.0)),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xff3190FF),
                                Color(0xff46C0DE),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Icon(
                        CupertinoIcons.add,
                        color: Color(0xffFFFFFF),
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeMain(),
    );
  }
}

class Reels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeScreenC(),
    );
  }
}

class Notify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeScreenD(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ProfileUI(),
    );
  }
}
