import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/helpCenter.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/rateUs.dart';
import 'package:multiicon/homescreen_userprofile/help_and_support/reportProblem.dart';

class UserProfileSettingsHelpandSupport extends StatefulWidget {
  @override
  _UserProfileSettingsHelpandSupportState createState() =>
      _UserProfileSettingsHelpandSupportState();
}

class _UserProfileSettingsHelpandSupportState
    extends State<UserProfileSettingsHelpandSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        child: IconButton(
                            icon: Icon(MdiIcons.chevronLeft),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      Container(
                        child: Text(
                          "Help and Support",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MdiIcons.helpCircleOutline,
                        color: Colors.blue,
                        size: MediaQuery.of(context).size.height * 0.13,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20.0),
                        child: Text(
                          "Here you can request for a help or ",
                          style: GoogleFonts.roboto(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HelpCenter()));
                                  },
                                  child: Text(
                                    "Help center",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )),
                              IconButton(
                                  icon: Icon(MdiIcons.chevronRight),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HelpCenter()));
                                  })
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Support box",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )),
                              IconButton(
                                  icon: Icon(MdiIcons.chevronRight),
                                  onPressed: () {})
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ReportProblem()));
                                  },
                                  child: Text(
                                    "Report a problem",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )),
                              IconButton(
                                  icon: Icon(MdiIcons.chevronRight),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ReportProblem()));
                                  })
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => RateUs()));
                                  },
                                  child: Text(
                                    "Rate us",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )),
                              IconButton(
                                  icon: Icon(MdiIcons.chevronRight),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => RateUs()));
                                  })
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Terms & Policies",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )),
                              IconButton(
                                  icon: Icon(MdiIcons.chevronRight),
                                  onPressed: () {})
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
