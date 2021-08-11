import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraRotateReels extends StatefulWidget {
  @override
  _CameraRotateReelsState createState() => _CameraRotateReelsState();
}

class _CameraRotateReelsState extends State<CameraRotateReels> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          CupertinoIcons.camera_rotate_fill,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
