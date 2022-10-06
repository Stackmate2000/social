import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/waveSlider.dart';

class WaveSliderMain extends StatefulWidget {
  @override
  _WaveSliderMainState createState() => _WaveSliderMainState();
}

class _WaveSliderMainState extends State<WaveSliderMain> {
  int _rate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Colors.cyan),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      "How do you like our app was it intersting help us rate our app!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  WaveSLider(onChanged: (double val) {
                    setState(() {
                      _rate = (val * 100).round();
                    });
                  }),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Row(
                        children: [
                          Text(
                            _rate.toString(),
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "%",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        'percent',
                        style: GoogleFonts.roboto(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
