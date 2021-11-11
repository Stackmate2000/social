import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/activityselect/activitySelect_columnfour.dart';
import 'package:multiicon/addButton_bottomnav/activityselect/activitySelect_columnone.dart';
import 'package:multiicon/addButton_bottomnav/activityselect/activitySelect_columnthree.dart';
import 'package:multiicon/addButton_bottomnav/activityselect/activitySelect_columntwo.dart';

class SelectAvtivity extends StatefulWidget {
  @override
  _SelectAvtivityState createState() => _SelectAvtivityState();
}

class _SelectAvtivityState extends State<SelectAvtivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              right: 30.0,
              left: 30.0,
            ),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(CupertinoIcons.arrow_left,
                        color: Color(0xffFFFFFF).withOpacity(0.5)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          color: Color(0xffFFFFFF).withOpacity(0.1)),
                      child: Icon(
                        MdiIcons.close,
                        color: Color(0xffFFFFFF).withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0, right: 30.0, left: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Hey! Select something thats makes you feel preety good.",
                      style: GoogleFonts.karla(
                          fontSize: 20,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Text(
                      "SELECT UPTO 10 ACTIVITES",
                      style: GoogleFonts.karla(
                          fontSize: 14,
                          color: Color(0xff000000).withOpacity(0.3),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ActivitySelectColumnOne(),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  ActivitySelectColumnTwo(),
                  SizedBox(
                    width: 15.0,
                  ),
                  ActivitySelectColumnThree(),
                  SizedBox(
                    width: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: ActivitySelectColumnFour(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000).withOpacity(0.1),
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                              offset: Offset(7.0, 7.0))
                        ],
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Icon(
                        CupertinoIcons.arrow_right,
                        color: Color(0xffA55FEB),
                      ),
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
