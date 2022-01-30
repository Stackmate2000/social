import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/stories/upload/uploadpages/storyUpload.dart';

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
    final double height = MediaQuery.of(context).size.height * 0.6;
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0, end: 1),
                          curve: Curves.easeIn,
                          duration: Duration(milliseconds: 1000),
                          builder: (BuildContext context, Object _val,
                              Widget child) {
                            return Opacity(
                              opacity: _val,
                              child: child,
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    child: Text(
                                      "Posts",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          color: _index == 0
                                              ? Color(0xffFFFFFF)
                                              : Color(0xffFFFFFF)
                                                  .withOpacity(0.7),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.0),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _index = 1;
                                    });
                                  },
                                  child: Container(
                                    child: Text(
                                      "Stories",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          color: _index == 1
                                              ? Color(0xffFFFFFF)
                                              : Color(0xffFFFFFF)
                                                  .withOpacity(0.7),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.0),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _index = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 60,
                                    child: Container(
                                      child: Text(
                                        "Reels",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            color: _index == 2
                                                ? Color(0xffFFFFFF)
                                                : Color(0xffFFFFFF)
                                                    .withOpacity(0.7),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
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
      child: StoryUpload(),
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
