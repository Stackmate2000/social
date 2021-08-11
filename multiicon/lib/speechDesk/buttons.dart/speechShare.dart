import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeechShare extends StatefulWidget {
  @override
  _SpeechShareState createState() => _SpeechShareState();
}

class _SpeechShareState extends State<SpeechShare> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: Duration(milliseconds: 100),
      crossFadeState:
          isliked ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      firstChild: GestureDetector(
        onTap: () {
          setState(() {
            isliked = true;
          });
        },
        child: Icon(
          CupertinoIcons.arrowshape_turn_up_right,
          size: 22,
          color: Colors.white,
        ),
      ),
      secondChild: GestureDetector(
        onTap: () {
          setState(() {
            isliked = false;
          });
        },
        child: Icon(
          CupertinoIcons.suit_heart_fill,
          color: Colors.white,
        ),
      ),
    );
  }
}
