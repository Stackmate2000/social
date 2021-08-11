import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReelsTime extends StatefulWidget {
  @override
  _ReelsTimeState createState() => _ReelsTimeState();
}

class _ReelsTimeState extends State<ReelsTime> {
  bool thirtytosixty = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedCrossFade(
        duration: Duration(milliseconds: 100),
        reverseDuration: Duration(milliseconds: 100),
        crossFadeState: thirtytosixty
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        firstChild: Container(
          child: IconButton(
              icon: Icon(
                CupertinoIcons.goforward_30,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  thirtytosixty = true;
                });
              }),
        ),
        secondChild: Container(
          child: IconButton(
              icon: Icon(
                CupertinoIcons.goforward_60,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  thirtytosixty = false;
                });
              }),
        ),
      ),
    );
  }
}
