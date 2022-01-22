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
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
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
          ),
          Container(
            child: Container(
              child: Text(
                "Share us how was you day.",
                style: GoogleFonts.karla(
                    fontSize: 20,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Container(
            child: Icon(
              FeedBackIcon,
              color: Color(0xffFFFFFF),
              size: 50,
            ),
          ),
          Container(
            child: Text(
              FeedbackText,
              style: GoogleFonts.karla(
                  color: Color(0xffFFFFFF).withOpacity(0.9),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Slider(
              min: 0.0,
              max: 5.0,
              divisions: 5,
              value: sliderValue,
              activeColor: Color(0xffFFFFFF),
              inactiveColor: Color(0xffFFFFFF).withOpacity(0.2),
              onChanged: (newValue) {
                setState(
                  () {
                    sliderValue = newValue;

                    if (sliderValue == 0.0 && sliderValue == 0.0) {
                      FeedbackText = "REALLY TERRIBLE";
                      FeedBackIcon = Icons.zoom_out_sharp;
                    }

                    if (sliderValue >= 1.0 && sliderValue <= 1.0) {
                      FeedbackText = "SOMEWHAT BAD";
                      FeedBackIcon = Icons.calendar_today;
                    }
                    if (sliderValue >= 1.1 && sliderValue <= 2.0) {
                      FeedbackText = "MEDIUM";
                      FeedBackIcon = Icons.car_rental;
                    }
                    if (sliderValue >= 2.1 && sliderValue <= 3.0) {
                      FeedbackText = "PREETY GOOD";
                      FeedBackIcon = CupertinoIcons.smiley;
                    }
                    if (sliderValue >= 3.1 && sliderValue <= 4.0) {
                      FeedbackText = "AWSOME";
                      FeedBackIcon = Icons.access_alarm;
                    }
                    if (sliderValue >= 4.1 && sliderValue <= 5.0) {
                      FeedbackText = "SUPER AWSOME";
                      FeedBackIcon = Icons.car_rental;
                    }
                  },
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.topRight,
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
                              offset: Offset(7.0, 6.0))
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
