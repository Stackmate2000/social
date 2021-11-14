import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiicon/homescreen_userprofile/tabBar/indexOne.dart';
import 'package:multiicon/homescreen_userprofile/tabBar/indexThree.dart';
import 'package:multiicon/homescreen_userprofile/tabBar/indexTwo.dart';

class GalleryMainTabBar extends StatefulWidget {
  @override
  _GalleryMainTabBarState createState() => _GalleryMainTabBarState();
}

class _GalleryMainTabBarState extends State<GalleryMainTabBar> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          _index == 0
              ? ReelsTabBar()
              : (_index == 1 ? PhotosTabBar() : TagsTabBar()),
          Center(
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.transparent,
              ),
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
                      height: 40,
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
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, bottom: 80.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: IndexOne(),
      ),
    );
  }
}

class PhotosTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, bottom: 80.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: IndexTwo(),
      ),
    );
  }
}

class TagsTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, bottom: 80.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: IndexThree(),
      ),
    );
  }
}
