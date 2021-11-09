import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/activityselect/activitySelect_columnfour.dart';
import 'package:multiicon/addButton_bottomnav/activityselect/activitySelect_columnone.dart';
import 'package:multiicon/addButton_bottomnav/activityselect/activitySelect_columnthree.dart';
import 'package:multiicon/addButton_bottomnav/activityselect/activitySelect_columntow.dart';
import 'package:multiicon/addButton_bottomnav/rateusSlider.dart';

class SelectActivity extends StatefulWidget {
  @override
  _SelectActivityState createState() => _SelectActivityState();
}

class _SelectActivityState extends State<SelectActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0, right: 0.0, left: 0.0),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, right: 30.0, left: 30.0, bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(CupertinoIcons.arrow_left,
                                  color: Color(0xff000000).withOpacity(0.2)),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                      color:
                                          Color(0xff000000).withOpacity(0.1)),
                                  child: Icon(
                                    MdiIcons.close,
                                    color: Color(0xffFFFFFF),
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
                          padding: const EdgeInsets.only(
                              top: 0.0, right: 30.0, left: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Hey! Select something thats makes you feel preety good.",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w400),
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
                                      fontWeight: FontWeight.w600),
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
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff32C1E0).withOpacity(0.2),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 6.0))
                                  ],
                                  color: Color(0xff32C1E0),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                child: Text(
                                  "Continue",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
