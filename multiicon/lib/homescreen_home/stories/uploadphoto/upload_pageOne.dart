import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadPageOne extends StatefulWidget {
  @override
  _UploadPageOneState createState() => _UploadPageOneState();
}

class _UploadPageOneState extends State<UploadPageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(),
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
              borderRadius: BorderRadius.all(
                Radius.circular(21.0),
              ),
            ),
            child: Stack(
              children: [
                Container(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
