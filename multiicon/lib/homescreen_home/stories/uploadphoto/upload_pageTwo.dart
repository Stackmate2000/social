import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadPageTwo extends StatefulWidget {
  @override
  _UploadPageTwoState createState() => _UploadPageTwoState();
}

class _UploadPageTwoState extends State<UploadPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
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
                borderRadius: BorderRadius.all(
                  Radius.circular(21.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
