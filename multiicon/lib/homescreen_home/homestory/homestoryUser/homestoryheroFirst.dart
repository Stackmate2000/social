import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/homestory/homestoryUser/homestoryheroimageFirst.dart';
import 'package:multiicon/homescreen_home/homestory/homestoryUser/homestoryheroimageSecond.dart';

class HomeStoryHeroFirst extends StatefulWidget {
  @override
  _HomeStoryHeroFirstState createState() => _HomeStoryHeroFirstState();
}

class _HomeStoryHeroFirstState extends State<HomeStoryHeroFirst>
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
      body: SafeArea(
        child: Container(
          child: Hero(
            tag: "story",
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
                    Container(
                      child: HomeStoryHeroImageFirst(),
                    ),
                    Container(
                      child: HomeStoryHeroImageSecond(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
