import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SliderFeeling extends StatefulWidget {
  @override
  _SliderFeelingState createState() => _SliderFeelingState();
}

class _SliderFeelingState extends State<SliderFeeling> {
  var FeedbackText = "Really";
  var sliderValue = 0.0;

  IconData FeedBackIcon = Icons.calendar_today;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, right: 30.0, left: 30.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(CupertinoIcons.arrow_left,
                        color: Color(0xff000000).withOpacity(0.2)),
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
                          color: Color(0xff000000).withOpacity(0.1)),
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
              padding: const EdgeInsets.only(top: 0.0, right: 30.0, left: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Morning!,How was your day today?",
                      style: GoogleFonts.karla(
                          fontSize: 20,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Text(
                      "Share us how was you day.",
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(
                    FeedBackIcon,
                    color: Color(0xff32C1E0),
                    size: 100,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  child: Text(
                    FeedbackText,
                    style: GoogleFonts.roboto(
                        color: Color(0xff32C1E0).withOpacity(0.7),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  child: Slider(
                    min: 0.0,
                    max: 5.0,
                    divisions: 5,
                    value: sliderValue,
                    activeColor: Color(0xff32C1E0),
                    inactiveColor: Color(0xff32C1E0).withOpacity(0.2),
                    onChanged: (newValue) {
                      setState(
                        () {
                          sliderValue = newValue;

                          if (sliderValue == 0.0 && sliderValue == 0.0) {
                            FeedbackText = "Really Terrible";
                            FeedBackIcon = Icons.zoom_out_sharp;
                          }

                          if (sliderValue >= 1.0 && sliderValue <= 1.0) {
                            FeedbackText = "Terrible";
                            FeedBackIcon = Icons.calendar_today;
                          }
                          if (sliderValue >= 1.1 && sliderValue <= 2.0) {
                            FeedbackText = "Somewhat Bad";
                            FeedBackIcon = Icons.car_rental;
                          }
                          if (sliderValue >= 2.1 && sliderValue <= 3.0) {
                            FeedbackText = "Preety Good";
                            FeedBackIcon = Icons.ac_unit;
                          }
                          if (sliderValue >= 3.1 && sliderValue <= 4.0) {
                            FeedbackText = "Awsome";
                            FeedBackIcon = Icons.access_alarm;
                          }
                          if (sliderValue >= 4.1 && sliderValue <= 5.0) {
                            FeedbackText = "Super Awsome";
                            FeedBackIcon = Icons.car_rental;
                          }
                        },
                      );
                    },
                  ),
                )
              ],
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
                              color: Color(0xff3190FF).withOpacity(0.2),
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 6.0))
                        ],
                        color: Color(0xff3190FF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
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
