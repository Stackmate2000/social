import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTabBarProfile extends StatefulWidget {
  @override
  _CustomTabBarProfileState createState() => _CustomTabBarProfileState();
}

class _CustomTabBarProfileState extends State<CustomTabBarProfile> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          _index == 0
              ? ReelsTabBar()
              : (_index == 1 ? PhotosTabBar() : TagsTabBar()),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            height: 50.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0),
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
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1.0,
                              color:
                                  _index == 0 ? Colors.blueGrey : Colors.white),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          child: SvgPicture.asset(
                            "assets/svg/reeltv.svg",
                            height: 23,
                            width: 23,
                            color: _index == 0
                                ? Colors.blueGrey
                                : Colors.grey[800].withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1.0,
                              color:
                                  _index == 1 ? Colors.blueGrey : Colors.white),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 23,
                          width: 23,
                          child: SvgPicture.asset(
                            "assets/svg/album.svg",
                            color: _index == 1
                                ? Colors.blueGrey
                                : Colors.grey[800].withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1.0,
                              color:
                                  _index == 2 ? Colors.blueGrey : Colors.white),
                        ),
                      ),
                      height: 50.0,
                      child: Center(
                        child: Container(
                          child: SvgPicture.asset(
                            "assets/svg/bag.svg",
                            height: 23,
                            width: 23,
                            color: _index == 2
                                ? Colors.blueGrey
                                : Colors.grey[800].withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReelsTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PhotosTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class TagsTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
