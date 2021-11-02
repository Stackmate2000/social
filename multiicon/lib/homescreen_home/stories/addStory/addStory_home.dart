import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

class AddStoryHome extends StatefulWidget {
  @override
  _AddStoryHomeState createState() => _AddStoryHomeState();
}

class _AddStoryHomeState extends State<AddStoryHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffADB3BF)),
                  child: Center(
                    child: Container(
                      height: 35,
                      width: 35,
                      child: SvgPicture.asset(
                        "assets/svg/personfill.svg",
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: e - 20,
                left: 30,
                child: SizedBox(
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff3190FF), shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            MdiIcons.plus,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Container(
          child: Text(
            "Add story",
            style: GoogleFonts.roboto(
                fontSize: 14,
                color: Color(0xff000000).withOpacity(0.7),
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
