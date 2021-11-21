import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/stories/followingStories/heropages/hero_pageOne.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FollowingStoryHeroOne extends StatefulWidget {
  @override
  _FollowingStoryHeroOneState createState() => _FollowingStoryHeroOneState();
}

class _FollowingStoryHeroOneState extends State<FollowingStoryHeroOne>
    with TickerProviderStateMixin {
  PageController controller;
  AnimationController animationController;

  @override
  void initState() {
    setState(() {
      controller = PageController();
      animationController =
          AnimationController(vsync: this, duration: Duration(hours: 100));
      animationController.forward();
      animationController.addStatusListener((status) async {
        if (controller.hasClients && animationController.isCompleted) {
          int totalPage = 2;
          if (controller.page == totalPage - 1) {
            Navigator.of(context).pop();
          } else {
            controller.nextPage(
                duration: Duration(hours: 100), curve: Curves.linearToEaseOut);
          }
          animationController.reset();
          animationController.forward();
        }
      });
      super.initState();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.red),
            ),
            Align(
              alignment: Alignment.center,
              child: Hero(
                tag: "storyOne",
                child: Container(
                  color: Colors.black,
                  child: GestureDetector(
                    onDoubleTap: () {
                      Navigator.of(context).pop();
                    },
                    onTap: () {
                      int totalPage = 2;
                      if (controller.page == totalPage - 1) {
                        Navigator.of(context).pop();
                      } else {
                        controller.nextPage(
                            duration: Duration(seconds: 8),
                            curve: Curves.easeInOut);
                      }
                    },
                    child: PageView(
                      controller: controller,
                      children: [
                        HeroPageOne(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              CupertinoIcons.clear,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/girl.jpg"),
                                  fit: BoxFit.cover),
                              color: Color(0xffADB3BF),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "kylie",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Color(0xffFFFFFF).withOpacity(0.9),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                "3min ago",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Color(0xffFFFFFF).withOpacity(0.5),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Icon(
                            MdiIcons.dotsHorizontal,
                            color: Color(0xffFFFFFF),
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
