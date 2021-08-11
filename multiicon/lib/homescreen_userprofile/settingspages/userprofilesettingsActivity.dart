import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UserProfileSettingsActivity extends StatefulWidget {
  @override
  _UserProfileSettingsActivityState createState() =>
      _UserProfileSettingsActivityState();
}

class _UserProfileSettingsActivityState
    extends State<UserProfileSettingsActivity> {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.indigo[400],
                    Colors.purple[800],
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.indigo[200],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 50.0, left: 20.0, right: 20.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              child: Text("Your daily activity",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                  "We hope that you are enjoying using TrickyBin. Here's the average time you spend on TrickyBin",
                                  style: GoogleFonts.roboto(
                                      color:
                                          Colors.purple[100].withOpacity(0.6),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.start),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "17 m",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            "Daily average",
                            style: GoogleFonts.roboto(
                                color: Colors.purple[100].withOpacity(0.6),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple[900].withOpacity(0.7),
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                offset: Offset(0.0, 6.0))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          "Okay, got it",
                          style: GoogleFonts.roboto(
                              color: Colors.purple[800],
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showModalBottomSheet(context);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[400].withOpacity(0.7),
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 6.0))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Your Activity ",
                      style: GoogleFonts.roboto(
                          color: Colors.blueGrey,
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Average time you spend on TrickyBin",
                      style: GoogleFonts.roboto(
                          color: Colors.grey[500],
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Container(
                child: Icon(
                  MdiIcons.cameraTimer,
                  size: 70.0,
                  color: Colors.grey[100],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
