import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadTabbarTwo extends StatefulWidget {
  const UploadTabbarTwo({Key key}) : super(key: key);

  @override
  _UploadTabbarTwoState createState() => _UploadTabbarTwoState();
}

class _UploadTabbarTwoState extends State<UploadTabbarTwo>
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
    final double height = MediaQuery.of(context).size.height * 0.3;
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xff000000),
            ),
            child: Stack(
              children: [
                _index == 0
                    ? UploadOne()
                    : (_index == 1 ? UploadTwo() : UploadThree()),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, animation.value * height, 0.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                              SizedBox(width: 25.0),
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
    return Container();
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
