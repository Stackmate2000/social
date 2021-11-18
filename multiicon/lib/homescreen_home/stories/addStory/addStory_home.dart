import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/homescreen_home/stories/addStory/user_inputprofile/userInput_main.dart';

class AddStoryHome extends StatefulWidget {
  @override
  _AddStoryHomeState createState() => _AddStoryHomeState();
}

class _AddStoryHomeState extends State<AddStoryHome> {
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
                  Navigator.of(context).push(_nextRoute());
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    color: Color(0xffADB3BF),
                  ),
                  child: Icon(
                    CupertinoIcons.person_fill,
                    color: Color(0xff000000).withOpacity(0.3),
                    size: 80,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: e - 45,
                left: 30,
                child: SizedBox(
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Color(0xffF4F6F6),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(_nextRoute());
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff896ae4), shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            MdiIcons.plus,
                            color: Color(0xffF4F6F6),
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Container(
          child: Text(
            "Add story",
            style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Color(0xff000000).withOpacity(0.6),
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => UserInputMain(),
    transitionDuration: Duration(milliseconds: 250),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeIn;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      // ignore: unused_local_variable
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
