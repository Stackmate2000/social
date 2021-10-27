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
      backgroundColor: Colors.white,
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
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: _index == 1 ? Color(0xff000000) : Color(0xffFFFFFF),
                ),
                height: 65,
                child: Align(
                  alignment: Alignment.center,
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
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/splash.jpg"),
                                        fit: BoxFit.cover),
                                    shape: BoxShape.circle,
                                    color: Colors.grey[600],
                                  )),
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
