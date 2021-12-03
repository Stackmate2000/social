import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_home/stories/uploadphoto/upload_pageOnenav.dart';

class UploadPageOne extends StatefulWidget {
  @override
  _UploadPageOneState createState() => _UploadPageOneState();
}

class _UploadPageOneState extends State<UploadPageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xff000000).withOpacity(0.1),
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                    offset: Offset(7.0, 10.0))
              ],
              color: Color(0xffFFFFFF),
            ),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(_nextRoute());
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nigga.jpg"),
                          fit: BoxFit.cover,
                        ),
                        color: Color(0xffADB3BF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => UploadPageOneNav(),
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
