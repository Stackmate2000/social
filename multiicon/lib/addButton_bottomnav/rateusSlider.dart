import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class RateusSlider extends StatefulWidget {
  @override
  _RateusSliderState createState() => _RateusSliderState();
}

class _RateusSliderState extends State<RateusSlider> {
  var FeedbackText = "Really";
  var sliderValue = 0.0;

  IconData FeedBackIcon = Icons.calendar_today;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          SizedBox(
            height: 15.0,
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
    );
  }
}
