import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/animation/floatingAdd_button.dart';
import 'package:multiicon/animation/actionbuttonReels_view.dart';
import 'package:multiicon/homescreen_home/homeScreen_main.dart';
import 'package:multiicon/homescreen_notification/homescreen_Notification.dart';
import 'package:multiicon/homescreen_reels/homescreen_Reels.dart';

class BottomNav2 extends StatefulWidget {
  @override
  _BottomNav2State createState() => _BottomNav2State();
}

class _BottomNav2State extends State<BottomNav2>
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
                    ? Home()
                    : (_index == 1
                        ? Reels()
                        : _index == 2
                            ? Notify()
                            : Profile()),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Transform(
                    transform: Matrix4.translationValues(
                        0.0, animation.value * height, 0.0),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        color:
                            _index == 1 ? Color(0xff000000) : Color(0xffFFFFFF),
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
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
                                    height: 60,
                                    decoration: BoxDecoration(),
                                    child: Center(
                                      child: Container(
                                          height: _index == 0 ? 25.0 : 22.0,
                                          width: 30.0,
                                          child: _index == 0
                                              ? SvgPicture.asset(
                                                  "assets/svg/homesevenfill.svg",
                                                  color: Color(0xff000000),
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
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
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
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
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
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _index = 3;
                                  });
                                },
                                child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
                                    height: 60,
                                    decoration: BoxDecoration(),
                                    child: Center(
                                      child: Container(
                                          height: _index == 3 ? 25.0 : 22.0,
                                          width: 30.0,
                                          child: Icon(
                                            CupertinoIcons.person,
                                            color: _index == 3
                                                ? Color(0xff000000)
                                                : Colors.grey[600],
                                          )),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    child: _index == 1
                        ? ActionButtonReelsView()
                        : FloatingAddButton()),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeScreenMain(),
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
    return Container();
  }
}
