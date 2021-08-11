import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/homescreen_home/homescreen_Home.dart';
import 'package:multiicon/homescreen_notification/homescreen_Notification.dart';
import 'package:multiicon/homescreen_reels/homescreen_Reels.dart';
import 'package:multiicon/homescreen_search/homescreen_Search.dart';
import 'package:multiicon/homescreen_userprofile/homescreen_userProfile.dart';
import 'package:multiicon/speechDesk/speechDesk_main.dart';

class BottomNav2 extends StatefulWidget {
  @override
  _BottomNav2State createState() => _BottomNav2State();
}

class _BottomNav2State extends State<BottomNav2> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[400]),
        child: Stack(
          children: [
            _index == 0
                ? Home()
                : (_index == 1
                    ? SpeechDesk()
                    : _index == 2
                        ? Reels()
                        : _index == 3
                            ? Search()
                            : _index == 4
                                ? Notify()
                                : Profile()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: Colors.white,
                ),
                height: 70,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 0;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                    height: _index == 0 ? 25.0 : 22.0,
                                    width: 30.0,
                                    child: _index == 0
                                        ? SvgPicture.asset(
                                            "assets/svg/homesevenfill.svg",
                                            color: Colors.purple[600],
                                          )
                                        : SvgPicture.asset(
                                            "assets/svg/homeseven.svg",
                                            color: Colors.grey[600],
                                          )),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 1;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                    height: 20,
                                    width: 20,
                                    child: _index == 1
                                        ? SvgPicture.asset(
                                            "assets/svg/featherwing.svg",
                                            color: Colors.purple[600],
                                          )
                                        : SvgPicture.asset(
                                            "assets/svg/featherwing.svg",
                                            color: Colors.grey[600],
                                          )),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 2;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    "assets/svg/reeltv.svg",
                                    color: _index == 2
                                        ? Colors.black
                                        : Colors.grey[600],
                                  ),
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 3;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                    height: 20,
                                    width: 20,
                                    child: _index == 3
                                        ? SvgPicture.asset(
                                            "assets/svg/searchc.svg",
                                            color: Colors.purple[600],
                                          )
                                        : SvgPicture.asset(
                                            "assets/svg/searchb.svg",
                                            color: Colors.grey[600],
                                          )),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 4;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                    height: 20,
                                    width: 20,
                                    child: _index == 4
                                        ? SvgPicture.asset(
                                            "assets/svg/notifynew.svg",
                                            color: Colors.purple[600],
                                          )
                                        : SvgPicture.asset(
                                            "assets/svg/notificationone.svg",
                                            color: Colors.black,
                                          )),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 5;
                            });
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    "assets/svg/personfill.svg",
                                    color:
                                        Colors.blueGrey[900].withOpacity(0.9),
                                  ),
                                ),
                              )),
                        ),
                      ],
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
      child: HomeScreenA(),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeScreenSearch(),
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

class SpeechDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SpeechDeskMain(),
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
      child: HomeScreenUserProfile(),
    );
  }
}
