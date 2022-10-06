import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_reels/small_pages/reelsComment.dart';

class CommentButton extends StatefulWidget {
  @override
  _CommentButtonState createState() => _CommentButtonState();
}

class _CommentButtonState extends State<CommentButton> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(_nextRoute());
          },
          child: CircleAvatar(
            backgroundColor: Colors.white24,
            child: Icon(
              CupertinoIcons.bubble_middle_bottom_fill,
              color: Colors.white,
            ),
          ),
        )),
        Text(
          "$counter",
          style: GoogleFonts.roboto(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

Route _nextRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ReelComment(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
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
