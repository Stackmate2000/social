import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlashCameraReels extends StatefulWidget {
  @override
  _FlashCameraReelsState createState() => _FlashCameraReelsState();
}

class _FlashCameraReelsState extends State<FlashCameraReels> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          CupertinoIcons.flag_slash,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
