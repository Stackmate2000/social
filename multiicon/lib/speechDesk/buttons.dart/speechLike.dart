import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeechLike extends StatefulWidget {
  @override
  _SpeechLikeState createState() => _SpeechLikeState();
}

class _SpeechLikeState extends State<SpeechLike> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstCurve: Curves.bounceIn,
      secondCurve: Curves.bounceOut,
      duration: Duration(milliseconds: 200),
      crossFadeState:
          isliked ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      firstChild: GestureDetector(
        onTap: () {
          setState(() {
            isliked = true;
          });
        },
        child: Icon(
          CupertinoIcons.suit_heart,
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
          size: 26,
          color: Colors.white,
        ),
      ),
    );
  }
}
