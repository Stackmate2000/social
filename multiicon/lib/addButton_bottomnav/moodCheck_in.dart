import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/addButton_bottomnav/rateusSlider.dart';

class MoodCheckIn extends StatefulWidget {
  @override
  _MoodCheckInState createState() => _MoodCheckInState();
}

class _MoodCheckInState extends State<MoodCheckIn> {
  modalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 40.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0)),
                            color: Color(0xff000000).withOpacity(0.1)),
                        child: Icon(
                          MdiIcons.close,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, right: 40.0, top: 100.0),
                      child: Container(
                        child: Text(
                          'Hey," Username. "How are you this fine "afternoon"?',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: RateusSlider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff32C1E0).withOpacity(0.2),
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 6.0))
                        ],
                        color: Color(0xff32C1E0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        "Continue",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        modalBottomSheet(context);
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Mood check-inn',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: Color(0xff000000).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Icon(
                MdiIcons.pencil,
                color: Color(0xffFFFFFF),
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
