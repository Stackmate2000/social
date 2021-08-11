import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlashCamera extends StatefulWidget {
  @override
  _FlashCameraState createState() => _FlashCameraState();
}

class _FlashCameraState extends State<FlashCamera> {
  bool isflashon = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedCrossFade(
        duration: Duration(milliseconds: 0),
        reverseDuration: Duration(milliseconds: 0),
        crossFadeState:
            isflashon ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        firstChild: Container(
          child: IconButton(
              icon: Icon(
                CupertinoIcons.bolt_fill,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isflashon = true;
                });
              }),
        ),
        secondChild: Container(
          child: IconButton(
              icon: Icon(
                CupertinoIcons.bolt_slash,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isflashon = false;
                });
              }),
        ),
      ),
    );
  }
}
