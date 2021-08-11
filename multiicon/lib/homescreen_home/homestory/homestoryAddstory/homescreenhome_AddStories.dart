import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_home/homestory/userinput/storyNewpost_tabbar.dart';

class HomeScreenHomeAddStories extends StatefulWidget {
  @override
  _HomeScreenHomeAddStoriesState createState() =>
      _HomeScreenHomeAddStoriesState();
}

class _HomeScreenHomeAddStoriesState extends State<HomeScreenHomeAddStories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StoryNewPostTabBar()));
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueGrey.withOpacity(0.8),
                  ),
                  child: Center(
                    child: Container(
                      height: 35,
                      width: 35,
                      child: SvgPicture.asset(
                        "assets/svg/personfill.svg",
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 30,
                child: SizedBox(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryNewPostTabBar()));
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.red,
                                Colors.purple,
                                Colors.indigo,
                              ],
                            ),
                            shape: BoxShape.circle),
                        child: Icon(
                          MdiIcons.plus,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
