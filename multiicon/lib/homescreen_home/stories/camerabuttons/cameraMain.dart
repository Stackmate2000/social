import 'dart:math' show pi;

import 'package:flutter/material.dart';

class CameraMain extends StatefulWidget {
  const CameraMain({Key key}) : super(key: key);

  @override
  _CameraMainState createState() => _CameraMainState();
}

class _CameraMainState extends State<CameraMain> {
  var isOpen = false;

  _toggleOpen() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toggleOpen();
      },
      child: Container(
        height: 70.0,
        width: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: isOpen
                          ? Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            )
                          : Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
